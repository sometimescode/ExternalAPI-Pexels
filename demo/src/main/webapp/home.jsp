<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>PexelsAPI Demo</title>
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css" rel="stylesheet" />

    <style>
        body {
            background-color: black
        }

        /* Carousel styling */
        #introCarousel,
        .carousel-inner,
        .carousel-item,
        .carousel-item.active {
            height: 100vh;
        }

        .carousel-item:nth-child(1) {
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
        }
    </style>
</head>

<body>
    <header>
        <!-- Carousel wrapper -->
        <div id="introCarousel" class="carousel slide carousel-fade shadow-2-strong" data-mdb-ride="carousel">
            <!-- Inner -->
            <div class="carousel-inner">
                <!-- Single item -->
                <div class="carousel-item active">
                    <video style="min-width: 100%; min-height: 100%" playsinline autoplay muted loop>
                        <source class="h-100" src="${videoLink}"
                            type="video/mp4" />
                    </video>
                    <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
                        <div class="container">
                            <div class="d-flex justify-content-center align-items-center" style="height: 100vh">
                                <div class="text-center">
                                    <img class="mb-4 img-fluid"
                                        src="https://images.pexels.com/lib/api/pexels-white.png" />
                                    <h5 class="mb-4 bg-light rounded"><a href="https://www.pexels.com">Photos and background video provided by
                                            Pexels</a></h5>
                                    <s:form action="Photos" theme="simple">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-8">
                                                <s:textfield name="searchQuery" label="Search"
                                                    placeholder="${placeholder}" cssClass="form-control" />
                                            </div>
                                            <div class="col-xs-12 col-sm-4">
                                                <s:submit value="SEARCH PHOTOS"
                                                    cssClass="btn btn-primary btn-block" />
                                            </div>
                                        </div>
                                    </s:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Carousel wrapper -->
    </header>

    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.js"></script>
</body>

</html>