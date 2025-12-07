int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id os_log_xpcAppRemoval(uint64_t a1)
{
  if (qword_10000C828 != -1)
  {
    sub_100003E64();
  }

  v2 = qword_10000C820;

  return v2;
}

void sub_100001798(id a1)
{
  qword_10000C820 = os_log_create([@"com.apple.weather" UTF8String], "XPCAppRemovalService");

  _objc_release_x1();
}

void sub_100001984(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = WDWeatherLibraryDirectory();
  v4 = [v2 deleteAllFilesInDirectory:v3];

  if (v4)
  {
    v6 = os_log_xpcAppRemoval(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100003EE0(v4, v6);
    }
  }

  v7 = os_log_xpcAppRemoval(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Completed AppRemoval Successfully.", v8, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100002254(id a1)
{
  v3 = +[NSFileManager defaultManager];
  v1 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.weather"];
  v2 = qword_10000C830;
  qword_10000C830 = v1;
}

void sub_100002AA4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t variable initialization expression of DaemonDecommissioner.decommissioningManager()
{
  sub_1000040E4();
  swift_allocObject();
  return sub_1000040D4();
}

uint64_t sub_100002B24()
{
  sub_100003E10();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100002BC0;

  return DaemonDecommissioningManager.decommission()();
}

uint64_t sub_100002BC0()
{
  sub_100003E10();
  sub_100003E48();
  v2 = *v1;
  sub_100003E00();
  *v3 = v2;

  if (v0)
  {
  }

  sub_100003E3C();

  return v4();
}

uint64_t sub_100002D28(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100002DD0;

  return DaemonDecommissioner.decommissionDaemon()();
}

uint64_t sub_100002DD0()
{
  sub_100003E10();
  sub_100003E48();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100003E00();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_100003E3C();

  return v6();
}

uint64_t sub_100002EF4(uint64_t a1, uint64_t a2)
{
  sub_10000330C(&qword_10000C818, &qword_1000052D8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = sub_100004124();
  sub_100003354(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_1000052E8;
  v8[5] = v7;
  sub_100003714(0, 0, v5, &unk_1000052F8, v8);
}

id DaemonDecommissioner.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonDecommissioner.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___WeatherDaemonDecommissioner_decommissioningManager;
  sub_1000040E4();
  swift_allocObject();
  *&v0[v2] = sub_1000040D4();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

id DaemonDecommissioner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003140()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003180()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000322C;

  return sub_100002D28(v2, v3);
}

uint64_t sub_10000322C()
{
  sub_100003E10();
  sub_100003E48();
  v1 = *v0;
  sub_100003E00();
  *v2 = v1;

  sub_100003E3C();

  return v3();
}

uint64_t sub_10000330C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000337C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100003DFC;

  return v6();
}

uint64_t sub_100003468()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100003DFC;

  return sub_10000337C(v2, v3, v4);
}

uint64_t sub_100003528(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000322C;

  return v7();
}

uint64_t sub_100003610()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100003650(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_100003E54(v6);
  *v7 = v8;
  v7[1] = sub_100003DFC;

  return sub_100003528(a1, v3, v4, v5);
}

uint64_t sub_100003714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000330C(&qword_10000C818, &qword_1000052D8);
  __chkstk_darwin();
  v10 = v21 - v9;
  sub_1000039B0(a3, v21 - v9);
  v11 = sub_100004124();
  if (sub_100003A20(v10, 1, v11) == 1)
  {
    sub_100003A48(v10);
  }

  else
  {
    sub_100004114();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_100004104();
    v14 = v13;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v15 = sub_1000040F4() + 32;
      v16 = swift_allocObject();
      *(v16 + 16) = a4;
      *(v16 + 24) = a5;

      if (v14 | v12)
      {
        v22[0] = 0;
        v22[1] = 0;
        v17 = v22;
        v22[2] = v12;
        v22[3] = v14;
      }

      else
      {
        v17 = 0;
      }

      v21[1] = 7;
      v21[2] = v17;
      v21[3] = v15;
      v19 = swift_task_create();

      sub_100003A48(a3);

      return v19;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003A48(a3);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  if (v14 | v12)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v12;
    v22[7] = v14;
  }

  return swift_task_create();
}

uint64_t sub_1000039B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000330C(&qword_10000C818, &qword_1000052D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003A48(uint64_t a1)
{
  v2 = sub_10000330C(&qword_10000C818, &qword_1000052D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003AB0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003BA8;

  return v6(a1);
}

uint64_t sub_100003BA8()
{
  sub_100003E10();
  sub_100003E48();
  v1 = *v0;
  sub_100003E00();
  *v2 = v1;

  sub_100003E3C();

  return v3();
}

uint64_t sub_100003C8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003CC4()
{
  v0 = swift_task_alloc();
  v1 = sub_100003E54(v0);
  *v1 = v2;
  v3 = sub_100003E1C(v1);

  return v4(v3);
}

uint64_t sub_100003D5C()
{
  v0 = swift_task_alloc();
  v1 = sub_100003E54(v0);
  *v1 = v2;
  v3 = sub_100003E1C(v1);

  return v4(v3);
}

void sub_100003EE0(uint64_t a1, NSObject *a2)
{
  v4 = WDWeatherLibraryDirectory();
  v5 = [v4 path];
  sub_100002AC0();
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error removing files from directory: %@. Error=%@", v6, 0x16u);
}