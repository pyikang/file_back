<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/23
 * Time: 10:12
 */
$extensions=";extension=php_bz2.dll;extension=php_curl.dll;extension=php_fileinfo.dll;extension=php_gd2.dll;extension=php_gettext.dll;extension=php_gmp.dll;extension=php_intl.dll;extension=php_imap.dll;extension=php_interbase.dll;extension=php_ldap.dll;extension=php_mbstring.dll;extension=php_exif.dll;extension=php_mysql.dll;extension=php_mysqli.dll;extension=php_oci8.dll;extension=php_oci8_11g.dll;extension=php_openssl.dll;extension=php_pdo_firebird.dll;extension=php_pdo_mysql.dll;extension=php_pdo_oci.dll;extension=php_pdo_odbc.dll;extension=php_pdo_pgsql.dll;extension=php_pdo_sqlite.dll;extension=php_pgsql.dll;extension=php_pspell.dll;extension=php_shmop.dll;extension=php_mongo.dll;extension=php_sqlsrv.dll;extension=php_pdo_sqlsrv.dll;extension=php_snmp.dll;extension=php_soap.dll;extension=php_sockets.dll;extension=php_sqlite3.dll;extension=php_sybase_ct.dll;extension=php_tidy.dll;extension=php_xmlrpc.dll;extension=php_xsl.dll;extension=php_zip.dll;extension=php_memcache.dll";
$ext = explode(';extension=php_', $extensions);
unset($ext[0]);
foreach ($ext as $k=>$s){
    $ext[$k] = substr($s,0,(strlen($s)-4));
}
$success_ext_list = array();
$fail_ext_list = array();
foreach ($ext as $e){
    if (extension_loaded($e)){
        $success_ext_list[] = $e;
    }else{
        $fail_ext_list[] = $e;
    }
}

echo "<h2>installed:</h2>";
foreach($success_ext_list as $ext){
    echo "$ext<br />";
}

echo "<h2>uninstalled:</h2>";
foreach($fail_ext_list as $ext){
    echo "$ext<br />";
}
