<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Photo Search</title>
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
    <nav class="navbar navbar-light bg-light mb-4">
      <div class="container-fluid">
          <a class="navbar-brand" href="https://www.pexels.com">Photos provided by Pexels</a>
          <s:form cssClass="d-flex input-group w-auto" action="Photos" theme="simple">
            <s:textfield name="searchQuery" label="Search" cssClass="form-control rounded"
                type="search"
                placeholder="Search"
                aria-label="Search"
                aria-describedby="search-addon"
            />
            <span class="input-group-text border-0" id="search-addon">
                <i class="fas fa-search"></i>
            </span>
          </s:form>
      </div>
    </nav>
    <div class="bg-light">
      <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <s:if test="photosSearchResponse.prev_page != null">
            <s:url var="prevPage" action="PhotosPagination" namespace="/">
              <s:param name="searchQuery" value="%{photosSearchResponse.prev_page}"/>
            </s:url>
            <li class="page-item">
              <a class="page-link" href="${prevPage}">Previous</a>
            </li>
          </s:if>
          <s:else>
            <li class="page-item disabled">
              <a class="page-link" href="#">Previous</a>
            </li>
          </s:else>
          <li class="page-item active"><a class="page-link" href="#"><s:property value="photosSearchResponse.page"/></a></li>
          <s:if test="photosSearchResponse.next_page != null">
            <s:url var="nextPage" action="PhotosPagination" namespace="/">
              <s:param name="searchQuery" value="%{photosSearchResponse.next_page}"/>
            </s:url>
            <li class="page-item">
              <a class="page-link" href="${nextPage}">Next</a>
            </li>
          </s:if>
          <s:else>
            <li class="page-item disabled">
              <a class="page-link" href="#">Next</a>
            </li>
          </s:else>          
        </ul>
      </nav>
    </div>    
    <div class="container">
      <!-- Gallery -->
      <div class="grid row">
        <s:iterator value="photosSearchResponse.photos">
          <div class="grid-item col-lg-3 col-xs-12 col-sm-6 mb-4">
            <div class="bg-image hover-overlay hover-shadow">
              <s:url action="PhotoDetails" var="photoDetailsLink"> 
                <s:param name="photoId" value="%{id}"/>
              </s:url> 
              <img 
                src="${src.medium}" 
                class="w-100 shadow-1-strong rounded img-fluid"
                alt="${alt}"
              />
              <a href="${photoDetailsLink}">
                <div class="d-flex justify-content-center align-items-center mask" style="background-color: rgba(57, 192, 237, 0.2)">
                  <i class="fas fa-eye" style="font-size: 5em; color: white;"></i>
                </div>
              </a>
            </div>
          </div>
        </s:iterator>
      </div>
      <!-- Gallery -->
    </div>

    <div class="bg-light">
      <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <s:if test="photosSearchResponse.prev_page != null">
            <s:url var="prevPage" action="PhotosPagination" namespace="/">
              <s:param name="searchQuery" value="%{photosSearchResponse.prev_page}"/>
            </s:url>
            <li class="page-item">
              <a class="page-link" href="${prevPage}">Previous</a>
            </li>
          </s:if>
          <s:else>
            <li class="page-item disabled">
              <a class="page-link" href="#">Previous</a>
            </li>
          </s:else>
          <li class="page-item active"><a class="page-link" href="#"><s:property value="photosSearchResponse.page"/></a></li>
          <s:if test="photosSearchResponse.next_page != null">
            <s:url var="nextPage" action="PhotosPagination" namespace="/">
              <s:param name="searchQuery" value="%{photosSearchResponse.next_page}"/>
            </s:url>
            <li class="page-item">
              <a class="page-link" href="${nextPage}">Next</a>
            </li>
          </s:if>
          <s:else>
            <li class="page-item disabled">
              <a class="page-link" href="#">Next</a>
            </li>
          </s:else>          
        </ul>
      </nav>
    </div>

    <!-- End your project here-->
    <script src="https://unpkg.com/imagesloaded@5/imagesloaded.pkgd.min.js"></script>
    <script
    type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.2.0/mdb.min.js"
    ></script>
    <script src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js" integrity="sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D" crossorigin="anonymous"></script>


    <script>
    imagesLoaded( document.querySelector('.grid'), function( instance ) {
      console.log('all images are loaded');
      var elem = document.querySelector('.grid');
      var msnry = new Masonry( elem, {
        // options
        itemSelector: '.grid-item'
      });
    });
    </script>
  </body>
</html>
