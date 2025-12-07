uint64_t sub_1001FF5CC()
{
  v1[27] = v0;
  sub_100068FC4(&qword_100504258, &qword_10040F8A0);
  v1[28] = swift_task_alloc();
  v2 = type metadata accessor for DispatchTime();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v3 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  v1[32] = v3;
  v1[33] = *(v3 - 8);
  v1[34] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[35] = v4;
  v1[36] = *(v4 - 8);
  v1[37] = swift_task_alloc();

  return _swift_task_switch(sub_1001FF77C, 0, 0);
}

uint64_t sub_1001FF77C(uint64_t a1, uint64_t a2)
{
  v72 = v2;
  v3 = v2[27];
  v4 = &v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v5 = *&v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v6 = *&v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8];
  v2[38] = v6;
  v8 = *(v4 + 2);
  v7 = *(v4 + 3);
  v9 = v7;
  if (v7 >> 62)
  {
    if (v7 >> 62 != 1)
    {
      if (v7 != 0x8000000000000000 || (v8 | v6 | v5) != 0)
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
          v3 = v2[27];
        }

        v35 = type metadata accessor for Logger();
        sub_1000958E4(v35, qword_10051B2C8);
        v36 = v3;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v39 = 136315394;
          v40 = UUID.uuidString.getter();
          v42 = sub_1002FFA0C(v40, v41, &v71);

          *(v39 + 4) = v42;
          *(v39 + 12) = 2080;
          v43 = *(v4 + 3);
          if (v43 >> 62)
          {
            if (v43 >> 62 == 1)
            {
              v44 = 0xE500000000000000;
              v45 = 0x6465726957;
            }

            else
            {
              v61 = (*(v4 + 2) | *v4 | *(v4 + 1)) == 0;
              v62 = v43 == 0x8000000000000000;
              if (v62 && v61)
              {
                v45 = 0x656D6567616E614DLL;
              }

              else
              {
                v45 = 0x64696C61766E49;
              }

              if (v62 && v61)
              {
                v44 = 0xEA0000000000746ELL;
              }

              else
              {
                v44 = 0xE700000000000000;
              }
            }
          }

          else
          {
            v44 = 0xED00006E6F697461;
            v45 = 0x6C756D4564726143;
          }

          v63 = sub_1002FFA0C(v45, v44, &v71);

          *(v39 + 14) = v63;
          _os_log_impl(&_mh_execute_header, v37, v38, "Session %s: Unexpected state %s while invalidating NFCredentialSessionHandle, expected not Invalid", v39, 0x16u);
          swift_arrayDestroy();
        }
      }

      goto LABEL_39;
    }

    v9 = (v7 & 0x3FFFFFFFFFFFFFFFLL);
  }

  sub_100218E94(v5, v6, *(v4 + 2), v7);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v10 = v2[27];
  v11 = type metadata accessor for Logger();
  sub_1000958E4(v11, qword_10051B2C8);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v5;
  v16 = v6;
  v17 = v13;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v70 = v15;
    v21 = v2[36];
    v20 = v2[37];
    v66 = v2[35];
    v67 = v17;
    v68 = v12;
    v22 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = UUID.uuidString.getter();
    v69 = v16;
    v25 = sub_1002FFA0C(v23, v24, &v71);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    CredentialInternal.identifier.getter();
    v26 = UUID.uuidString.getter();
    v28 = v27;
    (*(v21 + 8))(v20, v66);
    v15 = v70;
    v29 = sub_1002FFA0C(v26, v28, &v71);
    v16 = v69;

    *(v22 + 14) = v29;
    v17 = v67;
    _os_log_impl(&_mh_execute_header, v18, v19, "Session %s: Invalidating NFCredentialSessionHandle for credential %s", v22, 0x16u);
    swift_arrayDestroy();

    v12 = v68;
  }

  if (v6)
  {
    if (qword_100501D50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v30 = off_10050A868;

    os_unfair_lock_lock(v30 + 6);
    v31 = *&v30[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v30 + 6);

    if (v31)
    {
      sub_100307B18(0, 0);
    }

    [v16 setEventDelegate:0];
    v2[2] = v2;
    v2[3] = sub_1001FFFC8;
    v32 = swift_continuation_init();
    v2[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    v2[10] = _NSConcreteStackBlock;
    v2[11] = 1107296256;
    v2[12] = sub_10021C240;
    v2[13] = &unk_1004CBE08;
    v2[14] = v32;
    [v16 endSessionWithCompletion:v2 + 10];
    v33 = (v2 + 2);

    return _swift_continuation_await(v33);
  }

  v47 = v2[32];
  v46 = v2[33];
  v48 = v2[27];
  v49 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v46 + 48))(v48 + v49, 1, v47))
  {
    v51 = v2[30];
    v50 = v2[31];
    v52 = v2[29];
    sub_10012DFF8(v48 + v49, v2[34]);
    static DispatchTime.now()();
    v53 = DispatchTime.uptimeNanoseconds.getter();
    (*(v51 + 8))(v50, v52);
    v33 = DispatchTime.uptimeNanoseconds.getter();
    if (v53 < v33)
    {
      __break(1u);
      return _swift_continuation_await(v33);
    }

    v54 = v2[34];
    (*(v54 + *(v2[32] + 24)))((v53 - v33) / 0x3B9ACA00);
    sub_100218F50(v54);
  }

  v55 = v2[32];
  v56 = v2[33];
  v57 = v2[28];
  v58 = *(v2[27] + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  static DispatchTime.now()();
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  *(v59 + 24) = 4;
  *(v57 + *(v55 + 20)) = 4;
  v60 = (v57 + *(v55 + 24));
  *v60 = sub_10012E59C;
  v60[1] = v59;
  (*(v56 + 56))(v57, 0, 1, v55);
  swift_beginAccess();
  sub_100147EA4(v57, v48 + v49, &qword_100504258, &qword_10040F8A0);
  swift_endAccess();
  sub_1001FEFA8(0, 0, 0, 0x8000000000000000);
LABEL_39:

  v64 = v2[1];

  return v64();
}

uint64_t sub_1001FFFC8()
{

  return _swift_task_switch(sub_1002000A8, 0, 0);
}

unint64_t sub_1002000A8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 216);
  v4 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v1 + 48))(v3 + v4, 1, v2))
  {
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    v7 = *(v0 + 232);
    sub_10012DFF8(v3 + v4, *(v0 + 272));
    static DispatchTime.now()();
    v8 = DispatchTime.uptimeNanoseconds.getter();
    (*(v6 + 8))(v5, v7);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v8 < result)
    {
      __break(1u);
      return result;
    }

    v10 = *(v0 + 272);
    (*(v10 + *(*(v0 + 256) + 24)))((v8 - result) / 0x3B9ACA00);
    sub_100218F50(v10);
  }

  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  v13 = *(v0 + 224);
  v14 = *(*(v0 + 216) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  static DispatchTime.now()();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = 4;
  *(v13 + *(v11 + 20)) = 4;
  v16 = (v13 + *(v11 + 24));
  *v16 = sub_10012E59C;
  v16[1] = v15;
  (*(v12 + 56))(v13, 0, 1, v11);
  swift_beginAccess();
  sub_100147EA4(v13, v3 + v4, &qword_100504258, &qword_10040F8A0);
  swift_endAccess();
  sub_1001FEFA8(0, 0, 0, 0x8000000000000000);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002002FC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1002003EC, 0, 0);
}

uint64_t sub_1002003EC()
{
  v28 = v0;
  swift_beginAccess();
  sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  UserDefaultBacked.wrappedValue.getter();
  v1 = *(v0 + 272);
  swift_endAccess();
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 40);
    v4 = *(v3 + 32);
    *(v0 + 274) = v4;
    v5 = -1;
    v6 = -1 << v4;
    if (-(-1 << v4) < 64)
    {
      v5 = ~(-1 << -(-1 << v4));
    }

    v7 = v5 & *(v3 + 56);
    *(v0 + 192) = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionIdentifier;

    if (v7)
    {
      v9 = 0;
LABEL_12:
      *(v0 + 200) = v7;
      *(v0 + 208) = v9;
      v19 = *(v0 + 80);
      v20 = *(v0 + 88);
      v21 = *(v0 + 56);
      v22 = *(v8 + 48) + *(v2 + 72) * (__clz(__rbit64(v7)) | (v9 << 6));
      v23 = *(v2 + 16);
      *(v0 + 216) = v23;
      *(v0 + 224) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v23(v20, v22, v21);
      (*(v2 + 32))(v19, v20, v21);
      if (qword_100501C90 != -1)
      {
        swift_once();
      }

      v24 = swift_task_alloc();
      *(v0 + 232) = v24;
      *v24 = v0;
      v24[1] = sub_100200E9C;
      v25 = *(v0 + 80);

      return sub_1002E7C64(v25);
    }

    else
    {
      v18 = 0;
      while (((63 - v6) >> 6) - 1 != v18)
      {
        v9 = v18 + 1;
        v7 = *(v8 + 8 * v18++ + 64);
        if (v7)
        {
          goto LABEL_12;
        }
      }

      v26 = *(v0 + 8);

      return v26();
    }
  }

  else
  {
    v10 = *(v0 + 40);
    _StringGuts.grow(_:)(35);

    strcpy(v27, "Admin session ");
    HIBYTE(v27[1]) = -18;
    v11._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v11);

    v12._object = 0x8000000100467D00;
    v12._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v12);
    v13 = v27[0];
    v14 = v27[1];
    *(v0 + 112) = v27[1];
    v15 = swift_allocObject();
    *(v0 + 120) = v15;
    *(v15 + 16) = v10;

    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_1002007E0;

    return sub_1001FB560(sub_1001FB560, v13, v14, &unk_10040FA58, v15);
  }
}

uint64_t sub_1002007E0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1002016E0;
  }

  else
  {

    v2 = sub_100200904;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100200904()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v2 + 32);
  *(v0 + 273) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 56);
  *(v0 + 144) = *(v0 + 136);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 152) = v6;
    *(v0 + 160) = v8;
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    v12 = *(v0 + 56);
    (*(v1 + 16))(v11, *(v7 + 48) + *(v1 + 72) * (__clz(__rbit64(v6)) | (v8 << 6)), v12);
    (*(v1 + 32))(v10, v11, v12);
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v13 = qword_10051B858;
    *(v0 + 168) = qword_10051B858;

    return _swift_task_switch(sub_100200AF8, v13, 0);
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100200AF8()
{
  v1 = v0[18];
  v2 = sub_10035E904();
  if (v1)
  {
    v0[23] = v1;
    v7 = sub_100200DD8;
  }

  else
  {
    v3 = v2;
    v4 = v0[21];
    v5 = v0[12];
    v6 = swift_task_alloc();
    v6[2] = v3;
    v6[3] = v4;
    v6[4] = v5;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v0[22] = 0;

    v7 = sub_100200BE8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100200BE8()
{
  (*(*(v0 + 64) + 8))(*(v0 + 96), *(v0 + 56));
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  *(v0 + 144) = *(v0 + 176);
  v3 = (v2 - 1) & v2;
  if (v3)
  {
    v4 = *(v0 + 40);
LABEL_7:
    *(v0 + 152) = v3;
    *(v0 + 160) = v1;
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    (*(v9 + 16))(v7, *(v4 + 48) + *(v9 + 72) * (__clz(__rbit64(v3)) | (v1 << 6)), v8);
    (*(v9 + 32))(v6, v7, v8);
    if (qword_100501DC8 != -1)
    {
LABEL_15:
      swift_once();
    }

    v10 = qword_10051B858;
    *(v0 + 168) = qword_10051B858;

    return _swift_task_switch(sub_100200AF8, v10, 0);
  }

  else
  {
    while (1)
    {
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v5 >= (((1 << *(v0 + 273)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v0 + 40);
      v3 = *(v4 + 8 * v5 + 56);
      ++v1;
      if (v3)
      {
        v1 = v5;
        goto LABEL_7;
      }
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100200DD8()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100200E9C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10020161C;
  }

  else
  {
    v2 = sub_100200FB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100200FB0(uint64_t a1, uint64_t a2)
{
  v30 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = v2[27];
  v4 = v2[9];
  v5 = v2[10];
  v7 = v2[6];
  v6 = v2[7];
  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_10051B2C8);
  v3(v4, v5, v6);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v2[8];
    v12 = v2[9];
    v28 = v2[7];
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = UUID.uuidString.getter();
    v17 = sub_1002FFA0C(v15, v16, &v29);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v28);
    v22 = sub_1002FFA0C(v18, v20, &v29);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: Successfully deleted credential %s with SHIM", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v2[8];
    v23 = v2[9];
    v25 = v2[7];

    v21 = *(v24 + 8);
    v21(v23, v25);
  }

  v2[31] = v21;
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v26 = qword_10051B858;
  v2[32] = qword_10051B858;

  return _swift_task_switch(sub_10020123C, v26, 0);
}

uint64_t sub_10020123C()
{
  v1 = v0[30];
  v2 = sub_10035E904();
  if (v1)
  {
    v0[33] = v1;
    v7 = sub_100201554;
  }

  else
  {
    v3 = v2;
    v4 = v0[32];
    v5 = v0[10];
    v6 = swift_task_alloc();
    v6[2] = v3;
    v6[3] = v4;
    v6[4] = v5;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v7 = sub_100201328;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100201328()
{
  (*(v0 + 248))(*(v0 + 80), *(v0 + 56));
  v1 = *(v0 + 208);
  v2 = (*(v0 + 200) - 1) & *(v0 + 200);
  if (v2)
  {
    v3 = *(v0 + 40);
LABEL_7:
    *(v0 + 200) = v2;
    *(v0 + 208) = v1;
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v9 = *(v3 + 48) + *(v8 + 72) * (__clz(__rbit64(v2)) | (v1 << 6));
    v10 = *(v8 + 16);
    *(v0 + 216) = v10;
    *(v0 + 224) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v9, v7);
    (*(v8 + 32))(v5, v6, v7);
    if (qword_100501C90 != -1)
    {
LABEL_15:
      swift_once();
    }

    v11 = swift_task_alloc();
    *(v0 + 232) = v11;
    *v11 = v0;
    v11[1] = sub_100200E9C;
    v12 = *(v0 + 80);

    return sub_1002E7C64(v12);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v4 >= (((1 << *(v0 + 274)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v0 + 40);
      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100201554()
{
  v1 = v0[31];
  v2 = v0[10];
  v3 = v0[7];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10020161C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002016E0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1002017BC(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void, uint64_t))
{
  v9 = v8;
  if (a1)
  {
    v15 = qword_100501A48;
    v16 = a1;
    if (v15 != -1)
    {
      v33 = v16;
      swift_once();
      v16 = v33;
    }

    v17 = qword_10051B398;
    v18 = v16;
    os_unfair_lock_lock((v17 + 16));
    sub_1001B1178((v17 + 24), v18, a5, a3, v17, a2);
    os_unfair_lock_unlock((v17 + 16));
  }

  if (a4)
  {
    if (qword_100501A48 != -1)
    {
      swift_once();
    }

    sub_1001B0970();
  }

  if (a2)
  {
    swift_errorRetain();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_10051B2C8);
    v20 = a1;
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = v20;
      sub_100068FC4(a6, a7);
      v25 = String.init<A>(describing:)();
      v27 = sub_1002FFA0C(v25, v26, &v37);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = sub_1002FFA0C(v28, v29, &v37);

      *(v23 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Session %s ended before it started with error %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    v31 = *v9;
    if (*v9)
    {
      v32 = *(v9 + 8);
      swift_errorRetain();
      v31(0, a2);

      a8(v31, v32);
    }

    else
    {
    }

    *v9 = 0;
    *(v9 + 8) = 0;
  }
}

uint64_t sub_100201B04(char a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = a1;
  v5[0] = &v4;
  v5[1] = a2;
  return a3(v5);
}

uint64_t sub_100201B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000938D4(a3, v22 - v9, &qword_100504250, &qword_10040D610);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100075768(v10, &qword_100504250, &qword_10040D610);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100075768(a3, &qword_100504250, &qword_10040D610);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100075768(a3, &qword_100504250, &qword_10040D610);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

char *sub_100201DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v59 = a8;
  v53 = a7;
  v57 = a5;
  v58 = a6;
  v56 = a4;
  v55 = a3;
  v54 = a2;
  ObjectType = swift_getObjectType();
  v11 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = type metadata accessor for UUID();
  v60 = *(v14 - 8);
  v61 = v14;
  __chkstk_darwin(v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9[OBJC_IVAR____TtC10seserviced14SECUserSession_credentials] = _swiftEmptyArrayStorage;
  v17 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR____TtC10seserviced14SECUserSession_nearFieldEventDelegate;
  *&v9[v18] = [objc_allocWithZone(type metadata accessor for SECUserSession.NearFieldEventDelegate()) init];
  LOBYTE(v66) = 0;
  v69 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOBYTE(v66) = 0;
  v69 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOBYTE(v66) = 0;
  v69 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  LOBYTE(v66) = 0;
  v69 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  v19 = OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy;
  *&v9[OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy] = 0;
  v20 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  v21 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  v22 = *(*(v21 - 8) + 56);
  v22(&v9[v20], 1, 1, v21);
  v22(&v9[OBJC_IVAR____TtC10seserviced14SECUserSession_sessionElapsedTimeEvent], 1, 1, v21);
  v23 = v53;
  v24 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  sub_100068FC4(&unk_100507490, &qword_10040FA68);
  v25 = swift_allocObject();
  *&v9[v24] = v25;
  v26 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
  v26[128] = *(a1 + 128);
  *(v25 + 20) = 0;
  v27 = *(a1 + 112);
  *(v26 + 6) = *(a1 + 96);
  *(v26 + 7) = v27;
  v28 = *(a1 + 48);
  *(v26 + 2) = *(a1 + 32);
  *(v26 + 3) = v28;
  v29 = *(a1 + 80);
  *(v26 + 4) = *(a1 + 64);
  *(v26 + 5) = v29;
  v30 = *(a1 + 16);
  *v26 = *a1;
  *(v26 + 1) = v30;
  v31 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken];
  v32 = v55;
  *v31 = v54;
  v31[1] = v32;
  v33 = v57;
  v31[2] = v56;
  v31[3] = v33;
  v34 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  *v34 = 0;
  *(v34 + 1) = 0;
  *(v34 + 2) = 0;
  *(v34 + 3) = 0x8000000000000000;
  *&v9[v19] = v59;
  v35 = v58;
  *(v25 + 16) = 0;
  v36 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_sessionManagementDelegate];
  *v36 = v35;
  v36[1] = v23;
  v37 = type metadata accessor for SECNetworkController(0);
  v38 = swift_allocObject();
  v39 = OBJC_IVAR____TtC10seserviced20SECNetworkController_networkConfiguration;
  v40 = type metadata accessor for SECNetworkConfiguration(0);
  (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
  *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdentifierLengthWithTag) = 19;
  *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSequenceCounterLastByteIndex) = 38;
  *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_platformIdTag) = 57120;
  *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_jsblSeqCounterTag) = 57137;
  *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_signatureTag) = 24375;
  *(v38 + OBJC_IVAR____TtC10seserviced20SECNetworkController_rndDevTag) = 133;
  v41 = &v9[OBJC_IVAR____TtC10seserviced14SECUserSession_networkController];
  v41[3] = v37;
  v41[4] = &off_1004CFF58;
  *v41 = v38;
  swift_unknownObjectRetain();
  sub_100113B54(v35, v23);
  UUID.init()();
  (*(v60 + 32))(&v9[OBJC_IVAR____TtC10seserviced14SECUserSession_sessionIdentifier], v16, v61);
  _s19SECSessionAnalyticsCMa();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1000915C0(&off_1004C3C08);
  *(v42 + 24) = sub_1000915D4(&off_1004C3C78);
  *(v42 + 32) = 4;
  *&v9[OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics] = v42;
  v70.receiver = v9;
  v70.super_class = ObjectType;
  v43 = objc_msgSendSuper2(&v70, "init");
  v44 = OBJC_IVAR____TtC10seserviced14SECUserSession__useNetworkShim;
  swift_beginAccess();
  v45 = v63;
  v46 = &v43[v44];
  v47 = v64;
  (*(v63 + 16))(v13, v46, v64);
  v48 = v43;
  UserDefaultBacked.wrappedValue.getter();
  (*(v45 + 8))(v13, v47);
  if (v66 == 1)
  {
    v49 = type metadata accessor for SECNetworkShim(0);
    v50 = swift_allocObject();
    LOBYTE(v66) = 0;
    v65 = 2;
    UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
    v67 = v49;
    v68 = &off_1004D1178;
    swift_unknownObjectRelease();
    sub_1000B2A4C(v35, v23);
    *&v66 = v50;
    v51 = OBJC_IVAR____TtC10seserviced14SECUserSession_networkController;
    swift_beginAccess();
    sub_1000752F4(&v48[v51]);
    sub_1000BC104(&v66, &v48[v51]);
    swift_endAccess();
  }

  else
  {
    swift_unknownObjectRelease();

    sub_1000B2A4C(v35, v23);
  }

  return v48;
}

uint64_t sub_10020253C()
{
  v1[118] = v0;
  v1[119] = swift_getObjectType();
  sub_100068FC4(&qword_100504258, &qword_10040F8A0);
  v1[120] = swift_task_alloc();
  v2 = type metadata accessor for SESFeature.RuntimeFlag();
  v1[121] = v2;
  v1[122] = *(v2 - 8);
  v1[123] = swift_task_alloc();

  return _swift_task_switch(sub_100202640, 0, 0);
}

uint64_t sub_100202640()
{
  v28 = v0;
  sub_100203EF4();
  if (v1)
  {
    sub_10020422C();
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v2 = qword_10051B858;
    *(v0 + 992) = qword_10051B858;
    sub_1001FF418((v0 + 560));
    *(v0 + 1000) = 0;
    *(v0 + 1008) = *(v0 + 560);
    *(v0 + 1016) = *(v0 + 568);

    sub_10012E450(v0 + 560);

    return _swift_task_switch(sub_1002029C0, v2, 0);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 944);
    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 944);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315138;
      v11 = (v8 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
      v13 = *(v8 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 96);
      v12 = *(v8 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 112);
      v14 = *(v8 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 80);
      *(v0 + 144) = *(v8 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128);
      *(v0 + 112) = v13;
      *(v0 + 128) = v12;
      *(v0 + 96) = v14;
      v16 = v11[1];
      v15 = v11[2];
      v17 = v11[4];
      *(v0 + 64) = v11[3];
      *(v0 + 80) = v17;
      *(v0 + 32) = v16;
      *(v0 + 48) = v15;
      *(v0 + 16) = *v11;
      sub_10012E344(v0 + 16, v0 + 288);
      v18 = sub_10013F33C();
      v20 = v19;
      sub_10012E3A0(v0 + 16);
      v21 = sub_1002FFA0C(v18, v20, &v27);

      *(v9 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v6, v7, "Client %s currently ineligible for launch", v9, 0xCu);
      sub_1000752F4(v10);
    }

    sub_10009591C();
    v22 = swift_allocError();
    *v23 = 27;
    swift_willThrow();
    v24 = *(v0 + 944);
    swift_beginAccess();
    swift_errorRetain();
    sub_1002017BC(v24, v22, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
    swift_endAccess();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1002029C0()
{
  v1 = v0[125];
  v0[128] = sub_100362B68(v0[126], v0[127]);
  v0[129] = v1;

  if (v1)
  {
    v2 = sub_100203BF0;
  }

  else
  {
    v2 = sub_100202A60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100202A60()
{
  v0[117] = v0[128];
  v1 = swift_allocObject();
  v0[130] = v1;
  *(v1 + 16) = v0 + 117;
  strcpy((v1 + 24), "Session start");
  *(v1 + 38) = -4864;
  v2 = swift_task_alloc();
  v0[131] = v2;
  *v2 = v0;
  v2[1] = sub_100202B78;

  return sub_1001FBFAC(0x206E6F6973736553, 0xED00007472617473, &unk_10040F8B0, v1);
}

uint64_t sub_100202B78(uint64_t a1)
{
  *(*v2 + 1056) = v1;

  if (v1)
  {

    v3 = sub_100203CEC;
  }

  else
  {

    v3 = sub_100202CC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100202CC4()
{
  v59 = v0;
  v1 = *(v0 + 984);
  v2 = *(v0 + 976);
  v3 = *(v0 + 968);
  v4 = *(v0 + 944);
  swift_beginAccess();
  v5 = *(v0 + 936);
  *(v0 + 1064) = v5;
  v6 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  *(v4 + v6) = v5;

  (*(v2 + 104))(v1, enum case for SESFeature.RuntimeFlag.viennaGDPR(_:), v3);
  LOBYTE(v5) = static SESFeature.isEnabled(_:)();
  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v7 = swift_task_alloc();
    *(v0 + 1072) = v7;
    *v7 = v0;
    v7[1] = sub_100203464;

    return sub_100204974();
  }

  if ((sub_10014891C() & 1) == 0)
  {
    if (qword_1005019D8 == -1)
    {
LABEL_15:
      v33 = *(v0 + 944);
      v34 = type metadata accessor for Logger();
      sub_1000958E4(v34, qword_10051B2C8);
      v35 = v33;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = *(v0 + 944);
        v39 = swift_slowAlloc();
        v58[0] = swift_slowAlloc();
        *v39 = 136315394;
        v40 = UUID.uuidString.getter();
        v42 = sub_1002FFA0C(v40, v41, v58);

        *(v39 + 4) = v42;
        *(v39 + 12) = 2080;
        v43 = v38 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
        *(v0 + 152) = *(v38 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
        v44 = *(v43 + 64);
        v46 = *(v43 + 16);
        v45 = *(v43 + 32);
        *(v0 + 200) = *(v43 + 48);
        *(v0 + 216) = v44;
        *(v0 + 168) = v46;
        *(v0 + 184) = v45;
        v48 = *(v43 + 96);
        v47 = *(v43 + 112);
        v49 = *(v43 + 80);
        *(v0 + 280) = *(v43 + 128);
        *(v0 + 248) = v48;
        *(v0 + 264) = v47;
        *(v0 + 232) = v49;
        sub_10012E344(v0 + 152, v0 + 424);
        v50 = sub_10013F33C();
        v52 = v51;
        sub_10012E3A0(v0 + 152);
        v53 = sub_1002FFA0C(v50, v52, v58);

        *(v39 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v36, v37, "TCC denied session %s for client %s that is not allowed to use SEC", v39, 0x16u);
        swift_arrayDestroy();
      }

      sub_10009591C();
      v54 = swift_allocError();
      *v55 = 22;
      swift_willThrow();

      v56 = *(v0 + 944);
      swift_beginAccess();
      swift_errorRetain();
      sub_1002017BC(v56, v54, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
      swift_endAccess();

      goto LABEL_18;
    }

LABEL_22:
    swift_once();
    goto LABEL_15;
  }

  if (qword_100501D18 != -1)
  {
    swift_once();
  }

  v9 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
  sub_1000958E4(v9, qword_10050A5B8);
  swift_beginAccess();
  v10 = UserDefaultBacked.wrappedValue.modify();
  if (*v11 == -1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = *(v0 + 944);
  ++*v11;
  v10(v0 + 712, 0);
  swift_endAccess();
  v13 = v12 + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionManagementDelegate;
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 8);
  if (*v13)
  {
    v14(*(v0 + 944), 0);
  }

  v16 = *(v0 + 960);
  v17 = *(v0 + 944);
  *v13 = 0;
  *(v13 + 8) = 0;
  swift_endAccess();
  sub_1000B2A4C(v14, v15);
  v18 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics;
  v19 = *(v17 + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  static DispatchTime.now()();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = 0;
  v21 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  *(v16 + *(v21 + 20)) = 0;
  v22 = (v16 + *(v21 + 24));
  *v22 = sub_10012DF7C;
  v22[1] = v20;
  v23 = *(*(v21 - 8) + 56);
  v23(v16, 0, 1, v21);
  v24 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionElapsedTimeEvent;
  swift_beginAccess();
  sub_100147EA4(v16, v17 + v24, &qword_100504258, &qword_10040F8A0);
  swift_endAccess();
  v25 = *(v17 + v18);

  static DispatchTime.now()();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = 4;
  *(v16 + *(v21 + 20)) = 4;
  v27 = (v16 + *(v21 + 24));
  *v27 = sub_10012E59C;
  v27[1] = v26;
  v23(v16, 0, 1, v21);
  v28 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  sub_100147EA4(v16, v17 + v28, &qword_100504258, &qword_10040F8A0);
  swift_endAccess();
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 944);
  v30 = qword_10051B350;
  *(v0 + 696) = *(v0 + 952);
  *(v0 + 704) = &off_1004CBB48;
  *(v0 + 672) = v29;
  v31 = OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate;
  swift_beginAccess();
  v32 = v29;
  sub_100219254(v0 + 672, v30 + v31);
  swift_endAccess();
  sub_100075768(v0 + 672, &qword_100505218, &qword_10040CA90);

LABEL_18:

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_100203464()
{
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v2 = sub_100203DF0;
  }

  else
  {
    v2 = sub_100203578;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100203578()
{
  v52 = v0;
  if (sub_10014891C())
  {
    if (qword_100501D18 != -1)
    {
      swift_once();
    }

    v1 = sub_100068FC4(&qword_100506F28, &qword_10040F2B0);
    sub_1000958E4(v1, qword_10050A5B8);
    swift_beginAccess();
    v2 = UserDefaultBacked.wrappedValue.modify();
    if (*v3 != -1)
    {
      v4 = *(v0 + 944);
      ++*v3;
      v2(v0 + 712, 0);
      swift_endAccess();
      v5 = v4 + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionManagementDelegate;
      swift_beginAccess();
      v6 = *v5;
      v7 = *(v5 + 8);
      if (*v5)
      {
        v6(*(v0 + 944), 0);
      }

      v8 = *(v0 + 960);
      v9 = *(v0 + 944);
      *v5 = 0;
      *(v5 + 8) = 0;
      swift_endAccess();
      sub_1000B2A4C(v6, v7);
      v10 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics;
      v11 = *(v9 + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

      static DispatchTime.now()();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      v13 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
      *(v8 + *(v13 + 20)) = 0;
      v14 = (v8 + *(v13 + 24));
      *v14 = sub_10012DF7C;
      v14[1] = v12;
      v15 = *(*(v13 - 8) + 56);
      v15(v8, 0, 1, v13);
      v16 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionElapsedTimeEvent;
      swift_beginAccess();
      sub_100147EA4(v8, v9 + v16, &qword_100504258, &qword_10040F8A0);
      swift_endAccess();
      v17 = *(v9 + v10);

      static DispatchTime.now()();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = 4;
      *(v8 + *(v13 + 20)) = 4;
      v19 = (v8 + *(v13 + 24));
      *v19 = sub_10012E59C;
      v19[1] = v18;
      v15(v8, 0, 1, v13);
      v20 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
      swift_beginAccess();
      sub_100147EA4(v8, v9 + v20, &qword_100504258, &qword_10040F8A0);
      swift_endAccess();
      if (qword_100501A20 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 944);
      v22 = qword_10051B350;
      *(v0 + 696) = *(v0 + 952);
      *(v0 + 704) = &off_1004CBB48;
      *(v0 + 672) = v21;
      v23 = OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate;
      swift_beginAccess();
      v24 = v21;
      sub_100219254(v0 + 672, v22 + v23);
      swift_endAccess();
      sub_100075768(v0 + 672, &qword_100505218, &qword_10040CA90);

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_1005019D8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v25 = *(v0 + 944);
  v26 = type metadata accessor for Logger();
  sub_1000958E4(v26, qword_10051B2C8);
  v27 = v25;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 944);
    v31 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v31 = 136315394;
    v32 = UUID.uuidString.getter();
    v34 = sub_1002FFA0C(v32, v33, v51);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    v35 = v30 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
    *(v0 + 152) = *(v30 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
    v36 = *(v35 + 64);
    v38 = *(v35 + 16);
    v37 = *(v35 + 32);
    *(v0 + 200) = *(v35 + 48);
    *(v0 + 216) = v36;
    *(v0 + 168) = v38;
    *(v0 + 184) = v37;
    v40 = *(v35 + 96);
    v39 = *(v35 + 112);
    v41 = *(v35 + 80);
    *(v0 + 280) = *(v35 + 128);
    *(v0 + 248) = v40;
    *(v0 + 264) = v39;
    *(v0 + 232) = v41;
    sub_10012E344(v0 + 152, v0 + 424);
    v42 = sub_10013F33C();
    v44 = v43;
    sub_10012E3A0(v0 + 152);
    v45 = sub_1002FFA0C(v42, v44, v51);

    *(v31 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v28, v29, "TCC denied session %s for client %s that is not allowed to use SEC", v31, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  v46 = swift_allocError();
  *v47 = 22;
  swift_willThrow();

  v48 = *(v0 + 944);
  swift_beginAccess();
  swift_errorRetain();
  sub_1002017BC(v48, v46, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
  swift_endAccess();

LABEL_14:

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_100203BF0()
{
  v1 = v0[129];
  v2 = v0[118];
  swift_beginAccess();
  swift_errorRetain();
  sub_1002017BC(v2, v1, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100203CEC()
{

  v1 = v0[132];
  v2 = v0[118];
  swift_beginAccess();
  swift_errorRetain();
  sub_1002017BC(v2, v1, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100203DF0()
{

  v1 = v0[135];
  v2 = v0[118];
  swift_beginAccess();
  swift_errorRetain();
  sub_1002017BC(v2, v1, 4, 1, &off_1004CBB58, &unk_1005073C8, &unk_10040F878, sub_10021C274);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

void sub_100203EF4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken];
  v3 = *&v0[OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken + 16];
  v44 = *&v0[OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken];
  v45 = v3;
  v4 = kTCCServiceSecureElementAccess;
  if (kTCCServiceSecureElementAccess)
  {
    v33 = v44;
    v34 = v45;
    v5 = TCCAccessPreflightWithAuditToken();

    v6 = v5 != 2;
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v33 = v11;
      *v10 = 136315138;
      if (v5 == 2)
      {
        v12 = 0x7070417473726966;
      }

      else
      {
        v12 = 0xD000000000000013;
      }

      if (v5 == 2)
      {
        v13 = 0xEE0068636E75614CLL;
      }

      else
      {
        v13 = 0x8000000100467BE0;
      }

      v14 = sub_1002FFA0C(v12, v13, &v33);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Starting session with domain %s", v10, 0xCu);
      sub_1000752F4(v11);
    }

    v15 = *(v2 + 1);
    v42[0] = *v2;
    v42[1] = v15;
    v43 = 0;
    if ((sub_100306124(v6, v42, 0, 0) & 1) == 0)
    {
      v16 = v1;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v32 = v20;
        *v19 = 136315138;
        v22 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 96];
        v21 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 112];
        v23 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 80];
        v41 = v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128];
        v39 = v22;
        v40 = v21;
        v38 = v23;
        v25 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 16];
        v24 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 32];
        v26 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 64];
        v36 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 48];
        v37 = v26;
        v34 = v25;
        v35 = v24;
        v33 = *&v16[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo];
        sub_10012E344(&v33, &v31);
        v27 = sub_10013F33C();
        v29 = v28;
        sub_10012E3A0(&v33);
        v30 = sub_1002FFA0C(v27, v29, &v32);

        *(v19 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v17, v18, "Starting session for client %s that is ineligible", v19, 0xCu);
        sub_1000752F4(v20);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10020422C()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback);
  v4 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback);
  v5 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_installFinishedCallback + 8);
  *v3 = sub_10021A3E8;
  v3[1] = v2;

  sub_1000B2A4C(v4, v5);

  v6 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_nearFieldEventDelegate);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10021A3F0;
  *(v8 + 24) = v7;
  v9 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__rfFieldChanged;
  swift_beginAccess();
  v10 = *(v6 + v9);
  swift_retain_n();
  os_unfair_lock_lock((v10 + 32));
  sub_10021C1F8((v10 + 16));
  os_unfair_lock_unlock((v10 + 32));

  swift_endAccess();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10021A424;
  *(v12 + 24) = v11;
  v13 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__receivedHciData;
  swift_beginAccess();
  v14 = *(v6 + v13);
  swift_retain_n();
  os_unfair_lock_lock((v14 + 32));
  sub_10021C1F8((v14 + 16));
  os_unfair_lock_unlock((v14 + 32));

  swift_endAccess();

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10021A464;
  *(v16 + 24) = v15;
  v17 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__authExpired;
  swift_beginAccess();
  v18 = *(v6 + v17);
  swift_retain_n();
  os_unfair_lock_lock((v18 + 32));
  sub_10021C1F8((v18 + 16));
  os_unfair_lock_unlock((v18 + 32));

  swift_endAccess();
}

uint64_t sub_100204558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002045FC, 0, 0);
}

uint64_t sub_1002045FC()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  swift_beginAccess();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100204734;
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  return sub_10032C1CC(v7, v6, v4, v8, v5);
}

uint64_t sub_100204734(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_1002048EC;
  }

  else
  {
    v6 = *(v4 + 80);
    *(v4 + 104) = a1;
    swift_endAccess();
    sub_100075768(v6, &unk_10050BE80, &unk_10040B360);
    v5 = sub_10020487C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10020487C()
{
  **(v0 + 40) = *(v0 + 104);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002048EC()
{
  v1 = *(v0 + 80);
  swift_endAccess();
  sub_100075768(v1, &unk_10050BE80, &unk_10040B360);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100204994(uint64_t a1, uint64_t a2)
{
  sub_1001FF418((v2 + 560));
  *(v2 + 680) = 0;
  *(v2 + 688) = *(v2 + 560);
  *(v2 + 696) = *(v2 + 568);

  sub_10012E450(v2 + 560);
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B858;
  *(v2 + 704) = qword_10051B858;

  return _swift_task_switch(sub_100204AA0, v3, 0);
}

uint64_t sub_100204AA0()
{
  v1 = v0[85];
  v0[89] = sub_100137A14(v0[86], v0[87]);
  v0[90] = v1;
  if (v1)
  {
    v2 = sub_100205318;
  }

  else
  {

    v2 = sub_100204B40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100204B40(uint64_t a1, uint64_t a2)
{
  v53 = v2;
  v3 = *(v2 + 712);
  if (v3)
  {
    if (ApplicationInfoInternal.bundleId.getter() == 0x6E776F6E6B6E55 && v4 == 0xE700000000000000)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v7 = *(v2 + 672);
        v8 = type metadata accessor for Logger();
        sub_1000958E4(v8, qword_10051B2C8);
        v9 = v7;
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = *(v2 + 672);
          v13 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v13 = 136315394;
          v14 = UUID.uuidString.getter();
          v16 = sub_1002FFA0C(v14, v15, &v52);

          *(v13 + 4) = v16;
          *(v13 + 12) = 2080;
          v17 = v12 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
          *(v2 + 16) = *(v12 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
          v18 = *(v17 + 64);
          v20 = *(v17 + 16);
          v19 = *(v17 + 32);
          *(v2 + 64) = *(v17 + 48);
          *(v2 + 80) = v18;
          *(v2 + 32) = v20;
          *(v2 + 48) = v19;
          v22 = *(v17 + 96);
          v21 = *(v17 + 112);
          v23 = *(v17 + 80);
          *(v2 + 144) = *(v17 + 128);
          *(v2 + 112) = v22;
          *(v2 + 128) = v21;
          *(v2 + 96) = v23;
          sub_10012E344(v2 + 16, v2 + 424);
          v24 = sub_10013F33C();
          v26 = v25;
          sub_10012E3A0(v2 + 16);
          v27 = sub_1002FFA0C(v24, v26, &v52);

          *(v13 + 14) = v27;
          _os_log_impl(&_mh_execute_header, v10, v11, "Session %s, clientInfo %s, subsequent launch detected", v13, 0x16u);
          swift_arrayDestroy();
        }

        v28 = swift_task_alloc();
        *(v2 + 728) = v28;
        *v28 = v2;
        v28[1] = sub_100205048;

        return sub_100219590();
      }
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v30 = *(v2 + 672);
  v31 = type metadata accessor for Logger();
  sub_1000958E4(v31, qword_10051B2C8);
  v32 = v30;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v2 + 672);
    v36 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = UUID.uuidString.getter();
    v39 = sub_1002FFA0C(v37, v38, &v52);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    v40 = v35 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
    *(v2 + 152) = *(v35 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
    v41 = *(v40 + 64);
    v43 = *(v40 + 16);
    v42 = *(v40 + 32);
    *(v2 + 200) = *(v40 + 48);
    *(v2 + 216) = v41;
    *(v2 + 168) = v43;
    *(v2 + 184) = v42;
    v45 = *(v40 + 96);
    v44 = *(v40 + 112);
    v46 = *(v40 + 80);
    *(v2 + 280) = *(v40 + 128);
    *(v2 + 248) = v45;
    *(v2 + 264) = v44;
    *(v2 + 232) = v46;
    sub_10012E344(v2 + 152, v2 + 288);
    v47 = sub_10013F33C();
    v49 = v48;
    sub_10012E3A0(v2 + 152);
    v50 = sub_1002FFA0C(v47, v49, &v52);

    *(v36 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v33, v34, "Session %s, clientInfo %s, first launch detected", v36, 0x16u);
    swift_arrayDestroy();
  }

  v51 = swift_task_alloc();
  *(v2 + 744) = v51;
  *v51 = v2;
  v51[1] = sub_100205224;

  return sub_100216634();
}

uint64_t sub_100205048()
{
  *(*v1 + 736) = v0;

  if (v0)
  {
    v2 = sub_1002051C0;
  }

  else
  {
    v2 = sub_10020515C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10020515C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002051C0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100205224()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100205318()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10020537C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy);
    if (v8)
    {
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v7;
      v10[5] = v8;
      v10[6] = a1;
      swift_unknownObjectRetain();
      v11 = v7;

      sub_1001F9BE8(0, 0, v5, &unk_10040F938, v10);
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000958E4(v17, qword_10051B2C8);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v22);
        _os_log_impl(&_mh_execute_header, v18, v19, "%s: Remote notification proxy is unexpectedly nil", v20, 0xCu);
        sub_1000752F4(v21);
      }
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v22);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: self is unexpectedly nil", v15, 0xCu);
      sub_1000752F4(v16);
    }
  }
}

uint64_t sub_100205710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return _swift_task_switch(sub_100205734, 0, 0);
}

uint64_t sub_100205734()
{
  v1 = v0[19];

  sub_10028C478(1, 1);

  type metadata accessor for CredentialInternal();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[3] = sub_10020589C;
  v3 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100142A94;
  v0[13] = &unk_1004CBEF8;
  v0[14] = v3;
  [v1 installationCompletedWithCredentials:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10020589C()
{

  return _swift_task_switch(sub_10020597C, 0, 0);
}

uint64_t sub_10020597C()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1002059DC(char a1, uint64_t a2)
{
  v3 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy);
    if (v8)
    {
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;
      *(v10 + 48) = a1 & 1;
      swift_unknownObjectRetain();
      v11 = v7;
      sub_1001F9BE8(0, 0, v5, &unk_10040F928, v10);
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000958E4(v17, qword_10051B2C8);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v22);
        _os_log_impl(&_mh_execute_header, v18, v19, "%s: Remote notification proxy is unexpectedly nil", v20, 0xCu);
        sub_1000752F4(v21);
      }
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v22);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: self is unexpectedly nil", v15, 0xCu);
      sub_1000752F4(v16);
    }
  }
}

uint64_t sub_100205D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 160) = a6;
  *(v6 + 144) = a4;
  *(v6 + 152) = a5;
  return _swift_task_switch(sub_100205D90, 0, 0);
}

uint64_t sub_100205D90()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);

  sub_10028C478(3, 1);

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100205EDC;
  v3 = swift_continuation_init();
  *(v0 + 136) = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100142A94;
  *(v0 + 104) = &unk_1004CBEA8;
  *(v0 + 112) = v3;
  [v2 rfFieldChanged:v1 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100205EDC()
{

  return _swift_task_switch(sub_100205FBC, 0, 0);
}

void sub_100205FD0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy);
    if (v14)
    {
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v14;
      v16[5] = a1;
      v16[6] = a2;
      v16[7] = a3;
      v16[8] = a4;
      swift_unknownObjectRetain();
      sub_100069E2C(a1, a2);
      sub_100069E2C(a3, a4);
      sub_1001F9BE8(0, 0, v11, &unk_10040F918, v16);
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000958E4(v22, qword_10051B2C8);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v27);
        _os_log_impl(&_mh_execute_header, v23, v24, "%s: Remote notification proxy is unexpectedly nil", v25, 0xCu);
        sub_1000752F4(v26);
      }
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000958E4(v17, qword_10051B2C8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v27);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s: self is unexpectedly nil", v20, 0xCu);
      sub_1000752F4(v21);
    }
  }
}

uint64_t sub_100206384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  return _swift_task_switch(sub_1002063AC, 0, 0);
}

uint64_t sub_1002063AC()
{
  v1 = v0[18];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;
  v3 = Data._bridgeToObjectiveC()().super.isa;
  v0[24] = v3;
  v0[2] = v0;
  v0[3] = sub_1002064F8;
  v4 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100142A94;
  v0[13] = &unk_1004CBE58;
  v0[14] = v4;
  [v1 receivedHciDataWithData:isa appletIdentifier:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002064F8()
{

  return _swift_task_switch(sub_1002065D8, 0, 0);
}

uint64_t sub_1002065D8()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10020663C(uint64_t a1)
{
  v1 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC10seserviced14SECUserSession_remoteNotificationProxy);
    if (v6)
    {
      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v5;
      v8[5] = v6;
      swift_unknownObjectRetain();
      v9 = v5;
      sub_1001F9BE8(0, 0, v3, &unk_10040F900, v8);
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000958E4(v15, qword_10051B2C8);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v20);
        _os_log_impl(&_mh_execute_header, v16, v17, "%s: Remote notification proxy is unexpectedly nil", v18, 0xCu);
        sub_1000752F4(v19);
      }
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2C8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1002FFA0C(0xD00000000000001CLL, 0x8000000100467BC0, &v20);
      _os_log_impl(&_mh_execute_header, v11, v12, "%s: self is unexpectedly nil", v13, 0xCu);
      sub_1000752F4(v14);
    }
  }
}

uint64_t sub_1002069C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a5;
  v6 = swift_task_alloc();
  *(v5 + 152) = v6;
  *v6 = v5;
  v6[1] = sub_100206A54;

  return sub_1001FF5CC();
}

uint64_t sub_100206A54()
{

  return _swift_task_switch(sub_100206B50, 0, 0);
}

uint64_t sub_100206B50()
{
  v1 = v0[18];
  sub_10009591C();
  swift_allocError();
  *v2 = 17;
  v3 = _convertErrorToNSError(_:)();
  v0[20] = v3;

  v0[2] = v0;
  v0[3] = sub_100206CAC;
  v4 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100142A94;
  v0[13] = &unk_1004CBDB8;
  v0[14] = v4;
  [v1 sessionErrorEventWithReason:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100206CAC()
{

  return _swift_task_switch(sub_100206D8C, 0, 0);
}

uint64_t sub_100206D8C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100206DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100206E88;

  return sub_100206FE8(1, 3);
}

uint64_t sub_100206E88()
{

  return _swift_task_switch(sub_100206F84, 0, 0);
}

uint64_t sub_100206F84()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100206FE8(char a1, char a2)
{
  *(v3 + 376) = v2;
  *(v3 + 465) = a2;
  *(v3 + 464) = a1;
  v4 = type metadata accessor for DispatchTime();
  *(v3 + 384) = v4;
  *(v3 + 392) = *(v4 - 8);
  *(v3 + 400) = swift_task_alloc();
  v5 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  *(v3 + 408) = v5;
  *(v3 + 416) = *(v5 - 8);
  *(v3 + 424) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v3 + 432) = v6;
  *(v3 + 440) = *(v6 - 8);
  *(v3 + 448) = swift_task_alloc();

  return _swift_task_switch(sub_100207168, 0, 0);
}

uint64_t sub_100207168(uint64_t a1, uint64_t a2)
{
  v85 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = v2[47];
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v84[0] = v9;
    *v8 = 136315138;
    v10 = UUID.uuidString.getter();
    v12 = sub_1002FFA0C(v10, v11, v84);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "End session %s", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v13 = v2[47];
  v14 = v13 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState;
  v15 = *(v13 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState);
  v16 = *(v13 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8);
  v2[57] = v16;
  v18 = *(v14 + 16);
  v17 = *(v14 + 24);
  v19 = v17;
  if (!(v17 >> 62))
  {
    goto LABEL_8;
  }

  if (v17 >> 62 == 1)
  {
    v19 = (v17 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_8:
    sub_100218E94(v15, v16, v18, v17);
    v20 = v18;
    v21 = v19;
    v22 = v15;
    v23 = v16;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    v82 = v23;
    v83 = v2;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = v2[55];
      v26 = v2[56];
      v80 = v2[54];
      v28 = swift_slowAlloc();
      v81 = v20;
      v29 = swift_slowAlloc();
      v84[0] = v29;
      *v28 = 136315138;
      v79 = v25;
      CredentialInternal.identifier.getter();
      v30 = UUID.uuidString.getter();
      v31 = v22;
      v32 = v21;
      v34 = v33;
      (*(v27 + 8))(v26, v80);
      v35 = sub_1002FFA0C(v30, v34, v84);
      v21 = v32;
      v22 = v31;

      *(v28 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v24, v79, "Invalidating NFCredentialSessionHandle for credential %s", v28, 0xCu);
      sub_1000752F4(v29);
      v20 = v81;
    }

    if (v16)
    {
      v83[2] = v83;
      v83[3] = sub_100207AE4;
      v36 = swift_continuation_init();
      v83[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
      v83[10] = _NSConcreteStackBlock;
      v83[11] = 1107296256;
      v83[12] = sub_10021C240;
      v83[13] = &unk_1004CBB88;
      v83[14] = v36;
      [v82 endSessionWithCompletion:v83 + 10];
      v37 = (v83 + 2);

      return _swift_continuation_await(v37);
    }

    v2 = v83;
    v13 = v83[47];
    goto LABEL_25;
  }

  if (v17 != 0x8000000000000000 || (v18 | v16 | v15) != 0)
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Attempting to end an invalid session, no-op", v41, 2u);
    }

    goto LABEL_21;
  }

LABEL_25:
  sub_1001FEFA8(8, 0, 0, 0x8000000000000000);
  v44 = *(v13 + OBJC_IVAR____TtC10seserviced14SECUserSession_nearFieldEventDelegate);
  v45 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__receivedHciData;
  swift_beginAccess();
  v2[41] = 0;
  v2[42] = 0;
  v46 = *(v44 + v45);
  *(swift_task_alloc() + 16) = v2 + 41;
  os_unfair_lock_lock((v46 + 32));
  sub_100218F10((v46 + 16));
  os_unfair_lock_unlock((v46 + 32));

  swift_endAccess();
  v47 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__rfFieldChanged;
  swift_beginAccess();
  v2[43] = 0;
  v2[44] = 0;
  v48 = *(v44 + v47);
  *(swift_task_alloc() + 16) = v2 + 43;
  os_unfair_lock_lock((v48 + 32));
  sub_100218F10((v48 + 16));
  os_unfair_lock_unlock((v48 + 32));

  swift_endAccess();
  v49 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__authExpired;
  swift_beginAccess();
  v2[45] = 0;
  v2[46] = 0;
  v50 = *(v44 + v49);
  *(swift_task_alloc() + 16) = v2 + 45;
  os_unfair_lock_lock((v50 + 32));
  sub_100218F10((v50 + 16));
  os_unfair_lock_unlock((v50 + 32));

  swift_endAccess();
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  v51 = v2[51];
  v52 = v2[52];
  v53 = v2[47];
  v54 = qword_10051B350;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  v2[22] = 0;
  v55 = OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate;
  swift_beginAccess();
  sub_100147EA4((v2 + 18), v54 + v55, &qword_100505218, &qword_10040CA90);
  swift_endAccess();
  v56 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  v57 = *(v52 + 48);
  if (!v57(v53 + v56, 1, v51))
  {
    v59 = v2[49];
    v58 = v2[50];
    v60 = v2[48];
    sub_10012DFF8(v53 + v56, v2[53]);
    static DispatchTime.now()();
    v61 = DispatchTime.uptimeNanoseconds.getter();
    (*(v59 + 8))(v58, v60);
    v37 = DispatchTime.uptimeNanoseconds.getter();
    if (v61 < v37)
    {
      __break(1u);
      goto LABEL_38;
    }

    v62 = v2[53];
    (*(v62 + *(v2[51] + 24)))((v61 - v37) / 0x3B9ACA00);
    sub_100218F50(v62);
  }

  v63 = v2[51];
  v64 = v2[47];
  v65 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionElapsedTimeEvent;
  swift_beginAccess();
  if (!v57(v64 + v65, 1, v63))
  {
    v67 = v2[49];
    v66 = v2[50];
    v68 = v2[48];
    sub_10012DFF8(v64 + v65, v2[53]);
    static DispatchTime.now()();
    v69 = DispatchTime.uptimeNanoseconds.getter();
    (*(v67 + 8))(v66, v68);
    v37 = DispatchTime.uptimeNanoseconds.getter();
    if (v69 >= v37)
    {
      v70 = v2[53];
      (*(v70 + *(v2[51] + 24)))((v69 - v37) / 0x3B9ACA00);
      sub_100218F50(v70);
      goto LABEL_33;
    }

LABEL_38:
    __break(1u);
    return _swift_continuation_await(v37);
  }

LABEL_33:
  v71 = qword_100501A48;
  v72 = v2[47];
  if (v71 != -1)
  {
    swift_once();
    v72 = v2[47];
  }

  v73 = qword_10051B398;
  v74 = (qword_10051B398 + 16);
  v75 = *(v2 + 465);
  v76 = v72;
  os_unfair_lock_lock(v74);
  sub_1001B1178((v73 + 24), v76, &off_1004CBB58, v75, v73, 0);
  v77 = v2[47];
  v78 = *(v2 + 464);
  os_unfair_lock_unlock(v74);

  if (v78 == 1)
  {
    sub_1001B0970();
  }

LABEL_21:

  v42 = v2[1];

  return v42();
}

uint64_t sub_100207AE4()
{

  return _swift_task_switch(sub_100207BC4, 0, 0);
}

unint64_t sub_100207BC4()
{
  v1 = *(v0 + 376);
  sub_1001FEFA8(8, 0, 0, 0x8000000000000000);
  v2 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_nearFieldEventDelegate);
  v3 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__receivedHciData;
  swift_beginAccess();
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  v4 = *(v2 + v3);
  *(swift_task_alloc() + 16) = v0 + 328;
  os_unfair_lock_lock((v4 + 32));
  sub_100218F10((v4 + 16));
  os_unfair_lock_unlock((v4 + 32));

  swift_endAccess();
  v5 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__rfFieldChanged;
  swift_beginAccess();
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  v6 = *(v2 + v5);
  *(swift_task_alloc() + 16) = v0 + 344;
  os_unfair_lock_lock((v6 + 32));
  sub_100218F10((v6 + 16));
  os_unfair_lock_unlock((v6 + 32));

  swift_endAccess();
  v7 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__authExpired;
  swift_beginAccess();
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  v8 = *(v2 + v7);
  *(swift_task_alloc() + 16) = v0 + 360;
  os_unfair_lock_lock((v8 + 32));
  sub_100218F10((v8 + 16));
  os_unfair_lock_unlock((v8 + 32));

  swift_endAccess();
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 408);
  v10 = *(v0 + 416);
  v11 = *(v0 + 376);
  v12 = qword_10051B350;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
  v13 = OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate;
  swift_beginAccess();
  sub_100147EA4(v0 + 144, v12 + v13, &qword_100505218, &qword_10040CA90);
  swift_endAccess();
  v14 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  v15 = *(v10 + 48);
  if (!v15(v11 + v14, 1, v9))
  {
    v17 = *(v0 + 392);
    v16 = *(v0 + 400);
    v18 = *(v0 + 384);
    sub_10012DFF8(v11 + v14, *(v0 + 424));
    static DispatchTime.now()();
    v19 = DispatchTime.uptimeNanoseconds.getter();
    (*(v17 + 8))(v16, v18);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v19 < result)
    {
      __break(1u);
      goto LABEL_17;
    }

    v21 = *(v0 + 424);
    (*(v21 + *(*(v0 + 408) + 24)))((v19 - result) / 0x3B9ACA00);
    sub_100218F50(v21);
  }

  v22 = *(v0 + 408);
  v23 = *(v0 + 376);
  v24 = OBJC_IVAR____TtC10seserviced14SECUserSession_sessionElapsedTimeEvent;
  swift_beginAccess();
  if (!v15(v23 + v24, 1, v22))
  {
    v26 = *(v0 + 392);
    v25 = *(v0 + 400);
    v27 = *(v0 + 384);
    sub_10012DFF8(v23 + v24, *(v0 + 424));
    static DispatchTime.now()();
    v28 = DispatchTime.uptimeNanoseconds.getter();
    (*(v26 + 8))(v25, v27);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v28 >= result)
    {
      v29 = *(v0 + 424);
      (*(v29 + *(*(v0 + 408) + 24)))((v28 - result) / 0x3B9ACA00);
      sub_100218F50(v29);
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_9:
  v30 = qword_100501A48;
  v31 = *(v0 + 376);
  if (v30 != -1)
  {
    swift_once();
    v31 = *(v0 + 376);
  }

  v32 = qword_10051B398;
  v33 = (qword_10051B398 + 16);
  v34 = *(v0 + 465);
  v35 = v31;
  os_unfair_lock_lock(v33);
  sub_1001B1178((v32 + 24), v35, &off_1004CBB58, v34, v32, 0);
  v36 = *(v0 + 376);
  v37 = *(v0 + 464);
  os_unfair_lock_unlock(v33);

  if (v37 == 1)
  {
    sub_1001B0970();
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100208128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = type metadata accessor for UUID();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v8 = type metadata accessor for StateInternal();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_100208260, 0, 0);
}

uint64_t sub_100208260(uint64_t a1, uint64_t a2)
{
  v25 = v2;
  v3 = v2[10];
  v4 = &v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v5 = *&v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  if (v5 < 0 && (v5 == 0x8000000000000000 ? (v6 = (*(v4 + 1) | *(v4 + 2) | *v4) == 0) : (v6 = 0), v6))
  {
    v15 = swift_task_alloc();
    v2[21] = v15;
    *v15 = v2;
    v15[1] = sub_1002085F8;

    return sub_1002AC7A8();
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
      v3 = v2[10];
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      *v11 = 136315394;
      *(v11 + 4) = sub_1002FFA0C(0xD000000000000022, 0x8000000100467CD0, v24);
      *(v11 + 12) = 2080;
      v12 = *(v4 + 3);
      if (v12 >> 62)
      {
        if (v12 >> 62 == 1)
        {
          v13 = 0xE500000000000000;
          v14 = 0x6465726957;
        }

        else
        {
          v17 = (*(v4 + 2) | *v4 | *(v4 + 1)) == 0;
          v18 = v12 == 0x8000000000000000;
          if (v18 && v17)
          {
            v14 = 0x656D6567616E614DLL;
          }

          else
          {
            v14 = 0x64696C61766E49;
          }

          if (v18 && v17)
          {
            v13 = 0xEA0000000000746ELL;
          }

          else
          {
            v13 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v13 = 0xED00006E6F697461;
        v14 = 0x6C756D4564726143;
      }

      v19 = sub_1002FFA0C(v14, v13, v24);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s: Unexpected state %s, expected Management", v11, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    v20 = swift_allocError();
    *v21 = 10;
    swift_willThrow();
    v22 = v2[11];
    swift_errorRetain();
    v22(0, v20);

    v23 = v2[1];

    return v23();
  }
}

uint64_t sub_1002085F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_100209420;
  }

  else
  {
    v4 = sub_10020870C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10020870C()
{
  v1 = *(v0 + 176);
  if (v1 >> 62)
  {
LABEL_24:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 192) = v2;
  if (v2)
  {
    *(v0 + 200) = OBJC_IVAR____TtC10seserviced14SECUserSession_networkController;
    swift_beginAccess();
    v3 = 0;
    *(v0 + 288) = enum case for StateInternal.installationPending(_:);
    while (1)
    {
      *(v0 + 208) = _swiftEmptyArrayStorage;
      v4 = *(v0 + 176);
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v5 = *(v4 + 8 * v3 + 32);
      }

      v6 = v5;
      *(v0 + 216) = v5;
      *(v0 + 224) = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v7 = *(v0 + 288);
      v9 = *(v0 + 152);
      v8 = *(v0 + 160);
      v10 = *(v0 + 144);
      CredentialInternal.state.getter();
      if ((*(v9 + 88))(v8, v10) == v7)
      {
        break;
      }

      v12 = *(v0 + 152);
      v11 = *(v0 + 160);
      v13 = *(v0 + 144);

      (*(v12 + 8))(v11, v13);
      v3 = *(v0 + 224);
      if (v3 == *(v0 + 192))
      {
        goto LABEL_12;
      }
    }

    v17 = *(v0 + 200);
    v18 = *(v0 + 80);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_1000BC094(v18 + v17, v0 + 16);
    v19 = *(v0 + 40);
    v20 = *(v0 + 48);
    sub_1000752B0((v0 + 16), v19);
    CredentialInternal.identifier.getter();
    v24 = (*(v20 + 24) + **(v20 + 24));
    v21 = swift_task_alloc();
    *(v0 + 240) = v21;
    *v21 = v0;
    v21[1] = sub_100208B04;
    v22 = *(v0 + 136);

    return v24(v22, v19, v20);
  }

  else
  {
LABEL_12:
    *(v0 + 232) = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage[2];
    if (v14)
    {

      sub_10028C478(2, v14);

      v15 = swift_task_alloc();
      *(v0 + 272) = v15;
      *v15 = v0;
      v15[1] = sub_100209234;

      return sub_1002ACCFC(_swiftEmptyArrayStorage);
    }

    else
    {

      (*(v0 + 88))(*(v0 + 176), 0);

      v23 = *(v0 + 8);

      return v23();
    }
  }
}

uint64_t sub_100208B04(char a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    (*(*(v4 + 112) + 8))(*(v4 + 136), *(v4 + 104));

    v5 = sub_1002094D8;
  }

  else
  {
    v6 = *(v4 + 136);
    v7 = *(v4 + 104);
    v8 = *(v4 + 112);
    *(v4 + 292) = a1;
    v9 = *(v8 + 8);
    *(v4 + 256) = v9;
    *(v4 + 264) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v5 = sub_100208C7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100208C7C()
{
  v46 = v0;
  v1 = *(v0 + 292);
  sub_1000752F4((v0 + 16));
  if (v1 != 2)
  {

    v17 = *(v0 + 208);
    goto LABEL_18;
  }

  if (qword_1005019D8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v2 = *(v0 + 216);
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 256);
    v8 = *(v0 + 128);
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v10 = 136315138;
    CredentialInternal.identifier.getter();
    v12 = UUID.uuidString.getter();
    v14 = v13;
    v7(v8, v9);
    v15 = sub_1002FFA0C(v12, v14, &v45);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Credential %s installation failure", v10, 0xCu);
    sub_1000752F4(v11);
  }

  CredentialInternal.identifier.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + 208);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_10012FA30(0, v17[2] + 1, 1, *(v0 + 208));
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_10012FA30((v18 > 1), v19 + 1, 1, v17);
  }

  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 104);

  v17[2] = v19 + 1;
  (*(v21 + 32))(v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, v20, v22);
  while (1)
  {
LABEL_18:
    v33 = *(v0 + 224);
    if (v33 == *(v0 + 192))
    {
      *(v0 + 232) = v17;
      v34 = v17[2];
      if (v34)
      {

        sub_10028C478(2, v34);

        v35 = swift_task_alloc();
        *(v0 + 272) = v35;
        *v35 = v0;
        v35[1] = sub_100209234;

        return sub_1002ACCFC(v17);
      }

      else
      {

        (*(v0 + 88))(*(v0 + 176), 0);

        v37 = *(v0 + 8);

        return v37();
      }
    }

    *(v0 + 208) = v17;
    v23 = *(v0 + 176);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v33 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v24 = *(v23 + 8 * v33 + 32);
    }

    v25 = v24;
    *(v0 + 216) = v24;
    *(v0 + 224) = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v26 = *(v0 + 288);
    v28 = *(v0 + 152);
    v27 = *(v0 + 160);
    v29 = *(v0 + 144);
    CredentialInternal.state.getter();
    if ((*(v28 + 88))(v27, v29) == v26)
    {
      break;
    }

    v31 = *(v0 + 152);
    v30 = *(v0 + 160);
    v32 = *(v0 + 144);

    (*(v31 + 8))(v30, v32);
  }

  v38 = *(v0 + 200);
  v39 = *(v0 + 80);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  sub_1000BC094(v39 + v38, v0 + 16);
  v40 = *(v0 + 40);
  v41 = *(v0 + 48);
  sub_1000752B0((v0 + 16), v40);
  CredentialInternal.identifier.getter();
  v44 = (*(v41 + 24) + **(v41 + 24));
  v42 = swift_task_alloc();
  *(v0 + 240) = v42;
  *v42 = v0;
  v42[1] = sub_100208B04;
  v43 = *(v0 + 136);

  return v44(v43, v40, v41);
}

uint64_t sub_100209234()
{
  *(*v1 + 280) = v0;

  if (v0)
  {

    v2 = sub_1002095A0;
  }

  else
  {
    v2 = sub_100209378;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100209378()
{
  (*(v0 + 88))(*(v0 + 176), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100209420()
{
  v1 = v0[23];
  v2 = v0[11];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002094D8()
{
  sub_1000752F4((v0 + 16));
  v1 = *(v0 + 248);
  v2 = *(v0 + 88);
  swift_errorRetain();
  v2(0, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002095A0()
{
  v1 = v0[35];
  v2 = v0[11];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100209694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[153] = v19;
  v8[152] = a8;
  v8[151] = a7;
  v8[150] = a6;
  v8[149] = a5;
  v8[148] = a4;
  v9 = type metadata accessor for SERError();
  v8[154] = v9;
  v8[155] = *(v9 - 8);
  v8[156] = swift_task_alloc();
  v8[157] = swift_task_alloc();
  v8[158] = swift_task_alloc();
  sub_100068FC4(&qword_100504250, &qword_10040D610);
  v8[159] = swift_task_alloc();
  v10 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v8[160] = v10;
  v8[161] = *(v10 - 8);
  v8[162] = swift_task_alloc();
  v11 = type metadata accessor for SESnapshot.TargetDevice();
  v8[163] = v11;
  v8[164] = *(v11 - 8);
  v8[165] = swift_task_alloc();
  v12 = type metadata accessor for SERXPCInternalErrors();
  v8[166] = v12;
  v8[167] = *(v12 - 8);
  v8[168] = swift_task_alloc();
  v8[169] = sub_100068FC4(&unk_100507420, &qword_10040F9D0);
  v8[170] = swift_task_alloc();
  v13 = type metadata accessor for SECMetadata();
  v8[171] = v13;
  v8[172] = *(v13 - 8);
  v8[173] = swift_task_alloc();
  v14 = type metadata accessor for SECCredentialConfig();
  v8[174] = v14;
  v8[175] = *(v14 - 8);
  v8[176] = swift_task_alloc();
  v15 = type metadata accessor for SESFeature.RuntimeFlag();
  v8[177] = v15;
  v8[178] = *(v15 - 8);
  v8[179] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v8[180] = v16;
  v8[181] = *(v16 - 8);
  v8[182] = swift_task_alloc();
  v8[183] = swift_task_alloc();
  v8[184] = swift_task_alloc();
  v8[185] = swift_task_alloc();
  v8[186] = swift_task_alloc();
  v8[187] = swift_task_alloc();

  return _swift_task_switch(sub_100209AC8, 0, 0);
}

uint64_t sub_100209AC8(uint64_t a1, uint64_t a2)
{
  v42 = v2;
  v3 = *(v2 + 1184);
  v4 = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
  *(v2 + 1504) = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
  v5 = v3 + v4;
  v6 = *(v5 + 80);
  v7 = *(v5 + 96);
  v8 = *(v5 + 112);
  v9 = *(v5 + 128);
  *(v2 + 704) = v9;
  *(v2 + 672) = v7;
  *(v2 + 688) = v8;
  *(v2 + 656) = v6;
  v10 = *(v5 + 16);
  v11 = *(v5 + 32);
  v12 = *(v5 + 64);
  *(v2 + 624) = *(v5 + 48);
  *(v2 + 640) = v12;
  *(v2 + 592) = v10;
  *(v2 + 608) = v11;
  if (v9)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_10051B2C8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Provisioning is not available on non-application clients", v16, 2u);
    }

    v17 = 15;
LABEL_16:
    sub_10009591C();
    v37 = swift_allocError();
    *v38 = v17;
    swift_willThrow();
    v39 = *(v2 + 1216);
    swift_errorRetain();
    v39(0, v37);

    v40 = *(v2 + 8);

    return v40();
  }

  v18 = *(v5 + 16);
  v19 = *(v5 + 48);
  *(v2 + 848) = *(v5 + 32);
  *(v2 + 864) = v19;
  *(v2 + 832) = v18;
  v20 = *(v5 + 64);
  v21 = *(v5 + 80);
  v22 = *(v5 + 112);
  *(v2 + 912) = *(v5 + 96);
  *(v2 + 928) = v22;
  *(v2 + 880) = v20;
  *(v2 + 896) = v21;
  v23 = (v3 + OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken);
  v24 = v23[1];
  *(v2 + 148) = *v23;
  *(v2 + 164) = v24;
  *(v2 + 180) = 0;
  sub_10012E3F4(v2 + 592, v2 + 712);
  if ((sub_100306124(2, (v2 + 148), 0, 0) & 1) == 0)
  {
    sub_10021B6B0(v2 + 592);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v27 = *(v2 + 1184);
    v28 = type metadata accessor for Logger();
    sub_1000958E4(v28, qword_10051B2C8);
    v29 = v27;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41 = v33;
      *v32 = 136315138;
      v34 = UUID.uuidString.getter();
      v36 = sub_1002FFA0C(v34, v35, &v41);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Session %s -- Client ineligible to provision credential", v32, 0xCu);
      sub_1000752F4(v33);
    }

    v17 = 27;
    goto LABEL_16;
  }

  v25 = swift_task_alloc();
  *(v2 + 1512) = v25;
  *v25 = v2;
  v25[1] = sub_100209F84;

  return sub_10020E608(3);
}

uint64_t sub_100209F84(char a1)
{
  v4 = *v2;
  *(*v2 + 1520) = v1;

  if (v1)
  {
    v5 = sub_10020D590;
  }

  else
  {
    *(v4 + 181) = a1 & 1;
    v5 = sub_10020A0B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10020A0B0(uint64_t a1, uint64_t a2)
{
  v61 = v2;
  if (*(v2 + 181) != 1)
  {
    sub_10021B6B0(v2 + 592);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v26 = *(v2 + 1184);
    v27 = type metadata accessor for Logger();
    sub_1000958E4(v27, qword_10051B2C8);
    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v60[0] = v32;
      *v31 = 136315138;
      v33 = UUID.uuidString.getter();
      v35 = sub_1002FFA0C(v33, v34, v60);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Session %s Registration failed after max attempts", v31, 0xCu);
      sub_1000752F4(v32);
    }

    v36 = 28;
    goto LABEL_31;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 1496);
  v4 = *(v2 + 1448);
  v5 = *(v2 + 1440);
  v6 = *(v2 + 1192);
  v7 = *(v2 + 1184);
  v8 = type metadata accessor for Logger();
  *(v2 + 1528) = sub_1000958E4(v8, qword_10051B2C8);
  v9 = *(v4 + 16);
  *(v2 + 1536) = v9;
  *(v2 + 1544) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v3, v6, v5);
  v10 = v7;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v2 + 1496);
  v15 = *(v2 + 1448);
  v16 = *(v2 + 1440);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = UUID.uuidString.getter();
    v20 = sub_1002FFA0C(v18, v19, v60);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = UUID.uuidString.getter();
    v23 = v22;
    v24 = *(v15 + 8);
    v24(v14, v16);
    v25 = sub_1002FFA0C(v21, v23, v60);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "Session %s: Creating credential with configUUID %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v24 = *(v15 + 8);
    v24(v14, v16);
  }

  *(v2 + 1552) = v24;
  v37 = *(v2 + 1184);
  v38 = &v37[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v39 = *&v37[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  if ((v39 & 0x8000000000000000) == 0 || v39 != 0x8000000000000000 || *(v38 + 1) | *(v38 + 2) | *v38)
  {
    sub_10021B6B0(v2 + 592);
    v40 = v37;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v43 = 136315394;
      *(v43 + 4) = sub_1002FFA0C(0xD000000000000036, 0x8000000100467C80, v60);
      *(v43 + 12) = 2080;
      v44 = *(v38 + 3);
      if (v44 >> 62)
      {
        if (v44 >> 62 == 1)
        {
          v45 = 0xE500000000000000;
          v46 = 0x6465726957;
        }

        else
        {
          v52 = (*(v38 + 2) | *v38 | *(v38 + 1)) == 0;
          v53 = v44 == 0x8000000000000000;
          if (v53 && v52)
          {
            v46 = 0x656D6567616E614DLL;
          }

          else
          {
            v46 = 0x64696C61766E49;
          }

          if (v53 && v52)
          {
            v45 = 0xEA0000000000746ELL;
          }

          else
          {
            v45 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v45 = 0xED00006E6F697461;
        v46 = 0x6C756D4564726143;
      }

      v54 = sub_1002FFA0C(v46, v45, v60);

      *(v43 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s: Unexpected state %s, expected Management", v43, 0x16u);
      swift_arrayDestroy();
    }

    v36 = 6;
LABEL_31:
    sub_10009591C();
    v55 = swift_allocError();
    *v56 = v36;
    swift_willThrow();
    v57 = *(v2 + 1216);
    swift_errorRetain();
    v57(0, v55);

    v58 = *(v2 + 8);

    return v58();
  }

  v47 = OBJC_IVAR____TtC10seserviced14SECUserSession_networkController;
  *(v2 + 1560) = OBJC_IVAR____TtC10seserviced14SECUserSession_networkController;
  swift_beginAccess();
  sub_1000BC094(&v37[v47], v2 + 944);
  v48 = *(v2 + 968);
  v49 = *(v2 + 976);
  sub_1000752B0((v2 + 944), v48);
  v59 = (*(v49 + 8) + **(v49 + 8));
  v50 = swift_task_alloc();
  *(v2 + 1568) = v50;
  *v50 = v2;
  v50[1] = sub_10020A8D0;

  return v59(v48, v49);
}

uint64_t sub_10020A8D0()
{
  v2 = *v1;
  *(*v1 + 1576) = v0;

  if (v0)
  {
    sub_10021B6B0(v2 + 592);
    v3 = sub_10020D71C;
  }

  else
  {
    v3 = sub_10020A9EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10020A9EC()
{
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1416);
  sub_1000752F4((v0 + 944));
  (*(v2 + 104))(v1, enum case for SESFeature.RuntimeFlag.viennaDynamicSE(_:), v3);
  v4 = static SESFeature.isEnabled(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(v0 + 1184);
    v6 = v5 + *(v0 + 1504);
    sub_1000BC094(v5 + *(v0 + 1560), v0 + 1024);
    v7 = *(v0 + 1048);
    v8 = *(v0 + 1056);
    sub_1000752B0((v0 + 1024), v7);
    *(v0 + 16) = *v6;
    v9 = *(v6 + 64);
    v11 = *(v6 + 16);
    v10 = *(v6 + 32);
    *(v0 + 64) = *(v6 + 48);
    *(v0 + 80) = v9;
    *(v0 + 32) = v11;
    *(v0 + 48) = v10;
    v13 = *(v6 + 96);
    v12 = *(v6 + 112);
    v14 = *(v6 + 80);
    *(v0 + 144) = *(v6 + 128);
    *(v0 + 112) = v13;
    *(v0 + 128) = v12;
    *(v0 + 96) = v14;
    v15 = *(v8 + 32);
    sub_10012E344(v0 + 16, v0 + 456);
    v36 = (v15 + *v15);
    v16 = swift_task_alloc();
    *(v0 + 1584) = v16;
    *v16 = v0;
    v16[1] = sub_10020AD70;
    v17 = *(v0 + 1408);
    v18 = *(v0 + 1192);
    v19 = v0 + 16;
    v20 = v7;
    v21 = v8;
    v22 = v36;
  }

  else
  {
    sub_10021B6B0(v0 + 592);
    v23 = *(v0 + 1184);
    v24 = v23 + *(v0 + 1504);
    sub_1000BC094(v23 + *(v0 + 1560), v0 + 984);
    v25 = *(v0 + 1008);
    v26 = *(v0 + 1016);
    sub_1000752B0((v0 + 984), v25);
    *(v0 + 184) = *v24;
    v27 = *(v24 + 48);
    v28 = *(v24 + 64);
    v29 = *(v24 + 32);
    *(v0 + 200) = *(v24 + 16);
    *(v0 + 248) = v28;
    *(v0 + 232) = v27;
    *(v0 + 216) = v29;
    v31 = *(v24 + 96);
    v30 = *(v24 + 112);
    v32 = *(v24 + 80);
    *(v0 + 312) = *(v24 + 128);
    *(v0 + 280) = v31;
    *(v0 + 296) = v30;
    *(v0 + 264) = v32;
    v33 = *(v26 + 16);
    sub_10012E344(v0 + 184, v0 + 320);
    v37 = (v33 + *v33);
    v34 = swift_task_alloc();
    *(v0 + 1688) = v34;
    *v34 = v0;
    v34[1] = sub_10020CE34;
    v17 = *(v0 + 1480);
    v18 = *(v0 + 1192);
    v19 = v0 + 184;
    v20 = v25;
    v21 = v26;
    v22 = v37;
  }

  return v22(v17, v18, v19, v20, v21);
}

uint64_t sub_10020AD70()
{
  v2 = *v1;
  *(*v1 + 1592) = v0;

  sub_10012E3A0(v2 + 16);
  if (v0)
  {
    sub_10021B6B0(v2 + 592);
    v3 = sub_10020D8A8;
  }

  else
  {
    v3 = sub_10020AE9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10020AE9C()
{
  v1 = v0[199];
  v2 = v0[173];
  v3 = v0[172];
  v4 = v0[171];
  v5 = v0[149];
  sub_1000752F4(v0 + 128);
  SECCredentialConfig.metadata.getter();
  v6 = SECMetadata.appletInstances.getter();
  (*(v3 + 8))(v2, v4);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v0[200] = sub_1001FB1E0(sub_10021B7F8, v7, v6);
  v0[201] = v1;

  type metadata accessor for SERInternalClient();
  v0[202] = static SERInternalClient.shared.getter();
  v8 = swift_task_alloc();
  v0[203] = v8;
  *v8 = v0;
  v8[1] = sub_10020B000;
  v9 = v0[170];

  return SERInternalClient.getSESnapshot(token:)(v9, 0, 0xF000000000000000);
}

uint64_t sub_10020B000()
{

  return _swift_task_switch(sub_10020B118, 0, 0);
}

uint64_t sub_10020B118()
{
  v103 = v0;
  v1 = *(v0 + 1360);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *(v0 + 316) = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *(v0 + 1344);
    v4 = *(v0 + 1336);
    v5 = *(v0 + 1328);

    sub_10021B6B0(v0 + 592);
    v6 = *(v4 + 32);
    v6(v3, v1, v5);
    sub_10021C09C(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();
    v7 = swift_allocError();
    v6(v8, v3, v5);
    goto LABEL_9;
  }

  v9 = *v1;
  *(v0 + 1632) = *v1;
  *(v0 + 1160) = v9;
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.getter();
  v10 = *(v0 + 146);
  swift_endAccess();
  if (v10)
  {
    v11 = *(v0 + 1600);
    v12 = *(v0 + 1184);
    v13 = swift_task_alloc();
    *(v0 + 1664) = v13;
    v13[2] = v12;
    v13[3] = v0 + 1160;
    v13[4] = v11;
    v13[5] = v0 + 832;
    v14 = swift_task_alloc();
    *(v0 + 1672) = v14;
    *v14 = v0;
    v14[1] = sub_10020C814;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 147, 0, 0, 0xD000000000000036, 0x8000000100467C80, sub_10021B814, v13, &type metadata for Bool);
  }

  else
  {
    v15 = SESnapshot.canFit(credentials:)(*(v0 + 1600));
    if (v16)
    {
      v7 = v16;

      sub_10021B6B0(v0 + 592);
LABEL_9:
      *(v0 + 1168) = v7;
      swift_errorRetain();
      sub_100068FC4(&unk_100503F80, &qword_100409CF0);
      v17 = swift_dynamicCast();
      v18 = *(v0 + 1536);
      v19 = *(v0 + 1440);
      if (v17)
      {
        v20 = *(v0 + 1264);
        v21 = *(v0 + 1256);
        v22 = *(v0 + 1248);
        v23 = *(v0 + 1240);
        v24 = *(v0 + 1232);
        v97 = *(v0 + 1192);
        v99 = *(v0 + 1464);

        (*(v23 + 32))(v21, v20, v24);
        (*(v23 + 16))(v22, v21, v24);
        v18(v99, v97, v19);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        v27 = os_log_type_enabled(v25, v26);
        v28 = *(v0 + 1552);
        v29 = *(v0 + 1464);
        v30 = *(v0 + 1440);
        v31 = *(v0 + 1248);
        v32 = *(v0 + 1240);
        v33 = *(v0 + 1232);
        if (v27)
        {
          v96 = v26;
          v34 = swift_slowAlloc();
          v102[0] = swift_slowAlloc();
          *v34 = 136315650;
          *(v34 + 4) = sub_1002FFA0C(0xD000000000000036, 0x8000000100467C80, v102);
          *(v34 + 12) = 2080;
          v35 = SERError.failureReason.getter();
          v95 = v28;
          if (v36)
          {
            v37 = v35;
          }

          else
          {
            v37 = 0x6E776F6E6B6E55;
          }

          if (v36)
          {
            v38 = v36;
          }

          else
          {
            v38 = 0xE700000000000000;
          }

          v100 = *(v32 + 8);
          v100(v31, v33);
          v39 = sub_1002FFA0C(v37, v38, v102);

          *(v34 + 14) = v39;
          *(v34 + 22) = 2080;
          v40 = UUID.uuidString.getter();
          v42 = v41;
          v95(v29, v30);
          v43 = sub_1002FFA0C(v40, v42, v102);

          *(v34 + 24) = v43;
          _os_log_impl(&_mh_execute_header, v25, v96, "%s: Reservations Error %s encountered while creating credential with config UUID %s", v34, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v28(v29, v30);
          v100 = *(v32 + 8);
          v100(v31, v33);
        }

        v60 = *(v0 + 316);
        v61 = *(v0 + 1408);
        v62 = *(v0 + 1400);
        v63 = *(v0 + 1392);
        v64 = *(v0 + 1256);
        v65 = *(v0 + 1232);
        sub_10009591C();
        v66 = swift_allocError();
        *v67 = 33;
        swift_willThrow();
        v100(v64, v65);
        (*(v62 + 8))(v61, v63);

        if (v60 == 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v44 = *(v0 + 1456);
        v45 = *(v0 + 1192);

        v18(v44, v45, v19);
        swift_errorRetain();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();

        v48 = os_log_type_enabled(v46, v47);
        v49 = *(v0 + 1552);
        v50 = *(v0 + 1456);
        v51 = *(v0 + 1440);
        if (v48)
        {
          v52 = swift_slowAlloc();
          v102[0] = swift_slowAlloc();
          *v52 = 136315394;
          swift_getErrorValue();
          v98 = v49;
          v53 = Error.localizedDescription.getter();
          v55 = sub_1002FFA0C(v53, v54, v102);

          *(v52 + 4) = v55;
          *(v52 + 12) = 2080;
          v56 = UUID.uuidString.getter();
          v58 = v57;
          v98(v50, v51);
          v59 = sub_1002FFA0C(v56, v58, v102);

          *(v52 + 14) = v59;
          _os_log_impl(&_mh_execute_header, v46, v47, "Storage Error %s encountered while creating credential with config UUID %s ", v52, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v49(v50, v51);
        }

        v68 = *(v0 + 316);
        v69 = *(v0 + 1408);
        v70 = *(v0 + 1400);
        v71 = *(v0 + 1392);
        sub_10009591C();
        v66 = swift_allocError();
        *v72 = 24;
        swift_willThrow();

        (*(v70 + 8))(v69, v71);
        if (v68 == 1)
        {
          goto LABEL_26;
        }
      }

LABEL_26:
      v73 = *(v0 + 1216);
      swift_errorRetain();
      v73(0, v66);

      v74 = *(v0 + 8);

      return v74();
    }

    if (v15)
    {
      sub_10021B6B0(v0 + 592);

      (*(*(v0 + 1400) + 8))(*(v0 + 1408), *(v0 + 1392));

      v75 = *(v0 + 1184);
      v76 = v75 + *(v0 + 1504);
      sub_1000BC094(v75 + *(v0 + 1560), v0 + 984);
      v77 = *(v0 + 1008);
      v78 = *(v0 + 1016);
      sub_1000752B0((v0 + 984), v77);
      *(v0 + 184) = *v76;
      v79 = *(v76 + 64);
      v81 = *(v76 + 16);
      v80 = *(v76 + 32);
      *(v0 + 232) = *(v76 + 48);
      *(v0 + 248) = v79;
      *(v0 + 200) = v81;
      *(v0 + 216) = v80;
      v83 = *(v76 + 96);
      v82 = *(v76 + 112);
      v84 = *(v76 + 80);
      *(v0 + 312) = *(v76 + 128);
      *(v0 + 280) = v83;
      *(v0 + 296) = v82;
      *(v0 + 264) = v84;
      v85 = *(v78 + 16);
      sub_10012E344(v0 + 184, v0 + 320);
      v101 = (v85 + *v85);
      v86 = swift_task_alloc();
      *(v0 + 1688) = v86;
      *v86 = v0;
      v86[1] = sub_10020CE34;
      v87 = *(v0 + 1480);
      v88 = *(v0 + 1192);

      return v101(v87, v88, v0 + 184, v77, v78);
    }

    else
    {
      v89 = *(v0 + 1320);
      v90 = *(v0 + 1312);
      v91 = *(v0 + 1304);
      type metadata accessor for SESnapshot();
      (*(v90 + 104))(v89, enum case for SESnapshot.TargetDevice.currentDevice(_:), v91);
      v92 = swift_task_alloc();
      *(v0 + 1640) = v92;
      *v92 = v0;
      v92[1] = sub_10020BCC0;
      v93 = *(v0 + 1320);

      return static SESnapshot.reclaimUnusedSpace(targetDevice:)(v93);
    }
  }
}

uint64_t sub_10020BCC0(uint64_t a1)
{
  v3 = *v2;
  v3[206] = a1;
  v3[207] = v1;

  (*(v3[164] + 8))(v3[165], v3[163]);
  if (v1)
  {

    sub_10021B6B0((v3 + 74));
    v4 = sub_10020DA34;
  }

  else
  {
    v4 = sub_10020BE24;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10020BE24()
{
  v93 = v0;
  v1 = *(v0 + 1632);
  v2._rawValue = *(v0 + 1600);
  v3 = *(v0 + 1648);

  *(v0 + 1160) = v3;
  v4 = SESnapshot.canFit(credentials:)(v2);
  v6 = *(v0 + 1648);
  if (v5)
  {

    sub_10021B6B0(v0 + 592);
    *(v0 + 1168) = v5;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v7 = swift_dynamicCast();
    v8 = *(v0 + 1536);
    v9 = *(v0 + 1440);
    if (v7)
    {
      v10 = *(v0 + 1264);
      v11 = *(v0 + 1256);
      v85 = *(v0 + 1248);
      v12 = *(v0 + 1240);
      v13 = *(v0 + 1232);
      v87 = *(v0 + 1192);
      v89 = *(v0 + 1464);

      (*(v12 + 32))(v11, v10, v13);
      (*(v12 + 16))(v85, v11, v13);
      v8(v89, v87, v9);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 1552);
      v18 = *(v0 + 1464);
      v19 = *(v0 + 1440);
      v20 = *(v0 + 1248);
      v21 = *(v0 + 1240);
      v22 = *(v0 + 1232);
      if (v16)
      {
        v86 = v15;
        v23 = swift_slowAlloc();
        v92[0] = swift_slowAlloc();
        *v23 = 136315650;
        *(v23 + 4) = sub_1002FFA0C(0xD000000000000036, 0x8000000100467C80, v92);
        *(v23 + 12) = 2080;
        v24 = SERError.failureReason.getter();
        v84 = v17;
        if (v25)
        {
          v26 = v24;
        }

        else
        {
          v26 = 0x6E776F6E6B6E55;
        }

        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = 0xE700000000000000;
        }

        v90 = *(v21 + 8);
        v90(v20, v22);
        v28 = sub_1002FFA0C(v26, v27, v92);

        *(v23 + 14) = v28;
        *(v23 + 22) = 2080;
        v29 = UUID.uuidString.getter();
        v31 = v30;
        v84(v18, v19);
        v32 = sub_1002FFA0C(v29, v31, v92);

        *(v23 + 24) = v32;
        _os_log_impl(&_mh_execute_header, v14, v86, "%s: Reservations Error %s encountered while creating credential with config UUID %s", v23, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v17(v18, v19);
        v90 = *(v21 + 8);
        v90(v20, v22);
      }

      v69 = *(v0 + 316);
      v70 = *(v0 + 1408);
      v71 = *(v0 + 1400);
      v72 = *(v0 + 1392);
      v73 = *(v0 + 1256);
      v74 = *(v0 + 1232);
      sub_10009591C();
      v75 = swift_allocError();
      *v76 = 33;
      swift_willThrow();
      v90(v73, v74);
      (*(v71 + 8))(v70, v72);

      if (v69 == 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v49 = *(v0 + 1456);
      v50 = *(v0 + 1192);

      v8(v49, v50, v9);
      swift_errorRetain();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      v53 = os_log_type_enabled(v51, v52);
      v54 = *(v0 + 1552);
      v55 = *(v0 + 1456);
      v56 = *(v0 + 1440);
      if (v53)
      {
        v57 = swift_slowAlloc();
        v92[0] = swift_slowAlloc();
        *v57 = 136315394;
        swift_getErrorValue();
        v88 = v54;
        v58 = Error.localizedDescription.getter();
        v60 = sub_1002FFA0C(v58, v59, v92);

        *(v57 + 4) = v60;
        *(v57 + 12) = 2080;
        v61 = UUID.uuidString.getter();
        v63 = v62;
        v88(v55, v56);
        v64 = sub_1002FFA0C(v61, v63, v92);

        *(v57 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v51, v52, "Storage Error %s encountered while creating credential with config UUID %s ", v57, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v54(v55, v56);
      }

      v77 = *(v0 + 316);
      v78 = *(v0 + 1408);
      v79 = *(v0 + 1400);
      v80 = *(v0 + 1392);
      sub_10009591C();
      v75 = swift_allocError();
      *v81 = 24;
      swift_willThrow();

      (*(v79 + 8))(v78, v80);
      if (v77 == 1)
      {
        goto LABEL_26;
      }
    }

LABEL_26:
    v82 = *(v0 + 1216);
    swift_errorRetain();
    v82(0, v75);

    v83 = *(v0 + 8);

    return v83();
  }

  v33 = v4;

  if (v33)
  {
    sub_10021B6B0(v0 + 592);

    (*(*(v0 + 1400) + 8))(*(v0 + 1408), *(v0 + 1392));

    v34 = *(v0 + 1184);
    v35 = v34 + *(v0 + 1504);
    sub_1000BC094(v34 + *(v0 + 1560), v0 + 984);
    v36 = *(v0 + 1008);
    v37 = *(v0 + 1016);
    sub_1000752B0((v0 + 984), v36);
    *(v0 + 184) = *v35;
    v38 = *(v35 + 64);
    v40 = *(v35 + 16);
    v39 = *(v35 + 32);
    *(v0 + 232) = *(v35 + 48);
    *(v0 + 248) = v38;
    *(v0 + 200) = v40;
    *(v0 + 216) = v39;
    v42 = *(v35 + 96);
    v41 = *(v35 + 112);
    v43 = *(v35 + 80);
    *(v0 + 312) = *(v35 + 128);
    *(v0 + 280) = v42;
    *(v0 + 296) = v41;
    *(v0 + 264) = v43;
    v44 = *(v37 + 16);
    sub_10012E344(v0 + 184, v0 + 320);
    v91 = (v44 + *v44);
    v45 = swift_task_alloc();
    *(v0 + 1688) = v45;
    *v45 = v0;
    v45[1] = sub_10020CE34;
    v46 = *(v0 + 1480);
    v47 = *(v0 + 1192);

    return v91(v46, v47, v0 + 184, v36, v37);
  }

  else
  {
    v65 = *(v0 + 1600);
    v66 = *(v0 + 1184);
    v67 = swift_task_alloc();
    *(v0 + 1664) = v67;
    v67[2] = v66;
    v67[3] = v0 + 1160;
    v67[4] = v65;
    v67[5] = v0 + 832;
    v68 = swift_task_alloc();
    *(v0 + 1672) = v68;
    *v68 = v0;
    v68[1] = sub_10020C814;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 147, 0, 0, 0xD000000000000036, 0x8000000100467C80, sub_10021B814, v67, &type metadata for Bool);
  }
}

uint64_t sub_10020C814()
{
  v2 = *v1;
  *(v2 + 1680) = v0;

  sub_10021B6B0(v2 + 592);

  if (v0)
  {
    v3 = sub_10020E130;
  }

  else
  {
    v3 = sub_10020C974;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10020C974()
{
  v38 = v0;
  if (*(v0 + 147) == 1)
  {
    (*(*(v0 + 1400) + 8))(*(v0 + 1408), *(v0 + 1392));

    v1 = *(v0 + 1184);
    v2 = v1 + *(v0 + 1504);
    sub_1000BC094(v1 + *(v0 + 1560), v0 + 984);
    v3 = *(v0 + 1008);
    v4 = *(v0 + 1016);
    sub_1000752B0((v0 + 984), v3);
    *(v0 + 184) = *v2;
    v5 = *(v2 + 64);
    v7 = *(v2 + 16);
    v6 = *(v2 + 32);
    *(v0 + 232) = *(v2 + 48);
    *(v0 + 248) = v5;
    *(v0 + 200) = v7;
    *(v0 + 216) = v6;
    v9 = *(v2 + 96);
    v8 = *(v2 + 112);
    v10 = *(v2 + 80);
    *(v0 + 312) = *(v2 + 128);
    *(v0 + 280) = v9;
    *(v0 + 296) = v8;
    *(v0 + 264) = v10;
    v11 = *(v4 + 16);
    sub_10012E344(v0 + 184, v0 + 320);
    v35 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 1688) = v12;
    *v12 = v0;
    v12[1] = sub_10020CE34;
    v13 = *(v0 + 1480);
    v14 = *(v0 + 1192);

    return v35(v13, v14, v0 + 184, v3, v4);
  }

  else
  {
    (*(v0 + 1536))(*(v0 + 1488), *(v0 + 1192), *(v0 + 1440));
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1552);
    v20 = *(v0 + 1488);
    v21 = *(v0 + 1440);
    if (v18)
    {
      v36 = v17;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      v24 = UUID.uuidString.getter();
      v26 = v25;
      v19(v20, v21);
      v27 = sub_1002FFA0C(v24, v26, &v37);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v36, "Cannot fit credential with product config %s", v22, 0xCu);
      sub_1000752F4(v23);
    }

    else
    {

      v19(v20, v21);
    }

    v28 = *(v0 + 1408);
    v29 = *(v0 + 1400);
    v30 = *(v0 + 1392);
    sub_10009591C();
    v31 = swift_allocError();
    *v32 = 24;
    swift_willThrow();
    (*(v29 + 8))(v28, v30);

    v33 = *(v0 + 1216);
    swift_errorRetain();
    v33(0, v31);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_10020CE34()
{
  v2 = *v1;
  *(v2 + 1696) = v0;

  sub_10012E3A0(v2 + 184);
  if (v0)
  {
    v3 = sub_10020E2D8;
  }

  else
  {
    v3 = sub_10020CF50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10020CF50()
{
  sub_1000752F4(v0 + 123);
  v1 = swift_task_alloc();
  v0[213] = v1;
  *v1 = v0;
  v1[1] = sub_10020CFFC;
  v2 = v0[185];
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[149];

  return sub_1002AD7D0(v2, v5, v4, v3);
}

uint64_t sub_10020CFFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1712) = a1;
  *(v3 + 1720) = v1;

  if (v1)
  {
    v4 = sub_10020E464;
  }

  else
  {
    v4 = sub_10020D114;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10020D114()
{
  v40 = v0;
  v1 = *(v0 + 1536);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1472);
  v4 = *(v0 + 1440);
  v5 = *(v0 + 1184);

  sub_10028C478(0, 1);

  v1(v3, v2, v4);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1552);
  v11 = *(v0 + 1472);
  v12 = *(v0 + 1440);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = UUID.uuidString.getter();
    v16 = sub_1002FFA0C(v14, v15, &v39);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    v10(v11, v12);
    v20 = sub_1002FFA0C(v17, v19, &v39);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Session %s Successfully created credential %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v10(v11, v12);
  }

  v21 = *(v0 + 1296);
  v22 = *(v0 + 1288);
  v23 = *(v0 + 1280);
  v24 = *(v0 + 1184);
  v25 = OBJC_IVAR____TtC10seserviced14SECUserSession__useNetworkShim;
  swift_beginAccess();
  (*(v22 + 16))(v21, v24 + v25, v23);
  UserDefaultBacked.wrappedValue.getter();
  (*(v22 + 8))(v21, v23);
  if (*(v0 + 145) == 1)
  {
    v26 = *(v0 + 1272);
    v27 = *(v0 + 1184);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v27;
    v30 = v27;
    sub_100201B44(0, 0, v26, &unk_10040F9E8, v29);
  }

  v31 = *(v0 + 1712);
  v32 = *(v0 + 1552);
  v33 = *(v0 + 1480);
  v34 = *(v0 + 1440);
  v35 = *(v0 + 1216);
  v36 = v31;
  v35(v31, 0);

  v32(v33, v34);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_10020D590()
{
  sub_10021B6B0((v0 + 74));
  v1 = v0[190];
  v2 = v0[152];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10020D71C()
{
  sub_1000752F4(v0 + 118);
  v1 = v0[197];
  v2 = v0[152];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10020D8A8()
{
  sub_1000752F4(v0 + 128);
  v1 = v0[199];
  v2 = v0[152];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10020DA34()
{
  v67 = v0;
  *(v0 + 1168) = *(v0 + 1656);
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 1536);
  v3 = *(v0 + 1440);
  if ((v1 & 1) == 0)
  {
    v28 = *(v0 + 1456);
    v29 = *(v0 + 1192);

    v2(v28, v29, v3);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 1552);
    v34 = *(v0 + 1456);
    v35 = *(v0 + 1440);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v36 = 136315394;
      swift_getErrorValue();
      v63 = v33;
      v37 = Error.localizedDescription.getter();
      v39 = sub_1002FFA0C(v37, v38, v66);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v63(v34, v35);
      v43 = sub_1002FFA0C(v40, v42, v66);

      *(v36 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "Storage Error %s encountered while creating credential with config UUID %s ", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v33(v34, v35);
    }

    v52 = *(v0 + 316);
    v53 = *(v0 + 1408);
    v54 = *(v0 + 1400);
    v55 = *(v0 + 1392);
    sub_10009591C();
    v50 = swift_allocError();
    *v56 = 24;
    swift_willThrow();

    (*(v54 + 8))(v53, v55);
    if (v52 == 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v4 = *(v0 + 1264);
  v5 = *(v0 + 1256);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v62 = *(v0 + 1192);
  v64 = *(v0 + 1464);

  (*(v7 + 32))(v5, v4, v8);
  (*(v7 + 16))(v6, v5, v8);
  v2(v64, v62, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1552);
  v13 = *(v0 + 1464);
  v14 = *(v0 + 1440);
  v15 = *(v0 + 1248);
  v16 = *(v0 + 1240);
  v17 = *(v0 + 1232);
  if (v11)
  {
    v61 = v10;
    v18 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_1002FFA0C(0xD000000000000036, 0x8000000100467C80, v66);
    *(v18 + 12) = 2080;
    v19 = SERError.failureReason.getter();
    v60 = v12;
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0x6E776F6E6B6E55;
    }

    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0xE700000000000000;
    }

    v65 = *(v16 + 8);
    v65(v15, v17);
    v23 = sub_1002FFA0C(v21, v22, v66);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    v60(v13, v14);
    v27 = sub_1002FFA0C(v24, v26, v66);

    *(v18 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v9, v61, "%s: Reservations Error %s encountered while creating credential with config UUID %s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v12(v13, v14);
    v65 = *(v16 + 8);
    v65(v15, v17);
  }

  v44 = *(v0 + 316);
  v45 = *(v0 + 1408);
  v46 = *(v0 + 1400);
  v47 = *(v0 + 1392);
  v48 = *(v0 + 1256);
  v49 = *(v0 + 1232);
  sub_10009591C();
  v50 = swift_allocError();
  *v51 = 33;
  swift_willThrow();
  v65(v48, v49);
  (*(v46 + 8))(v45, v47);

  if (v44 != 1)
  {
LABEL_17:
  }

LABEL_18:
  v57 = *(v0 + 1216);
  swift_errorRetain();
  v57(0, v50);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_10020E130()
{
  (*(*(v0 + 1400) + 8))(*(v0 + 1408), *(v0 + 1392));

  v1 = *(v0 + 1680);
  v2 = *(v0 + 1216);
  swift_errorRetain();
  v2(0, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10020E2D8()
{
  sub_1000752F4(v0 + 123);
  v1 = v0[212];
  v2 = v0[152];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10020E464()
{
  (*(v0 + 1552))(*(v0 + 1480), *(v0 + 1440));
  v1 = *(v0 + 1720);
  v2 = *(v0 + 1216);
  swift_errorRetain();
  v2(0, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10020E608(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10020E6D4, 0, 0);
}

uint64_t sub_10020E6D4()
{
  isa = v0[22].isa;
  v1 = v0[23].isa;
  v3 = v0[21].isa;
  (*(isa + 2))(v1, v0[20].isa + OBJC_IVAR____TtC10seserviced14SECUserSession__bypassRegistration, v3);
  UserDefaultBacked.wrappedValue.getter();
  (*(isa + 1))(v1, v3);
  isa_low = LOBYTE(v0[26].isa);
  if (isa_low)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10051B2C8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Bypassing registration, only CAM should be using this!!!", v8, 2u);
    }

    goto LABEL_11;
  }

  v9 = v0[19].isa;
  v10 = [objc_allocWithZone(PKDeviceRegistrationService) init];
  v0[24].isa = v10;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return _swift_continuation_await(v10);
  }

  v6 = v10;
  if (v0[19].isa)
  {
    v0[25].isa = 0;
    v0[2].isa = v0;
    v0[7].isa = &v0[18];
    v0[3].isa = sub_10020E988;
    v11 = swift_continuation_init();
    v0[17].isa = sub_100068FC4(&unk_100507470, &qword_10040FA28);
    v0[10].isa = _NSConcreteStackBlock;
    v0[11].isa = 1107296256;
    v0[12].isa = sub_1002175F4;
    v0[13].isa = &unk_1004CC290;
    v0[14].isa = v11;
    [v6 performDeviceRegistrationWithCompletion:&v0[10]];
    v10 = v0 + 2;

    return _swift_continuation_await(v10);
  }

LABEL_11:

  v12 = v0[1].isa;

  return v12(isa_low);
}

uint64_t sub_10020E988()
{

  return _swift_task_switch(sub_10020EA68, 0, 0);
}

uint64_t sub_10020EA68(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  switch(v3)
  {
    case 16:
      goto LABEL_4;
    case 64:
      v11 = *(v2 + 192);
      sub_10009591C();
      swift_allocError();
      *v12 = 28;
      swift_willThrow();

      v9 = *(v2 + 8);
      v10 = 0;
      goto LABEL_11;
    case 32:
LABEL_4:
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000958E4(v4, qword_10051B2C8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Registration succeeded", v7, 2u);
      }

      v8 = 1;
      goto LABEL_9;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000958E4(v14, qword_10051B2C8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v2 + 200);
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v15, v16, "Registration failed, attempt %ld", v18, 0xCu);
  }

  v19 = *(v2 + 200);
  v20 = *(v2 + 152);

  if (v19 + 1 == v20)
  {
    v8 = 0;
LABEL_9:

    v9 = *(v2 + 8);
    v10 = v8;
LABEL_11:

    return v9(v10);
  }

  v21 = *(v2 + 192);
  ++*(v2 + 200);
  *(v2 + 16) = v2;
  *(v2 + 56) = v2 + 144;
  *(v2 + 24) = sub_10020E988;
  v22 = swift_continuation_init();
  *(v2 + 136) = sub_100068FC4(&unk_100507470, &qword_10040FA28);
  *(v2 + 80) = _NSConcreteStackBlock;
  *(v2 + 88) = 1107296256;
  *(v2 + 96) = sub_1002175F4;
  *(v2 + 104) = &unk_1004CC290;
  *(v2 + 112) = v22;
  [v21 performDeviceRegistrationWithCompletion:v2 + 80];

  return _swift_continuation_await(v2 + 16);
}

uint64_t sub_10020EDE8@<X0>(uint64_t *a2@<X8>)
{
  *a2 = UUID.uuidString.getter();
  a2[1] = v3;
  v4 = enum case for CredentialType.Vienna(_:);
  v5 = type metadata accessor for CredentialType();
  v6 = *(v5 - 8);
  (*(v6 + 104))(a2, v4, v5);
  return (*(v6 + 56))(a2, 0, 1, v5);
}

uint64_t sub_10020EEAC(uint64_t (*a1)(char a1, uint64_t a2), void *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v231 = a5;
  v249 = a4;
  v222 = a2;
  v232 = a1;
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v6 - 8);
  v219 = &v209 - v7;
  v228 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v227 = *(v228 - 8);
  __chkstk_darwin(v228);
  v212 = &v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v223 = &v209 - v10;
  __chkstk_darwin(v11);
  v210 = &v209 - v12;
  v13 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v13 - 8);
  v220 = (&v209 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v211 = &v209 - v16;
  __chkstk_darwin(v17);
  v226 = &v209 - v18;
  v254 = type metadata accessor for CredentialType();
  v19 = *(v254 - 1);
  __chkstk_darwin(v254);
  v253 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v252 = &v209 - v22;
  v251 = type metadata accessor for SEStorageManagementSheet.ProposedCredentialType();
  v23 = *(v251 - 1);
  __chkstk_darwin(v251);
  v225 = &v209 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100068FC4(&qword_100506F78, &qword_10040F300);
  v244 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v209 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v245 = &v209 - v29;
  v230 = v30;
  __chkstk_darwin(v31);
  v229 = &v209 - v32;
  v33 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  v242 = *(v33 - 8);
  __chkstk_darwin(v33);
  v218 = &v209 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = v34;
  __chkstk_darwin(v35);
  v37 = &v209 - v36;
  v38 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v217 = &v209 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v213 = &v209 - v42;
  __chkstk_darwin(v43);
  v216 = (&v209 - v44);
  v214 = v45;
  __chkstk_darwin(v46);
  v48 = (&v209 - v47);
  v238 = type metadata accessor for UUID();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v224 = &v209 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v236 = &v209 - v51;
  UUID.init()();
  v52 = *a3;
  *v48 = v52;
  v234 = v39;
  v53 = v39;
  v54 = v249;
  v55 = *(v53 + 104);
  v233 = v48;
  v221 = enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:);
  v235 = v38;
  v55(v48);
  v56 = *(v54 + 16);
  v243 = v25;
  v240 = v33;
  v239 = v27;
  v241 = v37;
  if (v56)
  {
    v256 = _swiftEmptyArrayStorage;
    v57 = v52;
    sub_10019F84C(0, v56, 0);
    v58 = v256;
    v60 = *(v19 + 16);
    v59 = v19 + 16;
    v61 = v54 + ((*(v59 + 64) + 32) & ~*(v59 + 64));
    v249 = *(v59 + 56);
    v250 = v60;
    v247 = v23 + 32;
    v248 = (v59 - 8);
    v62 = v225;
    v246 = v59;
    v63 = v60;
    do
    {
      v64 = v252;
      v65 = v254;
      v63(v252, v61, v254);
      v63(v253, v64, v65);
      SEStorageManagementSheet.ProposedCredentialType.init(snapshotType:)();
      (*v248)(v64, v65);
      v256 = v58;
      v67 = v58[2];
      v66 = v58[3];
      if (v67 >= v66 >> 1)
      {
        sub_10019F84C((v66 > 1), v67 + 1, 1);
        v58 = v256;
      }

      v58[2] = v67 + 1;
      (*(v23 + 32))(v58 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v67, v62, v251);
      v61 += v249;
      --v56;
    }

    while (v56);
    v254 = v58;
    v68 = v243;
    v69 = v244;
    v33 = v240;
    v70 = v242;
    v71 = v239;
    v72 = v241;
  }

  else
  {
    v73 = v52;
    v254 = _swiftEmptyArrayStorage;
    v70 = v242;
    v72 = v37;
    v71 = v27;
    v68 = v25;
    v69 = v244;
  }

  v75 = *(v231 + 16);
  v74 = *(v231 + 24);
  (*(v70 + 104))(v72, enum case for SEStorageManagementSheet.DisplayConfiguration.currentSystemConfiguration(_:), v33);
  v76 = *(v69 + 16);
  v77 = v229;
  v76(v229, v232, v68);
  v76(v245, v77, v68);
  v76(v71, v77, v68);
  v78 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v79 = swift_allocObject();
  v80 = v68;
  v81 = v79;
  (*(v69 + 32))(v79 + v78, v77, v80);
  if (qword_10051B4D8)
  {

    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_1000958E4(v82, qword_10051B240);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v253 = v81;
      v86 = v85;
      v87 = swift_slowAlloc();
      v256 = v87;
      *v86 = 136315138;
      v88 = UUID.uuidString.getter();
      v90 = sub_1002FFA0C(v88, v89, &v256);

      *(v86 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v83, v84, "Presentation is already in progress for %s", v86, 0xCu);
      sub_1000752F4(v87);
      v91 = v242;
      v92 = v239;

      v93 = v235;
      v94 = v228;
    }

    else
    {
      v91 = v70;

      v93 = v235;
      v94 = v228;
      v92 = v239;
    }

    v102 = v227;
    v103 = v226;
    (*(v227 + 104))(v226, enum case for SEStorageManagementInternal.Types.ErrorCode.presentationInProgress(_:), v94);
    (*(v102 + 56))(v103, 0, 1, v94);
    v104 = v245;
    sub_100210A14(0, v103);

    v105 = v243;
    v106 = *(v244 + 8);
    v106(v92, v243);

    sub_100075768(v103, &unk_100506F00, &qword_10040BE90);
    v106(v104, v105);
    v107 = v93;
    v108 = v240;
    v109 = v241;
    goto LABEL_16;
  }

  v249 = v75;
  v250 = v74;
  v253 = v81;
  v95 = *(v237 + 16);
  v96 = v224;
  v97 = v236;
  v98 = v238;
  v95(v224, v236, v238);
  type metadata accessor for SEStorageManagementUIClient(0);
  swift_allocObject();
  v99 = sub_1001E0E8C(v96);
  qword_10051B4D8 = v99;

  v95(v96, v97, v98);
  v100 = objc_allocWithZone(type metadata accessor for SEStorageManagementPresenter(0));

  v101 = sub_1001E2868(v96, 0);
  v252 = v99;
  sub_1001E1140(v101);
  v113 = *(v69 + 8);
  v112 = v69 + 8;
  v111 = v113;
  v113(v245, v243);
  v114 = *&v101[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession];
  v115 = v222;
  *&v101[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession] = v222;

  v116 = qword_100501938;
  v117 = v115;
  if (v116 != -1)
  {
    swift_once();
  }

  v118 = type metadata accessor for Logger();
  sub_1000958E4(v118, qword_10051B240);
  v119 = v101;
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.info.getter();

  v122 = os_log_type_enabled(v120, v121);
  v244 = v112;
  v247 = 0;
  v248 = v111;
  if (v122)
  {
    v123 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    v256 = v251;
    *v123 = 136315138;
    v124 = v119;
    v125 = [v124 description];
    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v127;

    v129 = sub_1002FFA0C(v126, v128, &v256);

    *(v123 + 4) = v129;
    _os_log_impl(&_mh_execute_header, v120, v121, "SharedUIClient: Starting presenter %s", v123, 0xCu);
    sub_1000752F4(v251);
  }

  v130 = v252;
  v131 = *(v252 + 4);
  *(v252 + 4) = v119;
  v132 = v119;

  v133 = swift_allocObject();
  v133[2] = v130;
  v133[3] = sub_10021B8B4;
  v133[4] = v253;
  v251 = v132;
  v134 = *&v132[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state];
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock((v134 + 20));
  v135 = *(v134 + 16);
  os_unfair_lock_unlock((v134 + 20));

  v107 = v235;
  v136 = v223;
  if (v135)
  {
    v137 = v251;
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v256 = v141;
      *v140 = 136315138;
      v142 = v137;
      v143 = [v142 description];
      v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v146 = v145;

      v130 = v252;
      v147 = sub_1002FFA0C(v144, v146, &v256);

      *(v140 + 4) = v147;
      _os_log_impl(&_mh_execute_header, v138, v139, "%s Unable to start presentation out of pending state", v140, 0xCu);
      sub_1000752F4(v141);
    }

    v148 = v243;
    v108 = v240;
    v149 = v239;
    v150 = v241;
    v151 = v228;
    v152 = v227;
    v153 = v220;
    *v220 = 0xD00000000000001ALL;
    *(v153 + 8) = 0x8000000100464520;
    (*(v152 + 104))(v153, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v151);
    (*(v152 + 56))(v153, 0, 1, v151);
    v154 = *(v130 + 4);
    if (v154)
    {
      v155 = *(v154 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
      *(v154 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;
    }

    sub_100210A14(0, v153);
    sub_100075768(v153, &unk_100506F00, &qword_10040BE90);

    v91 = v242;
    v156 = v150;
    v107 = v235;
    goto LABEL_37;
  }

  v246 = v133;
  v157 = v234;
  v158 = *(v234 + 16);
  v159 = v216;
  v158(v216, v233, v235);
  v160 = (*(v157 + 88))(v159, v107);
  v161 = v160;
  if (v160 == v221 || v160 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.pairedWatch(_:))
  {
    (*(v234 + 96))(v159, v107);
    v245 = *v159;
    swift_beginAccess();
    sub_100068FC4(&unk_100504880, &unk_10040A5B0);
    UserDefaultBacked.wrappedValue.getter();
    v162 = v255;
    swift_endAccess();
    if (v162 == 1)
    {
      v163 = v107;
      v257 = &type metadata for SEStorageManagementMockPassProvider;
      v258 = sub_10014D3B4();
    }

    else
    {
      v164 = v213;
      v158(v213, v233, v107);
      v165 = type metadata accessor for SEStorageManagementPassProvider(0);
      swift_allocObject();
      v166 = v164;
      v167 = v247;
      v168 = sub_1001BAACC(v166, v136);
      if (v167)
      {
        v169 = v227;
        v170 = *(v227 + 32);
        v171 = v210;
        v172 = v228;
        v170(v210, v136, v228);
        v173 = v212;
        v170(v212, v171, v172);
        v174 = v211;
        (*(v169 + 16))(v211, v173, v172);
        (*(v169 + 56))(v174, 0, 1, v172);
        v175 = *(v130 + 4);
        if (v175)
        {
          v176 = *(v175 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
          *(v175 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;
        }

        v149 = v239;
        sub_100210A14(0, v174);

        sub_100075768(v174, &unk_100506F00, &qword_10040BE90);
        (*(v169 + 8))(v173, v172);

        v148 = v243;
        v108 = v240;
        v156 = v241;
        v91 = v242;
        goto LABEL_37;
      }

      v177 = v168;
      v163 = v107;
      v257 = v165;
      v258 = sub_10021C09C(&unk_100507430, type metadata accessor for SEStorageManagementPassProvider, &unk_10040D8F8);
      v256 = v177;
    }

    v178 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passProvider;
    v179 = v251;
    swift_beginAccess();
    sub_100147EA4(&v256, v179 + v178, &qword_100504A50, &unk_10040F9F0);
    swift_endAccess();
    LODWORD(v247) = v161 == v221;
    v180 = swift_allocObject();
    v181 = v246;
    *(v180 + 16) = sub_10014CFE0;
    *(v180 + 24) = v181;
    sub_100068FC4(&unk_100507440, &unk_10040BEB0);
    v182 = swift_allocObject();
    sub_100068FC4(&qword_100504A58, &unk_10040FA00);
    v183 = swift_allocObject();
    *(v183 + 16) = 0;
    v182[3] = v180;
    v182[4] = v183;
    v182[2] = sub_10021B9B8;
    v184 = swift_allocObject();
    *(v184 + 16) = sub_10014D09C;
    *(v184 + 24) = v182;
    v185 = v184;
    v186 = type metadata accessor for TaskPriority();
    v187 = *(*(v186 - 8) + 56);
    v188 = v219;
    v187(v219, 1, 1, v186);
    v189 = swift_allocObject();
    *(v189 + 16) = 0;
    *(v189 + 24) = 0;
    *(v189 + 32) = xmmword_10040BE60;
    v190 = v251;
    v232 = sub_10021B9E8;
    *(v189 + 48) = v251;
    *(v189 + 56) = sub_10021B9E8;
    v231 = v185;
    *(v189 + 64) = v185;
    v229 = v190;

    v230 = sub_100201B44(0, 0, v188, &unk_10040BEC0, v189);
    v187(v188, 1, 1, v186);
    v158(v217, v233, v163);
    v191 = v242;
    v108 = v240;
    (*(v242 + 16))(v218, v241, v240);
    v192 = v234;
    v193 = (*(v234 + 80) + 40) & ~*(v234 + 80);
    v194 = (v214 + *(v191 + 80) + v193) & ~*(v191 + 80);
    v227 = (v194 + v215 + 7) & 0xFFFFFFFFFFFFFFF8;
    v226 = ((v194 + v215 + 23) & 0xFFFFFFFFFFFFFFF8);
    v195 = (v226 + 15) & 0xFFFFFFFFFFFFFFF8;
    v196 = (v195 + 23) & 0xFFFFFFFFFFFFFFF8;
    v228 = (v196 + 23) & 0xFFFFFFFFFFFFFFF8;
    v197 = (v228 + 15) & 0xFFFFFFFFFFFFFFF8;
    v198 = swift_allocObject();
    *(v198 + 16) = 0;
    *(v198 + 24) = 0;
    v199 = v229;
    *(v198 + 32) = v229;
    v200 = (v198 + v193);
    v91 = v191;
    (*(v192 + 32))(v200, v217, v235);
    (*(v191 + 32))(v198 + v194, v218, v108);
    v201 = (v198 + v227);
    *v201 = v254;
    v201[8] = v247;
    *&v226[v198] = v245;
    v202 = (v198 + v195);
    v203 = (v198 + v196);
    *v202 = 0;
    v202[1] = 0;
    v204 = v250;
    *v203 = v249;
    v203[1] = v204;
    *(v198 + v228) = v230;
    v205 = (v198 + v197);
    v107 = v235;
    v206 = v231;
    *v205 = v232;
    v205[1] = v206;
    v207 = v199;

    v208 = v198;
    v156 = v241;
    sub_1001F9BE8(0, 0, v219, &unk_10040FA10, v208);

    v148 = v243;
    v149 = v239;
LABEL_37:

    v248(v149, v148);

    v109 = v156;
LABEL_16:
    (*(v91 + 8))(v109, v108);
    (*(v234 + 8))(v233, v107);
    return (*(v237 + 8))(v236, v238);
  }

  v248(v239, v243);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100210A14(char a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000938D4(a2, v6, &unk_100506F00, &qword_10040BE90);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100075768(v6, &unk_100506F00, &qword_10040BE90);
    v15 = a1 & 1;
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_10021C09C(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    v12 = swift_allocError();
    (*(v8 + 16))(v13, v10, v7);
    v14 = v12;
    sub_100068FC4(&qword_100506F78, &qword_10040F300);
    CheckedContinuation.resume(throwing:)();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_100210C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100210D14;

  return static Task<>.sleep(nanoseconds:)(3000000000);
}

uint64_t sub_100210D14()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100210E44, 0, 0);
  }
}

uint64_t sub_100210E44(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Firing install complete notification after 3s", v6, 2u);
  }

  v7 = swift_task_alloc();
  *(v2 + 32) = v7;
  *v7 = v2;
  v7[1] = sub_100210F90;

  return sub_1002ADDD8();
}

uint64_t sub_100210F90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100211358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[15] = v9;
  v10 = *(v9 - 8);
  v7[16] = v10;
  v7[17] = *(v10 + 64);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002114BC, 0, 0);
}

uint64_t sub_1002114BC(uint64_t a1, uint64_t a2)
{
  v78 = v2;
  v3 = v2[8];
  if (v3[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128])
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Deletion is not available on non-application clients", v7, 2u);
    }

    sub_10009591C();
    v9 = swift_allocError();
    v10 = 15;
    goto LABEL_36;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
    v3 = v2[8];
  }

  v11 = v2[22];
  v12 = v2[15];
  v13 = v2[16];
  v14 = v2[9];
  v15 = type metadata accessor for Logger();
  v2[23] = sub_1000958E4(v15, qword_10051B2C8);
  v16 = *(v13 + 16);
  v2[24] = v16;
  v2[25] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v76 = v16;
  v16(v11, v14, v12);
  v17 = v3;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v2[22];
  v23 = v2[15];
  v22 = v2[16];
  if (v20)
  {
    v24 = swift_slowAlloc();
    v77[0] = swift_slowAlloc();
    *v24 = 136315394;
    v25 = UUID.uuidString.getter();
    v27 = sub_1002FFA0C(v25, v26, v77);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = UUID.uuidString.getter();
    v30 = v29;
    v31 = v21;
    v32 = *(v22 + 8);
    v32(v31, v23);
    v33 = sub_1002FFA0C(v28, v30, v77);

    *(v24 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v18, v19, "Session %s: Deleting credential %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v34 = v21;
    v32 = *(v22 + 8);
    v32(v34, v23);
  }

  v2[26] = v32;
  v35 = v2[8];
  v36 = &v35[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v37 = *&v35[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  if ((v37 & 0x8000000000000000) == 0 || v37 != 0x8000000000000000 || *(v36 + 1) | *(v36 + 2) | *v36)
  {
    v38 = v35;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = sub_1002FFA0C(0xD00000000000001ALL, 0x8000000100467C40, v77);
      *(v41 + 12) = 2080;
      v42 = *(v36 + 3);
      if (v42 >> 62)
      {
        if (v42 >> 62 == 1)
        {
          v43 = 0xE500000000000000;
          v44 = 0x6465726957;
        }

        else
        {
          v56 = (*(v36 + 2) | *v36 | *(v36 + 1)) == 0;
          v57 = v42 == 0x8000000000000000;
          if (v57 && v56)
          {
            v44 = 0x656D6567616E614DLL;
          }

          else
          {
            v44 = 0x64696C61766E49;
          }

          if (v57 && v56)
          {
            v43 = 0xEA0000000000746ELL;
          }

          else
          {
            v43 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v43 = 0xED00006E6F697461;
        v44 = 0x6C756D4564726143;
      }

      v58 = sub_1002FFA0C(v44, v43, v77);

      *(v41 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s: Unexpected state %s, expected Management", v41, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    v9 = swift_allocError();
    v10 = 10;
    goto LABEL_36;
  }

  v45 = v2[9];
  v46 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  v47 = *&v35[v46];
  v48 = swift_task_alloc();
  v48[2] = sub_10021C244;
  v48[3] = 0;
  v48[4] = v45;

  v49 = sub_10033322C(sub_10021C27C, v48, v47);

  if (v49 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_21;
    }

LABEL_40:
    v61 = v2[18];
    v62 = v2[15];
    v63 = v2[9];

    v76(v61, v63, v62);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v2[18];
    v68 = v2[15];
    if (v66)
    {
      v69 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v69 = 136315394;
      *(v69 + 4) = sub_1002FFA0C(0xD00000000000001ALL, 0x8000000100467C40, v77);
      *(v69 + 12) = 2080;
      v70 = UUID.uuidString.getter();
      v71 = v32;
      v72 = v70;
      v74 = v73;
      v71(v67, v68);
      v75 = sub_1002FFA0C(v72, v74, v77);

      *(v69 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v64, v65, "%s: Attempted to delete a credential %s that does not exist or no access", v69, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v32(v67, v68);
    }

    sub_10009591C();
    v9 = swift_allocError();
    v10 = 1;
LABEL_36:
    *v8 = v10;
    swift_willThrow();
    v59 = v2[10];
    swift_errorRetain();
    v59(v9);

    v60 = v2[1];

    return v60();
  }

  result = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_40;
  }

LABEL_21:
  if ((v49 & 0xC000000000000001) != 0)
  {
    v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v51 = *(v49 + 32);
  }

  v52 = v51;
  v2[27] = v51;

  v53 = v52;
  CredentialInternal.identifier.getter();
  v54 = swift_task_alloc();
  v2[28] = v54;
  *v54 = v2;
  v54[1] = sub_100211DC8;
  v55 = v2[21];

  return sub_1002AEC78(v55);
}

uint64_t sub_100211DC8()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = v2[26];
    v3 = v2[27];
    v5 = v2[21];
    v6 = v2[15];

    v4(v5, v6);
    v7 = sub_10021293C;
  }

  else
  {
    v8 = v2[26];
    v9 = v2[21];
    v10 = v2[15];
    v2[30] = (v2[16] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v9, v10);
    v7 = sub_100211F34;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100211F34()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = OBJC_IVAR____TtC10seserviced14SECUserSession__useNetworkShim;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  UserDefaultBacked.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 312) == 1)
  {
    if (qword_100501C90 != -1)
    {
      swift_once();
    }

    CredentialInternal.identifier.getter();
    v6 = swift_task_alloc();
    *(v0 + 248) = v6;
    *v6 = v0;
    v6[1] = sub_100212274;
    v7 = *(v0 + 160);

    return sub_1002E7C64(v7);
  }

  else
  {
    v24 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = *(v0 + 152);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 120);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    _StringGuts.grow(_:)(28);

    v16._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v16);

    v17._object = 0x8000000100467C60;
    v17._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v17);
    *(v0 + 272) = 0xE800000000000000;
    v9(v10, v14, v13);
    v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v0 + 280) = v20;
    (*(v12 + 32))(v20 + v18, v10, v13);
    *(v20 + v19) = v15;
    *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
    v21 = v15;
    v22 = v24;
    v23 = swift_task_alloc();
    *(v0 + 288) = v23;
    *v23 = v0;
    v23[1] = sub_100212608;

    return (sub_1001FB560)();
  }
}

uint64_t sub_100212274()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 160);
    v5 = *(v2 + 120);

    v3(v4, v5);
    v6 = sub_100212A14;
  }

  else
  {
    (*(v2 + 208))(*(v2 + 160), *(v2 + 120));
    v6 = sub_1002123D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002123D8()
{
  v16 = v0;
  v1 = *(v0 + 216);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 152);
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    CredentialInternal.identifier.getter();
    v9 = UUID.uuidString.getter();
    v11 = v10;
    v4(v5, v6);
    v12 = sub_1002FFA0C(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully deleted credential %s with SHIM", v7, 0xCu);
    sub_1000752F4(v8);
  }

  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B858;
  *(v0 + 264) = qword_10051B858;

  return _swift_task_switch(sub_1002125A0, v13, 0);
}

uint64_t sub_1002125A0()
{
  sub_10032C9E4();

  return _swift_task_switch(sub_10021C2B0, 0, 0);
}

uint64_t sub_100212608()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {

    v3 = sub_100212AEC;
  }

  else
  {

    v3 = sub_10021277C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021277C()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 304) = qword_10051B858;

  return _swift_task_switch(sub_100212814, v1, 0);
}

uint64_t sub_100212814()
{
  sub_10032C9E4();

  return _swift_task_switch(sub_10021287C, 0, 0);
}

uint64_t sub_10021287C()
{
  v1 = *(v0 + 216);
  (*(v0 + 80))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10021293C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 80);
  swift_errorRetain();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100212A14()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 80);
  swift_errorRetain();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100212AEC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 80);
  swift_errorRetain();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100212BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v6 = type metadata accessor for UUID();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_100212CC4, 0, 0);
}

uint64_t sub_100212CC4()
{
  v59 = v0;
  *(v0 + 40) = 0;
  v1 = [*(v0 + 64) listAppletsAndRefreshCache:0 outError:v0 + 40];
  v2 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_9;
  }

  v3 = v1;
  v4 = *(v0 + 72);
  sub_10009393C(0, &qword_100504280, NFApplet_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v2;

  v7 = swift_task_alloc();
  v7[2] = v4;
  v8 = sub_10033322C(sub_10021B430, v7, v5);

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 104);
    v40 = *(v0 + 112);
    v42 = *(v0 + 96);
    v43 = *(v0 + 72);
    v44 = type metadata accessor for Logger();
    sub_1000958E4(v44, qword_10051B2C8);
    (*(v41 + 16))(v40, v43, v42);
    v18 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    v46 = os_log_type_enabled(v18, v45);
    v48 = *(v0 + 104);
    v47 = *(v0 + 112);
    v49 = *(v0 + 96);
    if (!v46)
    {

      (*(v48 + 8))(v47, v49);
      goto LABEL_22;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v58 = v51;
    *v50 = 136315138;
    v52 = UUID.uuidString.getter();
    v54 = v53;
    (*(v48 + 8))(v47, v49);
    v55 = sub_1002FFA0C(v52, v54, &v58);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v18, v45, "Nothing to delete in the SE when deleting %s", v50, 0xCu);
    sub_1000752F4(v51);
    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = *(v0 + 64);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 56) = 0;
  LODWORD(v9) = [v9 deleteApplets:isa queueServerConnection:1 outError:v0 + 56];

  v2 = *(v0 + 56);
  if (v9)
  {
    v11 = qword_1005019D8;
    v12 = v2;
    if (v11 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B2C8);
    v16 = v14;
    v17 = v13;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v18, v19))
    {

LABEL_22:

      v39 = *(v0 + 8);
      goto LABEL_23;
    }

    v20 = *(v0 + 120);
    v21 = *(v0 + 104);
    v57 = *(v0 + 96);
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = UUID.uuidString.getter();
    v25 = sub_1002FFA0C(v23, v24, &v58);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    CredentialInternal.identifier.getter();
    v26 = UUID.uuidString.getter();
    v28 = v27;
    (*(v21 + 8))(v20, v57);
    v29 = sub_1002FFA0C(v26, v28, &v58);

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Session %s: Successfully MFD credential %s", v22, 0x16u);
    swift_arrayDestroy();
LABEL_20:

    goto LABEL_22;
  }

LABEL_9:
  v30 = v2;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000958E4(v31, qword_10051B2C8);
  swift_errorRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_1002FFA0C(0xD00000000000001ALL, 0x8000000100467C40, &v58);
    *(v34 + 12) = 2080;
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    v37 = sub_1002FFA0C(v35, v36, &v58);

    *(v34 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v32, v33, "%s: Nearfield error %s encountered when deleting applets", v34, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v38 = 8;
  swift_willThrow();

  v39 = *(v0 + 8);
LABEL_23:

  return v39();
}

uint64_t sub_1002133C0(void **a1, uint64_t a2)
{
  v3 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_10013070C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100075768(v5, &unk_10050BE80, &unk_10040B360);
    v11 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    if ([v10 managedBySP])
    {
      v11 = static UUID.== infix(_:_:)();
    }

    else
    {
      v11 = 0;
    }

    (*(v7 + 8))(v9, v6);
  }

  return v11 & 1;
}

uint64_t sub_100213828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v3[21] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_100213958, 0, 0);
}

uint64_t sub_100213958()
{
  v0[4].type = 0;
  v1 = [*&v0[4].align listAppletsAndRefreshCache:0 outError:&v0[4].type];
  type = v0[4].type;
  if (!v1)
  {
    v42 = type;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    name = v0->name;
    goto LABEL_65;
  }

  v3 = v1;
  sub_10009393C(0, &qword_100504280, NFApplet_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = type;

  if (v4 >> 62)
  {
LABEL_48:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_49;
    }
  }

  v7 = 0;
  v66 = v4 & 0xC000000000000001;
  v56 = *&v0[5].align;
  v64 = v4 + 32;
  v65 = v4 & 0xFFFFFFFFFFFFFF8;
  offs = v0[5].offs;
  v60 = (v56 + 8);
  v58 = offs + 14;
  v62 = v0;
  v63 = (v56 + 56);
  v61 = v6;
  while (1)
  {
    while (1)
    {
LABEL_7:
      if (v66)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v65 + 16))
        {
          goto LABEL_46;
        }

        v9 = *(v64 + 8 * v7);
      }

      v10 = v9;
      if (__OFADD__(v7++, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v12 = objc_opt_self();
      v13 = [v10 discretionaryData];
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v14, v16);
      v4 = [v12 TLVsWithData:isa];

      if (v4)
      {
        break;
      }

      v4 = v0[5].name;
      v8 = v0[5].type;

      (*v63)(v4, 1, 1, v8);
LABEL_6:
      sub_100075768(v0[5].name, &unk_10050BE80, &unk_10040B360);
      if (v7 == v6)
      {
        goto LABEL_49;
      }
    }

    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = v10;
    if (!(v18 >> 62))
    {
      v4 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0 = &stru_1004F5000;
      if (v4)
      {
        goto LABEL_14;
      }

LABEL_40:
      v0 = v62;
      v41 = v62[5].name;
      v4 = v62[5].type;

      (*v63)(v41, 1, 1, v4);
LABEL_41:
      v6 = v61;
      goto LABEL_6;
    }

    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (v40 < 0)
    {
      goto LABEL_47;
    }

    v4 = v40;
    v0 = &stru_1004F5000;
    if (!v40)
    {
      goto LABEL_40;
    }

LABEL_14:
    v19 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_45;
        }

        v20 = *(v18 + 8 * v19 + 32);
      }

      v21 = v20;
      if ([v20 tag] == 254)
      {
        v22 = [v21 v0[113].type];
        if (v22)
        {
          break;
        }
      }

      ++v19;

      if (v4 == v19)
      {
        goto LABEL_40;
      }
    }

    v23 = v22;
    v24 = [v22 value];
    if (!v24)
    {
      __break(1u);
    }

    v4 = v24;
    v0 = v62;
    v25 = v62[5].name;
    v26 = v62[5].type;

    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    sub_1001E0778(v27, v29, v25);
    if ((*(v56 + 48))(v25, 1, v26) == 1)
    {

      goto LABEL_41;
    }

    (*(v56 + 32))(v62[6].name, v62[5].name, v62[5].type);
    if (([v67 managedBySP] & 1) == 0)
    {
      break;
    }

    if (!*(offs + 2) || (sub_10021C09C(&unk_100507480, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v30 = dispatch thunk of Hashable._rawHashValue(seed:)(), v31 = -1 << *(offs + 32), v32 = v30 & ~v31, ((*(v58 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0))
    {
LABEL_31:
      v39 = v0[6].name;
      v4 = v0[5].type;

      goto LABEL_33;
    }

    v57 = ~v31;
    v33 = *(v56 + 72);
    v34 = *(v56 + 16);
    while (1)
    {
      v35 = v0[6].offs;
      v36 = v0[5].type;
      v34(v35, *(offs + 6) + v32 * v33, v36);
      sub_10021C09C(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *v60;
      (*v60)(v35, v36);
      if (v37)
      {
        break;
      }

      v32 = (v32 + 1) & v57;
      v0 = v62;
      if (((*(v58 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    v0 = v62;
    v38(v62[6].name, v62[5].type);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v6 = v61;
    if (v7 == v61)
    {
      goto LABEL_49;
    }
  }

  v39 = v62[6].name;
  v4 = v62[5].type;

LABEL_33:
  (*v60)(v39, v4);
  v6 = v61;
  if (v7 != v61)
  {
    goto LABEL_7;
  }

LABEL_49:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_60;
    }

LABEL_52:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    v0[6].type = sub_1000958E4(v44, qword_10051B2C8);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "deleting applets with TSM", v47, 2u);
    }

    v48 = *&v0[4].align;

    v49 = Array._bridgeToObjectiveC()().super.isa;
    *&v0[6].align = v49;

    v0->type = v0;
    *&v0->align = sub_100214358;
    v50 = swift_continuation_init();
    v0[4].name = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    v0[2].type = _NSConcreteStackBlock;
    *&v0[2].align = 1107296256;
    v0[3].offs = sub_1001E95B0;
    v0[3].name = &unk_1004CC380;
    v0[3].type = v50;
    [v48 deleteAppletsAndConnectToServer:v49 completion:&v0[2].type];

    return _swift_continuation_await(&v0->type);
  }

  else
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_52;
    }

LABEL_60:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000958E4(v51, qword_10051B2C8);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Nothing to delete in the SE when deleting ", v54, 2u);
    }

    name = v0->name;
LABEL_65:

    return name();
  }
}

uint64_t sub_100214358()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1002145C0;
  }

  else
  {
    v2 = sub_100214494;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100214494()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Deletion successful with TSM", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002145C0(uint64_t a1)
{
  v2 = *(v1 + 216);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100214678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v13;
  *(v8 + 272) = v12;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 232) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 296) = v9;
  *(v8 + 304) = *(v9 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_10021476C, 0, 0);
}

uint64_t sub_10021476C(uint64_t a1, uint64_t a2)
{
  v199 = v2;
  v3 = *(v2 + 232);
  if (v3[OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128])
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Edit access is not available on non-application clients", v7, 2u);
    }

    sub_10009591C();
    v9 = swift_allocError();
    v10 = 15;
    goto LABEL_41;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
    v3 = *(v2 + 232);
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_1000958E4(v11, qword_10051B2C8);
  *(v2 + 336) = v12;
  v13 = v3;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v191 = *(v2 + 256);
    v193 = *(v2 + 264);
    v16 = swift_slowAlloc();
    v198[0] = swift_slowAlloc();
    *v16 = 136316162;
    v17 = UUID.uuidString.getter();
    v194 = v12;
    v19 = sub_1002FFA0C(v17, v18, v198);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = Array.description.getter();
    v22 = sub_1002FFA0C(v20, v21, v198);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2080;
    v23 = Array.description.getter();
    v25 = sub_1002FFA0C(v23, v24, v198);

    *(v16 + 24) = v25;
    *(v16 + 32) = 2080;
    v26 = Array.description.getter();
    v28 = sub_1002FFA0C(v26, v27, v198);

    *(v16 + 34) = v28;
    *(v16 + 42) = 2080;
    v29 = Array.description.getter();
    v31 = sub_1002FFA0C(v29, v30, v198);

    *(v16 + 44) = v31;
    _os_log_impl(&_mh_execute_header, v14, v15, "Session %s: Modifying access: addingOwners %s, removingOwners %s, addingUsers %s, removingUsers %s", v16, 0x34u);
    swift_arrayDestroy();
  }

  v32 = *(v2 + 232);
  v33 = &v32[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v34 = *&v32[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24];
  if (v34 < 0 && v34 == 0x8000000000000000 && !(*(v33 + 1) | *(v33 + 2) | *v33))
  {
    v43 = *(v2 + 272);
    v44 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
    swift_beginAccess();
    v45 = *&v32[v44];
    v46 = swift_task_alloc();
    v46[2] = sub_10021C244;
    v46[3] = 0;
    v46[4] = v43;

    v47 = sub_10033322C(sub_10012E2D4, v46, v45);

    if (v47 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
      if (v48)
      {
LABEL_20:
        if ((v47 & 0xC000000000000001) != 0)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_68:
            v124 = v48;
            v80 = _CocoaArrayWrapper.endIndex.getter();
            v48 = v124;
            if (v80)
            {
LABEL_47:
              v81 = v48;
              v198[0] = _swiftEmptyArrayStorage;
              result = sub_10019F3C0(0, v80 & ~(v80 >> 63), 0);
              if (v80 < 0)
              {
LABEL_134:
                __break(1u);
                goto LABEL_135;
              }

              v82 = 0;
              v83 = v198[0];
              v84 = v81;
              v188 = v81 & 0xC000000000000001;
              v85 = v81;
              do
              {
                if (v188)
                {
                  v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v86 = *(v84 + 8 * v82 + 32);
                }

                v87 = v86;
                v88 = ApplicationInfoInternal.applicationId.getter();
                v90 = v89;

                v198[0] = v83;
                v92 = *(v83 + 2);
                v91 = *(v83 + 3);
                if (v92 >= v91 >> 1)
                {
                  sub_10019F3C0((v91 > 1), v92 + 1, 1);
                  v83 = v198[0];
                }

                ++v82;
                *(v83 + 2) = v92 + 1;
                v93 = &v83[16 * v92];
                *(v93 + 4) = v88;
                *(v93 + 5) = v90;
                v84 = v85;
              }

              while (v80 != v82);

LABEL_70:
              v125 = *(v2 + 240);
              v126 = *(v125 + 16);
              if (v126)
              {
                v127 = (v125 + 40);
                do
                {
                  v130 = *(v127 - 1);
                  v129 = *v127;
                  *(v2 + 168) = v130;
                  *(v2 + 176) = v129;
                  v131 = swift_task_alloc();
                  *(v131 + 16) = v194;

                  v132 = sub_1002F784C(sub_10021AFCC, v131, v83);

                  if ((v132 & 1) == 0)
                  {

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v83 = sub_10012EA44(0, *(v83 + 2) + 1, 1, v83);
                    }

                    v134 = *(v83 + 2);
                    v133 = *(v83 + 3);
                    if (v134 >= v133 >> 1)
                    {
                      v83 = sub_10012EA44((v133 > 1), v134 + 1, 1, v83);
                    }

                    *(v83 + 2) = v134 + 1;
                    v128 = &v83[16 * v134];
                    *(v128 + 4) = v130;
                    *(v128 + 5) = v129;
                  }

                  v127 += 2;
                  --v126;
                }

                while (v126);
              }

              v135 = *(v83 + 2);
              v136 = _swiftEmptyArrayStorage;
              if (v135)
              {
                v137 = 0;
                v138 = -v135;
                v139 = v83 + 40;
                v140 = _swiftEmptyArrayStorage;
LABEL_81:
                v189 = v140;
                v141 = &v139[16 * v137++];
                while ((v137 - 1) < *(v83 + 2))
                {
                  v142 = *(v2 + 248);
                  v143 = *(v141 - 1);
                  v144 = *v141;
                  *(v2 + 184) = v143;
                  *(v2 + 192) = v144;
                  v136 = swift_task_alloc();
                  v136[2] = v191;

                  LOBYTE(v142) = sub_1002F784C(sub_10012E558, v136, v142);

                  if ((v142 & 1) == 0)
                  {
                    v140 = v189;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v198[0] = v189;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      isUniquelyReferenced_nonNull_native = sub_10019F3C0(0, *(v189 + 16) + 1, 1);
                      v140 = v198[0];
                    }

                    v146 = v140[2];
                    v145 = v140[3];
                    v136 = (v146 + 1);
                    if (v146 >= v145 >> 1)
                    {
                      isUniquelyReferenced_nonNull_native = sub_10019F3C0((v145 > 1), v146 + 1, 1);
                      v140 = v198[0];
                    }

                    v140[2] = v136;
                    v147 = &v140[2 * v146];
                    v147[4] = v143;
                    v147[5] = v144;
                    v139 = v83 + 40;
                    if (!(v138 + v137))
                    {
                      goto LABEL_91;
                    }

                    goto LABEL_81;
                  }

                  ++v137;
                  v141 += 16;
                  if (v138 + v137 == 1)
                  {
                    v140 = v189;
LABEL_91:
                    v136 = _swiftEmptyArrayStorage;
                    goto LABEL_93;
                  }
                }

                __break(1u);
              }

              else
              {
                v140 = _swiftEmptyArrayStorage;
LABEL_93:
                *(v2 + 352) = v140;

                v189 = v140;

                isUniquelyReferenced_nonNull_native = CredentialInternal.userApplications.getter();
                if (!(isUniquelyReferenced_nonNull_native >> 62))
                {
                  v148 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!v148)
                  {
LABEL_106:

                    v151 = _swiftEmptyArrayStorage;
LABEL_107:
                    v163 = *(v2 + 256);
                    v164 = *(v163 + 16);
                    if (v164)
                    {
                      v165 = (v163 + 40);
                      do
                      {
                        v168 = *(v165 - 1);
                        v167 = *v165;
                        *(v2 + 200) = v168;
                        *(v2 + 208) = v167;
                        v169 = swift_task_alloc();
                        *(v169 + 16) = v193;

                        v170 = sub_1002F784C(sub_10021C2D4, v169, v151);

                        if ((v170 & 1) == 0)
                        {

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v151 = sub_10012EA44(0, *(v151 + 2) + 1, 1, v151);
                          }

                          v172 = *(v151 + 2);
                          v171 = *(v151 + 3);
                          if (v172 >= v171 >> 1)
                          {
                            v151 = sub_10012EA44((v171 > 1), v172 + 1, 1, v151);
                          }

                          *(v151 + 2) = v172 + 1;
                          v166 = &v151[16 * v172];
                          *(v166 + 4) = v168;
                          *(v166 + 5) = v167;
                        }

                        v165 += 2;
                        --v164;
                      }

                      while (v164);
                    }

                    v173 = *(v151 + 2);
                    if (v173)
                    {
                      v174 = 0;
                      v175 = -v173;
                      v176 = v151 + 40;
                      v177 = _swiftEmptyArrayStorage;
                      do
                      {
                        v197 = v177;
                        v178 = &v176[16 * v174++];
                        while (1)
                        {
                          if ((v174 - 1) >= *(v151 + 2))
                          {
                            __break(1u);
                            goto LABEL_134;
                          }

                          v179 = *(v2 + 264);
                          v181 = *(v178 - 1);
                          v180 = *v178;
                          *(v2 + 216) = v181;
                          *(v2 + 224) = v180;
                          v182 = swift_task_alloc();
                          *(v182 + 16) = v190;

                          LOBYTE(v179) = sub_1002F784C(sub_10021C254, v182, v179);

                          if ((v179 & 1) == 0)
                          {
                            break;
                          }

                          ++v174;
                          v178 += 16;
                          if (v175 + v174 == 1)
                          {
                            v177 = v197;
                            goto LABEL_130;
                          }
                        }

                        v177 = v197;
                        result = swift_isUniquelyReferenced_nonNull_native();
                        v198[0] = v197;
                        if ((result & 1) == 0)
                        {
                          result = sub_10019F3C0(0, *(v197 + 16) + 1, 1);
                          v177 = v198[0];
                        }

                        v184 = v177[2];
                        v183 = v177[3];
                        if (v184 >= v183 >> 1)
                        {
                          result = sub_10019F3C0((v183 > 1), v184 + 1, 1);
                          v177 = v198[0];
                        }

                        v177[2] = v184 + 1;
                        v185 = &v177[2 * v184];
                        v185[4] = v181;
                        v185[5] = v180;
                        v176 = v151 + 40;
                      }

                      while (v175 + v174);
                    }

                    else
                    {
                      v177 = _swiftEmptyArrayStorage;
                    }

LABEL_130:
                    *(v2 + 360) = v177;

                    v186 = swift_task_alloc();
                    *(v2 + 368) = v186;
                    *v186 = v2;
                    v186[1] = sub_100215A54;
                    v187 = *(v2 + 272);

                    return sub_1002AF224(v187, v189, v177);
                  }

                  goto LABEL_95;
                }
              }

              v162 = isUniquelyReferenced_nonNull_native;
              v148 = _CocoaArrayWrapper.endIndex.getter();
              isUniquelyReferenced_nonNull_native = v162;
              if (!v148)
              {
                goto LABEL_106;
              }

LABEL_95:
              v149 = isUniquelyReferenced_nonNull_native;
              v198[0] = v136;
              result = sub_10019F3C0(0, v148 & ~(v148 >> 63), 0);
              if ((v148 & 0x8000000000000000) == 0)
              {
                v150 = 0;
                v151 = v198[0];
                v152 = v149;
                v192 = v149 & 0xC000000000000001;
                v196 = v149;
                v153 = v148;
                do
                {
                  if (v192)
                  {
                    v154 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v154 = *(v152 + 8 * v150 + 32);
                  }

                  v155 = v154;
                  v156 = ApplicationInfoInternal.applicationId.getter();
                  v158 = v157;

                  v198[0] = v151;
                  v160 = *(v151 + 2);
                  v159 = *(v151 + 3);
                  if (v160 >= v159 >> 1)
                  {
                    sub_10019F3C0((v159 > 1), v160 + 1, 1);
                    v151 = v198[0];
                  }

                  ++v150;
                  *(v151 + 2) = v160 + 1;
                  v161 = &v151[16 * v160];
                  *(v161 + 4) = v156;
                  *(v161 + 5) = v158;
                  v152 = v196;
                }

                while (v153 != v150);

                goto LABEL_107;
              }

LABEL_135:
              __break(1u);
              return result;
            }

LABEL_69:

            v83 = _swiftEmptyArrayStorage;
            goto LABEL_70;
          }

          v49 = *(v47 + 32);
        }

        v50 = v49;
        *(v2 + 344) = v49;

        v50;
        sub_1001FF418((v2 + 16));
        v193 = v2 + 200;
        v194 = v2 + 168;
        v190 = v2 + 216;
        v191 = v2 + 184;
        v51 = *(v2 + 248);
        *(v2 + 152) = *(v2 + 16);
        v53 = *(v2 + 152);
        v52 = *(v2 + 160);

        sub_10012E450(v2 + 16);
        v54 = *(v51 + 16);
        v55 = (v51 + 40);
        v56 = v54 + 1;
        while (--v56)
        {
          if (*(v55 - 1) != v53 || *v55 != v52)
          {
            v55 += 2;
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              continue;
            }
          }

          v58 = *(v2 + 328);
          v59 = *(v2 + 296);
          v60 = *(v2 + 304);
          v61 = *(v2 + 272);
          sub_1000B6B54(v2 + 152);
          (*(v60 + 16))(v58, v61, v59);
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.error.getter();
          v64 = os_log_type_enabled(v62, v63);
          v65 = *(v2 + 328);
          v66 = *(v2 + 296);
          v67 = *(v2 + 304);
          if (v64)
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v198[0] = v69;
            *v68 = 136315138;
            v70 = UUID.uuidString.getter();
            v72 = v71;
            (*(v67 + 8))(v65, v66);
            v73 = sub_1002FFA0C(v70, v72, v198);

            *(v68 + 4) = v73;
            _os_log_impl(&_mh_execute_header, v62, v63, "Attempted to remove current client as owner of credential %s", v68, 0xCu);
            sub_1000752F4(v69);
          }

          else
          {

            (*(v67 + 8))(v65, v66);
          }

          sub_10009591C();
          v9 = swift_allocError();
          *v94 = 18;
          swift_willThrow();
          (*(*(v2 + 304) + 16))(*(v2 + 312), *(v2 + 272), *(v2 + 296));
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.info.getter();
          v97 = os_log_type_enabled(v95, v96);
          v99 = *(v2 + 304);
          v98 = *(v2 + 312);
          v100 = *(v2 + 296);
          if (v97)
          {
            v101 = swift_slowAlloc();
            v195 = swift_slowAlloc();
            v198[0] = v195;
            *v101 = 136315138;
            v102 = UUID.uuidString.getter();
            v104 = v103;
            (*(v99 + 8))(v98, v100);
            v105 = sub_1002FFA0C(v102, v104, v198);

            *(v101 + 4) = v105;
            _os_log_impl(&_mh_execute_header, v95, v96, "Failed to update access to credential %s, rebuilding credential cache", v101, 0xCu);
            sub_1000752F4(v195);
          }

          else
          {

            (*(v99 + 8))(v98, v100);
          }

          v106 = *(v2 + 344);
          swift_willThrow();

          goto LABEL_42;
        }

        sub_1000B6B54(v2 + 152);
        v48 = CredentialInternal.ownerApplications.getter();
        if (v48 >> 62)
        {
          goto LABEL_68;
        }

        v80 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v80)
        {
          goto LABEL_47;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
        goto LABEL_20;
      }
    }

    v108 = *(v2 + 320);
    v109 = *(v2 + 296);
    v110 = *(v2 + 304);
    v111 = *(v2 + 272);

    (*(v110 + 16))(v108, v111, v109);
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();
    v114 = os_log_type_enabled(v112, v113);
    v115 = *(v2 + 320);
    v116 = *(v2 + 296);
    v117 = *(v2 + 304);
    if (v114)
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v198[0] = v119;
      *v118 = 136315138;
      v120 = UUID.uuidString.getter();
      v122 = v121;
      (*(v117 + 8))(v115, v116);
      v123 = sub_1002FFA0C(v120, v122, v198);

      *(v118 + 4) = v123;
      _os_log_impl(&_mh_execute_header, v112, v113, "Adding owner to credential %s that does not exist", v118, 0xCu);
      sub_1000752F4(v119);
    }

    else
    {

      (*(v117 + 8))(v115, v116);
    }

    sub_10009591C();
    v9 = swift_allocError();
    v10 = 1;
    goto LABEL_41;
  }

  v35 = v32;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v198[0] = v39;
    *v38 = 136315138;
    v40 = *(v33 + 3);
    if (v40 >> 62)
    {
      if (v40 >> 62 == 1)
      {
        v41 = 0xE500000000000000;
        v42 = 0x6465726957;
      }

      else
      {
        v74 = (*(v33 + 2) | *v33 | *(v33 + 1)) == 0;
        v75 = v40 == 0x8000000000000000;
        if (v75 && v74)
        {
          v42 = 0x656D6567616E614DLL;
        }

        else
        {
          v42 = 0x64696C61766E49;
        }

        if (v75 && v74)
        {
          v41 = 0xEA0000000000746ELL;
        }

        else
        {
          v41 = 0xE700000000000000;
        }
      }
    }

    else
    {
      v41 = 0xED00006E6F697461;
      v42 = 0x6C756D4564726143;
    }

    v76 = sub_1002FFA0C(v42, v41, v198);

    *(v38 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v36, v37, "modifyAccessForCredential: Unexpected state %s, expected Management", v38, 0xCu);
    sub_1000752F4(v39);
  }

  sub_10009591C();
  v9 = swift_allocError();
  v10 = 10;
LABEL_41:
  *v8 = v10;
  swift_willThrow();
LABEL_42:
  v77 = *(v2 + 280);
  swift_errorRetain();
  v77(v9);

  v78 = *(v2 + 8);

  return v78();
}

uint64_t sub_100215A54()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_100215C18;
  }

  else
  {

    v3 = sub_100215B8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100215B8C()
{
  v1 = *(v0 + 344);
  (*(v0 + 280))(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100215C18()
{
  v19 = v0;

  v1 = v0[47];
  (*(v0[38] + 16))(v0[39], v0[34], v0[37]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v8 = 136315138;
    v9 = UUID.uuidString.getter();
    v11 = v10;
    (*(v6 + 8))(v5, v7);
    v12 = sub_1002FFA0C(v9, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update access to credential %s, rebuilding credential cache", v8, 0xCu);
    sub_1000752F4(v17);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v13 = v0[43];
  swift_willThrow();

  v14 = v0[35];
  swift_errorRetain();
  v14(v1);

  v15 = v0[1];

  return v15();
}

BOOL sub_100215E28()
{
  CredentialInternal.accessLevel.getter();
  v0 = AccessLevelInternal.rawValue.getter();
  return v0 == AccessLevelInternal.rawValue.getter();
}

uint64_t sub_100216174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100216198, 0, 0);
}

uint64_t sub_100216198(uint64_t a1, uint64_t a2)
{
  v32 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 16);
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v2 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    v11 = *(v8 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 24);
    if (v11 >> 62)
    {
      if (v11 >> 62 == 1)
      {
        v12 = 0xE500000000000000;
        v13 = 0x6465726957;
      }

      else
      {
        v14 = (*(v8 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 16) | *(v8 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState) | *(v8 + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8)) == 0;
        v15 = v11 == 0x8000000000000000;
        if (v15 && v14)
        {
          v13 = 0x656D6567616E614DLL;
        }

        else
        {
          v13 = 0x64696C61766E49;
        }

        if (v15 && v14)
        {
          v12 = 0xEA0000000000746ELL;
        }

        else
        {
          v12 = 0xE700000000000000;
        }
      }
    }

    else
    {
      v12 = 0xED00006E6F697461;
      v13 = 0x6C756D4564726143;
    }

    v16 = sub_1002FFA0C(v13, v12, &v31);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Getting SECSession State = %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  v17 = *(v2 + 16) + OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState;
  v19 = *v17;
  v18 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  if (v21 >> 62)
  {
    if (v21 >> 62 != 1)
    {
      v28 = v21 == 0x8000000000000000 && (v20 | v18 | v19) == 0;
      (*(v2 + 24))(v28, 0);
      goto LABEL_27;
    }

    v22 = *(v2 + 24);
    v23 = (v21 & 0x3FFFFFFFFFFFFFFFLL);
    sub_100218E94(v19, v18, v20, v21);
    v24 = v19;
    v22(2, v19);
  }

  else
  {
    v25 = *(v2 + 24);
    sub_100218E94(v19, v18, v20, v21);
    v26 = v19;
    v25(3, v19);
  }

LABEL_27:
  v29 = *(v2 + 8);

  return v29();
}

uint64_t sub_1002164F4(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a6;
  v17[6] = v15;
  v18 = a1;
  sub_1001F9BE8(0, 0, v13, a7, v17);
}

uint64_t sub_100216634()
{
  v1[46] = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1[47] = v2;
  v1[48] = *(v2 - 8);
  v1[49] = swift_task_alloc();

  return _swift_task_switch(sub_100216700, 0, 0);
}

uint64_t sub_100216700(uint64_t a1, uint64_t a2)
{
  sub_1001FF418((v2 + 192));
  v3 = *(v2 + 200);
  *(v2 + 400) = *(v2 + 192);
  *(v2 + 408) = v3;

  sub_10012E450(v2 + 192);
  sub_1001FF418((v2 + 80));
  *(v2 + 416) = 0;
  v4 = *(v2 + 104);
  *(v2 + 424) = *(v2 + 96);
  *(v2 + 432) = v4;

  sub_10012E450(v2 + 80);
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B858;
  *(v2 + 440) = qword_10051B858;

  return _swift_task_switch(sub_10021683C, v5, 0);
}

uint64_t sub_10021683C()
{
  v1 = v0[52];
  v0[56] = sub_100137A14(v0[50], v0[51]);
  v0[57] = v1;
  if (v1)
  {
    v2 = sub_100217484;
  }

  else
  {
    v2 = sub_1002168CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002168CC()
{
  v1 = v0[56];
  if (v1)
  {
    v2 = v0[55];

    return _swift_task_switch(sub_1002169B0, v2, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[59] = v3;
    *v3 = v0;
    v3[1] = sub_100216DF8;
    v4 = v0[54];
    v5 = v0[53];
    v7 = v0[50];
    v6 = v0[51];

    return sub_100135850(v7, v6, v5, v4);
  }
}

uint64_t sub_1002169B0()
{
  v1 = v0[57];
  v2 = sub_10035E904();
  if (v1)
  {

    v10 = v0[1];

    return v10();
  }

  else
  {
    v3 = v2;
    v5 = v0[54];
    v4 = v0[55];
    v6 = v0[53];
    v8 = v0[50];
    v7 = v0[51];
    v9 = swift_task_alloc();
    v9[2] = v3;
    v9[3] = v4;
    v9[4] = v8;
    v9[5] = v7;
    v9[6] = v6;
    v9[7] = v5;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v0[58] = 0;

    return _swift_task_switch(sub_100216B28, 0, 0);
  }
}

uint64_t sub_100216B28()
{
  *(v0 + 488) = *(v0 + 464);
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  (*(v2 + 16))(v1, *(v0 + 368) + OBJC_IVAR____TtC10seserviced14SECUserSession__bypassGDPR, v3);
  UserDefaultBacked.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 528))
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Bypassing GDPR preentment because of User defaults", v7, 2u);
    }

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    *(v0 + 496) = v10;
    v11 = String._bridgeToObjectiveC()();
    *(v0 + 504) = v11;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1002171DC;
    v12 = swift_continuation_init();
    *(v0 + 360) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 304) = _NSConcreteStackBlock;
    *(v0 + 312) = 1107296256;
    *(v0 + 320) = sub_1001E95B0;
    *(v0 + 328) = &unk_1004CBC78;
    *(v0 + 336) = v12;
    [v10 presentGDPRinAppWithBundleId:v11 completion:v0 + 304];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100216DF8()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1002174FC;
  }

  else
  {
    v2 = sub_100216F0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100216F0C()
{
  *(v0 + 488) = *(v0 + 480);
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  (*(v2 + 16))(v1, *(v0 + 368) + OBJC_IVAR____TtC10seserviced14SECUserSession__bypassGDPR, v3);
  UserDefaultBacked.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 528))
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Bypassing GDPR preentment because of User defaults", v7, 2u);
    }

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    *(v0 + 496) = v10;
    v11 = String._bridgeToObjectiveC()();
    *(v0 + 504) = v11;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1002171DC;
    v12 = swift_continuation_init();
    *(v0 + 360) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 304) = _NSConcreteStackBlock;
    *(v0 + 312) = 1107296256;
    *(v0 + 320) = sub_1001E95B0;
    *(v0 + 328) = &unk_1004CBC78;
    *(v0 + 336) = v12;
    [v10 presentGDPRinAppWithBundleId:v11 completion:v0 + 304];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1002171DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 512) = v1;
  if (v1)
  {

    v2 = sub_100217574;
  }

  else
  {
    v2 = sub_1002172F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002172F4()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 440);

  *(v0 + 520) = sub_1002194C0();

  return _swift_task_switch(sub_10021736C, v2, 0);
}

uint64_t sub_10021736C()
{
  v1 = v0[61];
  v2 = sub_10035E904();
  if (v1)
  {
  }

  else
  {
    v3 = v2;
    v4 = v0[65];
    v5 = v0[55];
    v7 = v0[50];
    v6 = v0[51];
    v8 = swift_task_alloc();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = v7;
    v8[5] = v6;
    v8[6] = v4;
    NSManagedObjectContext.performAndWait<A>(_:)();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100217484()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002174FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100217574(uint64_t a1)
{
  v2 = v1[63];
  v3 = v1[62];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1002175F4(uint64_t a1, uint64_t a2)
{
  **(*(*sub_1000752B0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_100217650(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&qword_1005073F8, &qword_10040F958);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = off_10050A868;

  os_unfair_lock_lock(v13 + 6);
  v14 = *&v13[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v13 + 6);

  if (v14)
  {
    v25 = *(v14 + 72);
    (*(v9 + 16))(v12, a1, v8);
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    (*(v9 + 32))(v16 + v15, v12, v8);
    *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
    aBlock[4] = sub_10021AA30;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100080830;
    aBlock[3] = &unk_1004CBF98;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_10021C09C(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
    sub_1000BA838();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v28 + 8))(v4, v2);
    (*(v26 + 8))(v7, v27);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_10051B2C8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error while acquiring assertion: presentmentIntentManager is nil", v22, 2u);
    }

    sub_10009591C();
    v23 = swift_allocError();
    *v24 = 6;
    aBlock[0] = v23;
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100217B48()
{
  sub_100306B98(0x100000000);
  sub_100068FC4(&qword_1005073F8, &qword_10040F958);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100217D2C()
{
  v1 = v0[3];
  if (!(v1 >> 62))
  {
    return 0x6C756D4564726143;
  }

  if (v1 >> 62 == 1)
  {
    return 0x6465726957;
  }

  if (v1 == 0x8000000000000000 && (v0[2] | *v0 | v0[1]) == 0)
  {
    return 0x656D6567616E614DLL;
  }

  return 0x64696C61766E49;
}

uint64_t sub_100217DD8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  CredentialInternal.identifier.getter();
  CredentialInternal.identifier.getter();
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

id sub_10021810C()
{
  v1 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__receivedHciData;
  sub_100068FC4(&qword_100507400, &qword_10040F960);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__rfFieldChanged;
  sub_100068FC4(&qword_100507408, &qword_10040F968);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *&v0[v3] = v4;
  v5 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__authExpired;
  sub_100068FC4(&unk_100507410, &qword_10040F970);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *&v0[v5] = v6;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SECUserSession.NearFieldEventDelegate();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_100218208(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SECUserSession.NearFieldEventDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for SECUserSession(uint64_t a1)
{
  result = qword_1005072F8;
  if (!qword_1005072F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100218554(uint64_t a1)
{
  sub_1002186C8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_100218718(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002186C8()
{
  if (!qword_100506E70)
  {
    v0 = type metadata accessor for UserDefaultBacked();
    if (!v1)
    {
      atomic_store(v0, &qword_100506E70);
    }
  }
}

void sub_100218718(uint64_t a1)
{
  if (!qword_100507310)
  {
    _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100507310);
    }
  }
}

unint64_t sub_100218794(void *a1)
{
  v1 = a1[3];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1002187B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 32))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 24) >> 50) >> 12) | (4 * ((*(a1 + 24) >> 50) & 0xC00 | ((*(a1 + 24) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100218830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1002188B4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[3] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[3] = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0x8000000000000000;
  }

  return result;
}

__n128 sub_100218900@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 112);
  v18 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 96);
  v19 = v3;
  v20 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 128);
  v4 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 48);
  v14 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 32);
  v15 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 80);
  v16 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 64);
  v17 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo + 16);
  v12 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
  v13 = v6;
  sub_10012E344(&v12, v11);
  v7 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 128) = v20;
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002189AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10012E598;

  return sub_10020253C();
}

uint64_t sub_100218A38(uint64_t a1, uint64_t a2)
{
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_1001F9BE8(0, 0, v7, &unk_10040F890, v9);
}

uint64_t sub_100218B58(char a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10012E598;

  return sub_100206FE8(a1, a2);
}

uint64_t sub_100218BFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000C288C;

  return sub_1002ADDD8();
}

uint64_t sub_100218C8C(uint64_t a1)
{
  v2 = sub_100068FC4(&unk_100507458, &qword_10040FA18);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  v5 = *(a1 + 8);
  *v4 = **a1;
  v9[0] = v4;
  v7 = &v4[*(v6 + 56)];
  sub_1000938D4(v5, v7, &unk_100506F00, &qword_10040BE90);
  v9[1] = v7;
  sub_100218D6C(v9);
  return sub_100075768(v4, &unk_100507458, &qword_10040FA18);
}

atomic_uchar *sub_100218D6C(uint64_t a1)
{
  v3 = sub_100068FC4(&unk_100507458, &qword_10040FA18);
  v4 = __chkstk_darwin(v3);
  v6 = v12 - v5;
  result = (*(**(v1 + 32) + 136))(v4);
  v8 = 0;
  atomic_compare_exchange_strong(result, &v8, 1u);
  if (!v8)
  {
    v9 = *(v1 + 16);
    v10 = *(a1 + 8);
    *v6 = **a1;
    v12[0] = v6;
    v11 = &v6[*(v3 + 48)];
    sub_1000938D4(v10, v11, &unk_100506F00, &qword_10040BE90);
    v12[1] = v11;
    v9(v12);
    return sub_100075768(v6, &unk_100507458, &qword_10040FA18);
  }

  return result;
}

id sub_100218E94(id result, void *a2, void *a3, unint64_t a4)
{
  v4 = a4;
  v5 = result;
  if (a4 >> 62)
  {
    if (a4 >> 62 != 1)
    {
      return result;
    }

    v9 = a2;
    v4 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v9 = a2;
  }

  v6 = a3;
  v7 = v4;
  v8 = v5;

  return v9;
}

uint64_t sub_100218F50(uint64_t a1)
{
  v2 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100218FD8(void *a1, void *a2, void *a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    if (a4 >> 62 != 1)
    {
      return;
    }

    v6 = a3;
    v4 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v6 = a3;
  }
}

uint64_t sub_100219058(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_100206DEC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100219120()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100219158(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_100204558(a1, a2, v6, v7, v8);
}

uint64_t sub_10021921C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100219254(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100505218, &qword_10040CA90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002192C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v28 = a7;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v27 - v21;
  if (!(a4 >> 62))
  {
    if (a8 >> 62)
    {
LABEL_18:
      v24 = 0;
      return v24 & 1;
    }

    goto LABEL_6;
  }

  if (a4 >> 62 == 1)
  {
    if (a8 >> 62 != 1)
    {
      goto LABEL_18;
    }

LABEL_6:
    v23 = v20;
    CredentialInternal.identifier.getter();
    CredentialInternal.identifier.getter();
    v24 = static UUID.== infix(_:_:)();
    v25 = *(v16 + 8);
    v25(v18, v23);
    v25(v22, v23);
    return v24 & 1;
  }

  if (a3 | a2 | a1 || a4 != 0x8000000000000000)
  {
    if (a8 >> 62 != 2 || a8 != 0x8000000000000000 || a5 != 8 || v28 | a6)
    {
      goto LABEL_18;
    }
  }

  else if (a8 >> 62 != 2 || v28 | a6 | a5 || a8 != 0x8000000000000000)
  {
    goto LABEL_18;
  }

  v24 = 1;
  return v24 & 1;
}

unint64_t sub_1002194C0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  v2 = [objc_opt_self() flowWithBundle:v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 contentVersion];

    result = v4;
    if ((v4 & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return 0;
}

uint64_t sub_100219590()
{
  v1[80] = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1[81] = v2;
  v1[82] = *(v2 - 8);
  v1[83] = swift_task_alloc();

  return _swift_task_switch(sub_10021965C, 0, 0);
}

uint64_t sub_10021965C(uint64_t a1, uint64_t a2)
{
  sub_1001FF418((v2 + 464));
  *(v2 + 672) = 0;
  v3 = *(v2 + 472);
  *(v2 + 680) = *(v2 + 464);
  *(v2 + 688) = v3;

  sub_10012E450(v2 + 464);
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v4 = qword_10051B858;
  *(v2 + 696) = qword_10051B858;

  return _swift_task_switch(sub_10021976C, v4, 0);
}

uint64_t sub_10021976C()
{
  v1 = v0[84];
  v0[88] = sub_1001362D4(v0[85], v0[86]);
  v0[89] = v1;
  if (v1)
  {
    v2 = sub_10021A250;
  }

  else
  {
    v2 = sub_100219804;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100219804()
{
  v48 = v0;
  v1 = *(v0 + 704);
  if (!v1)
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 640);
    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B2C8);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v14 = 136315394;
      v15 = UUID.uuidString.getter();
      v17 = sub_1002FFA0C(v15, v16, v47);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1002FFA0C(0xD000000000000023, 0x8000000100467B20, v47);
      _os_log_impl(&_mh_execute_header, v12, v13, "Session %s %s: App Entity does not exist", v14, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v18 = 6;
    swift_willThrow();
    goto LABEL_21;
  }

  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  (*(v3 + 16))(v2, *(v0 + 640) + OBJC_IVAR____TtC10seserviced14SECUserSession__bypassGDPR, v4);
  UserDefaultBacked.wrappedValue.getter();
  (*(v3 + 8))(v2, v4);
  if (*(v0 + 209))
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10051B2C8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Bypassing GDPR preentment because of User defaults", v8, 2u);
    }

    goto LABEL_21;
  }

  v19 = [v1 gdprVersionShown];
  if (v19 >= sub_1002194C0())
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 640);
    v23 = type metadata accessor for Logger();
    sub_1000958E4(v23, qword_10051B2C8);
    v24 = v22;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 640);
      v28 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = UUID.uuidString.getter();
      v31 = sub_1002FFA0C(v29, v30, v47);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = v27 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
      *(v0 + 80) = *(v27 + OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo);
      v33 = *(v32 + 64);
      v35 = *(v32 + 16);
      v34 = *(v32 + 32);
      *(v0 + 128) = *(v32 + 48);
      *(v0 + 144) = v33;
      *(v0 + 96) = v35;
      *(v0 + 112) = v34;
      v37 = *(v32 + 96);
      v36 = *(v32 + 112);
      v38 = *(v32 + 80);
      *(v0 + 208) = *(v32 + 128);
      *(v0 + 176) = v37;
      *(v0 + 192) = v36;
      *(v0 + 160) = v38;
      sub_10012E344(v0 + 80, v0 + 216);
      v39 = sub_10013F33C();
      v41 = v40;
      sub_10012E3A0(v0 + 80);
      v42 = sub_1002FFA0C(v39, v41, v47);

      *(v28 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v25, v26, "Session %s: GDPR sheet has been displayed for %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_21;
  }

  v20 = *(v0 + 712);
  v21 = [objc_opt_self() sharedInstance];
  *(v0 + 720) = v21;
  sub_1001FF418((v0 + 352));
  *(v0 + 728) = v20;
  if (v20)
  {

LABEL_21:

    v43 = *(v0 + 8);

    return v43();
  }

  sub_10012E450(v0 + 352);
  v45 = String._bridgeToObjectiveC()();
  *(v0 + 736) = v45;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100219ED0;
  v46 = swift_continuation_init();
  *(v0 + 632) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
  *(v0 + 608) = v46;
  *(v0 + 576) = _NSConcreteStackBlock;
  *(v0 + 584) = 1107296256;
  *(v0 + 592) = sub_1001E95B0;
  *(v0 + 600) = &unk_1004CBC50;
  [v21 presentGDPRinAppWithBundleId:v45 completion:v0 + 576];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100219ED0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 744) = v1;
  if (v1)
  {

    v2 = sub_10021A2BC;
  }

  else
  {
    v2 = sub_100219FE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100219FE8()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 696);

  *(v0 + 752) = sub_1002194C0();

  return _swift_task_switch(sub_10021A064, v2, 0);
}

uint64_t sub_10021A064()
{
  v1 = v0[91];
  v2 = sub_10035E904();
  if (v1)
  {

    v0[95] = v1;
    v9 = sub_10021A1E4;
  }

  else
  {
    v3 = v2;
    v4 = v0[94];
    v5 = v0[87];
    v6 = v0[86];
    v7 = v0[85];
    v8 = swift_task_alloc();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = v7;
    v8[5] = v6;
    v8[6] = v4;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v9 = sub_10021A178;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10021A178()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021A1E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021A250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021A2BC(uint64_t a1)
{
  v2 = v1[92];
  v3 = v1[90];
  v4 = v1[88];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_10021A3B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10021A494(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *v6;
  v8 = v6[1];
  a2(*a1, a1[1]);
  *a1 = v7;
  a1[1] = v8;
  return a3(v7, v8);
}

uint64_t sub_10021A508(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_1002069C0(a1, v4, v5, v7, v6);
}

uint64_t sub_10021A5C8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10006A178(*(v0 + 40), *(v0 + 48));
  sub_10006A178(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10021A618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10012E598;

  return sub_100206384(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10021A6FC(uint64_t a1)
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10021A750(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_100205D6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10021A818()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10021A868(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_100205710(a1, v4, v5, v6, v7, v8);
}

void sub_10021A930(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_10021A988()
{
  v1 = sub_100068FC4(&qword_1005073F8, &qword_10040F958);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10021AA30()
{
  sub_100068FC4(&qword_1005073F8, &qword_10040F958);

  return sub_100217B48();
}

uint64_t sub_10021AAC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10021AAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__receivedHciData;
  swift_beginAccess();
  v10 = *(v4 + v9);

  os_unfair_lock_lock((v10 + 32));
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  sub_100113B54(v11, v12);
  os_unfair_lock_unlock((v10 + 32));

  if (v11)
  {
    v15[0] = a1;
    v15[1] = a2;
    v14[0] = a3;
    v14[1] = a4;
    v11(v15, v14);
    return sub_1000B2A4C(v11, v12);
  }

  return result;
}

uint64_t sub_10021ABA8(char a1)
{
  v3 = OBJC_IVAR____TtCC10seserviced14SECUserSession22NearFieldEventDelegate__rfFieldChanged;
  swift_beginAccess();
  v4 = *(v1 + v3);

  os_unfair_lock_lock((v4 + 32));
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  sub_100113B54(v6, v5);
  os_unfair_lock_unlock((v4 + 32));

  if (v6)
  {
    v8 = a1 & 1;
    v6(&v8);
    return sub_1000B2A4C(v6, v5);
  }

  return result;
}

uint64_t sub_10021AC4C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10021AC9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000C288C;

  return sub_100216174(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10021AD64()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10021AE68(uint64_t a1)
{
  type metadata accessor for UUID();
  v3 = v1[3];
  v11 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_100214678(a1, v11, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10021AFE8(void *a1)
{
  v2 = *(v1 + 16);
  if (*v2 == *a1 && v2[1] == a1[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10021B038()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10021B11C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10012E598;

  return sub_100211358(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_10021B258()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10021B304(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v8);
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10012E598;

  return sub_100212BC8(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_10021B450()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10021B550(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10012E598;

  return sub_100209694(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

uint64_t sub_10021B704()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021B744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_100210C78(a1, v4, v5, v6);
}

uint64_t sub_10021B820()
{
  v1 = sub_100068FC4(&qword_100506F78, &qword_10040F300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10021B8B4(char a1, uint64_t a2)
{
  sub_100068FC4(&qword_100506F78, &qword_10040F300);

  return sub_100210A14(a1, a2);
}

uint64_t sub_10021B940()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021B980()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021B9E8(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6[0] = &v5;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_10021BA28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10021BA70()
{
  v11 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v1 = *(v11 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v12 = v2 | v7;
  v9 = (v8 + *(v6 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v1 + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, ((((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v12 | 7);
}