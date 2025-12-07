uint64_t sub_1000022DC(uint64_t a1, id *a2)
{
  v3 = sub_10007B18C();
  *a2 = 0;
  return v3 & 1;
}

void sub_10000235C(uint64_t *a1@<X8>)
{
  sub_10007B19C();
  v3 = v2;
  v4 = sub_10007B15C();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a1 = v4;
}

uint64_t sub_1000023A0()
{
  sub_10007B19C();
  v1 = v0;
  v2 = sub_10007B25C();
  v1, v3, v4, v5, v6, v7, v8, v9;
  return v2;
}

void sub_1000023DC(uint64_t a1)
{
  sub_10007B19C();
  v2 = v1;
  sub_10007B1EC();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_100002430(uint64_t a1)
{
  sub_10007B19C();
  v2 = v1;
  sub_10007B74C();
  sub_10007B1EC();
  v3 = sub_10007B76C();
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

uint64_t sub_1000024B0(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E048, type metadata accessor for BRError, &unk_10007CC44);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000251C(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E048, type metadata accessor for BRError, &unk_10007CC44);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000258C(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E080, type metadata accessor for BRError, &unk_10007CCC0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000025F8(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E088, type metadata accessor for CKError, &unk_10007CB28);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002664(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E088, type metadata accessor for CKError, &unk_10007CB28);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000026D0(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError, &unk_10007CDC0);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_10000273C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000275C(uint64_t a1)
{
  sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError, &unk_10007CDC0);

  return sub_10007AB5C();
}

uint64_t sub_1000027C8(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError, &unk_10007CDC0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002834(void *a1, uint64_t a2)
{
  v4 = sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError, &unk_10007CDC0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000028C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError, &unk_10007CDC0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100002950(uint64_t a1)
{
  sub_100002F0C(&qword_10009E080, type metadata accessor for BRError, &unk_10007CCC0);

  return sub_10007AB5C();
}

uint64_t sub_1000029BC(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E080, type metadata accessor for BRError, &unk_10007CCC0);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002A28(void *a1, uint64_t a2)
{
  v4 = sub_100002F0C(&qword_10009E080, type metadata accessor for BRError, &unk_10007CCC0);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F0C(&qword_10009E080, type metadata accessor for BRError, &unk_10007CCC0);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007B74C();
  sub_10007B13C();
  return sub_10007B76C();
}

uint64_t sub_100002BBC(void *a1, uint64_t *a2)
{
  v2 = sub_10007B19C();
  v4 = v3;
  v5 = sub_10007B19C();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_10007B6BC();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_100002C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError, &unk_10007CDC0);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100002CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002F0C(&qword_10009E080, type metadata accessor for BRError, &unk_10007CCC0);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void sub_100002D4C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_10007B15C();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_100002D94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007B19C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002DC0(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009DF98, type metadata accessor for URLResourceKey, &unk_10007C8CC);
  v3 = sub_100002F0C(&qword_10009DFA0, type metadata accessor for URLResourceKey, &unk_10007C86C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100002FD8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002FE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003008(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_1000032E4()
{
  result = qword_10009E070;
  if (!qword_10009E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E070);
  }

  return result;
}

void sub_1000034FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100003650(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_beginAccess();
    *(a4 + 16) = a2;
    swift_errorRetain();
  }

  return result;
}

void sub_1000036B8(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v13 = sub_10007AB7C();
    a4(0, v13);
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_errorRetain();
      v11 = sub_10007AB7C();
      a4(0, v11);
    }

    else
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_errorRetain();
        v12 = sub_10007AB7C();
        a4(0, v12);
      }

      else
      {
        a4(a7, 0);
      }
    }
  }
}

void sub_1000037F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_1000057A0(&qword_10009E280, &qword_10007CFC8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  (*(v12 + 16))(&v26 - v13, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  sub_100005C8C(0, &qword_10009E288, CKModifyRecordsOperation_ptr);
  sub_1000057A0(&qword_10009E290, &qword_10007CFD0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10007CF10;
  *(v17 + 32) = a3;
  v18 = a3;
  v27.value._rawValue = v17;
  v27.is_nil = 0;
  v19.super.super.super.super.isa = sub_10007B48C(v27, v28).super.super.super.super.isa;
  [(objc_class *)v19.super.super.super.super.isa setQualityOfService:25];
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;

  sub_10007B49C();

  sub_10007B4AC();
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = sub_100005970;
  v22[4] = v16;
  v22[5] = v21;
  v22[6] = v18;
  v23 = v18;

  sub_10007B47C();
  v24 = &selRef_sharedCloudDatabase;
  if ((a4 & 0x10000000000) != 0)
  {
    v24 = &selRef_privateCloudDatabase;
  }

  v25 = [a7 *v24];
  [v25 addOperation:v19.super.super.super.super.isa];
}

uint64_t sub_100003AF4(void *a1, void *a2)
{
  if (!a1 || a2)
  {
    sub_100005AB8();
    swift_allocError();
    *v5 = 0xD000000000000029;
    *(v5 + 8) = 0x80000001000810B0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = a2;
    *(v5 + 40) = 4;
    v6 = a2;
    sub_1000057A0(&qword_10009E280, &qword_10007CFC8);
    return sub_10007B2FC();
  }

  else
  {
    v3 = a1;
    sub_1000057A0(&qword_10009E280, &qword_10007CFC8);
    return sub_10007B30C();
  }
}

void sub_100003BCC(int a1, id a2, char a3, void (*a4)(void))
{
  if (a3)
  {
    v7 = sub_10007AB7C();
    (a4)(0, 0, 0);
  }

  else
  {
    v6 = [a2 share];
    v7 = [a2 containerID];
    a4(v6);
  }
}

uint64_t sub_100003C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000057A0(&qword_10009E2A0, &qword_10007CFD8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_100004EC8(a3, a4, sub_100005BA4, v12);
}

uint64_t sub_100003DEC(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 && a2 && a3 && !a4)
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    sub_1000057A0(&qword_10009E2A0, &qword_10007CFD8);
    return sub_10007B30C();
  }

  else
  {
    sub_100005AB8();
    swift_allocError();
    *v11 = 0xD00000000000002DLL;
    *(v11 + 8) = 0x8000000100081100;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = a4;
    *(v11 + 40) = 5;
    v12 = a4;
    sub_1000057A0(&qword_10009E2A0, &qword_10007CFD8);
    return sub_10007B2FC();
  }
}

uint64_t sub_100003EE0(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_10007AE2C();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = sub_1000057A0(&qword_10009E270, &qword_10007CFB0);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100003FE8, 0, 0);
}

uint64_t sub_100003FE8()
{
  v1 = v0[25];
  v2 = v0[19];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100004104;
  v3 = swift_continuation_init();
  v0[17] = sub_1000057A0(&qword_10009E278, &qword_10007CFB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100004B20;
  v0[13] = &unk_100095D38;
  v0[14] = v3;
  [v2 fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100004104()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_100004400;
  }

  else
  {
    v2 = sub_100004214;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004214()
{
  v26 = v0;
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[18];
  sub_1000058A8(v0[25], v1);
  v4 = (v1 + *(v2 + 48));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_10007AAEC();
  (*(*(v7 - 8) + 32))(v3, v1, v7);
  sub_10007AE0C();

  v8 = sub_10007AE1C();
  v9 = sub_10007B41C();
  v6, v10, v11, v12, v13, v14, v15, v16;
  v17 = os_log_type_enabled(v8, v9);
  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[20];
  if (v17)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100037C08(v5, v6, &v25);
    _os_log_impl(&_mh_execute_header, v8, v9, "Username: %s", v21, 0xCu);
    sub_10000585C(v22);
  }

  (*(v19 + 8))(v18, v20);

  v23 = v0[1];

  return v23(v5, v6);
}

uint64_t sub_100004400()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004494(uint64_t a1)
{
  v1[18] = a1;
  v1[19] = sub_1000057A0(&qword_10009E270, &qword_10007CFB0);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_100004540, 0, 0);
}

uint64_t sub_100004540()
{
  v1 = v0[21];
  v2 = v0[18];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_10000465C;
  v3 = swift_continuation_init();
  v0[17] = sub_1000057A0(&qword_10009E278, &qword_10007CFB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100004B20;
  v0[13] = &unk_100095D10;
  v0[14] = v3;
  [v2 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000465C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_100004840;
  }

  else
  {
    v2 = sub_10000476C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000476C()
{
  v1 = v0[20];
  v2 = v0[19];
  sub_1000058A8(v0[21], v1);
  v3 = (v1 + *(v2 + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_10007AAEC();
  (*(*(v6 - 8) + 8))(v1, v6);

  v7 = v0[1];

  return v7(v4, v5);
}

uint64_t sub_100004840()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000048C0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, int64_t a7, int64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[7], v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants18CloudKitOperations__ckSourceAppBundleID;
  v24 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  (*(*(v24 - 8) + 8))(v8 + v23, v24);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudKitOperations(uint64_t a1)
{
  result = qword_10009E160;
  if (!qword_10009E160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000049D4(uint64_t a1)
{
  sub_100004A74(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100004A74(uint64_t a1)
{
  if (!qword_10009E170)
  {
    sub_100004AD8(&qword_10009ED20, &qword_10007CF90);
    v1 = sub_10007AF5C();
    if (!v2)
    {
      atomic_store(v1, &qword_10009E170);
    }
  }
}

uint64_t sub_100004AD8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004B20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1000057A0(&qword_10009E270, &qword_10007CFB0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *sub_100005918((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v10 = swift_allocError();
    *v11 = a4;
    v12 = a4;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_10007AADC();
    v13 = &v8[*(v6 + 48)];
    *v13 = sub_10007B19C();
    v13[1] = v14;
    sub_1000058A8(v8, *(*(v9 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

id sub_100004C74(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_25:
    v2 = sub_10007B64C();
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_10007B5DC();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = [(objc_class *)v4 identifier];
    v8 = sub_10007B19C();
    v10 = v9;

    v11 = sub_10007B19C();
    v19 = v12;
    if (v8 == v11 && v10 == v12)
    {
      break;
    }

    v21 = sub_10007B6BC();
    v10, v22, v23, v24, v25, v26, v27, v28;
    v19, v29, v30, v31, v32, v33, v34, v35;
    if (v21)
    {
      goto LABEL_17;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

  v10, v12, v13, v14, v15, v16, v17, v18;
  v19, v36, v37, v38, v39, v40, v41, v42;
LABEL_17:
  v43 = [(objc_class *)v5 options];
  sub_100005C8C(0, &qword_10009E2B0, _SWCollaborationOption_ptr);
  v44 = sub_10007B2AC();

  if (!(v44 >> 62))
  {
    result = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_19;
    }

LABEL_28:
    v44, v45, v46, v47, v48, v49, v50, v51;
    v62 = 0;
    goto LABEL_29;
  }

  result = sub_10007B64C();
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_19:
  if ((v44 & 0xC000000000000001) != 0)
  {
    v53 = sub_10007B5DC();
    goto LABEL_22;
  }

  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v53 = *(v44 + 32);
LABEL_22:
    v61 = v53;
    v44, v54, v55, v56, v57, v58, v59, v60;
    v62 = [(objc_class *)v61 isSelected];

    v5 = v61;
LABEL_29:

    return v62;
  }

  __break(1u);
  return result;
}

void sub_100004EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:a2];
  }

  else
  {
    v8 = objc_allocWithZone(CKContainerID);
    v9 = sub_10007B15C();
    v10 = [v8 initWithContainerIdentifier:v9 environment:1];

    v7 = [objc_allocWithZone(CKContainer) initWithContainerID:v10];
  }

  sub_1000057A0(&qword_10009E2A8, qword_10007CFE0);
  v11 = sub_10007AC4C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10007CF20;
  (*(v12 + 16))(v14 + v13, a1, v11);
  v15 = objc_allocWithZone(CKFetchShareMetadataOperation);
  v26 = v7;
  isa = sub_10007B29C().super.isa;
  v14, v17, v18, v19, v20, v21, v22, v23;
  v24 = [v15 initWithShareURLs:isa];

  [v24 setShouldFetchRootRecord:0];
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;

  sub_10007B4DC();
  [v26 addOperation:v24];
}

uint64_t sub_100005138(uint64_t a1)
{
  v1[6] = a1;
  v3 = sub_10007AAEC();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[9] = v4;
  v1[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_10000524C;

  return sub_100003EE0(v4, a1);
}

uint64_t sub_10000524C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[12] = a2;
  v4[13] = v2;

  if (v2)
  {
    v5 = sub_1000056B0;
  }

  else
  {
    v5 = sub_100005368;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100005368()
{
  (*(v0[8] + 32))(v0[10], v0[9], v0[7]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_100005414;
  v2 = v0[6];

  return sub_100004494(v2);
}

uint64_t sub_100005414(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    *(v6 + 96), v7, v8, v9, v10, v11, v12, v13;
    v14 = sub_10000571C;
  }

  else
  {
    v15 = *(v6 + 24);
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    *(v6 + 144) = v15;
    v14 = sub_100005558;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_100005558()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v27._object = 0x8000000100081050;
  v27._countAndFlagsBits = 0xD000000000000017;
  v8 = sub_10007B24C(v27);
  v16 = !v8;
  if (v8)
  {
    v17 = v3;
  }

  else
  {
    v17 = v4;
  }

  if (!v16)
  {
    v1 = v2;
    v3 = v4;
  }

  v17, v9, v10, v11, v12, v13, v14, v15;
  v18 = objc_opt_self();
  v19 = sub_10007AACC();
  v20 = [v18 localizedStringFromPersonNameComponents:v19 style:2 options:0];

  v21 = sub_10007B19C();
  v23 = v22;

  (*(v7 + 8))(v5, v6);

  v24 = v0[1];

  return v24(v21, v23, v1, v3);
}

uint64_t sub_1000056B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000571C()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000057A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000057F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000585C(void *a1)
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

uint64_t sub_1000058A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000057A0(&qword_10009E270, &qword_10007CFB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100005918(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005970(void *a1, void *a2)
{
  sub_1000057A0(&qword_10009E280, &qword_10007CFC8);

  return sub_100003AF4(a1, a2);
}

uint64_t sub_1000059FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005A54()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100005AB8()
{
  result = qword_10009E298;
  if (!qword_10009E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E298);
  }

  return result;
}

uint64_t sub_100005B20(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1000057A0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100005BA4(void *a1, void *a2, void *a3, void *a4)
{
  sub_1000057A0(&qword_10009E2A0, &qword_10007CFD8);

  return sub_100003DEC(a1, a2, a3, a4);
}

uint64_t sub_100005C48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005C8C(uint64_t a1, unint64_t *a2, void *a3)
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

Swift::Int sub_100005CF8()
{
  v1 = *v0;
  sub_10007B74C();
  sub_10007B75C(v1);
  return sub_10007B76C();
}

Swift::Int sub_100005D6C(uint64_t a1)
{
  v2 = *v1;
  sub_10007B74C();
  sub_10007B75C(v2);
  return sub_10007B76C();
}

uint64_t sub_100005DB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_100005E24(int a1)
{
  v2 = v1;
  v20 = a1;
  v3 = sub_1000057A0(&qword_10009F330, &qword_10007D0D8);
  v18 = *(v3 - 8);
  v19 = v3;
  __chkstk_darwin(v3);
  v17 = v15 - v4;
  v16 = sub_10007B43C();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007B42C();
  __chkstk_darwin(v8);
  v9 = sub_10007B0FC();
  __chkstk_darwin(v9 - 8);
  sub_10007B00C();
  swift_allocObject();
  *(v1 + 16) = sub_10007AFFC();
  v10 = sub_100006BF8();
  v15[0] = "onitor";
  v15[1] = v10;
  sub_10007B0EC();
  v22 = _swiftEmptyArrayStorage;
  sub_100006DD4(&qword_10009E398, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000057A0(&qword_10009E3A0, &qword_10007D0E0);
  sub_100006E1C(&qword_10009E3A8, &qword_10009E3A0, &qword_10007D0E0);
  sub_10007B58C();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v1 + 24) = sub_10007B46C();
  v11 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants14NetworkMonitor__status;
  v21 = 0;
  v12 = v17;
  sub_10007AF0C();
  (*(v18 + 32))(v2 + v11, v12, v19);
  v13 = swift_allocObject();
  swift_weakInit();

  sub_100006C84(sub_100006C7C, v13);
  sub_10007AFDC();

  if (v20)
  {
    sub_10007AFEC();
  }

  return v2;
}

uint64_t sub_1000061E8(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v2 = sub_10007B0DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B0FC();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007B04C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100006BF8();
    v22 = sub_10007B44C();
    v13 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v8);
    v14 = *(v9 + 80);
    v23 = v5;
    v15 = v3;
    v16 = (v14 + 24) & ~v14;
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    (*(v9 + 32))(v17 + v16, v11, v8);
    aBlock[4] = sub_100006D58;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006784;
    aBlock[3] = &unk_100095F08;
    v18 = _Block_copy(aBlock);

    sub_10007B0EC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100006DD4(&qword_10009E3B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000057A0(&qword_10009E3B8, &qword_10007D0E8);
    sub_100006E1C(qword_10009E3C0, &qword_10009E3B8, &qword_10007D0E8);
    v19 = v25;
    sub_10007B58C();
    v20 = v22;
    sub_10007B45C();
    _Block_release(v18);

    (*(v15 + 8))(v19, v2);
    return (*(v24 + 8))(v7, v23);
  }

  return result;
}

uint64_t sub_1000065D4(uint64_t a1)
{
  v1 = sub_10007B02C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10007B03C();
    (*(v2 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v1);
    v9 = sub_10007B01C();
    v10 = *(v2 + 8);
    v10(v5, v1);
    v10(v7, v1);
    swift_getKeyPath();
    swift_getKeyPath();
    v11[7] = (v9 & 1) == 0;
    return sub_10007AF4C();
  }

  return result;
}

uint64_t sub_100006784(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000067C8()
{

  v1 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants14NetworkMonitor__status;
  v2 = sub_1000057A0(&qword_10009F330, &qword_10007D0D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor(uint64_t a1)
{
  result = qword_10009E2F0;
  if (!qword_10009E2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000068D4(uint64_t a1)
{
  sub_100006980();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100006980()
{
  if (!qword_10009E300)
  {
    v0 = sub_10007AF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_10009E300);
    }
  }
}

uint64_t getEnumTagSinglePayload for NetworkStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100006B48()
{
  result = qword_10009F340;
  if (!qword_10009F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F340);
  }

  return result;
}

uint64_t sub_100006BA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007AEEC();
  *a1 = result;
  return result;
}

unint64_t sub_100006BF8()
{
  result = qword_10009E390;
  if (!qword_10009E390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009E390);
  }

  return result;
}

uint64_t sub_100006C44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006C84(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006C94()
{
  v1 = sub_10007B04C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100006D58()
{
  sub_10007B04C();
  v1 = *(v0 + 16);

  return sub_1000065D4(v1);
}

uint64_t sub_100006DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006E1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004AD8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006E70@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v4;
  return result;
}

uint64_t sub_100006EF4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_100006F70(uint64_t a1)
{
  result = sub_10007AF5C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000700C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();
}

uint64_t sub_1000070C8(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2)
{
  sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
  sub_1000085A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v13 = a2 == 0;
  if (v22)
  {
    if (a2)
    {
      if (v21 == a1 && v22 == a2)
      {
        v13 = 1;
      }

      else
      {
        v13 = sub_10007B6BC();
      }
    }

    else
    {
      v13 = 0;
    }

    v22, v6, v7, v8, v9, v10, v11, v12;
  }

  __chkstk_darwin(v5);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();

  result = sub_10007AF4C();
  v16 = *v2;
  if ((v13 & 1) != 0 || (v17 = v2 + *(v16 + 104), (v18 = *v17) == 0))
  {
    if (!*(v2 + *(v16 + 104)))
    {
      result = sub_10007B63C("Fatal error", 11, 2, 0xD000000000000024, 0x8000000100081240, "com_apple_CloudSharingUI_AddParticipants/ModelPublished.swift", 61, 2, 23, 0);
      __break(1u);
    }
  }

  else
  {
    v19 = *(v17 + 1);

    v18(v20);
    return sub_1000087A4(v18, v19);
  }

  return result;
}

uint64_t sub_100007330(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_10007AC4C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000057A0(&qword_10009E450, &qword_10007D2C8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v11 = __chkstk_darwin(v10);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v43 = &v39 - v14;
  v15 = __chkstk_darwin(v13);
  v40 = &v39 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v39 - v18;
  v47 = v17;
  v20 = sub_1000086C8();
  v48 = v20;
  swift_getKeyPath();
  v45 = v10;
  v46 = v20;
  swift_getKeyPath();
  v41 = v2;
  sub_10007AF3C();

  v21 = *(v7 + 56);
  sub_1000087B4(v19, v9);
  sub_1000087B4(v44, &v9[v21]);
  v22 = v4;
  v23 = *(v4 + 48);
  if (v23(v9, 1, v3) != 1)
  {
    v25 = v40;
    sub_1000087B4(v9, v40);
    if (v23(&v9[v21], 1, v3) != 1)
    {
      v26 = v39;
      (*(v22 + 32))(v39, &v9[v21], v3);
      sub_10000874C();
      v24 = sub_10007B14C();
      v27 = *(v22 + 8);
      v27(v26, v3);
      sub_100008824(v19, &unk_10009ED10, &qword_10007D310);
      v27(v25, v3);
      sub_100008824(v9, &unk_10009ED10, &qword_10007D310);
      goto LABEL_8;
    }

    sub_100008824(v19, &unk_10009ED10, &qword_10007D310);
    (*(v22 + 8))(v25, v3);
    goto LABEL_6;
  }

  sub_100008824(v19, &unk_10009ED10, &qword_10007D310);
  if (v23(&v9[v21], 1, v3) != 1)
  {
LABEL_6:
    sub_100008824(v9, &qword_10009E450, &qword_10007D2C8);
    v24 = 0;
    goto LABEL_8;
  }

  sub_100008824(v9, &unk_10009ED10, &qword_10007D310);
  v24 = 1;
LABEL_8:
  v28 = v41;
  v30 = v43;
  v29 = v44;
  v31 = sub_1000087B4(v44, v43);
  __chkstk_darwin(v31);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  sub_1000087B4(v30, v42);

  sub_10007AF4C();
  sub_100008824(v30, &unk_10009ED10, &qword_10007D310);
  v33 = *v28;
  if ((v24 & 1) == 0)
  {
    v34 = v28 + *(v33 + 104);
    v35 = *v34;
    if (*v34)
    {
      v36 = *(v34 + 1);

      v35(v37);
      sub_1000087A4(v35, v36);
      return sub_100008824(v29, &unk_10009ED10, &qword_10007D310);
    }
  }

  if (*(v28 + *(v33 + 104)))
  {
    return sub_100008824(v29, &unk_10009ED10, &qword_10007D310);
  }

  result = sub_10007B63C("Fatal error", 11, 2, 0xD000000000000024, 0x8000000100081240, "com_apple_CloudSharingUI_AddParticipants/ModelPublished.swift", 61, 2, 23, 0);
  __break(1u);
  return result;
}

uint64_t sub_1000078D0()
{
  v1 = *(*v0 + 96);
  v2 = sub_10007AF5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000087A4(*(v0 + *(*v0 + 104)), *(v0 + *(*v0 + 104) + 8));
  return v0;
}

uint64_t sub_100007974()
{
  sub_1000078D0();

  return swift_deallocClassInstance();
}

uint64_t sub_1000079E4()
{
  v0 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v1 = __chkstk_darwin(v0);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_10007AC4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderURL;
  v33 = v0;
  v9 = sub_1000086C8();
  v34 = v9;
  swift_getKeyPath();
  v31 = v0;
  v32 = v9;
  swift_getKeyPath();

  sub_10007AF3C();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100008824(v4, &unk_10009ED10, &qword_10007D310);

    sub_1000070C8(0, 0);

    __chkstk_darwin(v10);
    v11 = sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
    *(&v29 - 2) = v11;
    v12 = sub_1000085A4();
    *(&v29 - 1) = v12;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v29 - 2) = v11;
    *(&v29 - 1) = v12;
    swift_getKeyPath();

    sub_10007AF3C();

    v21 = v36;
    if (v36)
    {
      v36, v14, v15, v16, v17, v18, v19, v20;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v35) = v21 == 0;

    sub_10007AF4C();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v22 = sub_10007ABEC();
    v24 = v23;

    sub_1000070C8(v22, v24);

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v35) = 0;

    sub_10007AF4C();
    (*(v6 + 8))(v8, v5);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = swift_unknownObjectRelease();
    __chkstk_darwin(v26);
    *(&v29 - 2) = v0;
    *(&v29 - 1) = v9;
    v27 = swift_getKeyPath();
    __chkstk_darwin(v27);
    *(&v29 - 2) = v0;
    *(&v29 - 1) = v9;
    swift_getKeyPath();

    v28 = v30;
    sub_10007AF3C();

    return sub_100008824(v28, &unk_10009ED10, &qword_10007D310);
  }

  return result;
}

uint64_t sub_100007ED0()
{
  v0 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v0 - 8);
  v2 = v25 - v1;
  v3 = sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
  v25[2] = v3;
  v4 = sub_1000085A4();
  v25[3] = v4;
  swift_getKeyPath();
  v25[0] = v3;
  v25[1] = v4;
  swift_getKeyPath();

  sub_10007AF3C();

  if (v27)
  {
    v27, v5, v6, v7, v8, v9, v10, v11;
    __chkstk_darwin(v12);
    v25[-2] = v3;
    v25[-1] = v4;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v25[-2] = v3;
    v25[-1] = v4;
    swift_getKeyPath();

    sub_10007AF3C();

    if (v27)
    {
      v27, v14, v15, v16, v17, v18, v19, v20;
      v21 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v22 = sub_10007AC4C();
      v21 = (*(*(v22 - 8) + 48))(v2, 1, v22) != 1;
      sub_100008824(v2, &unk_10009ED10, &qword_10007D310);
    }
  }

  else
  {
    v21 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v26) = v21;

  sub_10007AF4C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v23 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v26) = (v23 & 1) == 0;

  return sub_10007AF4C();
}

uint64_t sub_100008270@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a4 = v6;
  return result;
}

uint64_t sub_100008300(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_100008370()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();
}

uint64_t sub_10000840C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *(v4 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = *(v6 + 16);
  v12(v14 - v10);
  v14[2] = v4;
  v14[3] = v5;
  swift_getKeyPath();
  v14[0] = v4;
  v14[1] = v5;
  swift_getKeyPath();
  (v12)(v9, v11, v4);

  sub_10007AF4C();
  return (*(v6 + 8))(v11, v4);
}

__n128 sub_100008598(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1000085A4()
{
  result = qword_10009F160;
  if (!qword_10009F160)
  {
    sub_100004AD8(&qword_10009ED20, &qword_10007CF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F160);
  }

  return result;
}

unint64_t sub_1000086C8()
{
  result = qword_10009E448;
  if (!qword_10009E448)
  {
    sub_100004AD8(&unk_10009ED10, &qword_10007D310);
    sub_10000874C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E448);
  }

  return result;
}

unint64_t sub_10000874C()
{
  result = qword_10009F150;
  if (!qword_10009F150)
  {
    sub_10007AC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F150);
  }

  return result;
}

uint64_t sub_1000087A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000087B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008824(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000057A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000088CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_100008940()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();
}

uint64_t sub_1000089F4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v3;
}

void sub_100008A60(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10007AE2C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v88 - v11;
  if (!a1)
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v91 = a1;
  v13 = a1;

  sub_10007AF4C();
  v14 = (v3 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_accountID);
  if (*(v3 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_accountID + 8))
  {
    goto LABEL_12;
  }

  v88 = v6;
  v89 = v7;
  v90 = v13;
  v15 = [v90 containerIdentifier];
  v16 = sub_10007B19C();
  v18 = v17;

  sub_10007B19C();
  v20 = v19;
  v21 = sub_10007B1BC();
  v23 = v22;
  v20, v22, v24, v25, v26, v27, v28, v29;
  if (v16 == v21 && v18 == v23)
  {
    v18, v30, v31, v32, v33, v34, v35, v36;
    v23, v37, v38, v39, v40, v41, v42, v43;
    goto LABEL_7;
  }

  v44 = sub_10007B6BC();
  v18, v45, v46, v47, v48, v49, v50, v51;
  v23, v52, v53, v54, v55, v56, v57, v58;
  if (v44)
  {
LABEL_7:
    if (swift_weakLoadStrong())
    {
      v59 = sub_100008E74();
      v61 = v60;

      v69 = v89;
      if (v61)
      {
        v70 = v14[1];
        *v14 = v59;
        v14[1] = v61;
        v70, v62, v63, v64, v65, v66, v67, v68;
        sub_10007AE0C();
        v71 = sub_10007AE1C();
        v72 = sub_10007B41C();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&_mh_execute_header, v71, v72, "found accountID for URL", v73, 2u);
        }

        (*(v69 + 8))(v12, v88);
LABEL_12:
        if (!a2)
        {
          return;
        }

        goto LABEL_13;
      }

      if (a2)
      {

LABEL_13:
        swift_getKeyPath();
        swift_getKeyPath();
        v91 = a2;
        v74 = a2;

        sub_10007AF4C();
        return;
      }

      if (swift_weakLoadStrong())
      {

        v75 = sub_10001DF48();
        v83 = v88;
        if (v76)
        {
          v84 = v14[1];
          *v14 = v75;
          v14[1] = v76;
          v84, v76, v77, v78, v79, v80, v81, v82;
          sub_10007AE0C();
          v85 = sub_10007AE1C();
          v86 = sub_10007B41C();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&_mh_execute_header, v85, v86, "found accountID for an EDS account", v87, 2u);
          }

          (*(v69 + 8))(v10, v83);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a2)
  {
    goto LABEL_13;
  }
}

uint64_t sub_100008E74()
{
  v28 = sub_10007AE2C();
  v0 = *(v28 - 8);
  v1 = __chkstk_darwin(v28);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v27 - v4;
  v6 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10007AC4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100008824(v8, &unk_10009ED10, &qword_10007D310);
    sub_10007AE0C();
    v13 = sub_10007AE1C();
    v14 = sub_10007B3FC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "can't get the user iCloud account ID without a document/folder sharing URL--may get here from SPI with no fileURL, will try userICloudEDSAccountID then fall back on signed-in account w. accountID == nil", v15, 2u);
    }

    (*(v0 + 8))(v3, v28);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_10007ABFC(v16);
    v18 = v17;
    v19 = [objc_opt_self() accountDescriptorForURL:v17 mustBeLoggedIn:1];

    if (v19)
    {
      v20 = [v19 accountIdentifier];
      if (v20)
      {
        v21 = v20;
        v22 = sub_10007B19C();

        (*(v10 + 8))(v12, v9);
        return v22;
      }
    }

    sub_10007AE0C();
    v24 = sub_10007AE1C();
    v25 = sub_10007B3FC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "accountID must be non-nil for document/folder sharing", v26, 2u);
    }

    (*(v0 + 8))(v5, v28);
    (*(v10 + 8))(v12, v9);
  }

  return 0;
}

void sub_100009298()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_10007AE2C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v61 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v11 = v69;
  if (v69)
  {
    v12 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:v69];
    swift_getKeyPath();
    swift_getKeyPath();
    v69 = v12;

    v13 = v12;
    sub_10007AF4C();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    v14 = v69;
    if (v69)
    {
      v15 = *(v3 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_accountID + 8);
      if (v15)
      {
        v67 = v5;
        v16 = objc_allocWithZone(CKContainerOptions);

        v17 = [v16 init];
        v68 = v14;
        v18 = v17;
        v19 = objc_allocWithZone(CKAccountOverrideInfo);
        v20 = sub_10007B15C();
        v15, v21, v22, v23, v24, v25, v26, v27;
        v28 = v19;
        v29 = v18;
        v30 = [v28 initWithAccountID:v20];

        [v29 setAccountOverrideInfo:v30];
        v31 = objc_allocWithZone(CKContainer);
        v32 = [v31 initWithContainerID:v68 options:v29];
        swift_getKeyPath();
        swift_getKeyPath();
        v69 = v32;

        sub_10007AF4C();
        sub_10007AE0C();

        v33 = sub_10007AE1C();
        v34 = sub_10007B41C();

        if (os_log_type_enabled(v33, v34))
        {
          v62 = v30;
          v63 = v2;
          v64 = v34;
          v65 = v33;
          v66 = v29;
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v71 = v36;
          v37 = v35;
          *v35 = 136315138;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10007AF3C();

          v38 = v69;
          v5 = v67;
          if (v69 && (v39 = [v69 options], v38, v38 = objc_msgSend(v39, "accountOverrideInfo"), v39, v38))
          {
            v40 = [v38 accountID];

            if (v40)
            {
              v38 = sub_10007B19C();
              v42 = v41;
            }

            else
            {
              v38 = 0;
              v42 = 0;
            }

            v5 = v67;
          }

          else
          {
            v42 = 0;
          }

          v69 = v38;
          v70 = v42;
          sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
          v45 = sub_10007B1AC();
          v47 = v46;
          v48 = sub_100037C08(v45, v46, &v71);
          v47, v49, v50, v51, v52, v53, v54, v55;
          *(v37 + 1) = v48;
          v56 = v65;
          _os_log_impl(&_mh_execute_header, v65, v64, "replaceContainer container.options.accountOverrideInfo.accountID: %s", v37, 0xCu);
          sub_10000585C(v36);

          (*(v5 + 8))(v10, v4);
        }

        else
        {

          v5 = v67;
          (*(v67 + 8))(v10, v4);
        }
      }

      else
      {
        v43 = [objc_allocWithZone(CKContainer) initWithContainerID:v69];
        swift_getKeyPath();
        swift_getKeyPath();
        v69 = v43;

        v44 = v43;
        sub_10007AF4C();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if (v69)
    {
    }

    else
    {
      sub_10007AE0C();
      v57 = sub_10007AE1C();
      v58 = sub_10007B3FC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "replaceContainer throwing as it didn't build a container", v59, 2u);
      }

      (*(v5 + 8))(v8, v4);
      sub_100005AB8();
      swift_allocError();
      *v60 = 0xD000000000000012;
      *(v60 + 8) = 0x8000000100081380;
      *(v60 + 16) = xmmword_10007D2E0;
      *(v60 + 32) = 0x80000001000813A0;
      *(v60 + 40) = 10;
      swift_willThrow();
    }
  }
}

uint64_t sub_1000099C0()
{
  v1 = v0;
  v2 = sub_1000057A0(&qword_10009E608, &qword_10007D5F8);
  v109 = *(v2 - 8);
  v110 = v2;
  v3 = __chkstk_darwin(v2);
  v107 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v108 = &v70 - v5;
  v103 = sub_1000057A0(&unk_10009EF60, &unk_10007D600);
  v100 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v70 - v6;
  v104 = sub_1000057A0(&qword_10009E610, &unk_10007EBC0);
  __chkstk_darwin(v104);
  v98 = &v70 - v7;
  v93 = sub_1000057A0(&qword_10009E618, &qword_10007D610);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v70 - v8;
  v95 = sub_1000057A0(&qword_10009E620, &qword_10007D618);
  __chkstk_darwin(v95);
  v94 = &v70 - v9;
  v102 = sub_1000057A0(&qword_10009E628, &qword_10007D620);
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v96 = &v70 - v10;
  v11 = sub_1000057A0(&qword_10009E630, &qword_10007D628);
  v105 = *(v11 - 8);
  v106 = v11;
  __chkstk_darwin(v11);
  v101 = &v70 - v12;
  v90 = sub_1000057A0(&qword_10009F010, &qword_10007D630);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v70 - v13;
  v113 = sub_1000057A0(&qword_10009E638, &qword_10007D638);
  v87 = *(v113 - 8);
  __chkstk_darwin(v113);
  v86 = &v70 - v14;
  v85 = sub_1000057A0(&qword_10009E640, &qword_10007D640);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v70 - v15;
  v112 = sub_1000057A0(&unk_10009F2E0, &qword_10007D648);
  v82 = *(v112 - 8);
  __chkstk_darwin(v112);
  v81 = &v70 - v16;
  v111 = sub_1000057A0(&qword_10009E648, &unk_10007D650);
  v78 = *(v111 - 8);
  __chkstk_darwin(v111);
  v77 = &v70 - v17;
  v76 = sub_1000057A0(&qword_10009F1E0, &qword_10007EDD0);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - v18;
  v73 = sub_1000057A0(&qword_10009F0C0, &unk_10007D660);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v70 - v19;
  v70 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v20 = __chkstk_darwin(v70);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v70 - v23;
  v25 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v70 - v27;
  v29 = sub_1000057A0(&qword_10009E658, &qword_10007D670);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v70 - v31;
  v33 = v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckShare;
  v114 = 0;
  sub_1000057A0(&qword_10009E4E0, "̇");
  sub_10007AF0C();
  v34 = *(v30 + 32);
  v79 = v33;
  v80 = v29;
  v34(v33, v32, v29);
  v35 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__currentUserIsOwner;
  LOBYTE(v114) = 1;
  sub_10007AF0C();
  (*(v26 + 32))(v1 + v35, v28, v25);
  v36 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__sharingURL;
  v37 = sub_10007AC4C();
  (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
  sub_1000087B4(v24, v22);
  v38 = v71;
  sub_10007AF0C();
  sub_100008824(v24, &unk_10009ED10, &qword_10007D310);
  (*(v72 + 32))(v1 + v36, v38, v73);
  v39 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckShareParticipantsCoOwnersState;
  v114 = &off_100095738;
  v40 = v74;
  sub_10007AF0C();
  (*(v75 + 32))(v1 + v39, v40, v76);
  v41 = v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__containerID;
  v114 = 0;
  sub_1000057A0(&qword_10009E500, &qword_10007D318);
  v42 = v77;
  sub_10007AF0C();
  (*(v78 + 32))(v41, v42, v111);
  v43 = v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__containerSetupInfo;
  v114 = 0;
  sub_1000057A0(&qword_10009E510, &qword_10007D320);
  v44 = v81;
  sub_10007AF0C();
  (*(v82 + 32))(v43, v44, v112);
  v45 = (v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_accountID);
  *v45 = 0;
  v45[1] = 0;
  v46 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__container;
  v114 = 0;
  sub_1000057A0(&qword_10009E520, &qword_10007D340);
  v47 = v83;
  sub_10007AF0C();
  v48 = v1 + v46;
  v49 = v1;
  (*(v84 + 32))(v48, v47, v85);
  v50 = v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckSystemSharingUIObserver;
  v114 = 0;
  v51 = sub_1000057A0(&unk_10009E530, &qword_10007D348);
  v52 = v86;
  v85 = v51;
  sub_10007AF0C();
  (*(v87 + 32))(v50, v52, v113);
  swift_weakInit();
  if (_swiftEmptyArrayStorage >> 62 && sub_10007B64C())
  {
    v53 = sub_1000606F8(_swiftEmptyArrayStorage);
  }

  else
  {
    v53 = &_swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_store) = v53;
  swift_beginAccess();
  v54 = v88;
  sub_10007AF1C();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_10000D6F4(&qword_10009F1D0, &qword_10009F010, &qword_10007D630, &protocol conformance descriptor for Published<A>.Publisher);

  v55 = v90;
  sub_10007AFBC();

  (*(v89 + 8))(v54, v55);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v56 = v91;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009E660, &qword_10009E618, &qword_10007D610, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10000D4F4();
  v57 = v93;
  sub_10007AFAC();
  (*(v92 + 8))(v56, v57);
  swift_beginAccess();
  v58 = v97;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009E680, &unk_10009EF60, &unk_10007D600, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10000D590();
  v59 = v103;
  sub_10007AFAC();
  (*(v100 + 8))(v58, v59);
  sub_10000D6F4(&qword_10009E690, &qword_10009E620, &qword_10007D618, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_10000D6F4(&qword_10009E698, &qword_10009E610, &unk_10007EBC0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v60 = v96;
  sub_10007AE4C();
  v61 = swift_allocObject();
  swift_weakInit();

  v62 = swift_allocObject();
  *(v62 + 16) = sub_10000D67C;
  *(v62 + 24) = v61;
  sub_10000D6F4(&qword_10009E6A0, &qword_10009E628, &qword_10007D620, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v64 = v101;
  v63 = v102;
  sub_10007AF7C();

  (*(v99 + 8))(v60, v63);
  swift_beginAccess();
  v65 = v108;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009E6A8, &qword_10009E630, &qword_10007D628, &protocol conformance descriptor for Publishers.Map<A, B>);
  v66 = v106;
  sub_10007AFCC();
  (*(v105 + 8))(v64, v66);
  v68 = v109;
  v67 = v110;
  (*(v109 + 16))(v107, v65, v110);
  swift_beginAccess();
  sub_10007AF2C();
  swift_endAccess();
  (*(v68 + 8))(v65, v67);
  return v49;
}

void sub_10000AB48(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (!v2)
    {

      return;
    }

    v3 = v2;
    v4 = [v3 currentUserParticipant];
    v5 = [v3 owner];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        sub_100005C8C(0, &qword_10009E600, CKShareParticipant_ptr);
        sub_10007B51C();
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v4 = v5;
    }

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF4C();
  }
}

id sub_10000AC88(id a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      v5 = &selRef_initWithContainerSetupInfo_;
      a1 = a2;
    }

    else
    {
      if (!a1)
      {
        goto LABEL_9;
      }

      v5 = &selRef_initWithContainerID_;
    }

    a1 = [objc_allocWithZone(CKContainer) *v5];
    if (a1)
    {
      v6 = objc_allocWithZone(CKSystemSharingUIObserver);
      v7 = a1;
      a1 = [v6 initWithContainer:v7];
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = a2;
      v10 = a2;

      sub_10007B4BC();

      swift_allocObject();
      swift_weakInit();

      sub_10007B4CC();

      return a1;
    }

LABEL_9:

    return a1;
  }

  return 0;
}

uint64_t sub_10000AE60(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v8 = sub_10007AE2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  __chkstk_darwin(v12 - 8);
  v14 = v36 - v13;
  if (a3)
  {
    sub_10007AE0C();
    swift_errorRetain();
    v15 = sub_10007AE1C();
    v16 = sub_10007B3FC();
    sub_10000D8A8(a2, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36[0] = v18;
      *v17 = 136315138;
      v36[3] = a2;
      swift_errorRetain();
      sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
      v19 = sub_10007B1AC();
      v21 = v20;
      v22 = sub_100037C08(v19, v20, v36);
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "ckShareModel systemSharingUIDidSaveShareBlock error: %s", v17, 0xCu);
      sub_10000585C(v18);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v31 = sub_10007B35C();
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    v32 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10007B32C();

    sub_10000D8B4(a2, 0);
    v33 = a5;
    v34 = sub_10007B31C();
    v35 = swift_allocObject();
    v35[2] = v34;
    v35[3] = &protocol witness table for MainActor;
    v35[4] = v32;
    v35[5] = a2;
    v35[6] = a5;

    sub_10000DAD0(0, 0, v14, &unk_10007D698, v35);
  }
}

uint64_t sub_10000B1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_10007AE2C();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v8 = sub_10007AC4C();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = sub_10007B32C();
  v6[21] = sub_10007B31C();
  v10 = sub_10007B2EC();
  v6[22] = v10;
  v6[23] = v9;

  return _swift_task_switch(sub_10000B330, v10, v9);
}

uint64_t sub_10000B330()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (!Strong)
  {
    goto LABEL_20;
  }

  v2 = swift_weakLoadStrong();
  *(v0 + 200) = v2;
  if (!v2)
  {
LABEL_19:

LABEL_20:

    goto LABEL_21;
  }

  v3 = [*(v0 + 72) recordID];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v4 = *(v0 + 40);
  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v5 = [*(v0 + 40) recordID];

  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

LABEL_21:

    v15 = *(v0 + 8);

    return v15();
  }

  if (!v5)
  {
LABEL_11:

    goto LABEL_21;
  }

  sub_100005C8C(0, &qword_10009E6B0, CKRecordID_ptr);
  v6 = sub_10007B51C();

  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v7 = [*(v0 + 72) URL];
  if (!v7)
  {
LABEL_18:

    goto LABEL_19;
  }

  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = *(v0 + 128);
  v12 = v7;
  sub_10007AC1C();

  (*(v10 + 32))(v8, v9, v11);
  *(v0 + 208) = sub_10007B31C();
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = sub_10000B620;

  return sub_100059770();
}

uint64_t sub_10000B620()
{
  *(*v1 + 224) = v0;

  v3 = sub_10007B2EC();
  if (v0)
  {
    v4 = sub_10000B920;
  }

  else
  {
    v4 = sub_10000B77C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10000B77C()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_10000B7E0, v1, v2);
}

uint64_t sub_10000B7E0(uint64_t a1)
{
  sub_10007AE0C();
  v2 = sub_10007AE1C();
  v3 = sub_10007B41C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ckShareModel calling notifyClientShareDidChange()", v4, 2u);
  }

  v5 = v1[15];
  v6 = v1[11];
  v7 = v1[12];

  v8 = *(v7 + 8);
  v1[29] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[30] = v9;
  *v9 = v1;
  v9[1] = sub_10000BC08;
  v10 = v1[19];
  v11 = v1[10];

  return sub_100047DB8(v10, v11);
}

uint64_t sub_10000B920()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_10000B984, v1, v2);
}

uint64_t sub_10000B984()
{
  v32 = v0;

  sub_10007AE0C();
  swift_errorRetain();
  v1 = sub_10007AE1C();
  v2 = sub_10007B3FC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[28];
    v4 = v0[17];
    v29 = v0[16];
    v30 = v0[19];
    v5 = v0[12];
    v27 = v0[11];
    v28 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315138;
    v0[6] = v3;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v8 = sub_10007B1AC();
    v10 = v9;
    v11 = sub_100037C08(v8, v9, &v31);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "ckShareModel systemSharingUIDidSaveShareBlock failed to refetch share: %s", v6, 0xCu);
    sub_10000585C(v7);

    (*(v5 + 8))(v28, v27);
    (*(v4 + 8))(v30, v29);
  }

  else
  {
    v19 = v0[19];
    v20 = v0[16];
    v21 = v0[17];
    v22 = v0[14];
    v23 = v0[11];
    v24 = v0[12];

    (*(v24 + 8))(v22, v23);
    (*(v21 + 8))(v19, v20);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_10000BC08()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_10000BE18;
  }

  else
  {
    v5 = sub_10000BD44;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000BD44()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000BE18()
{
  v32 = v0;

  sub_10007AE0C();
  swift_errorRetain();
  v1 = sub_10007AE1C();
  v2 = sub_10007B3FC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[31];
    v29 = v0[19];
    v4 = v0[17];
    v27 = v0[29];
    v28 = v0[16];
    v25 = v0[11];
    v26 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v0[7] = v3;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v7 = sub_10007B1AC();
    v9 = v8;
    v10 = sub_100037C08(v7, v8, &v31);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "ckShareModel systemSharingUIDidSaveShareBlock failed to fetch share metadata: %s", v5, 0xCu);
    sub_10000585C(v6);

    v27(v26, v25);
    (*(v4 + 8))(v29, v28);
  }

  else
  {
    v18 = v0[29];
    v30 = v0[19];
    v19 = v0[16];
    v20 = v0[17];
    v21 = v0[13];
    v22 = v0[11];

    v18(v21, v22);
    (*(v20 + 8))(v30, v19);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_10000C0B0(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  __chkstk_darwin(v7 - 8);
  v9 = v44 - v8;
  v10 = sub_10007AE2C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v44 - v15;
  if (a3)
  {
    sub_10007AE0C();
    swift_errorRetain();
    v17 = sub_10007AE1C();
    v18 = sub_10007B3FC();
    sub_10000D794(a2, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44[0] = v20;
      *v19 = 136315138;
      v44[3] = a2;
      swift_errorRetain();
      sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
      v21 = sub_10007B1AC();
      v23 = v22;
      v24 = sub_100037C08(v21, v22, v44);
      v23, v25, v26, v27, v28, v29, v30, v31;
      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "ckShareModel systemSharingUIDidStopSharingBlock error: %s", v19, 0xCu);
      sub_10000585C(v20);
    }

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    sub_10007AE0C();
    v33 = a1;
    v34 = sub_10007AE1C();
    v35 = sub_10007B41C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "ckShareModel systemSharingUIDidStopSharingBlock stopped sharing: %@", v36, 0xCu);
      sub_100008824(v37, &qword_10009F570, &qword_10007DAF0);
    }

    (*(v11 + 8))(v16, v10);
    v39 = sub_10007B35C();
    (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
    v40 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10007B32C();
    v41 = v33;

    v42 = sub_10007B31C();
    v43 = swift_allocObject();
    v43[2] = v42;
    v43[3] = &protocol witness table for MainActor;
    v43[4] = v40;
    v43[5] = v41;

    sub_10000DAD0(0, 0, v9, &unk_10007D680, v43);
  }
}

uint64_t sub_10000C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10007AE2C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_10007B32C();
  v5[11] = sub_10007B31C();
  v8 = sub_10007B2EC();

  return _swift_task_switch(sub_10000C5F4, v8, v7);
}

uint64_t sub_10000C5F4()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v1 = *(v0 + 40);
      if (v1)
      {
        v2 = [*(v0 + 40) recordID];

        if (v2)
        {
          v3 = *(v0 + 56);
          sub_100005C8C(0, &qword_10009E6B0, CKRecordID_ptr);
          v4 = v3;
          v5 = sub_10007B51C();

          if (v5)
          {
            sub_10007AE0C();
            v6 = sub_10007AE1C();
            v7 = sub_10007B41C();
            v8 = os_log_type_enabled(v6, v7);
            v10 = *(v0 + 72);
            v9 = *(v0 + 80);
            v11 = *(v0 + 64);
            if (v8)
            {
              v12 = swift_slowAlloc();
              *v12 = 0;
              _os_log_impl(&_mh_execute_header, v6, v7, "ckShareModel systemSharingUIDidStopSharingBlock dismissing", v12, 2u);
            }

            else
            {
            }

            (*(v10 + 8))(v9, v11);
            goto LABEL_10;
          }
        }
      }
    }
  }

LABEL_10:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10000C838()
{
  v1 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckShare;
  v2 = sub_1000057A0(&qword_10009E658, &qword_10007D670);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__currentUserIsOwner;
  v4 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__sharingURL;
  v6 = sub_1000057A0(&qword_10009F0C0, &unk_10007D660);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckShareParticipantsCoOwnersState;
  v8 = sub_1000057A0(&qword_10009F1E0, &qword_10007EDD0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__containerID;
  v10 = sub_1000057A0(&qword_10009E648, &unk_10007D650);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__containerSetupInfo;
  v12 = sub_1000057A0(&unk_10009F2E0, &qword_10007D648);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_accountID + 8), v13, v14, v15, v16, v17, v18, v19;
  v20 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__container;
  v21 = sub_1000057A0(&qword_10009E640, &qword_10007D640);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckSystemSharingUIObserver;
  v23 = sub_1000057A0(&qword_10009E638, &qword_10007D638);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  swift_weakDestroy();
  *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_store), v24, v25, v26, v27, v28, v29, v30;
  return v0;
}

uint64_t sub_10000CAEC()
{
  sub_10000C838();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CKShareModel(uint64_t a1)
{
  result = qword_10009E4C8;
  if (!qword_10009E4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000CB98(uint64_t a1)
{
  sub_10000CEE4(319, &qword_10009E4D8, &qword_10009E4E0, "̇");
  if (v1 <= 0x3F)
  {
    sub_10000CE98(319, &qword_10009EC80, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_10000CEE4(319, &qword_10009E4E8, &unk_10009ED10, &qword_10007D310);
      if (v3 <= 0x3F)
      {
        sub_10000CE98(319, &qword_10009E4F0, &type metadata for TriStateBool);
        if (v4 <= 0x3F)
        {
          sub_10000CEE4(319, &qword_10009E4F8, &qword_10009E500, &qword_10007D318);
          if (v5 <= 0x3F)
          {
            sub_10000CEE4(319, &qword_10009E508, &qword_10009E510, &qword_10007D320);
            if (v6 <= 0x3F)
            {
              sub_10000CEE4(319, &qword_10009E518, &qword_10009E520, &qword_10007D340);
              if (v7 <= 0x3F)
              {
                sub_10000CEE4(319, &qword_10009E528, &unk_10009E530, &qword_10007D348);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000CE98(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_10007AF5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000CEE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100004AD8(a3, a4);
    v5 = sub_10007AF5C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10000CF38(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v2 = v1;

      sub_10007AF3C();

      LODWORD(v3) = v44;
      v4 = &stru_10009D000;
      if ([v2 publicPermission] == 1)
      {
        v5 = &stru_10009D000;
        v6 = [v2 participants];
        sub_100005C8C(0, &qword_10009E600, CKShareParticipant_ptr);
        v7 = sub_10007B2AC();

        if (v7 >> 62)
        {
          goto LABEL_47;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10007B64C())
        {
          v7, v8, v9, v10, v11, v12, v13, v14;
          if (!i)
          {
            break;
          }

          v16 = [v2 v5[63].name];
          v7 = sub_10007B2AC();

          v41 = v3;
          if (v7 >> 62)
          {
            v24 = sub_10007B64C();
          }

          else
          {
            v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v25 = &stru_10009D000;
          v42 = v2;
          if (v24)
          {
            v2 = 0;
            v3 = v7 & 0xC000000000000001;
            v4 = (v7 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v3)
              {
                v26 = sub_10007B5DC();
              }

              else
              {
                if (v2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_44;
                }

                v26 = *(v7 + 8 * v2 + 32);
              }

              v5 = v26;
              v27 = (v2 + 1);
              if (__OFADD__(v2, 1))
              {
                break;
              }

              if (-[__objc2_ivar role](v26, "role") == 1 || [v5 v25[30].offs] != 2)
              {
              }

              else
              {
                sub_10007B5FC();
                sub_10007B61C();
                v25 = &stru_10009D000;
                sub_10007B62C();
                sub_10007B60C();
              }

              ++v2;
              if (v27 == v24)
              {
                v2 = v42;
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
          }

          else
          {
LABEL_26:
            v7, v17, v18, v19, v20, v21, v22, v23;
            if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
            {
              v43 = sub_10007B64C();
            }

            else
            {
              v43 = _swiftEmptyArrayStorage[2];
            }

            v29 = [v2 participants];
            v3 = sub_10007B2AC();

            if (v3 >> 62)
            {
              v37 = sub_10007B64C();
              if (!v37)
              {
LABEL_50:
                v3, v30, v31, v32, v33, v34, v35, v36;
                if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
                {
                  v40 = sub_10007B64C();
                }

                else
                {
                  v40 = _swiftEmptyArrayStorage[2];
                }

                if (v43 <= 0)
                {

                  if (v40 > 0)
                  {
                    return 1;
                  }

                  else
                  {
                    return v41;
                  }
                }

                else if (v40 < 1)
                {

                  return 2;
                }

                else
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_10007AF3C();

                  if (_swiftEmptyArrayStorage == 3)
                  {
                    return 2;
                  }

                  else
                  {
                    return 3;
                  }
                }
              }
            }

            else
            {
              v37 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v37)
              {
                goto LABEL_50;
              }
            }

            v2 = 0;
            v7 = v3 & 0xC000000000000001;
            v4 = (v3 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v7)
              {
                v38 = sub_10007B5DC();
              }

              else
              {
                if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v38 = *(v3 + 8 * v2 + 32);
              }

              v5 = v38;
              v39 = (v2 + 1);
              if (__OFADD__(v2, 1))
              {
                break;
              }

              if (-[__objc2_ivar role](v38, "role") == 1 || [v5 v25[30].offs] != 3)
              {
              }

              else
              {
                sub_10007B5FC();
                sub_10007B61C();
                v25 = &stru_10009D000;
                sub_10007B62C();
                sub_10007B60C();
              }

              ++v2;
              if (v39 == v37)
              {
                v2 = v42;
                goto LABEL_50;
              }
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          ;
        }
      }

      v28 = [v2 v4[63].type];

      if (v28 == 2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_10000D4B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000D4F4()
{
  result = qword_10009E668;
  if (!qword_10009E668)
  {
    sub_100004AD8(&qword_10009E500, &qword_10007D318);
    sub_10000D62C(&qword_10009E670, &qword_10009E678, CKContainerID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E668);
  }

  return result;
}

unint64_t sub_10000D590()
{
  result = qword_10009F2F0;
  if (!qword_10009F2F0)
  {
    sub_100004AD8(&qword_10009E510, &qword_10007D320);
    sub_10000D62C(&unk_10009F300, &qword_10009E688, CKContainerSetupInfo_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F2F0);
  }

  return result;
}

uint64_t sub_10000D62C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005C8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D684()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D6BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10000D6F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004AD8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D73C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D794(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10000D7A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D7E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DACC;

  return sub_10000C500(a1, v4, v5, v7, v6);
}

void sub_10000D8A8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_10000D8B4(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10000D8C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000D9D8;

  return sub_10000B1B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000D9D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000DAD0(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  sub_1000187C8(a3, v32 - v10, &qword_10009F370, &qword_10007FC90);
  v12 = sub_10007B35C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008824(v11, &qword_10009F370, &qword_10007FC90);
  }

  else
  {
    sub_10007B34C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10007B2EC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10007B1CC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v23 = swift_task_create();

      sub_100008824(a3, &qword_10009F370, &qword_10007FC90);
      a2, v24, v25, v26, v27, v28, v29, v30;

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

  sub_100008824(a3, &qword_10009F370, &qword_10007FC90);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000DDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 59) = v16;
  *(v8 + 312) = v14;
  *(v8 + 320) = v15;
  *(v8 + 296) = a7;
  *(v8 + 304) = a8;
  *(v8 + 280) = a5;
  *(v8 + 288) = a6;
  *(v8 + 272) = a4;
  v9 = sub_10007AE2C();
  *(v8 + 328) = v9;
  *(v8 + 336) = *(v9 - 8);
  *(v8 + 344) = swift_task_alloc();
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = sub_10007B32C();
  *(v8 + 384) = sub_10007B31C();
  v11 = sub_10007B2EC();
  *(v8 + 392) = v11;
  *(v8 + 400) = v10;

  return _swift_task_switch(sub_10000DF3C, v11, v10);
}

uint64_t sub_10000DF3C()
{
  type metadata accessor for ModelDelegateSPI(0);
  swift_allocObject();
  *(v0 + 408) = sub_100023D50();

  return _swift_task_switch(sub_10000DFBC, 0, 0);
}

uint64_t sub_10000DFBC()
{
  v1 = v0[37];
  v2 = (v0[51] + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPI);
  *v2 = v0[36];
  v2[1] = v1;

  v0[52] = sub_10007B31C();
  v4 = sub_10007B2EC();

  return _swift_task_switch(sub_10000E074, v4, v3);
}

uint64_t sub_10000E074()
{

  type metadata accessor for CKShareModel(0);
  swift_allocObject();
  *(v0 + 424) = sub_1000099C0();

  return _swift_task_switch(sub_10000E0FC, 0, 0);
}

uint64_t sub_10000E0FC(uint64_t a1)
{
  *(v1 + 432) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_10000E188, v3, v2);
}

uint64_t sub_10000E188()
{
  v1 = *(v0 + 424);

  type metadata accessor for OptionsModel(0);
  swift_allocObject();
  *(v0 + 440) = sub_100079A54(v1);

  return _swift_task_switch(sub_10000E21C, 0, 0);
}

uint64_t sub_10000E21C(uint64_t a1)
{
  *(v1 + 448) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_10000E2A8, v3, v2);
}

uint64_t sub_10000E2A8()
{
  v1 = *(v0 + 440);

  type metadata accessor for SharingModel(0);
  swift_allocObject();
  *(v0 + 456) = sub_10006098C(v1);

  return _swift_task_switch(sub_10000E33C, 0, 0);
}

uint64_t sub_10000E33C()
{
  v1 = v0[57];
  v2 = v0[51];
  v3 = v0[34];
  v4 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel;
  v0[58] = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel;
  *(v2 + v4) = v1;

  v5 = *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_share);
  *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_share) = v3;

  v6 = *(v2 + v4);
  v0[59] = v6;
  if (!v6)
  {
    return sub_10007B63C("Fatal error", 11, 2, 0x6C65646F6D206F6ELL, 0xEC00000074657320, "com_apple_CloudSharingUI_AddParticipants/ModelDelegate_SPI.swift", 64, 2, 21, 0);
  }

  v7 = v0[46];
  v8 = v0[34];
  v9 = sub_10007AC4C();
  v0[60] = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v0[61] = v11;
  v0[62] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v7, 1, 1, v9);
  v12 = v8;

  v0[63] = sub_10007B31C();
  v14 = sub_10007B2EC();

  return _swift_task_switch(sub_10000E4E8, v14, v13);
}

uint64_t sub_10000E4E8()
{
  v1 = v0[59];
  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[35];

  sub_100024360(v2, v4, v3, 0, v1);

  sub_100008824(v3, &unk_10009ED10, &qword_10007D310);
  v5 = v0[49];
  v6 = v0[50];

  return _swift_task_switch(sub_10000E59C, v5, v6);
}

uint64_t sub_10000E59C()
{
  v1 = *(v0[51] + v0[58]);
  v0[64] = v1;
  if (!v1)
  {
    return sub_10007B63C("Fatal error", 11, 2, 0x6C65646F6D206F6ELL, 0xEC00000074657320, "com_apple_CloudSharingUI_AddParticipants/ModelDelegate_SPI.swift", 64, 2, 21, 0);
  }

  v2 = v0[38];
  v3 = v0[34];

  sub_10004643C(v2);
  v4 = [v3 participants];
  sub_1000189E0();
  v5 = sub_10007B2AC();

  if (v5 >> 62)
  {
    v13 = sub_10007B64C();
  }

  else
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[65] = v13;
  v5, v6, v7, v8, v9, v10, v11, v12;
  v0[66] = *(v1 + 16);

  v14 = swift_task_alloc();
  v0[67] = v14;
  *v14 = v0;
  v14[1] = sub_10000E73C;

  return sub_100075AC0();
}

uint64_t sub_10000E73C()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_100010558;
  }

  else
  {

    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_10000E858;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10000E858()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v1 = *(v0 + 57);
  if (v1 == 2 || (v1 & 1) == 0)
  {
LABEL_6:
    v6 = 10;
    goto LABEL_7;
  }

  if (*(v0 + 520) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    if (*(v0 + 58) == 1)
    {
      *(v0 + 552) = sub_10007B31C();
      v2 = sub_10007B2EC();
      v4 = v3;
      *(v0 + 560) = v2;
      *(v0 + 568) = v3;
      v5 = sub_10000EB58;
LABEL_12:

      return _swift_task_switch(v5, v2, v4);
    }

    goto LABEL_6;
  }

  if ([*(v0 + 272) publicPermission] == 1)
  {
    *(v0 + 648) = sub_10007B31C();
    v2 = sub_10007B2EC();
    v4 = v14;
    *(v0 + 656) = v2;
    *(v0 + 664) = v14;
    v5 = sub_10000F5CC;
    goto LABEL_12;
  }

  v6 = 12;
LABEL_7:
  v7 = *(v0 + 488);
  v8 = *(v0 + 480);
  v9 = *(v0 + 368);
  v10 = *(v0 + 288);

  v7(v9, 1, 1, v8);
  v11 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:v6 userInfo:0];
  v10(v9, 0, v11);

  sub_100008824(v9, &unk_10009ED10, &qword_10007D310);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10000EB58()
{
  v1 = v0[64];
  v2 = v0[39];
  v0[72] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[73] = v3;
  *v3 = v0;
  v3[1] = sub_10000EC24;
  if (v2 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_100076258(v4, v1, 0);
}

uint64_t sub_10000EC24()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = *(v2 + 568);
    v4 = *(v2 + 560);
    v5 = sub_10000EF3C;
  }

  else
  {

    v3 = *(v2 + 568);
    v4 = *(v2 + 560);
    v5 = sub_10000ED48;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000ED48()
{
  v1 = v0[64];
  v2 = v0[40];
  v0[75] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[76] = v3;
  *v3 = v0;
  v3[1] = sub_10000EE18;
  if (v2 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_100076CB0(v4, v1, 0, 1);
}

uint64_t sub_10000EE18()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = *(v2 + 568);
    v4 = *(v2 + 560);
    v5 = sub_10000F22C;
  }

  else
  {

    v3 = *(v2 + 568);
    v4 = *(v2 + 560);
    v5 = sub_10000EFB4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000EF3C()
{
  v0[80] = v0[74];

  v1 = v0[49];
  v2 = v0[50];

  return _swift_task_switch(sub_10000F2A4, v1, v2);
}

uint64_t sub_10000EFB4()
{
  v1 = *(v0 + 60);
  v2 = *(v0 + 59);

  if (v2)
  {
    v3 = &off_1000957B0;
  }

  else
  {
    v3 = &off_1000957D8;
  }

  sub_100077834(v3);
  v3, v4, v5, v6, v7, v8, v9, v10;

  sub_100077654(v1);

  v11 = swift_task_alloc();
  *(v0 + 624) = v11;
  *v11 = v0;
  v11[1] = sub_10000F0C4;
  v12 = *(v0 + 60);
  v13 = *(v0 + 59);

  return sub_100048564(v13, v12);
}

uint64_t sub_10000F0C4()
{
  v2 = *v1;
  v2[79] = v0;

  if (v0)
  {
    v3 = v2[49];
    v4 = v2[50];

    return _swift_task_switch(sub_10001088C, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[93] = v5;
    *v5 = v2;
    v5[1] = sub_100010044;

    return sub_10004A150();
  }
}

uint64_t sub_10000F22C()
{
  v0[80] = v0[77];

  v1 = v0[49];
  v2 = v0[50];

  return _swift_task_switch(sub_10000F2A4, v1, v2);
}

uint64_t sub_10000F2A4()
{
  v31 = v0;

  *(v0 + 256) = *(v0 + 640);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v1;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v2 = sub_10007AE1C();
    v3 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      v10 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v10;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v11 = sub_10007B1AC();
      v13 = v12;
      v14 = sub_100037C08(v11, v12, &v30);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error finishing addToCloudKitSharing: %s", v8, 0xCu);
      sub_10000585C(v9);
    }

    (*(v6 + 8))(v5, v7);
    v22 = *(v0 + 488);
    v23 = *(v0 + 480);
    v24 = *(v0 + 368);
    v25 = *(v0 + 288);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v27 = v26;
    v22(v24, 1, 1, v23);
    v25(v24, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v24, &unk_10009ED10, &qword_10007D310);

    v28 = *(v0 + 8);
  }

  else
  {

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_10000F5CC()
{
  v1 = v0[64];
  v2 = v0[39];
  v0[84] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[85] = v3;
  *v3 = v0;
  v3[1] = sub_10000F698;
  if (v2 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_100076258(v4, v1, 0);
}

uint64_t sub_10000F698()
{
  v2 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v3 = *(v2 + 664);
    v4 = *(v2 + 656);
    v5 = sub_10000F9B0;
  }

  else
  {

    v3 = *(v2 + 664);
    v4 = *(v2 + 656);
    v5 = sub_10000F7BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000F7BC()
{
  v1 = v0[64];
  v2 = v0[40];
  v0[87] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[88] = v3;
  *v3 = v0;
  v3[1] = sub_10000F88C;
  if (v2 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_100076CB0(v4, v1, 0, 0);
}

uint64_t sub_10000F88C()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v3 = *(v2 + 664);
    v4 = *(v2 + 656);
    v5 = sub_10000FCA4;
  }

  else
  {

    v3 = *(v2 + 664);
    v4 = *(v2 + 656);
    v5 = sub_10000FA28;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10000F9B0()
{
  v0[92] = v0[86];

  v1 = v0[49];
  v2 = v0[50];

  return _swift_task_switch(sub_10000FD1C, v1, v2);
}

uint64_t sub_10000FA28()
{
  v1 = *(v0 + 60);
  v2 = *(v0 + 59);

  if (v2)
  {
    v3 = &off_100095800;
  }

  else
  {
    v3 = &off_100095828;
  }

  sub_100077834(v3);
  v3, v4, v5, v6, v7, v8, v9, v10;

  sub_100077654(v1);

  v11 = swift_task_alloc();
  *(v0 + 720) = v11;
  *v11 = v0;
  v11[1] = sub_10000FB3C;
  v12 = *(v0 + 60);
  v13 = *(v0 + 59);
  v14 = *(v0 + 320);

  return sub_1000494A4(v14, v13, v12);
}

uint64_t sub_10000FB3C()
{
  v2 = *v1;
  v2[91] = v0;

  if (v0)
  {
    v3 = v2[49];
    v4 = v2[50];

    return _swift_task_switch(sub_100010BB4, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[93] = v5;
    *v5 = v2;
    v5[1] = sub_100010044;

    return sub_10004A150();
  }
}

uint64_t sub_10000FCA4()
{
  v0[92] = v0[89];

  v1 = v0[49];
  v2 = v0[50];

  return _swift_task_switch(sub_10000FD1C, v1, v2);
}

uint64_t sub_10000FD1C()
{
  v31 = v0;

  *(v0 + 256) = *(v0 + 736);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v1;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v2 = sub_10007AE1C();
    v3 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      v10 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v10;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v11 = sub_10007B1AC();
      v13 = v12;
      v14 = sub_100037C08(v11, v12, &v30);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error finishing addToCloudKitSharing: %s", v8, 0xCu);
      sub_10000585C(v9);
    }

    (*(v6 + 8))(v5, v7);
    v22 = *(v0 + 488);
    v23 = *(v0 + 480);
    v24 = *(v0 + 368);
    v25 = *(v0 + 288);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v27 = v26;
    v22(v24, 1, 1, v23);
    v25(v24, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v24, &unk_10009ED10, &qword_10007D310);

    v28 = *(v0 + 8);
  }

  else
  {

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_100010044()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_100010EDC;
  }

  else
  {
    v5 = sub_100010180;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100010180()
{
  (*(v0 + 488))(*(v0 + 360), 1, 1, *(v0 + 480));
  v1 = swift_task_alloc();
  *(v0 + 760) = v1;
  *v1 = v0;
  v1[1] = sub_100010230;
  v2 = *(v0 + 360);

  return sub_10004AE58(v2);
}

uint64_t sub_100010230()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  *(*v1 + 768) = v0;

  sub_100008824(v3, &unk_10009ED10, &qword_10007D310);
  v4 = *(v2 + 400);
  v5 = *(v2 + 392);
  if (v0)
  {
    v6 = sub_100011204;
  }

  else
  {
    v6 = sub_100010398;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100010398()
{

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = [*(v0 + 264) _copyWithoutPersonalInfo];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 352);
  (*(v0 + 288))(v3, v2, 0);

  sub_100008824(v3, &unk_10009ED10, &qword_10007D310);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100010558()
{
  v31 = v0;

  *(v0 + 256) = *(v0 + 544);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v1;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v2 = sub_10007AE1C();
    v3 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      v10 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v10;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v11 = sub_10007B1AC();
      v13 = v12;
      v14 = sub_100037C08(v11, v12, &v30);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error finishing addToCloudKitSharing: %s", v8, 0xCu);
      sub_10000585C(v9);
    }

    (*(v6 + 8))(v5, v7);
    v22 = *(v0 + 488);
    v23 = *(v0 + 480);
    v24 = *(v0 + 368);
    v25 = *(v0 + 288);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v27 = v26;
    v22(v24, 1, 1, v23);
    v25(v24, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v24, &unk_10009ED10, &qword_10007D310);

    v28 = *(v0 + 8);
  }

  else
  {

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_10001088C()
{
  v31 = v0;

  *(v0 + 256) = *(v0 + 632);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v1;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v2 = sub_10007AE1C();
    v3 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      v10 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v10;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v11 = sub_10007B1AC();
      v13 = v12;
      v14 = sub_100037C08(v11, v12, &v30);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error finishing addToCloudKitSharing: %s", v8, 0xCu);
      sub_10000585C(v9);
    }

    (*(v6 + 8))(v5, v7);
    v22 = *(v0 + 488);
    v23 = *(v0 + 480);
    v24 = *(v0 + 368);
    v25 = *(v0 + 288);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v27 = v26;
    v22(v24, 1, 1, v23);
    v25(v24, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v24, &unk_10009ED10, &qword_10007D310);

    v28 = *(v0 + 8);
  }

  else
  {

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_100010BB4()
{
  v31 = v0;

  *(v0 + 256) = *(v0 + 728);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v1;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v2 = sub_10007AE1C();
    v3 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      v10 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v10;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v11 = sub_10007B1AC();
      v13 = v12;
      v14 = sub_100037C08(v11, v12, &v30);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error finishing addToCloudKitSharing: %s", v8, 0xCu);
      sub_10000585C(v9);
    }

    (*(v6 + 8))(v5, v7);
    v22 = *(v0 + 488);
    v23 = *(v0 + 480);
    v24 = *(v0 + 368);
    v25 = *(v0 + 288);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v27 = v26;
    v22(v24, 1, 1, v23);
    v25(v24, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v24, &unk_10009ED10, &qword_10007D310);

    v28 = *(v0 + 8);
  }

  else
  {

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_100010EDC()
{
  v31 = v0;

  *(v0 + 256) = *(v0 + 752);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v1;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v2 = sub_10007AE1C();
    v3 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      v10 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v10;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v11 = sub_10007B1AC();
      v13 = v12;
      v14 = sub_100037C08(v11, v12, &v30);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error finishing addToCloudKitSharing: %s", v8, 0xCu);
      sub_10000585C(v9);
    }

    (*(v6 + 8))(v5, v7);
    v22 = *(v0 + 488);
    v23 = *(v0 + 480);
    v24 = *(v0 + 368);
    v25 = *(v0 + 288);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v27 = v26;
    v22(v24, 1, 1, v23);
    v25(v24, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v24, &unk_10009ED10, &qword_10007D310);

    v28 = *(v0 + 8);
  }

  else
  {

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_100011204()
{
  v31 = v0;

  *(v0 + 256) = *(v0 + 768);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v1 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v1;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v2 = sub_10007AE1C();
    v3 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136315138;
      v10 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v10;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v11 = sub_10007B1AC();
      v13 = v12;
      v14 = sub_100037C08(v11, v12, &v30);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error finishing addToCloudKitSharing: %s", v8, 0xCu);
      sub_10000585C(v9);
    }

    (*(v6 + 8))(v5, v7);
    v22 = *(v0 + 488);
    v23 = *(v0 + 480);
    v24 = *(v0 + 368);
    v25 = *(v0 + 288);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v27 = v26;
    v22(v24, 1, 1, v23);
    v25(v24, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v24, &unk_10009ED10, &qword_10007D310);

    v28 = *(v0 + 8);
  }

  else
  {

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_10001152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 60) = v15;
  *(v8 + 328) = a8;
  *(v8 + 336) = v14;
  *(v8 + 312) = a6;
  *(v8 + 320) = a7;
  *(v8 + 296) = a4;
  *(v8 + 304) = a5;
  v9 = sub_10007AE2C();
  *(v8 + 344) = v9;
  *(v8 + 352) = *(v9 - 8);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = sub_10007B32C();
  *(v8 + 440) = sub_10007B31C();
  v11 = sub_10007B2EC();
  *(v8 + 448) = v11;
  *(v8 + 456) = v10;

  return _swift_task_switch(sub_1000116C8, v11, v10);
}

uint64_t sub_1000116C8()
{
  v1 = v0[53];
  v2 = v0[37];
  type metadata accessor for ModelDelegateSPI(0);
  swift_allocObject();
  v0[58] = sub_100023D50();
  v3 = sub_10007AC4C();
  v0[59] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v0[60] = v5;
  v0[61] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v2, v3);
  v6 = *(v4 + 56);
  v0[62] = v6;
  v0[63] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 0, 1, v3);
  v7 = swift_task_alloc();
  v0[64] = v7;
  *v7 = v0;
  v7[1] = sub_10001182C;
  v8 = v0[53];
  v9 = v0[38];
  v10 = v0[39];

  return sub_100022BE0(v8, v9, v10);
}

uint64_t sub_10001182C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  *(*v1 + 520) = a1;

  sub_100008824(v3, &unk_10009ED10, &qword_10007D310);
  v4 = *(v2 + 456);
  v5 = *(v2 + 448);

  return _swift_task_switch(sub_100011988, v5, v4);
}

uint64_t sub_100011988()
{
  v1 = *(v0 + 520);
  if (v1)
  {
    v2 = *(v0 + 496);
    v3 = *(v0 + 472);
    v4 = *(v0 + 424);
    v5 = *(v0 + 304);
    v6 = v1;

    v2(v4, 1, 1, v3);
    v7 = v6;
    v5(v4, 0, v1);

    sub_100008824(v4, &unk_10009ED10, &qword_10007D310);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 464);
    v11 = *(v10 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel);
    *(v0 + 528) = v11;
    if (v11)
    {
      v12 = *(v0 + 496);
      v13 = *(v0 + 472);
      v14 = *(v0 + 424);
      v15 = *(v0 + 320);
      (*(v0 + 480))(v14, *(v0 + 296), v13);
      v12(v14, 0, 1, v13);
      v16 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_fileOrFolderURL;
      swift_beginAccess();

      sub_100018AFC(v14, v10 + v16);
      swift_endAccess();
      sub_10004643C(v15);
      v17 = swift_task_alloc();
      *(v0 + 536) = v17;
      *v17 = v0;
      v17[1] = sub_100011C6C;

      return sub_100016B7C(v11);
    }

    else
    {
      return sub_10007B63C("Fatal error", 11, 2, 0x6C65646F6D206F6ELL, 0xEC00000074657320, "com_apple_CloudSharingUI_AddParticipants/ModelDelegate_SPI.swift", 64, 2, 21, 0);
    }
  }
}

uint64_t sub_100011C6C(char a1)
{
  v4 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v5 = *(v4 + 448);
    v6 = *(v4 + 456);
    v7 = sub_100011EA8;
  }

  else
  {
    *(v4 + 62) = a1 & 1;
    v5 = *(v4 + 448);
    v6 = *(v4 + 456);
    v7 = sub_100011D98;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100011D98()
{
  if (*(v0 + 62))
  {
    *(v0 + 568) = *(*(v0 + 528) + 16);

    v1 = swift_task_alloc();
    *(v0 + 576) = v1;
    *v1 = v0;
    v1[1] = sub_100012424;

    return sub_100075AC0();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 552) = v3;
    *v3 = v0;
    v3[1] = sub_100012244;

    return sub_10004C5D4();
  }
}

uint64_t sub_100011EA8()
{
  v34 = v0;
  v1 = *(v0 + 544);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v3 = sub_10007AE1C();
    v4 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 344);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      v11 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v11;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v12 = sub_10007B1AC();
      v14 = v13;
      v15 = sub_100037C08(v12, v13, &v33);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error finishing startFileSharing: %s", v9, 0xCu);
      sub_10000585C(v10);
    }

    (*(v7 + 8))(v6, v8);
    v23 = *(v0 + 496);
    v24 = *(v0 + 472);
    v25 = *(v0 + 400);
    v26 = *(v0 + 304);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v28 = v27;
    v23(v25, 1, 1, v24);
    v29 = sub_10007AB7C();
    v30 = CKXPCSuitableError();

    v26(v25, 0, v30);

    sub_100018A88(v0 + 16);
    sub_100008824(v25, &unk_10009ED10, &qword_10007D310);

    v31 = *(v0 + 8);
  }

  else
  {

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_100012244()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  v3 = *(v2 + 456);
  v4 = *(v2 + 448);
  if (v0)
  {
    v5 = sub_100014874;
  }

  else
  {
    v5 = sub_100012380;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100012380()
{
  v0[71] = *(v0[66] + 16);

  v1 = swift_task_alloc();
  v0[72] = v1;
  *v1 = v0;
  v1[1] = sub_100012424;

  return sub_100075AC0();
}

uint64_t sub_100012424()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = *(v2 + 448);
    v4 = *(v2 + 456);
    v5 = sub_100014C10;
  }

  else
  {

    v3 = *(v2 + 448);
    v4 = *(v2 + 456);
    v5 = sub_100012540;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100012540()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v1 = *(v0 + 57);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    if (*(v0 + 62))
    {
      *(v0 + 688) = sub_10007B31C();
      v2 = sub_10007B2EC();
      v4 = v3;
      *(v0 + 696) = v2;
      *(v0 + 704) = v3;
      v5 = sub_1000133C4;
LABEL_7:

      return _swift_task_switch(v5, v2, v4);
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    if (*(v0 + 59))
    {
      *(v0 + 592) = sub_10007B31C();
      v2 = sub_10007B2EC();
      v4 = v6;
      *(v0 + 600) = v2;
      *(v0 + 608) = v6;
      v5 = sub_1000128DC;
      goto LABEL_7;
    }
  }

  sub_10007AE0C();
  v7 = sub_10007AE1C();
  v8 = sub_10007B3FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "currentUser is NOT owner, returning CKError.permissionFailure", v9, 2u);
  }

  v10 = *(v0 + 496);
  v11 = *(v0 + 472);
  v12 = *(v0 + 424);
  v13 = *(v0 + 384);
  v15 = *(v0 + 344);
  v14 = *(v0 + 352);
  v19 = *(v0 + 304);

  (*(v14 + 8))(v13, v15);
  v10(v12, 1, 1, v11);
  v16 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
  v19(v12, 0, v16);

  sub_100008824(v12, &unk_10009ED10, &qword_10007D310);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000128DC()
{
  v1 = v0[66];
  v2 = v0[41];
  v0[77] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[78] = v3;
  *v3 = v0;
  v3[1] = sub_1000129A8;
  if (v2 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_100076258(v4, v1, 0);
}

uint64_t sub_1000129A8()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = *(v2 + 608);
    v4 = *(v2 + 600);
    v5 = sub_100012CC0;
  }

  else
  {

    v3 = *(v2 + 608);
    v4 = *(v2 + 600);
    v5 = sub_100012ACC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100012ACC()
{
  v1 = v0[66];
  v2 = v0[42];
  v0[80] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[81] = v3;
  *v3 = v0;
  v3[1] = sub_100012B9C;
  if (v2 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_100076CB0(v4, v1, 0, 1);
}

uint64_t sub_100012B9C()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 608);
    v4 = *(v2 + 600);
    v5 = sub_100012FB0;
  }

  else
  {

    v3 = *(v2 + 608);
    v4 = *(v2 + 600);
    v5 = sub_100012D38;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100012CC0()
{
  v0[85] = v0[79];

  v1 = v0[56];
  v2 = v0[57];

  return _swift_task_switch(sub_100013028, v1, v2);
}

uint64_t sub_100012D38()
{
  v1 = *(v0 + 61);
  v2 = *(v0 + 60);

  if (v2)
  {
    v3 = &off_100095850;
  }

  else
  {
    v3 = &off_100095878;
  }

  sub_100077834(v3);
  v3, v4, v5, v6, v7, v8, v9, v10;

  sub_100077654(v1);

  v11 = swift_task_alloc();
  *(v0 + 664) = v11;
  *v11 = v0;
  v11[1] = sub_100012E48;
  v12 = *(v0 + 61);
  v13 = *(v0 + 60);

  return sub_100048564(v13, v12);
}

uint64_t sub_100012E48()
{
  v2 = *v1;
  v2[84] = v0;

  if (v0)
  {
    v3 = v2[56];
    v4 = v2[57];

    return _swift_task_switch(sub_100014FB4, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[98] = v5;
    *v5 = v2;
    v5[1] = sub_100014168;

    return sub_10004A150();
  }
}

uint64_t sub_100012FB0()
{
  v0[85] = v0[82];

  v1 = v0[56];
  v2 = v0[57];

  return _swift_task_switch(sub_100013028, v1, v2);
}

uint64_t sub_100013028()
{
  v34 = v0;
  v1 = *(v0 + 680);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v3 = sub_10007AE1C();
    v4 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 344);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      v11 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v11;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v12 = sub_10007B1AC();
      v14 = v13;
      v15 = sub_100037C08(v12, v13, &v33);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error finishing startFileSharing: %s", v9, 0xCu);
      sub_10000585C(v10);
    }

    (*(v7 + 8))(v6, v8);
    v23 = *(v0 + 496);
    v24 = *(v0 + 472);
    v25 = *(v0 + 400);
    v26 = *(v0 + 304);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v28 = v27;
    v23(v25, 1, 1, v24);
    v29 = sub_10007AB7C();
    v30 = CKXPCSuitableError();

    v26(v25, 0, v30);

    sub_100018A88(v0 + 16);
    sub_100008824(v25, &unk_10009ED10, &qword_10007D310);

    v31 = *(v0 + 8);
  }

  else
  {

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_1000133C4()
{
  v1 = v0[66];
  v2 = v0[41];
  v0[89] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[90] = v3;
  *v3 = v0;
  v3[1] = sub_100013490;
  if (v2 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_100076258(v4, v1, 0);
}

uint64_t sub_100013490()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = *(v2 + 704);
    v4 = *(v2 + 696);
    v5 = sub_1000137A8;
  }

  else
  {

    v3 = *(v2 + 704);
    v4 = *(v2 + 696);
    v5 = sub_1000135B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000135B4()
{
  v1 = v0[66];
  v2 = v0[42];
  v0[92] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[93] = v3;
  *v3 = v0;
  v3[1] = sub_100013684;
  if (v2 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_100076CB0(v4, v1, 0, 0);
}

uint64_t sub_100013684()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v3 = *(v2 + 704);
    v4 = *(v2 + 696);
    v5 = sub_100013BEC;
  }

  else
  {

    v3 = *(v2 + 704);
    v4 = *(v2 + 696);
    v5 = sub_100013820;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000137A8()
{
  v0[95] = v0[91];

  v1 = v0[56];
  v2 = v0[57];

  return _swift_task_switch(sub_100013C64, v1, v2);
}

uint64_t sub_100013820()
{
  v1 = *(v0 + 61);
  v2 = *(v0 + 60);

  if (v2)
  {
    v3 = &off_1000958A0;
  }

  else
  {
    v3 = &off_1000958C8;
  }

  sub_100077834(v3);
  v3, v4, v5, v6, v7, v8, v9, v10;

  sub_100077654(v1);

  v11 = *(v0 + 448);
  v12 = *(v0 + 456);

  return _swift_task_switch(sub_1000138F0, v11, v12);
}

uint64_t sub_1000138F0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (*(v0 + 58) == 2)
  {
    v1 = swift_task_alloc();
    *(v0 + 768) = v1;
    *v1 = v0;
    v1[1] = sub_100014000;
    v2 = *(v0 + 61);
    v3 = *(v0 + 60);
    v4 = *(v0 + 336);

    return sub_1000494A4(v4, v3, v2);
  }

  else
  {

    sub_10007AE0C();
    v6 = sub_10007AE1C();
    v7 = sub_10007B3FC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "startFileSharing called on a public share", v8, 2u);
    }

    v9 = *(v0 + 496);
    v10 = *(v0 + 472);
    v11 = *(v0 + 424);
    v12 = *(v0 + 376);
    v14 = *(v0 + 344);
    v13 = *(v0 + 352);
    v17 = *(v0 + 304);

    (*(v13 + 8))(v12, v14);
    v9(v11, 1, 1, v10);
    v15 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v17(v11, 0, v15);

    sub_100008824(v11, &unk_10009ED10, &qword_10007D310);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100013BEC()
{
  v0[95] = v0[94];

  v1 = v0[56];
  v2 = v0[57];

  return _swift_task_switch(sub_100013C64, v1, v2);
}

uint64_t sub_100013C64()
{
  v34 = v0;
  v1 = *(v0 + 760);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v3 = sub_10007AE1C();
    v4 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 344);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      v11 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v11;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v12 = sub_10007B1AC();
      v14 = v13;
      v15 = sub_100037C08(v12, v13, &v33);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error finishing startFileSharing: %s", v9, 0xCu);
      sub_10000585C(v10);
    }

    (*(v7 + 8))(v6, v8);
    v23 = *(v0 + 496);
    v24 = *(v0 + 472);
    v25 = *(v0 + 400);
    v26 = *(v0 + 304);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v28 = v27;
    v23(v25, 1, 1, v24);
    v29 = sub_10007AB7C();
    v30 = CKXPCSuitableError();

    v26(v25, 0, v30);

    sub_100018A88(v0 + 16);
    sub_100008824(v25, &unk_10009ED10, &qword_10007D310);

    v31 = *(v0 + 8);
  }

  else
  {

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_100014000()
{
  v2 = *v1;
  v2[97] = v0;

  if (v0)
  {
    v3 = v2[56];
    v4 = v2[57];

    return _swift_task_switch(sub_100015350, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[98] = v5;
    *v5 = v2;
    v5[1] = sub_100014168;

    return sub_10004A150();
  }
}

uint64_t sub_100014168()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  v3 = *(v2 + 456);
  v4 = *(v2 + 448);
  if (v0)
  {
    v5 = sub_1000156EC;
  }

  else
  {
    v5 = sub_1000142A4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000142A4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  v3 = *(v0 + 416);
  (*(v0 + 480))(v3, *(v0 + 296), v2);
  v1(v3, 0, 1, v2);
  v4 = swift_task_alloc();
  *(v0 + 800) = v4;
  *v4 = v0;
  v4[1] = sub_100014380;
  v5 = *(v0 + 416);

  return sub_10004AE58(v5);
}

uint64_t sub_100014380()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  *(*v1 + 808) = v0;

  sub_100008824(v3, &unk_10009ED10, &qword_10007D310);
  v4 = *(v2 + 456);
  v5 = *(v2 + 448);
  if (v0)
  {
    v6 = sub_100015A88;
  }

  else
  {
    v6 = sub_1000144E8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000144E8()
{
  v28 = v0;

  sub_10007AE0C();

  v1 = sub_10007AE1C();
  v2 = sub_10007B41C();

  if (os_log_type_enabled(v1, v2))
  {
    v26 = *(v0 + 368);
    v3 = *(v0 + 352);
    v25 = *(v0 + 344);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v27 = v5;
    *v4 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v6 = sub_10007B1AC();
    v8 = v7;
    v9 = sub_100037C08(v6, v7, &v27);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished startFileSharing shareURL: %s", v4, 0xCu);
    sub_10000585C(v5);

    (*(v3 + 8))(v26, v25);
  }

  else
  {
    v17 = *(v0 + 368);
    v18 = *(v0 + 344);
    v19 = *(v0 + 352);

    (*(v19 + 8))(v17, v18);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v20 = *(v0 + 288);
  if (v20)
  {
    v21 = [*(v0 + 288) _copyWithoutPersonalInfo];
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 408);
  (*(v0 + 304))(v22, v21, 0);

  sub_100008824(v22, &unk_10009ED10, &qword_10007D310);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100014874()
{
  v34 = v0;
  v1 = *(v0 + 560);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v3 = sub_10007AE1C();
    v4 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 344);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      v11 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v11;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v12 = sub_10007B1AC();
      v14 = v13;
      v15 = sub_100037C08(v12, v13, &v33);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error finishing startFileSharing: %s", v9, 0xCu);
      sub_10000585C(v10);
    }

    (*(v7 + 8))(v6, v8);
    v23 = *(v0 + 496);
    v24 = *(v0 + 472);
    v25 = *(v0 + 400);
    v26 = *(v0 + 304);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v28 = v27;
    v23(v25, 1, 1, v24);
    v29 = sub_10007AB7C();
    v30 = CKXPCSuitableError();

    v26(v25, 0, v30);

    sub_100018A88(v0 + 16);
    sub_100008824(v25, &unk_10009ED10, &qword_10007D310);

    v31 = *(v0 + 8);
  }

  else
  {

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_100014C10()
{
  v34 = v0;

  v1 = *(v0 + 584);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v3 = sub_10007AE1C();
    v4 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 344);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      v11 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v11;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v12 = sub_10007B1AC();
      v14 = v13;
      v15 = sub_100037C08(v12, v13, &v33);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error finishing startFileSharing: %s", v9, 0xCu);
      sub_10000585C(v10);
    }

    (*(v7 + 8))(v6, v8);
    v23 = *(v0 + 496);
    v24 = *(v0 + 472);
    v25 = *(v0 + 400);
    v26 = *(v0 + 304);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v28 = v27;
    v23(v25, 1, 1, v24);
    v29 = sub_10007AB7C();
    v30 = CKXPCSuitableError();

    v26(v25, 0, v30);

    sub_100018A88(v0 + 16);
    sub_100008824(v25, &unk_10009ED10, &qword_10007D310);

    v31 = *(v0 + 8);
  }

  else
  {

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_100014FB4()
{
  v34 = v0;
  v1 = *(v0 + 672);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v3 = sub_10007AE1C();
    v4 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 344);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      v11 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v11;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v12 = sub_10007B1AC();
      v14 = v13;
      v15 = sub_100037C08(v12, v13, &v33);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error finishing startFileSharing: %s", v9, 0xCu);
      sub_10000585C(v10);
    }

    (*(v7 + 8))(v6, v8);
    v23 = *(v0 + 496);
    v24 = *(v0 + 472);
    v25 = *(v0 + 400);
    v26 = *(v0 + 304);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v28 = v27;
    v23(v25, 1, 1, v24);
    v29 = sub_10007AB7C();
    v30 = CKXPCSuitableError();

    v26(v25, 0, v30);

    sub_100018A88(v0 + 16);
    sub_100008824(v25, &unk_10009ED10, &qword_10007D310);

    v31 = *(v0 + 8);
  }

  else
  {

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_100015350()
{
  v34 = v0;
  v1 = *(v0 + 776);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v3 = sub_10007AE1C();
    v4 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 344);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      v11 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v11;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v12 = sub_10007B1AC();
      v14 = v13;
      v15 = sub_100037C08(v12, v13, &v33);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error finishing startFileSharing: %s", v9, 0xCu);
      sub_10000585C(v10);
    }

    (*(v7 + 8))(v6, v8);
    v23 = *(v0 + 496);
    v24 = *(v0 + 472);
    v25 = *(v0 + 400);
    v26 = *(v0 + 304);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v28 = v27;
    v23(v25, 1, 1, v24);
    v29 = sub_10007AB7C();
    v30 = CKXPCSuitableError();

    v26(v25, 0, v30);

    sub_100018A88(v0 + 16);
    sub_100008824(v25, &unk_10009ED10, &qword_10007D310);

    v31 = *(v0 + 8);
  }

  else
  {

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_1000156EC()
{
  v34 = v0;
  v1 = *(v0 + 792);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v3 = sub_10007AE1C();
    v4 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 344);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      v11 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v11;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v12 = sub_10007B1AC();
      v14 = v13;
      v15 = sub_100037C08(v12, v13, &v33);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error finishing startFileSharing: %s", v9, 0xCu);
      sub_10000585C(v10);
    }

    (*(v7 + 8))(v6, v8);
    v23 = *(v0 + 496);
    v24 = *(v0 + 472);
    v25 = *(v0 + 400);
    v26 = *(v0 + 304);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v28 = v27;
    v23(v25, 1, 1, v24);
    v29 = sub_10007AB7C();
    v30 = CKXPCSuitableError();

    v26(v25, 0, v30);

    sub_100018A88(v0 + 16);
    sub_100008824(v25, &unk_10009ED10, &qword_10007D310);

    v31 = *(v0 + 8);
  }

  else
  {

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_100015A88()
{
  v34 = v0;
  v1 = *(v0 + 808);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v2;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v3 = sub_10007AE1C();
    v4 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 344);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      v11 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v11;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v12 = sub_10007B1AC();
      v14 = v13;
      v15 = sub_100037C08(v12, v13, &v33);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error finishing startFileSharing: %s", v9, 0xCu);
      sub_10000585C(v10);
    }

    (*(v7 + 8))(v6, v8);
    v23 = *(v0 + 496);
    v24 = *(v0 + 472);
    v25 = *(v0 + 400);
    v26 = *(v0 + 304);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v28 = v27;
    v23(v25, 1, 1, v24);
    v29 = sub_10007AB7C();
    v30 = CKXPCSuitableError();

    v26(v25, 0, v30);

    sub_100018A88(v0 + 16);
    sub_100008824(v25, &unk_10009ED10, &qword_10007D310);

    v31 = *(v0 + 8);
  }

  else
  {

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_100015E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_10007AE2C();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  sub_10007B32C();
  v7[15] = sub_10007B31C();
  v10 = sub_10007B2EC();
  v7[16] = v10;
  v7[17] = v9;

  return _swift_task_switch(sub_100015F28, v10, v9);
}

uint64_t sub_100015F28()
{
  type metadata accessor for ModelDelegateSPI(0);
  swift_allocObject();
  v0[18] = sub_100023D50();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_100015FF8;
  v3 = v0[7];
  v2 = v0[8];

  return sub_100023864(v3, v2, nullsub_1, 0);
}

uint64_t sub_100015FF8()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_100016118, v3, v2);
}

uint64_t sub_100016118()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel);
  v0[20] = v1;
  if (!v1)
  {
    return sub_10007B63C("Fatal error", 11, 2, 0x6C65646F6D206F6ELL, 0xEC00000074657320, "com_apple_CloudSharingUI_AddParticipants/ModelDelegate_SPI.swift", 64, 2, 21, 0);
  }

  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_100016234;

  return sub_10004CEF0();
}

uint64_t sub_100016234()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1000165E4;
  }

  else
  {
    v5 = sub_100016370;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100016370()
{
  v44 = v0;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v42 = *(v0 + 32);
  sub_10007AE0C();

  v4 = sub_10007AE1C();
  v5 = sub_10007B41C();
  v1, v6, v7, v8, v9, v10, v11, v12;
  v3, v13, v14, v15, v16, v17, v18, v19;
  v20 = os_log_type_enabled(v4, v5);
  v21 = *(v0 + 112);
  v23 = *(v0 + 88);
  v22 = *(v0 + 96);
  if (v20)
  {
    v24 = v2;
    v25 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_100037C08(v24, v1, &v43);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_100037C08(v42, v3, &v43);
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished user name (%s) & email (%s)", v25, 0x16u);
    swift_arrayDestroy();

    v2 = v24;

    (*(v22 + 8))(v21, v23);
  }

  else
  {

    (*(v22 + 8))(v21, v23);
  }

  (*(v0 + 72))(v2, v1, v42, v3, 0);

  v3, v26, v27, v28, v29, v30, v31, v32;
  v1, v33, v34, v35, v36, v37, v38, v39;

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1000165E4()
{
  v30 = v0;

  sub_10007AE0C();
  swift_errorRetain();
  v1 = sub_10007AE1C();
  v2 = sub_10007B3FC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    v0[6] = v3;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v9 = sub_10007B1AC();
    v11 = v10;
    v12 = sub_100037C08(v9, v10, &v29);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error finishing userNameAndEmail %s", v7, 0xCu);
    sub_10000585C(v8);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[11];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[9];
  v24 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  v25 = sub_10007AB7C();
  v26 = CKXPCSuitableError();

  v23(0, 0, 0, 0, v26);

  v27 = v0[1];

  return v27();
}

double sub_100016868@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000168F0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_10001698C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100016A84;

  return v6(a1);
}

uint64_t sub_100016A84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100016B7C(uint64_t a1)
{
  v1[16] = a1;
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v1[17] = swift_task_alloc();
  v2 = sub_10007AC4C();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_10007AE2C();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_10007B32C();
  v1[28] = sub_10007B31C();
  v5 = sub_10007B2EC();
  v1[29] = v5;
  v1[30] = v4;

  return _swift_task_switch(sub_100016D34, v5, v4);
}

uint64_t sub_100016D34(uint64_t a1)
{
  sub_10007AE0C();
  v2 = sub_10007AE1C();
  v3 = sub_10007B41C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "running fetchShareAndToleratePreshareErrors() for AddParticipants", v4, 2u);
  }

  v5 = v1[27];
  v6 = v1[21];
  v7 = v1[22];
  v8 = v1[18];
  v9 = v1[19];
  v10 = v1[17];

  v11 = *(v7 + 8);
  v1[31] = v11;
  v11(v5, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_100008824(v1[17], &unk_10009ED10, &qword_10007D310);
    v12 = 0;
  }

  else
  {
    v14 = v1[19];
    v13 = v1[20];
    v15 = v1[18];
    (*(v14 + 32))(v13, v1[17], v15);
    v16 = shareStatus(url:)();
    (*(v14 + 8))(v13, v15);
    v12 = ((v16 & 0x10000) == 0) & v16;
  }

  v17 = swift_task_alloc();
  v1[32] = v17;
  *v17 = v1;
  v17[1] = sub_100016F64;
  v18 = v1[16];

  return sub_10004DEF4(60, v18, v12);
}

uint64_t sub_100016F64()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_100017168;
  }

  else
  {
    v5 = sub_1000170A0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000170A0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 264) == 0;

  return v1(v2);
}

uint64_t sub_100017168()
{
  v184 = v0;
  *(v0 + 112) = *(v0 + 264);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (!swift_dynamicCast())
  {

    sub_10007AE0C();
    swift_errorRetain();
    v28 = sub_10007AE1C();
    v29 = sub_10007B3FC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 264);
      v179 = *(v0 + 184);
      v182 = *(v0 + 248);
      v31 = *(v0 + 168);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v183[0] = v33;
      *v32 = 136315138;
      *(v0 + 120) = v30;
      swift_errorRetain();
      v34 = sub_10007B1AC();
      v36 = v35;
      v37 = sub_100037C08(v34, v35, v183);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "fetchShareAndToleratePreshareErrors unknown non-SharingError error: %s", v32, 0xCu);
      sub_10000585C(v33);

      v182(v179, v31);
    }

    else
    {
      v65 = *(v0 + 248);
      v66 = *(v0 + 184);
      v67 = *(v0 + 168);

      v65(v66, v67);
    }

    sub_100005AB8();
    swift_allocError();
    *v68 = 0xD00000000000002BLL;
    *(v68 + 8) = 0x8000000100081450;
    *(v68 + 16) = xmmword_10007D6B0;
    *(v68 + 32) = 0x8000000100081480;
    *(v68 + 40) = 11;
    swift_willThrow();
    goto LABEL_14;
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 272) = v3;
  *(v0 + 280) = v2;
  v181 = v2;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 288) = v4;
  *(v0 + 296) = v5;
  v6 = *(v0 + 48);
  *(v0 + 304) = v6;
  v7 = *(v0 + 56);
  if (v7 != 5)
  {

    sub_10007AE0C();
    sub_100018B7C(v3, v181, v4, v5, v6, v7);
    v45 = sub_10007AE1C();
    v46 = sub_10007B3FC();
    sub_100018BDC(v3, v181, v4, v5, v6, v7, v47, v48);
    v174 = v46;
    v49 = os_log_type_enabled(v45, v46);
    v50 = *(v0 + 248);
    v177 = *(v0 + 168);
    v180 = *(v0 + 192);
    if (v49)
    {
      buf = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v183[0] = v173;
      *buf = 136315138;
      *(v0 + 64) = v3;
      *(v0 + 72) = v181;
      *(v0 + 80) = v4;
      *(v0 + 88) = v5;
      *(v0 + 96) = v6;
      *(v0 + 104) = v7;
      sub_100018B7C(v3, v181, v4, v5, v6, v7);
      v51 = sub_10007B1AC();
      v172 = v50;
      v52 = v3;
      v54 = v53;
      v55 = v5;
      v56 = sub_100037C08(v51, v53, v183);
      v57 = v54;
      v3 = v52;
      v57, v58, v59, v60, v61, v62, v63, v64;
      *(buf + 4) = v56;
      v5 = v55;
      _os_log_impl(&_mh_execute_header, v45, v174, "fetchShareAndToleratePreshareErrors unexpected SharingError: %s", buf, 0xCu);
      sub_10000585C(v173);

      v172(v180, v177);
    }

    else
    {

      v50(v180, v177);
    }

    sub_100005AB8();
    swift_allocError();
    *v69 = v3;
    *(v69 + 8) = v181;
    *(v69 + 16) = v4;
    *(v69 + 24) = v5;
    *(v69 + 32) = v6;
    *(v69 + 40) = v7;
    swift_willThrow();
    goto LABEL_14;
  }

  if (!v4)
  {
    __break(1u);
    return result;
  }

  v8 = v6;
  v9 = v4;

  sub_100027710(3);
  if (v10)
  {

    sub_100005AB8();
    swift_allocError();
    *v11 = v3;
    *(v11 + 8) = v181;
    *(v11 + 16) = v4;
    *(v11 + 24) = v5;
    *(v11 + 32) = v8;
    *(v11 + 40) = 5;
    swift_willThrow();
    sub_100018B7C(v3, v181, v4, v5, v8, 5u);

    v181, v12, v13, v14, v15, v16, v17, v18;
    v8, v19, v20, v21, v22, v23, v24, v25;
    sub_100018BDC(v3, v181, v4, v5, v8, 5, v26, v27);
LABEL_14:

    v70 = *(v0 + 8);
    v71 = 0;
LABEL_15:

    return v70(v71);
  }

  v175 = v8;
  v176 = v5;
  v178 = v4;
  v72 = v9;
  v73 = [v72 domain];
  v74 = sub_10007B19C();
  v76 = v75;

  v78 = sub_10007B19C();
  v84 = v77;
  v170 = v3;
  if (v74 == v78 && v76 == v77)
  {
    v77, v77, v78, v79, v80, v81, v82, v83;
    v76, v85, v86, v87, v88, v89, v90, v91;
LABEL_22:
    v107 = [v72 code];

    v108 = v107 == 20;
    goto LABEL_24;
  }

  v92 = sub_10007B6BC();
  v84, v93, v94, v95, v96, v97, v98, v99;
  v76, v100, v101, v102, v103, v104, v105, v106;
  if (v92)
  {
    goto LABEL_22;
  }

  v108 = 0;
LABEL_24:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 57) != 3)
  {
    if (v108)
    {
      v109 = 1;
    }

    else
    {
      v109 = 2;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 58) = v109;

    sub_10007AF4C();
  }

  if (v108)
  {

    v110 = 0;
  }

  else
  {
    v111 = v72;
    v112 = [v111 domain];
    v113 = sub_10007B19C();
    v115 = v114;

    v117 = sub_10007B19C();
    v123 = v116;
    if (v113 == v117 && v115 == v116)
    {
      v116, v116, v117, v118, v119, v120, v121, v122;
      v115, v124, v125, v126, v127, v128, v129, v130;
    }

    else
    {
      v131 = sub_10007B6BC();
      v123, v132, v133, v134, v135, v136, v137, v138;
      v115, v139, v140, v141, v142, v143, v144, v145;
      if ((v131 & 1) == 0)
      {

        v110 = 1;
        goto LABEL_37;
      }
    }

    v146 = [v111 code];

    v110 = v146 != 7;
  }

LABEL_37:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v0 + 59) & v108 & 1) == 0 || v110)
  {

    v181, v154, v155, v156, v157, v158, v159, v160;
    v175, v161, v162, v163, v164, v165, v166, v167;
    sub_100018BDC(v170, v181, v178, v176, v175, 5, v168, v169);

    v70 = *(v0 + 8);
    v71 = *(v0 + 264) == 0;
    goto LABEL_15;
  }

  sub_10007AE0C();
  v147 = sub_10007AE1C();
  v148 = sub_10007B41C();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    *v149 = 0;
    _os_log_impl(&_mh_execute_header, v147, v148, "starting folder sharing prep", v149, 2u);
  }

  v150 = *(v0 + 248);
  v151 = *(v0 + 208);
  v152 = *(v0 + 168);

  v150(v151, v152);
  v153 = swift_task_alloc();
  *(v0 + 312) = v153;
  *v153 = v0;
  v153[1] = sub_100017BF4;

  return sub_10004F0D8(0);
}

uint64_t sub_100017BF4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_100017F44;
  }

  else
  {
    v5 = sub_100017D30;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100017D30()
{

  sub_10007AE0C();
  v1 = sub_10007AE1C();
  v2 = sub_10007B41C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v46 = v0[34];
  v47 = v0[37];
  v7 = v0[31];
  v8 = v0[25];
  v9 = v0[21];
  if (v3)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "successfully completed folder sharing prep", v10, 2u);

    v6, v11, v12, v13, v14, v15, v16, v17;
    v4, v18, v19, v20, v21, v22, v23, v24;
    sub_100018BDC(v46, v6, v5, v47, v4, 5, v25, v26);
  }

  else
  {

    v4, v27, v28, v29, v30, v31, v32, v33;
    v6, v34, v35, v36, v37, v38, v39, v40;
    sub_100018BDC(v46, v6, v5, v47, v4, 5, v41, v42);
  }

  v7(v8, v9);

  v43 = v0[1];
  v44 = v0[33] == 0;

  return v43(v44);
}

uint64_t sub_100017F44()
{
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];

  v2, v6, v7, v8, v9, v10, v11, v12;

  v4, v13, v14, v15, v16, v17, v18, v19;
  sub_100018BDC(v5, v4, v3, v1, v2, 5, v20, v21);

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_100018054(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  __chkstk_darwin(v8 - 8);
  v56 = &v48 - v9;
  v52 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v55 = *(v52 - 1);
  v10 = __chkstk_darwin(v52);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v11;
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v53 = sub_10007AE2C();
  v15 = *(v53 - 8);
  __chkstk_darwin(v53);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  sub_1000187C8(a1, v14, &unk_10009ED10, &qword_10007D310);
  v18 = sub_10007AE1C();
  v19 = sub_10007B41C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v51 = a3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v49 = a1;
    v23 = v22;
    v57 = v22;
    *v21 = 136315138;
    sub_1000187C8(v14, v12, &unk_10009ED10, &qword_10007D310);
    v24 = sub_10007B1AC();
    v52 = a2;
    v50 = a4;
    v25 = v24;
    v26 = v12;
    v28 = v27;
    sub_100008824(v14, &unk_10009ED10, &qword_10007D310);
    v29 = sub_100037C08(v25, v28, &v57);
    v30 = v28;
    v12 = v26;
    v30, v31, v32, v33, v34, v35, v36, v37;
    *(v21 + 4) = v29;
    a4 = v50;
    a2 = v52;
    _os_log_impl(&_mh_execute_header, v18, v19, "Begin userNameAndEmail fileURL: %s", v21, 0xCu);
    sub_10000585C(v23);
    a1 = v49;

    a3 = v51;
  }

  else
  {

    sub_100008824(v14, &unk_10009ED10, &qword_10007D310);
  }

  (*(v15 + 8))(v17, v53);
  v38 = v56;
  sub_10007B33C();
  v39 = sub_10007B35C();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  sub_1000187C8(a1, v12, &unk_10009ED10, &qword_10007D310);
  sub_10007B32C();
  v40 = a2;

  v41 = sub_10007B31C();
  v42 = v12;
  v43 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v44 = (v54 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  *(v45 + 24) = &protocol witness table for MainActor;
  sub_100018608(v42, v45 + v43);
  *(v45 + v44) = a2;
  v46 = (v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v46 = a3;
  v46[1] = a4;
  sub_10000DAD0(0, 0, v38, &unk_10007D6C8, v45);
}

uint64_t sub_1000184C0()
{
  v1 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_10007AC4C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 16, v2 | 7);
}

uint64_t sub_100018608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018678(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000D9D8;

  return sub_100015E24(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1000187C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000057A0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100018830()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018868(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DACC;

  return sub_10001698C(a1, v4);
}

uint64_t sub_100018920(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D9D8;

  return sub_10001698C(a1, v4);
}

unint64_t sub_1000189E0()
{
  result = qword_10009E600;
  if (!qword_10009E600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009E600);
  }

  return result;
}

uint64_t sub_100018AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100018B7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xDu)
  {

    v7 = a3;
  }
}

void sub_100018BDC(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, void *a3, void *a4, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a5, void *a6, int64_t a7, int64_t a8)
{
  if (a6 <= 0xDu)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;

    a5, v11, v12, v13, v14, v15, v16, v17;
  }
}

BOOL sub_100018C60(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = *(result + 32);
  if (v3 == 1)
  {
    if (v2 == 1)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (*(result + 33) == 1)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v5 = 0;
  }

  else
  {
    if (v2 == 1)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v5 = *(result + 33);
  }

  v6 = v3 == v5;
  v4 = 1;
  if (!v6)
  {
    v4 = 2;
  }

LABEL_11:
  v7 = *(a2 + 16);
  if (!v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(a2 + 32);
  if ((v8 & 1) == 0)
  {
    if (v7 != 1)
    {
      v10 = *(a2 + 33);
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v7 != 1)
  {
    if (*(a2 + 33) == 1)
    {
      v9 = 0;
      return v4 == v9;
    }

    v10 = 0;
LABEL_19:
    v6 = v8 == v10;
    v9 = 1;
    if (!v6)
    {
      v9 = 2;
    }

    return v4 == v9;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_100018D38()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setQualityOfService:25];
  v1 = sub_10007B15C();
  [v0 setName:v1];

  qword_10009E6B8 = v0;
}

uint64_t sub_100018DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_100018DE4, 0, 0);
}

uint64_t sub_100018DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v1[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = sub_1000057A0(&qword_10009E718, &qword_10007DAB8);
  *v2 = v0;
  v2[1] = sub_100018EF0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000002BLL, 0x8000000100081640, sub_10001E53C, v1, v3);
}

uint64_t sub_100018EF0()
{

  return _swift_task_switch(sub_100019008, 0, 0);
}

uint64_t sub_10001902C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_1000057A0(&qword_10009E6F8, &unk_10007DA80);
  *(v2 + 32) = v3;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 64) = *(v3 + 48);
  *(v2 + 68) = *(v3 + 64);

  return _swift_task_switch(sub_1000190E4, 0, 0);
}

uint64_t sub_1000190E4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1000191D4;
  v5 = v0[4];
  v4 = v0[5];

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000026, 0x8000000100081580, sub_10001E314, v2, v5);
}

uint64_t sub_1000191D4()
{

  return _swift_task_switch(sub_1000192EC, 0, 0);
}

uint64_t sub_1000192EC()
{
  v1 = *(v0 + 68);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + *(v2 + 64));
  sub_100018608(v3 + *(v2 + 48), v4 + *(v0 + 64));
  *v4 = v5;
  *(v4 + v1) = v6;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100019390(uint64_t a1, uint64_t a2)
{
  v2[101] = a2;
  v2[95] = a1;
  v3 = sub_10007AC4C();
  v2[107] = v3;
  v4 = *(v3 - 8);
  v2[108] = v4;
  v2[109] = *(v4 + 64);
  v2[110] = swift_task_alloc();

  return _swift_task_switch(sub_10001945C, 0, 0);
}

uint64_t sub_10001945C()
{
  v1 = v0[110];
  v2 = v0[108];
  v3 = v0[107];
  (*(v2 + 16))(v1, v0[101], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[111] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  sub_1000057A0(&qword_10009E6E8, &qword_10007DA68);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, sub_100019584, v0 + 82);
}

uint64_t sub_1000195A0()
{
  v1 = v0[87];
  v2 = v0[88];
  v3 = v0[89];
  v4 = v0[90];
  v0[112] = v4;
  v5 = v0[91];
  v0[113] = v5;
  v6 = v0[94];
  v0[114] = v6;
  if (v6 || !v1)
  {
    v23 = v6;

    v24 = sub_1000197F8;
    v25 = v0 + 2;
    v26 = v0 + 87;
    v27 = v0 + 96;
    goto LABEL_12;
  }

  if (v3)
  {
    if (v5)
    {
      swift_bridgeObjectRetain_n();
      v7 = v1;

      v35._object = 0x8000000100081050;
      v35._countAndFlagsBits = 0xD000000000000017;
      v8 = sub_10007B24C(v35);
      v5, v9, v10, v11, v12, v13, v14, v15;
      if (v8)
      {
        v5, v16, v17, v18, v19, v20, v21, v22;
        v4 = v2;
        v5 = v3;
      }

      else
      {
        v3, v16, v17, v18, v19, v20, v21, v22;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v28 = v1;
LABEL_11:
  v0[116] = v5;
  v0[115] = v4;
  v29 = [objc_opt_self() localizedStringFromPersonNameComponents:v1 style:2 options:0];
  v30 = sub_10007B19C();
  v32 = v31;

  v0[117] = v30;
  v0[118] = v32;
  v24 = sub_100019740;
  v25 = v0 + 2;
  v26 = v0 + 87;
  v27 = v0 + 102;
LABEL_12:

  return _swift_asyncLet_finish(v25, v26, v24, v27);
}

uint64_t sub_10001975C()
{
  v5 = *(v0 + 920);
  v6 = *(v0 + 936);
  v1 = *(v0 + 912);
  v2 = *(v0 + 760);

  *v2 = v6;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100019814()
{
  v5 = *(v0 + 896);
  v1 = *(v0 + 912);
  v2 = *(v0 + 760);

  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000198A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_1000198C8, 0, 0);
}

uint64_t sub_1000198C8()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_1000057A0(&qword_10009E6E8, &qword_10007DA68);
  *v3 = v0;
  v3[1] = sub_1000199D0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000003ALL, 0x80000001000814E0, sub_10001E1C0, v2, v4);
}

uint64_t sub_1000199D0()
{

  return _swift_task_switch(sub_100019AE8, 0, 0);
}

uint64_t sub_100019AE8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  return (*(v0 + 8))();
}

uint64_t sub_100019B34()
{
  sub_1000057A0(&qword_10009E6C0, &qword_10007DA30);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 696, sub_100019BD8, v0 + 656);
}

uint64_t sub_100019BF4()
{
  v1 = v0[87];
  v0[92] = v0[88];
  v0[93] = v0[89];
  v2 = v0[90];
  v0[94] = v2;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3)
  {
    v4 = v2;

    v11 = sub_100019D64;
  }

  else
  {
    v5 = objc_opt_self();

    v6 = v1;
    v7 = [v5 localizedStringFromPersonNameComponents:v6 style:2 options:0];
    v8 = sub_10007B19C();
    v10 = v9;

    v0[95] = v8;
    v0[96] = v10;
    v11 = sub_100019D14;
  }

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, v11, v0 + 82);
}

uint64_t sub_100019D30()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 752);
  v3 = *(v0 + 728);
  v4 = *(v0 + 736);
  *v3 = *(v0 + 760);
  *(v3 + 8) = v1;
  *(v3 + 16) = v4;
  *(v3 + 32) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100019D80()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  v3 = *(v0 + 736);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v3;
  *(v2 + 32) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100019DAC(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  v3 = sub_1000057A0(&qword_10009E6C8, &qword_10007DA38);
  *v2 = v1;
  v2[1] = sub_100019E98;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, 0, 0, 0xD000000000000030, 0x80000001000814A0, sub_10001D0E8, 0, v3);
}

uint64_t sub_100019E98()
{

  return _swift_task_switch(sub_100019F94, 0, 0);
}

uint64_t sub_100019F94()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100019FB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DACC;

  return sub_100019DAC(a1);
}

uint64_t sub_10001A050(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_1000057A0(&qword_10009E708, &qword_10007DAA0);
  *(v2 + 32) = v3;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 64) = *(v3 + 48);

  return _swift_task_switch(sub_10001A100, 0, 0);
}

uint64_t sub_10001A100()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_10001A1F0;
  v5 = v0[4];
  v4 = v0[5];

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001FLL, 0x8000000100081600, sub_10001E42C, v2, v5);
}

uint64_t sub_10001A1F0()
{

  return _swift_task_switch(sub_10001A308, 0, 0);
}

uint64_t sub_10001A308()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 40) + *(*(v0 + 32) + 48));
  sub_100018608(*(v0 + 40), v2);
  *(v2 + v1) = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001A398(uint64_t a1, char a2)
{
  *(v2 + 1704) = a2;
  *(v2 + 1336) = a1;
  v3 = sub_10007AE2C();
  *(v2 + 1384) = v3;
  *(v2 + 1432) = *(v3 - 8);
  *(v2 + 1480) = swift_task_alloc();
  *(v2 + 1528) = swift_task_alloc();
  v4 = sub_10007AC4C();
  *(v2 + 1576) = v4;
  v5 = *(v4 - 8);
  *(v2 + 1624) = v5;
  *(v2 + 1632) = *(v5 + 64);
  *(v2 + 1640) = swift_task_alloc();
  *(v2 + 1648) = swift_task_alloc();

  return _swift_task_switch(sub_10001A4D8, 0, 0);
}

uint64_t sub_10001A4D8()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1704);
  v21 = *(v2 + 16);
  v21(v1, *(v0 + 1336), v3);
  v5 = *(v2 + 80);
  v6 = swift_allocObject();
  *(v0 + 1656) = v6;
  v20 = *(v2 + 32);
  v20(v6 + ((v5 + 16) & ~v5), v1, v3);
  swift_asyncLet_begin();
  if (v4)
  {
    *(v0 + 1680) = 0u;
    v7 = v0 + 16;
  }

  else
  {
    sub_10007AE0C();
    v8 = sub_10007AE1C();
    v9 = sub_10007B41C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "isForcedFolderSharing is false, so call doBRSharingRunCleanFolder", v10, 2u);
    }

    v11 = *(v0 + 1640);
    v12 = *(v0 + 1576);
    v13 = *(v0 + 1528);
    v14 = v8;
    v15 = *(v0 + 1432);
    v16 = *(v0 + 1384);
    v17 = *(v0 + 1336);

    (*(v15 + 8))(v13, v16);
    v21(v11, v17, v12);
    v18 = swift_allocObject();
    *(v0 + 1664) = v18;
    v20(v18 + ((v5 + 16) & ~v5), v11, v12);
    swift_asyncLet_begin();
    v7 = v0 + 656;
  }

  return _swift_asyncLet_get_throwing(v7);
}

uint64_t sub_10001A768(uint64_t a1, uint64_t a2)
{
  *(v3 + 1672) = v2;
  if (v2)
  {
    v4 = sub_10001A910;
    v5 = v3 + 656;
    v6 = v3 + 1344;
  }

  else
  {
    v4 = sub_10001A7A8;
    v5 = v3 + 656;
    v6 = v3 + 1440;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_10001A7C4()
{
  v0[211] = v0[208];
  v0[210] = &unk_10007DAE8;
  return _swift_asyncLet_get_throwing(v0 + 2);
}

uint64_t sub_10001A7FC(uint64_t a1, uint64_t a2)
{
  *(v3 + 1696) = v2;
  if (v2)
  {
    v4 = sub_10001ABAC;
    v5 = v3 + 16;
    v6 = v3 + 1536;
  }

  else
  {
    v4 = sub_10001A83C;
    v5 = v3 + 16;
    v6 = v3 + 1584;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_10001A858()
{
  v1 = v0[211];
  v2 = v0[210];

  sub_1000087A4(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001A964(uint64_t a1)
{
  v14 = v1[208];
  sub_10007AE0C();
  swift_errorRetain();
  v2 = sub_10007AE1C();
  v3 = sub_10007B3FC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "runFolderSharingPrepOperations clean or prep error: %@", v4, 0xCu);
    sub_100008824(v5, &qword_10009F570, &qword_10007DAF0);
  }

  v7 = v1[185];
  v8 = v1[179];
  v9 = v1[173];

  (*(v8 + 8))(v7, v9);
  v10 = sub_10007AB7C();
  sub_100005AB8();
  swift_allocError();
  *v11 = 0xD000000000000041;
  *(v11 + 8) = 0x8000000100081690;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v10;
  *(v11 + 40) = 3;
  swift_willThrow();

  sub_1000087A4(&unk_10007DAE8, v14);

  v12 = v1[1];

  return v12();
}

uint64_t sub_10001ABC8(uint64_t a1)
{
  v14 = v1[210];
  v15 = v1[211];
  sub_10007AE0C();
  swift_errorRetain();
  v2 = sub_10007AE1C();
  v3 = sub_10007B3FC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "runFolderSharingPrepOperations clean or prep error: %@", v4, 0xCu);
    sub_100008824(v5, &qword_10009F570, &qword_10007DAF0);
  }

  v7 = v1[185];
  v8 = v1[179];
  v9 = v1[173];

  (*(v8 + 8))(v7, v9);
  v10 = sub_10007AB7C();
  sub_100005AB8();
  swift_allocError();
  *v11 = 0xD000000000000041;
  *(v11 + 8) = 0x8000000100081690;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = v10;
  *(v11 + 40) = 3;
  swift_willThrow();

  sub_1000087A4(v14, v15);

  v12 = v1[1];

  return v12();
}

uint64_t sub_10001AE1C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_10001AF10;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD00000000000001ELL, 0x8000000100081730, sub_10001EAE8, v2, &type metadata for () + 8);
}

uint64_t sub_10001AF10()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_10001ED60;
  }

  else
  {

    v2 = sub_10001ED40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001B04C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_10001B144;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD00000000000002ALL, 0x80000001000816E0, sub_10001EAC8, v2, &type metadata for () + 8);
}

uint64_t sub_10001B144()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_10001B278;
  }

  else
  {

    v2 = sub_10001B260;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001B278()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10001B2DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10001B348(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = sub_1000057A0(&qword_10009E728, &unk_10007DAF8);
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v23 - v4;
  v6 = sub_10007AC4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10007AC2C();
  v10 = objc_allocWithZone(BRSharePrepFolderForSharing);
  sub_10007ABFC(v11);
  v13 = v12;
  v14 = [v10 initWithURL:v12];

  if (v14)
  {
    [v14 setQualityOfService:25];
    (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v23 = v14;
    v15 = v3;
    v16 = *(v3 + 16);
    v17 = v26;
    v16(v5, v25, v26);
    v18 = (*(v7 + 80) + 17) & ~*(v7 + 80);
    v19 = (v8 + *(v15 + 80) + v18) & ~*(v15 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v24;
    (*(v7 + 32))(v20 + v18, v9, v6);
    (*(v15 + 32))(v20 + v19, v5, v17);
    v21 = v23;
    aBlock[4] = sub_10001ED5C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001B2DC;
    aBlock[3] = &unk_1000963F0;
    v22 = _Block_copy(aBlock);

    [v21 setPrepFolderSharingCompletionBlock:v22];
    _Block_release(v22);
    if (qword_10009DF40 != -1)
    {
      swift_once();
    }

    [qword_10009E6B8 addOperation:v21];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_10007B2FC();
  }
}

void sub_10001B6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_1000057A0(&qword_10009E728, &unk_10007DAF8);
  v5 = *(v26 - 8);
  v24 = *(v5 + 64);
  __chkstk_darwin(v26);
  v7 = &v22[-v6];
  v8 = sub_10007AC4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_10007AC2C();
  v12 = objc_allocWithZone(BRShareProcessSubitems);
  sub_10007ABFC(v13);
  v15 = v14;
  v16 = [v12 initWithURL:v14 processType:a3];

  if (v16)
  {
    [v16 setQualityOfService:25];
    [v16 setMaxSharedSubitemsBeforeFailure:4];
    (*(v9 + 16))(&v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v8);
    v17 = v26;
    (*(v5 + 16))(v7, v25, v26);
    v18 = (*(v9 + 80) + 17) & ~*(v9 + 80);
    v19 = (v10 + *(v5 + 80) + v18) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    (*(v9 + 32))(v20 + v18, v11, v8);
    (*(v5 + 32))(v20 + v19, v7, v17);
    aBlock[4] = sub_10001EAE4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001B2DC;
    aBlock[3] = &unk_1000963A0;
    v21 = _Block_copy(aBlock);

    [v16 setProcessSubitemsCompletionBlock:v21];
    _Block_release(v21);
    if (qword_10009DF40 != -1)
    {
      swift_once();
    }

    [qword_10009E6B8 addOperation:v16];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_10007B2FC();
  }
}

uint64_t sub_10001BA5C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_10007AC0C();
    a1 = v2;
  }

  if (a1)
  {
    swift_errorRetain();
    sub_1000057A0(&qword_10009E728, &unk_10007DAF8);
    return sub_10007B2FC();
  }

  else
  {
    sub_1000057A0(&qword_10009E728, &unk_10007DAF8);
    return sub_10007B30C();
  }
}

void sub_10001BAF4(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a1;
  v5 = sub_1000057A0(&qword_10009E720, &qword_10007DAC0);
  v44 = *(v5 - 8);
  v42 = *(v44 + 64);
  __chkstk_darwin(v5);
  v43 = &v38 - v6;
  v7 = sub_10007AE2C();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v41 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v38 - v14;
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v48 = a2;
  sub_1000187C8(a2, &v38 - v16, &unk_10009ED10, &qword_10007D310);
  v18 = sub_10007AC4C();
  v19 = *(v18 - 8);
  v45 = *(v19 + 48);
  if (v45(v17, 1, v18) == 1)
  {
    sub_100008824(v17, &unk_10009ED10, &qword_10007D310);
    v39 = 0;
  }

  else
  {
    v39 = sub_10007AC2C();
    (*(v19 + 8))(v17, v18);
  }

  sub_10007AE0C();
  v20 = a3;
  v21 = sub_10007AE1C();
  v22 = sub_10007B41C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38 = v5;
    v24 = v23;
    *v23 = 67109120;
    *(v23 + 1) = [v20 allowsAccessRequests];

    _os_log_impl(&_mh_execute_header, v21, v22, "doBRSharingFileOrFolderSave about to save share with allowsAccessRequests: %{BOOL}d", v24, 8u);
    v5 = v38;
  }

  else
  {

    v21 = v20;
  }

  (*(v46 + 8))(v9, v47);
  v25 = v48;
  sub_1000187C8(v48, v15, &unk_10009ED10, &qword_10007D310);
  if (v45(v15, 1, v18) == 1)
  {
    v27 = 0;
  }

  else
  {
    sub_10007ABFC(v26);
    v27 = v28;
    (*(v19 + 8))(v15, v18);
  }

  v29 = [objc_allocWithZone(BRShareSaveOperation) initWithShare:v20 fileURL:v27];

  if (v29)
  {
    [v29 setQualityOfService:25];
    v30 = v41;
    sub_1000187C8(v25, v41, &unk_10009ED10, &qword_10007D310);
    v32 = v43;
    v31 = v44;
    (*(v44 + 16))(v43, v49, v5);
    v33 = (*(v40 + 80) + 17) & ~*(v40 + 80);
    v34 = (v11 + *(v31 + 80) + v33) & ~*(v31 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v39;
    sub_100018608(v30, v35 + v33);
    (*(v31 + 32))(v35 + v34, v32, v5);
    v54 = sub_10001E6F4;
    v55 = v35;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_10001C29C;
    v53 = &unk_100096300;
    v36 = _Block_copy(&aBlock);

    [v29 setShareSaveCompletionBlock:v36];
    _Block_release(v36);
    if (qword_10009DF40 != -1)
    {
      swift_once();
    }

    [qword_10009E6B8 addOperation:v29];
  }

  else
  {
    v37 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    aBlock = 0;
    v51 = v37;
    sub_10007B30C();
  }
}

uint64_t sub_10001C114(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  if (a3)
  {
    sub_1000187C8(a4, v16 - v9, &unk_10009ED10, &qword_10007D310);
    v11 = sub_10007AC4C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_10007AC0C();
      (*(v12 + 8))(v10, v11);
      if (a2)
      {
        goto LABEL_5;
      }

LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }

    sub_100008824(v10, &unk_10009ED10, &qword_10007D310);
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v13 = sub_10007AB7C();
LABEL_8:
  v16[0] = a1;
  v16[1] = v13;
  v14 = a1;
  sub_1000057A0(&qword_10009E720, &qword_10007DAC0);
  return sub_10007B30C();
}

void sub_10001C29C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10001C328(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = sub_1000057A0(&qword_10009E700, &qword_10007DA90);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29[-v3];
  v4 = sub_10007AC4C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = v6;
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000057A0(&qword_10009E6F8, &unk_10007DA80);
  __chkstk_darwin(v8);
  v10 = &v29[-v9];
  v11 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v11 - 8);
  v13 = &v29[-v12];
  v30 = sub_10007AC2C();
  v14 = objc_allocWithZone(BRShareCopyOperation);
  sub_10007ABFC(v15);
  v17 = v16;
  v18 = [v14 initWithURL:v16];

  if (v18)
  {
    [v18 setQualityOfService:25];
    (*(v5 + 16))(v7, a2, v4);
    v19 = v33;
    v20 = v32;
    v21 = v35;
    (*(v33 + 16))(v32, v34, v35);
    v22 = (*(v5 + 80) + 17) & ~*(v5 + 80);
    v23 = (v31 + *(v19 + 80) + v22) & ~*(v19 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v30;
    (*(v5 + 32))(v24 + v22, v7, v4);
    (*(v19 + 32))(v24 + v23, v20, v21);
    aBlock[4] = sub_10001E330;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C908;
    aBlock[3] = &unk_100096260;
    v25 = _Block_copy(aBlock);

    [v18 setRootShareCopyCompletionBlock:v25];
    _Block_release(v25);
    if (qword_10009DF40 != -1)
    {
      swift_once();
    }

    [qword_10009E6B8 addOperation:v18];
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
    v26 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    v27 = *(v8 + 48);
    v28 = *(v8 + 64);
    *v10 = 0;
    sub_100018608(v13, v10 + v27);
    *(v10 + v28) = v26;
    sub_10007B30C();
  }
}

uint64_t sub_10001C790(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1000057A0(&qword_10009E6F8, &unk_10007DA80);
  __chkstk_darwin(v8);
  v10 = (&v19 - v9);
  v11 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  if (a4)
  {
    sub_10007AC0C();
  }

  sub_1000187C8(a2, v13, &unk_10009ED10, &qword_10007D310);
  if (a3)
  {
    v14 = sub_10007AB7C();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 48);
  v16 = *(v8 + 64);
  *v10 = a1;
  sub_100018608(v13, v10 + v15);
  *(v10 + v16) = v14;
  v17 = a1;
  sub_1000057A0(&qword_10009E700, &qword_10007DA90);
  return sub_10007B30C();
}

uint64_t sub_10001C908(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a3)
  {
    sub_10007AC1C();
    v12 = sub_10007AC4C();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_10007AC4C();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = a2;
  v15 = a4;
  v11(a2, v10, a4);

  return sub_100008824(v10, &unk_10009ED10, &qword_10007D310);
}

void sub_10001CA7C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = sub_1000057A0(&qword_10009E6F0, &qword_10007DA70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-v5];
  v7 = sub_10007AC4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_10007AC2C();
  sub_10007ABFC(v11);
  v22 = v12;
  (*(v8 + 16))(v10, a2, v7);
  v13 = v3;
  (*(v4 + 16))(v6, v21, v3);
  v14 = (*(v8 + 80) + 17) & ~*(v8 + 80);
  v15 = (v9 + *(v4 + 80) + v14) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v20;
  (*(v8 + 32))(v16 + v14, v10, v7);
  (*(v4 + 32))(v16 + v15, v6, v13);
  aBlock[4] = sub_10001E1DC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001CEE4;
  aBlock[3] = &unk_100096210;
  v17 = _Block_copy(aBlock);

  v18 = v22;
  BRSharingCopyCurrentUserNameAndDisplayHandleForURL();
  _Block_release(v17);
}

uint64_t sub_10001CD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v23 = a4;
  v24 = a6;
  v15 = sub_1000057A0(&qword_10009E6D8, &qword_10007DA48);
  __chkstk_darwin(v15 - 8);
  v17 = &v23 - v16;
  if (a9)
  {
    sub_10007AC0C();
  }

  sub_1000187C8(a1, v17, &qword_10009E6D8, &qword_10007DA48);
  v18 = sub_10007AAEC();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    v20 = sub_10007AACC();
    (*(v19 + 8))(v17, v18);
  }

  if (a8)
  {
    v21 = sub_10007AB7C();
  }

  else
  {
    v21 = 0;
  }

  v25 = v20;
  v26 = a2;
  v27 = a3;
  v28 = v23;
  v29 = a5;
  v30 = v24;
  v31 = a7;
  v32 = v21;

  sub_1000057A0(&qword_10009E6F0, &qword_10007DA70);
  return sub_10007B30C();
}

uint64_t sub_10001CEE4(uint64_t a1, uint64_t a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a5, void *a6)
{
  v12 = sub_1000057A0(&qword_10009E6D8, &qword_10007DA48);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v47 = *(a1 + 32);
  if (a2)
  {
    sub_10007AADC();
    v15 = sub_10007AAEC();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = sub_10007AAEC();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  if (a3)
  {
    v17 = sub_10007B19C();
    a3 = v18;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v19 = 0;
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  v17 = 0;
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v19 = sub_10007B19C();
  a4 = v20;
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = sub_10007B19C();
  a5 = v22;
LABEL_11:

  v23 = a6;
  v47(v14, v17, a3, v19, a4, v21, a5, a6);

  a5, v24, v25, v26, v27, v28, v29, v30;
  a4, v31, v32, v33, v34, v35, v36, v37;
  a3, v38, v39, v40, v41, v42, v43, v44;
  return sub_100008824(v14, &qword_10009E6D8, &qword_10007DA48);
}

void sub_10001D0E8(uint64_t a1)
{
  v2 = sub_1000057A0(&qword_10009E6D0, &qword_10007DA40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  sub_100005C8C(0, &qword_10009E390, OS_dispatch_queue_ptr);
  v6 = sub_10007B44C();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_10001D4C8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001D56C;
  aBlock[3] = &unk_100096198;
  v9 = _Block_copy(aBlock);

  BRSharingCopyCurrentUserNameAndDisplayHandle();
  _Block_release(v9);
}

uint64_t sub_10001D2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000057A0(&qword_10009E6D8, &qword_10007DA48);
  __chkstk_darwin(v8 - 8);
  v10 = v16 - v9;
  sub_1000187C8(a1, v16 - v9, &qword_10009E6D8, &qword_10007DA48);
  v11 = sub_10007AAEC();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_10007AACC();
    (*(v12 + 8))(v10, v11);
  }

  if (a4)
  {
    v14 = sub_10007AB7C();
  }

  else
  {
    v14 = 0;
  }

  v16[0] = v13;
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = v14;

  sub_1000057A0(&qword_10009E6D0, &qword_10007DA40);
  return sub_10007B30C();
}

uint64_t sub_10001D434()
{
  v1 = sub_1000057A0(&qword_10009E6D0, &qword_10007DA40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001D4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000057A0(&qword_10009E6D0, &qword_10007DA40);

  return sub_10001D2B4(a1, a2, a3, a4);
}

uint64_t sub_10001D56C(uint64_t a1, uint64_t a2, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a3, void *a4)
{
  v8 = sub_1000057A0(&qword_10009E6D8, &qword_10007DA48);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_10007AADC();
    v12 = sub_10007AAEC();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_10007AAEC();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  if (a3)
  {
    v14 = sub_10007B19C();
    a3 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = a4;
  v11(v10, v14, a3, a4);

  a3, v17, v18, v19, v20, v21, v22, v23;
  return sub_100008824(v10, &qword_10009E6D8, &qword_10007DA48);
}

uint64_t sub_10001D6F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10001D710(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v3 = sub_1000057A0(&qword_10009E710, &qword_10007DAA8);
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  __chkstk_darwin(v3);
  v56 = &v49 - v5;
  v6 = sub_10007AC4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v8;
  v9 = sub_1000057A0(&qword_10009E708, &qword_10007DAA0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v53 = sub_10007AC2C();
  sub_10007ABFC(v15);
  v17 = v16;
  aBlock[0] = 0;
  v18 = [v16 br_typeIdentifierWithError:aBlock];

  v19 = aBlock[0];
  if (v18)
  {
    v50 = v9;
    v51 = v4;
    v52 = v3;
    sub_10007B19C();
    v21 = v20;
    v22 = v19;

    v23 = objc_allocWithZone(BRShareCopyShareURLOperation);
    sub_10007ABFC(v24);
    v26 = v25;
    v27 = sub_10007B15C();
    v21, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v23 initWithFileURL:v26 documentType:v27];

    if (v35)
    {
      [v35 setQualityOfService:25];
      v36 = v54;
      (*(v7 + 16))(v54, a2, v6);
      v38 = v56;
      v37 = v57;
      v39 = v52;
      (*(v57 + 16))(v56, v58, v52);
      v40 = (*(v7 + 80) + 17) & ~*(v7 + 80);
      v41 = (v55 + *(v37 + 80) + v40) & ~*(v37 + 80);
      v42 = swift_allocObject();
      v42[16] = v53;
      (*(v7 + 32))(&v42[v40], v36, v6);
      (*(v37 + 32))(&v42[v41], v38, v39);
      aBlock[4] = sub_10001E448;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001DDF4;
      aBlock[3] = &unk_1000962B0;
      v43 = _Block_copy(aBlock);

      [v35 setCopyShareURLCompletionBlock:v43];
      _Block_release(v43);
      if (qword_10009DF40 != -1)
      {
        swift_once();
      }

      [qword_10009E6B8 addOperation:v35];
    }

    else
    {
      (*(v7 + 56))(v14, 1, 1, v6);
      v47 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
      v48 = *(v50 + 48);
      sub_100018608(v14, v11);
      *&v11[v48] = v47;
      sub_10007B30C();
    }
  }

  else
  {
    v44 = aBlock[0];
    sub_10007AB8C();

    swift_willThrow();
    (*(v7 + 56))(v14, 1, 1, v6);
    v45 = sub_10007AB7C();
    v46 = *(v9 + 48);
    sub_100018608(v14, v11);
    *&v11[v46] = v45;
    sub_10007B30C();
  }
}

uint64_t sub_10001DC94(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1000057A0(&qword_10009E708, &qword_10007DAA0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  if (a3)
  {
    sub_10007AC0C();
  }

  sub_1000187C8(a1, v11, &unk_10009ED10, &qword_10007D310);
  if (a2)
  {
    v12 = sub_10007AB7C();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v6 + 48);
  sub_100018608(v11, v8);
  *&v8[v13] = v12;
  sub_1000057A0(&qword_10009E710, &qword_10007DAA8);
  return sub_10007B30C();
}

uint64_t sub_10001DDF4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_10007AC1C();
    v10 = sub_10007AC4C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10007AC4C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100008824(v8, &unk_10009ED10, &qword_10007D310);
}

id sub_10001DF48()
{
  v0 = objc_opt_self();
  if (![v0 mightHaveDataSeparatedAccountDescriptor])
  {
    return 0;
  }

  result = [v0 allLoggedInAccountDescriptors];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_100005C8C(0, &qword_10009E6E0, BRAccountDescriptor_ptr);
  v3 = sub_10007B2AC();

  if (!(v3 >> 62))
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = sub_10007B64C();
  if (!v11)
  {
LABEL_19:
    v3, v4, v5, v6, v7, v8, v9, v10;
    return 0;
  }

LABEL_5:
  v12 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v13 = sub_10007B5DC();
    }

    else
    {
      if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v13 = *(v3 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v13 isDataSeparated])
    {
      break;
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_19;
    }
  }

  v3, v16, v17, v18, v19, v20, v21, v22;
  v23 = [v14 accountIdentifier];

  if (!v23)
  {
    return 0;
  }

  v24 = sub_10007B19C();

  return v24;
}

uint64_t sub_10001E0E4(uint64_t a1)
{
  v4 = *(sub_10007AC4C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DACC;

  return sub_1000198A8(a1, v1 + v5);
}

uint64_t sub_10001E1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10007AC4C();
  sub_1000057A0(&qword_10009E6F0, &qword_10007DA70);
  return sub_10001CD20(a1, a2, a3, a4, a5, a6, a7, a8, *(v8 + 16));
}

uint64_t sub_10001E330(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10007AC4C();
  sub_1000057A0(&qword_10009E700, &qword_10007DA90);
  v7 = *(v3 + 16);

  return sub_10001C790(a1, a2, a3, v7);
}

uint64_t sub_10001E448(uint64_t a1, uint64_t a2)
{
  sub_10007AC4C();
  sub_1000057A0(&qword_10009E710, &qword_10007DAA8);
  v5 = *(v2 + 16);

  return sub_10001DC94(a1, a2, v5);
}

uint64_t sub_10001E544()
{
  v1 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1000057A0(&qword_10009E720, &qword_10007DAC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_10007AC4C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

uint64_t sub_10001E6F4(void *a1, uint64_t a2)
{
  v5 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  sub_1000057A0(&qword_10009E720, &qword_10007DAC0);
  v7 = *(v2 + 16);

  return sub_10001C114(a1, a2, v7, v2 + v6);
}

id sub_10001E7F4(uint64_t a1)
{
  sub_10007ABFC(__stack_chk_guard);
  v2 = v1;
  v3 = BRSharingCreateShareForItemAtURL();

  if (!v3)
  {
    v4 = 0;
  }

  return v3;
}

uint64_t sub_10001E888(uint64_t a1)
{
  v4 = *(sub_10007AC4C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DACC;

  return sub_10001ADFC(a1, v1 + v5);
}

uint64_t sub_10001E964()
{
  v1 = sub_10007AC4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001E9EC(uint64_t a1)
{
  v4 = *(sub_10007AC4C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D9D8;

  return sub_10001B02C(a1, v1 + v5);
}

uint64_t sub_10001EAF0(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_10007AC4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 17) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_1000057A0(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return _swift_deallocObject(v2, v13 + v14, v15 | 7);
}

uint64_t sub_10001EC44(uint64_t a1)
{
  sub_10007AC4C();
  sub_1000057A0(&qword_10009E728, &unk_10007DAF8);
  return sub_10001BA5C(a1, *(v1 + 16));
}

id sub_10001ED64()
{
  v0 = sub_10007AE2C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v39 - v5;
  v7 = objc_allocWithZone(ISIcon);
  v8 = sub_10007B15C();
  v9 = [v7 initWithType:v8];

  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = [objc_allocWithZone(ISImageDescriptor) initWithSize:128.0 scale:{128.0, v12}];
  v14 = [v9 imageForDescriptor:v13];
  if (!v14)
  {

    return 0;
  }

  v15 = v14;
  v16 = v15;
  if ([v15 placeholder])
  {
    v17 = [v9 prepareImageForDescriptor:v13];
    v18 = v15;
    if (v17)
    {
      v19 = v17;

      v18 = v19;
    }

    sub_10007AE0C();
    v16 = v18;
    v20 = sub_10007AE1C();
    v21 = sub_10007B41C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v40 = v0;
      v23 = v22;
      *v22 = 67109120;
      *(v22 + 1) = [v16 placeholder];

      _os_log_impl(&_mh_execute_header, v20, v21, "iOS appIcon placeholder;  did prepareImage(forDescriptor:), is still placeHolder: %{BOOL}d", v23, 8u);
      v0 = v40;
    }

    else
    {

      v20 = v16;
    }

    (*(v1 + 8))(v6, v0);
  }

  sub_10007AE0C();
  v25 = v16;
  v26 = sub_10007AE1C();
  v27 = sub_10007B41C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v4;
    v30 = v15;
    v31 = v13;
    v32 = v9;
    v33 = v1;
    v34 = v0;
    v35 = v29;
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v36 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "iOS appIcon image: %@", v28, 0xCu);
    sub_10001F1A4(v35);
    v0 = v34;
    v1 = v33;
    v9 = v32;
    v13 = v31;
    v15 = v30;
    v4 = v40;
  }

  (*(v1 + 8))(v4, v0);
  result = [v25 CGImage];
  if (result)
  {
    v38 = result;
    v24 = [objc_allocWithZone(UIImage) initWithCGImage:result];

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001F1A4(uint64_t a1)
{
  v2 = sub_1000057A0(&qword_10009F570, &qword_10007DAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SharingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 8)
  {
    v8 = v7 - 7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10001F364(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    return v1 - 7;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10001F378(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 7;
  }

  return result;
}