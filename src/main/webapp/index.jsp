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
	  color: #65657b;
	  font-family: sans-serif;
	  left: 20px;
	  line-height: 14px;
	  pointer-events: none;
	  position: absolute;
	  transform-origin: 0 50%;
	  transform: translateY(-30px) translateX(10px) scale(0.75);
	  top: 20px;
	}
	
		.placeholder-sm {
	  color: #65657b;
	  font-family: sans-serif;
	  font-size:18px;
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
         <form action="add" >
         <center>
           <div class="title">Welcome</div>
      <div class="subtitle">Masukkan data mahasiswa!</div>
      </center>
      <div class="input-container ic1">
        <input type="text" name="name"  class="input" required/>
        <div class="cut"></div>
        <label for="firstname" class="placeholder">Nama</label>
      </div>
      <div class="input-container ic2">
       <input type="text" name="nim" class="input" required/>
        <div class="cut cut-short"></div>
        <label for="lastname" class="placeholder">NIM</label>
      </div>
      <div class="input-container ic2">
        <input type="text" name="alamat"  class="input" required/>
        <div class="cut"></div>
        <label for="email" class="placeholder">Alamat</>
      </div>
         <div class="input-container ic2">
			  <h1 class="placeholder-sm" style="margin-left:0.2rem">Tanggal Lahir</h1>
             <label for="email" class="placeholder-sm" style="margin-left:0.3rem;">Day</>
		<select name="day" class="input-sm" required>
		<option value="1" selected disabled>Day</option>
		<% 
		for(int c = 1; c <= 31; c++){
			out.println("<option value=" + c + ">" + c +"</option>");
			}
			%>
		}	
		</select>
		        <label for="month" class="placeholder-sm">Month</>
		        <select name="month" class="input-sm" style="width:27%;" required/>
		<option value="1" selected disabled>Month</option>
		<% 
		String[] months = new String[] {"Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember"};
		for(int c = 1; c <= 12; c++){
			out.println("<option value=" + c + ">" + months[c-1] +"</option>");
			}
			%>
		}
		
		</select>
     <label for="email" class="placeholder-sm">Year</> 
      <select name="year" class="input-sm" style="width:22%;" required/>
		<option value="2023" selected disabled>Year</option>
		<% 
		for(int c = 2023; c >= 1910; c--){
			out.println("<option value=" + c + ">" + c +"</option>");
			}
			%>
		}
		</select>
      </div><br>
      <button type="text" class="submit">submit</button>
         </form>
    </div>
  </body>
</html>
