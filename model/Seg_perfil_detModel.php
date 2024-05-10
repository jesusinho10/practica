<?php
/*Generate By AlanC , Date: 20210719*/
include_once "../core/ModeloBasePDO.php";
class Seg_perfil_detModel extends ModeloBasePDO {
public function __construct() { 
parent::__construct(); 
} 
 public function findall() { 
 $sql = " SELECT cod_prf_det,cod_prf,cod_apl,estado,usu_cre,fh_cre,usu_mod,fh_mod
 FROM seg_perfil_det ";
 $param = array(); 
 return parent::gselect($sql, $param);
}
 public function findpaginateall($p_filtro, $p_limit, $p_offset) { 
 $sql = " SELECT cod_prf_det,cod_prf,cod_apl,estado,usu_cre,fh_cre,usu_mod,fh_mod
 FROM seg_perfil_det
 WHERE upper(concat(IFNULL(cod_prf_det,''),IFNULL(cod_prf,''),IFNULL(cod_apl,''),IFNULL(estado,''),IFNULL(usu_cre,''),IFNULL(fh_cre,''),IFNULL(usu_mod,''),IFNULL(fh_mod,''))) like  CONCAT('%',upper(IFNULL(:p_filtro,'' )), '%') 
 limit :p_limit 
 offset :p_offset  ";
 $param = array(); 
      array_push($param, [':p_filtro', $p_filtro, PDO::PARAM_STR]);
         array_push($param, [':p_limit', $p_limit, PDO::PARAM_INT]);
         array_push($param, [':p_offset', $p_offset, PDO::PARAM_INT]);
  $var =  parent::gselect($sql, $param);
         $sqlCount = "SELECT count(1) as cant FROM seg_perfil_det 
      WHERE  upper(concat(IFNULL(cod_prf_det,''),IFNULL(cod_prf,''),IFNULL(cod_apl,''),IFNULL(estado,''),IFNULL(usu_cre,''),IFNULL(fh_cre,''),IFNULL(usu_mod,''),IFNULL(fh_mod,''))) like CONCAT('%',upper(IFNULL(:p_filtro,'' )), '%') ";
 							        $param = array();
        array_push($param, [':p_filtro', $p_filtro, PDO::PARAM_STR]);
		  $var1 =  parent::gselect($sqlCount, $param);
 $var['LENGTH']=$var1 ['DATA'][0]['cant'];    
  return $var;
 }
function findId($p_cod_prf_det) { $sql = " SELECT cod_prf_det,cod_prf,cod_apl,estado,usu_cre,fh_cre,usu_mod,fh_mod
 FROM seg_perfil_det
  WHERE cod_prf_det = :p_cod_prf_det";
 $param = array(); 
array_push($param, [':p_cod_prf_det', $p_cod_prf_det, PDO::PARAM_STR]);

 return parent::gselect($sql, $param);
    }
public function insert($p_cod_prf_det,$p_cod_prf,$p_cod_apl,$p_estado,$p_usu_cre,$p_fh_cre,$p_usu_mod,$p_fh_mod) {
 $sql = " INSERT INTO seg_perfil_det
 (cod_prf_det,cod_prf,cod_apl,estado,usu_cre,fh_cre,usu_mod,fh_mod) 
 VALUES (:p_cod_prf_det,:p_cod_prf,:p_cod_apl,:p_estado,:p_usu_cre,:p_fh_cre,:p_usu_mod,:p_fh_mod) ";
 $param = array(); 
array_push($param, [':p_cod_prf_det', $p_cod_prf_det, PDO::PARAM_STR]);

array_push($param, [':p_cod_prf', $p_cod_prf, PDO::PARAM_STR]);

array_push($param, [':p_cod_apl', $p_cod_apl, PDO::PARAM_STR]);

array_push($param, [':p_estado', $p_estado, PDO::PARAM_STR]);

array_push($param, [':p_usu_cre', $p_usu_cre, PDO::PARAM_STR]);

array_push($param, [':p_fh_cre', $p_fh_cre, PDO::PARAM_STR]);

array_push($param, [':p_usu_mod', $p_usu_mod, PDO::PARAM_STR]);

array_push($param, [':p_fh_mod', $p_fh_mod, PDO::PARAM_STR]);

 return parent::ginsert($sql, $param);
    }
public function update($p_cod_prf_det,$p_cod_prf,$p_cod_apl,$p_estado,$p_usu_cre,$p_fh_cre,$p_usu_mod,$p_fh_mod) {
$sql = "UPDATE seg_perfil_det SET 
cod_prf = :p_cod_prf,cod_apl = :p_cod_apl,estado = :p_estado,usu_cre = :p_usu_cre,fh_cre = :p_fh_cre,usu_mod = :p_usu_mod,fh_mod = :p_fh_mod
 WHERE cod_prf_det = :p_cod_prf_det";
 $param = array(); 
array_push($param, [':p_cod_prf_det', $p_cod_prf_det, PDO::PARAM_STR]);

array_push($param, [':p_cod_prf', $p_cod_prf, PDO::PARAM_STR]);

array_push($param, [':p_cod_apl', $p_cod_apl, PDO::PARAM_STR]);

array_push($param, [':p_estado', $p_estado, PDO::PARAM_STR]);

array_push($param, [':p_usu_cre', $p_usu_cre, PDO::PARAM_STR]);

array_push($param, [':p_fh_cre', $p_fh_cre, PDO::PARAM_STR]);

array_push($param, [':p_usu_mod', $p_usu_mod, PDO::PARAM_STR]);

array_push($param, [':p_fh_mod', $p_fh_mod, PDO::PARAM_STR]);


 return parent::gupdate($sql, $param);
    }
function delete($p_cod_prf_det) { $sql = "DELETE FROM seg_perfil_det WHERE cod_prf_det = :p_cod_prf_det"; $param = array(); 
array_push($param, [':p_cod_prf_det', $p_cod_prf_det, PDO::PARAM_STR]);


 return parent::gdelete($sql, $param);
    }
} 
 ?>
