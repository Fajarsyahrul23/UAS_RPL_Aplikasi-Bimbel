<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Data extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('Siswa_model');
    }
    public function index()
    {
        $data['title'] = 'Data Guru';
        // mengambil data user berdasarkan email yang ada di session
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['guru'] =  $this->db->get_where('guru')->result_array();

        $this->load->view('backend/template/header', $data);
        $this->load->view('backend/template/topbar', $data);
        $this->load->view('backend/template/sidebar', $data);
        $this->load->view('backend/data/guru', $data);
        $this->load->view('backend/template/footer');
    }

    public function siswa()
    {
        $data['title'] = 'Data Siswa';

        $data['user'] =  $this->db->get_where('user', ['email' =>$this->session->userdata('email')])->row_array();
        $data['siswa'] =  $this->db->get_where('siswa')->result_array();

           
            $this->load->view('backend/template/header', $data);
            $this->load->view('backend/template/topbar', $data);
            $this->load->view('backend/template/sidebar', $data);
            $this->load->view('backend/data/siswa', $data);
            $this->load->view('backend/template/footer');
      
        }

    public function reset_password()
    {
        $id_user = $_GET['id_user'];
        $password = 123456;
        $data = [
            "password" => password_hash($password, PASSWORD_DEFAULT)
        ];

        $this->db->where('id', $id_user);
        $this->db->update('user', $data);

        $this->session->set_flashdata('flash', '<div class="alert alert-success" role="success">
            password berhasil direset!!
          </div>');
        redirect('data/siswa');
    }

    public function reset_gpassword()
    {
        $id_user = $_GET['id_user'];
        $password = 123456;
        $data = [
            "password" => password_hash($password, PASSWORD_DEFAULT)
        ];

        $this->db->where('id', $id_user);
        $this->db->update('user', $data);

        $this->session->set_flashdata('flash', '<div class="alert alert-success" role="success">
            password berhasil direset!!
          </div>');
        redirect('data/guru');
    }

    public function cetak_guru()
    {

        $this->load->library('mypdf');
        $data['guru'] =  $this->db->get_where('guru')->result_array();
        $this->mypdf->generate('backend/data/cetak_guru.php', $data);
    }

    public function cetak_siswa()
    {

        $this->load->library('mypdf');
        $data['siswa'] =  $this->db->get_where('siswa')->result_array();
        $this->mypdf->generate('backend/data/cetak_siswa.php', $data);
    }
}
