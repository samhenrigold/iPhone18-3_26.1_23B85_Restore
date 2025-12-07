uint64_t sub_D48(char *category)
{
  qword_D118 = os_log_create("com.apple.bluetooth", category);

  return _objc_release_x1();
}

void sub_2408(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_3D88(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_400C()
{
  sub_3DC0();
  sub_23FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_4080()
{
  sub_3DC0();
  sub_23FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_40F4(void *a1)
{
  v2 = a1;
  v3 = [sub_3DB4() description];
  sub_3DA8();
  sub_3D88(&dword_0, v4, v5, "Unknown device info %@", v6, v7, v8, v9);
}

void sub_4184()
{
  sub_3DA8();
  sub_23FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_41F4(void *a1)
{
  v2 = a1;
  v3 = [sub_3DB4() identifier];
  sub_3DA8();
  sub_3D88(&dword_0, v4, v5, "Could not find service for identifier %@", v6, v7, v8, v9);
}

void sub_4284(void *a1)
{
  v2 = a1;
  v3 = [sub_3DB4() identifier];
  sub_3DA8();
  sub_3D88(&dword_0, v4, v5, "Identifier %@ audio format was not initialized properly", v6, v7, v8, v9);
}

void sub_4314()
{
  sub_3DC0();
  sub_23FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_4398(unsigned __int16 a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a2;
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Received BufferLength %ld is shorter than FrameLength %d", &v3, 0x12u);
}

void sub_4424(void *a1)
{
  v2 = a1;
  [sub_3DB4() deviceType];
  sub_3DA8();
  sub_3D88(&dword_0, v3, v4, "No gain for unknown device type %lu, assuming DoAP device", v5, v6, v7, v8);
}