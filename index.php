<?php 
$id = isset($_GET['id']) ? $_GET['id'] : '';
$pass = $my_env_var = getenv('PASSWORD');
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <title>BreXele - By Booler Still in Progess</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
    a,a:focus,a:hover{color:#fff}.btn-secondary,.btn-secondary:focus,.btn-secondary:hover{color:#333;text-shadow:none;background-color:#fff;border:.05rem solid #fff}body,html{height:100%;background-color:#333}body{display:-ms-flexbox;display:-webkit-box;display:flex;-ms-flex-pack:center;-webkit-box-pack:center;justify-content:center;color:#fff;text-shadow:0 .05rem .1rem rgba(0,0,0,.5);box-shadow:inset 0 0 5rem rgba(0,0,0,.5)}.cover-container{max-width:42em}.masthead{margin-bottom:2rem}.masthead-brand{margin-bottom:0}.nav-masthead .nav-link{padding:.25rem 0;font-weight:700;color:rgba(255,255,255,.5);background-color:transparent;border-bottom:.25rem solid transparent}.nav-masthead .nav-link:focus,.nav-masthead .nav-link:hover{border-bottom-color:rgba(255,255,255,.25)}.nav-masthead .nav-link+.nav-link{margin-left:1rem}.nav-masthead .active{color:#fff;border-bottom-color:#fff}@media (min-width:48em){.masthead-brand{float:left}.nav-masthead{float:right}}.cover{padding:0 1.5rem}.cover .btn-lg{padding:.75rem 1.25rem;font-weight:700}.mastfoot{color:rgba(255,255,255,.5)}
    body{background:url(https://source.unsplash.com/user/erondu/1600x900);background-position-x:0;background-position-y:0;background-size:auto;background-size:cover;background-position:center}body::after{content:"";height:100%;width:100%;position:absolute;left:0;top:0;background:#000;opacity:.5;z-index:0}.cover-container.d-flex.h-100.p-3.mx-auto.flex-column{z-index:3}
    </style>
  </head>

  <body class="text-center">

    <div class="cover-container d-flex h-100 p-3 mx-auto flex-column">
      <header class="masthead mb-auto">
        <div class="inner">
          <h3 class="text-center">BreXele</h3>
        </div>
      </header>

      <main role="main" class="inner cover">
        <h1 class="cover-heading">Hello Brow.</h1>
        <p class="lead">This site still in progress to fully up. You go to this site again soon to see the fully site.</p>
        

        <?php if ($id == $pass) { 
       
          $ch = curl_init();

          curl_setopt($ch, CURLOPT_URL, 'http://localhost:4040/api/tunnels');
          curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

          $result = curl_exec($ch);
          if (curl_errno($ch)) {
              echo 'Error:' . curl_error($ch);
          }
          curl_close($ch);
          $json = json_decode($result,true);
          $url = $json['tunnels'][0]['public_url'];
        ?>
            <p class="lead">
                <a class="btn btn-lg btn-secondary" href="<?php echo $url ?>" target="_blank">Go to Link</a>
            </p>


            <form>
              <div class="form-group" method="POST">
                <label for="exampleInputEmail1">Masukin Link sumber bros</label>
                <input name="url" type="text" class="form-control" id="link" placeholder="Link disini brow..">
                <small id="textHelper" class="form-text text-muted">Hanya khusus beberapa link sajo taiyo.</small>
              </div>
              <input name="sid" class="d-none" value="over">
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>



            <?php

            function getElementsByClass(&$parentNode, $tagName, $className) {
                $nodes=array();

                $childNodeList = $parentNode->getElementsByTagName($tagName);
                for ($i = 0; $i < $childNodeList->length; $i++) {
                    $temp = $childNodeList->item($i);
                    if (stripos($temp->getAttribute('class'), $className) !== false) {
                        $nodes[]=$temp;
                    }
                }

                return $nodes;
            }

            if  ($url!= '') {
              $html = file_get_contents($url);
              //Create a new DOM document
              $dom = new DOMDocument;



              //Parse the HTML. The @ is used to suppress any parsing errors
              //that will be thrown if the $html string isn't valid XHTML.
              @$dom->loadHTML($html);

              $content_node=$dom->getElementById("content_node");

              $links=getElementsByClass($dom, 'a', 'button is-primary is-fullwidth');


              $return = '';
              //Iterate over the extracted links and display their URLs
              foreach ($links as $link){
                  //Extract and show the "href" attribute. 
                  $return .=   $link->getAttribute('href')."\n";
                  
              }


              $stringToBeFound = 'download';
              $lines = explode("\n", $return);
              $result = array();
              foreach($lines as $k => $line){

                if(strpos($line, $stringToBeFound) === false){
                    
                  $result[] = $line;
                  
                }
              }
              //echo implode("\n", $result);
              $write = implode( "\n",$result);

              $myfile = fopen("list.magnet", "w") or die("Unable to open file!");
              fwrite($myfile, $write);
            }    


        } ?>
        
      </main>

      <footer class="mastfoot mt-auto">
        <div class="inner">
          <p>Still in progress of hibernating. Copyright <?php echo date("Y"); ?> - The Booler</p>
        </div>
      </footer>
    </div>

  </body>
</html>

