<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Photo Details</title>
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
      <div class="card text-center">
        <div class="card-header">
          <s:property value="photoResponse.alt"/>
        </div>
        <div class="card-body p-0 pe-2">
          <div class="row d-flex align-items-center">
            <div class="col-sm-12 col-md-10 pe-0">
              <img src="${photoResponse.src.large}" class="img-fluid" alt="${photoResponse.alt}"/>
            </div>
            <div class="col-sm-12 col-md-2">
              <a href="javascript:history.back()">Go Back</a>
              <p>
                <a href="${photoResponse.src.original}" target="_blank">Open Image in New Tab</a>
              </p>
              <p><span class="text-muted">id: </span><s:property value="photoResponse.id"/></p>
              <p><span class="text-muted">width: </span><s:property value="photoResponse.width"/></p>
              <p><span class="text-muted">height: </span><s:property value="photoResponse.height"/></p>
              <p><a href="${photoResponse.url}"> Check it out on Pexels.</a></p>
            </div>
          </div>
        </div>
        <div class="card-footer">
          Photographed by <a href="${photoResponse.photographer_url}">
            <s:property value="photoResponse.photographer"/>
          </a> on Pexels.
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
