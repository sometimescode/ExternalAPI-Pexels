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
    <link
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
    href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
    rel="stylesheet"
    />
    <!-- MDB -->
    <link
    href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.css"
    rel="stylesheet"
    />

    <style>
        body {
            background-color: black
        }
    </style>
  </head>
  <body>
    <!-- Start your project here-->
    <div class="container">
      <div class="d-flex justify-content-center align-items-center" style="height: 100vh">
        <div class="text-center">
            <img
            class="mb-4 img-fluid"
            src="https://images.pexels.com/lib/api/pexels-white.png"
            />
            <h5 class="mb-4"><a href="https://www.pexels.com">Photos provided by Pexels</a></h5>
            <s:form action="Photos" theme="simple">
                <div class="row">
                    <div class="col-xs-12 col-sm-8">
                        <s:textfield name="searchQuery" label="Search" placeholder="nature" cssClass="form-control"/>
                    </div>
                    <div class="col-xs-12 col-sm-4">
                        <s:submit value="SEARCH PHOTOS" cssClass="btn btn-primary btn-block"/>
                    </div>
                </div> 
            </s:form>
        </div>
      </div>
    </div>
    <!-- End your project here-->

    <script
    type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.js"
    ></script>
  </body>
</html>
