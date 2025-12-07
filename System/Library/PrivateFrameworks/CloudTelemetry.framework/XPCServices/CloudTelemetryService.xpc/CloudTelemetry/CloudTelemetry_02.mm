void sub_10002BB90(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v24 = a7;
  v21 = a1;
  v22 = a6;
  v25 = a3;
  v8 = sub_10000712C(&qword_10009EB48, &qword_10007D380);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &isa - v11;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  aBlock[0] = 0;
  sub_10002C4AC();
  sub_100079D40();
  if (aBlock[0])
  {

    isa = sub_100079D30().super.isa;

    v13 = sub_100079DF0();
    v14 = sub_100079D30().super.isa;

    (*(v9 + 16))(v12, v21, v8);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    v17 = v24;
    *(v16 + 16) = v22;
    *(v16 + 24) = v17;
    (*(v9 + 32))(v16 + v15, v12, v8);
    *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
    aBlock[4] = sub_10002C660;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BE68;
    aBlock[3] = &unk_100096A90;
    v18 = _Block_copy(aBlock);

    v19 = isa;
    [v25 handleEvent:isa sender:v13 ruleConfig:v14 withReplyBlock:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002BE68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10002BEBC()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002BF0C(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100007838;

  return v6(a1);
}

unint64_t sub_10002C02C()
{
  v1 = *v0;
  sub_10007A3B0(24);

  sub_100079F00(v1[7]);
  return 0xD000000000000016;
}

uint64_t sub_10002C09C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000712C(&qword_10009EA60, &unk_10007D2C0);
  v35 = v4;
  result = sub_10007A4C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_10002C340()
{
  v1 = v0;
  sub_10000712C(&qword_10009EA60, &unk_10007D2C0);
  v2 = *v0;
  v3 = sub_10007A4B0();
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

        result = v20;
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

unint64_t sub_10002C4AC()
{
  result = qword_10009EB80;
  if (!qword_10009EB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009EB80);
  }

  return result;
}

unint64_t sub_10002C4F8(uint64_t a1, uint64_t a2)
{
  result = qword_10009EA70;
  if (!qword_10009EA70)
  {
    type metadata accessor for BackendLocal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EA70);
  }

  return result;
}

uint64_t sub_10002C584()
{
  v1 = sub_10000712C(&qword_10009EB48, &qword_10007D380);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10002C660(char a1)
{
  sub_10000712C(&qword_10009EB48, &qword_10007D380);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (qword_1000A2888 != -1)
  {
    swift_once();
  }

  v5 = sub_100079BA0();
  sub_1000070F4(v5, qword_1000A6CA0);

  v6 = sub_100079B80();
  v7 = sub_10007A150();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_100006B00(v4, v3, &v11);
    *(v8 + 12) = 1026;
    *(v8 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "TTR rule %{public}s processed event with status: %{BOOL,public}d", v8, 0x12u);
    sub_1000070A8(v9);
  }

  sub_10000712C(&qword_10009EB48, &qword_10007D380);
  return sub_10007A070();
}

uint64_t sub_10002C830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C848()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6CD0);
  sub_1000070F4(v0, qword_1000A6CD0);
  return sub_100079B90();
}

void sub_10002C8C4(_xpc_connection_s *a1)
{
  v2 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  __chkstk_darwin(v2 - 8);
  v4 = v36 - v3;
  if (qword_1000A2990 != -1)
  {
    swift_once();
  }

  v5 = sub_100079BA0();
  sub_1000070F4(v5, qword_1000A6CD0);
  v6 = sub_100079B80();
  v7 = sub_10007A190();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "received client connection.", v8, 2u);
  }

  memset(&v36[2], 0, 32);
  xpc_connection_get_audit_token();
  token = *&v36[2];
  v9 = SecTaskCreateWithAuditToken(0, &token);
  if (v9)
  {
    v10 = v9;
    v11 = sub_100079DF0();
    v12 = SecTaskCopyValueForEntitlement(v10, v11, 0);

    if (v12)
    {
      v36[1] = v12;
      swift_unknownObjectRetain_n();
      if (swift_dynamicCast())
      {
        v13 = *token.val;
        v14 = *&token.val[2];

        v15 = sub_100079B80();
        v16 = sub_10007A190();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v36[0] = v14;
          v18 = v17;
          v19 = swift_slowAlloc();
          *token.val = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_100006B00(v13, v36[0], &token);
          _os_log_impl(&_mh_execute_header, v15, v16, "setting up XPCService for %s.", v18, 0xCu);
          sub_1000070A8(v19);

          v14 = v36[0];
        }

        v20 = dispatch_semaphore_create(0);
        v21 = sub_10007A0A0();
        (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
        v22 = swift_allocObject();
        v22[2] = 0;
        v22[3] = 0;
        v22[4] = v13;
        v22[5] = v14;
        v22[6] = v20;

        v23 = v20;
        sub_100005244(0, 0, v4, &unk_10007D390, v22);

        sub_10007A270();
        v24 = sub_100079B80();
        v25 = sub_10007A190();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "starting client connection.", v26, 2u);
        }

        swift_beginAccess();
        if (qword_1000A6CC8)
        {

          Listener.handle(message:)(a1);

          swift_unknownObjectRelease_n();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v33 = sub_100079B80();
        v34 = sub_10007A170();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Invalid bundle id. Canceling xpc connection.", v35, 2u);
        }

        xpc_connection_cancel(a1);
        swift_unknownObjectRelease_n();
      }
    }

    else
    {
      v30 = sub_100079B80();
      v31 = sub_10007A170();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Missing bundle id. Canceling xpc connection.", v32, 2u);
      }

      xpc_connection_cancel(a1);
    }
  }

  else
  {
    v27 = sub_100079B80();
    v28 = sub_10007A170();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to extract entitlements. Canceling xpc connection", v29, 2u);
    }

    xpc_connection_cancel(a1);
  }
}

uint64_t sub_10002CECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_10002CEF0, 0, 0);
}

uint64_t sub_10002CEF0()
{
  swift_beginAccess();
  if (qword_1000A6CC8)
  {
    sub_10007A280();
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[6];
    type metadata accessor for Listener();

    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_10002D018;
    v5 = v0[5];

    return Listener.__allocating_init(mode:clientBundleID:)(1, v5, v3);
  }
}

uint64_t sub_10002D018(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_10002D164, 0, 0);
  }
}

uint64_t sub_10002D164()
{
  qword_1000A6CC8 = *(v0 + 72);

  sub_10007A280();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002D1DC(uint64_t a1)
{
  v1 = swift_unknownObjectRetain();
  sub_10002C8C4(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10002D234(__n128 a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_10002D27C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_10002CECC(v5, v6, v7, v2, v3, v4);
}

void sub_10002D324()
{
  if (qword_1000A2990 != -1)
  {
    swift_once();
  }

  v0 = sub_100079BA0();
  sub_1000070F4(v0, qword_1000A6CD0);
  v1 = sub_100079B80();
  v2 = sub_10007A190();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "starting CloudTelemetryService XPCService.", v3, 2u);
  }

  xpc_main(sub_10002D1DC);
}

uint64_t sub_10002D410(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  sub_10000751C(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  sub_1000315EC(v5, sub_1000304DC, 0, isUniquelyReferenced_nonNull_native, &v8);

  *(v2 + 16) = v8;
  return result;
}

uint64_t sub_10002D4BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for ServiceEventValue(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v7);
  v12 = &v61 - v11;
  __chkstk_darwin(v10);
  v14 = &v61 - v13;
  sub_10000978C(a1, v75);
  if (swift_dynamicCast())
  {
    v15 = *(&v73 + 1);
    *a2 = v73;
    a2[1] = v15;
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return sub_1000070A8(v75);
  }

  v68 = v14;
  sub_100007670(0, &qword_10009EC80, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v16 = v73;
    if (kCFBooleanTrue)
    {
      v17 = v73 == kCFBooleanTrue;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {

      *a2 = 1;
      goto LABEL_16;
    }

    if (kCFBooleanFalse)
    {
      if (v16 == kCFBooleanFalse)
      {
        *a2 = 0;
        goto LABEL_16;
      }
    }
  }

  if (swift_dynamicCast())
  {
    *a2 = v73;
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    *a2 = v73;
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    *a2 = v73;
    goto LABEL_16;
  }

  sub_10000712C(&qword_10009E290, qword_10007BD90);
  v19 = swift_dynamicCast();
  v65 = v6;
  if (!v19)
  {
    sub_10000712C(&qword_10009EC90, &qword_10007D678);
    if (swift_dynamicCast())
    {
      v61 = a2;
      v62 = v5;
      v54 = v70;
      v55 = sub_100030C68(0, *(v70 + 16), 0, _swiftEmptyArrayStorage);
      v56 = *(v54 + 16);
      if (v56)
      {
        v57 = 0;
        v58 = v54 + 32;
        while (1)
        {
          if (v57 >= *(v54 + 16))
          {
            goto LABEL_67;
          }

          sub_10000978C(v58, &v73);
          sub_10002D4BC(&v73, v9);
          if (v2)
          {
            break;
          }

          sub_1000070A8(&v73);
          v60 = v55[2];
          v59 = v55[3];
          if (v60 >= v59 >> 1)
          {
            v55 = sub_100030C68((v59 > 1), v60 + 1, 1, v55);
          }

          ++v57;
          v55[2] = v60 + 1;
          sub_100012C24(v9, v55 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v60);
          v58 += 32;
          if (v56 == v57)
          {
            goto LABEL_62;
          }
        }

        sub_1000070A8(&v73);
      }

      else
      {
LABEL_62:

        *v61 = v55;
        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_10003287C();
      swift_allocError();
      swift_willThrow();
    }

    return sub_1000070A8(v75);
  }

  v61 = a2;
  v67 = v2;
  v20 = v75[6];
  v62 = v5;
  v21 = sub_100079D70();
  v22 = 0;
  v24 = v20 + 64;
  v23 = *(v20 + 64);
  v63 = v20;
  v25 = 1 << *(v20 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v66 = v12;
  v64 = v20 + 64;
  while (v27)
  {
    v29 = v22;
LABEL_35:
    v32 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v33 = v32 | (v29 << 6);
    v34 = (*(v63 + 48) + 16 * v33);
    v36 = *v34;
    v35 = v34[1];
    sub_10000978C(*(v63 + 56) + 32 * v33, v69);
    *&v70 = v36;
    *(&v70 + 1) = v35;
    sub_100032BD8(v69, &v71);

    v31 = v29;
LABEL_36:
    v73 = v70;
    v74[0] = v71;
    v74[1] = v72;
    v37 = *(&v70 + 1);
    v38 = v68;
    if (!*(&v70 + 1))
    {

      *v61 = v21;
      swift_storeEnumTagMultiPayload();
      return sub_1000070A8(v75);
    }

    v39 = v73;
    sub_100032BD8(v74, &v70);
    v40 = v67;
    sub_10002D4BC(&v70, v38);
    v67 = v40;
    if (v40)
    {
      sub_1000070A8(&v70);

      return sub_1000070A8(v75);
    }

    sub_100012C24(v38, v66);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = v21;
    v43 = sub_10000A0FC(v39, v37);
    v44 = v21[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_65;
    }

    v47 = v42;
    if (v21[3] >= v46)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v42)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1000308CC();
        if (v47)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_10003057C(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_10000A0FC(v39, v37);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_68;
      }

      v43 = v48;
      if (v47)
      {
LABEL_24:

        v21 = *&v69[0];
        sub_100032B04(v66, *(*&v69[0] + 56) + *(v65 + 72) * v43);
        sub_1000070A8(&v70);
        goto LABEL_25;
      }
    }

    v21 = *&v69[0];
    *(*&v69[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
    v50 = (v21[6] + 16 * v43);
    *v50 = v39;
    v50[1] = v37;
    sub_100012C24(v66, v21[7] + *(v65 + 72) * v43);
    sub_1000070A8(&v70);
    v51 = v21[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_66;
    }

    v21[2] = v53;
LABEL_25:
    v22 = v31;
    v24 = v64;
  }

  if (v28 <= v22 + 1)
  {
    v30 = v22 + 1;
  }

  else
  {
    v30 = v28;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v29 >= v28)
    {
      v27 = 0;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      goto LABEL_36;
    }

    v27 = *(v24 + 8 * v29);
    ++v22;
    if (v27)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t sub_10002DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000319BC(a2, a3, a4, a5);
  if (v5)
  {
    return v7;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10002DCBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_10003236C(v13, v10, type metadata accessor for ServiceEventValue);
        sub_10003236C(v14, v7, type metadata accessor for ServiceEventValue);
        v16 = sub_100031CFC(v10, v7);
        sub_1000323D4(v7, type metadata accessor for ServiceEventValue);
        sub_1000323D4(v10, type metadata accessor for ServiceEventValue);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10002DE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v11 = sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  v12 = __chkstk_darwin(v11 - 8);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = a2;
  v52 = (&v49 - v15);
  v16 = 0;
  v50 = a1;
  v17 = *(a1 + 64);
  v49 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v54 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v16 << 6);
    v23 = v53;
LABEL_16:
    v28 = (*(v50 + 48) + 16 * v22);
    v29 = *v28;
    v30 = v28[1];
    sub_10003236C(*(v50 + 56) + *(v5 + 72) * v22, v10, type metadata accessor for ServiceEventValue);
    v31 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    v32 = *(v31 + 48);
    *v23 = v29;
    v23[1] = v30;
    sub_100012C24(v10, v23 + v32);
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);

LABEL_17:
    v33 = v52;
    sub_100032BF0(v23, v52, &qword_10009E368, &qword_10007D3C0);
    v34 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = v10;
    v38 = v5;
    v39 = *(v34 + 48);
    v41 = *v33;
    v40 = v33[1];
    sub_100012C24(v33 + v39, v8);
    v42 = v51;
    v43 = sub_10000A0FC(v41, v40);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      sub_1000323D4(v8, type metadata accessor for ServiceEventValue);
      return 0;
    }

    v46 = *(v42 + 56);
    v5 = v38;
    v10 = v37;
    sub_10003236C(v46 + *(v38 + 72) * v43, v37, type metadata accessor for ServiceEventValue);
    v47 = sub_100031CFC(v37, v8);
    sub_1000323D4(v37, type metadata accessor for ServiceEventValue);
    result = sub_1000323D4(v8, type metadata accessor for ServiceEventValue);
    v20 = v54;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  v23 = v53;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v48 = sub_10000712C(&unk_10009EB70, qword_10007C110);
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v54 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v49 + 8 * v26);
    ++v16;
    if (v27)
    {
      v54 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002E2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XPCObject(0);
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ServiceEventValue(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003236C(a1, v6, type metadata accessor for XPCObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1000323D4(a1, type metadata accessor for XPCObject);
        *v10 = *v6;
        goto LABEL_19;
      }

      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 8)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_29;
      }

      sub_1000323D4(a1, type metadata accessor for XPCObject);
      v22 = *(v6 + 1);
      *v10 = *v6;
      *(v10 + 1) = v22;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v14 = 0;
      goto LABEL_20;
    }

LABEL_12:
    sub_1000323D4(a1, type metadata accessor for XPCObject);
    *v10 = *v6;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 9)
  {
    sub_1000323D4(a1, type metadata accessor for XPCObject);
    v23 = sub_100079A70();
    (*(*(v23 - 8) + 32))(v10, v6, v23);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 11)
  {
    if (EnumCaseMultiPayload == 12)
    {
      v12 = *v6;
      v39 = sub_100032434(_swiftEmptyArrayStorage);
      count = xpc_dictionary_get_count(v12);
      sub_10000712C(&unk_10009EB50, &unk_10007D3B0);
      sub_100079D80(count);
      v14 = swift_allocObject();
      *(v14 + 16) = &v39;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_100032608;
      *(v15 + 24) = v14;
      v37 = sub_100032638;
      v38 = v15;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_10002F120;
      v36 = &unk_100096B50;
      v16 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      xpc_dictionary_apply(v12, v16);
      _Block_release(v16);
      swift_unknownObjectRelease_n();
      sub_1000323D4(a1, type metadata accessor for XPCObject);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        *v10 = v39;
        swift_storeEnumTagMultiPayload();
        v19 = 0;
        v20 = 0;
        v21 = sub_100032608;
LABEL_20:
        sub_100012C24(v10, a2);
        (*(v8 + 56))(a2, 0, 1, v7);
        sub_100029F90(v19, v20);
        return sub_100029F90(v21, v14);
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    sub_1000323D4(a1, type metadata accessor for XPCObject);
    sub_1000323D4(v6, type metadata accessor for XPCObject);
    return (*(v8 + 56))(a2, 1, 1, v7);
  }

  v24 = *v6;
  v25 = xpc_array_get_count(*v6);
  v26 = _swiftEmptyArrayStorage;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v25 > _swiftEmptyArrayStorage[3] >> 1)
  {
    if (_swiftEmptyArrayStorage[2] <= v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = _swiftEmptyArrayStorage[2];
    }

    v26 = sub_100030C68(isUniquelyReferenced_nonNull_native, v28, 0, _swiftEmptyArrayStorage);
  }

  v39 = v26;
  v20 = swift_allocObject();
  *(v20 + 16) = &v39;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10003267C;
  *(v29 + 24) = v20;
  v37 = sub_1000326A0;
  v38 = v29;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_10002ECCC;
  v36 = &unk_100096BC8;
  v30 = _Block_copy(&aBlock);

  xpc_array_apply(v24, v30);
  _Block_release(v30);
  swift_unknownObjectRelease();
  sub_1000323D4(a1, type metadata accessor for XPCObject);
  v31 = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {
    *v10 = v39;
    swift_storeEnumTagMultiPayload();
    v21 = 0;
    v14 = 0;
    v19 = sub_10003267C;
    goto LABEL_20;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10002E9F8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_10007A4A0();
LABEL_9:
    result = sub_10007A3E0();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_10002EA94(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v9, v5);
  v10 = type metadata accessor for XPCObject(0);
  result = (*(*(v10 - 8) + 48))(v5, 1, v10);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10002E2D8(v5, v8);
  v12 = type metadata accessor for ServiceEventValue(0);
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v8, 1, v12);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_100030C68(0, v14[2] + 1, 1, v14);
    *a2 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_100030C68((v16 > 1), v17 + 1, 1, v14);
    *a2 = v14;
  }

  v14[2] = v17 + 1;
  return sub_100012C24(v8, v14 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v17);
}

uint64_t sub_10002ECD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = type metadata accessor for ServiceEventValue(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100079F10();
  v17 = v16;
  v18 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v18, v4);
  v19 = type metadata accessor for XPCObject(0);
  result = (*(*(v19 - 8) + 48))(v4, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10002E2D8(v4, v10);
    result = (*(v12 + 48))(v10, 1, v11);
    if (result != 1)
    {
      sub_100012C24(v10, v14);
      sub_10003236C(v14, v8, type metadata accessor for ServiceEventValue);
      (*(v12 + 56))(v8, 0, 1, v11);
      sub_10002EF60(v8, v15, v17);
      return sub_1000323D4(v14, type metadata accessor for ServiceEventValue);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002EF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ServiceEventValue(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1000096C4(a1, &qword_10009FC90, &qword_10007C910);
    sub_100030B10(a2, a3, v9);

    return sub_1000096C4(v9, &qword_10009FC90, &qword_10007C910);
  }

  else
  {
    sub_100012C24(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10003102C(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_10002F128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_10002F188()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10002F1B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_10002F1C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007A5E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002F208(uint64_t a1)
{
  v2 = sub_1000326CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002F244(uint64_t a1)
{
  v2 = sub_1000326CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10002F280(void *a1)
{
  v3 = sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  v4 = __chkstk_darwin(v3 - 8);
  v65 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = (&v55 - v6);
  v60 = sub_10000712C(&qword_10009EB60, qword_10007D3C8);
  v55 = *(v60 - 8);
  __chkstk_darwin(v60);
  v61 = &v55 - v8;
  v9 = sub_100079A70();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ServiceEventValue(0);
  v62 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v59 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v58 = &v55 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v55 - v19;
  __chkstk_darwin(v18);
  v22 = (&v55 - v21);
  sub_10003236C(v64, &v55 - v21, type metadata accessor for ServiceEventValue);
  v64 = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10000751C(a1, a1[3]);
        sub_10007A7B0();
        sub_100032778(v66, v67);
        sub_10007A680();
      }

      else
      {
        sub_10000751C(a1, a1[3]);
        sub_10007A7B0();
        sub_100032778(v66, v67);
        sub_10007A660();
      }

      return sub_1000070A8(v66);
    }

    if (!EnumCaseMultiPayload)
    {
      sub_10000751C(a1, a1[3]);
      sub_10007A7B0();
      sub_100032778(v66, v67);
      sub_10007A640();
LABEL_19:

      return sub_1000070A8(v66);
    }

    sub_10000751C(a1, a1[3]);
    sub_10007A7B0();
    sub_100032778(v66, v67);
    sub_10007A670();
    return sub_1000070A8(v66);
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      (*(v10 + 32))(v12, v22, v9);
      sub_10000751C(a1, a1[3]);
      sub_10007A7B0();
      sub_100079A10();
      sub_100032778(v66, v67);
      sub_10007A640();
      (*(v10 + 8))(v12, v9);
      goto LABEL_19;
    }

    sub_10000751C(a1, a1[3]);
    sub_10007A7B0();
    sub_100032778(v66, v67);
    sub_10007A650();
    return sub_1000070A8(v66);
  }

  if (EnumCaseMultiPayload == 6)
  {
    v24 = *v22;
    sub_10000751C(a1, a1[3]);
    result = sub_10007A7A0();
    v26 = *(v24 + 16);
    if (!v26)
    {
      goto LABEL_19;
    }

    v27 = 0;
    while (v27 < *(v24 + 16))
    {
      sub_10003236C(v24 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v27, v20, type metadata accessor for ServiceEventValue);
      sub_100032778(v66, v67);
      sub_100032720();
      sub_10007A600();
      if (v1)
      {
        sub_1000323D4(v20, type metadata accessor for ServiceEventValue);
        goto LABEL_19;
      }

      ++v27;
      result = sub_1000323D4(v20, type metadata accessor for ServiceEventValue);
      if (v26 == v27)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_44;
  }

  v28 = *v22;
  sub_10000751C(a1, a1[3]);
  sub_1000326CC();
  result = sub_10007A7C0();
  v29 = 0;
  v31 = v28 + 64;
  v30 = *(v28 + 64);
  v56 = v7;
  v57 = v28;
  v32 = 1 << *(v28 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v30;
  v35 = (v32 + 63) >> 6;
  v63 = v1;
  if ((v33 & v30) == 0)
  {
LABEL_26:
    if (v35 <= v29 + 1)
    {
      v37 = v29 + 1;
    }

    else
    {
      v37 = v35;
    }

    v38 = v37 - 1;
    while (1)
    {
      v36 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v36 >= v35)
      {
        v54 = sub_10000712C(&unk_10009EB70, qword_10007C110);
        (*(*(v54 - 8) + 56))(v65, 1, 1, v54);
        v34 = 0;
        goto LABEL_34;
      }

      v34 = *(v31 + 8 * v36);
      ++v29;
      if (v34)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  while (1)
  {
    v36 = v29;
LABEL_33:
    v39 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v40 = v39 | (v36 << 6);
    v41 = v58;
    v42 = (*(v57 + 48) + 16 * v40);
    v43 = *v42;
    v44 = v42[1];
    sub_10003236C(*(v57 + 56) + *(v62 + 72) * v40, v58, type metadata accessor for ServiceEventValue);
    v45 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    v46 = *(v45 + 48);
    v47 = v65;
    *v65 = v43;
    v47[1] = v44;
    sub_100012C24(v41, v47 + v46);
    (*(*(v45 - 8) + 56))(v47, 0, 1, v45);

    v38 = v36;
    v7 = v56;
LABEL_34:
    sub_100032BF0(v65, v7, &qword_10009E368, &qword_10007D3C0);
    v48 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    if ((*(*(v48 - 8) + 48))(v7, 1, v48) == 1)
    {

      return (*(v55 + 8))(v61, v60);
    }

    v49 = v38;
    v51 = *v7;
    v50 = v7[1];
    v52 = v59;
    sub_100012C24(v7 + *(v48 + 48), v59);
    v66[0] = v51;
    v66[1] = v50;
    sub_100032720();
    v53 = v63;
    sub_10007A5C0();
    if (v53)
    {
      break;
    }

    result = sub_1000323D4(v52, type metadata accessor for ServiceEventValue);
    v29 = v49;
    v63 = 0;
    if (!v34)
    {
      goto LABEL_26;
    }
  }

  sub_1000323D4(v52, type metadata accessor for ServiceEventValue);
  return (*(v55 + 8))(v61, v60);
}

Class sub_10002FC68()
{
  v1 = sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = (&v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v77 = (&v70 - v5);
  v6 = sub_100079A70();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServiceEventValue(0);
  v76 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v78 = &v70 - v15;
  v16 = __chkstk_darwin(v14);
  v75 = &v70 - v17;
  __chkstk_darwin(v16);
  v19 = &v70 - v18;
  sub_10003236C(v0, &v70 - v18, type metadata accessor for ServiceEventValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        return [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*v19];
      }

      else
      {
        return [objc_allocWithZone(NSNumber) initWithDouble:*v19];
      }
    }

    if (EnumCaseMultiPayload)
    {
      return [objc_allocWithZone(NSNumber) initWithLongLong:*v19];
    }

    isa = sub_100079DF0();
LABEL_49:
    v69 = isa;

    return v69;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      return [objc_allocWithZone(NSNumber) initWithBool:*v19];
    }

    (*(v7 + 32))(v9, v19, v6);
    v27.super.isa = sub_100079A20().super.isa;
    (*(v7 + 8))(v9, v6);
    return v27.super.isa;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v23 = *v19;
    v79 = _swiftEmptyArrayStorage;
    sub_10002E9F8(*(v23 + 16));
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = v23 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v26 = *(v76 + 72);
      do
      {
        sub_10003236C(v25, v13, type metadata accessor for ServiceEventValue);
        sub_10002FC68();
        sub_100079FD0();
        if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10007A000();
        }

        sub_10007A020();
        sub_1000323D4(v13, type metadata accessor for ServiceEventValue);
        v25 += v26;
        --v24;
      }

      while (v24);
    }

    sub_100007670(0, &qword_10009EB80, NSObject_ptr);
    isa = sub_100079FE0().super.isa;
    goto LABEL_49;
  }

  v28 = *v19;
  v70 = sub_100007670(0, &qword_10009EB80, NSObject_ptr);
  v29 = sub_100079D70();
  v30 = 0;
  v31 = *(v28 + 64);
  v71 = v28 + 64;
  v72 = v28;
  v32 = 1 << *(v28 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v35 = (v32 + 63) >> 6;
  v73 = v4;
  v74 = v35;
  while (v34)
  {
    v38 = v30;
LABEL_34:
    v41 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v42 = v41 | (v38 << 6);
    v43 = (*(v72 + 48) + 16 * v42);
    v45 = *v43;
    v44 = v43[1];
    v46 = v75;
    sub_10003236C(*(v72 + 56) + *(v76 + 72) * v42, v75, type metadata accessor for ServiceEventValue);
    v47 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    v48 = *(v47 + 48);
    *v4 = v45;
    v4[1] = v44;
    sub_100012C24(v46, v4 + v48);
    (*(*(v47 - 8) + 56))(v4, 0, 1, v47);

    v40 = v38;
LABEL_35:
    v49 = v77;
    sub_100032BF0(v4, v77, &qword_10009E368, &qword_10007D3C0);
    v50 = sub_10000712C(&unk_10009EB70, qword_10007C110);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {

      v27.super.isa = sub_100079D30().super.isa;

      return v27.super.isa;
    }

    v52 = *v49;
    v51 = v49[1];
    sub_100012C24(v49 + *(v50 + 48), v78);
    v53 = sub_10002FC68();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v29;
    v56 = sub_10000A0FC(v52, v51);
    v57 = v29[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_53;
    }

    v60 = v55;
    if (v29[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v55)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_10002C340();
        if (v60)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_10002C09C(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_10000A0FC(v52, v51);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_55;
      }

      v56 = v61;
      if (v60)
      {
LABEL_23:

        v29 = v79;
        v36 = *(v79 + 56);
        v37 = *(v36 + 8 * v56);
        *(v36 + 8 * v56) = v53;

        sub_1000323D4(v78, type metadata accessor for ServiceEventValue);
        goto LABEL_24;
      }
    }

    v63 = v78;
    v29 = v79;
    *(v79 + 8 * (v56 >> 6) + 64) |= 1 << v56;
    v64 = (v29[6] + 16 * v56);
    *v64 = v52;
    v64[1] = v51;
    *(v29[7] + 8 * v56) = v53;
    sub_1000323D4(v63, type metadata accessor for ServiceEventValue);
    v65 = v29[2];
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
      goto LABEL_54;
    }

    v29[2] = v67;
LABEL_24:
    v30 = v40;
    v4 = v73;
    v35 = v74;
  }

  if (v35 <= v30 + 1)
  {
    v39 = v30 + 1;
  }

  else
  {
    v39 = v35;
  }

  v40 = v39 - 1;
  while (1)
  {
    v38 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v38 >= v35)
    {
      v68 = sub_10000712C(&unk_10009EB70, qword_10007C110);
      (*(*(v68 - 8) + 56))(v4, 1, 1, v68);
      v34 = 0;
      goto LABEL_35;
    }

    v34 = *(v71 + 8 * v38);
    ++v30;
    if (v34)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

double sub_1000304DC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(sub_10000712C(&unk_10009EB70, qword_10007C110) + 48);
  v5 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  v7 = *a1;
  v6 = a1[1];
  sub_10003236C(a1 + v4, a2 + *(v5 + 48), type metadata accessor for ServiceEventValue);
  *a2 = v7;
  a2[1] = v6;

  return result;
}

uint64_t sub_10003057C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ServiceEventValue(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000712C(&qword_10009EC68, &unk_10007E1D0);
  v40 = v4;
  result = sub_10007A4C0();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_100012C24(v28, v41);
      }

      else
      {
        sub_10003236C(v28, v41, type metadata accessor for ServiceEventValue);
      }

      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_100012C24(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void sub_1000308CC()
{
  v1 = v0;
  v2 = type metadata accessor for ServiceEventValue(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000712C(&qword_10009EC68, &unk_10007E1D0);
  v4 = *v0;
  v5 = sub_10007A4B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_10003236C(*(v4 + 56) + v26, v30, type metadata accessor for ServiceEventValue);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100012C24(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

uint64_t sub_100030B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000A0FC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000308CC();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for ServiceEventValue(0);
    v19 = *(v12 - 8);
    sub_100012C24(v11 + *(v19 + 72) * v8, a3);
    sub_100030E40(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ServiceEventValue(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void *sub_100030C68(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000712C(&qword_10009EC60, &unk_10007D660);
  v10 = *(type metadata accessor for ServiceEventValue(0) - 8);
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
  v15 = *(type metadata accessor for ServiceEventValue(0) - 8);
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

unint64_t sub_100030E40(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007A2F0() + 1) & ~v5;
    while (1)
    {
      sub_10007A730();

      sub_100079EC0();
      v9 = sub_10007A760();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for ServiceEventValue(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10003102C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000A0FC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000308CC();
      goto LABEL_7;
    }

    sub_10003057C(v15, a4 & 1);
    v21 = sub_10000A0FC(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_10007A6C0();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for ServiceEventValue(0) - 8) + 72) * v12;

    sub_100032B04(a1, v20);
    return;
  }

LABEL_13:
  sub_100031190(v12, a2, a3, a1, v18);
}

uint64_t sub_100031190(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ServiceEventValue(0);
  result = sub_100012C24(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100031228@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000712C(&unk_10009EB70, qword_10007C110);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v40 - v4;
  v6 = type metadata accessor for ServiceEventValue(0);
  v42 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000712C(&qword_10009E368, &qword_10007D3C0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = (&v40 - v14);
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v40 = v5;
  v45 = v19;
  if (v20)
  {
    v41 = a1;
    v21 = v18;
LABEL_11:
    v25 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v21 << 6);
    v27 = (*(v16 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    sub_10003236C(*(v16 + 56) + *(v42 + 72) * v26, v8, type metadata accessor for ServiceEventValue);
    v30 = v44;
    v31 = *(v44 + 48);
    *v15 = v29;
    v15[1] = v28;
    v32 = v8;
    v33 = v30;
    sub_100012C24(v32, v15 + v31);
    v34 = v43;
    (*(v43 + 56))(v15, 0, 1, v33);

    v24 = v21;
    v35 = v34;
    a1 = v41;
LABEL_12:
    *v1 = v16;
    v1[1] = v17;
    v1[2] = v45;
    v1[3] = v24;
    v1[4] = v25;
    v36 = v1[5];
    sub_100032BF0(v15, v12, &qword_10009E368, &qword_10007D3C0);
    v37 = 1;
    if ((*(v35 + 48))(v12, 1, v33) != 1)
    {
      v38 = v40;
      sub_100032BF0(v12, v40, &unk_10009EB70, qword_10007C110);
      v36(v38);
      sub_1000096C4(v38, &unk_10009EB70, qword_10007C110);
      v37 = 0;
    }

    v39 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
    return (*(*(v39 - 8) + 56))(a1, v37, 1, v39);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v35 = v43;
        v33 = v44;
        (*(v43 + 56))(&v40 - v14, 1, 1, v44);
        v25 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000315EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for ServiceEventValue(0);
  v53 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v45 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = sub_10000712C(&qword_10009EC98, &unk_10007D680);
  __chkstk_darwin(v15 - 8);
  v17 = (&v44 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v46 = a1;
  v47 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v48 = v19;
  v49 = 0;
  v50 = v22 & v20;
  v51 = a2;
  v52 = a3;

  v44 = a3;

  while (1)
  {
    sub_100031228(v17);
    v25 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
    if ((*(*(v25 - 8) + 48))(v17, 1, v25) == 1)
    {
      sub_100032BE8(v46);
    }

    v26 = *(v25 + 48);
    v27 = *v17;
    v28 = v17[1];
    sub_100012C24(v17 + v26, v14);
    v29 = *a5;
    v31 = sub_10000A0FC(v27, v28);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if (a4)
      {
        v38 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1000308CC();
        v38 = *a5;
        if ((v35 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v23 = *(v53 + 72) * v31;
      v24 = v45;
      sub_10003236C(v38[7] + v23, v45, type metadata accessor for ServiceEventValue);
      sub_1000323D4(v14, type metadata accessor for ServiceEventValue);

      sub_100032B04(v24, v38[7] + v23);
      a4 = 1;
    }

    else
    {
      sub_10003057C(v34, a4 & 1);
      v36 = sub_10000A0FC(v27, v28);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_21;
      }

      v31 = v36;
      v38 = *a5;
      if (v35)
      {
        goto LABEL_5;
      }

LABEL_14:
      v38[(v31 >> 6) + 8] |= 1 << v31;
      v39 = (v38[6] + 16 * v31);
      *v39 = v27;
      v39[1] = v28;
      sub_100012C24(v14, v38[7] + *(v53 + 72) * v31);
      v40 = v38[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_20;
      }

      v38[2] = v42;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ServiceEventValue(uint64_t a1)
{
  result = qword_1000A2DA0;
  if (!qword_1000A2DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000319BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a1;
  v4 = type metadata accessor for ServiceEventValue(0);
  __chkstk_darwin(v4);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100079E70();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100079E60();
  v11 = sub_100079E30();
  v13 = v12;

  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 == 15)
  {

    sub_10003287C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v15 = objc_opt_self();
    isa = sub_100079910().super.isa;
    v22 = 0;
    v17 = [v15 JSONObjectWithData:isa options:0 error:&v22];

    v18 = v22;
    if (v17)
    {
      sub_10007A2D0();
      swift_unknownObjectRelease();
      v19 = v21[1];
      sub_10002D4BC(v23, v6);
      if (v19)
      {
        sub_1000070A8(v23);
        sub_1000071C8(v11, v13);
      }

      else if (swift_getEnumCaseMultiPayload() == 7)
      {
        sub_1000070A8(v23);
        sub_1000071C8(v11, v13);
        return v21[0];
      }

      else
      {

        sub_1000323D4(v6, type metadata accessor for ServiceEventValue);
        sub_10003287C();
        swift_allocError();
        swift_willThrow();
        sub_1000071C8(v11, v13);
        return sub_1000070A8(v23);
      }
    }

    else
    {
      v20 = v18;

      sub_1000797A0();

      swift_willThrow();
      return sub_1000071C8(v11, v13);
    }
  }
}

uint64_t sub_100031CFC(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v3 = sub_100079A70();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v55 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServiceEventValue(0);
  v6 = __chkstk_darwin(v5);
  v57 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v56 = (&v54 - v9);
  v10 = __chkstk_darwin(v8);
  v58 = &v54 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = (&v54 - v16);
  v18 = __chkstk_darwin(v15);
  v20 = (&v54 - v19);
  v21 = __chkstk_darwin(v18);
  v23 = (&v54 - v22);
  __chkstk_darwin(v21);
  v25 = (&v54 - v24);
  v26 = sub_10000712C(&qword_10009EC78, &unk_10007E8D0);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = &v54 - v28;
  v30 = (&v54 + *(v27 + 56) - v28);
  sub_10003236C(v61, &v54 - v28, type metadata accessor for ServiceEventValue);
  v31 = a2;
  v32 = v30;
  sub_10003236C(v31, v30, type metadata accessor for ServiceEventValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10003236C(v29, v20, type metadata accessor for ServiceEventValue);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v41 = *v20;
LABEL_23:
          v45 = v41 == *v30;
          goto LABEL_28;
        }
      }

      else
      {
        sub_10003236C(v29, v17, type metadata accessor for ServiceEventValue);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v45 = *v17 == *v30;
LABEL_28:
          v40 = v45;
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_10003236C(v29, v25, type metadata accessor for ServiceEventValue);
        v35 = *v25;
        v34 = v25[1];
        if (!swift_getEnumCaseMultiPayload())
        {
          v36 = v30[1];
          if (v35 == *v32 && v34 == v36)
          {
          }

          else
          {
            v38 = sub_10007A610();

            if ((v38 & 1) == 0)
            {
              sub_1000323D4(v29, type metadata accessor for ServiceEventValue);
LABEL_38:
              v40 = 0;
              return v40 & 1;
            }
          }

          sub_1000323D4(v29, type metadata accessor for ServiceEventValue);
          v40 = 1;
          return v40 & 1;
        }

        goto LABEL_35;
      }

      sub_10003236C(v29, v23, type metadata accessor for ServiceEventValue);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v41 = *v23;
        goto LABEL_23;
      }
    }

LABEL_37:
    sub_1000096C4(v29, &qword_10009EC78, &unk_10007E8D0);
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v42 = v56;
      sub_10003236C(v29, v56, type metadata accessor for ServiceEventValue);
      v43 = *v42;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v44 = sub_10002DCBC(v43, *v30);
LABEL_33:
        v40 = v44;

LABEL_34:
        sub_1000323D4(v29, type metadata accessor for ServiceEventValue);
        return v40 & 1;
      }
    }

    else
    {
      v51 = v57;
      sub_10003236C(v29, v57, type metadata accessor for ServiceEventValue);
      v52 = *v51;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v44 = sub_10002DE64(v52, *v30);
        goto LABEL_33;
      }
    }

LABEL_35:

    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v46 = v58;
    sub_10003236C(v29, v58, type metadata accessor for ServiceEventValue);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v59 + 8))(v46, v60);
      goto LABEL_37;
    }

    v47 = v59;
    v48 = v55;
    v49 = v60;
    (*(v59 + 32))(v55, v30, v60);
    v40 = sub_100079A30();
    v50 = *(v47 + 8);
    v50(v48, v49);
    v50(v46, v49);
    goto LABEL_34;
  }

  sub_10003236C(v29, v14, type metadata accessor for ServiceEventValue);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_37;
  }

  v39 = *v14 ^ *v30;
  sub_1000323D4(v29, type metadata accessor for ServiceEventValue);
  v40 = v39 ^ 1;
  return v40 & 1;
}

uint64_t sub_10003236C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000323D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100032434(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000712C(&qword_10009EC68, &unk_10007E1D0);
    v7 = sub_10007A4D0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100032B68(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000A0FC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for ServiceEventValue(0);
      result = sub_100012C24(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_100032664(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000326CC()
{
  result = qword_10009EB68;
  if (!qword_10009EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EB68);
  }

  return result;
}

unint64_t sub_100032720()
{
  result = qword_10009DFA8;
  if (!qword_10009DFA8)
  {
    type metadata accessor for ServiceEventValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009DFA8);
  }

  return result;
}

uint64_t sub_100032778(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1000327CC()
{
  result = qword_10009EB88;
  if (!qword_10009EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EB88);
  }

  return result;
}

unint64_t sub_100032824()
{
  result = qword_10009EB90;
  if (!qword_10009EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EB90);
  }

  return result;
}

unint64_t sub_10003287C()
{
  result = qword_10009EB98;
  if (!qword_10009EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009EB98);
  }

  return result;
}

void sub_100032940(uint64_t a1)
{
  sub_100079A70();
  if (v1 <= 0x3F)
  {
    sub_1000329FC(319);
    if (v2 <= 0x3F)
    {
      sub_10000ACA0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1000329FC(uint64_t a1)
{
  if (!qword_10009EC10[0])
  {
    type metadata accessor for ServiceEventValue(255);
    v1 = sub_10007A030();
    if (!v2)
    {
      atomic_store(v1, qword_10009EC10);
    }
  }
}

__n128 sub_100032A54(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100032A60(uint64_t a1, int a2)
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

uint64_t sub_100032AA8(uint64_t result, int a2, int a3)
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

uint64_t sub_100032B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100032BD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100032BF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000712C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100032C74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000100083920;
  v5 = 0x69745F7261646172;
  if (a1 == 4)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xEB00000000656C74;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = v5;
  }

  if (a1 == 3)
  {
    v4 = 0x8000000100083900;
  }

  v7 = 0xE300000000000000;
  v8 = 0xD000000000000013;
  if (a1 == 1)
  {
    v8 = 7496054;
  }

  else
  {
    v7 = 0x80000001000838E0;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x7972617262696CLL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0x8000000100083900;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_39;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0x8000000100083920;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEB00000000656C74;
      if (v9 != 0x69745F7261646172)
      {
LABEL_39:
        v12 = sub_10007A610();
        goto LABEL_40;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE300000000000000;
      if (v9 != 7496054)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0x80000001000838E0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x7972617262696CLL)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_100032E54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x747069726373;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x63736A5F343662;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x80000001000838C0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F6973726576;
    }

    else
    {
      v4 = 0x747069726373;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x63736A5F343662;
  v8 = 0x80000001000838C0;
  if (a2 == 2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v2 = 0x6E6F6973726576;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10007A610();
  }

  return v11 & 1;
}

Swift::Int sub_100032F90()
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

Swift::Int sub_100033054(unsigned __int8 a1)
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_100033164(uint64_t a1)
{
  sub_100079EC0();
}

Swift::Int sub_100033214(uint64_t a1)
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

Swift::Int sub_1000332D4(uint64_t a1, unsigned __int8 a2)
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

unint64_t sub_1000333E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003417C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100033410(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x747069726373;
  v4 = 0xE700000000000000;
  v5 = 0x63736A5F343662;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001000838C0;
  }

  if (*v1)
  {
    v3 = 0x6E6F6973726576;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100033490()
{
  v1 = 0x747069726373;
  v2 = 0x63736A5F343662;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10003350C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003417C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100033540(uint64_t a1)
{
  v2 = sub_100035078();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003357C(uint64_t a1)
{
  v2 = sub_100035078();

  return CodingKey.debugDescription.getter(a1, v2);
}

Class sub_1000335B8()
{
  v1 = v0;
  sub_10002C4AC();
  v2 = sub_100079D70();
  v3 = sub_100079DF0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22[0] = v2;
  sub_100034004(v3, 0x747069726373, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v5 = [objc_allocWithZone(NSNumber) initWithChar:*(v1 + 16)];
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100034004(v5, 0x6E6F6973726576, 0xE700000000000000, v6);
  v7 = sub_100079DF0();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  *&v22[0] = v2;
  sub_100034004(v7, 0x63736A5F343662, 0xE700000000000000, v8);
  v9 = *(v1 + 40);
  v10 = *(v9 + 16);
  if (v10)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_10007A450();
    v11 = v9 + 32;
    do
    {
      v12 = *(v11 + 16);
      v22[0] = *v11;
      v22[1] = v12;
      v13 = *(v11 + 32);
      v14 = *(v11 + 48);
      v15 = *(v11 + 64);
      v23 = *(v11 + 80);
      v22[3] = v14;
      v22[4] = v15;
      v22[2] = v13;
      sub_1000341C8(v22, v20);
      sub_100033918();
      sub_100034200(v22);
      sub_10007A430();
      sub_10007A460();
      sub_10007A470();
      sub_10007A440();
      v11 += 88;
      --v10;
    }

    while (v10);
  }

  isa = sub_100079FE0().super.isa;

  v17 = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = v2;
  sub_100034004(isa, 0xD000000000000012, 0x80000001000838C0, v17);
  v18 = sub_100079D30().super.isa;

  return v18;
}

uint64_t sub_100033820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100034004(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10000A0FC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10002C340();
        v14 = v16;
      }

      result = sub_100018E38(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

Class sub_100033918()
{
  sub_10002C4AC();
  sub_100079D70();
  v1 = sub_100079DF0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100034004(v1, 0x7972617262696CLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v3 = sub_100079DF0();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100034004(v3, 7496054, 0xE300000000000000, v4);
  if (v0[5])
  {
    v5 = sub_100079DF0();
  }

  else
  {
    v5 = 0;
  }

  sub_100033820(v5, 0xD000000000000013, 0x80000001000838E0);
  if (v0[7])
  {
    v6 = sub_100079DF0();
  }

  else
  {
    v6 = 0;
  }

  sub_100033820(v6, 0xD000000000000012, 0x8000000100083900);
  v7 = v0[8];
  if (v7)
  {
    v8 = *(v7 + 16);
    sub_10002E9F8(v8);
    if (v8)
    {
      v9 = v7 + 40;
      do
      {

        sub_100079DF0();

        sub_100079FD0();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10007A000();
        }

        sub_10007A020();
        v9 += 16;
        --v8;
      }

      while (v8);
    }

    isa = sub_100079FE0().super.isa;

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_100034004(isa, 0xD000000000000011, 0x8000000100083920, v11);
  }

  if (v0[10])
  {
    v12 = sub_100079DF0();
  }

  else
  {
    v12 = 0;
  }

  sub_100033820(v12, 0x69745F7261646172, 0xEB00000000656C74);
  v13 = sub_100079D30().super.isa;

  return v13;
}

double sub_100033BE8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100034230(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_100033C40(uint64_t a1)
{
  sub_100079EC0();
}

unint64_t sub_100033D40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000344CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100033D70(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  v5 = 0x8000000100083900;
  v6 = 0x8000000100083920;
  v7 = 0x69745F7261646172;
  if (v2 == 4)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xEB00000000656C74;
  }

  if (v2 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = v7;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v9 = 0xE300000000000000;
  v10 = 0xD000000000000013;
  if (v2 == 1)
  {
    v10 = 7496054;
  }

  else
  {
    v9 = 0x80000001000838E0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v8;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100033E38()
{
  v1 = *v0;
  v2 = 0x7972617262696CLL;
  v3 = 0x69745F7261646172;
  if (v1 == 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 7496054;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100033EFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000344CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100033F30(uint64_t a1)
{
  v2 = sub_100035024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033F6C(uint64_t a1)
{
  v2 = sub_100035024();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100033FA8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100034518(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

void sub_100034004(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A0FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10002C09C(v16, a4 & 1);
      v11 = sub_10000A0FC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10007A6C0();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10002C340();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_10003417C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100096D90;
  v6._object = a2;
  v4 = sub_10007A4F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100034230@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009ECF0, &qword_10007DA38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10000751C(a1, a1[3]);
  sub_100035078();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  v25 = 0;
  v9 = sub_10007A550();
  v11 = v10;
  v12 = v9;
  v24 = 1;
  v21 = sub_10007A580();
  v23 = 2;
  v18 = sub_10007A550();
  v19 = v13;
  sub_10000712C(&qword_10009EA68, &unk_10007DA40);
  v22 = 3;
  sub_100035148();
  sub_10007A570();
  (*(v6 + 8))(v8, v5);
  v14 = v20;
  result = sub_1000070A8(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v21;
  v16 = v19;
  *(a2 + 24) = v18;
  *(a2 + 32) = v16;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_1000344CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100096E10;
  v6._object = a2;
  v4 = sub_10007A4F0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100034518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009ECE0, &unk_10007DA28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  sub_10000751C(a1, a1[3]);
  sub_100035024();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  LOBYTE(v41[0]) = 0;
  v9 = sub_10007A550();
  v11 = v10;
  LOBYTE(v41[0]) = 1;
  v32 = sub_10007A550();
  v34 = v12;
  LOBYTE(v41[0]) = 2;
  v13 = sub_10007A500();
  v33 = v14;
  v29 = v13;
  LOBYTE(v41[0]) = 3;
  v31 = 0;
  v28 = sub_10007A500();
  v30 = v15;
  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  LOBYTE(v35) = 4;
  sub_1000350CC();
  sub_10007A520();
  v27 = v41[0];
  v42 = 5;
  v16 = sub_10007A500();
  v17 = *(v6 + 8);
  v18 = v16;
  v31 = v19;
  v17(v8, v5);
  *&v35 = v9;
  *(&v35 + 1) = v11;
  *&v36 = v32;
  *(&v36 + 1) = v34;
  *&v37 = v29;
  v20 = v33;
  *(&v37 + 1) = v33;
  *&v38 = v28;
  v21 = v30;
  *(&v38 + 1) = v30;
  *&v39 = v27;
  v22 = v31;
  *(&v39 + 1) = v18;
  v40 = v31;
  sub_1000341C8(&v35, v41);
  sub_1000070A8(a1);
  v41[0] = v9;
  v41[1] = v11;
  v41[2] = v32;
  v41[3] = v34;
  v41[4] = v29;
  v41[5] = v20;
  v41[6] = v28;
  v41[7] = v21;
  v41[8] = v27;
  v41[9] = v18;
  v41[10] = v22;
  result = sub_100034200(v41);
  v24 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v24;
  *(a2 + 64) = v39;
  *(a2 + 80) = v40;
  v25 = v36;
  *a2 = v35;
  *(a2 + 16) = v25;
  return result;
}

unint64_t sub_1000349F0()
{
  result = qword_10009ECA0;
  if (!qword_10009ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECA0);
  }

  return result;
}

unint64_t sub_100034A48()
{
  result = qword_10009ECA8;
  if (!qword_10009ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECA8);
  }

  return result;
}

unint64_t sub_100034AA0()
{
  result = qword_10009ECB0;
  if (!qword_10009ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECB0);
  }

  return result;
}

unint64_t sub_100034AF8()
{
  result = qword_10009ECB8;
  if (!qword_10009ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECB8);
  }

  return result;
}

unint64_t sub_100034B50()
{
  result = qword_10009ECC0;
  if (!qword_10009ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECC0);
  }

  return result;
}

unint64_t sub_100034BA8()
{
  result = qword_10009ECC8;
  if (!qword_10009ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECC8);
  }

  return result;
}

__n128 sub_100034BFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100034C10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100034C58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorebagSectionScript.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorebagSectionScript.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100034E04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100034E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100034E70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorebagSectionScriptRequiredLibraries.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorebagSectionScriptRequiredLibraries.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100035024()
{
  result = qword_10009ECD0;
  if (!qword_10009ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECD0);
  }

  return result;
}

unint64_t sub_100035078()
{
  result = qword_10009ECD8;
  if (!qword_10009ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECD8);
  }

  return result;
}

unint64_t sub_1000350CC()
{
  result = qword_10009ECE8;
  if (!qword_10009ECE8)
  {
    sub_1000072D8(&qword_10009E130, &qword_10007BCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECE8);
  }

  return result;
}

unint64_t sub_100035148()
{
  result = qword_10009ECF8;
  if (!qword_10009ECF8)
  {
    sub_1000072D8(&qword_10009EA68, &unk_10007DA40);
    sub_1000351CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ECF8);
  }

  return result;
}

unint64_t sub_1000351CC()
{
  result = qword_10009ED00;
  if (!qword_10009ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED00);
  }

  return result;
}

uint64_t sub_100035228@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v23 = a4;
  v19 = type metadata accessor for StorebagSectionMaybeShared(0, a2, a3, a5);
  v7 = *(v19 - 8);
  v8 = __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v18 = (&v18 - v11);
  sub_10000751C(a1, a1[3]);
  sub_10007A780();
  if (v5)
  {

    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_100035484(v20);
    sub_10001378C(a1, v22);
    sub_10007A110();
    v13 = v19;
    swift_storeEnumTagMultiPayload();
    v14 = *(v7 + 32);
    v15 = v18;
    v14(v18, v10, v13);
  }

  else
  {
    sub_1000354EC(v20, v22);
    sub_10000751C(v22, v22[3]);
    v12 = sub_10007A620();
    v15 = v18;
    v13 = v19;
    *v18 = v12;
    v15[1] = v16;
    swift_storeEnumTagMultiPayload();
    sub_1000070A8(v22);
    v14 = *(v7 + 32);
  }

  v14(v23, v15, v13);
  return sub_1000070A8(a1);
}

uint64_t sub_100035484(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009ED08, &unk_10007DA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000354EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100035530(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  v6 = 0xE600000000000000;
  v7 = 0x6E6F69746361;
  if (a1 != 4)
  {
    v7 = 0x6F697469646E6F63;
    v6 = 0xE90000000000006ELL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 7955819;
  if (a1 != 1)
  {
    v9 = 0x7365756C6176;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1937335659;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x65756C6176)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6F69746361)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE90000000000006ELL;
      if (v10 != 0x6F697469646E6F63)
      {
LABEL_34:
        v13 = sub_10007A610();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7955819)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7365756C6176)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1937335659)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

Swift::Int sub_1000356F8(unsigned __int8 a1)
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_1000357E8(uint64_t a1)
{
  sub_100079EC0();
}

Swift::Int sub_1000358C8(uint64_t a1, unsigned __int8 a2)
{
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

unint64_t sub_1000359B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000367B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000359E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1937335659;
  v5 = 0xE500000000000000;
  v6 = 0x65756C6176;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F69746361;
  if (v2 != 4)
  {
    v8 = 0x6F697469646E6F63;
    v7 = 0xE90000000000006ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7955819;
  if (v2 != 1)
  {
    v10 = 0x7365756C6176;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100035A8C()
{
  v1 = *v0;
  v2 = 1937335659;
  v3 = 0x65756C6176;
  v4 = 0x6E6F69746361;
  if (v1 != 4)
  {
    v4 = 0x6F697469646E6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7955819;
  if (v1 != 1)
  {
    v5 = 0x7365756C6176;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100035B30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000367B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100035B58(uint64_t a1)
{
  v2 = sub_100036DF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100035B94(uint64_t a1)
{
  v2 = sub_100036DF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

char *sub_100035BD0(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100023040(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 sub_100035CC4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100035E70(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_100035D18()
{
  v1 = 0x6E6F69746361;
  v2 = 0x7365756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6F697469646E6F63;
  }

  if (*v0)
  {
    v1 = 1937335659;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100035D88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100037128(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100035DB0(uint64_t a1)
{
  v2 = sub_100036E4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100035DEC(uint64_t a1)
{
  v2 = sub_100036E4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100035E28@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000364A4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100035E70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009ED50, &unk_10007DD58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  sub_10000751C(a1, a1[3]);
  sub_100036DF8();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  v41 = v6;
  v53 = _swiftEmptyArrayStorage;
  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  LOBYTE(v42) = 0;
  sub_1000350CC();
  sub_10007A520();
  if (v47[0])
  {
    sub_100035BD0(v47[0]);
  }

  LOBYTE(v42) = 1;
  sub_10007A570();
  sub_100035BD0(v47[0]);
  LOBYTE(v47[0]) = 1;
  v40 = sub_10007A550();
  v10 = v9;
  v39 = a2;
  v38 = 0;
  v11 = v53;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_100023040(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  v14 = v38;
  if (v13 >= v12 >> 1)
  {
    v37 = sub_100023040((v12 > 1), v13 + 1, 1, v11);
    v14 = v38;
    v11 = v37;
  }

  *(v11 + 2) = v13 + 1;
  v15 = &v11[16 * v13];
  *(v15 + 4) = v40;
  *(v15 + 5) = v10;
  v53 = v11;
  v16 = v39;
  v52 = _swiftEmptyArrayStorage;
  LOBYTE(v42) = 2;
  sub_10007A520();
  if (v14)
  {
    (*(v41 + 8))(v8, v5);

    return sub_1000070A8(a1);
  }

  if (v47[0])
  {
    sub_100035BD0(v47[0]);
  }

  LOBYTE(v42) = 3;
  sub_10007A570();
  sub_100035BD0(v47[0]);
  LOBYTE(v47[0]) = 3;
  v18 = sub_10007A550();
  v39 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v52;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_100023040(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_100023040((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = &v22[16 * v24];
  *(v25 + 4) = v19;
  *(v25 + 5) = v21;
  v26 = v53;
  LOBYTE(v47[0]) = 4;
  v27 = sub_10007A550();
  v29 = v28;
  v40 = v27;
  v48 = 5;
  sub_100036F24();
  sub_10007A520();
  (*(v41 + 8))(v8, v5);
  v41 = v49;
  v30 = v50;
  v38 = *(&v49 + 1);
  v31 = *(&v50 + 1);
  v32 = v51;
  *&v42 = v26;
  *(&v42 + 1) = v22;
  v33 = v40;
  *&v43 = v40;
  *(&v43 + 1) = v29;
  v44 = v49;
  v45 = v50;
  v46 = v51;
  sub_100036F78(&v42, v47);
  sub_1000070A8(a1);
  v47[0] = v26;
  v47[1] = v22;
  v47[2] = v33;
  v47[3] = v29;
  v47[4] = v41;
  v47[5] = v38;
  v47[6] = v30;
  v47[7] = v31;
  v47[8] = v32;
  result = sub_100036FB0(v47);
  v34 = v45;
  v35 = v39;
  *(v39 + 32) = v44;
  *(v35 + 48) = v34;
  *(v35 + 64) = v46;
  v36 = v43;
  *v35 = v42;
  *(v35 + 16) = v36;
  return result;
}

uint64_t sub_1000364A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009ED30, &unk_10007DD40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10000751C(a1, a1[3]);
  sub_100036E4C();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  LOBYTE(v21) = 0;
  v17 = sub_10007A550();
  v18 = a2;
  v19 = v9;
  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  v20 = 1;
  sub_1000350CC();
  sub_10007A520();
  v16 = v21;
  v20 = 2;
  sub_10007A520();
  v10 = v21;
  sub_10000712C(&qword_10009ED38, &qword_10007DD50);
  v20 = 3;
  sub_100036EA0();
  sub_10007A520();
  (*(v6 + 8))(v8, v5);
  v11 = v21;
  result = sub_1000070A8(a1);
  v13 = v18;
  v14 = v19;
  *v18 = v17;
  v13[1] = v14;
  v13[2] = v16;
  v13[3] = v10;
  v13[4] = v11;
  return result;
}

unint64_t sub_1000367B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000970F8;
  v6._object = a2;
  v4 = sub_10007A4F0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100036808()
{
  result = qword_10009ED10;
  if (!qword_10009ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED10);
  }

  return result;
}

unint64_t sub_100036860()
{
  result = qword_10009ED18;
  if (!qword_10009ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED18);
  }

  return result;
}

unint64_t sub_1000368B8()
{
  result = qword_10009ED20;
  if (!qword_10009ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED20);
  }

  return result;
}

uint64_t sub_100036914(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100036980(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_100036A98(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_100036C50(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100036C68(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100036C8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100036CD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100036D44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100036D58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100036DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100036DF8()
{
  result = qword_10009ED28;
  if (!qword_10009ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED28);
  }

  return result;
}

unint64_t sub_100036E4C()
{
  result = qword_1000A39B0[0];
  if (!qword_1000A39B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A39B0);
  }

  return result;
}

unint64_t sub_100036EA0()
{
  result = qword_10009ED40;
  if (!qword_10009ED40)
  {
    sub_1000072D8(&qword_10009ED38, &qword_10007DD50);
    sub_100036F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED40);
  }

  return result;
}

unint64_t sub_100036F24()
{
  result = qword_10009ED48;
  if (!qword_10009ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED48);
  }

  return result;
}

unint64_t sub_100037024()
{
  result = qword_1000A3AC0[0];
  if (!qword_1000A3AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A3AC0);
  }

  return result;
}

unint64_t sub_10003707C()
{
  result = qword_1000A3BD0;
  if (!qword_1000A3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3BD0);
  }

  return result;
}

unint64_t sub_1000370D4()
{
  result = qword_1000A3BD8[0];
  if (!qword_1000A3BD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A3BD8);
  }

  return result;
}

uint64_t sub_100037128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_10007A610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000 || (sub_10007A610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_10007A610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_10007A610();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL sub_10003728C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = ~v2;
  v4 = *a2;
  v5 = v2 - 2;
  v6 = v3 & 1;
  if (v5 >= 5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5 + 2;
  }

  if ((v4 - 2) >= 5)
  {
    v8 = (v4 & 1) == 0;
  }

  else
  {
    v8 = (v4 - 2) + 2;
  }

  return v7 == v8;
}

uint64_t ServiceSamplingOutcome.rawValue.getter(char a1)
{
  if ((a1 - 2) >= 5u)
  {
    return (a1 & 1) == 0;
  }

  else
  {
    return (a1 - 2) + 2;
  }
}

uint64_t sub_100037300@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s21CloudTelemetryService0C15SamplingOutcomeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10003732C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = ~v2;
  v4 = v2 - 2;
  v5 = v3 & 1;
  if (v4 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 + 2;
  }

  *a1 = v6;
}

uint64_t _s21CloudTelemetryService0C15SamplingOutcomeO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 7;
  }

  else
  {
    return (0x6050403020001uLL >> (8 * a1));
  }
}

BOOL _s21CloudTelemetryService0C15SamplingOutcomeO1loiySbAC_ACtFZ_0(char a1, char a2)
{
  v2 = (a1 - 2) + 2;
  if ((a1 - 2) >= 5u)
  {
    v2 = (a1 & 1) == 0;
  }

  v3 = (a2 - 2) + 2;
  if ((a2 - 2) >= 5u)
  {
    v3 = (a2 & 1) == 0;
  }

  return v2 < v3;
}

unint64_t sub_10003743C()
{
  result = qword_10009ED58;
  if (!qword_10009ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009ED58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceSamplingOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ServiceSamplingOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
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

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000375E8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100037604(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_10003762C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_10003F2A0();
  swift_beginAccess();
  v11 = 0;
  if (*v10 == 1)
  {
    v12 = sub_10003F60C();
    v11 = 5;
    if (!*v12)
    {
      v11 = 1;
    }
  }

  *a5 = v11;
  v13 = *(a3 + 16);
  *(a5 + 8) = *a3;
  *(a5 + 24) = v13;
  result = *(a3 + 32);
  *(a5 + 40) = result;
  *(a5 + 56) = *(a3 + 48);
  *(a5 + 64) = a4 & 1;
  *(a5 + 72) = a1;
  *(a5 + 80) = a2;
  return result;
}

unint64_t sub_1000376DC()
{
  v1 = type metadata accessor for ServiceEventValue(0);
  v2 = __chkstk_darwin(v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (v22 - v5);
  sub_10000712C(&qword_10009ED60, &unk_10007DF60);
  v7 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10007DF40;
  v11 = (v10 + v9);
  v12 = *(v7 + 48);
  *v11 = 0xD00000000000001BLL;
  v11[1] = 0x8000000100083970;
  v24 = *(v0 + 24);
  *(v11 + v12) = v24;
  swift_storeEnumTagMultiPayload();
  v13 = (v11 + v8);
  v14 = *(v7 + 48);
  *v13 = 0xD00000000000001FLL;
  v13[1] = 0x8000000100083990;
  *(v13 + v14) = *v0;
  swift_storeEnumTagMultiPayload();
  v15 = (v11 + 2 * v8);
  v16 = *(v7 + 48);
  *v15 = 0xD000000000000017;
  v15[1] = 0x80000001000839B0;
  v23 = *(v0 + 8);
  *(v15 + v16) = v23;
  swift_storeEnumTagMultiPayload();
  sub_10002423C(&v24, v22);
  sub_10002423C(&v23, v22);
  v17 = sub_100032434(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v0 + 64))
  {
    v18 = *(v0 + 72);
    v19 = *(v0 + 80);
    *v6 = v18;
    v6[1] = v19;
    swift_storeEnumTagMultiPayload();
    sub_100012C24(v6, v4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = v17;
    sub_10003102C(v4, 0xD000000000000010, 0x80000001000839D0, isUniquelyReferenced_nonNull_native);
    return v22[0];
  }

  return v17;
}

void sub_1000379B4()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = v0;
  v2 = MobileGestalt_copy_deviceName_obj();
  if (!v2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = sub_100079E20();
  v6 = v5;

  v7 = MobileGestalt_copy_marketingProductName_obj();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_100079E20();
  v11 = v10;

  v12 = MobileGestalt_copy_productType_obj();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = sub_100079E20();
  v16 = v15;

  v17 = MobileGestalt_copy_productVersion_obj();
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v41 = sub_100079E20();
  v20 = v19;

  v21 = MobileGestalt_copy_buildVersion_obj();
  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  v39 = v20;
  v40 = v14;
  v37 = sub_100079E20();
  v38 = v23;

  v24 = sub_10003F2A0();
  swift_beginAccess();
  v25 = v16;
  v26 = v9;
  v27 = v11;
  if (*v24 != 1)
  {
    v30 = v4;
    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_11;
  }

  v28 = MobileGestalt_copy_serialNumber_obj();
  if (v28)
  {
    v29 = v28;
    v30 = v4;
    v31 = sub_100079E20();
    v33 = v32;

LABEL_11:
    v34 = _s21CloudTelemetryService21AllEventFieldProviderV17getProjectVersionSSyFZ_0();
    v36 = v35;

    qword_1000A3DE8 = v30;
    qword_1000A3DF0 = v6;
    qword_1000A3DF8 = v26;
    qword_1000A3E00 = v27;
    qword_1000A3E08 = v40;
    qword_1000A3E10 = v25;
    qword_1000A3E18 = v41;
    qword_1000A3E20 = v39;
    qword_1000A3E28 = v37;
    qword_1000A3E30 = v38;
    qword_1000A3E38 = v34;
    qword_1000A3E40 = v36;
    qword_1000A3E48 = v31;
    qword_1000A3E50 = v33;
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_100037BE4()
{
  v0 = [objc_opt_self() automatedDeviceGroup];
  if (v0)
  {
    v1 = v0;
    v2 = sub_100079E20();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  qword_1000A3E60 = v2;
  qword_1000A3E68 = v4;
}

void sub_100037C5C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100079DF0();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_100079DF0();
    v4 = [v2 BOOLForKey:v3];
  }

  else
  {
    v4 = 2;
  }

  byte_1000A3E78 = v4;
}

double sub_100037D28@<D0>(uint64_t *a1@<X8>)
{
  if (qword_1000A3E58 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1000A3E60;
  v3 = qword_1000A3E68;
  a1[3] = &type metadata for AllEventFieldProvider.OSASystemConfigurationFields;
  a1[4] = &off_1000977B8;
  *a1 = v2;
  a1[1] = v3;

  return result;
}

uint64_t sub_100037DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v13;
  v8[14] = v14;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v9 = sub_100079A00();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v10 = sub_100079B10();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_100037EE8, 0, 0);
}

uint64_t sub_100037EE8(uint64_t a1)
{
  v3 = *(v1 + 72);
  v2 = *(v1 + 80);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  *(v5 + 96) = *(v4 + 6);
  *(v5 + 64) = v7;
  *(v5 + 80) = v8;
  *(v5 + 48) = v6;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v9 = sub_10003F2A0();
  swift_beginAccess();
  v10 = 0;
  if (*v9 == 1)
  {
    v11 = sub_10003F60C();
    v10 = 5;
    if (!*v11)
    {
      v10 = 1;
    }
  }

  v13 = *(v1 + 152);
  v12 = *(v1 + 160);
  v14 = *(v1 + 136);
  v15 = *(v1 + 120);
  v16 = *(v1 + 128);
  v26 = *(v1 + 112);
  v24 = *(v1 + 144);
  v25 = *(v1 + 104);
  v23 = *(v1 + 88);
  v18 = *(v1 + 56);
  v17 = *(v1 + 64);
  v19 = *(v1 + 40);
  *v19 = v10;
  sub_100079B00();
  sub_1000799F0();
  v20 = sub_100079AF0();
  (*(v16 + 8))(v14, v15);
  (*(v13 + 8))(v12, v24);
  *(v19 + 8) = v20;
  *(v19 + 32) = v18;
  *(v19 + 40) = v17;
  *(v19 + 104) = v23;
  *(v19 + 120) = v25;
  sub_1000354EC(v26, v19 + 128);

  v21 = *(v1 + 8);

  return v21();
}

unint64_t sub_10003806C()
{
  v1 = v0;
  v2 = type metadata accessor for ServiceEventValue(0);
  v3 = __chkstk_darwin(v2);
  v63 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v62 = (&v60 - v5);
  sub_10000712C(&qword_10009ED60, &unk_10007DF60);
  v6 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10007DF50;
  v61 = v9;
  v10 = (v9 + v8);
  v11 = (v9 + v8 + *(v6 + 48));
  *v10 = 0x7265646E65735FLL;
  v10[1] = 0xE700000000000000;
  v12 = *(v1 + 48);
  v60 = *(v1 + 56);
  v13 = v60;
  *v11 = v12;
  v11[1] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = (v10 + v7);
  v15 = (v10 + v7 + *(v6 + 48));
  *v14 = 0x7954746E6576655FLL;
  v14[1] = 0xEA00000000006570;
  v16 = *(v1 + 72);
  *v15 = *(v1 + 64);
  v15[1] = v16;
  swift_storeEnumTagMultiPayload();
  v17 = (v10 + 2 * v7);
  v18 = (v17 + *(v6 + 48));
  *v17 = 0x6E6F69737365735FLL;
  v17[1] = 0xEA00000000004449;
  v19 = *(v1 + 24);
  *v18 = *(v1 + 16);
  v18[1] = v19;
  swift_storeEnumTagMultiPayload();
  v20 = (v10 + 3 * v7);
  v21 = *(v6 + 48);
  *v20 = 0x616E7265746E695FLL;
  v20[1] = 0xE90000000000006CLL;
  *(v20 + v21) = *v1;
  swift_storeEnumTagMultiPayload();
  v22 = (v10 + 4 * v7);
  v23 = *(v6 + 48);
  *v22 = 0x6E6F7A656D69745FLL;
  v22[1] = 0xEF74657366664F65;
  *(v22 + v23) = *(v1 + 8);
  swift_storeEnumTagMultiPayload();
  v24 = (v10 + 5 * v7);
  v25 = (v24 + *(v6 + 48));
  *v24 = 0x6449746E65696C63;
  v24[1] = 0xE800000000000000;
  v26 = *(v1 + 40);
  *v25 = *(v1 + 32);
  v25[1] = v26;
  swift_storeEnumTagMultiPayload();
  v27 = v10 + 6 * v7;
  v28 = &v27[*(v6 + 48)];
  strcpy(v27, "_productFamily");
  v27[15] = -18;
  v29 = qword_1000A3DE0;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_1000A3DF0;
  *v28 = qword_1000A3DE8;
  *(v28 + 1) = v30;
  swift_storeEnumTagMultiPayload();
  v31 = (v10 + 7 * v7);
  v32 = (v31 + *(v6 + 48));
  *v31 = 0x656D614E736F5FLL;
  v31[1] = 0xE700000000000000;
  v33 = qword_1000A3E00;
  *v32 = qword_1000A3DF8;
  v32[1] = v33;
  swift_storeEnumTagMultiPayload();
  v34 = (&v10[v7] + *(v6 + 48));
  strcpy(&v10[v7], "_productModel");
  HIWORD(v10[v7 + 1]) = -4864;
  v35 = qword_1000A3E10;
  *v34 = qword_1000A3E08;
  v34[1] = v35;
  swift_storeEnumTagMultiPayload();
  v36 = (v10 + 9 * v7);
  v37 = (v36 + *(v6 + 48));
  *v36 = 0x6973726556736F5FLL;
  v36[1] = 0xEA00000000006E6FLL;
  v38 = qword_1000A3E20;
  *v37 = qword_1000A3E18;
  v37[1] = v38;
  swift_storeEnumTagMultiPayload();
  v39 = (v10 + 10 * v7);
  v40 = (v39 + *(v6 + 48));
  *v39 = 0x646C6975625FLL;
  v39[1] = 0xE600000000000000;
  v41 = qword_1000A3E30;
  *v40 = qword_1000A3E28;
  v40[1] = v41;
  swift_storeEnumTagMultiPayload();
  v42 = (v10 + 11 * v7);
  v43 = (v42 + *(v6 + 48));
  *v42 = 0x5674726F7065725FLL;
  v42[1] = 0xEB00000000737265;
  v44 = qword_1000A3E40;
  *v43 = qword_1000A3E38;
  v43[1] = v44;
  swift_storeEnumTagMultiPayload();

  v45 = sub_100032434(v61);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v1 + 104) && (v65 = *(v1 + 104), v66 = *(v1 + 112), v46 = sub_10004E01C(&type metadata for EventAllowFilter, &off_100097C28), v47 = sub_1000163E8(0xD000000000000015, 0x80000001000839F0, v46), , (v47 & 1) != 0) && (v48 = *(v1 + 152), v49 = *(v1 + 160), sub_10000751C((v1 + 128), v48), v50 = (*(v49 + 8))(v48, v49), v51))
  {
    v52 = v62;
    *v62 = v50;
    *(v52 + 8) = v51;
    swift_storeEnumTagMultiPayload();
    v53 = v63;
    sub_100012C24(v52, v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v45;
    sub_10003102C(v53, 0xD000000000000015, 0x80000001000839F0, isUniquelyReferenced_nonNull_native);
    v45 = v65;
  }

  else
  {
    v52 = v62;
    v53 = v63;
  }

  if (qword_1000A3E70 != -1)
  {
    swift_once();
  }

  if (byte_1000A3E78 != 2)
  {
    *v52 = byte_1000A3E78 & 1;
    swift_storeEnumTagMultiPayload();
    sub_100012C24(v52, v53);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v45;
    sub_10003102C(v53, 0x654465726F74735FLL, 0xEE0065646F4D6F6DLL, v55);
    v45 = v65;
  }

  v56 = sub_10003F2A0();
  swift_beginAccess();
  if (*v56 == 1)
  {
    v57 = qword_1000A3E50;
    *v52 = qword_1000A3E48;
    *(v52 + 8) = v57;
    swift_storeEnumTagMultiPayload();
    sub_100012C24(v52, v53);

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v45;
    sub_10003102C(v53, 0x754E6C6169726553, 0xE90000000000006DLL, v58);
    return v64;
  }

  return v45;
}

unint64_t sub_100038814()
{
  v2 = *v0;
  v1 = v0[1];
  sub_10000712C(&qword_10009ED60, &unk_10007DF60);
  v3 = (sub_10000712C(&qword_10009EC70, &qword_10007D670) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10007B7C0;
  v6 = (v5 + v4);
  v7 = (v6 + v3[14]);
  *v6 = 0x656C61636F4CLL;
  v6[1] = 0xE600000000000000;
  *v7 = v2;
  v7[1] = v1;
  type metadata accessor for ServiceEventValue(0);
  swift_storeEnumTagMultiPayload();

  v8 = sub_100032434(v5);
  swift_setDeallocating();
  sub_1000096C4(v6, &qword_10009EC70, &qword_10007D670);
  swift_deallocClassInstance();
  return v8;
}

unint64_t sub_10003896C()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_10000712C(&qword_10009ED60, &unk_10007DF60);
  v4 = sub_10000712C(&qword_10009EC70, &qword_10007D670);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10007B7D0;
  v8 = (v7 + v6);
  v9 = (v8 + *(v4 + 48));
  *v8 = 0x67616265726F7453;
  v8[1] = 0xEF6E6F6973726556;
  *v9 = v3;
  v9[1] = v2;
  type metadata accessor for ServiceEventValue(0);
  swift_storeEnumTagMultiPayload();
  v10 = (v8 + v5);
  v11 = *(v4 + 48);
  *v10 = 0xD000000000000013;
  v10[1] = 0x8000000100083A10;
  *(v10 + v11) = v1;
  swift_storeEnumTagMultiPayload();

  v12 = sub_100032434(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v12;
}

uint64_t _s21CloudTelemetryService21AllEventFieldProviderV17getProjectVersionSSyFZ_0()
{
  v0 = 960051513;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 infoDictionary];

  if (v2)
  {
    v3 = sub_100079D50();

    if (*(v3 + 16) && (v4 = sub_10000A0FC(0x656C646E75424643, 0xEF6E6F6973726556), (v5 & 1) != 0))
    {
      sub_10000978C(*(v3 + 56) + 32 * v4, v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
    }
  }

  return v0;
}

double sub_100038C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100038C80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100038CC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100038D2C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100038D44(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_100038D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100038DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100038E60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_100038EBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100038F3C()
{
  v1 = v0;
  v2 = sub_100079530();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CacheError(0);
  __chkstk_darwin(v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E9F4(v1, v8, type metadata accessor for CacheError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_10007A3B0(42);

      v11 = 0x8000000100083AC0;
      v12 = 0xD000000000000028;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_10007A3B0(40);

      v11 = 0x8000000100083AF0;
      v12 = 0xD000000000000026;
    }

    v15 = v12;
    v16 = v11;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v3 + 32))(v5, v8, v2);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_10007A3B0(51);
    v18._countAndFlagsBits = 0xD000000000000031;
    v18._object = 0x8000000100083A80;
    sub_100079F00(v18);
LABEL_11:
    sub_100039490(&unk_10009DE10, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v19._countAndFlagsBits = sub_10007A6D0();
    sub_100079F00(v19);

    v10 = v15;
    (*(v3 + 8))(v5, v2);
    return v10;
  }

  if (EnumCaseMultiPayload != 3)
  {
    return 0x727265206B636F6DLL;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_10007A3B0(45);

  v15 = 0xD00000000000002BLL;
  v16 = 0x8000000100083A50;
  swift_getErrorValue();
  v17._countAndFlagsBits = sub_10007A6D0();
  sub_100079F00(v17);

  return v15;
}

uint64_t sub_1000392CC()
{
  v0 = sub_100079BA0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10003F214();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_100079B80();
  v6 = sub_10007A180();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "mock error", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  type metadata accessor for CacheError(0);
  sub_100039490(&qword_10009ED78, type metadata accessor for CacheError, &unk_10007E250);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_100039490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100039544(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  v3 = a3;
  v30 = a2;
  v5 = sub_100079530();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100079BA0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10003F214();
  v14 = *(v10 + 16);
  v31 = v9;
  v14(v12, v13, v9);
  v15 = *(v6 + 16);
  v33 = v6 + 16;
  v34 = a1;
  v16 = v5;
  v32 = v15;
  v15(v8, a1, v5);
  v17 = sub_100079B80();
  v18 = sub_10007A180();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v19;
    v28 = swift_slowAlloc();
    v35 = v28;
    *v19 = 136446210;
    sub_100039490(&unk_10009DE10, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v20 = sub_10007A6D0();
    v29 = v3;
    v22 = v21;
    (*(v6 + 8))(v8, v16);
    v23 = sub_100006B00(v20, v22, &v35);

    v24 = v27;
    *(v27 + 1) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, v30, v24, 0xCu);
    sub_1000070A8(v28);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  (*(v10 + 8))(v12, v31);
  type metadata accessor for CacheError(0);
  sub_100039490(&qword_10009ED78, type metadata accessor for CacheError, &unk_10007E250);
  swift_allocError();
  v32(v25, v34, v16);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1000398DC(uint64_t a1)
{
  v2 = sub_100079BA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003F214();
  (*(v3 + 16))(v5, v6, v2);
  swift_errorRetain();
  v7 = sub_100079B80();
  v8 = sub_10007A180();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = sub_10007A6D0();
    v14 = sub_100006B00(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "unable to access storebag cache (UNKNOWN): %{public}s", v10, 0xCu);
    sub_1000070A8(v11);

    (*(v3 + 8))(v5, v18);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for CacheError(0);
  sub_100039490(&qword_10009ED78, type metadata accessor for CacheError, &unk_10007E250);
  swift_allocError();
  *v15 = a1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return swift_errorRetain();
}

uint64_t sub_100039B5C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6CE8);
  sub_1000070F4(v0, qword_1000A6CE8);
  return sub_100079B90();
}

double sub_100039BE0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100039C18(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_100039CE8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

double sub_100039D80()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_100039DB8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
  return swift_unknownObjectRelease();
}

void *sub_100039E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = sub_1000798B0();
  v10 = *(v24 - 8);
  v11 = __chkstk_darwin(v24);
  v23[0] = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v23 - v13;
  v23[1] = v5;
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  v15[16] = 0;
  v15[15] = 0;
  v15[14] = a1;
  swift_beginAccess();
  v15[15] = a2;
  v16 = a4;
  swift_beginAccess();
  v15[16] = a3;
  swift_unknownObjectRetain();
  v23[3] = a2;

  v17 = v23[2];
  sub_1000406E4(a4, 0x67616265726F7473, 0xEA00000000002F73, v14);
  if (v17)
  {

    swift_unknownObjectRelease();
    v20 = v24;
    swift_defaultActor_destroy();

    swift_unknownObjectRelease();
    (*(v10 + 8))(v16, v20);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v24;
    (*(v10 + 32))(v15 + OBJC_IVAR____TtC21CloudTelemetryService13StorebagCache_storebagCacheURL, v14, v24);
    type metadata accessor for StorebagSource(0);
    v19 = v23[0];
    (*(v10 + 16))(v23[0], a4, v18);
    v22 = sub_100069B3C(v19);
    (*(v10 + 8))(a4, v24);

    swift_unknownObjectRelease();
    *(v15 + OBJC_IVAR____TtC21CloudTelemetryService13StorebagCache_storebagSource) = v22;
  }

  return v15;
}

uint64_t sub_10003A120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v38 = a3;
  v7 = sub_10000712C(&qword_10009ED80, &qword_10007E1E0);
  __chkstk_darwin(v7 - 8);
  v37 = &v36 - v8;
  v9 = sub_100079A00();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CachedStorebag(0);
  v39 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v36 - v18;
  v20 = (*(*v3 + 128))(v17);
  if (*(v20 + 16) && (v21 = sub_10000A0FC(a1, a2), (v22 & 1) != 0))
  {
    v36 = a2;
    sub_10003E9F4(*(v20 + 56) + *(v39 + 72) * v21, v16, type metadata accessor for CachedStorebag);

    sub_10003EABC(v16, v19);
    sub_1000799C0();
    v23 = sub_100079990();
    (*(v10 + 8))(v12, v9);
    if (v23)
    {
      if (qword_1000A3E80 != -1)
      {
        swift_once();
      }

      v24 = sub_100079BA0();
      sub_1000070F4(v24, qword_1000A6CE8);
      v25 = v36;

      v26 = sub_100079B80();
      v27 = sub_10007A190();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v40[0] = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_100006B00(a1, v36, v40);
        _os_log_impl(&_mh_execute_header, v26, v27, "removing expired storebag %{public}s from memory cache", v28, 0xCu);
        sub_1000070A8(v29);

        v25 = v36;
      }

      v30 = (*(*v4 + 144))(v40);
      v31 = v37;
      sub_10003DCF4(a1, v25, v37);
      sub_1000096C4(v31, &qword_10009ED80, &qword_10007E1E0);
      v30(v40, 0);
      sub_10003EA5C(v19, type metadata accessor for CachedStorebag);
      return (*(v39 + 56))(v38, 1, 1, v13);
    }

    else
    {
      v35 = v38;
      sub_10003EABC(v19, v38);
      return (*(v39 + 56))(v35, 0, 1, v13);
    }
  }

  else
  {

    v33 = v38;
    v34 = *(v39 + 56);

    return v34(v33, 1, 1, v13);
  }
}

BOOL sub_10003A5D0(uint64_t a1, uint64_t a2)
{
  v14[0] = sub_1000798B0();
  v4 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000712C(&qword_10009ED80, &qword_10007E1E0);
  __chkstk_darwin(v7 - 8);
  v9 = v14 - v8;
  sub_10003A120(a1, a2, v14 - v8);
  v10 = type metadata accessor for CachedStorebag(0);
  v11 = 1;
  v12 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_1000096C4(v9, &qword_10009ED80, &qword_10007E1E0);
  if (v12 == 1)
  {
    v14[2] = a1;
    v14[3] = a2;

    v15._countAndFlagsBits = 0x7473696C702ELL;
    v15._object = 0xE600000000000000;
    sub_100079F00(v15);
    sub_100079820();

    v11 = sub_100079830();
    (*(v4 + 8))(v6, v14[0]);
  }

  return v11;
}

uint64_t sub_10003A7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  sub_10000712C(&qword_10009E008, &qword_10007E1F0);
  v4[31] = swift_task_alloc();
  v5 = sub_100079750();
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();
  v6 = sub_100079A00();
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v7 = sub_1000798B0();
  v4[40] = v7;
  v4[41] = *(v7 - 8);
  v4[42] = swift_task_alloc();
  sub_10000712C(&qword_10009ED80, &qword_10007E1E0);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v8 = type metadata accessor for CachedStorebag(0);
  v4[45] = v8;
  v4[46] = *(v8 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();

  return _swift_task_switch(sub_10003AA8C, v3, 0);
}

uint64_t sub_10003AA8C()
{
  v97 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_10003A120(*(v0 + 224), *(v0 + 232), v3);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v6 = *(v0 + 384);
    sub_10003EABC(*(v0 + 352), v6);
    v92 = *(v6 + 8);
    v7 = *(v6 + 24);
    v91 = *(v6 + 16);
    v8 = *(v6 + 32);
    v88 = *v6;

    v90 = v7;

    v95 = v8;

    sub_10003EA5C(v6, type metadata accessor for CachedStorebag);
    goto LABEL_4;
  }

  v4 = *(v0 + 232);
  v5 = *(v0 + 224);
  sub_1000096C4(*(v0 + 352), &qword_10009ED80, &qword_10007E1E0);
  v96[0] = v5;
  v96[1] = v4;

  v99._countAndFlagsBits = 0x7473696C702ELL;
  v99._object = 0xE600000000000000;
  sub_100079F00(v99);
  sub_100079820();

  if (sub_100079830())
  {
    sub_10000712C(&qword_10009E010, &unk_10007BA90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10007B7C0;
    *(inited + 32) = NSURLContentModificationDateKey;
    v13 = NSURLContentModificationDateKey;
    sub_100009474(inited);
    swift_setDeallocating();
    sub_10003EA5C(inited + 32, type metadata accessor for URLResourceKey);
    sub_1000797C0();
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v22 = *(v0 + 248);
    v21 = *(v0 + 256);

    sub_100079720();
    (*(v20 + 8))(v19, v21);
    result = (*(v18 + 48))(v22, 1, v17);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 248), *(v0 + 280));
    v23 = sub_1000798D0();
    v25 = v24;
    v26 = sub_100046850();
    sub_10004706C(v23, v25, v26, v0 + 56);
    v28 = *(v0 + 288);
    v27 = *(v0 + 296);
    v29 = *(v0 + 280);
    v30 = *(v0 + 64);
    sub_1000799D0();
    sub_1000799C0();
    LOBYTE(v23) = sub_100079990();
    v31 = *(v28 + 8);
    *(v0 + 408) = v31;
    *(v0 + 416) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v27, v29);
    if (v23)
    {
      *(v0 + 184) = *(v0 + 56);
      sub_1000096C4(v0 + 184, &qword_10009ED88, &unk_10007E7C0);
      *(v0 + 168) = *(v0 + 72);
      sub_10002A4B4(v0 + 168);
      *(v0 + 192) = *(v0 + 88);
      sub_1000096C4(v0 + 192, &qword_10009ED90, qword_10007E200);
      if (qword_1000A3E80 != -1)
      {
        swift_once();
      }

      v32 = sub_100079BA0();
      sub_1000070F4(v32, qword_1000A6CE8);

      v33 = sub_100079B80();
      v34 = sub_10007A190();

      if (os_log_type_enabled(v33, v34))
      {
        v36 = *(v0 + 224);
        v35 = *(v0 + 232);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v96[0] = v38;
        *v37 = 136446210;
        *(v37 + 4) = sub_100006B00(v36, v35, v96);
        _os_log_impl(&_mh_execute_header, v33, v34, "removing expired storebag %{public}s", v37, 0xCu);
        sub_1000070A8(v38);
      }

      v39 = [objc_opt_self() defaultManager];
      sub_100079800(v40);
      v42 = v41;
      *(v0 + 208) = 0;
      v43 = [v39 removeItemAtURL:v41 error:v0 + 208];

      v44 = *(v0 + 208);
      if (v43)
      {
        v45 = *(**(v0 + 240) + 232);
        v46 = v44;
        v93 = (v45 + *v45);
        v47 = swift_task_alloc();
        *(v0 + 424) = v47;
        *v47 = v0;
        v47[1] = sub_10003C3EC;
        v48 = *(v0 + 232);
        v49 = *(v0 + 224);

        return v93(v0 + 16, v49, v48);
      }

      v76 = *(v0 + 328);
      v94 = *(v0 + 336);
      v78 = *(v0 + 312);
      v77 = *(v0 + 320);
      v79 = *(v0 + 304);
      v80 = v31;
      v81 = *(v0 + 280);
      v82 = v44;
      sub_1000797A0();

      swift_willThrow();
      v80(v79, v81);
      v80(v78, v81);
      (*(v76 + 8))(v94, v77);

      v10 = *(v0 + 8);
      goto LABEL_5;
    }

    v92 = v30;
    v87 = v31;
    v50 = *(v0 + 368);
    v51 = *(v0 + 376);
    v52 = *(v0 + 360);
    v53 = *(v0 + 344);
    v55 = *(v0 + 232);
    v54 = *(v0 + 240);
    v89 = *(v0 + 224);
    v56 = *(v0 + 56);
    v57 = *(v0 + 80);
    v91 = *(v0 + 72);
    v95 = *(v0 + 88);
    (*(*(v0 + 288) + 16))(v51 + *(v52 + 20), *(v0 + 304), *(v0 + 280));
    v58 = *(v0 + 88);
    v59 = *(v0 + 72);
    *v51 = *(v0 + 56);
    *(v51 + 16) = v59;
    *(v51 + 32) = v58;
    sub_10003E9F4(v51, v53, type metadata accessor for CachedStorebag);
    (*(v50 + 56))(v53, 0, 1, v52);
    v60 = *(*v54 + 144);

    v90 = v57;

    v61 = v60(v0 + 136);
    sub_10003C964(v53, v89, v55);
    v61(v0 + 136, 0);
    if (qword_1000A3E80 != -1)
    {
      swift_once();
    }

    v88 = v56;
    v62 = sub_100079BA0();
    sub_1000070F4(v62, qword_1000A6CE8);

    v63 = sub_100079B80();
    v64 = sub_10007A160();

    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 376);
    v67 = *(v0 + 328);
    v68 = *(v0 + 336);
    v70 = *(v0 + 312);
    v69 = *(v0 + 320);
    v71 = *(v0 + 304);
    v72 = *(v0 + 280);
    if (v65)
    {
      v83 = *(v0 + 232);
      v86 = *(v0 + 304);
      v73 = *(v0 + 224);
      v85 = *(v0 + 312);
      v74 = swift_slowAlloc();
      v84 = v69;
      v75 = swift_slowAlloc();
      v96[0] = v75;
      *v74 = 136446210;
      *(v74 + 4) = sub_100006B00(v73, v83, v96);
      _os_log_impl(&_mh_execute_header, v63, v64, "storing storebag %{public}s in cache", v74, 0xCu);
      sub_1000070A8(v75);

      sub_10003EA5C(v66, type metadata accessor for CachedStorebag);
      v87(v86, v72);
      v87(v85, v72);
      (*(v67 + 8))(v68, v84);
    }

    else
    {

      sub_10003EA5C(v66, type metadata accessor for CachedStorebag);
      v87(v71, v72);
      v87(v70, v72);
      (*(v67 + 8))(v68, v69);
    }

LABEL_4:
    v9 = *(v0 + 216);

    *v9 = v88;
    *(v9 + 8) = v92;
    *(v9 + 16) = v91;
    *(v9 + 24) = v90;
    *(v9 + 32) = v95;
    v10 = *(v0 + 8);
LABEL_5:

    return v10();
  }

  v14 = swift_task_alloc();
  *(v0 + 392) = v14;
  *v14 = v0;
  v14[1] = sub_10003B774;
  v15 = *(v0 + 232);
  v16 = *(v0 + 224);

  return sub_10003CB24(v16, v15);
}

uint64_t sub_10003B774()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_10003C6DC;
  }

  else
  {
    v4 = sub_10003B8CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10003B8CC()
{
  v90 = v0;
  v1 = *(v0 + 400);
  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLContentModificationDateKey;
  v3 = NSURLContentModificationDateKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_10003EA5C(inited + 32, type metadata accessor for URLResourceKey);
  sub_1000797C0();
  if (v1)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

LABEL_5:

    v15 = *(v0 + 8);
LABEL_6:

    return v15();
  }

  v4 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);

  sub_100079720();
  (*(v7 + 8))(v6, v8);
  result = (*(v5 + 48))(v9, 1, v4);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 248), *(v0 + 280));
  v11 = sub_1000798D0();
  v13 = v12;
  v14 = sub_100046850();
  sub_10004706C(v11, v13, v14, v0 + 56);
  v17 = *(v0 + 288);
  v16 = *(v0 + 296);
  v18 = *(v0 + 280);
  v19 = *(v0 + 64);
  sub_1000799D0();
  sub_1000799C0();
  v20 = sub_100079990();
  v21 = *(v17 + 8);
  *(v0 + 408) = v21;
  *(v0 + 416) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v16, v18);
  if ((v20 & 1) == 0)
  {
    v86 = v19;
    v88 = v21;
    v41 = *(v0 + 368);
    v40 = *(v0 + 376);
    v42 = *(v0 + 360);
    v43 = *(v0 + 344);
    v44 = *(v0 + 240);
    v77 = *(v0 + 232);
    v79 = *(v0 + 224);
    v45 = *(v0 + 56);
    v46 = *(v0 + 80);
    v84 = *(v0 + 72);
    v47 = *(v0 + 88);
    (*(*(v0 + 288) + 16))(v40 + *(v42 + 20), *(v0 + 304), *(v0 + 280));
    v48 = *(v0 + 88);
    v49 = *(v0 + 72);
    *v40 = *(v0 + 56);
    *(v40 + 16) = v49;
    *(v40 + 32) = v48;
    sub_10003E9F4(v40, v43, type metadata accessor for CachedStorebag);
    (*(v41 + 56))(v43, 0, 1, v42);
    v50 = *(*v44 + 144);

    v81 = v45;

    v83 = v46;

    v82 = v47;

    v51 = v50(v0 + 136);
    sub_10003C964(v43, v79, v77);
    v51(v0 + 136, 0);
    if (qword_1000A3E80 != -1)
    {
      swift_once();
    }

    v52 = sub_100079BA0();
    sub_1000070F4(v52, qword_1000A6CE8);

    v53 = sub_100079B80();
    v54 = sub_10007A160();

    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 376);
    v57 = *(v0 + 328);
    v58 = *(v0 + 336);
    v60 = *(v0 + 312);
    v59 = *(v0 + 320);
    v80 = *(v0 + 304);
    v61 = *(v0 + 280);
    if (v55)
    {
      v78 = *(v0 + 336);
      v75 = *(v0 + 376);
      v62 = *(v0 + 224);
      v63 = *(v0 + 232);
      v76 = *(v0 + 320);
      v64 = swift_slowAlloc();
      v74 = v60;
      v65 = swift_slowAlloc();
      v89[0] = v65;
      *v64 = 136446210;
      *(v64 + 4) = sub_100006B00(v62, v63, v89);
      _os_log_impl(&_mh_execute_header, v53, v54, "storing storebag %{public}s in cache", v64, 0xCu);
      sub_1000070A8(v65);

      sub_10003EA5C(v75, type metadata accessor for CachedStorebag);
      v88(v80, v61);
      v88(v74, v61);
      (*(v57 + 8))(v78, v76);
    }

    else
    {

      sub_10003EA5C(v56, type metadata accessor for CachedStorebag);
      v88(v80, v61);
      v88(v60, v61);
      (*(v57 + 8))(v58, v59);
    }

    v73 = *(v0 + 216);

    *v73 = v81;
    *(v73 + 8) = v86;
    *(v73 + 16) = v84;
    *(v73 + 24) = v83;
    *(v73 + 32) = v82;
    v15 = *(v0 + 8);
    goto LABEL_6;
  }

  *(v0 + 184) = *(v0 + 56);
  sub_1000096C4(v0 + 184, &qword_10009ED88, &unk_10007E7C0);
  *(v0 + 168) = *(v0 + 72);
  sub_10002A4B4(v0 + 168);
  *(v0 + 192) = *(v0 + 88);
  sub_1000096C4(v0 + 192, &qword_10009ED90, qword_10007E200);
  if (qword_1000A3E80 != -1)
  {
    swift_once();
  }

  v22 = sub_100079BA0();
  sub_1000070F4(v22, qword_1000A6CE8);

  v23 = sub_100079B80();
  v24 = sub_10007A190();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = *(v0 + 224);
    v25 = *(v0 + 232);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v89[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_100006B00(v26, v25, v89);
    _os_log_impl(&_mh_execute_header, v23, v24, "removing expired storebag %{public}s", v27, 0xCu);
    sub_1000070A8(v28);
  }

  v29 = [objc_opt_self() defaultManager];
  sub_100079800(v30);
  v32 = v31;
  *(v0 + 208) = 0;
  v33 = [v29 removeItemAtURL:v31 error:v0 + 208];

  v34 = *(v0 + 208);
  if (!v33)
  {
    v66 = *(v0 + 328);
    v87 = *(v0 + 336);
    v68 = *(v0 + 312);
    v67 = *(v0 + 320);
    v69 = *(v0 + 304);
    v70 = v21;
    v71 = *(v0 + 280);
    v72 = v34;
    sub_1000797A0();

    swift_willThrow();
    v70(v69, v71);
    v70(v68, v71);
    (*(v66 + 8))(v87, v67);
    goto LABEL_5;
  }

  v35 = *(**(v0 + 240) + 232);
  v36 = v34;
  v85 = (v35 + *v35);
  v37 = swift_task_alloc();
  *(v0 + 424) = v37;
  *v37 = v0;
  v37[1] = sub_10003C3EC;
  v38 = *(v0 + 232);
  v39 = *(v0 + 224);

  return v85(v0 + 16, v39, v38);
}

uint64_t sub_10003C3EC()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_10003C80C;
  }

  else
  {
    v4 = sub_10003C544;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10003C544()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 280);
  v1(*(v0 + 304), v6);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  v13 = *(v0 + 32);
  v12 = *(v0 + 24);
  v11 = *(v0 + 16);
  v7 = *(v0 + 216);
  v10 = *(v0 + 40);

  *v7 = v11;
  *(v7 + 8) = v12;
  *(v7 + 16) = v13;
  *(v7 + 24) = v10;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10003C6DC()
{
  (*(v0[41] + 8))(v0[42], v0[40]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003C80C()
{
  v1 = v0[51];
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[35];
  v1(v0[38], v6);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10003C964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000712C(&qword_10009ED80, &qword_10007E1E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for CachedStorebag(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1000096C4(a1, &qword_10009ED80, &qword_10007E1E0);
    sub_10003DCF4(a2, a3, v9);

    return sub_1000096C4(v9, &qword_10009ED80, &qword_10007E1E0);
  }

  else
  {
    sub_10003EABC(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10003E5CC(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_10003CB24(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10003CBC4, v2, 0);
}

uint64_t sub_10003CBC4()
{
  v1 = v0[6];
  v2 = *(*v1 + 152);
  v3 = (*v1 + 152) & 0xFFFFFFFFFFFFLL | 0x6560000000000000;
  v0[8] = v2;
  v0[9] = v3;
  v4 = v2();
  if (v4)
  {
    v0[10] = v4;
    v5 = v4;
    v6 = swift_task_alloc();
    v0[11] = v6;
    v7 = sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    *v6 = v0;
    v6[1] = sub_10003CEC4;

    return Task.result.getter(v0 + 2, v5, &type metadata for ()[8], v7, &protocol self-conformance witness table for Error);
  }

  else
  {
    v9 = v0[6];
    v8 = v0[7];
    v11 = v0[4];
    v10 = v0[5];
    v12 = os_transaction_create();
    (*(*v9 + 184))(v12);
    v13 = sub_10007A0A0();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = sub_100039490(&qword_10009F0A8, type metadata accessor for StorebagCache, &unk_10007E290);
    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = v14;
    v15[4] = v9;
    v15[5] = v11;
    v15[6] = v10;
    swift_retain_n();

    v16 = sub_100005244(0, 0, v8, &unk_10007E358, v15);
    v0[12] = v16;
    v17 = *(*v9 + 160);

    v17(v18);
    v19 = swift_task_alloc();
    v0[13] = v19;
    v20 = sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    *v19 = v0;
    v19[1] = sub_10003D2D8;

    return Task.value.getter(v20, v16, &type metadata for ()[8], v20, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10003CEC4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  sub_10003F0D8(*(v1 + 16), *(v1 + 24));

  return _swift_task_switch(sub_10003CFF8, v2, 0);
}

uint64_t sub_10003CFF8()
{
  v1 = v0[8];

  v3 = v1(v2);
  if (v3)
  {
    v0[10] = v3;
    v4 = v3;
    v5 = swift_task_alloc();
    v0[11] = v5;
    v6 = sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    *v5 = v0;
    v5[1] = sub_10003CEC4;

    return Task.result.getter(v0 + 2, v4, &type metadata for ()[8], v6, &protocol self-conformance witness table for Error);
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v10 = v0[4];
    v9 = v0[5];
    v11 = os_transaction_create();
    (*(*v8 + 184))(v11);
    v12 = sub_10007A0A0();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = sub_100039490(&qword_10009F0A8, type metadata accessor for StorebagCache, &unk_10007E290);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = v13;
    v14[4] = v8;
    v14[5] = v10;
    v14[6] = v9;
    swift_retain_n();

    v15 = sub_100005244(0, 0, v7, &unk_10007E358, v14);
    v0[12] = v15;
    v16 = *(*v8 + 160);

    v16(v17);
    v18 = swift_task_alloc();
    v0[13] = v18;
    v19 = sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    *v18 = v0;
    v18[1] = sub_10003D2D8;

    return Task.value.getter(v19, v15, &type metadata for ()[8], v19, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10003D2D8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_10003D474;
  }

  else
  {
    v4 = sub_10003D404;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10003D404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003D474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1000798B0();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_10003D5AC, a4, 0);
}

uint64_t sub_10003D5AC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC21CloudTelemetryService13StorebagCache_storebagSource);

  v9._countAndFlagsBits = 0x7473696C702ELL;
  v9._object = 0xE600000000000000;
  sub_100079F00(v9);
  sub_100079820();

  v7 = (*(*v1 + 136) + **(*v1 + 136));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10003D740;
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  return v7(v5, v4, v3);
}

uint64_t sub_10003D740()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_10003D984;
  }

  else
  {
    v7 = sub_10003D8C8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10003D8C8()
{
  v1 = *(v0 + 16);
  (*(*v1 + 160))(0);
  (*(*v1 + 184))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003D984()
{
  v1 = *(v0 + 16);
  (*(*v1 + 160))(0);
  (*(*v1 + 184))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003DA40(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_10000712C(&qword_10009ED80, &qword_10007E1E0);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  if (qword_1000A3E80 != -1)
  {
    swift_once();
  }

  v9 = sub_100079BA0();
  sub_1000070F4(v9, qword_1000A6CE8);

  v10 = sub_100079B80();
  v11 = sub_10007A160();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_100006B00(a1, a2, v16);
    _os_log_impl(&_mh_execute_header, v10, v11, "evicting storebag %{public}s from cache", v12, 0xCu);
    sub_1000070A8(v13);
  }

  v14 = (*(*v3 + 144))(v16);
  sub_10003DCF4(a1, a2, v8);
  sub_1000096C4(v8, &qword_10009ED80, &qword_10007E1E0);
  return v14(v16, 0);
}

uint64_t sub_10003DC54()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC21CloudTelemetryService13StorebagCache_storebagCacheURL;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10003DCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000A0FC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003E388();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for CachedStorebag(0);
    v19 = *(v12 - 8);
    sub_10003EABC(v11 + *(v19 + 72) * v8, a3);
    sub_10003E19C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for CachedStorebag(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_10003DE4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CachedStorebag(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000712C(&qword_10009F0A0, &qword_10007E348);
  v40 = v4;
  result = sub_10007A4C0();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_10003EABC(v28, v41);
      }

      else
      {
        sub_10003E9F4(v28, v41, type metadata accessor for CachedStorebag);
      }

      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_10003EABC(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_10003E19C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007A2F0() + 1) & ~v5;
    while (1)
    {
      sub_10007A730();

      sub_100079EC0();
      v9 = sub_10007A760();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for CachedStorebag(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10003E388()
{
  v1 = v0;
  v2 = type metadata accessor for CachedStorebag(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000712C(&qword_10009F0A0, &qword_10007E348);
  v4 = *v0;
  v5 = sub_10007A4B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_10003E9F4(*(v4 + 56) + v26, v30, type metadata accessor for CachedStorebag);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10003EABC(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_10003E5CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000A0FC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_10003E388();
      goto LABEL_7;
    }

    sub_10003DE4C(v15, a4 & 1);
    v21 = sub_10000A0FC(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_10007A6C0();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for CachedStorebag(0) - 8) + 72) * v12;

    sub_10003EF84(a1, v20);
    return;
  }

LABEL_13:
  sub_10003E730(v12, a2, a3, a1, v18);
}

uint64_t sub_10003E730(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for CachedStorebag(0);
  result = sub_10003EABC(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_10003E7C8(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009F0B8, &qword_10007E368);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000712C(&qword_10009F0A0, &qword_10007E348);
    v7 = sub_10007A4D0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000939C(v9, v5, &qword_10009F0B8, &qword_10007E368);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000A0FC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for CachedStorebag(0);
      result = sub_10003EABC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_10003E9BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003E9F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003EA5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003EABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedStorebag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003EB7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100079A00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10003EC3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100079A00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003ECE0(uint64_t a1)
{
  result = sub_100079A00();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10003ED5C(uint64_t a1)
{
  sub_10003EE0C(319, &qword_10009EE88, &type metadata accessor for CocoaError);
  if (v1 <= 0x3F)
  {
    sub_10003EE0C(319, &qword_10009EE90, sub_10003EE58);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10003EE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10003EE58()
{
  result = qword_10009EE98;
  if (!qword_10009EE98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10009EE98);
  }

  return result;
}

uint64_t sub_10003EEC4(uint64_t a1)
{
  result = sub_1000798B0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003EF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedStorebag(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003EFE8(__n128 a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_10003F030()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_10003D4E4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10003F0D8(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

Swift::Int Mode.hashValue.getter(unsigned __int8 a1)
{
  sub_10007A730();
  sub_10007A740(a1);
  return sub_10007A760();
}

uint64_t sub_10003F1A0()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6D10);
  sub_1000070F4(v0, qword_1000A6D10);
  return sub_100079B90();
}

uint64_t sub_10003F214()
{
  if (qword_1000A4040 != -1)
  {
    swift_once();
  }

  v0 = sub_100079BA0();

  return sub_1000070F4(v0, qword_1000A6D10);
}

uint64_t sub_10003F278()
{
  result = os_variant_has_internal_diagnostics();
  byte_1000A6D28 = result;
  return result;
}

char *sub_10003F2A0()
{
  if (qword_1000A4048 != -1)
  {
    swift_once();
  }

  return &byte_1000A6D28;
}

void sub_10003F2F0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100079DF0();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_1000A6D30 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_10003F368()
{
  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  return &qword_1000A6D30;
}

void sub_10003F3B8()
{
  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1000A6D30;
  v1 = sub_100079DF0();
  v2 = [v0 BOOLForKey:v1];

  byte_1000A6D38 = v2;
}

char *sub_10003F484()
{
  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  return &byte_1000A6D38;
}

void sub_10003F4D4()
{
  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1000A6D30;
  v1 = sub_100079DF0();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = qword_1000A6D30;
    v5 = sub_100079DF0();
    v6 = [v4 integerForKey:v5];

    v3 = v6 == 5;
  }

  byte_1000A6D39 = v3;
}

char *sub_10003F60C()
{
  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  return &byte_1000A6D39;
}

void sub_10003F65C()
{
  if (qword_1000A4048 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1000A6D28 == 1)
  {
    if (qword_1000A4050 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v0 = qword_1000A6D30;
    v1 = sub_100079DF0();
    v2 = [v0 BOOLForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  byte_1000A6D3A = v2;
}

char *sub_10003F788()
{
  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  return &byte_1000A6D3A;
}

void sub_10003F7F0()
{
  if (!*v0)
  {
    sub_10007A3B0(43);

    v2 = [objc_opt_self() mainBundle];
    v3 = [v2 bundleIdentifier];

    if (v3)
    {
      v4 = sub_100079E20();
      v6 = v5;

      v8._countAndFlagsBits = v4;
      v8._object = v6;
      sub_100079F00(v8);

      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (*v0 == 1)
  {
    sub_10007A3B0(54);
    v7._countAndFlagsBits = 0xD000000000000033;
    v7._object = 0x8000000100083C30;
    sub_100079F00(v7);
    v1._object = *(v0 + 16);
    if (v1._object)
    {
      v1._countAndFlagsBits = *(v0 + 8);
      sub_100079F00(v1);
LABEL_7:
      v9._countAndFlagsBits = 47;
      v9._object = 0xE100000000000000;
      sub_100079F00(v9);
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void sub_10003F96C()
{
  if (!*v0)
  {
    sub_10007A3B0(41);

    v2 = [objc_opt_self() mainBundle];
    v3 = [v2 bundleIdentifier];

    if (v3)
    {
      v4 = sub_100079E20();
      v6 = v5;

      v8._countAndFlagsBits = v4;
      v8._object = v6;
      sub_100079F00(v8);

      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (*v0 == 1)
  {
    sub_10007A3B0(52);
    v7._countAndFlagsBits = 0xD000000000000031;
    v7._object = 0x8000000100083CD0;
    sub_100079F00(v7);
    v1._object = *(v0 + 16);
    if (v1._object)
    {
      v1._countAndFlagsBits = *(v0 + 8);
      sub_100079F00(v1);
LABEL_7:
      v9._countAndFlagsBits = 47;
      v9._object = 0xE100000000000000;
      sub_100079F00(v9);
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

id sub_10003FAE8@<X0>(char *a1@<X8>)
{
  v3 = sub_100079520();
  v4 = *(v3 - 8);
  v84 = v3;
  v85 = v4;
  v5 = __chkstk_darwin(v3);
  v83 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v75 - v7;
  v87 = sub_100079530();
  v89 = *(v87 - 8);
  v8 = __chkstk_darwin(v87);
  v80 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v81 = &v75 - v11;
  v12 = __chkstk_darwin(v10);
  v88 = &v75 - v13;
  __chkstk_darwin(v12);
  v86 = &v75 - v14;
  v15 = sub_10000712C(&qword_10009E788, &qword_10007E390);
  __chkstk_darwin(v15 - 8);
  v17 = &v75 - v16;
  v18 = sub_1000798B0();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v75 - v23;
  sub_10001EDCC();
  sub_10003F96C();
  sub_100079810();

  v25 = *(v19 + 8);
  v91 = v19 + 8;
  v92 = v18;
  v90 = v25;
  v25(v24, v18);
  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v27 = NSURLIsDirectoryKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_100009668(inited + 32);
  sub_1000797C0();
  if (v1)
  {

    v28 = sub_100079750();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    sub_1000096C4(v17, &qword_10009E788, &qword_10007E390);
    goto LABEL_5;
  }

  v29 = a1;

  v30 = sub_100079750();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v17, 0, 1, v30);
  v32 = sub_1000796F0();
  result = (*(v31 + 8))(v17, v30);
  a1 = v29;
  if (v32 == 2 || (v32 & 1) == 0)
  {
LABEL_5:
    if (qword_1000A4040 != -1)
    {
      swift_once();
    }

    v34 = sub_100079BA0();
    sub_1000070F4(v34, qword_1000A6D10);
    v35 = v92;
    (*(v19 + 16))(v22, a1, v92);
    v36 = sub_100079B80();
    v37 = sub_10007A150();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v79 = 0;
      v39 = v38;
      v40 = a1;
      v41 = swift_slowAlloc();
      v95 = v41;
      *v39 = 136446210;
      v42 = sub_100079870();
      v44 = v43;
      v90(v22, v92);
      v45 = sub_100006B00(v42, v44, &v95);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "creating log directory at %{public}s", v39, 0xCu);
      sub_1000070A8(v41);
      a1 = v40;
      v35 = v92;
    }

    else
    {

      v90(v22, v35);
    }

    v46 = v89;
    v47 = [objc_opt_self() defaultManager];
    sub_100079800(v48);
    v50 = v49;
    v95 = 0;
    v51 = [v47 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:&v95];

    v52 = v88;
    if (v51)
    {
      return v95;
    }

    v53 = v95;
    v54 = sub_1000797A0();

    swift_willThrow();
    v95 = v54;
    swift_errorRetain();
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    v55 = v86;
    if (swift_dynamicCast())
    {
      v79 = a1;
      v77 = *(v46 + 16);
      v77(v52, v55, v87);
      v56 = sub_100046424(&qword_10009DE28, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
      v57 = v82;
      v78 = v56;
      sub_100079790();
      v58 = v83;
      sub_100079510();
      sub_100046424(&qword_10009DE30, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      v59 = v84;
      sub_100079FC0();
      sub_100079FC0();
      v60 = v85 + 8;
      v61 = *(v85 + 8);
      v61(v58, v59);
      v61(v57, v59);
      if (v94 == v93)
      {
        v62 = v88;
        sub_1000394FC(v88);

        v63 = *(v89 + 8);
        v64 = v62;
        v65 = v87;
        v63(v64, v87);
        v90(v79, v92);
        v63(v86, v65);
      }

      v66 = v88;
      v67 = *(v89 + 8);
      v85 = v60;
      v68 = v87;
      v88 = v89 + 8;
      v76 = v67;
      v67(v66, v87);
      v77(v81, v86, v68);
      sub_100079790();
      sub_100079500();
      sub_100079FC0();
      sub_100079FC0();
      v61(v58, v59);
      v61(v57, v59);
      if (v94 == v93)
      {
        v69 = v81;
        sub_1000394D8(v81);

        v70 = v87;
        v71 = v76;
        v76(v69, v87);
        v90(v79, v92);
        v71(v86, v70);
      }

      v72 = v57;
      v73 = v87;
      v76(v81, v87);
      v74 = v80;
      (*(v89 + 32))(v80, v86, v73);
      sub_100079790();
      sub_1000794F0();
      sub_100079FC0();
      sub_100079FC0();
      v61(v58, v59);
      v61(v72, v59);
      if (v94 == v93)
      {
        sub_100039520(v74);

        v76(v74, v87);
        v90(v79, v92);
      }

      v76(v74, v87);
      a1 = v79;
      v35 = v92;
    }

    swift_errorRetain();
    sub_1000398DC(v54);
    v90(a1, v35);
  }

  return result;
}