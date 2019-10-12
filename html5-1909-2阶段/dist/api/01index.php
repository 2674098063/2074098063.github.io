<?php
    // $tabname='test';//表名
    // $tabHeser='salePrice';//要查询的表头名

    $fangfa=isset($_REQUEST['fangfa'])?$_REQUEST['fangfa']:'sortTab';//调用的方法
    $tabHeser=isset($_REQUEST['tabHeser'])?$_REQUEST['tabHeser']:'salePrice';//调用的方法

    $min = isset($_REQUEST['min']) ? $_REQUEST['min'] : 0;//默认下限值
    $max = isset($_REQUEST['max']) ? $_REQUEST['max'] : 99999999;//默认上限值
    $page = isset($_REQUEST['ipage']) ? $_REQUEST['ipage'] : '1';//页数
    $num = isset($_REQUEST['num']) ? $_REQUEST['num'] : '36';//每页数量

    $paixu = isset($_REQUEST['paixu']) ? $_REQUEST['paixu'] : '';//排序方式
    
    $sear = isset($_REQUEST['sear']) ? $_REQUEST['sear'] : '';//模糊查询关键字

    $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : '';//商品的id
    $gnum = isset($_REQUEST['gnum']) ? $_REQUEST['gnum'] : 1;//商品的数量
    $sur = isset($_REQUEST['sur']) ? $_REQUEST['sur'] :490;//库存量
    $index = ($page - 1) * $num;

    $name = isset($_REQUEST['name']) ? $_REQUEST['name'] : '';//登陆用户名
    $password = isset($_REQUEST['password']) ? $_REQUEST['password'] : '';//登陆密码
    $nike = isset($_REQUEST['nike']) ? $_REQUEST['nike'] :'';//
    $tabna=isset($_REQUEST['tabna']) ? $_REQUEST['tabna'] :'main';
    /*
    $index-----//页数
    $num  -----//每页条数
    $paixu-----//排序方式
    $min  -----//下限
    $max  -----//上限
    */ 

    
    $set=new operationDB;
    if($fangfa=='setlogin'){
        $sql=$set->$fangfa($name);
    }

    if($fangfa=='setCart'){
        $sql=$set->$fangfa($id);
    }
    if($fangfa=='cart'){
        $sql=$set->$fangfa($tabna,$id,$gnum);
    }
    if($fangfa=='sortTab'){
        $sql= $set->$fangfa($tabHeser,$min,$max,$num,$index,$paixu,$tabna);
    }
    if($fangfa=='setDet'){
        $sql= $set->$fangfa($id,$sur,$tabna);
    }
    if($fangfa=='verification'){
        $sql= $set->$fangfa($name,$password);
    }
    if($fangfa=='check'){
        $sql= $set->$fangfa($name);
    }
    if($fangfa=='reg'){
        $sql= $set->$fangfa($name,$password,$nike);
    }
    if($fangfa=='searchDB'){
        $sql= $set->$fangfa($sear,$min,$max,$index,$tabna);
    }
    
    echo $sql;
    // $conn->set_charset('utf8');//设置编码格式
    //关闭程序
    // $res->close();
   // $conn->close();

    class operationDB {//数据库查询   
        public $tabname='shangyi';//表名

        public function check($name){
            include 'conn.php';/*用户名重复验证*/ 
            $tabname='user';
            
            $sql = "SELECT * FROM  $tabname WHERE uname='$name'";
            //执行语句
            $res = $conn->query($sql);
            // var_dump($res);
            //判断是否可以通过验证
            if($res->num_rows) {
                //查找到即为库中存在，不能注册.
                return 'no';
            }else{
                return 'yes';
            }
            $conn->close();
        }

        public function reg($name,$password,$nike){
            //注册验证
            include 'conn.php';
            $tabname='user';
            //注册
            $sql = "INSERT INTO $tabname(uname,psw,unike) VALUES('$name','$password','$nike')";
            //执行语句
            $res = $conn->query($sql);
            return $res;
            $conn->close();
        }
        public function setlogin($name){
            include 'conn.php';
            $tabname='user';
            $sql = "SELECT * FROM $tabname";
            $res = $conn->query($sql);
            $arr = $res->fetch_all(MYSQLI_ASSOC);
            for($i=0;$i<$res->num_rows;$i++){
                // var_dump($arr[$i]["uname"]);
                if($arr[$i]["uname"]==$name){
                    return $arr[$i]["unike"];
                }
            }
            $conn->close();
        }
        public function verification($name,$password){
            /*登陆验证*/
            include 'conn.php';
            $tabname='user';
            //登陆验证
           $sql = "SELECT * FROM $tabname WHERE uname='$name' AND psw='$password'";
            //执行语句
            $res = $conn->query($sql);
            if($res->num_rows) {
                //登陆成功
                return '登陆成功';
            }else{
                //登陆失败
                return '错误';
            }
            $conn->close();
        }

        public function searchDB($sear,$min,$max,$index,$tabna){
            /*模糊查询*/
            include 'conn.php';
            $tabname=$tabna;

            if(is_array($sear)){
                $sql="SELECT * FROM $tabname WHERE name LIKE '%$sear[0]%'";
                $searlength=count($sear);
                for($i=1;$i<$searlength;$i++){
                    $sql .=" AND name LIKE '%$sear[$i]%'";
                }
            }else{
                 $sql = "SELECT * FROM $tabname WHERE name LIKE '%$sear%';";
            }
            
            //执行语句
            $res = $conn->query($sql);//执行，获得一个结果集res
            
            //提取结果集的数据部分
            $arr = $res->fetch_all(MYSQLI_ASSOC);
            //查询整个表的数据
            $sql2="SELECT * FROM $tabname WHERE 'name' BETWEEN $min AND $max";
            $res2=$conn->query($sql2);

            //数组转字符串
            $data=array(
                'list' => $arr,
            );
            if($data){
                return json_encode(array(
                    'data'=>$data,
                    'code'=>1,
                    'total' => $res->num_rows,
                    'mes'=>'查询成功',
                ));
            }else{
                return json_encode(array(
                    'code'=>1,
                    'mes'=>'查询失败',
                ));
            }
            $conn->close();
        }
        public function sortTab($tabHeser,$min,$max,$num,$index,$paixu,$tabna){
            /*数据查询*/
            include 'conn.php';
            $tabname=$tabna;
            if($paixu){
                $sql = "SELECT * FROM $tabname WHERE $tabHeser BETWEEN $min AND $max ORDER BY  $tabHeser $paixu LIMIT $index,$num ";
            }else{
                $sql = "SELECT * FROM $tabname WHERE $tabHeser BETWEEN $min AND $max  LIMIT $index,$num";
            }
            // return $sql;
            $res = $conn->query($sql);//执行，获得一个结果集res
            // var_dump( $res);
            //提取结果集的数据部分
            $arr = $res->fetch_all(MYSQLI_ASSOC);
            //查询整个表的数据
            $sql2="SELECT * FROM $tabname WHERE $tabHeser BETWEEN $min AND $max";
            $res2=$conn->query($sql2);

            //数组转字符串
            $data=array(
                
                'list' => $arr,
                'index' => $index,
                'num' => $num
            );
            if($data){
                return json_encode(array(
                    'data'=>$data,
                    'code'=>1,
                    'total' => $res2->num_rows,
                    'mes'=>'查询成功',
                ));
            }else{
                return json_encode(array(
                    'code'=>1,
                    'mes'=>'查询失败',
                ));
            }
            $conn->close();
        }    
        public function cart($tabna,$id,$gnum){
            include 'conn.php';
            $tabname=$tabna;
            if($id&&$gnum){
                $sqlCar ="SELECT * FROM cart LEFT JOIN shangyi ON cart.gid = shangyi.id;";
                $sql = "INSERT INTO cart(gid,num) VALUES('$id','$gnum')";
                // $sql ="UPDATE cart SET cart.num=$gnum WHERE cart.gid=$id;";
                $res=$conn->query($sql); 
                $resCar=$conn->query($sqlCar);
                $arr = $resCar->fetch_all(MYSQLI_ASSOC);
                if($arr){
                    return json_encode(array(
                       'code'=>1,
                       'mes'=>'添加成功',
                       'data'=>$arr
                   ));
               }else{
                   return json_encode(array(
                       'code'=>1,
                       'mes'=>'失败',
                   ));
               }
            }
        }
        public function setCart($id){
            include 'conn.php';
            $sql = "delete from cart where gid=$id;";
            $res=$conn->query($sql);
            
            return '成功删除';
            $res->close();
        }
        public function setDet($id,$sur,$tabna){
             /*删改数据*/
            include 'conn.php';
            $tabname=$tabna;
            if($id&&$sur){
                $sqlSur = "update $tabname set sto='$sur' where id=$id;";//修改
                $sql = "SELECT * FROM $tabname WHERE id=$id";
                $resSur=$conn->query($sqlSur);
                $res = $conn->query($sql);
                //提取结果集的数据部分
                $arr = $res->fetch_all(MYSQLI_ASSOC);
                if($arr){
                     return json_encode(array(
                        'code'=>1,
                        'mes'=>'修改成功',
                        'data'=>$arr
                    ));
                }else{
                    return json_encode(array(
                        'code'=>1,
                        'mes'=>'修改失败',
                    ));
                }
            }else{
                if($sur == 0){
                //当商品卖完之后就删除
                $sqlSur = "delete from $tabname where id=$id;";
                $resSur=$conn->query($sqlSur);
                $resSur->close();
                return '库存为0';
                }else{
                    return 'error';
                }  
            }
            $conn->close();
        }
       
    }

