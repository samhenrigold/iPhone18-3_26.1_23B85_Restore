void sub_10002A7E4()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_10001CFB0();
  sub_10001CFD4(&_mh_execute_header, v1, v2, "[ERROR] fsctl(dev=%d) failed; error %d (%s)", v3, v4, v5, v6);
}

void sub_10002A878()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_10001CFB0();
  sub_10001CFD4(&_mh_execute_header, v1, v2, "[ERROR] fsgetpath(dev=%d) failed; error %d (%s)", v3, v4, v5, v6);
}

void sub_10002A938()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002A9A8()
{
  sub_100025198();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002AA90()
{
  sub_100006058();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_1000251C0(&_mh_execute_header, v0, v1, "[DEBUG] Creating entry for docid:%lld ino:%lld", v2, v3);
}

void sub_10002AB70()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002AC54(NSObject *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, a1, 0x90u, "[ERROR] Failed to clear ACL on storage directory: error %d (%s)\n", v5, 0x12u);
}

void sub_10002AE8C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, 0x90u, "[ERROR] An unrecoverable error occurred while attempting to open the generation storage database. Generation data has been lost.\n", buf, 2u);
}

void sub_10002AECC()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002AF68()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002AFD8()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002B014()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002B084()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002B0C0()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002B198(uint64_t a1)
{
  [*(a1 + 40) UTF8String];
  sub_10000CEAC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002B27C()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002B2B8()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002B5A8()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002B820()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002B898()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002B910(uint64_t a1, NSObject *a2)
{
  v3 = *(a1 + 48);
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v7 = 136315650;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  v11 = 2080;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] fts_read() failed for path %s; error %d (%s)", &v7, 0x1Cu);
}

void sub_10002BA38()
{
  sub_100025198();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002BAE0()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}