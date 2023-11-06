<?php

include "koneksi.php";

// Menentukan metode request
$method = $_SERVER['REQUEST_METHOD'];

header('Content-Type: application/json');

switch($method) {
    case 'GET':
        $sql = "SELECT * FROM wisata_semarang";
        $stmt = $pdo->query($sql);
        $wisata_semarang = $stmt->fetchAll();
        echo json_encode($wisata_semarang);
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->nama_wisata) && isset($data->alamat_wisata) && isset($data->deskripsi_wisata)) {
            $sql = "INSERT INTO wisata_semarang (nama wisata, lokasi wisata, deskripsi wisata) VALUES (?, ?, ?)";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->nama_wisata, $data->alamat_wisata, $data->deskripsi_wisata]);
            echo json_encode(['message' => 'wisata_semarang berhasil ditambahkan']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'PUT':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id) && isset($data->nama_wisata) && isset($data->alamat_wisata) && isset($data->deskripsi_wisata)) {
            $sql = "UPDATE wisata_semarang SET nama_wisata=?, alamat_wisata=?, deskripsi_wisata=? WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->nama_wisata, $data->alamat_wisata, $data->deskripsi_wisata, $data->id]);
            echo json_encode(['message' => 'wisata_semarang berhasil diperbarui']);
        } else {
            echo json_encode(['message' => 'Data tidak lengkap']);
        }
        break;

    case 'DELETE':
        $data = json_decode(file_get_contents("php://input"));
        if(isset($data->id)) {
            $sql = "DELETE FROM wisata_semarang WHERE id=?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$data->id]);
            echo json_encode(['message' => 'wisata_semarang berhasil dihapus']);
        } else {
            echo json_encode(['message' => 'ID tidak ditemukan']);
        }
        break;

    default:
        echo json_encode(['message' => 'Metode tidak dikenali']);
        break;
}

?>