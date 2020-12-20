<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Projecttest.Home" %>

<!DOCTYPE html> 
<html> 
  
<head> 
      
    <style> 
        body { 
            
            text-align: center; 
        } 
        
        img { 
            float: center;  
           
        } 
		.square{
		overflow: auto;
		}
		.under {
			position: absolute;
			left: 0px;
			top: 0px;
			z-index: -1;
			}
		.over {
			position: absolute;
			left: 0px;
			top: 900px;
			z-index: -1;
			}
			
		.wordmark {
			 position: relative;         
}
			
		#footer {
			position: fixed;
			bottom: 0px;
			text-color: white;
			height: 50px;
			margin-bottom: 0px;
			
			
}

div {
  margin: 20px 20px;
}

body {
  margin-bottom: 50px;
}	
#cd_icon{    
 float: left;  
 }
			
    </style> 
</head> 
  
<body> 

    <img src='/images/CD_logo.png'
                    width="10%" height="10%" id="cd_icon"> 
    <div class="square">   
	
		 <div>  
		 
            <img src='/images/shutterlock_1.png'
                    width="100%" height="100%" class="under"> 
			<div>  
					<img src='/images/wordmark.png'
						width="50%" height="50%" class="wordmark">  
			</div> 
        </div> 
		
		<div>  
		<div style="margin-top: 25px;">
		<p style="color:white; font-size: 84px;"><b> To Receive Promotional Coupons:</b></p>
		
		</div>
            <img src='/images/TOMBSTONE.png'
                    width="100%" height="130" class="over" >
			 <img src='/images/purchase_participations.png'
                    width="100%" height="100%" class="purchase_participations" style="margin-top: 80px;">


    <form id="form1" runat="server">
        
      <div class="form-group">
        <asp:TextBox ID="txtPin" class="form-control" runat="server"  placeholder="PLEASE ENTER PIN" style="width:770px;height:40px;padding:15px;"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
          &nbsp; <br />
        </div>
        <div class="form-group">
        <asp:TextBox ID="txtEmail" class="form-control" runat="server" placeholder="PLEASE ENTER YOUR EMAIL" style="width: 770px;height:40px;padding-inline-start: 15px;"></asp:TextBox>
        <br /></div>
        <div class="form-group">
        <asp:TextBox ID="txtBirthday" class="form-control" runat="server" placeholder="PLEASE ENTER DOB" style="width: 770px;height:40px;padding-inline-start: 15px;"></asp:TextBox>
       <br /></div>
        <div class="form-group">
        <asp:TextBox ID="txtAge" runat="server" placeholder="PLEASE ENTER YOUR AGE" style="width: 770px;height:40px;padding-inline-start: 15px;"></asp:TextBox>
        <br /></div>
        <div class="form-group col-md-4">
      <select name="ddlProvince" id="ddlProvince" class="u63_input" style="width: 786px;height:53px;padding-inline-start: 15px;">
          <option selected value="Select One Option">PROVINCE</option>
          <option  value="ONTARIO">ON</option>
          <option value="QUBEC">QC</option>
          <option  value="ALBERTA">AB</option>
        </select>
            </div>
      <div class="form-group col-md-4" >
        <select name="ddlFlavour" id="ddlFlavour" class="u63_input" style="width: 786px;height:53px;padding-inline-start: 15px;">
          <option selected value="Select One Option">FLAVOURS</option>
          <option  value="1">GINGER ALE</option>
          <option value="2">GINGER ALE CLUB</option>
          <option  value="3">CLUB SODA</option>
        </select></div>
     
        <br />
    
             <div class="form-group row">
    
    <div class="col-sm-10">
      <div class="form-check" style="
    text-align: left;
    margin-left: -20px;">
          <asp:CheckBox ID="chkTerms" runat="server" />
        <label class="form-check-label" for="gridCheck1">
          <text><b style="color: white;font-size: 22px;">I have read, understood and agree to the <u>Terms of Use</u> and Privacy Policy.</b></text>
        </label>
      </div>
    </div>
               
	 <div class="col-sm-10">
      <div class="form-check" style="
    text-align: left;
    margin-left: -20px;">
          <asp:CheckBox ID="chkNewsletter" runat="server" />
        <label class="form-check-label" for="gridCheck1">
          <text><b style="color: white;font-size: 22px;">By checking this box, you can receive the latest email offers and communication from Canada Dry Mott's Inc. You can unsubscribe at any time.<u>Terms of Use</u> and Privacy Policy.</b></text>
        </label>
      </div>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">       
        <asp:Button ID="btnGetYourCoupons" runat="server" class="btn btn-primary"  Text="GET YOUR COUPONS" style="
    height: 70px;
    width: 345px;
	font-size: 26px;
    background-color: yellow;" OnClick="btnGetYourCoupon_Click" />
      
    </div>
  </div>
          </form>
					
		<div id="footer" >
			<p style="color:white">
			&trade;Trademark of Food Banks Canada used under license. All other trademarke are the property of their respective owners. &copy;2020 Canada Dry Mott's Inc. All rights reserved.
			</p>	
		</div>			
							
		</div>
					
    </div> 
</body>
</html>
