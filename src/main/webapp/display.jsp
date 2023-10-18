<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8" isELIgnored="false" %>

<html>
    <style type="text/css">
	   body {
	  align-items: center;
		background: rgb(2,0,36);
		background: linear-gradient(178deg, rgba(2,0,36,1) 0%, rgba(10,10,74,1) 16%, rgba(10,139,166,1) 100%);
	  display: flex;
	  justify-content: center;
	  height: 100vh;
	  overflow: hidden; /* Hide scrollbars */
	}
	
	.form {
	  background-color: #15172b;
	  margin: 20rem 0;
	  border-radius: 20px;
	  box-sizing: border-box;
	  height: 600px;
	  padding: 20px;
	  width: 570px;
	}
	
	.title {
	  color: #eee;
	  font-family: sans-serif;
	  font-size: 36px;
	  font-weight: 600;
	  margin-top: 30px;
	}
	
	.subtitle {
	  color: #eee;
	  font-family: sans-serif;
	  font-size: 16px;
	  font-weight: 600;
	  margin-top: 10px;
	}
	
	.input-container {
	  height: 50px;
	  position: relative;
	  width: 100%;
	}
	
	.ic1 {
	  margin-top: 40px;
	}
	
	.ic2 {
	  margin-top: 30px;
	}
	
	.input {
	  border-radius: 12px;
	  border: 0;
	  box-sizing: border-box;
	  font-size: 18px;
	  height: 100%;
	  outline: 0;
	  padding: 4px 20px 0;
	  width: 100%;
	}
	
		.input-sm {
	  border-radius: 12px;
	  border: 0;
	  box-sizing: border-box;
	  font-size: 18px;
	  height: 75%;
	  outline: 0;
	  width:18%; 
	  padding: 2px 10px 0;
	}
	
	
	.cut {
	  background-color: #15172b;
	  border-radius: 10px;
	  height: 20px;
	  left: 20px;
	  position: absolute;
	  top: -20px;
	  transform: translateY(0);
	  transition: transform 200ms;
	  width: 76px;
	}
	
	.cut-short {
	  width: 50px;
	}
	
	.input:focus ~ .cut,
	.input:not(:placeholder-shown) ~ .cut {
	  transform: translateY(8px);
	}
	
	.placeholder {
	  color: #eee;
	  font-family: sans-serif;
	  left: 20px;
	  line-height: 14px;
	  pointer-events: none;
	  position: absolute;
	  transform-origin: 0 50%;
	  transition: transform 200ms, color 200ms;
	  top: 20px;
	}
	
		.placeholder-sm {
	   color: #eee;
	  font-family: sans-serif;
	  font-size:18px;
	}
		
	
	.input:focus ~ .placeholder,
	.input:not(:placeholder-shown) ~ .placeholder {
	  transform: translateY(-30px) translateX(10px) scale(0.75);
	}
	
	.input:not(:placeholder-shown) ~ .placeholder {
	  color: #808097;
	}
	
	.input:focus ~ .placeholder {
	  color: #dc2f55;
	}
	
	.submit {
	  background-color: #08d;
	  border-radius: 12px;
	  border: 0;
	  box-sizing: border-box;
	  color: #eee;
	  cursor: pointer;
	  font-size: 18px;
	  height: 50px;
	  margin-top: 38px;
	  // outline: 0;
	  text-align: center;
	  width: 100%;
	}
	
	.submit:active {
	  background-color: #06b;
	}
	
	.back-btn {
	  border-radius: 20px;
	  border: 0;
	  box-sizing: border-box;
	  font-size: 18px;
	  outline: 0;
		width:4rem;
		height:1.5rem;
		padding: 0.4rem;
	  background-color:green;
	  text-align:center;
	  color:white;
	  font-family: sans-serif;
	  text-decoration: none;
	  position:absolute;
	  font-size:x-small;	  
	  font-weight:bold;ss
	}

    </style>
  <body>
       <div class="form" style="opacity:80%">
      <a href="index.jsp" class="back-btn">Kembali</a>
      
         <center>
           <div class="title">Data Mahasiswa</div> 
      </center>
       <div class="input-container ic1">
      <input type="text" name="name"  class="input" value="${result.getNama()}" style="background-color:white" disabled />
        <div class="cut"></div>
        <label for="name" class="placeholder">Nama</label>
        </div>
       <div class="input-container ic1">
      <input type="text" name="nim"  class="input" value="${result.getNim()}" style="background-color:white" disabled />
        <div class="cut cut-short"></div>
        <label for="name" class="placeholder">NIM</label>
        </div>
          <div class="input-container ic1">
      <input type="text" name="nim"  class="input" value="${result.getAlamat()}" style="background-color:white" disabled />
        <div class="cut"></div>
        <label for="name" class="placeholder">Alamat</label>
        </div>
               <div class="input-container ic1">
      <input type="text" name="nim"  class="input" value="${result.getTanggalLahir()}" style="background-color:white" disabled />
        <div class="cut" style="width: 115px;"></div>
        <label for="name" class="placeholder">Tanggal Lahir</label>
        </div>
    </div>
  </body>
</html>
