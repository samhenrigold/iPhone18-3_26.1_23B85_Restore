uint64_t sub_100001B10()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100001B40()
{
  v1[2] = v0;
  v2 = sub_10000A5A4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_10000A654();
  v1[7] = sub_10000A644();
  v4 = sub_10000A634();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_100001C40, v4, v3);
}

uint64_t sub_100001C40()
{
  sub_10000A4C4();
  v1 = sub_10000A594();
  v2 = sub_10000A684();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching auth token", v3, 2u);
  }

  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  v8 = *(v6 + 8);
  v8(v4, v5);
  v9 = *(v7 + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_token + 8);
  if (v9)
  {
    v10 = *(v7 + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_token);

    sub_10000A4C4();
    v11 = sub_10000A594();
    v12 = sub_10000A684();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[5];
    v15 = v0[3];
    if (v13)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Reusing cached authentication token", v16, 2u);
    }

    v8(v14, v15);

    v17 = v0[1];

    return v17(v10, v9);
  }

  else
  {
    v19 = swift_task_alloc();
    v0[10] = v19;
    *v19 = v0;
    v19[1] = sub_100001EB0;

    return sub_1000020E4();
  }
}

uint64_t sub_100001EB0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_10000206C;
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_100001FE4;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100001FE4()
{

  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_10000206C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000020E4()
{
  v1[23] = v0;
  sub_10000A654();
  v1[24] = sub_10000A644();
  v3 = sub_10000A634();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_10000217C, v3, v2);
}

uint64_t sub_10000217C()
{
  v1 = sub_10000A5A4();
  v0[27] = v1;
  v2 = *(v1 - 8);
  v3 = v2;
  v0[28] = v2;
  v0[29] = *(v2 + 64);
  v4 = swift_task_alloc();
  sub_10000A4C4();
  v5 = sub_10000A594();
  v6 = sub_10000A684();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting Apple Connect authentication", v7, 2u);
  }

  v8 = *(v3 + 8);
  v0[30] = v8;
  v8(v4, v1);

  if (ACAuthenticationRequest)
  {
    v9 = v0[23];
    v10 = [objc_allocWithZone(ACAuthenticationRequest) init];
    v0[31] = v10;
    [v10 setAuthType:3];
    v11 = *(v9 + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_context);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10000246C;
    v12 = swift_continuation_init();
    v0[17] = sub_1000031C4(&qword_100014A00, &qword_10000B980);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000028E0;
    v0[13] = &unk_1000108A0;
    v0[14] = v12;
    [v11 authenticateWithRequest:v10 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    sub_1000034E0();
    swift_allocError();
    *v13 = xmmword_10000B890;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10000246C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_100002574, v2, v1);
}

uint64_t sub_100002574()
{

  v1 = v0[21];
  v2 = [v1 serviceTicket];
  if (v2)
  {
    v3 = v0[31];
    v4 = v0[23];
    v5 = v2;
    v6 = sub_10000A5E4();
    v8 = v7;

    v9 = (v4 + OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_token);
    *v9 = v6;
    v9[1] = v8;

    v10 = v0[1];

    return v10(v6, v8);
  }

  else
  {
    v12 = swift_task_alloc();
    sub_10000A4C4();
    v13 = v1;
    v14 = sub_10000A594();
    v15 = sub_10000A694();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = [v13 error];
      if (v18)
      {
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      *(v16 + 4) = v18;
      *v17 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to authenticate: %@", v16, 0xCu);
      sub_1000035F4(v17);
    }

    v20 = v0[30];
    v21 = v0[27];

    v20(v12, v21);

    v22 = [v13 error];
    if (v22)
    {
      v23 = v22;
      swift_getErrorValue();
      v24 = v0[18];
      v25 = v0[19];
      v26 = *(v25 - 8);
      v27 = swift_task_alloc();
      (*(v26 + 16))(v27, v24, v25);

      v28 = sub_10000A794();
      v30 = v29;
      (*(v26 + 8))(v27, v25);
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = v0[31];
    sub_1000034E0();
    swift_allocError();
    *v32 = v28;
    v32[1] = v30;
    swift_willThrow();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1000028E0(uint64_t a1, void *a2)
{
  v3 = sub_10000365C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100002944(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return sub_10000A5D4();
  }

  sub_1000031C4(&qword_100014A10, &qword_10000BA70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10000B8A0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000037C0();
  if (a2)
  {
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
  }

  else
  {
    *(v5 + 32) = 0x6E776F6E6B6E75;
    *(v5 + 40) = 0xE700000000000000;
    sub_100003814(a1, 0);
  }

  sub_100003828(a1, a2);
  v6 = sub_10000A5D4();

  return v6;
}

id sub_100002A7C()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_token];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension25AppleConnectAuthenticator_context;
  v4 = [objc_allocWithZone(ACMobileAuthenticationContext) init];
  v5 = objc_allocWithZone(NSNumber);
  v6 = v4;
  v7 = [v5 initWithInteger:191000];
  [v6 setAppID:v7];

  [v6 setEnvironment:0];
  *&v0[v3] = v6;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

id sub_100002B8C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_10000A654();
  v6[5] = sub_10000A644();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_100002CE8;

  return sub_100001B40();
}

uint64_t sub_100002CE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_10000A634();
    v9 = v8;
    v10 = sub_100002F00;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_10000A634();
    v9 = v11;
    v10 = sub_100002E74;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_100002E74()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[2];

  v3(v2, v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100002F00()
{
  v1 = v0[7];
  v2 = v0[2];

  swift_errorRetain();
  v2(0, 0, v1);

  v3 = v0[1];

  return v3();
}

__n128 sub_100003124(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100003178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000031C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_10000320C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_10000A5C4();
    if (a3)
    {
LABEL_3:
      v7 = sub_10000A334();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_10000329C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000032DC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100003324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000033EC;

  return sub_100002C38(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000033EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000034E0()
{
  result = qword_1000149F8;
  if (!qword_1000149F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000149F8);
  }

  return result;
}

uint64_t sub_100003544(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000035A8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000035F4(uint64_t a1)
{
  v2 = sub_1000031C4(&qword_100014A08, &qword_10000B988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10000365C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000036A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000036C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100003780(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_1000037C0()
{
  result = qword_100014A18;
  if (!qword_100014A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014A18);
  }

  return result;
}

uint64_t sub_100003814(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100003828(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10000383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000031C4(&qword_1000149F0, &qword_10000BAD0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100009CA4(a3, v25 - v10);
  v12 = sub_10000A674();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000A1B8(v11, &qword_1000149F0, &qword_10000BAD0);
  }

  else
  {
    sub_10000A664();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10000A634();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10000A5F4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000A1B8(a3, &qword_1000149F0, &qword_10000BAD0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A1B8(a3, &qword_1000149F0, &qword_10000BAD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100003B2C()
{
  v0 = sub_10000A5A4();
  sub_100009EC0(v0, qword_100014AE0);
  sub_100009A94(v0, qword_100014AE0);
  return sub_10000A4D4();
}

void sub_100003B78()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A474();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "viewDidLoad");
  sub_10000A464();
  (*(v4 + 104))(v6, enum case for ImagePlaygroundScene.Identifier.editorWithMultiSelectionPicker(_:), v3);
  v7 = sub_10000A3E4();
  swift_unknownObjectRetain();
  sub_10000A444();
  [v1 gp_addChildViewController:v7];
  v8 = *&v1[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController];
  *&v1[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController] = v7;
  v9 = v7;

  [objc_opt_self() setMaxConcurrentDecodeCount:1];
}

void sub_100003D34(void *a1)
{
  v2 = v1;
  v3 = [a1 draftAssetArchives];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10000A624();

    v6 = sub_100008CE0(v5);
    v7 = v6;
    v8 = *(v6 + 2);
    if (v8)
    {
      v9 = 0;
      v10 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController;
      v11 = (v6 + 40);
      while (v9 < *(v7 + 2))
      {
        v13 = *(v11 - 1);
        v12 = *v11;
        swift_beginAccess();
        swift_bridgeObjectRetain_n();
        sub_1000077E8(&v16, v13, v12);
        swift_endAccess();

        v14 = *(v2 + v10);
        if (!v14)
        {
          goto LABEL_10;
        }

        ++v9;
        v15 = v14;
        v17._countAndFlagsBits = v13;
        v17._object = v12;
        sub_10000A404(v17);

        v11 += 2;
        if (v8 == v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }

    else
    {
LABEL_7:
    }
  }
}

uint64_t sub_100003E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_10000A654();
  v5[3] = sub_10000A644();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_100003F3C;

  return sub_1000040D8(a5);
}

uint64_t sub_100003F3C()
{

  v1 = sub_10000A634();

  return _swift_task_switch(sub_100004078, v1, v0);
}

uint64_t sub_100004078()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000040D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_10000A4B4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_10000A4A4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_1000031C4(&qword_100014B70, &qword_10000BB58);
  v2[11] = swift_task_alloc();
  v5 = sub_10000A534();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  sub_10000A654();
  v2[15] = sub_10000A644();
  v7 = sub_10000A634();
  v2[16] = v7;
  v2[17] = v6;

  return _swift_task_switch(sub_1000042C8, v7, v6);
}

void sub_1000042C8()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController;
  v0[18] = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController;
  v3 = *(v1 + v2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  v5 = sub_10000A424();

  if (v5)
  {

    v6 = v0[1];

    v6();
    return;
  }

  v7 = *(v1 + v2);
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  sub_10000A3D4();

  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_100004444;
  v10 = v0[11];
  v11 = v0[2];

  sub_100005B48(v10, v11);
}

uint64_t sub_100004444()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_100004910;
  }

  else
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_100004568;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100004568()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v39 = &_swiftEmptyArrayStorage;
  sub_10000A524();
  if (v5)
  {
    sub_10000A484();

    v6 = sub_100007068(0, 1, 1, &_swiftEmptyArrayStorage);
    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100007068((v7 > 1), v8 + 1, 1, v6);
    }

    v9 = v0[10];
    v10 = v0[7];
    v11 = v0[8];
    v6[2] = v8 + 1;
    (*(v11 + 32))(v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v8, v9, v10);
    v39 = v6;
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

  result = sub_10000A514();
  if (result)
  {
    v13 = *(result + 16);
    if (v13)
    {
      v14 = v0[8];
      v15 = v0[5];
      v16 = result;
      sub_100008938(0, v13, 0);
      v17 = *(v15 + 16);
      v15 += 16;
      v18 = v16 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v37 = *(v15 + 56);
      v38 = v17;
      v19 = (v15 - 8);
      do
      {
        v20 = v0[6];
        v21 = v0[4];
        v38(v20, v18, v21);
        sub_10000A494();
        (*v19)(v20, v21);
        v23 = *(&_swiftEmptyArrayStorage + 2);
        v22 = *(&_swiftEmptyArrayStorage + 3);
        if (v23 >= v22 >> 1)
        {
          sub_100008938((v22 > 1), v23 + 1, 1);
        }

        v24 = v0[9];
        v25 = v0[7];
        *(&_swiftEmptyArrayStorage + 2) = v23 + 1;
        (*(v14 + 32))(&_swiftEmptyArrayStorage + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23, v24, v25);
        v18 += v37;
        --v13;
      }

      while (v13);
    }

    result = sub_1000062A8(&_swiftEmptyArrayStorage);
    v6 = v39;
  }

  v26 = v0[18];
  if (!v6[2])
  {
LABEL_17:
    v34 = v0[3];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v33 = *(v34 + v26);
    if (v33)
    {
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v27 = v0[3];
  v28 = *(v27 + v26);
  if (!v28)
  {
    __break(1u);
    goto LABEL_22;
  }

  v29 = v0[14];
  v30 = v0[12];
  v31 = v0[13];
  v32 = v28;

  sub_10000A434();

  (*(v31 + 8))(v29, v30);
  v33 = *(v27 + v26);
  if (!v33)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  v35 = v33;
  sub_10000A3D4();

  v36 = v0[1];

  return v36();
}

uint64_t sub_100004910()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[3];

  (*(v3 + 56))(v4, 1, 1, v2);
  result = sub_10000A1B8(v4, &qword_100014B70, &qword_10000BB58);
  v7 = *(v5 + v1);
  if (v7)
  {
    v8 = v7;
    sub_10000A3D4();

    v9 = v0[1];

    return v9();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100004B7C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "didBecomeActiveWithConversation:", a1);
  sub_10000A4D4();
  v9 = sub_10000A594();
  v10 = sub_10000A6A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Messages extension did become active.", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v16 = 0u;
  v17 = 0u;
  if ([objc_opt_self() getHostAuditToken:&v16])
  {
    v12 = *&v2[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController];
    if (!v12)
    {
      __break(1u);
      return;
    }

    v19 = v16;
    v20 = v17;
    v21 = 0;
    v13 = v12;
    sub_10000A3F4();
  }

  v14 = *&v2[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController];
  if (!v14)
  {
    __break(1u);
  }

  v15 = v14;
  sub_10000A454();
}

uint64_t sub_100004E10(void *a1)
{
  v2 = sub_100009608(a1);
  v4 = v3;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;

  v7 = a1;
  sub_1000052C4(v2, v4, sub_100009B0C, v6);

  return sub_100009B14(v2, v4);
}

void sub_100005088(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      swift_errorRetain();
      if (qword_1000148F0 != -1)
      {
        swift_once();
      }

      v7 = sub_10000A5A4();
      sub_100009A94(v7, qword_100014AE0);
      swift_errorRetain();
      v8 = sub_10000A594();
      v9 = sub_10000A694();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v19[0] = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = sub_10000A794();
        v14 = sub_100007240(v12, v13, v19);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Failed to stage asset with error: %s", v10, 0xCu);
        sub_1000035A8(v11);
      }

      else
      {
      }
    }

    else
    {
      v15 = [a3 identifier];
      v16 = sub_10000A5E4();
      v18 = v17;

      swift_beginAccess();
      sub_1000077E8(&v20, v16, v18);
      swift_endAccess();
    }
  }
}

void sub_1000052C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [v5 activeConversation];
  if (v8)
  {
    v9 = v8;
    isa = sub_10000A384().super.isa;
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v13[4] = sub_100009B68;
    v13[5] = v11;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000058DC;
    v13[3] = &unk_1000109F8;
    v12 = _Block_copy(v13);
    sub_100009BB8(a3, a4);

    [v9 _insertAssetArchive:isa completionHandler:v12];
    _Block_release(v12);
  }
}

void sub_1000053F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      swift_errorRetain();
      if (qword_1000148F0 != -1)
      {
        swift_once();
      }

      v9 = sub_10000A5A4();
      sub_100009A94(v9, qword_100014AE0);
      swift_errorRetain();
      v10 = sub_10000A594();
      v11 = sub_10000A694();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17[0] = v13;
        *v12 = 136315138;
        swift_getErrorValue();
        v14 = sub_10000A794();
        v16 = sub_100007240(v14, v15, v17);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "Failed to unstage asset with error: %s", v12, 0xCu);
        sub_1000035A8(v13);
      }

      else
      {
      }
    }

    else
    {
      swift_beginAccess();
      sub_1000080AC(a3, a4);
      swift_endAccess();
    }
  }
}

void sub_10000560C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [v5 activeConversation];
  if (v8)
  {
    v9 = v8;
    v10 = sub_10000A5C4();
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v13[4] = sub_100009F68;
    v13[5] = v11;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1000058DC;
    v13[3] = &unk_100010AC0;
    v12 = _Block_copy(v13);
    sub_100009BB8(a3, a4);

    [v9 _removeAssetArchiveWithIdentifier:v10 completionHandler:v12];
    _Block_release(v12);
  }
}

uint64_t sub_1000057C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10000A654();
  v6[5] = sub_10000A644();
  v8 = sub_10000A634();

  return _swift_task_switch(sub_100005864, v8, v7);
}

uint64_t sub_100005864()
{
  v1 = v0[4];
  v2 = v0[2];

  v2(v1);
  v3 = v0[1];

  return v3();
}

void sub_1000058DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100005948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000031C4(&qword_1000149F0, &qword_10000BAD0);
  result = __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  if (a2)
  {
    v13 = sub_10000A674();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    sub_10000A654();
    sub_100009BB8(a2, a3);
    sub_100009BB8(a2, a3);
    swift_errorRetain();
    v14 = sub_10000A644();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = a2;
    v15[5] = a3;
    v15[6] = a1;
    sub_10000383C(0, 0, v12, a5, v15);
    sub_100009C94(a2, a3);
  }

  return result;
}

uint64_t sub_100005AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10000A654();
  v6[5] = sub_10000A644();
  v8 = sub_10000A634();

  return _swift_task_switch(sub_10000A2CC, v8, v7);
}

uint64_t sub_100005B48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000031C4(&qword_100014B80, &qword_10000BB70);
  v3[5] = swift_task_alloc();
  v4 = sub_10000A554();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_10000A654();
  v3[9] = sub_10000A644();
  v6 = sub_10000A634();
  v3[10] = v6;
  v3[11] = v5;

  return _swift_task_switch(sub_100005C78, v6, v5);
}

uint64_t sub_100005C78()
{
  v1 = [*(v0 + 24) contextItems];
  sub_10000A218(0, &qword_100014B88, MSConversationContextItem_ptr);
  v2 = sub_10000A624();

  if (v2 >> 62)
  {
    v3 = sub_10000A724();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:

    v9 = v37;
    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = sub_1000088F4(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return VisualSummarizationClient.summarizeContext(from:precomputedSummary:)(v4, v5, v6, v7);
  }

  v8 = 0;
  v9 = v37;
  v34 = v2 & 0xC000000000000001;
  v35 = *(v37 + 56);
  v33 = v35 + 32;
  v36 = v2;
  do
  {
    if (v34)
    {
      v10 = sub_10000A704();
    }

    else
    {
      v10 = *(v2 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = [v10 timestamp];
    if (v12)
    {
      v13 = v12;
      sub_10000A3B4();

      v9 = v37;
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = *(v9 + 40);
    v16 = sub_10000A3C4();
    (*(*(v16 - 8) + 56))(v15, v14, 1, v16);
    v17 = [v11 messageContent];
    if (v17)
    {
      v18 = v17;
      sub_10000A5E4();
    }

    v19 = [v11 senderHandle];
    if (v19)
    {
      v20 = v19;
      sub_10000A5E4();
    }

    v21 = [v11 senderDisplayName];
    if (v21)
    {
      v22 = v21;
      sub_10000A5E4();
    }

    v9 = v37;
    sub_10000A544();

    v24 = *(&_swiftEmptyArrayStorage + 2);
    v23 = *(&_swiftEmptyArrayStorage + 3);
    if (v24 >= v23 >> 1)
    {
      sub_1000088F4((v23 > 1), v24 + 1, 1);
      v9 = v37;
    }

    v25 = *(v9 + 64);
    v26 = *(v9 + 48);
    ++v8;
    *(&_swiftEmptyArrayStorage + 2) = v24 + 1;
    (*(v35 + 32))(&_swiftEmptyArrayStorage + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v24, v25, v26);
    v2 = v36;
  }

  while (v3 != v8);

LABEL_23:
  *(v9 + 96) = &_swiftEmptyArrayStorage;
  v27 = [*(v9 + 24) generatedSummary];
  v28 = sub_10000A5E4();
  v30 = v29;

  *(v9 + 104) = v30;
  v31 = swift_task_alloc();
  *(v9 + 112) = v31;
  *v31 = v9;
  v31[1] = sub_100006078;
  v4 = *(v9 + 16);
  v5 = &_swiftEmptyArrayStorage;
  v6 = v28;
  v7 = v30;

  return VisualSummarizationClient.summarizeContext(from:precomputedSummary:)(v4, v5, v6, v7);
}

uint64_t sub_100006078()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_100006214;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_10000619C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10000619C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000062A8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100007068(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_10000A4A4();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_1000063D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController] = 0;
  v8 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_contextSummarizer;
  sub_10000A584();
  swift_allocObject();
  *&v3[v8] = sub_10000A574();
  *&v3[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_stagedAssetIdentifiers] = &_swiftEmptySetSingleton;
  if (a2)
  {
    v9 = sub_10000A5C4();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100006524(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_playgroundViewController] = 0;
  v4 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_contextSummarizer;
  sub_10000A584();
  swift_allocObject();
  *&v1[v4] = sub_10000A574();
  *&v1[OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_stagedAssetIdentifiers] = &_swiftEmptySetSingleton;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_100006808(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &GPMessagesAppHelper__metaData; v1; i = &GPMessagesAppHelper__metaData)
  {
    ivar_lyt = i[39].ivar_lyt;
    v53 = a1 & 0xC000000000000001;
    v3 = a1;
    a1 = swift_beginAccess();
    v4 = 0;
    v49 = v3 & 0xFFFFFFFFFFFFFF8;
    v50 = v3;
    v48 = v3 + 32;
    v5 = &_swiftEmptyArrayStorage;
    v6 = &GPMessagesAppHelper__metaData;
    v51 = v1;
    while (1)
    {
      if (v53)
      {
        a1 = sub_10000A704();
      }

      else
      {
        if (v4 >= *(v49 + 16))
        {
          goto LABEL_27;
        }

        a1 = *(v48 + 8 * v4);
      }

      v7 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = [a1 *&v6[17].flags];
      v10 = sub_10000A5E4();
      v12 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100006F5C(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_100006F5C((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      v16 = *&ivar_lyt[v54];

      v17 = v6;
      v18 = [v7 *&v6[17].flags];
      v19 = sub_10000A5E4();
      v21 = v20;

      if (*(v16 + 16) && (sub_10000A7E4(), sub_10000A604(), v22 = sub_10000A7F4(), v23 = -1 << *(v16 + 32), v24 = v22 & ~v23, ((*(v16 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(v16 + 48) + 16 * v24);
          v27 = *v26 == v19 && v26[1] == v21;
          if (v27 || (sub_10000A764() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v16 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
LABEL_4:

        sub_100004E10(v7);
      }

      v6 = v17;
      if (v4 == v51)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v28 = a1;
    v1 = sub_10000A724();
    a1 = v28;
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_30:
  v29 = OBJC_IVAR____TtC40GenerativePlaygroundMessagesAppExtension24GPMessagesViewController_stagedAssetIdentifiers;
  swift_beginAccess();
  v30 = *(v54 + v29);
  v33 = *(v30 + 56);
  v32 = v30 + 56;
  v31 = v33;
  v34 = 1 << *(*(v54 + v29) + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v31;
  v37 = (v34 + 63) >> 6;
  v53 = *(v54 + v29);

  v39 = 0;
  v40 = 0;
  if (v36)
  {
    goto LABEL_35;
  }

LABEL_36:
  while (1)
  {
    v43 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v43 >= v37)
    {
    }

    v36 = *(v32 + 8 * v43);
    ++v39;
    if (v36)
    {
      while (1)
      {
        v44 = (*(v53 + 48) + ((v43 << 10) | (16 * __clz(__rbit64(v36)))));
        v45 = *v44;
        v46 = v44[1];
        v36 &= v36 - 1;
        v55[0] = *v44;
        v55[1] = v46;
        __chkstk_darwin(result);
        v47[2] = v55;

        if (sub_100008B58(sub_100008C04, v47, v5))
        {

          v39 = v43;
          if (!v36)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v41 = swift_allocObject();
          ivar_lyt = v40;
          swift_unknownObjectWeakInit();
          v42 = swift_allocObject();
          v42[2] = v41;
          v42[3] = v45;
          v42[4] = v46;

          v40 = ivar_lyt;
          sub_10000560C(v45, v46, sub_100008CD4, v42);

          v39 = v43;
          if (!v36)
          {
            goto LABEL_36;
          }
        }

LABEL_35:
        v43 = v39;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100006D6C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100006E64;

  return v6(a1);
}

uint64_t sub_100006E64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_100006F5C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000031C4(&qword_100014B68, &qword_10000BB38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100007068(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000031C4(&qword_100014B78, &qword_10000BB68);
  v10 = *(sub_10000A4A4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A4A4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100007240(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000730C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100003544(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000035A8(v11);
  return v7;
}

unint64_t sub_10000730C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100007418(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000A714();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100007418(uint64_t a1, unint64_t a2)
{
  v3 = sub_100007464(a1, a2);
  sub_100007594(&off_1000107A8);
  return v3;
}

char *sub_100007464(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100007680(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000A714();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000A614();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100007680(v10, 0);
        result = sub_10000A6F4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100007594(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000076F4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100007680(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000031C4(&qword_100014B50, &unk_10000BB08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000076F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000031C4(&qword_100014B50, &unk_10000BB08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000077E8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10000A7E4();
  sub_10000A604();
  v8 = sub_10000A7F4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10000A764() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100007B98(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100007938(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000031C4(&qword_100014B48, &qword_10000BB00);
  result = sub_10000A6E4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10000A7E4();
      sub_10000A604();
      result = sub_10000A7F4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100007B98(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100007938(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100007D18();
      goto LABEL_16;
    }

    sub_100007E74(v8 + 1);
  }

  v10 = *v4;
  sub_10000A7E4();
  sub_10000A604();
  result = sub_10000A7F4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10000A764();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10000A774();
  __break(1u);
  return result;
}

void *sub_100007D18()
{
  v1 = v0;
  sub_1000031C4(&qword_100014B48, &qword_10000BB00);
  v2 = *v0;
  v3 = sub_10000A6D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100007E74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000031C4(&qword_100014B48, &qword_10000BB00);
  result = sub_10000A6E4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10000A7E4();

      sub_10000A604();
      result = sub_10000A7F4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000080AC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_10000A7E4();
  sub_10000A604();
  v6 = sub_10000A7F4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10000A764() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100007D18();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1000081E8(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1000081E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_10000A6C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_10000A7E4();

        sub_10000A604();
        v10 = sub_10000A7F4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000083AC(uint64_t a1, uint64_t a2)
{
  sub_10000A7E4();
  sub_10000A604();
  v4 = sub_10000A7F4();

  return sub_1000086CC(a1, a2, v4);
}

uint64_t sub_100008424(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000031C4(&qword_100014B60, &qword_10000BB20);
  v34 = v4;
  result = sub_10000A744();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_10000A7E4();
      sub_10000A604();
      result = sub_10000A7F4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1000086CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000A764())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100008784()
{
  v1 = v0;
  sub_1000031C4(&qword_100014B60, &qword_10000BB20);
  v2 = *v0;
  v3 = sub_10000A734();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000088F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000897C(a1, a2, a3, *v3, &qword_100014B90, qword_10000BB78, &type metadata accessor for ConversationContextItem);
  *v3 = result;
  return result;
}

void *sub_100008938(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000897C(a1, a2, a3, *v3, &qword_100014B78, &qword_10000BB68, &type metadata accessor for ImagePlaygroundConcept);
  *v3 = result;
  return result;
}

void *sub_10000897C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000031C4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100008B58(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100008C04(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000A764() & 1;
  }
}

uint64_t sub_100008C5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008C94()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_100008CE0(uint64_t a1)
{
  v2 = sub_10000A5A4();
  __chkstk_darwin(v2);
  v6 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return &_swiftEmptyArrayStorage;
  }

  v8 = 0;
  v9 = 0;
  v41 = (v3 + 8);
  result = &_swiftEmptyArrayStorage;
  v11 = a1 + 40;
  *&v5 = 136315138;
  v37 = v5;
  v42 = v7;
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1 + 40;
  do
  {
    v36 = result;
    for (i = (v11 + 16 * v8); ; i += 2)
    {
      if (v8 >= v7)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_24;
      }

      v43 = v8 + 1;
      v13 = *(i - 1);
      v14 = *i;
      sub_10000A218(0, &qword_100014B98, NSKeyedUnarchiver_ptr);
      sub_10000A218(0, &qword_100014BA0, AEAssetPackage_ptr);
      sub_10000A260(v13, v14);
      v15 = sub_10000A6B4();
      if (v9)
      {
        sub_10000A4D4();
        swift_errorRetain();
        v16 = sub_10000A594();
        v17 = sub_10000A694();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v44 = v39;
          *v18 = v37;
          swift_getErrorValue();
          v19 = sub_10000A794();
          v21 = sub_100007240(v19, v20, &v44);
          v40 = v9;
          v22 = v2;
          v23 = v21;

          *(v18 + 4) = v23;
          v2 = v22;
          _os_log_impl(&_mh_execute_header, v16, v17, "Failed to extract staged asset identifier from draft archive with error: %s", v18, 0xCu);
          sub_1000035A8(v39);

          v6 = v38;

          (*v41)(v6, v22);
        }

        else
        {

          (*v41)(v6, v2);
        }

        result = sub_100009B14(v13, v14);
        v9 = 0;
        v7 = v42;
        goto LABEL_6;
      }

      if (v15)
      {
        break;
      }

      result = sub_100009B14(v13, v14);
LABEL_6:
      ++v8;
      if (v43 == v7)
      {
        return v36;
      }
    }

    v40 = 0;
    v24 = v6;
    v25 = v15;
    v26 = [v15 identifier];
    v27 = sub_10000A5E4();
    v29 = v28;

    sub_100009B14(v13, v14);
    v30 = v36;
    v31 = v2;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v30;
    }

    else
    {
      result = sub_100006F5C(0, *(v30 + 2) + 1, 1, v30);
    }

    v33 = *(result + 2);
    v32 = *(result + 3);
    v6 = v24;
    v7 = v42;
    if (v33 >= v32 >> 1)
    {
      result = sub_100006F5C((v32 > 1), v33 + 1, 1, result);
    }

    v8 = v43;
    v9 = v40;
    *(result + 2) = v33 + 1;
    v34 = &result[16 * v33];
    *(v34 + 4) = v27;
    *(v34 + 5) = v29;
    v2 = v31;
    v11 = v35;
  }

  while (v8 != v7);
  return result;
}

unint64_t sub_1000090CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000031C4(&qword_100014B60, &qword_10000BB20);
    v3 = sub_10000A754();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1000083AC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000091D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_1000083AC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100008424(v16, a4 & 1);
      v11 = sub_1000083AC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_10000A784();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100008784();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_10000934C(void *a1)
{
  v2 = sub_10000A3C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000090CC(&_swiftEmptyArrayStorage);
  v7 = [a1 pixelWidth];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v6;
  sub_1000091D0(v7, 0xD00000000000001FLL, 0x800000010000BE40, isUniquelyReferenced_nonNull_native, &v26);
  v9 = v26;
  v10 = [a1 pixelHeight];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v9;
  sub_1000091D0(v10, 0xD000000000000020, 0x800000010000BE60, v11, &v26);
  v12 = v26;
  v13 = [a1 creationDate];
  sub_10000A3B4();

  sub_10000A3A4();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v16 = [objc_allocWithZone(NSDate) initWithTimeIntervalSince1970:v15];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v12;
  sub_1000091D0(v16, 0xD000000000000021, 0x800000010000BE90, v17, &v26);
  v18 = v26;
  v19 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:1];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v18;
  sub_1000091D0(v19, 0xD00000000000001ELL, 0x800000010000BEC0, v20, &v26);
  v21 = v26;
  v22 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v21;
  sub_1000091D0(v22, 0xD000000000000022, 0x800000010000BEE0, v23, &v26);
  return v26;
}

void *sub_100009608(void *a1)
{
  v35 = sub_10000A504();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A374();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 identifier];
  if (!v9)
  {
    sub_10000A5E4();
    v9 = sub_10000A5C4();
  }

  v10 = [objc_allocWithZone(AEMutableAssetPackage) initWithAssetIdentifier:v9];

  v11 = [a1 imageURLWrapper];
  v12 = [v11 url];

  sub_10000A364();
  sub_10000A354(v13);
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  sub_10000A4F4();
  sub_10000A4E4();
  (*(v2 + 8))(v4, v35);
  v16 = sub_10000A5C4();

  [v10 storeURL:v15 forType:v16];

  v17 = [a1 previewImage];
  [v10 setSidecarObject:v17 forKey:kUTTypeAssetPreviewImage];

  v18 = [a1 recipeData];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 underlyingData];
    v21 = sub_10000A394();
    v23 = v22;

    v24 = objc_allocWithZone(NSData);
    isa = sub_10000A384().super.isa;
    v26 = [v24 initWithData:isa];

    sub_100009B14(v21, v23);
    v27 = sub_10000A5C4();
    [v10 setSidecarObject:v26 forKey:v27];
  }

  sub_10000934C(a1);
  sub_1000031C4(&qword_100014B58, &qword_10000BB18);
  v28 = sub_10000A5B4().super.isa;

  [v10 addSidecarEntriesFromDictionary:v28];

  v29 = objc_opt_self();
  v36 = 0;
  v30 = [v29 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v36];
  v31 = v36;
  if (v30)
  {
    v32 = sub_10000A394();
  }

  else
  {
    v32 = v31;
    sub_10000A344();

    swift_willThrow();
  }

  return v32;
}

uint64_t sub_100009A94(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100009ACC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009B14(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100009BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009BB8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A2C4;

  return sub_1000057C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100009C94(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000031C4(&qword_1000149F0, &qword_10000BAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009D14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009D4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A2C4;

  return sub_100006D6C(a1, v4);
}

uint64_t sub_100009E04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000033EC;

  return sub_100006D6C(a1, v4);
}

uint64_t *sub_100009EC0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100009F28()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009FA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100009FE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A2C4;

  return sub_100005AAC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000A0B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A0F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000033EC;

  return sub_100003E80(a1, v4, v5, v7, v6);
}

uint64_t sub_10000A1B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000031C4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A218(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000A260(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}