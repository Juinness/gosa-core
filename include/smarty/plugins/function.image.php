<?php

function smarty_function_image($params, &$smarty)
{
  $path = (isset($params['path']))? $params['path'] :"";
  $action = (isset($params['action']))? $params['action'] :"";
  $title = (isset($params['title']))? $params['title'] :"";
  $align = (isset($params['align']))? $params['align'] :"";
  //print_a(array($path,$label,$action,$title,$align));
  echo image($path,$action,$title,$align);
}
  
?>
