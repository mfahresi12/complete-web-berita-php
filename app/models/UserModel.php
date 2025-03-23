<?php

class UserModel {
    private $table = 'user';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    // Mengambil semua pengguna
    public function getAll()
    {
        $this->db->query('SELECT * FROM ' . $this->table);
        return $this->db->resultSet();
    }

    // Mengambil pengguna dengan peran 'penulis', dengan opsi pencarian
    public function getAllPenulis($search = null, $role = 'penulis')
    {
        $query = 'SELECT * FROM user WHERE role=:role';
        if ($search) {
            $query .= " AND nama LIKE '%" . $search . "%'";
        }

        $this->db->query($query);
        $this->db->bind('role', $role);
        return $this->db->resultSet();
    }

    // Mengambil data pengguna berdasarkan email dan password
    public function getByEmailPassword($email, $password)
    {
        $this->db->query('SELECT * FROM ' . $this->table . ' WHERE email=:email AND password=:password');
        $this->db->bind('email', $email);
        $this->db->bind('password', md5($password));
        return $this->db->single();
    }

    // Mengambil data pengguna berdasarkan ID
    public function getById($id)
    {
        $this->db->query('SELECT * FROM ' . $this->table . ' WHERE id=:id');
        $this->db->bind('id', $id);
        return $this->db->single();
    }

    // Menambah pengguna baru
    public function tambah($data)
    {
        $query = "INSERT INTO user (nama, email, password, role) VALUES(:nama, :email, :password, :role)";
        $this->db->query($query);
        $this->db->bind('nama', $data['nama']);
        $this->db->bind('email', $data['email']);
        $this->db->bind('password', md5($data['password']));
        $this->db->bind('role', $data['role']);
        $this->db->execute();

        return $this->db->rowCount();
    }

    // Mengubah password pengguna
    public function updatePassword($data)
    {
        $query = "UPDATE user SET password=:password WHERE id=:id";
        $this->db->query($query);
        $this->db->bind('id', $data['id']);
        $this->db->bind('password', md5($data['password']));
        $this->db->execute();

        return $this->db->rowCount();
    }

    // Memperbarui data pengguna dan role
    public function update($data)
    {
        $query = "UPDATE user SET nama=:nama, email=:email, role=:role WHERE id=:id";
        $this->db->query($query);
        $this->db->bind('id', $data['id']);
        $this->db->bind('nama', $data['nama']);
        $this->db->bind('email', $data['email']);
        $this->db->bind('role', $data['role']); // Menyertakan role yang bisa diubah
        $this->db->execute();

        return $this->db->rowCount();
    }

    // Menghapus pengguna dan kontennya (berita dan komentar)
    public function delete($id)
    {
        // Hapus pengguna
        $this->db->query('DELETE FROM ' . $this->table . ' WHERE id=:id');
        $this->db->bind('id', $id);
        $this->db->execute();

        // Hapus data terkait di tabel berita dan komentar
        $this->db->query('DELETE FROM berita WHERE user_id=:id');
        $this->db->bind('id', $id);
        $this->db->execute();

        $this->db->query('DELETE FROM komentar WHERE user_id=:id');
        $this->db->bind('id', $id);
        $this->db->execute();

        return $this->db->rowCount();
    }
}
