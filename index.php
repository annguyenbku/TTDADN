<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/home.css">

    
    <script src='https://api.mapbox.com/mapbox-gl-js/v1.11.0/mapbox-gl.js'></script>
    <link href='https://api.mapbox.com/mapbox-gl-js/v1.11.0/mapbox-gl.css' rel='stylesheet' />

    <title>Trang chủ</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">GPS Website </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="#"><i class="fa fa-home"></i> Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa fa-motorcycle"></i>Quản lí thết bị</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa fa-history"></i>Lịch sử hành trình</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa fa-cog"></i>Cài đặt</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <a href = "pages/login.php" class="link-login">Login</a>
                <a href = "pages/logout.php" class="link-login">Sign up</a>
            </form>
        </div>
    </nav>
    <div class="container-fluid main-content">
        <div class="row">
            <div class="col-md-3">
                <h2 class="title">HÀNH TRÌNH</h2>
                <form>
                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-4 col-form-label col-form-label-sm text-right">Thiết bị</label>
                        <div class="col-sm-8">
                            <select class="custom-select form-control form-control-sm" id="colFormLabelSm" placeholder="Tên thiết bị" style="height: 31px;font-size: .875rem;"> 
                                <option selected>Choose...</option>
                                <option value="1">Honda Wave</option>
                                <option value="2">Suzuki</option>
                                <option value="3">Vision</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-4 col-form-label col-form-label-sm text-right">Từ ngày</label>
                        <div class="col-sm-8">
                        <input type="datetime-local" class="form-control form-control-sm" id="colFormLabelSm" placeholder="col-form-label-sm">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabelSm" class="col-sm-4 col-form-label col-form-label-sm text-right">Đến ngày</label>
                        <div class="col-sm-8">
                        <input type="datetime-local" class="form-control form-control-sm" id="colFormLabelSm" placeholder="col-form-label-sm">
                        </div>
                    </div>
                </form>
                <button type="button" class="btn btn-primary btn-sm" style="width: 75.75px; height: 30.8px;">Thống kê</button>
                <button type="button" class="btn btn-secondary btn-sm" style="width: 75.75px; height: 30.8px;">Xem</button>
                <div class="result">

                </div>
                <h6 class="mt-2 text-danger">Tổng quãng đường : </h6>
            </div>
            <div class="col-md-9">
                <div id='map' style='width: 100%; height: 100%;margin-top: 58.4px'></div>
            </div>
        </div>
    </div>
    
    <script>
            // TO MAKE THE MAP APPEAR YOU MUST
            // ADD YOUR ACCESS TOKEN FROM
            // https://account.mapbox.com
            mapboxgl.accessToken = 'pk.eyJ1IjoiaGlldXF1YW5nMjIxMiIsImEiOiJja2JnNmtvczQwdWVpMm9uNDFxaDJvZnh0In0.vLKfk-_0NHBqOJ9XE29qfQ';
            var map = new mapboxgl.Map({
            container: document.getElementById("map"),
            style: 'mapbox://styles/mapbox/streets-v11', // stylesheet location
            center: [-74.5, 40], // starting position [lng, lat]
            zoom: 9 // starting zoom
            });
    </script>
</body>
</html>