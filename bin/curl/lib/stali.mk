ROOT=../../..

include $(ROOT)/config.mk

CFLAGS = -I. -I../include -I$(ROOT)/lib/libressl/include -I$(ROOT)/lib/zlib
CPPFLAGS = -DHAVE_CONFIG_H -DHAVE_ERR_REMOVE_THREAD_STATE
OBJS = speedcheck.o\
	http2.o\
	http_chunks.o\
	llist.o\
	curl_ntlm_msgs.o\
	timeval.o\
	ssh.o\
	escape.o\
	fileinfo.o\
	pingpong.o\
	tftp.o\
	socks.o\
	hash.o\
	cookie.o\
	file.o\
	dict.o\
	easy.o\
	if2ip.o\
	warnless.o\
	strequal.o\
	http_negotiate.o\
	hostip.o\
	asyn-ares.o\
	curl_sasl_gssapi.o\
	non-ascii.o\
	curl_memrchr.o\
	splay.o\
	smb.o\
	hostasyn.o\
	getinfo.o\
	curl_sspi.o\
	rtsp.o\
	base64.o\
	strdup.o\
	curl_endian.o\
	getenv.o\
	rawstr.o\
	curl_multibyte.o\
	asyn-thread.o\
	gopher.o\
	socks_sspi.o\
	dotdot.o\
	http.o\
	pop3.o\
	curl_threads.o\
	netrc.o\
	hostsyn.o\
	http_proxy.o\
	strtok.o\
	multi.o\
	hostip4.o\
	inet_pton.o\
	security.o\
	idn_win32.o\
	memdebug.o\
	strerror.o\
	curl_sasl_sspi.o\
	curl_gssapi.o\
	share.o\
	version.o\
	curl_ntlm_wb.o\
	amigaos.o\
	curl_addrinfo.o\
	md4.o\
	md5.o\
	formdata.o\
	krb5.o\
	curl_gethostname.o\
	inet_ntop.o\
	hostcheck.o\
	nonblock.o\
	socks_gssapi.o\
	sendf.o\
	select.o\
	curl_ntlm.o\
	curl_sasl.o\
	vtls/gtls.o\
	vtls/cyassl.o\
	vtls/polarssl_threadlock.o\
	vtls/vtls.o\
	vtls/axtls.o\
	vtls/schannel.o\
	vtls/darwinssl.o\
	vtls/nss.o\
	vtls/openssl.o\
	vtls/mbedtls.o\
	vtls/polarssl.o\
	vtls/gskit.o\
	ftplistparser.o\
	imap.o\
	hmac.o\
	slist.o\
	connect.o\
	http_negotiate_sspi.o\
	url.o\
	transfer.o\
	ftp.o\
	smtp.o\
	x509asn1.o\
	ldap.o\
	curl_ntlm_core.o\
	curl_rtmp.o\
	pipeline.o\
	wildcard.o\
	mprintf.o\
	openldap.o\
	telnet.o\
	http_digest.o\
	curl_des.o\
	strtoofft.o\
	conncache.o\
	parsedate.o\
	hostip6.o\
	content_encoding.o\
	curl_fnmatch.o\
	progress.o
LIB = libcurl.a

include $(ROOT)/mk/lib.mk
