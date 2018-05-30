#!/bin/bash

let "a = 0"

CMDA=$(../bsq maps/intermediate_map_1000_1000)
CMDB=$(cat maps_solved/intermediate_map_1000_1000)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_1000_1000_2)
CMDB=$(cat maps_solved/intermediate_map_1000_1000_2)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_100_100)
CMDB=$(cat maps_solved/intermediate_map_100_100)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_187_187_empty)
CMDB=$(cat maps_solved/intermediate_map_187_187_empty)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_187_187_filled)
CMDB=$(cat maps_solved/intermediate_map_187_187_filled)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal .. ici !";
fi

CMDA=$(../bsq maps/intermediate_map_187_187_with_obstacles_25pc)
CMDB=$(cat maps_solved/intermediate_map_187_187_with_obstacles_25pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_187_187_with_obstacles_50pc)
CMDB=$(cat maps_solved/intermediate_map_187_187_with_obstacles_50pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_187_187_with_obstacles_75pc)
CMDB=$(cat maps_solved/intermediate_map_187_187_with_obstacles_75pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_2000_2000)
CMDB=$(cat maps_solved/intermediate_map_2000_2000)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_200_200)
CMDB=$(cat maps_solved/intermediate_map_200_200)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_1000_1000_2)
CMDB=$(cat maps_solved/intermediate_map_1000_1000_2)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_34_137_empty)
CMDB=$(cat maps_solved/intermediate_map_34_137_empty)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_34_137_filled)
CMDB=$(cat maps_solved/intermediate_map_34_137_filled)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal ici";
fi

CMDA=$(../bsq maps/intermediate_map_34_137_with_obstacles_25pc)
CMDB=$(cat maps_solved/intermediate_map_34_137_with_obstacles_25pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_34_137_with_obstacles_50pc)
CMDB=$(cat maps_solved/intermediate_map_34_137_with_obstacles_50pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_34_137_with_obstacles_75pc)
CMDB=$(cat maps_solved/intermediate_map_34_137_with_obstacles_75pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_187_187_empty)
CMDB=$(cat maps_solved/intermediate_map_187_187_empty)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_5000_5000)
CMDB=$(cat maps_solved/intermediate_map_5000_5000)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_500_500)
CMDB=$(cat maps_solved/intermediate_map_500_500)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_500_500_2)
CMDB=$(cat maps_solved/intermediate_map_500_500_2)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_500_500_3)
CMDB=$(cat maps_solved/intermediate_map_500_500_3)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_97_21_empty)
CMDB=$(cat maps_solved/intermediate_map_97_21_empty)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_97_21_filled)
CMDB=$(cat maps_solved/intermediate_map_97_21_filled)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_97_21_with_obstacles_25pc)
CMDB=$(cat maps_solved/intermediate_map_97_21_with_obstacles_25pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_97_21_with_obstacles_50pc)
CMDB=$(cat maps_solved/intermediate_map_97_21_with_obstacles_50pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_97_21_with_obstacles_75pc)
CMDB=$(cat maps_solved/intermediate_map_97_21_with_obstacles_75pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_empty_corners)
CMDB=$(cat maps_solved/intermediate_map_empty_corners)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_filled_corners)
CMDB=$(cat maps_solved/intermediate_map_filled_corners)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_34_137_with_obstacles_75pc)
CMDB=$(cat maps_solved/intermediate_map_34_137_with_obstacles_75pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_one_column_with_obstacles_50pc)
CMDB=$(cat maps_solved/intermediate_map_one_column_with_obstacles_50pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_one_column_with_obstacles_25pc)
CMDB=$(cat maps_solved/intermediate_map_one_column_with_obstacles_25pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi


CMDA=$(../bsq maps/intermediate_map_one_empty_box)
CMDB=$(cat maps_solved/intermediate_map_one_empty_box)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_one_empty_column)
CMDB=$(cat maps_solved/intermediate_map_one_empty_column)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal : map_one_empty_column";
fi

CMDA=$(../bsq maps/intermediate_map_one_empty_line)
CMDB=$(cat maps_solved/intermediate_map_one_empty_line)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_one_filled_box)
CMDB=$(cat maps_solved/intermediate_map_one_filled_box)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_one_filled_column)
CMDB=$(cat maps_solved/intermediate_map_one_filled_column)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal map_one_filled_column";
fi

CMDA=$(../bsq maps/intermediate_map_one_filled_line)
CMDB=$(cat maps_solved/intermediate_map_one_filled_line)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal .";
fi

CMDA=$(../bsq maps/intermediate_map_one_line_with_obstacles_25pc)
CMDB=$(cat maps_solved/intermediate_map_one_line_with_obstacles_25pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal.;";
fi

CMDA=$(../bsq maps/intermediate_map_one_line_with_obstacles_50pc)
CMDB=$(cat maps_solved/intermediate_map_one_line_with_obstacles_50pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal";
fi

CMDA=$(../bsq maps/intermediate_map_one_line_with_obstacles_75pc)
CMDB=$(cat maps_solved/intermediate_map_one_line_with_obstacles_75pc)

if [ "$CMDA" == "$CMDB" ];then
  echo "equal";
  let "a = a + 1"
else
  echo "not equal a";
fi

echo "START 10000x10000 ZZzzz"
CMDA=$(../bsq maps/intermediate_map_10000_10000)
CMDB=$(cat maps_solved/intermediate_map_10000_10000)

if [ "$CMDA" == "$CMDB" ];then
  echo "10 000 fine"
  let "a = a + 1"
else
  echo "not equal for 10 000";
fi

echo ""
echo "test passed: $a / 41"

echo "Total: $((a*100/41))%"
