#!/bin/sh

#This is a set-up file for Apache,Squid,Samba,NFS,FTP

S=systemctl
Y="yum -y install"

#Apache
$Y httpd
$S status httpd
$S start httpd
$S enable httpd
$S status httpd

#Squid
$Y squid
$S status squid
$S start squid
$S enable squid
$S status squid

#Samba
$Y samba
$S status samba
$S start samba
$S enable samba
$S status samba

#NFS
$Y rpcbind nfs-utils
$S start rpc
$S start nfs-server
$S start nfs-lock
$S start nfs-idmap
$S enable nfs-server
$S status nfs-server

#FTP
$Y vsftpd
$S status vsftpd
$S start vsftpd
$S enable vsftpd
$S status vsftpd
