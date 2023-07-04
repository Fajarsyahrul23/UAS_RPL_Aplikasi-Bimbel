<body <?php if ($this->uri->segment(1) === 'printpembayaran') : ?> onload="window.print()" <?php else : endif; ?>>
    <div class="container-fluid">
        <div class="row justify-content-center mt-5">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <img src="assets/favicon.png" width="100" height="100" style="float:left">
                        <h4 class="text-center">..::PT. Smart Kids ::..</h4>
                        <h6 class="text-center"><small> Purwakarta,Jawa Barat, Indonesia <br>
                                Telp. (+62)877-3796-8218  <br>
                                www.smartkids.com <br>
                                e-mail :smartkids@gmail.com <br>
                                Purwakarta - Indonesia
                            </small></h6>

                        <hr>
                        <div class='card'>
                            <div class='card-body'>
                                <h1 class='text-success'>Selamat!</h1>
                                <h4>Anda Berhasil Melakukan Pemesanan Paket Belajar</h4>
                                <hr>
                                <h6 class='text-danger text-center'>Silahkan Lakukan Pembayaran Sesuai Detail Berikut.</h6>
                                <br>
                                <h4 class="text-center">111-00-0211199802</h4>
                                <p class='text-center font-weight-bold mb-0'>a/n PT. Smart Kids</p>
                                <p class='text-center'>Kode Bank BRI : 2323</p>

                                <hr>

                                <h5 class='text-center'>Total Yang Harus Dibayar</h5>
                                <h3 class='text-center'><?= $harga ?> </h3>
                                <br>
                                <h5 class='text-center'>Kode Pembayaran Anda</h5>
                                <h4 class='text-center'><?= $kopem ?> </h4>
                                <br><br>
                                <p class='text-danger'>*Jika sudah transfer silahkan Konfirmasi Pembayaran
                                    Di menu Konfirmasi Pembayaran</a>
                                </p>
                                <h4 class='text-center'>TERIMAKASIH</h4>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>