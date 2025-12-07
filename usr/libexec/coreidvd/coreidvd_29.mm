uint64_t sub_100307880()
{
  v1 = *(v0 + 232);
  if (!v1)
  {
    (*(*(v0 + 264) + 104))(*(v0 + 272), enum case for DIPError.Code.proofingSessionIDUnavailable(_:), *(v0 + 256));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_5;
  }

  if (*(v0 + 433))
  {
    (*(*(v0 + 264) + 104))(*(v0 + 272), enum case for DIPError.Code.targetUnavailable(_:), *(v0 + 256));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_5:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v4 + 54);
  sub_1000318FC(&v4[4], v0 + 16);
  os_unfair_lock_unlock(v4 + 54);
  v5 = *(v0 + 240);
  v6 = *(v0 + 224);
  *(v0 + 328) = *(v0 + 72);

  sub_100031918(v0 + 16);
  v7 = swift_allocObject();
  *(v0 + 336) = v7;
  v7[2] = v6;
  v7[3] = v1;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v0 + 344) = v8;
  *(v8 + 16) = sub_1003086D8;
  *(v8 + 24) = v7;

  v9 = swift_task_alloc();
  *(v0 + 352) = v9;
  *v9 = v0;
  v9[1] = sub_100307C4C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 432, sub_100308730, v8, &type metadata for Bool);
}

uint64_t sub_100307C4C()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_100307F30;
  }

  else
  {

    *(v2 + 434) = *(v2 + 432);
    v3 = sub_100307D8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100307D8C(uint64_t a1)
{
  if (*(v1 + 434) != 1)
  {

    v8 = *(v1 + 8);
    goto LABEL_5;
  }

  v2 = *(v1 + 360);
  v3 = *(v1 + 216);
  *(v1 + 368) = sub_1006146AC();
  v4 = sub_10058CB08(v3);
  *(v1 + 376) = v5;
  *(v1 + 384) = v7;
  if (v2)
  {

    v8 = *(v1 + 8);
LABEL_5:

    return v8();
  }

  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = swift_task_alloc();
  *(v1 + 392) = v14;
  *v14 = v1;
  v14[1] = sub_100307FD8;
  v15 = *(v1 + 320);

  return sub_100612ED4(v15, v10, v11, v12, v13);
}

uint64_t sub_100307F30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100307FD8()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_100308430;
  }

  else
  {
    v2 = sub_100308144;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100308144()
{
  v1 = v0[40];
  v2 = *(v1 + *(v0[39] + 48));
  if (v2 && *(v2 + 16))
  {
    v3 = sub_10003ADCC(0xD00000000000001BLL, 0x800000010070D2F0);
    if (v4)
    {
      v5 = v0[37];
      v6 = v0[38];
      v7 = v0[35];
      v8 = v0[36];
      (*(v8 + 16))(v5, *(v2 + 56) + *(v8 + 72) * v3, v7);
      (*(v8 + 32))(v6, v5, v7);
      v9 = IdentityProofingUnorderedUIElement.title.getter();
      v11 = v10;
      v0[51] = v10;
      v12 = IdentityProofingUnorderedUIElement.messages.getter();
      if (v12)
      {
        if (v12[2])
        {
          v14 = v12[4];
          v13 = v12[5];

LABEL_13:
          v0[52] = v13;
          v17 = v0[29];
          v18 = swift_task_alloc();
          v0[53] = v18;
          *v18 = v0;
          v18[1] = sub_1003084BC;
          v19 = v0[28];

          return sub_1002CD7D4(v9, v11, v14, v13, v19, v17, 0);
        }
      }

      v14 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    v1 = v0[40];
  }

  (*(v0[33] + 104))(v0[34], enum case for DIPError.Code.attributeConfigUnavailable(_:), v0[32]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1001A1FAC(v1);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100308430()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003084BC()
{

  return _swift_task_switch(sub_1003085F0, 0, 0);
}

uint64_t sub_1003085F0()
{
  v1 = v0[40];
  (*(v0[36] + 8))(v0[38], v0[35]);
  sub_1001A1FAC(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1003086A0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003086F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_100308730@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_100308788(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x726F727265;
  }

  v4 = 1919968359;
  if ((a1 != 1919968359 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v4 = 0x72466E6163536469;
    if ((a1 != 0xD00000000000001ALL || 0x80000001006FAE90 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (a1 == 0xD000000000000022 && 0x800000010070D4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 0xD000000000000013;
      }

      v4 = 0x61426E6163536469;
      if ((a1 != 0xD000000000000019 || 0x80000001006FAE70 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (a1 == 0xD000000000000021 && 0x800000010070D460 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 0xD000000000000012;
        }

        v4 = 0x6569666C6573;
        if ((a1 != 0x6569666C6573 || a2 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v4 = 0x65646F4368747561;
          if ((a1 != 0x65646F6368747561 || a2 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (a1 == 0xD000000000000010 && 0x800000010070D420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0xD000000000000010;
            }

            if (a1 == 0xD000000000000016 && 0x800000010070D3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0xD00000000000001ELL;
            }

            if (a1 == 0x776569766572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0xD000000000000010;
            }

            if (a1 == 0xD000000000000014 && 0x800000010070D3A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0xD000000000000012;
            }

            v4 = 0x7972746572;
            if ((a1 != 0x7972746572 || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v4 = 0x416F547964616572;
              if ((a1 != 0x416F547964616572 || a2 != 0xEC00000044496464) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                v4 = 8024685;
                if ((a1 != 8024685 || a2 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v4 = 1885956195;
                  if ((a1 != 1885956195 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    return 0x726F727265;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t sub_100308C34(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v3[21] = *v2;
  return _swift_task_switch(sub_100308C5C, 0, 0);
}

uint64_t sub_100308C5C()
{
  v1 = v0[21];
  v2 = String._bridgeToObjectiveC()();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100308D94;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_10084A470, &unk_1006DD7D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_10080D918;
  v0[14] = v3;
  [v1 generateDeviceEncryptionKeyForCredential:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100308D94(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 176);
  if (*(v2 + 48))
  {
    swift_willThrow();

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 144);

    v9 = *(v4 + 8);

    return v9(v8);
  }
}

uint64_t sub_100308EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a1;
  v4[20] = a2;
  v5 = *v3;
  v4[21] = a3;
  v4[22] = v5;
  return _swift_task_switch(sub_100308F20, 0, 0);
}

uint64_t sub_100308F20()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = String._bridgeToObjectiveC()();
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10030905C;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_10084A460, &qword_1006EA1B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100672B24;
  v0[13] = &unk_10080D8F0;
  v0[14] = v4;
  [v2 generatePresentmentKeysForCredential:v3 numKeys:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10030905C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 184);
  if (*(v2 + 48))
  {
    swift_willThrow();

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 144);

    v9 = *(v4 + 8);

    return v9(v8);
  }
}

uint64_t sub_1003091E0@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v2 = *v1;
  v3 = sub_100007224(&qword_100840E20, &qword_1006DD978);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100007224(&qword_100840E28, &unk_1006DD980);
  __chkstk_darwin(v7);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);

  AsyncStream.init(_:bufferingPolicy:_:)();

  *(swift_allocObject() + 16) = v2;
  sub_1000BA30C(&qword_100840E30, &qword_100840E28, &unk_1006DD980, &protocol conformance descriptor for AsyncStream<A>);
  return AsyncCompactMapSequence.init(_:transform:)();
}

uint64_t sub_100309428(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10030944C, 0, 0);
}

uint64_t sub_10030944C()
{
  v1 = v0[2];
  *v1 = sub_100310AE4(v0[3]);
  v1[1] = v2;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003094B0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100309574, 0, 0);
}

uint64_t sub_100309574()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_100309624;
  v7 = v0[7];
  v6 = v0[8];

  return sub_100189D38(v7, v6);
}

uint64_t sub_100309624(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10030977C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10030977C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_errorRetain();
  sub_10030F5B4(v0 + 16);
  sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100309908(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100309A10, 0, 0);
}

uint64_t sub_100309A10(uint64_t a1)
{
  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  *(v1 + 120) = v3;
  *v3 = v1;
  v3[1] = sub_100309ABC;
  v4 = *(v1 + 112);

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_100309ABC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100309FDC;
  }

  else
  {
    v2 = sub_100309BD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100309BD0(uint64_t a1)
{
  v31 = v1;
  v2 = v1[13];
  v3 = v1[14];
  defaultLogger()();
  sub_1001A2050(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[13];
  if (v6)
  {
    v8 = v1[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    v11 = (v7 + *(v8 + 64));
    if (v11[1])
    {
      v12 = *v11;
      v13 = v11[1];
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7104878;
    }

    v17 = v1[13];
    v29 = v1[11];
    v19 = v1[8];
    v18 = v1[9];

    sub_1001A1FAC(v17);
    v20 = sub_100141FE4(v12, v13, &v30);

    *(v9 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "proofingMinWatchOSVersion version parsed from static workflow: %s", v9, 0xCu);
    sub_10000BB78(v10);

    (*(v18 + 8))(v29, v19);
  }

  else
  {
    v14 = v1[11];
    v15 = v1[8];
    v16 = v1[9];

    sub_1001A1FAC(v7);
    (*(v16 + 8))(v14, v15);
  }

  v21 = v1[14];
  v22 = v1[12];
  v1[17] = *(v1[7] + 144);
  v23 = (v21 + *(v22 + 64));
  v24 = *v23;
  v25 = v23[1];

  v26 = swift_task_alloc();
  v1[18] = v26;
  *v26 = v1;
  v26[1] = sub_100309E28;
  v27 = v1[6];

  return sub_1002D1F80(v24, v25, v27);
}

uint64_t sub_100309E28(char a1)
{
  v2 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 16) = v1;

  return _swift_task_switch(sub_100309F48, 0, 0);
}

uint64_t sub_100309F48()
{
  sub_1001A1FAC(*(v0 + 112));
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100309FDC(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[7];
  v4 = v1[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v3 + 8))(v2, v4);
  v1[19] = *(v5 + 144);

  v6 = swift_task_alloc();
  v1[20] = v6;
  *v6 = v1;
  v6[1] = sub_10030A0D8;
  v7 = v1[6];

  return sub_1002D1F80(0, 0, v7);
}

uint64_t sub_10030A0D8(char a1)
{
  v2 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_10030A1F8, 0, 0);
}

uint64_t sub_10030A1F8()
{

  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10030A28C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10030A358, 0, 0);
}

uint64_t sub_10030A358()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10030A3EC;

  return sub_1004B1CC8();
}

uint64_t sub_10030A3EC(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return _swift_task_switch(sub_10030A4F0, 0, 0);
}

uint64_t sub_10030A4F0(uint64_t a1)
{
  v25 = v1;
  if (*(v1 + 72))
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v1 + 32);
    v5 = *(v1 + 40);
    v7 = *(v1 + 24);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x800000010070DB60, &v24);
      _os_log_impl(&_mh_execute_header, v2, v3, "%s - no watch connection or passes, returning 0", v8, 0xCu);
      sub_10000BB78(v9);
    }

    (*(v6 + 8))(v5, v7);
    v10 = 0;
  }

  else
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v1 + 64);
      v14 = *(v1 + 48);
      v15 = *(v1 + 24);
      v16 = *(v1 + 32);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_100141FE4(0xD00000000000001ALL, 0x800000010070DB60, &v24);
      *(v17 + 12) = 2048;
      *(v17 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s - total watch identity passes = %ld", v17, 0x16u);
      sub_10000BB78(v18);

      (*(v16 + 8))(v14, v15);
    }

    else
    {
      v19 = *(v1 + 48);
      v20 = *(v1 + 24);
      v21 = *(v1 + 32);

      (*(v21 + 8))(v19, v20);
    }

    v10 = *(v1 + 64);
  }

  v22 = *(v1 + 8);

  return v22(v10);
}

uint64_t sub_10030A7A8()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10030A868, 0, 0);
}

uint64_t sub_10030A868()
{
  v1 = *(v0[2] + 56);
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = IdentityProofingConfiguration.country.getter();
    v0[7] = v4;
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v7 = IdentityProofingConfiguration.state.getter();
      v0[8] = v8;
      if (v8)
      {
        v9 = v7;
        v10 = v8;
        if (IdentityProofingConfiguration.documentType.getter() == 3)
        {
          v11 = 0x6E6F736D697263;
        }

        else
        {
          v11 = 0x61746E6567616DLL;
        }

        v12 = swift_task_alloc();
        v0[9] = v12;
        *v12 = v0;
        v12[1] = sub_10030AC48;

        return sub_1002BD1C0(v11, 0xE700000000000000, v5, v6, v9, v10, 0, 0);
      }

      v15 = v0[4];
      v14 = v0[5];
      v16 = v0[3];

      (*(v15 + 104))(v14, enum case for DIPError.Code.idStateUnavailable(_:), v16);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    else
    {
      (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[3]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.proofingConfigurationUnavailable(_:), v0[3]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10030AC48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_10030AE28;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_10030ADB8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10030ADB8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_10030AE28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030AE94()
{
  v1[7] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10030AF54, 0, 0);
}

uint64_t sub_10030AF54()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_10030AFE8;

  return sub_1001B3B80();
}

uint64_t sub_10030AFE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10030B154, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_10030B154()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_errorRetain();
  sub_10030F5B4(v0 + 16);
  sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10030B2D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10030B398, 0, 0);
}

uint64_t sub_10030B398(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchBiomeFedStatsUI: Attempting to fetch the biome fed stats UI", v4, 2u);
  }

  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[7] = v8;
  *v8 = v1;
  v8[1] = sub_10030B4D8;
  v9 = v1[2];

  return sub_1001AE980(v9);
}

uint64_t sub_10030B4D8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10030B5F0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10030B6B0, 0, 0);
}

uint64_t sub_10030B6B0(uint64_t a1)
{
  IdentityProofingConfiguration.documentType.getter();
  v2 = IdentityDocumentType.rawValue.getter();
  if (v2 == IdentityDocumentType.rawValue.getter())
  {
    v3 = swift_task_alloc();
    v1[12] = v3;
    *v3 = v1;
    v3[1] = sub_10030B7D4;

    return sub_1001DE548();
  }

  else
  {
    v5 = swift_task_alloc();
    v1[14] = v5;
    *v5 = v1;
    v5[1] = sub_10030B92C;
    v6 = v1[7];

    return sub_1001AC7E8(v6);
  }
}

uint64_t sub_10030B7D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10030BA84, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10030B92C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10030BC10, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10030BA84()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_errorRetain();
  sub_10030F5B4(v0 + 16);
  sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10030BC10()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_errorRetain();
  sub_10030F5B4(v0 + 16);
  sub_10000BE18(v0 + 16, &qword_10083D0A0, &qword_1006DAFC0);
  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10030BD9C(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10030BE60, 0, 0);
}

uint64_t sub_10030BE60()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10030BF00;
  v2 = *(v0 + 72);
  v3 = *(v0 + 16);

  return sub_1001CD638(v3, v2);
}

uint64_t sub_10030BF00()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10030C03C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10030C03C()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10030C194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10030C25C, 0, 0);
}

uint64_t sub_10030C25C()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10030C2FC;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_1001F7198(v5, v4, v2, v3);
}

uint64_t sub_10030C2FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10030C454, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10030C454()
{
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10030C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[375] = v4;
  v5[374] = a4;
  v5[373] = a3;
  v5[372] = a2;
  v5[371] = a1;
  v5[376] = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v5[377] = swift_task_alloc();

  return _swift_task_switch(sub_10030C650, 0, 0);
}

uint64_t sub_10030C650()
{
  v1 = swift_task_alloc();
  v0[378] = v1;
  *v1 = v0;
  v1[1] = sub_10030C6F8;
  v2 = v0[374];
  v3 = v0[373];
  v4 = v0[372];
  v5 = v0[371];

  return sub_1001DAB98(v5, v4, v3, v2);
}

uint64_t sub_10030C6F8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10030C844, 0, 0);
  }
}

uint64_t sub_10030C844(uint64_t a1)
{
  v1[379] = *(v1[375] + 256);
  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v1[380] = v3;
  *v3 = v1;
  v3[1] = sub_10030C8F8;
  v4 = v1[377];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_10030C8F8()
{
  *(*v1 + 3048) = v0;

  if (v0)
  {
    v2 = sub_10030D3F4;
  }

  else
  {
    v2 = sub_10030CA0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10030CA0C()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = v0[381];
  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], (v0 + 328));
  v3 = v2 + 54;
  if (v1)
  {

    os_unfair_lock_unlock(v3);
  }

  else
  {
    os_unfair_lock_unlock(v3);
    sub_100020260((v0 + 328), (v0 + 353));
    sub_100031918((v0 + 328));
    v0[382] = *sub_10000BA08(v0 + 353, v0[356]);
    v4 = swift_task_alloc();
    v0[383] = v4;
    *v4 = v0;
    v4[1] = sub_10030CB54;

    sub_10050886C((v0 + 2));
  }
}

uint64_t sub_10030CB54()
{
  v2 = *v1;
  *(*v1 + 3072) = v0;

  if (v0)
  {
    v3 = *(v2 + 3056);
    v4 = sub_10030D020;
  }

  else
  {
    v4 = sub_10030CC70;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10030CC70()
{
  memcpy(v0 + 222, v0 + 6, 0x1A1uLL);
  sub_1000AA624((v0 + 222), (v0 + 275));
  sub_1000F2758((v0 + 2));
  memcpy(v0 + 169, v0 + 222, 0x1A1uLL);
  nullsub_7();
  memcpy(v0 + 63, v0 + 169, 0x1A1uLL);
  v1 = v0[379];
  sub_10000BB78(v0 + 353);
  swift_beginAccess();
  sub_10000BBC4(v1 + 144, (v0 + 358), &qword_10083D0A0, &qword_1006DAFC0);
  v2 = v0[361];
  if (v2)
  {
    v3 = sub_10000BA08(v0 + 358, v0[361]);
    v4 = *(v2 - 8);
    v5 = swift_task_alloc();
    (*(v4 + 16))(v5, v3, v2);
    sub_10000BE18((v0 + 358), &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for Workflow(0);
    (*(v4 + 8))(v5, v2);
  }

  else
  {
    sub_10000BE18((v0 + 358), &qword_10083D0A0, &qword_1006DAFC0);
  }

  sub_10000BBC4(v1 + 144, (v0 + 363), &qword_10083D0A0, &qword_1006DAFC0);
  v6 = v0[366];
  if (v6)
  {
    v7 = sub_10000BA08(v0 + 363, v0[366]);
    v8 = *(v6 - 8);
    v9 = swift_task_alloc();
    (*(v8 + 16))(v9, v7, v6);
    sub_10000BE18((v0 + 363), &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for Workflow(0);
    (*(v8 + 8))(v9, v6);
  }

  else
  {
    sub_10000BE18((v0 + 363), &qword_10083D0A0, &qword_1006DAFC0);
  }

  memcpy(v0 + 116, v0 + 63, 0x1A1uLL);
  if (sub_10010F2A8((v0 + 116)) != 1)
  {
    sub_10000BE18((v0 + 63), &qword_10083AAA0, &unk_1006D8E00);
  }

  v10 = v0[377];
  v11 = objc_allocWithZone(type metadata accessor for IdentityProofingNFCConfig());
  v12 = IdentityProofingNFCConfig.init(minimumReadTimeThreshold:readRetryInterval:readyCheckEnabled:isChipIntegrityCheckFailureTerminal:isDeviceCrossCheckEnabled:)();
  sub_1001A1FAC(v10);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_10030D020()
{

  return _swift_task_switch(sub_10030D088, 0, 0);
}

uint64_t sub_10030D088()
{
  sub_10010ED70((v0 + 63));
  v1 = v0[379];
  sub_10000BB78(v0 + 353);
  swift_beginAccess();
  sub_10000BBC4(v1 + 144, (v0 + 358), &qword_10083D0A0, &qword_1006DAFC0);
  v2 = v0[361];
  if (v2)
  {
    v3 = sub_10000BA08(v0 + 358, v0[361]);
    v4 = *(v2 - 8);
    v5 = swift_task_alloc();
    (*(v4 + 16))(v5, v3, v2);
    sub_10000BE18((v0 + 358), &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for Workflow(0);
    (*(v4 + 8))(v5, v2);
  }

  else
  {
    sub_10000BE18((v0 + 358), &qword_10083D0A0, &qword_1006DAFC0);
  }

  sub_10000BBC4(v1 + 144, (v0 + 363), &qword_10083D0A0, &qword_1006DAFC0);
  v6 = v0[366];
  if (v6)
  {
    v7 = sub_10000BA08(v0 + 363, v0[366]);
    v8 = *(v6 - 8);
    v9 = swift_task_alloc();
    (*(v8 + 16))(v9, v7, v6);
    sub_10000BE18((v0 + 363), &qword_10083D0A0, &qword_1006DAFC0);
    type metadata accessor for Workflow(0);
    (*(v8 + 8))(v9, v6);
  }

  else
  {
    sub_10000BE18((v0 + 363), &qword_10083D0A0, &qword_1006DAFC0);
  }

  memcpy(v0 + 116, v0 + 63, 0x1A1uLL);
  if (sub_10010F2A8((v0 + 116)) != 1)
  {
    sub_10000BE18((v0 + 63), &qword_10083AAA0, &unk_1006D8E00);
  }

  v10 = v0[377];
  v11 = objc_allocWithZone(type metadata accessor for IdentityProofingNFCConfig());
  v12 = IdentityProofingNFCConfig.init(minimumReadTimeThreshold:readRetryInterval:readyCheckEnabled:isChipIntegrityCheckFailureTerminal:isDeviceCrossCheckEnabled:)();
  sub_1001A1FAC(v10);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_10030D3F4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10030D458(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v47 = a5;
  v10 = type metadata accessor for DIPError.Code();
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = IdentityProofingConfiguration.documentType.getter();
  v14 = sub_10057847C(v13, a2, a3, a4);
  if (v5)
  {
    return;
  }

  v43[1] = a1;
  v15 = v46;
  v16 = v47;
  v45 = v12;
  if (!v14)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v19._countAndFlagsBits = 0xD000000000000030;
    v19._object = 0x800000010070D800;
    String.append(_:)(v19);
    v50 = IdentityProofingConfiguration.documentType.getter();
    _print_unlocked<A, B>(_:_:)();
    v20._countAndFlagsBits = 0x6669746E65646920;
    v20._object = 0xEC00000020726569;
    String.append(_:)(v20);
    v21._countAndFlagsBits = a2;
    v21._object = a3;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0x72617420646E6120;
    v22._object = 0xEC00000020746567;
    String.append(_:)(v22);
    v23._countAndFlagsBits = IdentityTarget.debugDescription.getter();
    String.append(_:)(v23);

    (*(v15 + 104))(v45, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v43[0] = 0;
  v44 = v14;
  [v14 proofingActionStatus];
  v17 = IdentityProofingActionStatus.init(rawValue:)();
  if (v18)
  {
    (*(v15 + 104))(v45, enum case for DIPError.Code.invalidProofingActionStatus(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v24 = v17;
  v25 = IdentityProofingActionStatus.rawValue.getter();
  if (v25 != IdentityProofingActionStatus.rawValue.getter())
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v36._countAndFlagsBits = 0xD000000000000044;
    v36._object = 0x800000010070D870;
    String.append(_:)(v36);
    v50 = v24;
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 0x6E6974697845202ELL;
    v37._object = 0xEC0000002E2E2E67;
    String.append(_:)(v37);
    (*(v15 + 104))(v45, enum case for DIPError.Code.invalidProofingActionStatus(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_12:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v26 = [v44 proofingSessionID];
  if (!v26)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v38._countAndFlagsBits = 0xD000000000000030;
    v38._object = 0x800000010070D800;
    String.append(_:)(v38);
    v50 = IdentityProofingConfiguration.documentType.getter();
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 0x6669746E65646920;
    v39._object = 0xEC00000020726569;
    String.append(_:)(v39);
    v40._countAndFlagsBits = a2;
    v40._object = a3;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 0x72617420646E6120;
    v41._object = 0xEC00000020746567;
    String.append(_:)(v41);
    v42._countAndFlagsBits = IdentityTarget.debugDescription.getter();
    String.append(_:)(v42);

    (*(v15 + 104))(v45, enum case for DIPError.Code.internalError(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_12;
  }

  v27 = v26;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *v16 = v24;
  v16[1] = v28;
  v16[2] = v30;
  v31 = [v44 learnMoreURLString];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
  }

  else
  {

    v33 = 0;
    v35 = 0;
  }

  v16[3] = v33;
  v16[4] = v35;
}

uint64_t sub_10030DBCC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for IdentityDocumentType.Category();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_10030DD8C, 0, 0);
}

uint64_t sub_10030DD8C(uint64_t a1)
{
  v54 = v1;
  v3 = *(v1 + 120);
  v2 = *(v1 + 128);
  v4 = *(v1 + 112);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v6 = IdentityProofingConfiguration.state.getter();
    if (!v7)
    {
      (*(*(v1 + 96) + 104))(*(v1 + 104), enum case for DIPError.Code.idStateUnavailable(_:), *(v1 + 88));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
LABEL_18:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      goto LABEL_19;
    }
  }

  else
  {
    if (v5 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v14 = *(v1 + 120);
      v13 = *(v1 + 128);
      v15 = *(v1 + 112);
      (*(*(v1 + 96) + 104))(*(v1 + 104), enum case for DIPError.Code.idTypeUnavailable(_:), *(v1 + 88));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v14 + 8))(v13, v15);
LABEL_19:

      v22 = *(v1 + 8);
LABEL_20:

      return v22();
    }

    v6 = IdentityProofingConfiguration.country.getter();
    if (!v7)
    {
      (*(*(v1 + 96) + 104))(*(v1 + 104), enum case for DIPError.Code.idCountryUnavailable(_:), *(v1 + 88));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      goto LABEL_18;
    }
  }

  v8 = v6;
  v9 = v7;
  if (*(v1 + 32) == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = IdentityProofingConfiguration.documentType.getter();
  sub_1002E0DD4(v8, v9, v10, 0, 0, v11, v52);
  v12 = *v52;
  v49 = v53;
  v50 = *v52;
  *(v1 + 152) = v53;
  *(v1 + 136) = v12;

  if (!*(&v50 + 1))
  {
    v23 = *(v1 + 24);

    defaultLogger()();

    v24 = v23;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v1 + 64);
    v28 = *(v1 + 72);
    v30 = *(v1 + 56);
    if (v27)
    {
      v51 = *(v1 + 72);
      v31 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      *v31 = 136315394;
      v32 = sub_100141FE4(v8, v9, v52);

      *(v31 + 4) = v32;
      *(v31 + 12) = 2080;
      IdentityProofingConfiguration.documentType.getter();
      v33 = IdentityDocumentType.description.getter();
      v35 = sub_100141FE4(v33, v34, v52);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "IdentityProofingFlow could not find proofing data for %s for documentType: %s", v31, 0x16u);
      swift_arrayDestroy();

      (*(v29 + 8))(v51, v30);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    v22 = *(v1 + 8);
    goto LABEL_20;
  }

  if (*(&v49 + 1))
  {
    v16 = sub_1002E3FA4(v50, *(&v50 + 1));
    *(v1 + 168) = v17;
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      v20 = swift_task_alloc();
      *(v1 + 176) = v20;
      *v20 = v1;
      v20[1] = sub_10030E6C4;

      return sub_1002A2314(v18, v19, v49, *(&v49 + 1));
    }

    else
    {
      defaultLogger()();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v1 + 80);
      v43 = *(v1 + 56);
      v44 = *(v1 + 64);
      if (v41)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Unable to clean up PII token, identifier doesnt exist", v45, 2u);
      }

      (*(v44 + 8))(v42, v43);
      v46 = *(v1 + 160);
      v47 = swift_task_alloc();
      *(v1 + 184) = v47;
      *v47 = v1;
      v47[1] = sub_10030E854;
      v48 = *(v1 + 152);

      return sub_1002A6638(v48, v46);
    }
  }

  else
  {
    v36 = *(v1 + 144);
    *(v1 + 192) = *(*(v1 + 40) + 120);
    v37 = swift_task_alloc();
    *(v1 + 200) = v37;
    *v37 = v1;
    v37[1] = sub_10030EA14;
    v38 = *(v1 + 136);

    return sub_100295264(v38, v36);
  }
}

uint64_t sub_10030E6C4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[20];
  v4 = swift_task_alloc();
  v1[23] = v4;
  *v4 = v2;
  v4[1] = sub_10030E854;
  v5 = v1[19];

  return sub_1002A6638(v5, v3);
}

uint64_t sub_10030E854()
{

  return _swift_task_switch(sub_10030E96C, 0, 0);
}

uint64_t sub_10030E96C()
{
  v1 = v0[18];
  v0[24] = *(v0[5] + 120);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10030EA14;
  v3 = v0[17];

  return sub_100295264(v3, v1);
}

uint64_t sub_10030EA14()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10030ED10;
  }

  else
  {

    v2 = sub_10030EB30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030EB30()
{
  if ((*(v0 + 32) & 2) != 0)
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 48);
    v3 = type metadata accessor for TaskPriority();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v1;

    sub_1003E653C(0, 0, v2, &unk_1006DC378, v4);
  }

  v5 = type metadata accessor for IdentityManagementSessionDelegate();
  v6 = [objc_opt_self() defaultCenter];
  v7 = String._bridgeToObjectiveC()();
  *(v0 + 16) = v5;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v6 postNotificationName:v7 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10030ED10()
{

  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10030EEBC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10030EF50;

  return sub_1002DDE50();
}

uint64_t sub_10030EF50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10030F084, 0, 0);
  }
}

uint64_t sub_10030F084()
{
  v0[2] = _swiftEmptyArrayStorage;
  v1 = IdentityProofingStatus.activeConfigurations.getter();
  v0[6] = v1;
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v0[7] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = v0[5];

    IdentityProofingStatus.availability.getter();
    v8 = objc_allocWithZone(type metadata accessor for IdentityProofingStatus());
    v9 = IdentityProofingStatus.init(activeConfigurations:availability:)();

    v10 = v0[1];

    return v10(v9);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[7] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v0[8] = _swiftEmptyArrayStorage;
  v3 = v0[6];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;
  v0[9] = v4;
  v0[10] = 1;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_10030F230;

  return sub_10059D940(v5);
}

uint64_t sub_10030F230(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {

    v4 = sub_10030F548;
  }

  else
  {
    v4 = sub_10030F358;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_10030F358()
{
  v1 = *(v0 + 96);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  if (v3 == v5)
  {
    v6 = *(v0 + 40);

    IdentityProofingStatus.availability.getter();
    v7 = objc_allocWithZone(type metadata accessor for IdentityProofingStatus());
    v8 = IdentityProofingStatus.init(activeConfigurations:availability:)();

    v9 = *(v0 + 8);

    v9(v8);
    return;
  }

  v10 = *(v0 + 80);
  *(v0 + 64) = *(v0 + 16);
  v11 = *(v0 + 48);
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      __break(1u);
      return;
    }

    v12 = *(v11 + 8 * v10 + 32);
  }

  v13 = v12;
  *(v0 + 72) = v12;
  *(v0 + 80) = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = swift_task_alloc();
  *(v0 + 88) = v14;
  *v14 = v0;
  v14[1] = sub_10030F230;

  sub_10059D940(v13);
}

uint64_t sub_10030F548()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10030F5B4(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.PropertyKey();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003C9C0(_swiftEmptyArrayStorage);
  sub_10000BBC4(a1, &v38, &qword_10083D0A0, &qword_1006DAFC0);
  if (v39)
  {
    sub_10001F358(&v38, v41);
    v8 = *(v4 + 104);
    v8(v6, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v3);
    v9 = sub_10000BA08(v41, v42);
    v10 = *v9;
    v11 = v9[1];
    v39 = &type metadata for String;
    v40 = &protocol witness table for String;
    *&v38 = v10;
    *(&v38 + 1) = v11;
    sub_10001F358(&v38, v35);

    LOBYTE(v11) = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = v7;
    v12 = sub_10001F370(v35, v36);
    __chkstk_darwin(v12);
    v14 = (&v35[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    sub_100658FF4(*v14, v14[1], v6, v11, v37);
    v16 = *(v4 + 8);
    v16(v6, v3);
    sub_10000BB78(v35);
    v17 = v37[0];
    v8(v6, enum case for DIPError.PropertyKey.inoProviderID(_:), v3);
    v18 = sub_10000BA08(v41, v42);
    v19 = v18[6];
    v20 = v18[7];
    v39 = &type metadata for String;
    v40 = &protocol witness table for String;
    *&v38 = v19;
    *(&v38 + 1) = v20;
    sub_10001F358(&v38, v35);

    LOBYTE(v20) = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = v17;
    v21 = sub_10001F370(v35, v36);
    __chkstk_darwin(v21);
    v23 = (&v35[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    sub_100658FF4(*v23, v23[1], v6, v20, v37);
    v16(v6, v3);
    sub_10000BB78(v35);
    v7 = v37[0];
  }

  else
  {
    sub_10000BE18(&v38, &qword_10083D0A0, &qword_1006DAFC0);
    v25 = *(v1 + 256);
    swift_beginAccess();
    sub_10000BBC4(v25 + 144, &v38, &qword_10083D0A0, &qword_1006DAFC0);
    if (!v39)
    {
      sub_10000BE18(&v38, &qword_10083D0A0, &qword_1006DAFC0);
      return v7;
    }

    sub_10001F358(&v38, v41);
    (*(v4 + 104))(v6, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v3);
    v26 = sub_10000BA08(v41, v42);
    v27 = *v26;
    v28 = v26[1];
    v39 = &type metadata for String;
    v40 = &protocol witness table for String;
    *&v38 = v27;
    *(&v38 + 1) = v28;
    sub_10001F358(&v38, v35);

    LOBYTE(v28) = swift_isUniquelyReferenced_nonNull_native();
    v34 = v7;
    v29 = sub_10001F370(v35, v36);
    __chkstk_darwin(v29);
    v31 = (&v35[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    sub_100658FF4(*v31, v31[1], v6, v28, &v34);
    (*(v4 + 8))(v6, v3);
    sub_10000BB78(v35);
    v7 = v34;
  }

  sub_10000BB78(v41);
  return v7;
}

uint64_t sub_10030FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  return _swift_task_switch(sub_10030FB44, 0, 0);
}

uint64_t sub_10030FB44()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[31];
  v3 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v0[34] = v0[9];

  sub_100031918((v0 + 2));
  v6 = swift_allocObject();
  v0[35] = v6;
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v2;
  v6[5] = v3;
  v7 = swift_allocObject();
  v0[36] = v7;
  *(v7 + 16) = sub_10031587C;
  *(v7 + 24) = v6;
  v8 = v5;

  v9 = swift_task_alloc();
  v0[37] = v9;
  *v9 = v0;
  v9[1] = sub_10030FD20;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 27, sub_10031589C, v7, &type metadata for String);
}

uint64_t sub_10030FD20()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_100310054;
  }

  else
  {

    v4 = v2[28];
    v2[39] = v2[27];
    v2[40] = v4;
    v3 = sub_10030FE60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10030FE60()
{
  v0[41] = *(v0[33] + 152);

  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_10030FF0C;
  v3 = v0[39];
  v2 = v0[40];

  return sub_1002EED50(v3, v2);
}

uint64_t sub_10030FF0C()
{
  v2 = *v1;
  *(v2 + 344) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003100CC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100310054()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003100CC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100310138(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v57 = a1;
  v51 = a6;
  v52 = type metadata accessor for DIPError();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v54 = v11;
  v55 = v12;
  v13 = __chkstk_darwin(v11);
  v48 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v45 - v16;
  __chkstk_darwin(v15);
  v19 = v45 - v18;
  v20 = type metadata accessor for DIPError.Code();
  v53 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = IdentityProofingConfiguration.documentType.getter();
  if (a5 == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  v25 = v56;
  v26 = sub_10057847C(v23, a3, a4, v24);
  if (!v25)
  {
    v45[1] = a2;
    v46._countAndFlagsBits = a3;
    v46._object = a4;
    v47 = v19;
    v45[0] = v17;
    v56 = v20;
    v28 = v54;
    v27 = v55;
    if (v26)
    {
      v29 = v26;
      v30 = [v26 proofingSessionID];
      if (v30)
      {
        v46._object = v29;
        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46._countAndFlagsBits = v33;

        v34 = v47;
        defaultLogger()();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "Will set the proofing status to status pending and will show verification in progress UI", v37, 2u);
          v34 = v47;
        }

        (*(v27 + 8))(v34, v28);
        v38 = IdentityProofingActionStatus.rawValue.getter();
        object = v46._object;
        sub_10057F148(v38, 0);
        sub_1005783D4();
        v57 = v25;

        v43 = v51;
        countAndFlagsBits = v46._countAndFlagsBits;
        *v51 = v32;
        v43[1] = countAndFlagsBits;
      }

      else
      {
        (*(v53 + 104))(v22, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v56);
        sub_1000402AC(_swiftEmptyArrayStorage);
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      v58 = 0;
      v59 = 0xE000000000000000;
      _StringGuts.grow(_:)(94);
      v40._countAndFlagsBits = 0xD000000000000025;
      v40._object = 0x800000010070D8C0;
      String.append(_:)(v40);
      v60 = IdentityProofingConfiguration.documentType.getter();
      _print_unlocked<A, B>(_:_:)();
      v41._countAndFlagsBits = 0x6669746E65646920;
      v41._object = 0xEC00000020726569;
      String.append(_:)(v41);
      String.append(_:)(v46);
      v42._countAndFlagsBits = 0xD000000000000029;
      v42._object = 0x800000010070D8F0;
      String.append(_:)(v42);
      (*(v53 + 104))(v22, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v56);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1003109AC()
{

  sub_10000BB78((v0 + 160));
  sub_10026C59C(v0 + 200);

  return v0;
}

uint64_t sub_100310A8C()
{
  sub_1003109AC();

  return swift_deallocClassInstance();
}

unint64_t sub_100310AE4(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for DIPError.Code();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000BE18(v10, &qword_10083B020, &unk_1006D8ED0);
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "IdentityProofingFlow tried to map non-DIPError to message key", v20, 2u);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  (*(v12 + 32))(v17, v10, v11);
  (*(v12 + 16))(v15, v17, v11);
  v22 = (*(v12 + 88))(v15, v11);
  if (v22 == enum case for DIPError.Code.topekaWorkflowBlockedDeviceLimitReached(_:))
  {
    (*(v12 + 8))(v17, v11);
    return 0xD00000000000001BLL;
  }

  else
  {
    if (v22 != enum case for DIPError.Code.topekaWorkflowBlockedIDLimitReached(_:))
    {
      defaultLogger()();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "IdentityProofingFlow unsupported error code", v25, 2u);
      }

      (*(v2 + 8))(v7, v1);
      v26 = *(v12 + 8);
      v26(v17, v11);
      v26(v15, v11);
      return 0;
    }

    (*(v12 + 8))(v17, v11);
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_100310F54()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100311014, 0, 0);
}

uint64_t sub_100311014(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to fetch the livenessconsent optin UI", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_100126F60;

  return sub_1001B5E10();
}

uint64_t sub_100311160(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100311220, 0, 0);
}

uint64_t sub_100311220()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1003112D0;
  v2 = *(v0 + 16);

  return sub_100289E58(v2);
}

uint64_t sub_1003112D0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10031140C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10031140C()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100311564(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = type metadata accessor for IdentityProofingDisplayMessage();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  sub_100007224(&qword_10083BD28, &qword_1006DA240);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[43] = v4;
  v2[44] = *(v4 - 8);
  v2[45] = swift_task_alloc();
  v5 = type metadata accessor for IdentityDocumentType.Category();
  v2[46] = v5;
  v2[47] = *(v5 - 8);
  v2[48] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[49] = v6;
  v2[50] = *(v6 - 8);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();

  return _swift_task_switch(sub_1003117B8, 0, 0);
}

uint64_t sub_1003117B8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will attempt to fetch the extended review proofing data", v4, 2u);
  }

  v5 = v1[54];
  v6 = v1[49];
  v7 = v1[50];
  v9 = v1[47];
  v8 = v1[48];
  v10 = v1[46];

  v11 = *(v7 + 8);
  v1[55] = v11;
  v11(v5, v6);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v12 = (*(v9 + 88))(v8, v10);
  if (v12 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v13 = IdentityProofingConfiguration.state.getter();
    if (!v14)
    {
      (*(v1[44] + 104))(v1[45], enum case for DIPError.Code.idStateUnavailable(_:), v1[43]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
LABEL_15:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      goto LABEL_16;
    }
  }

  else
  {
    if (v12 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v23 = v1[47];
      v22 = v1[48];
      v24 = v1[46];
      (*(v1[44] + 104))(v1[45], enum case for DIPError.Code.idTypeUnavailable(_:), v1[43]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v23 + 8))(v22, v24);
LABEL_16:

      v27 = v1[1];

      return v27();
    }

    v13 = IdentityProofingConfiguration.country.getter();
    if (!v14)
    {
      (*(v1[44] + 104))(v1[45], enum case for DIPError.Code.idCountryUnavailable(_:), v1[43]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      goto LABEL_15;
    }
  }

  v15 = v14;
  v1[56] = v14;
  v1[57] = v13;
  v16 = v13;
  v17 = IdentityProofingConfiguration.targetDevice.getter();
  v1[58] = v17;
  if (v18)
  {
    v20 = v1[44];
    v19 = v1[45];
    v21 = v1[43];

    (*(v20 + 104))(v19, enum case for DIPError.Code.targetUnavailable(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_15;
  }

  v25 = v17;
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v26 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v26 + 54);
  sub_1000318FC(&v26[4], (v1 + 2));
  os_unfair_lock_unlock(v26 + 54);
  v29 = v1[34];
  v1[59] = v1[9];

  sub_100031918((v1 + 2));
  v30 = swift_allocObject();
  v1[60] = v30;
  v30[2] = v29;
  v30[3] = v16;
  v30[4] = v15;
  v30[5] = v25;
  v31 = swift_allocObject();
  v1[61] = v31;
  *(v31 + 16) = sub_10031578C;
  *(v31 + 24) = v30;
  v32 = v29;

  v33 = swift_task_alloc();
  v1[62] = v33;
  v34 = sub_100007224(&qword_100840E18, &unk_1006DD968);
  *v33 = v1;
  v33[1] = sub_100311ED4;

  return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 27, sub_1003157E4, v31, v34);
}

uint64_t sub_100311ED4()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {

    v3 = sub_10031224C;
  }

  else
  {

    *(v2 + 512) = *(v2 + 216);
    *(v2 + 528) = *(v2 + 232);
    *(v2 + 536) = *(v2 + 240);
    v3 = sub_10031203C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10031203C()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[37];
  v0[69] = *(v0[35] + 240);
  v4 = *(v3 + 56);
  v0[70] = v4;
  v0[71] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[72] = v5;
  *v5 = v0;
  v5[1] = sub_100312118;
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[58];
  v9 = v0[41];

  return sub_100199A40(v9, v7, v6, v8);
}

uint64_t sub_100312118()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_100312A38;
  }

  else
  {
    v2 = sub_100312430;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031224C()
{
  v1 = v0[44];

  (*(v1 + 104))(v0[45], enum case for DIPError.Code.internalError(_:), v0[43]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100312430()
{
  v39 = v0;
  v1 = v0[70];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[36];
  sub_10000BE18(v2, &qword_10083BD28, &qword_1006DA240);
  v1(v3, 0, 1, v4);
  sub_1001A2A40(v3, v2);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v36 = v0[55];
    v7 = v0[53];
    v8 = v0[49];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 136446210;
    v11 = IdentityProofingActionStatus.debugDescription.getter();
    v13 = sub_100141FE4(v11, v12, &v38);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "DISPLAY_MESSAGE exists for action status %{public}s", v9, 0xCu);
    sub_10000BB78(v10);

    v36(v7, v8);
  }

  else
  {
    v14 = v0[55];
    v15 = v0[53];
    v16 = v0[49];

    v14(v15, v16);
  }

  v17 = v0[40];
  v18 = v0[36];
  v19 = v0[37];
  sub_10000BBC4(v0[42], v17, &qword_10083BD28, &qword_1006DA240);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v21 = v0[44];
    v20 = v0[45];
    v22 = v0[43];
    v37 = v0[42];
    v23 = v0[40];

    sub_10000BE18(v23, &qword_10083BD28, &qword_1006DA240);
    v24 = *(v21 + 104);
    v24(v20, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v22);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v37, &qword_10083BD28, &qword_1006DA240);
    v25 = enum case for DIPError.Code.internalError(_:);
    v24(v20, enum case for DIPError.Code.internalError(_:), v22);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v24(v0[45], v25, v0[43]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v26 = v0[1];

    return v26();
  }

  else
  {
    v28 = v0[56];
    (*(v0[37] + 32))(v0[38], v0[40], v0[36]);
    v29 = swift_task_alloc();
    v0[74] = v29;
    *v29 = v0;
    v29[1] = sub_1003130A0;
    v30 = v0[68];
    v31 = v0[67];
    v32 = v0[64];
    v33 = v0[57];
    v34 = v0[38];
    v35 = v0[34];

    return sub_1001A08A0(v34, v35, v33, v28, v32, v31, v30);
  }
}

uint64_t sub_100312A38(uint64_t a1)
{
  v40 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v37 = v1[55];
    v4 = v1[52];
    v5 = v1[49];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136446210;
    v8 = IdentityProofingActionStatus.debugDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v39);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "DISPLAY_MESSAGE doesn't exist for action status %{public}s. Creating display message using fallback strings.", v6, 0xCu);
    sub_10000BB78(v7);

    v37(v4, v5);
  }

  else
  {
    v11 = v1[55];
    v12 = v1[52];
    v13 = v1[49];

    v11(v12, v13);
  }

  v14 = v1[70];
  v15 = v1[42];
  v16 = v1[39];
  v17 = v1[36];
  IdentityProofingDisplayMessage.init(title:messages:primaryButtonTitle:secondaryButtonTitle:learnMoreTitle:url:learnMoreURL:)();

  sub_10000BE18(v15, &qword_10083BD28, &qword_1006DA240);
  v14(v16, 0, 1, v17);
  sub_1001A2A40(v16, v15);
  v18 = v1[40];
  v19 = v1[36];
  v20 = v1[37];
  sub_10000BBC4(v1[42], v18, &qword_10083BD28, &qword_1006DA240);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v22 = v1[44];
    v21 = v1[45];
    v23 = v1[43];
    v38 = v1[42];
    v24 = v1[40];

    sub_10000BE18(v24, &qword_10083BD28, &qword_1006DA240);
    v25 = *(v22 + 104);
    v25(v21, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v23);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v38, &qword_10083BD28, &qword_1006DA240);
    v26 = enum case for DIPError.Code.internalError(_:);
    v25(v21, enum case for DIPError.Code.internalError(_:), v23);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v25(v1[45], v26, v1[43]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v27 = v1[1];

    return v27();
  }

  else
  {
    v29 = v1[56];
    (*(v1[37] + 32))(v1[38], v1[40], v1[36]);
    v30 = swift_task_alloc();
    v1[74] = v30;
    *v30 = v1;
    v30[1] = sub_1003130A0;
    v31 = v1[68];
    v32 = v1[67];
    v33 = v1[64];
    v34 = v1[57];
    v35 = v1[38];
    v36 = v1[34];

    return sub_1001A08A0(v35, v36, v34, v29, v33, v32, v31);
  }
}

uint64_t sub_1003130A0(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 256) = v1;
  *(v2 + 264) = a1;

  return _swift_task_switch(sub_1003131D8, 0, 0);
}

uint64_t sub_1003131D8()
{
  v1 = v0[42];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_10000BE18(v1, &qword_10083BD28, &qword_1006DA240);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully retrieved extended review display info", v4, 2u);
  }

  v5 = v0[55];
  v6 = v0[51];
  v7 = v0[49];
  v10 = v0[33];

  v5(v6, v7);

  v8 = v0[1];

  return v8(v10);
}

uint64_t sub_1003133A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 424) = a3;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v6 = type metadata accessor for DIPError.Code();
  *(v5 + 144) = v6;
  *(v5 + 152) = *(v6 - 8);
  *(v5 + 160) = swift_task_alloc();
  v7 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  *(v5 + 168) = v7;
  *(v5 + 176) = *(v7 - 8);
  *(v5 + 184) = swift_task_alloc();
  sub_100007224(&qword_10083DC18, &unk_1006DB720);
  *(v5 + 192) = swift_task_alloc();
  v8 = type metadata accessor for ProofingSession();
  *(v5 + 200) = v8;
  *(v5 + 208) = *(v8 - 8);
  *(v5 + 216) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v5 + 224) = v9;
  *(v5 + 232) = *(v9 - 8);
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_100313610, 0, 0);
}

uint64_t sub_100313610(uint64_t a1)
{
  v2 = v1[16];
  if (v2 == 1)
  {
    v6 = swift_task_alloc();
    v1[41] = v6;
    *v6 = v1;
    v6[1] = sub_10031454C;
    v7 = v1[24];
    v8 = v1[14];

    return sub_1002D7508(v7, v8);
  }

  else if (v2)
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v1[29];
    v12 = v1[30];
    v14 = v1[28];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Invalid consent type. Cannot save consent data", v15, 2u);
    }

    (*(v13 + 8))(v12, v14);

    v16 = v1[1];

    return v16();
  }

  else
  {
    v3 = swift_task_alloc();
    v1[37] = v3;
    *v3 = v1;
    v3[1] = sub_1003138C0;
    v4 = v1[14];

    return sub_1002A5E10(v4);
  }
}

uint64_t sub_1003138C0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_100313D18;
  }

  else
  {
    v2 = sub_1003139D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003139D4()
{
  v1 = *(v0 + 304);
  v2 = [objc_opt_self() standardUserDefaults];
  v3._countAndFlagsBits = static SharedInternalDefaultsKeys.injectFedStatsData.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    if (*(v0 + 424))
    {
      v5 = swift_task_alloc();
      *(v0 + 312) = v5;
      *v5 = v0;
      v5[1] = sub_1003140A4;
      v6 = *(v0 + 112);

      return sub_1002FAF68(1, v6);
    }

    goto LABEL_9;
  }

  if (!*(v0 + 424))
  {
LABEL_9:
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 280);
    v15 = *(v0 + 224);
    v16 = *(v0 + 232);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "IdentityProofingFlow the user has not given consent to share the biome data", v17, 2u);
    }

    (*(v16 + 8))(v14, v15);
    goto LABEL_12;
  }

  sub_1002A5038(*(v0 + 112));
  if (v1)
  {
    v8 = *(v0 + 288);
    v9 = *(v0 + 224);
    v10 = *(v0 + 232);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v10 + 8))(v8, v9);
LABEL_12:

    v18 = *(v0 + 8);

    return v18();
  }

  v19 = swift_task_alloc();
  *(v0 + 320) = v19;
  *v19 = v0;
  v19[1] = sub_1003142F8;
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);

  return sub_1001F52B4(v21, v20);
}

uint64_t sub_100313D18(uint64_t a1)
{
  v2 = *(v1 + 288);
  v3 = *(v1 + 224);
  v4 = *(v1 + 232);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v4 + 8))(v2, v3);
  v5 = [objc_opt_self() standardUserDefaults];
  v6._countAndFlagsBits = static SharedInternalDefaultsKeys.injectFedStatsData.getter();
  LOBYTE(v3) = NSUserDefaults.internalBool(forKey:)(v6);

  if (v3)
  {
    if (*(v1 + 424))
    {
      v7 = swift_task_alloc();
      *(v1 + 312) = v7;
      *v7 = v1;
      v7[1] = sub_1003140A4;
      v8 = *(v1 + 112);

      return sub_1002FAF68(1, v8);
    }

    goto LABEL_8;
  }

  if (!*(v1 + 424))
  {
LABEL_8:
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v1 + 280);
    v14 = *(v1 + 224);
    v15 = *(v1 + 232);
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "IdentityProofingFlow the user has not given consent to share the biome data", v16, 2u);
    }

    (*(v15 + 8))(v13, v14);

    v17 = *(v1 + 8);

    return v17();
  }

  sub_1002A5038(*(v1 + 112));
  v18 = swift_task_alloc();
  *(v1 + 320) = v18;
  *v18 = v1;
  v18[1] = sub_1003142F8;
  v20 = *(v1 + 112);
  v19 = *(v1 + 120);

  return sub_1001F52B4(v20, v19);
}

uint64_t sub_1003140A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003142F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10031454C()
{

  return _swift_task_switch(sub_100314648, 0, 0);
}

uint64_t sub_100314648()
{
  v69 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000BE18(v3, &qword_10083DC18, &unk_1006DB720);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 248);
    v8 = *(v0 + 224);
    v9 = *(v0 + 232);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v68 = v11;
      *v10 = 136315138;
      v12 = IdentityDocumentType.description.getter();
      v14 = sub_100141FE4(v12, v13, &v68);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Proofing Session doesn't exist for documentType: %s", v10, 0xCu);
      sub_10000BB78(v11);
    }

    (*(v9 + 8))(v7, v8);
    goto LABEL_11;
  }

  (*(v2 + 32))(*(v0 + 216), v3, v1);
  v15 = ProofingSession.proofingSessionID.getter();
  if (!v16)
  {
    v27 = *(v0 + 208);
    v26 = *(v0 + 216);
    v28 = *(v0 + 200);
    (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for DIPError.Code.proofingSessionDoesntExist(_:), *(v0 + 144));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v27 + 8))(v26, v28);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  if (*(v0 + 424))
  {
    *(v0 + 368) = ProofingSession.livenessManualReviewEncryptedMessage.getter();
    *(v0 + 376) = v19;
    if (v19 >> 60 == 15)
    {
      v21 = *(v0 + 208);
      v20 = *(v0 + 216);
      v22 = *(v0 + 200);
      v24 = *(v0 + 152);
      v23 = *(v0 + 160);
      v25 = *(v0 + 144);

      (*(v24 + 104))(v23, enum case for DIPError.Code.keyMaterialFailureForLivenessManualReview(_:), v25);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v21 + 8))(v20, v22);
LABEL_10:
      v29 = *(v0 + 288);
      v30 = *(v0 + 224);
      v31 = *(v0 + 232);
      defaultLogger()();
      DIPRecordError(_:message:log:)();

      (*(v31 + 8))(v29, v30);
LABEL_11:

      v32 = *(v0 + 8);

      return v32();
    }

    v67 = v17;
    defaultLogger()();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Successfully fetched the encrypted message for liveness manual review", v48, 2u);
    }

    v49 = *(v0 + 264);
    v51 = *(v0 + 224);
    v50 = *(v0 + 232);

    v52 = *(v50 + 8);
    v52(v49, v51);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000BA30C(&qword_100834E68, &qword_100833680, &qword_1006C4A20, &protocol conformance descriptor for HPKEEncryptedMessageWithKeyWrap<A>);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v66 = v52;

    defaultLogger()();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Successfully decoded the encrypted message", v55, 2u);
    }

    v56 = *(v0 + 256);
    v57 = *(v0 + 224);
    v59 = *(v0 + 176);
    v58 = *(v0 + 184);
    v60 = *(v0 + 168);
    v61 = *(v0 + 136);

    v66(v56, v57);
    *(v0 + 384) = *(v61 + 80);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    inited = swift_initStackObject();
    *(v0 + 392) = inited;
    *(inited + 16) = xmmword_1006BF520;
    *(inited + 32) = v67;
    *(inited + 40) = v18;
    sub_100007224(&qword_100840E10, &qword_1006DD948);
    v63 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v64 = swift_allocObject();
    *(v0 + 400) = v64;
    *(v64 + 16) = xmmword_1006BF520;
    (*(v59 + 16))(v64 + v63, v58, v60);

    v65 = swift_task_alloc();
    *(v0 + 408) = v65;
    *v65 = v0;
    v65[1] = sub_100315354;
    v44 = inited;
    v45 = 0;
    v43 = v64;
  }

  else
  {
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "User has not given consent to share the liveness data. Notifying the server...", v36, 2u);
    }

    v37 = *(v0 + 272);
    v38 = *(v0 + 224);
    v39 = *(v0 + 232);
    v40 = *(v0 + 136);

    (*(v39 + 8))(v37, v38);
    *(v0 + 336) = *(v40 + 80);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v41 = swift_initStackObject();
    *(v0 + 344) = v41;
    *(v41 + 16) = xmmword_1006BF520;
    *(v41 + 32) = v17;
    *(v41 + 40) = v18;

    v42 = swift_task_alloc();
    *(v0 + 352) = v42;
    *v42 = v0;
    v42[1] = sub_100314FA4;
    v43 = _swiftEmptyArrayStorage;
    v44 = v41;
    v45 = 1;
  }

  return sub_10031AEC0(v44, v45, v43);
}

uint64_t sub_100314FA4()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 344);

  swift_setDeallocating();
  sub_10004D860(v3 + 32);
  if (v0)
  {
    v4 = sub_100315204;
  }

  else
  {
    v4 = sub_1003150FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003150FC()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100315204()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[36];
  v2 = v0[28];
  v3 = v0[29];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100315354()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 392);

  swift_setDeallocating();
  sub_10004D860(v3 + 32);
  if (v0)
  {
    v4 = sub_100315608;
  }

  else
  {
    v4 = sub_1003154D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003154D0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  sub_10000BD94(v0[46], v0[47]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100315608()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  sub_10000BD94(v0[46], v0[47]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[36];
  v8 = v0[28];
  v9 = v0[29];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v9 + 8))(v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003157AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1003157E4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 16))(&v8, *a1);
  if (!v3)
  {
    v6 = v9;
    result = *&v8;
    v7 = v10;
    *a2 = v8;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_10031583C()
{

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10031589C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(v2 + 16))(v7, *a1);
  if (!v3)
  {
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1003158E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10031593C(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_100309428(a1, a2);
}

unsigned __int8 *sub_1003159F4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1._countAndFlagsBits = static DaemonInternalDefaultsKeys.simulateDynamicWorkflowDelay.getter();
  v2 = NSUserDefaults.internalString(forKey:)(v1);

  if (!v2.value._object)
  {
    return 0;
  }

  v4 = (v2.value._object >> 56) & 0xF;
  v5 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v2.value._object & 0x2000000000000000) != 0)
  {
    v6 = (v2.value._object >> 56) & 0xF;
  }

  else
  {
    v6 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((v2.value._object & 0x1000000000000000) != 0)
  {

    v8 = sub_1000FFDD8(v2.value._countAndFlagsBits, v2.value._object, 10);
    v28 = v27;
    swift_bridgeObjectRelease_n();
    if ((v28 & 1) == 0)
    {
LABEL_64:
      if (v8 >= 1)
      {
        return v8;
      }
    }

    return 0;
  }

  if ((v2.value._object & 0x2000000000000000) == 0)
  {
    if ((v2.value._countAndFlagsBits & 0x1000000000000000) != 0)
    {
      result = ((v2.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = result + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_62;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_62;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_62;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_54;
        }

        goto LABEL_62;
      }

      goto LABEL_74;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_62;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_62;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_54;
      }

LABEL_62:
      v8 = 0;
      LOBYTE(v4) = 1;
LABEL_63:
      v30 = v4;
      v26 = v4;

      if ((v26 & 1) == 0)
      {
        goto LABEL_64;
      }

      return 0;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = result + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_62;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_62;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_62;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v4) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v29[0] = v2.value._countAndFlagsBits;
  v29[1] = v2.value._object & 0xFFFFFFFFFFFFFFLL;
  if (LOBYTE(v2.value._countAndFlagsBits) != 43)
  {
    if (LOBYTE(v2.value._countAndFlagsBits) != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_73;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_75:
  __break(1u);
  return result;
}

id sub_100315D5C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(PKPassLibrary) init];
  v4 = [v3 passesOfType:1];
  sub_10001F8D4(0, &qword_100840E38, PKPass_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v45 = a2;
    v46 = v3;
    a2 = 0;
    v7 = 0;
    v3 = (v5 & 0xC000000000000001);
    v8 = v5 & 0xFFFFFFFFFFFFFF8;
    v9 = v5 + 32;
    v48 = v5 & 0xFFFFFFFFFFFFFF8;
    v49 = v5 & 0xC000000000000001;
    v50 = v5 + 32;
    v51 = v5;
    while (1)
    {
      if (v3)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v8 + 16))
        {
          goto LABEL_44;
        }

        v10 = *(v9 + 8 * v7);
      }

      v11 = v10;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13 && (v14 = v13, [v13 isIdentityPass]))
      {
        v15 = [v14 devicePrimaryContactlessPaymentApplication];
        if (v15)
        {
          v16 = v15;
          if ([v15 state] == 1)
          {
            result = [v16 subcredentials];
            if (!result)
            {
              __break(1u);
              return result;
            }

            v18 = result;
            sub_10001F8D4(0, &qword_100840E40, PKAppletSubcredential_ptr);
            sub_1003161B8();
            v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            v20 = v19 & 0xC000000000000001;
            if ((v19 & 0xC000000000000001) != 0)
            {
              v21 = __CocoaSet.startIndex.getter();
              v23 = v22;
              v24 = __CocoaSet.endIndex.getter();
              v26 = v25;
              v27 = static __CocoaSet.Index.== infix(_:_:)();
              sub_100316220(v24, v26, 1);
              v20 = v19 & 0xC000000000000001;
              if (v27)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v28 = 0;
              v29 = (v19 + 56);
              v21 = 1 << *(v19 + 32);
              v30 = (v21 + 63) >> 6;
              while (1)
              {
                v32 = *v29++;
                v31 = v32;
                if (v32)
                {
                  break;
                }

                v28 -= 64;
                if (!--v30)
                {
                  v23 = *(v19 + 36);
                  goto LABEL_27;
                }
              }

              v33 = __clz(__rbit64(v31));
              v23 = *(v19 + 36);
              if (v33 - v21 == v28)
              {
LABEL_27:
                sub_100316220(v21, v23, v20 != 0);

LABEL_37:
                a2 = 1;
                v9 = v50;
                v5 = v51;
                v8 = v48;
                v3 = v49;
                goto LABEL_5;
              }

              v21 = v33 - v28;
            }

            v34 = v20 != 0;
            sub_100511A24(v21, v23, v20 != 0, v19);
            v36 = v35;
            sub_100316220(v21, v23, v34);

            v37 = [v36 identifier];

            if (!v37)
            {

              goto LABEL_37;
            }

            v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v40 = v39;

            v41 = v38 == a1 && v40 == v45;
            v9 = v50;
            v5 = v51;
            if (v41)
            {

              goto LABEL_42;
            }

            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v8 = v48;
            v3 = v49;
            if (v42)
            {

LABEL_42:
              v44 = 256;
              v43 = 1;
              return (v44 | v43);
            }
          }

          else
          {
          }
        }

        else
        {
        }

        a2 = 1;
      }

      else
      {
      }

LABEL_5:
      if (v7 == i)
      {

        v43 = 0;
        if (a2)
        {
          v44 = 256;
        }

        else
        {
          v44 = 0;
        }

        return (v44 | v43);
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v43 = 0;
  v44 = 0;
  return (v44 | v43);
}

unint64_t sub_1003161B8()
{
  result = qword_100840E48;
  if (!qword_100840E48)
  {
    sub_10001F8D4(255, &qword_100840E40, PKAppletSubcredential_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100840E48);
  }

  return result;
}

uint64_t sub_100316220(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10031623C()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_10017ABC8();
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v3, v0);
  v18[3] = v4;
  v18[4] = &off_10080ADD0;
  v18[0] = v5;
  type metadata accessor for IdentityProofingCleanupProvider();
  v7 = swift_allocObject();
  v8 = sub_10001F370(v18, v4);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v16 = v4;
  v17 = &off_10080ADD0;
  *&v15 = v12;
  swift_unknownObjectWeakInit();
  if (qword_1008824A8)
  {
    v13 = *(qword_1008824A8 + 152);
  }

  else
  {
    v13 = 0;
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v15, v7 + 24);
  *(v7 + 64) = v6;
  sub_10000BB78(v18);
  return v7;
}

uint64_t sub_100316488()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_10017ABC8();
  static DispatchQoS.unspecified.getter();
  v25[0] = _swiftEmptyArrayStorage;
  sub_10031AE4C(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10031ABF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100832B50 != -1)
  {
    swift_once();
  }

  v7 = qword_100881E48;
  v8 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;

  v10 = sub_10031623C();
  type metadata accessor for IdentityProofingBackgroundActivityScheduler();
  v11 = swift_allocObject();
  *(v11 + 16) = 3600;
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v12 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  type metadata accessor for IdentityProofingUploadsHelper();
  v14 = swift_allocObject();
  type metadata accessor for NetworkMonitor();
  *(v14 + 16) = static NetworkMonitor.shared.getter();
  *(v14 + 24) = v13;
  v25[3] = v8;
  v25[4] = &off_10080ADD0;
  v25[0] = v9;
  type metadata accessor for IdentityProofingUpdateManager();
  v15 = swift_allocObject();
  v16 = sub_10001F370(v25, v8);
  __chkstk_darwin(v16);
  v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v23 = v8;
  v24 = &off_10080ADD0;
  *&v22 = v20;
  v15[2] = v6;
  v15[3] = v7;
  sub_10001F358(&v22, (v15 + 4));
  v15[9] = v10;
  v15[10] = v11;
  v15[11] = v14;
  result = sub_10000BB78(v25);
  qword_100882310 = v15;
  return result;
}

uint64_t sub_100316898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v9 + 272) = a6;
  *(v9 + 280) = v8;
  *(v9 + 673) = a8;
  *(v9 + 672) = a7;
  *(v9 + 256) = a4;
  *(v9 + 264) = a5;
  *(v9 + 240) = a2;
  *(v9 + 248) = a3;
  *(v9 + 232) = a1;
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 288) = v10;
  *(v9 + 296) = *(v10 - 8);
  *(v9 + 304) = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v9 + 328) = v11;
  *(v9 + 336) = *(v11 - 8);
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  v12 = type metadata accessor for ProofingSession.UploadAsset();
  *(v9 + 360) = v12;
  *(v9 + 368) = *(v12 - 8);
  *(v9 + 376) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v9 + 384) = v13;
  *(v9 + 392) = *(v13 - 8);
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  v14 = type metadata accessor for ProofingSession();
  *(v9 + 432) = v14;
  *(v9 + 440) = *(v14 - 8);
  *(v9 + 448) = swift_task_alloc();

  return _swift_task_switch(sub_100316B50, 0, 0);
}

uint64_t sub_100316B50()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], v0 + 16);
  os_unfair_lock_unlock(v1 + 54);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  *(v0 + 456) = *(v0 + 72);

  v10 = *(v0 + 264);
  v11 = *(v0 + 248);
  sub_100031918(v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 464) = v4;
  *(v4 + 16) = v11;
  *(v4 + 32) = v10;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  v5 = swift_allocObject();
  *(v0 + 472) = v5;
  *(v5 + 16) = sub_10031AE28;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  *(v0 + 480) = v6;
  *v6 = v0;
  v6[1] = sub_100316D40;
  v7 = *(v0 + 448);
  v8 = *(v0 + 432);

  return AsyncCoreDataContainer.performRead<A>(_:)(v7, sub_1000280B4, v5, v8);
}

uint64_t sub_100316D40()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_100317A74;
  }

  else
  {

    v2 = sub_100316E70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100316E70()
{
  v1 = ProofingSession.uploadAssets.getter();
  v2 = *(v1 + 16);
  if (!v2)
  {

    defaultLogger()();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 440);
    v9 = *(v0 + 448);
    v11 = *(v0 + 432);
    v13 = *(v0 + 392);
    v12 = *(v0 + 400);
    v14 = *(v0 + 384);
    if (v8)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No assets exists to be uploaded.", v15, 2u);
    }

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
    goto LABEL_7;
  }

  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "the asset count is %ld", v5, 0xCu);
  }

  else
  {
  }

  v17 = *(v0 + 424);
  v18 = *(v0 + 384);
  v19 = *(v0 + 392);
  v20 = *(v19 + 8);
  *(v0 + 496) = v20;
  *(v0 + 504) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v17, v18);

  v21 = ProofingSession.cloudKitUploadsMaxRetryCount.getter();
  sub_10002ADA0(v21);

  v22 = sub_100030844(v1);
  v24 = v23;

  *(v0 + 512) = v22;
  *(v0 + 520) = v24;
  v25 = ProofingSession.workflowID.getter();
  *(v0 + 528) = v25;
  *(v0 + 536) = v26;
  v27 = *(v0 + 448);
  if (!v26)
  {
    v39 = *(v0 + 440);
    v89 = *(v0 + 432);
    v40 = *(v0 + 296);
    v41 = *(v0 + 304);
    v42 = *(v0 + 288);

    (*(v40 + 104))(v41, enum case for DIPError.Code.workflowIdDoesNotExist(_:), v42);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v39 + 8))(v27, v89);
LABEL_17:
    swift_willThrow();

    v16 = *(v0 + 8);
    goto LABEL_18;
  }

  v28 = v26;
  v85 = v25;
  v29 = ProofingSession.proofingSessionID.getter();
  *(v0 + 544) = v29;
  *(v0 + 552) = v30;
  v31 = *(v0 + 448);
  if (!v30)
  {
    v43 = *(v0 + 440);
    v90 = *(v0 + 432);
    v44 = *(v0 + 296);
    v45 = *(v0 + 304);
    v46 = *(v0 + 288);

    (*(v44 + 104))(v45, enum case for DIPError.Code.proofingSessionIDUnavailable(_:), v46);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v43 + 8))(v31, v90);
    goto LABEL_17;
  }

  v32 = v29;
  v33 = v30;
  ProofingSession.documentType.getter();
  v34 = *(v0 + 448);
  if (!v35)
  {
    v86 = *(v0 + 440);
    v91 = *(v0 + 432);
    v47 = *(v0 + 296);
    v48 = *(v0 + 304);
    v49 = *(v0 + 288);

    (*(v47 + 104))(v48, enum case for DIPError.Code.unexpectedIDType(_:), v49);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v86 + 8))(v34, v91);
    goto LABEL_17;
  }

  v36 = IdentityDocumentType.init(documentTypeString:)();
  *(v0 + 560) = v36;
  if (ProofingSession.didNotifyOnUploadsCompletion.getter())
  {
    v37 = *(v0 + 440);
    v88 = *(v0 + 432);
    v93 = *(v0 + 448);
    v38 = *(v0 + 272);

    sub_1002A4CF0(v32, v33, v38);

    (*(v37 + 8))(v93, v88);
LABEL_7:

    v16 = *(v0 + 8);
LABEL_18:

    return v16();
  }

  v84 = v36;
  if (*(v24 + 16))
  {
    v51 = *(v0 + 672);

    v52 = swift_task_alloc();
    *(v0 + 616) = v52;
    *v52 = v0;
    v52[1] = sub_10031812C;
    v53 = *(v0 + 673);

    return sub_100318DD0(v84, v22, v51 & 1, v53, v32, v33);
  }

  else
  {
    v81 = v28;
    v82 = v32;
    v83 = v33;
    v54 = *(v0 + 368);

    v55 = *(v54 + 16);
    v54 += 16;
    v56 = v1 + ((*(v54 + 64) + 32) & ~*(v54 + 64));
    v87 = *(v54 + 56);
    v92 = v55;
    v57 = (v54 - 8);
    v58 = _swiftEmptyArrayStorage;
    do
    {
      v60 = *(v0 + 376);
      v61 = *(v0 + 360);
      v92(v60, v56, v61);
      v62 = ProofingSession.UploadAsset.recordUUID.getter();
      v64 = v63;
      (*v57)(v60, v61);
      if (v64)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1003C5110(0, *(v58 + 2) + 1, 1, v58);
        }

        v66 = *(v58 + 2);
        v65 = *(v58 + 3);
        if (v66 >= v65 >> 1)
        {
          v58 = sub_1003C5110((v65 > 1), v66 + 1, 1, v58);
        }

        *(v58 + 2) = v66 + 1;
        v59 = &v58[16 * v66];
        *(v59 + 4) = v62;
        *(v59 + 5) = v64;
      }

      *(v0 + 576) = v58;
      v56 += v87;
      --v2;
    }

    while (v2);
    v68 = *(v0 + 328);
    v67 = *(v0 + 336);
    v69 = *(v0 + 320);

    v70 = ProofingSession.country.getter();
    v72 = v71;
    *(v0 + 568) = v71;
    ProofingSession.createdAt.getter();
    v73 = *(v67 + 48);
    if (v73(v69, 1, v68) == 1)
    {
      v75 = *(v0 + 320);
      v74 = *(v0 + 328);
      Date.init()();
      v76 = v73(v75, 1, v74);
      v77 = v81;
      if (v76 != 1)
      {
        sub_10000BE18(*(v0 + 320), &unk_100849400, &unk_1006BFBB0);
      }
    }

    else
    {
      (*(*(v0 + 336) + 32))(*(v0 + 352), *(v0 + 320), *(v0 + 328));
      v77 = v81;
    }

    if (!v72)
    {
      v72 = 0xE000000000000000;
      v70 = 0;
    }

    v78 = *(v0 + 280);
    *(v0 + 584) = ProofingSession.manualCheckInterval.getter();
    sub_10000BA08((v78 + 32), *(v78 + 56));
    sub_100007224(&qword_10083E588, &unk_1006DDA70);
    v79 = swift_allocObject();
    *(v0 + 592) = v79;
    *(v79 + 16) = xmmword_1006BF520;
    strcpy((v79 + 32), "UPLOAD_RECORD");
    *(v79 + 46) = -4864;
    *(v79 + 48) = xmmword_1006DBF40;
    *(v79 + 64) = v58;
    *(v79 + 72) = 0;
    *(v79 + 80) = 0;
    *(v79 + 88) = 0;
    *(v79 + 96) = xmmword_1006DBF50;

    v80 = swift_task_alloc();
    *(v0 + 600) = v80;
    *v80 = v0;
    v80[1] = sub_100317B90;

    return sub_10022083C(v79, v70, v72, v85, v77, v82, v83, v84);
  }
}

uint64_t sub_100317A74()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100317B90()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_100317FCC;
  }

  else
  {
    v2 = sub_100317CE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100317CE8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Action Notification request complete, will attempt to delete the upload assets meta data.", v4, 2u);
  }

  v5 = v1[69];
  v6 = v1[68];
  v7 = v1[62];
  v22 = v1[56];
  v20 = v1[55];
  v21 = v1[54];
  v8 = v1[52];
  v9 = v1[48];
  v16 = v1[44];
  v17 = v1[73];
  v18 = v1[42];
  v19 = v1[41];
  v10 = v1[34];

  v7(v8, v9);

  sub_1002A4CF0(v6, v5, v10);

  v11 = type metadata accessor for IdentityManagementSessionDelegate();
  v12 = [objc_opt_self() defaultCenter];
  v13 = String._bridgeToObjectiveC()();
  v1[28] = v11;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v12 postNotificationName:v13 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  sub_1002FA39C(v16, v17);

  (*(v18 + 8))(v16, v19);
  (*(v20 + 8))(v22, v21);

  v14 = v1[1];

  return v14();
}

uint64_t sub_100317FCC()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v4 = v0[44];
  v5 = v0[41];
  v6 = v0[42];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10031812C()
{
  *(*v1 + 624) = v0;

  if (v0)
  {

    v2 = sub_100318A38;
  }

  else
  {
    v2 = sub_100318254;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100318254(uint64_t a1)
{
  v2 = v1[41];
  v3 = v1[42];
  v4 = v1[39];
  v5 = ProofingSession.country.getter();
  v7 = v6;
  v1[79] = v6;
  ProofingSession.createdAt.getter();
  v8 = *(v3 + 48);
  if (v8(v4, 1, v2) == 1)
  {
    v9 = v1[41];
    v10 = v1[39];
    Date.init()();
    if (v8(v10, 1, v9) != 1)
    {
      sub_10000BE18(v1[39], &unk_100849400, &unk_1006BFBB0);
    }
  }

  else
  {
    (*(v1[42] + 32))(v1[43], v1[39], v1[41]);
  }

  if (!v7)
  {
    v7 = 0xE000000000000000;
    v5 = 0;
  }

  v11 = v1[65];
  v12 = v1[35];
  v1[80] = ProofingSession.manualCheckInterval.getter();
  sub_10000BA08((v12 + 32), *(v12 + 56));
  sub_100007224(&qword_10083E588, &unk_1006DDA70);
  v13 = swift_allocObject();
  v1[81] = v13;
  *(v13 + 16) = xmmword_1006BF520;
  strcpy((v13 + 32), "UPLOAD_RECORD");
  *(v13 + 46) = -4864;
  *(v13 + 48) = xmmword_1006DBF40;
  *(v13 + 64) = v11;
  *(v13 + 72) = 0;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = xmmword_1006DBF50;

  v14 = swift_task_alloc();
  v1[82] = v14;
  *v14 = v1;
  v14[1] = sub_100318488;
  v15 = v1[70];
  v16 = v1[69];
  v17 = v1[68];
  v18 = v1[67];
  v19 = v1[66];

  return sub_10022083C(v13, v5, v7, v19, v18, v17, v16, v15);
}

uint64_t sub_100318488()
{
  *(*v1 + 664) = v0;

  if (v0)
  {
    v2 = sub_1003188CC;
  }

  else
  {
    v2 = sub_1003185E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003185E0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Action Notification request complete, will attempt to delete the upload assets meta data.", v4, 2u);
  }

  v5 = v1[69];
  v6 = v1[68];
  v7 = v1[62];
  v20 = v1[55];
  v21 = v1[54];
  v22 = v1[56];
  v8 = v1[51];
  v9 = v1[48];
  v16 = v1[43];
  v17 = v1[80];
  v18 = v1[42];
  v19 = v1[41];
  v10 = v1[34];

  v7(v8, v9);

  sub_1002A4CF0(v6, v5, v10);

  v11 = type metadata accessor for IdentityManagementSessionDelegate();
  v12 = [objc_opt_self() defaultCenter];
  v13 = String._bridgeToObjectiveC()();
  v1[27] = v11;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v12 postNotificationName:v13 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  sub_1002FA39C(v16, v17);

  (*(v18 + 8))(v16, v19);
  (*(v20 + 8))(v22, v21);

  v14 = v1[1];

  return v14();
}

uint64_t sub_1003188CC()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];

  (*(v5 + 8))(v4, v6);

  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100318A38()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];

  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_100318B6C(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v21 = a6;
  v12 = type metadata accessor for DIPError.Code();
  v20 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13)
  {
    v16 = sub_10057847C(a2, a1, v13, a3);
    if (v6)
    {
      return;
    }

    v17 = v16;
    if (!a5)
    {
LABEL_4:
      if (v17)
      {
LABEL_5:
        ProofingSession.init(_:)();
        return;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }
  }

  v18 = sub_1005792EC(a4, a5, a3);

  if (v6)
  {
    return;
  }

  if (v18)
  {
    goto LABEL_5;
  }

LABEL_9:
  (*(v20 + 104))(v15, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v12);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10031AE4C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_100318DD0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 64) = a2;
  *(v7 + 72) = a5;
  *(v7 + 169) = a4;
  *(v7 + 168) = a3;
  *(v7 + 56) = a1;
  v8 = type metadata accessor for Logger();
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100318EAC, 0, 0);
}

uint64_t sub_100318EAC()
{
  v1 = *(v0 + 169);
  v2 = *(v0 + 168);
  v3 = *(v0 + 64);
  v4 = *(*(v0 + 88) + 24);
  *(v0 + 128) = v4;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;

  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  *(v5 + 33) = v1;
  *(v5 + 40) = v0 + 16;
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_100318FEC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000003FLL, 0x80000001006FCEC0, sub_1000492B4, v5, &type metadata for () + 8);
}

uint64_t sub_100318FEC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100319238;
  }

  else
  {

    v2 = sub_100319108;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100319108()
{

  sub_10000BE18((v0 + 2), &qword_100834128, &unk_1006DDA60);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Asset uploads successfully complete", v3, 2u);
  }

  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];

  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100319238()
{

  sub_10000BE18((v0 + 2), &qword_100834128, &unk_1006DDA60);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "error has occurred during uploads. Will check if status update is required...", v3, 2u);
  }

  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1003193A0;
  v8 = v0[10];
  v9 = v0[9];
  v10 = v0[7];

  return sub_10031951C(v10, v9, v8);
}

uint64_t sub_1003193A0()
{

  return _swift_task_switch(sub_10031949C, 0, 0);
}

uint64_t sub_10031949C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10031951C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[59] = a3;
  v4[60] = v3;
  v4[57] = a1;
  v4[58] = a2;
  v5 = type metadata accessor for Logger();
  v4[61] = v5;
  v4[62] = *(v5 - 8);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v6 = type metadata accessor for ProofingSession();
  v4[67] = v6;
  v7 = *(v6 - 8);
  v4[68] = v7;
  v4[69] = *(v7 + 64);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();

  return _swift_task_switch(sub_1003196BC, 0, 0);
}

uint64_t sub_1003196BC()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  v0[75] = qword_100881E78;
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_1000318FC(&v2[4], (v0 + 2));
  os_unfair_lock_unlock(v2 + 54);
  v3 = v0[58];
  v4 = v0[59];
  v0[76] = v0[9];

  sub_100031918((v0 + 2));
  v5 = swift_allocObject();
  v0[77] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v0[78] = v6;
  *(v6 + 16) = sub_10031AC90;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  v0[79] = v7;
  *v7 = v0;
  v7[1] = sub_100319880;
  v8 = v0[74];
  v9 = v0[72];

  return AsyncCoreDataContainer.performRead<A>(_:)(v8, sub_10017F710, v6, v9);
}

uint64_t sub_100319880()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_100319D08;
  }

  else
  {

    v2 = sub_1003199B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003199B4()
{
  v31 = v0;
  v1 = v0[73];
  v2 = v0[68];
  v3 = v0[67];
  sub_1002A740C(v0[74], v1);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[73];
  if (v4 == 1)
  {
    sub_10000BE18(v0[73], &qword_10083DC18, &unk_1006DB720);
    defaultLogger()();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[74];
    v10 = v0[64];
    v12 = v0[61];
    v11 = v0[62];
    if (v8)
    {
      v29 = v0[74];
      v14 = v0[58];
      v13 = v0[59];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100141FE4(v14, v13, &v30);
      _os_log_impl(&_mh_execute_header, v6, v7, "Proofing session doesn't exist for %s", v15, 0xCu);
      sub_10000BB78(v16);

      (*(v11 + 8))(v10, v12);
      v17 = v29;
    }

    else
    {

      (*(v11 + 8))(v10, v12);
      v17 = v9;
    }

    sub_10000BE18(v17, &qword_10083DC18, &unk_1006DB720);

    v28 = v0[1];

    return v28();
  }

  else
  {
    v18 = v0[71];
    v19 = v0[68];
    v20 = v0[67];
    v21 = v0[60];
    v22 = *(v19 + 32);
    v0[81] = v22;
    v0[82] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v22(v18, v5, v20);
    v0[83] = *(v21 + 88);

    v23 = ProofingSession.totalUploadAssetsFileSizeInBytes.getter();
    v24 = ProofingSession.canUploadOnExpensiveNetwork.getter();
    v25 = swift_task_alloc();
    v0[84] = v25;
    *v25 = v0;
    v25[1] = sub_100319F4C;
    v26 = v0[57];

    return sub_1002C7430(v26, v23, v24 & 1);
  }
}

uint64_t sub_100319D08()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[62];
    v15 = v0[63];
    v4 = v0[61];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "received an error while updaing the proofing action status %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[62];
    v10 = v0[63];
    v12 = v0[61];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100319F4C(char a1)
{
  *(*v1 + 720) = a1;

  return _swift_task_switch(sub_10031A06C, 0, 0);
}

void sub_10031A06C(uint64_t a1)
{
  if (*(v1 + 720))
  {
    v2 = *(v1 + 640);
    v3 = *(*(v1 + 600) + 16);
    os_unfair_lock_lock(v3 + 54);
    sub_100031B5C(&v3[4], v1 + 216);
    os_unfair_lock_unlock(v3 + 54);
    if (!v2)
    {
      v16 = *(v1 + 648);
      v17 = *(v1 + 568);
      v18 = *(v1 + 560);
      v19 = *(v1 + 544);
      v20 = *(v1 + 536);
      *(v1 + 680) = *(v1 + 272);

      sub_100031918(v1 + 216);
      (*(v19 + 16))(v18, v17, v20);
      v21 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v22 = swift_allocObject();
      *(v1 + 688) = v22;
      v16(v22 + v21, v18, v20);
      v23 = swift_allocObject();
      *(v1 + 696) = v23;
      *(v23 + 16) = sub_10031AD6C;
      *(v23 + 24) = v22;

      v24 = swift_task_alloc();
      *(v1 + 704) = v24;
      *v24 = v1;
      v24[1] = sub_10031A3D4;

      AsyncCoreDataContainer.performWrite<A>(_:)(v24, sub_10017F710, v23, &type metadata for () + 8);
    }
  }

  else
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v1 + 592);
    v8 = *(v1 + 568);
    v9 = *(v1 + 544);
    v10 = *(v1 + 536);
    v11 = *(v1 + 520);
    v13 = *(v1 + 488);
    v12 = *(v1 + 496);
    if (v6)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No update needed as the device is not waiting for wifi to upload the documents", v14, 2u);
    }

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
    sub_10000BE18(v7, &qword_10083DC18, &unk_1006DB720);

    v15 = *(v1 + 8);

    v15();
  }
}

uint64_t sub_10031A3D4()
{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = sub_10031A748;
  }

  else
  {

    v2 = sub_10031A508;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031A508(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully updated the proofing action status to wait for wifi", v4, 2u);
  }

  v5 = v1[74];
  v6 = v1[71];
  v7 = v1[68];
  v8 = v1[67];
  v9 = v1[66];
  v10 = v1[61];
  v11 = v1[62];

  (*(v11 + 8))(v9, v10);
  v12 = type metadata accessor for IdentityManagementSessionDelegate();
  v13 = [objc_opt_self() defaultCenter];
  v14 = String._bridgeToObjectiveC()();
  v1[56] = v12;
  sub_100007224(&qword_10083D698, &unk_1006DB6F0);
  [v13 postNotificationName:v14 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  (*(v7 + 8))(v6, v8);
  sub_10000BE18(v5, &qword_10083DC18, &unk_1006DB720);

  v15 = v1[1];

  return v15();
}

uint64_t sub_10031A748()
{
  v21 = v0;
  v1 = v0[74];
  v2 = v0[71];
  v3 = v0[68];
  v4 = v0[67];

  (*(v3 + 8))(v2, v4);
  sub_10000BE18(v1, &qword_10083DC18, &unk_1006DB720);
  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[62];
    v19 = v0[63];
    v8 = v0[61];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_100141FE4(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "received an error while updaing the proofing action status %s", v9, 0xCu);
    sub_10000BB78(v10);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = v0[62];
    v14 = v0[63];
    v16 = v0[61];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[1];

  return v17();
}

unint64_t sub_10031A9CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_1005791C8(a1, a2);
  if (!v3)
  {
    if (result >> 62)
    {
      v8 = result;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      result = v8;
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((result & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v6 = *(result + 32);
      }

      ProofingSession.init(_:)();
      v7 = 0;
      goto LABEL_10;
    }

    v7 = 1;
LABEL_10:
    v10 = type metadata accessor for ProofingSession();
    return (*(*(v10 - 8) + 56))(a3, v7, 1, v10);
  }

  return result;
}

void sub_10031AAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ProofingSession.objectID.getter();
  v5 = sub_10057886C(v4);

  if (!v3)
  {
    v6 = IdentityProofingActionStatus.rawValue.getter();
    sub_10057F148(v6, 0);
    sub_1005783D4();
  }
}

uint64_t sub_10031AB70()
{

  sub_10000BB78((v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_10031ABF4()
{
  result = qword_1008465B0;
  if (!qword_1008465B0)
  {
    sub_10000B870(&unk_1008458B0, &qword_1006BF8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008465B0);
  }

  return result;
}

uint64_t sub_10031AC58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10031ACAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10031ACE4()
{
  v1 = type metadata accessor for ProofingSession();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10031ADE8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10031AE4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10031AEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[65] = a3;
  v3[63] = a1;
  v3[64] = a2;
  v4 = type metadata accessor for DIPError.Code();
  v3[66] = v4;
  v3[67] = *(v4 - 8);
  v3[68] = swift_task_alloc();
  v5 = sub_100007224(&qword_100841070, &unk_1006DDAB0);
  v3[69] = v5;
  v3[70] = *(v5 - 8);
  v3[71] = swift_task_alloc();
  v6 = type metadata accessor for DeviceInformationProvider();
  v3[72] = v6;
  v3[73] = *(v6 - 8);
  v3[74] = swift_task_alloc();
  v7 = type metadata accessor for DIPKeyAlgorithm();
  v3[75] = v7;
  v3[76] = *(v7 - 8);
  v3[77] = swift_task_alloc();
  v8 = type metadata accessor for KeystoreKeyType();
  v3[78] = v8;
  v3[79] = *(v8 - 8);
  v3[80] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[81] = v9;
  v3[82] = *(v9 - 8);
  v3[83] = swift_task_alloc();

  return _swift_task_switch(sub_10031B15C, 0, 0);
}

uint64_t sub_10031B15C(uint64_t a1)
{
  v2 = v1[83];
  v3 = v1[82];
  v4 = v1[81];
  UUID.init()();
  UUID.uuidString.getter();
  v1[84] = v5;
  v6 = *(v3 + 8);
  v1[85] = v6;
  v1[86] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v1[87] = type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v7 = swift_task_alloc();
  v1[88] = v7;
  *v7 = v1;
  v7[1] = sub_10031B278;

  return sub_1005FB45C((v1 + 34), 0, 0, 0, 0);
}

uint64_t sub_10031B278(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 712) = a1;

  sub_10000BB78((v2 + 272));

  return _swift_task_switch(sub_10031B3A0, 0, 0);
}

uint64_t sub_10031B3A0(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = v1[63];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 40);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;

      v8 = IdentityProofingDataSharingUserConsent.rawValue.getter();
      v9 = IdentityProofingDataSharingUserConsent.rawValue.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1003C5FB0(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1003C5FB0((v10 > 1), v11 + 1, 1, v5);
      }

      v12 = v1[65];
      *(v5 + 2) = v11 + 1;
      v13 = &v5[32 * v11];
      *(v13 + 4) = v7;
      *(v13 + 5) = v6;
      *(v13 + 6) = v12;
      v13[56] = v8 != v9;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v1[90] = v5;
  v14 = v1[85];
  v15 = v1[83];
  v16 = v1[81];
  v17 = v1[80];
  v18 = v1[79];
  v19 = v1[78];
  UUID.init()();
  v1[91] = UUID.uuidString.getter();
  v1[92] = v20;
  v14(v15, v16);
  type metadata accessor for DIPKeystoreManager();
  inited = swift_initStackObject();
  v1[93] = inited;
  *(inited + 16) = sub_10003D56C(_swiftEmptyArrayStorage);
  *(inited + 24) = 2;
  sub_100007224(&qword_100839BC0, &qword_1006D49B0);
  v22 = type metadata accessor for HardwareAttestationType();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v1[94] = v25;
  *(v25 + 16) = xmmword_1006BF520;
  (*(v23 + 104))(v25 + v24, enum case for HardwareAttestationType.SEP(_:), v22);
  (*(v18 + 104))(v17, enum case for KeystoreKeyType.temporary(_:), v19);
  v26 = swift_task_alloc();
  v1[95] = v26;
  *v26 = v1;
  v26[1] = sub_10031B694;

  return sub_10003736C((v1 + 39), v25, 0, 0, 0xF000000000000000);
}

uint64_t sub_10031B694()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_10031BA28;
  }

  else
  {
    v2 = sub_10031B7C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031B7C8()
{
  v1 = *(v0 + 768);
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08((v0 + 352), *(v0 + 376));
  v2 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountIdentifier()();
  *(v0 + 776) = v3;
  if (v1)
  {
    v4 = *(v0 + 640);
    v5 = *(v0 + 632);
    v6 = *(v0 + 624);

    (*(v5 + 8))(v4, v6);
    sub_10000BB78((v0 + 352));
    sub_10000BB78((v0 + 312));
    v7 = *(v0 + 736);
    v8 = *(v0 + 728);
    v9 = *(v0 + 720);
    v10 = *(v0 + 712);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    *(v0 + 32) = v8;
    *(v0 + 40) = v7;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0x61746E6567616DLL;
    *(v0 + 104) = 0xE700000000000000;
    *(v0 + 112) = v9;
    sub_1000F978C(v0 + 16);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = v2;
    v14 = v3;
    v15 = *(v0 + 616);
    sub_10000BB78((v0 + 352));
    sub_10000BA08((v0 + 312), *(v0 + 336));
    sub_10061B2DC(v15);
    v16 = swift_task_alloc();
    *(v0 + 784) = v16;
    *v16 = v0;
    v16[1] = sub_10031BB58;
    v17 = *(v0 + 640);
    v18 = *(v0 + 616);

    return DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)(v0 + 392, 0x61746E6567616DLL, 0xE700000000000000, v13, v14, v17, v18, 0);
  }
}

uint64_t sub_10031BA28()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0x61746E6567616DLL;
  *(v0 + 104) = 0xE700000000000000;
  *(v0 + 112) = v6;
  sub_1000F978C(v0 + 16);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10031BB58()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  (*(v2[76] + 8))(v2[77], v2[75]);

  if (v0)
  {
    v3 = sub_10031C114;
  }

  else
  {
    v3 = sub_10031BCDC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10031BCDC()
{
  v1 = *(v0 + 792);
  sub_10000BA08((v0 + 392), *(v0 + 416));
  v2 = dispatch thunk of IdentityKey.attestation(_:)();
  if (v1)
  {
    v3 = *(v0 + 640);
    v4 = *(v0 + 632);
    v5 = *(v0 + 624);

    (*(v4 + 8))(v3, v5);
    sub_10000BB78((v0 + 392));
    sub_10000BB78((v0 + 312));
    *(v0 + 16) = 0;
    v6 = *(v0 + 736);
    v7 = *(v0 + 728);
    v8 = *(v0 + 720);
    v9 = *(v0 + 712);
    *(v0 + 24) = 0xE000000000000000;
    *(v0 + 32) = v7;
    *(v0 + 40) = v6;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0x61746E6567616DLL;
    *(v0 + 104) = 0xE700000000000000;
    *(v0 + 112) = v8;
    sub_1000F978C(v0 + 16);

LABEL_8:

    v30 = *(v0 + 8);

    return v30();
  }

  v10 = *(v0 + 712);
  v11 = *(v0 + 640);
  v12 = *(v0 + 632);
  v13 = *(v0 + 624);
  v14 = *(v0 + 592);
  v15 = *(v0 + 584);
  v35 = *(v0 + 576);
  v16._rawValue = v2;
  swift_setDeallocating();

  (*(v12 + 8))(v11, v13);
  sub_100020260(v0 + 392, v0 + 224);
  *(v0 + 264) = v16;
  sub_10000BB78((v0 + 392));
  sub_10000BB78((v0 + 312));
  v17 = *(v10 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v34 = *(v10 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  sub_100020260(*(v10 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 432);
  sub_10000BA08((v0 + 432), *(v0 + 456));

  v18 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v20 = v19;
  sub_10000BB78((v0 + 432));
  DeviceInformationProvider.init()();
  v21 = DeviceInformationProvider.uniqueDeviceID.getter();
  v23 = v22;
  (*(v15 + 8))(v14, v35);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 736);
  v25 = *(v0 + 728);
  v26 = *(v0 + 720);
  v27 = xmmword_100882478;
  *(v0 + 120) = v34;
  *(v0 + 128) = v17;
  *(v0 + 136) = v25;
  *(v0 + 144) = v24;
  *(v0 + 152) = v18;
  *(v0 + 160) = v20;
  *(v0 + 168) = v21;
  *(v0 + 176) = v23;
  *(v0 + 184) = v27;
  *(v0 + 200) = 0x61746E6567616DLL;
  *(v0 + 208) = 0xE700000000000000;
  *(v0 + 216) = v26;
  sub_1000F8888();
  sub_1000F88DC();

  JWSSignedJSON.init(payload:)();
  JWSSignedJSON.setCertificateChain(_:)(v16);
  if (v28)
  {
    v29 = *(v0 + 712);
    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));

    sub_1001B7154(v0 + 224);
    goto LABEL_8;
  }

  JWSSignedJSON.setKid(_:)();
  v32 = swift_task_alloc();
  *(v0 + 800) = v32;
  *v32 = v0;
  v32[1] = sub_10031C24C;
  v33 = *(v0 + 552);

  return JWSSignedJSON.sign(_:)(v0 + 224, v33);
}

uint64_t sub_10031C114()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);

  (*(v2 + 8))(v1, v3);
  sub_10000BB78((v0 + 312));
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0x61746E6567616DLL;
  *(v0 + 104) = 0xE700000000000000;
  *(v0 + 112) = v6;
  sub_1000F978C(v0 + 16);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10031C24C()
{
  v2 = *v1;
  v2[101] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10031C5C0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[102] = v3;
    *v3 = v2;
    v3[1] = sub_10031C3C0;
    v4 = v2[71];

    return sub_1005E364C(v4);
  }
}

uint64_t sub_10031C3C0()
{
  *(*v1 + 824) = v0;

  if (v0)
  {
    v2 = sub_10031C6A4;
  }

  else
  {
    v2 = sub_10031C4D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031C4D4()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);

  (*(v2 + 8))(v1, v3);
  sub_1001B7154(v0 + 224);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10031C5C0()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);

  (*(v2 + 8))(v1, v3);
  sub_1001B7154(v0 + 224);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10031C6A4()
{
  v1 = v0[89];
  v2 = v0[70];
  v5 = v0[69];
  v6 = v0[71];
  (*(v0[67] + 104))(v0[68], enum case for DIPError.Code.internalError(_:), v0[66]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v2 + 8))(v6, v5);
  sub_1001B7154((v0 + 28));

  v3 = v0[1];

  return v3();
}

uint64_t sub_10031C884(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1003C5110(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10031C978(uint64_t result)
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

  v3 = sub_1003C573C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = type metadata accessor for IdentityDocumentElement();
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

uint64_t sub_10031CAA4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1003C5E7C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10031CB98(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10031EB28(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10031ED68(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10031CC88(uint64_t a1)
{
  v77 = type metadata accessor for MobileDocumentElement();
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_1008410D0, &qword_1006DDB30);
  v7 = __chkstk_darwin(v6 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v59 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1003C62A4(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1003BCC54(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_10001FA6C(v79);
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_100321AA8(v14, v75);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_10000BE18(v37, &qword_1008410D0, &qword_1006DDB30);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_1003C62A4((v39 > 1), v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_100321AA8(v14, v76);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_10000BE18(v43, &qword_1008410D0, &qword_1006DDB30);
LABEL_33:
        v74 = v4;
        *(v16 + 2) = v4;
        v37 = v75;
        sub_100321AA8(v14, v75);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          goto LABEL_33;
        }

        sub_10000BE18(v14, &qword_1008410D0, &qword_1006DDB30);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_100321AA8(v14, v76);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_10000BE18(v14, &qword_1008410D0, &qword_1006DDB30);
    sub_10001FA6C(v65);
    result = sub_10000BE18(v37, &qword_1008410D0, &qword_1006DDB30);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10031D34C(uint64_t result)
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

  result = sub_1003C62CC(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

void *sub_10031D438(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1003C6994(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100007224(&qword_1008410E8, &unk_1006DDB40);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10031D540(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1003C6ADC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10031D638(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10031D720, 0, 0);
}

uint64_t sub_10031D720(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: asked to delete current claim due to self-heal", v4, 2u);
  }

  v5 = v1[10];
  v6 = v1[5];
  v7 = v1[6];

  v8 = *(v7 + 8);
  v1[11] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[12] = v9;
  *v9 = v1;
  v9[1] = sub_10031D858;
  v11 = v1[2];
  v10 = v1[3];

  return sub_10031F41C(v11, v10);
}

uint64_t sub_10031D858()
{

  return _swift_task_switch(sub_10031D954, 0, 0);
}

uint64_t sub_10031D954(uint64_t a1)
{
  v30 = v1;
  v2 = (v1[4] + OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID);
  v3 = v2[1];
  if (!v3)
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v1[11];
    v19 = v1[8];
    v20 = v1[5];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Self-healing: skipping proofing session deletion because no proofing session ID is available", v21, 2u);
    }

    v18(v19, v20);
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Identity: Done deleting current claim due to self-heal; terminating process", v24, 2u);
    }

    v25 = v1[11];
    v26 = v1[7];
    v27 = v1[5];

    v25(v26, v27);
    exit(0);
  }

  v4 = *v2;
  defaultLogger()();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[11];
  v9 = v1[9];
  v10 = v1[5];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v28 = v8;
    v29 = swift_slowAlloc();
    v12 = v29;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v4, v3, &v29);
    _os_log_impl(&_mh_execute_header, v5, v6, "Self-healing: deleting proofing sessions with ID %s", v11, 0xCu);
    sub_10000BB78(v12);

    v28(v9, v10);
  }

  else
  {

    v8(v9, v10);
  }

  v13 = swift_task_alloc();
  v1[13] = v13;
  *v13 = v1;
  v13[1] = sub_10031DC80;

  return sub_10031DE4C(v4, v3);
}

uint64_t sub_10031DC80()
{

  return _swift_task_switch(sub_10031DD7C, 0, 0);
}

void sub_10031DD7C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: Done deleting current claim due to self-heal; terminating process", v4, 2u);
  }

  v5 = v1[11];
  v6 = v1[7];
  v7 = v1[5];

  v5(v6, v7);
  exit(0);
}

uint64_t sub_10031DE4C(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = type metadata accessor for Logger();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10031DF10, 0, 0);
}

uint64_t sub_10031DF10()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v0[33] = v0[9];

  sub_100031918((v0 + 2));
  v5 = swift_allocObject();
  v0[34] = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  v6 = swift_allocObject();
  v0[35] = v6;
  *(v6 + 16) = sub_100320ED0;
  *(v6 + 24) = v5;

  v7 = v3;

  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_10031E0E8;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v8, sub_10017F710, v6, &type metadata for () + 8);
}

uint64_t sub_10031E0E8()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_10031E278;
  }

  else
  {

    v2 = sub_10031E218;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031E218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10031E278()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

id sub_10031E358(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v53 = _swiftEmptyArrayStorage;
  result = sub_10057A388(1, 0, 1);
  if (!v3)
  {
    v49 = a2;
    v15 = result;
    v16 = sub_10057A388(2, 0, 1);
    v47 = v7;
    if (v15)
    {
      v18 = v16;
      sub_10031CB98(v15);
      v16 = v18;
      v7 = v47;
    }

    if (v16)
    {
      sub_10031CB98(v16);
    }

    v19 = v53;
    v48 = v53;
    if (v53 >> 62)
    {
      v44 = 0;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v51 = _CocoaArrayWrapper.endIndex.getter();
        if (!v51)
        {
LABEL_34:

          return sub_1005783D4();
        }

        if (v51 >= 1)
        {
          v3 = v44;
          v19 = v48;
          goto LABEL_8;
        }

        __break(1u);
      }
    }

    else
    {
      v51 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51)
      {
LABEL_8:
        v44 = v3;
        v20 = 0;
        v50 = v19 & 0xC000000000000001;
        v46 = (v8 + 8);
        *&v17 = 136315138;
        v45 = v17;
        v21 = v19;
        while (1)
        {
          if (v50)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v22 = *(v21 + 8 * v20 + 32);
          }

          v23 = v22;
          v24 = [v22 proofingSessionID];
          if (v24)
          {
            v25 = v24;
            v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v28 = v27;

            if (v26 == v49 && v28 == a3)
            {
            }

            else
            {
              v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v30 & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            defaultLogger()();

            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v52 = v34;
              *v33 = v45;
              *(v33 + 4) = sub_100141FE4(v49, a3, &v52);
              _os_log_impl(&_mh_execute_header, v31, v32, "Self-healing: Deleting session %s", v33, 0xCu);
              sub_10000BB78(v34);
              v21 = v48;
            }

            (*v46)(v11, v47);
            [*(a1 + 16) deleteObject:v23];
          }

LABEL_26:
          v35 = [v23 uploadAssets];
          if (v35)
          {
            v36 = v35;
            v37 = sub_10031F088(v36);

            v38 = sub_10057A09C(v37);

            if (!v38)
            {

              v21 = v48;
              goto LABEL_11;
            }

            if (v38 >> 62)
            {
              v39 = _CocoaArrayWrapper.endIndex.getter();
              v21 = v48;
              if (v39)
              {
LABEL_30:
                sub_100320F28(v38, a1);

                goto LABEL_11;
              }
            }

            else
            {
              v21 = v48;
              if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }
            }
          }

LABEL_11:
          if (v51 == ++v20)
          {
            goto LABEL_34;
          }
        }
      }
    }

    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Self-healing: no sessions to delete", v42, 2u);
    }

    return (*(v8 + 8))(v13, v7);
  }

  return result;
}

uint64_t sub_10031E930(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_10031D638(a1, a2);
}

uint64_t sub_10031E9D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_10031FB24(a1, a2);
}

uint64_t sub_10031EA88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100027B9C;

  return sub_100320A6C();
}

uint64_t sub_10031EB28(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_10031EBC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100321B18(&qword_1008410C8, &qword_1008410C0, &qword_1006DDB28);
          for (i = 0; i != v6; ++i)
          {
            sub_100007224(&qword_1008410C0, &qword_1006DDB28);
            v9 = sub_1002E048C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001F8D4(0, &qword_1008410B8, CTXPCServiceSubscriptionContext_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10031ED68(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100321B18(&qword_1008410B0, &qword_10083EF60, &qword_1006DC4B8);
          for (i = 0; i != v6; ++i)
          {
            sub_100007224(&qword_10083EF60, &qword_1006DC4B8);
            v9 = sub_1002E0404(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for StoredProofingSession();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10031EEF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100321B18(&qword_1008410E0, &qword_1008410D8, &qword_1006DDB38);
          for (i = 0; i != v6; ++i)
          {
            sub_100007224(&qword_1008410D8, &qword_1006DDB38);
            v9 = sub_1002E048C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for StoredMobileDocumentRegistration();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10031F088(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 count];
  v7 = v6;
  if (v6)
  {
    if (v6 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_100007224(&qword_10083C1D8, &unk_1006DA780);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 1;
      }

      v8[2] = v7;
      v8[3] = 2 * (v10 >> 5);
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v11 = v8[3];

  result = NSSet.makeIterator()();
  if (v7 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v11 >> 1;
  v14 = v8 + 4;
  if (v7)
  {
    v13 -= v7;
    sub_100321A60(&qword_10083C148, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
    do
    {
      result = dispatch thunk of IteratorProtocol.next()();
      if (!v34)
      {
        goto LABEL_38;
      }

      sub_10001F348(&v33, v14);
      v14 += 2;
    }

    while (--v7);
  }

  v30 = v3;
  sub_100321A60(&qword_10083C148, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v32)
  {
    while (1)
    {
      result = sub_10001F348(&v31, &v33);
      if (!v13)
      {
        v15 = v8[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        sub_100007224(&qword_10083C1D8, &unk_1006DA780);
        v18 = swift_allocObject();
        v19 = j__malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 1;
        }

        v21 = v20 >> 5;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 5);
        v22 = (v18 + 4);
        v23 = v8[3] >> 1;
        if (v8[2])
        {
          v24 = v8 + 4;
          if (v18 != v8 || v22 >= v24 + 32 * v23)
          {
            memmove(v18 + 4, v24, 32 * v23);
          }

          v8[2] = 0;
        }

        v14 = (v22 + 32 * v23);
        v13 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v8 = v18;
      }

      v25 = __OFSUB__(v13--, 1);
      if (v25)
      {
        break;
      }

      sub_10001F348(&v33, v14);
      v14 += 2;
      dispatch thunk of IteratorProtocol.next()();
      if (!v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v30 + 8))(v5, v2);
  result = sub_10000BE18(&v31, &unk_100845ED0, &qword_1006DA1D0);
  v26 = v8[3];
  if (v26 < 2)
  {
    return v8;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v13);
  v28 = v27 - v13;
  if (!v25)
  {
    v8[2] = v28;
    return v8;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10031F41C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10031F544, 0, 0);
}

uint64_t sub_10031F544(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Self-healing: Deleting identity key", v4, 2u);
  }

  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[7];

  v9 = *(v7 + 8);
  v1[15] = v9;
  v9(v5, v6);
  type metadata accessor for DIPKeystoreManager();
  inited = swift_initStackObject();
  v1[16] = inited;
  *(inited + 16) = sub_10003D56C(_swiftEmptyArrayStorage);
  *(inited + 24) = 2;
  if (v8)
  {
    v11 = v1[7];
    v12 = swift_task_alloc();
    v1[17] = v12;
    *v12 = v1;
    v12[1] = sub_10031F8A4;
    v13 = v1[6];

    return sub_100038F4C(v13, v11);
  }

  else
  {
    (*(v1[9] + 104))(v1[10], enum case for DIPError.Code.internalError(_:), v1[8]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100321A60(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = v1[15];
    v16 = v1[13];
    v17 = v1[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v15(v16, v17);

    v18 = v1[1];

    return v18();
  }
}

uint64_t sub_10031F8A4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10031FA34;
  }

  else
  {
    v2 = sub_10031F9B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031F9B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10031FA34(uint64_t a1)
{
  v2 = v1[15];
  v3 = v1[13];
  v4 = v1[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_10031FB24(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10031FC08, 0, 0);
}

uint64_t sub_10031FC08(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: asked to delete all claims for current provider due to self-heal", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[4];
  v7 = v1[5];

  v8 = *(v7 + 8);
  v1[10] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[11] = v9;
  *v9 = v1;
  v9[1] = sub_10031FD40;
  v11 = v1[2];
  v10 = v1[3];

  return sub_10031F41C(v11, v10);
}

uint64_t sub_10031FD40()
{

  return _swift_task_switch(sub_10031FE3C, 0, 0);
}

uint64_t sub_10031FE3C(uint64_t a1)
{
  v27 = v1;
  v2 = v1[3];
  if (!v2)
  {
    v23 = 0;
    v8 = 0xE300000000000000;
    goto LABEL_16;
  }

  v3 = 0x800000010070DEA0 == v2 && v1[2] == 0xD000000000000012;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = swift_task_alloc();
    v1[14] = v4;
    *v4 = v1;
    v4[1] = sub_100320484;
    v5 = 3;
    goto LABEL_12;
  }

  if ((v1[2] != 0x61746E6567616DLL || v1[3] != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v8 = v2;
    v23 = v2;
LABEL_16:
    defaultLogger()();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    v11 = os_log_type_enabled(v9, v10);
    v24 = v1[8];
    v25 = v1[10];
    v12 = v1[4];
    if (v11)
    {
      v13 = v1[2];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      if (!v23)
      {
        v13 = 4999502;
      }

      v16 = sub_100141FE4(v13, v8, &v26);

      *(v14 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to delete all claims due to an unknown providerID %s", v14, 0xCu);
      sub_10000BB78(v15);
    }

    v25(v24, v12);
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Identity: Done deleting deleting all claims for current provider due to self-heal; terminating process", v19, 2u);
    }

    v20 = v1[10];
    v21 = v1[7];
    v22 = v1[4];

    v20(v21, v22);
    exit(0);
  }

  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_1003201CC;
  v5 = 0;
LABEL_12:

  return sub_1002E0570(1, v5, 0);
}

uint64_t sub_1003201CC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    *(v2 + 128) = v0;

    return _swift_task_switch(sub_10032080C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v2 + 104) = v4;
    *v4 = v3;
    v4[1] = sub_100320364;

    return sub_1002E0570(2, 0, 0);
  }
}

uint64_t sub_100320364()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 136) = v0;
    v3 = sub_10032093C;
  }

  else
  {
    v3 = sub_10032073C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100320484()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    *(v2 + 128) = v0;

    return _swift_task_switch(sub_10032080C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v2 + 120) = v4;
    *v4 = v3;
    v4[1] = sub_10032061C;

    return sub_1002E0570(2, 3, 0);
  }
}

uint64_t sub_10032061C()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 136) = v0;
    v3 = sub_10032093C;
  }

  else
  {
    v3 = sub_10032073C;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10032073C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: Done deleting deleting all claims for current provider due to self-heal; terminating process", v4, 2u);
  }

  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[4];

  v5(v6, v7);
  exit(0);
}

void sub_10032080C(uint64_t a1)
{
  v2 = v1[10];
  v3 = v1[6];
  v4 = v1[4];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v4);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Identity: Done deleting deleting all claims for current provider due to self-heal; terminating process", v7, 2u);
  }

  v8 = v1[10];
  v9 = v1[7];
  v10 = v1[4];

  v8(v9, v10);
  exit(0);
}

void sub_10032093C(uint64_t a1)
{
  v2 = v1[10];
  v3 = v1[6];
  v4 = v1[4];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v4);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Identity: Done deleting deleting all claims for current provider due to self-heal; terminating process", v7, 2u);
  }

  v8 = v1[10];
  v9 = v1[7];
  v10 = v1[4];

  v8(v9, v10);
  exit(0);
}

uint64_t sub_100320A6C()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_100320B34, 0, 0);
}

uint64_t sub_100320B34(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: Asked to delete everything due to self-heal", v4, 2u);
  }

  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];

  v8 = *(v7 + 8);
  v1[6] = v8;
  v8(v5, v6);
  if (qword_100832CA8 != -1)
  {
    swift_once();
  }

  v9 = qword_1008823D8;
  v10 = swift_task_alloc();
  v1[7] = v10;
  *v10 = v1;
  v10[1] = sub_100320CC4;

  return sub_100589394(&off_1007F8558, v9);
}

uint64_t sub_100320CC4()
{

  return _swift_task_switch(sub_100320DC0, 0, 0);
}

void sub_100320DC0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Identity: Done deleting everything due to self-heal; terminating process", v4, 2u);
  }

  v5 = v1[6];
  v6 = v1[4];
  v7 = v1[2];

  v5(v6, v7);
  exit(0);
}

uint64_t sub_100320E90()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100320EF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100320F28(unint64_t a1, uint64_t a2)
{
  v83 = a2;
  v105 = type metadata accessor for Logger();
  v3 = *(v105 - 8);
  v4 = __chkstk_darwin(v105);
  v93 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v107 = &v83 - v7;
  __chkstk_darwin(v6);
  v92 = &v83 - v8;
  v9 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v91 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v90 = &v83 - v17;
  __chkstk_darwin(v16);
  v20 = &v83 - v19;
  v84 = a1 >> 62;
  v106 = a1;
  if (a1 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_3:
      if (v21 >= 1)
      {
        v22 = 0;
        v89 = 0;
        v103 = v106 & 0xC000000000000001;
        v101 = (v13 + 48);
        v96 = (v13 + 32);
        v95 = (v13 + 16);
        v97 = (v13 + 8);
        v104 = (v3 + 8);
        *&v18 = 136315138;
        v98 = v18;
        *&v18 = 136315394;
        v85 = v18;
        v99 = v20;
        v100 = v12;
        v102 = v21;
        v94 = v11;
        while (1)
        {
          if (v103)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v23 = *(v106 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = [v23 assetFileURL];
          if (v25)
          {
            v26 = v25;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            URL.init(string:)();

            if ((*v101)(v11, 1, v12) != 1)
            {
              (*v96)(v20, v11, v12);
              v37 = [objc_opt_self() defaultManager];
              URL._bridgeToObjectiveC()(v38);
              v40 = v39;
              v108 = 0;
              v41 = [v37 removeItemAtURL:v39 error:&v108];

              if (v41)
              {
                v42 = v108;
                v43 = v92;
                defaultLogger()();
                v44 = v20;
                v45 = v90;
                (*v95)(v90, v44, v12);
                v46 = Logger.logObject.getter();
                v47 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v46, v47))
                {
                  v48 = swift_slowAlloc();
                  v49 = swift_slowAlloc();
                  v108 = v49;
                  *v48 = v98;
                  v50 = URL.absoluteString.getter();
                  v52 = v51;
                  v53 = *v97;
                  (*v97)(v45, v100);
                  v54 = sub_100141FE4(v50, v52, &v108);
                  v12 = v100;

                  *(v48 + 4) = v54;
                  _os_log_impl(&_mh_execute_header, v46, v47, "Self-healing: Deleted stale asset file at: %s", v48, 0xCu);
                  sub_10000BB78(v49);

                  (*v104)(v92, v105);
                  v20 = v99;
                  v53(v99, v12);
                  goto LABEL_25;
                }

                v72 = *v97;
                (*v97)(v45, v12);
                (*v104)(v43, v105);
                v72(v44, v12);
                v11 = v94;
                v20 = v44;
              }

              else
              {
                v55 = v108;
                _convertNSErrorToError(_:)();

                swift_willThrow();
                v89 = 0;
                v56 = v93;
                defaultLogger()();
                v57 = v91;
                (*v95)(v91, v20, v12);
                swift_errorRetain();
                v58 = Logger.logObject.getter();
                v59 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v58, v59))
                {
                  v60 = swift_slowAlloc();
                  v88 = swift_slowAlloc();
                  v108 = v88;
                  *v60 = v85;
                  v87 = v59;
                  v61 = URL.absoluteString.getter();
                  v86 = v58;
                  v62 = v61;
                  v64 = v63;
                  v65 = *v97;
                  (*v97)(v57, v12);
                  v66 = sub_100141FE4(v62, v64, &v108);

                  *(v60 + 4) = v66;
                  *(v60 + 12) = 2080;
                  swift_getErrorValue();
                  v67 = Error.localizedDescription.getter();
                  v69 = sub_100141FE4(v67, v68, &v108);

                  *(v60 + 14) = v69;
                  v70 = v86;
                  _os_log_impl(&_mh_execute_header, v86, v87, "Self-healing: Error deleting stale asset file at: %s: %s", v60, 0x16u);
                  swift_arrayDestroy();
                  v20 = v99;

                  (*v104)(v93, v105);
                  v65(v20, v12);
                }

                else
                {

                  v73 = *v97;
                  (*v97)(v57, v12);
                  (*v104)(v56, v105);
                  v73(v20, v12);
                }

LABEL_25:
                v11 = v94;
              }

LABEL_26:
              v21 = v102;
              goto LABEL_6;
            }

            sub_10000BE18(v11, &unk_100844540, &unk_1006BFBC0);
          }

          defaultLogger()();
          v27 = v24;
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v108 = v31;
            *v30 = v98;
            v32 = [v27 recordUUID];
            if (v32)
            {
              v33 = v32;
              v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v36 = v35;
            }

            else
            {
              v34 = 0;
              v36 = 0xE000000000000000;
            }

            v71 = sub_100141FE4(v34, v36, &v108);

            *(v30 + 4) = v71;
            _os_log_impl(&_mh_execute_header, v28, v29, "Self-healing: Asset url is nil for recordUUID: %s", v30, 0xCu);
            sub_10000BB78(v31);

            (*v104)(v107, v105);
            v20 = v99;
            v12 = v100;
            goto LABEL_26;
          }

          (*v104)(v107, v105);
LABEL_6:
          if (v21 == ++v22)
          {
            goto LABEL_28;
          }
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
    }
  }

LABEL_28:
  if (v84)
  {
    sub_10001F8D4(0, &qword_10083EF78, NSManagedObject_ptr);

    v75 = _bridgeCocoaArray<A>(_:)();

    v74 = v75;
  }

  else
  {
    v74 = v106;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10001F8D4(0, &qword_10083EF78, NSManagedObject_ptr);
    v75 = v74;
  }

  if (v74 >> 62)
  {
    v76 = _CocoaArrayWrapper.endIndex.getter();
    if (!v76)
    {
    }
  }

  else
  {
    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v76)
    {
    }
  }

  if (v76 < 1)
  {
    goto LABEL_42;
  }

  v77 = 0;
  v78 = *(v83 + 16);
  v79 = v75 & 0xC000000000000001;
  do
  {
    if (v79)
    {
      v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v80 = *(v74 + 8 * v77 + 32);
    }

    v81 = v80;
    ++v77;
    [v78 deleteObject:{v80, v83}];
  }

  while (v76 != v77);
}

uint64_t sub_100321A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100321AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008410D0, &qword_1006DDB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100321B18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100321B6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for IdentityDocumentProviderMetadata();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for AppExtensionProcess();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_100321D5C, 0, 0);
}

uint64_t sub_100321D5C(uint64_t a1)
{
  v19 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[18];
  v6 = v1[15];
  v7 = v1[16];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityDocumentProviderExtensionConnectionManager fetching scene identifiers for %s.", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[19] = v12;
  v13 = swift_task_alloc();
  v1[20] = v13;
  *v13 = v1;
  v13[1] = sub_100321F14;
  v14 = v1[14];
  v15 = v1[3];
  v16 = v1[2];

  return sub_100322B2C(v14, v16, v15);
}

uint64_t sub_100321F14()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003227C4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[22] = v3;
    *v3 = v2;
    v3[1] = sub_100322084;
    v4 = v2[14];

    return sub_100324BC8(v4);
  }
}

uint64_t sub_100322084(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100322344, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[25] = v5;
    *v5 = v4;
    v5[1] = sub_100322230;
    v6 = v3[11];
    v7 = v3[8];

    return SendableXPCConnection.performWithRemoteObjectProxy<A>(_:onCancel:)(v6, &unk_1006DDBF0, 0, 0, 0, v7);
  }
}

uint64_t sub_100322230()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_100322964;
  }

  else
  {
    v2 = sub_1003224FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100322344()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003224FC(uint64_t a1)
{
  v34 = v1;
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[8];
  v5 = v1[9];
  defaultLogger()();
  (*(v5 + 16))(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[19];
  v10 = v1[17];
  v11 = v1[15];
  v13 = v1[9];
  v12 = v1[10];
  v14 = v1[8];
  if (v8)
  {
    v15 = swift_slowAlloc();
    v30 = v11;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    IdentityDocumentProviderMetadata.sceneIdentifiers.getter();
    type metadata accessor for IdentityDocumentRequestSceneIdentifier();
    v28 = v10;
    v29 = v9;
    v17 = Array.description.getter();
    v19 = v18;

    v32 = *(v13 + 8);
    v32(v12, v14);
    v20 = sub_100141FE4(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Succesfully fetched scene identifiers %s", v15, 0xCu);
    sub_10000BB78(v16);

    v29(v28, v30);
  }

  else
  {

    v32 = *(v13 + 8);
    v32(v12, v14);
    v9(v10, v11);
  }

  v22 = v1[13];
  v21 = v1[14];
  v23 = v1[11];
  v24 = v1[12];
  v25 = v1[8];
  v31 = IdentityDocumentProviderMetadata.sceneIdentifiers.getter();

  v32(v23, v25);
  (*(v22 + 8))(v21, v24);

  v26 = v1[1];

  return v26(v31);
}

uint64_t sub_1003227C4()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100322964()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100322B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for AppExtensionProcess.Configuration();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for AppExtensionIdentity();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100322CC0, 0, 0);
}

uint64_t sub_100322CC0()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  sub_10000BA08(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100322D84;
  v5 = v0[16];
  v6 = v0[3];
  v7 = v0[4];

  return dispatch thunk of ExtensionPointManaging.queryForAppExtension(applicationIdentifer:)(v5, v6, v7, v2, v3);
}

uint64_t sub_100322D84()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100323198;
  }

  else
  {
    v2 = sub_100322E98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100322E98()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  AppExtensionProcess.Configuration.init(appExtensionIdentity:onInterruption:)();
  (*(v4 + 16))(v2, v1, v3);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_100322FA8;
  v6 = v0[11];
  v7 = v0[2];

  return AppExtensionProcess.init(configuration:)(v7, v6);
}

uint64_t sub_100322FA8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100323328;
  }

  else
  {
    v2 = sub_1003230BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003230BC()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100323198()
{
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentCouldNotCreateAppExtensionProcess(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100323328()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v3 + 8))(v1, v2);
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.webPresentmentCouldNotCreateAppExtensionProcess(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003234F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100323514, 0, 0);
}

uint64_t sub_100323514()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100323630;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_100841190, qword_1006DDBF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015FDB8;
  v0[13] = &unk_10080DBD8;
  v0[14] = v2;
  [v1 providerMetadataWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100323630()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1003237A8;
  }

  else
  {
    v2 = sub_100323740;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100323740()
{
  v1 = *(v0 + 144);
  XPCIdentityDocumentProviderMetadata.value.getter();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003237A8(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100323814(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for AppExtensionProcess();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10032399C, 0, 0);
}

uint64_t sub_10032399C(uint64_t a1)
{
  v19 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityDocumentProviderExtensionConnectionManager notifying %s to perform registration updates.", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[15] = v12;
  v13 = swift_task_alloc();
  v1[16] = v13;
  *v13 = v1;
  v13[1] = sub_100323B54;
  v14 = v1[10];
  v15 = v1[3];
  v16 = v1[2];

  return sub_100322B2C(v14, v16, v15);
}

uint64_t sub_100323B54()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10032434C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[18] = v3;
    *v3 = v2;
    v3[1] = sub_100323CC4;
    v4 = v2[10];

    return sub_100324BC8(v4);
  }
}

uint64_t sub_100323CC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100323F88, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[21] = v5;
    *v5 = v4;
    v5[1] = sub_100323E74;

    return SendableXPCConnection.performWithRemoteObjectProxy<A>(_:onCancel:)(v5, &unk_1006DDC20, 0, 0, 0, &type metadata for () + 8);
  }
}

uint64_t sub_100323E74()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1003244D4;
  }

  else
  {
    v2 = sub_100324128;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100323F88()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100324128(uint64_t a1)
{
  v23 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v1[11];
    v18 = v1[13];
    v20 = v1[15];
    v21 = v1[10];
    v4 = v1[9];
    v19 = v1[8];
    v6 = v1[2];
    v5 = v1[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100141FE4(v6, v5, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityDocumentProviderExtensionConnectionManager successfully notified %s.", v7, 0xCu);
    sub_10000BB78(v8);

    v20(v18, v17);
    (*(v4 + 8))(v21, v19);
  }

  else
  {
    v9 = v1[15];
    v10 = v1[13];
    v12 = v1[10];
    v11 = v1[11];
    v13 = v1[8];
    v14 = v1[9];

    v9(v10, v11);
    (*(v14 + 8))(v12, v13);
  }

  v15 = v1[1];

  return v15();
}

uint64_t sub_10032434C()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003244D4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.webPresentmentFetchSceneIdentifiersFailed(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003246A8()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1003247BC;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_1008435E0, &qword_1006E1390);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004290CC;
  v0[13] = &unk_10080DC00;
  v0[14] = v2;
  [v1 notifyRegistrationUpdatesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003247BC()
{

  return _swift_task_switch(sub_1002D0E30, 0, 0);
}

uint64_t sub_1003248B4(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003249F0(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  __chkstk_darwin(v2);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for DIPError.Code.internalError(_:));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v5 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  }

  swift_errorRetain();
  return v5;
}

uint64_t sub_100324B6C()
{
  sub_10000BB78((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100324BC8(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100324C88, 0, 0);
}

uint64_t sub_100324C88()
{
  AppExtensionProcess.makeXPCConnection()();
  if (v1)
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.webPresentmentCouldNotCreateXPCConnection(_:), v0[3]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP13CoreIDVShared42IdentityDocumentProviderExtensionInterface_];
    sub_100007224(&qword_100841198, &qword_1006DDC10);
    swift_allocObject();
    v5 = SendableXPCConnection.init(connection:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)();

    v6 = v0[1];

    return v6(v5);
  }
}

uint64_t sub_100324F3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for PartialWebPresentmentRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for CredentialPresentmentRequest();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for BundleRecord();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[16] = v7;
  v2[17] = *(v7 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderApplication(0);
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v9 = type metadata accessor for ExtensionIdentity();
  v2[27] = v9;
  v2[28] = *(v9 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v10 = type metadata accessor for WebPresentmentMobileDocumentSource();
  v2[31] = v10;
  v2[32] = *(v10 - 8);
  v2[33] = swift_task_alloc();
  v11 = type metadata accessor for PartialWebPresentmentDocumentRequest();
  v2[34] = v11;
  v2[35] = *(v11 - 8);
  v2[36] = swift_task_alloc();
  v12 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest();
  v2[37] = v12;
  v2[38] = *(v12 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_100325380, v1, 0);
}

uint64_t sub_100325380()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  PartialWebPresentmentRequest.documentRequest.getter();
  if ((*(v2 + 88))(v1, v3) == enum case for PartialWebPresentmentDocumentRequest.iso18013MobileDocument(_:))
  {
    v5 = v0[38];
    v4 = v0[39];
    v7 = v0[36];
    v6 = v0[37];
    v9 = v0[32];
    v8 = v0[33];
    v10 = v0[31];
    v11 = v0[3];
    (*(v0[35] + 96))(v7, v0[34]);
    (*(v5 + 32))(v4, v7, v6);
    sub_10000BA08((v11 + 192), *(v11 + 216));
    dispatch thunk of WebPresentmentDeviceSupportProviding.mobileDocumentSource.getter();
    LODWORD(v4) = (*(v9 + 88))(v8, v10);
    LODWORD(v6) = enum case for WebPresentmentMobileDocumentSource.local(_:);
    (*(v9 + 8))(v8, v10);
    if (v4 == v6)
    {
      v12 = v0[3];
      v13 = v12[17];
      v14 = v12[18];
      sub_10000BA08(v12 + 14, v13);
      v15 = swift_task_alloc();
      v0[40] = v15;
      *v15 = v0;
      v15[1] = sub_1003258EC;

      return dispatch thunk of ExtensionPointManaging.queryExtensionPoint()(v13, v14);
    }

    else
    {
      defaultLogger()();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "MobileDocumentProviderDataSource local document providing is not supported on the current device, returning an empty list of provider records", v22, 2u);
      }

      v24 = v0[38];
      v23 = v0[39];
      v25 = v0[37];
      v26 = v0[19];
      v27 = v0[16];
      v28 = v0[17];

      (*(v28 + 8))(v26, v27);
      (*(v24 + 8))(v23, v25);

      v29 = v0[1];

      return v29(_swiftEmptyArrayStorage);
    }
  }

  else
  {
    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[4];
    (*(v0[35] + 8))(v0[36], v0[34]);
    (*(v17 + 104))(v16, enum case for DIPError.Code.webPresentmentUnknownPresentmentProtocol(_:), v18);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}