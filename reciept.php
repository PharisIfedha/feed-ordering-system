<?php
include 'includes/connect.php';
include 'includes/wallet.php';
$total = 0;
	if($_SESSION['customer_sid']==session_id())
	{
$result = mysqli_query($con, "SELECT * FROM users where id = $user_id");
while($row = mysqli_fetch_array($result)){
$name = $row['name'];	
$address = $row['address'];
$contact = $row['contact'];
$verified = $row['verified'];
}
		?>
<!DOCTYPE html>
<!--
  Invoice template by invoicebus.com
  To customize this template consider following this guide https://invoicebus.com/how-to-create-invoice-template/
  This template is under Invoicebus Template License, see https://invoicebus.com/templates/license/
-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Reciept</title>
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <meta name="description" content="Invoicebus Invoice Template">
    <meta name="author" content="Invoicebus">

    <meta name="template-hash" content="91216e926eab41d8aa403bf4b00f4e19">

    <link rel="stylesheet" href="css/template.css">
  </head>
  <body>
    <div id="container">
      <div class="left-stripes">
        <div class="circle c-upper"></div>
        <div class="circle c-lower"></div>
      </div>

      <div class="right-invoice">
        <section id="memo">
          <div class="company-info">
            <div>{Lumilu General Traders}</div>
            <br>
            <span>{THE LUNG'AHU'S}</span>
            <span>{123445}</span>
            <br>
            <span>{+254796656357}</span>
            <br>
            <span>{pharis.ifedha@gmail.com}</span>
          </div>

          <div class="logo">
            <img src="images/logo12.png" alt="logo" width="50px"  />
          </div>
        </section>

        <section id="invoice-title-number">

          <div class="title-top">
            <span class="x-hidden">{issue_date_label}</span>
            <span>{issue_date}</span> <span id="number">{invoice_number}</span>
          </div>
        
          <div id="title">{Animal Feed}</div>
          
        </section>

        <section id="client-info">
          <span>{bill_to_label}</span>
          <div class="client-name">
            <span>{<?php
    echo '<li class="collection-item avatar">
    <center>
    <img src="images/logo12.png" alt="logo" width="200"><br></center>
        <i class="mdi-content-content-paste red circle"></i>
        <p><strong>Name:</strong>'.$name.'</p>
		<p><strong>Contact Number:</strong> '.$contact.'</p>
        <a href="#" class="secondary-content"><i class="mdi-action-grade"></i></a>';
		
	foreach ($_POST as $key => $value)
	{
		if($value == ''){
			break;
		}
		if(is_numeric($key)){
		$result = mysqli_query($con, "SELECT * FROM items WHERE id = $key");
		while($row = mysqli_fetch_array($result))
		{
			$price = $row['price'];
			$item_name = $row['name'];
			$item_id = $row['id'];
        }}
        ?></span>
          </div>
          
          <div>
            <span>{client_address}</span>
          </div>
          
          <div>
            <span>{client_city_zip_state}</span>
          </div>
          
          <div>
            <span>{client_phone_fax}</span>
          </div>
          
          <div>
            <span>{client_email}</span>
          </div>
          
          <div>
            <span>{client_other}</span>
          </div>
        </section>
        
        <div class="clearfix"></div>
        
        <section id="invoice-info">
          <div>
            <span>{net_term_label}</span> <span>{net_term}</span>
          </div>
          <div>
            <span>{due_date_label}</span> <span>{due_date}</span>
          </div>
          <div>
            <span>{po_number_label}</span> <span>{po_number}</span>
          </div>
        </section>
        
        <div class="clearfix"></div>

        <div class="currency">
          <span>{currency_label}</span> <span>{currency}</span>
        </div>
        
        <section id="items">
          
          <table cellpadding="0" cellspacing="0">
          
            <tr>
              <th>{item_row_number_label}</th> <!-- Dummy cell for the row number and row commands -->
              <th>{item_description_label}</th>
              <th>{item_quantity_label}</th>
              <th>{item_price_label}</th>
              <th>{item_discount_label}</th>
              <th>{item_tax_label}</th>
              <th>{item_line_total_label}</th>
            </tr>
            
            <tr data-iterate="item">
              <td>{item_row_number}</td> <!-- Don't remove this column as it's needed for the row commands -->
              <td>{item_description}</td>
              <td>{item_quantity}</td>
              <td>{item_price}</td>
              <td>{item_discount}</td>
              <td>{item_tax}</td>
              <td>{item_line_total}</td>
            </tr>
            
          </table>
          
        </section>
        
        <section id="sums">
        
          <table cellpadding="0" cellspacing="0">
            <tr>
              <th>{amount_subtotal_label}</th>
              <td>{amount_subtotal}</td>
            </tr>
            
            <tr data-iterate="tax">
              <th>{tax_name}</th>
              <td>{tax_value}</td>
            </tr>
            
            <tr class="amount-total">
              <!-- {amount_total_label} -->
              <td colspan="2">{amount_total}</td>
            </tr>
            
            <!-- You can use attribute data-hide-on-quote="true" to hide specific information on quotes.
                 For example Invoicebus doesn't need amount paid and amount due on quotes  -->
            <tr data-hide-on-quote="true">
              <th>{amount_paid_label}</th>
              <td>{amount_paid}</td>
            </tr>
            
            <tr data-hide-on-quote="true" class="due-amount">
              <th>{amount_due_label}</th>
              <td>{amount_due}</td>
            </tr>
            
          </table>
          
        </section>
        
        <div class="clearfix"></div>
        
        <section id="terms">
        
          <span>{terms_label}</span>
          <div>{terms}</div>
          
        </section>

        <div class="payment-info">
          <div>{payment_info1}</div>
          <div>{payment_info2}</div>
          <div>{payment_info3}</div>
          <div>{payment_info4}</div>
          <div>{payment_info5}</div>
        </div>
      </div>
    </div>

    <script src="http://cdn.invoicebus.com/generator/generator.min.js?data=data.js"></script>
  </body>
</html>
