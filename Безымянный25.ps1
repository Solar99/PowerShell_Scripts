function get-test([int]$a)
{

  $a;
  for($i=0; $i -le $a; $i++){
    Write-Host $i  
    };
  return $i
  }