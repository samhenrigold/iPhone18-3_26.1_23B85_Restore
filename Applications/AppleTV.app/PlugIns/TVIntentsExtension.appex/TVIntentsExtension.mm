id sub_100001648(uint64_t a1)
{
  if (qword_10000C7E8 != -1)
  {
    sub_1000051EC();
  }

  v2 = qword_10000C7E0;

  return v2;
}

void sub_10000168C(id a1)
{
  qword_10000C7E0 = os_log_create("com.apple.tv.TVIntents", "Default");

  _objc_release_x1();
}

void sub_100001808(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:&__kCFBooleanTrue forKey:FBSOpenApplicationOptionKeyPromptUnlockDevice];
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    v17 = 0;
    v6 = [v5 openURL:v3 withOptions:v4 error:&v17];
    v7 = v17;

    v8 = *(a1 + 32);
    v9 = [INPlayMediaIntentResponse alloc];
    if (v6)
    {
      v10 = [v9 initWithCode:4 userActivity:0];
      (*(v8 + 16))(v8, v10);

      v12 = sub_100001648(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000052C0();
      }
    }

    else
    {
      v15 = [v9 initWithCode:6 userActivity:0];
      (*(v8 + 16))(v8, v15);

      v12 = sub_100001648(v16);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10000523C(v7);
      }
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [[INPlayMediaIntentResponse alloc] initWithCode:6 userActivity:0];
    (*(v13 + 16))(v13, v14);
  }
}

void sub_100001B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_100001BC4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = (*(a1[6] + 2))();
    v9 = sub_100001648(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000052FC();
    }
  }

  else
  {
    objc_initWeak(&location, a1[4]);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001D2C;
    v10[3] = &unk_100008390;
    objc_copyWeak(&v13, &location);
    v11 = a1[5];
    v12 = a1[6];
    [_TtC18TVIntentsExtension24TVUTSNetworkManagerProxy executeRequest:v5 completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void sub_100001D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001D2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 48));
  if (!v5 || v6)
  {
    v8 = sub_100001648(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000536C();
    }
  }

  else
  {
    v8 = [v5 data];
    v9 = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:0];
    v10 = [[WLKContinueWatchingResponse alloc] initWithDictionary:v9];
    v11 = objc_loadWeakRetained(&to);
    v12 = [v11 _handleCompletionResponseInternal:v10 intent:*(a1 + 32)];

    (*(*(a1 + 40) + 16))();
  }

  objc_destroyWeak(&to);
}

void sub_100001E84(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 48));
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained response];
  v4 = objc_loadWeakRetained(&to);
  v5 = [v4 _handleCompletionResponseInternal:v3 intent:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
  objc_destroyWeak(&to);
}

void sub_1000024D8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_100002510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000056A8();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000025D4;

  return static UTSURLRequestFactory.create(route:)(a1, a2, a3);
}

uint64_t sub_1000025D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000284C(uint64_t a1, const void *a2)
{
  v4 = sub_100005628();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v2[5] = _Block_copy(a2);
  v6 = sub_1000056B8();
  v8 = v7;
  v2[6] = v7;
  sub_1000056A8();
  v9 = swift_task_alloc();
  v2[7] = v9;
  *v9 = v2;
  v9[1] = sub_10000298C;

  return static UTSURLRequestFactory.create(route:)(v5, v6, v8);
}

uint64_t sub_10000298C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = sub_100005638();

    v5 = v4;
    v6 = 0;
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[2];
    v10 = sub_100005608();
    (*(v8 + 8))(v7, v9);
    v6 = v10;
    v5 = 0;
    v4 = v10;
  }

  v11 = v2[5];
  (v11)[2](v11, v6, v5);

  _Block_release(v11);

  v12 = v3[1];

  return v12();
}

id TVIEURLRequestFactoryProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TVIEURLRequestFactoryProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVIEURLRequestFactoryProxy();
  return objc_msgSendSuper2(&v2, "init");
}

id TVIEURLRequestFactoryProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVIEURLRequestFactoryProxy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002C2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002C74()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002CB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000025D4;

  return sub_10000284C(v2, v3);
}

uint64_t sub_100002D68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000383C;

  return v6();
}

uint64_t sub_100002E50()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000383C;

  return sub_100002D68(v2, v3, v4);
}

uint64_t sub_100002F10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000025D4;

  return v7();
}

uint64_t sub_100002FFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000303C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000383C;

  return sub_100002F10(a1, v4, v5, v6);
}

uint64_t sub_100003108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100002C2C(&qword_10000C7B0, &qword_100006450);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_1000033C4(a3, v22 - v9);
  v11 = sub_1000056F8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100003434(v10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000056E8();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_1000056D8();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_1000056C8() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_100003434(a3);

    return v20;
  }

LABEL_8:
  sub_100003434(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1000033C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002C2C(&qword_10000C7B0, &qword_100006450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003434(uint64_t a1)
{
  v2 = sub_100002C2C(&qword_10000C7B0, &qword_100006450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000349C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003594;

  return v6(a1);
}

uint64_t sub_100003594()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000368C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000036C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000383C;

  return sub_10000349C(a1, v4);
}

uint64_t sub_10000377C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000025D4;

  return sub_10000349C(a1, v4);
}

uint64_t sub_100003860()
{
  sub_100005688();
  v0[3] = sub_100005668();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100003910;
  v2 = v0[2];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_100003910(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100003A68, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_100003A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003C50(uint64_t a1, const void *a2)
{
  v4 = sub_100005628();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a2);
  sub_100005618();

  return _swift_task_switch(sub_100003D38, 0, 0);
}

uint64_t sub_100003D38()
{
  sub_100005688();
  v0[6] = sub_100005668();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100003DE8;
  v2 = v0[4];

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_100003DE8(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100003F8C, 0, 0);
  }

  else
  {
    v6 = v4[5];
    (*(v4[3] + 8))(v4[4], v4[2]);

    (v6)[2](v6, a1, 0);
    _Block_release(v6);

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_100003F8C()
{
  v1 = v0[5];
  (*(v0[3] + 8))(v0[4], v0[2]);
  v2 = sub_100005638();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100004068()
{
  sub_100005688();
  v0[3] = sub_100005668();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100004118;
  v2 = v0[2];

  return UTSNetworkManager.cancel(request:)(v2);
}

uint64_t sub_100004118()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000043AC(uint64_t a1, const void *a2)
{
  v4 = sub_100005628();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a2);
  sub_100005618();

  return _swift_task_switch(sub_100004494, 0, 0);
}

uint64_t sub_100004494()
{
  sub_100005688();
  v0[6] = sub_100005668();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100004544;
  v2 = v0[4];

  return UTSNetworkManager.cancel(request:)(v2);
}

uint64_t sub_100004544()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);
  v1[2](v1);
  _Block_release(v1);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100004714()
{
  sub_100005688();
  *(v0 + 16) = sub_100005668();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000047C4;
  v2 = *(v0 + 40);

  return UTSNetworkManager.fetchConfiguration(forceConfig:)(v2);
}

uint64_t sub_1000047C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10000491C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10000491C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004AFC(char a1, void *aBlock)
{
  *(v2 + 48) = a1;
  *(v2 + 16) = _Block_copy(aBlock);

  return _swift_task_switch(sub_100004B6C, 0, 0);
}

uint64_t sub_100004B6C()
{
  sub_100005688();
  *(v0 + 24) = sub_100005668();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100004C1C;
  v2 = *(v0 + 48);

  return UTSNetworkManager.fetchConfiguration(forceConfig:)(v2);
}

uint64_t sub_100004C1C(void *a1)
{
  v4 = *v2;
  v4[5] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100004D8C, 0, 0);
  }

  else
  {
    v5 = v4[2];

    (v5)[2](v5, a1, 0);
    _Block_release(v5);

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_100004D8C()
{
  v1 = *(v0 + 16);

  v2 = sub_100005638();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

id TVUTSNetworkManagerProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVUTSNetworkManagerProxy();
  return objc_msgSendSuper2(&v2, "init");
}

id TVUTSNetworkManagerProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVUTSNetworkManagerProxy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004EFC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004F34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000025D4;

  return sub_100004AFC(v2, v3);
}

uint64_t sub_100004FEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005028()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000383C;

  return sub_1000043AC(v2, v3);
}

uint64_t sub_1000050DC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000511C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000383C;

  return sub_100003C50(v2, v3);
}

void sub_100005200()
{
  sub_100002504();
  sub_1000024CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000523C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000024F8();
  sub_1000024D8(&_mh_execute_header, v2, v3, "handlePlayMedia - failure: %@", v4, v5, v6, v7);
}

void sub_1000052C0()
{
  sub_100002504();
  sub_1000024CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000052FC()
{
  sub_1000024F8();
  sub_1000024CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000536C()
{
  sub_1000024F8();
  sub_1000024CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000053DC(void *a1)
{
  v1 = [a1 absoluteString];
  sub_1000024F8();
  sub_1000024D8(&_mh_execute_header, v2, v3, "buildPlayUrlForIntent - 1st party _playUrlString: %@", v4, v5, v6, v7);
}

void sub_100005460()
{
  sub_1000024F8();
  sub_1000024CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000054D0(void *a1)
{
  v1 = [a1 absoluteString];
  sub_1000024F8();
  sub_1000024D8(&_mh_execute_header, v2, v3, "buildPlayUrlForIntent - fall back to content's url _playUrlString: %@", v4, v5, v6, v7);
}

void sub_100005554()
{
  sub_100002504();
  sub_1000024CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100005590()
{
  sub_100002504();
  sub_1000024CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000055CC()
{
  sub_100002504();
  sub_1000024CC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}