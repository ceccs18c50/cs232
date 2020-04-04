<?php
echo "<body style='background-color:pink'>";
$t=date( "H" );
echo "The hour is " .$t;
echo "<br>";
if ($t < "12" )
{       echo "GOOD MORNING";

}
elseif ($t <= "16" )
{  echo "GOOD AFTERNOON";
}
elseif ($t <= "19" )
{  echo "     GOOD EVENING!!";
}
else
{ echo "GOOD NIGHT";
}
 ?>
