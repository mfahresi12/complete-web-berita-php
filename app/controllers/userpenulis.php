<?php

class UserPenulis extends Controller {
    public $user;

    public function __construct(){
        if(!isset($_SESSION['auth']['id'])){
            header('location: '. base_url . '/');
            exit;
        }
        
        $this->user = $_SESSION['auth'];

        if(!in_array($this->user['role'], ['admin'])){
            header('location: '. base_url . '/');
            exit;
        }
    } 
    
    public function index() {
        $data['title'] = 'Halaman Home';

        if(isset($_POST['cari'])){
            $data['penulis'] = $this->model('UserModel')->getAllPenulis($_POST['cari']);
        } else {
            $data['penulis'] = $this->model('UserModel')->getAllPenulis();
        }
        
        $this->view('templates/header', $data);
        $this->view('templates/navbar');
        $this->view('user/penulis/index', $data);
        $this->view('templates/footer');
    }
    
    public function tambah() {
        if($_POST){    
            $this->validate([
                'email' => '*',
                'nama' => '*',
                'password' => '*',
                'password_ulang' => '*',
            ]);

            if($_POST['password'] != $_POST['password_ulang']){
                Flasher::setValidateKey('password', 'Password tidak sama dengan password ulang');
                header('location: '. $_SERVER['HTTP_REFERER']);
                exit;
            }

            // Cek apakah email sudah ada
            if ($this->model('UserModel')->cekEmail($_POST['email'])) {
                Flasher::setMessage('Gagal', 'Email sudah terdaftar', 'danger');
                header('location: '. base_url . '/userpenulis/tambah');
                exit;
            }

            $_POST['role'] = "penulis";
            if( $this->model('UserModel')->tambah($_POST) > 0 ) {
                Flasher::setMessage('Berhasil','ditambahkan','success');
                Flasher::removeMessageOld();
                header('location: '. base_url . '/userpenulis');
                exit;            
            } else {
                Flasher::setMessage('Gagal','ditambahkan','danger');
                header('location: '. base_url . '/userpenulis/tambah');
                exit;
            }
        }

        $data['title'] = 'Tambah Penulis';
        $this->view('templates/header', $data);
        $this->view('templates/navbar');
        $this->view('user/penulis/create', $data);
        $this->view('templates/footer');
    }

    public function edit($id) {
        $penulis = $this->model('UserModel')->getById($id);

        if (!$penulis) {
            Flasher::setMessage('Gagal', 'Data tidak ditemukan', 'danger');
            header('location: '. base_url . '/userpenulis');
            exit;
        }

        if ($_POST) {    
            $this->validate([
                'email' => '*',
                'nama' => '*',
            ]);

            if($_POST['password']){
                if($_POST['password'] != $_POST['password_ulang']){
                    Flasher::setValidateKey('password', 'Password tidak sama dengan password ulang');
                    header('location: '. $_SERVER['HTTP_REFERER']);
                    exit;
                }

                $this->model('UserModel')->updatePassword($_POST);
            }

            $_POST['id'] = $id;
            if( $this->model('UserModel')->update($_POST) > 0 ) {
                Flasher::setMessage('Berhasil','diperbarui','success');
                Flasher::removeMessageOld();
                header('location: '. base_url . '/userpenulis');
                exit;            
            } else {
                Flasher::setMessage('Gagal','diperbarui','danger');
                header('location: '. base_url . '/userpenulis');
                exit;
            }
        }

        $data['title'] = 'Edit Penulis';
        $data['penulis'] = $penulis;
        $this->view('templates/header', $data);
        $this->view('templates/navbar');
        $this->view('user/penulis/edit', $data);
        $this->view('templates/footer');
    }

    public function hapus($id) {
        if( $this->model('UserModel')->delete($id) > 0 ) {
            Flasher::setMessage('Berhasil','dihapus','success');
            header('location: '. base_url . '/userpenulis');
            exit;            
        } else {
            Flasher::setMessage('Gagal','dihapus','danger');
            header('location: '. base_url . '/userpenulis');
            exit;    
        }
    }
}
