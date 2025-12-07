unint64_t sub_1011167F8()
{
  result = qword_1016C8AF8;
  if (!qword_1016C8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8AF8);
  }

  return result;
}

uint64_t sub_1011168B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1011168FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_101116980()
{
  result = qword_1016C8B08;
  if (!qword_1016C8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B08);
  }

  return result;
}

unint64_t sub_1011169E8()
{
  result = qword_1016C8B10;
  if (!qword_1016C8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B10);
  }

  return result;
}

unint64_t sub_101116A40()
{
  result = qword_1016C8B18;
  if (!qword_1016C8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B18);
  }

  return result;
}

unint64_t sub_101116A98()
{
  result = qword_1016C8B20;
  if (!qword_1016C8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B20);
  }

  return result;
}

uint64_t sub_101116AEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x734D6E654779656BLL && a2 == 0xED00006873614867 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44746375646F7270 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013610A0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id sub_101116E1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BeaconKeyBackendServiceTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_101116E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return _swift_task_switch(sub_101116EAC, 0, 0);
}

uint64_t sub_101116EAC()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016C84B0, &qword_101407100);
  sub_1011185C0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v1 = v0[5];

  v2 = v0[2];
  v0[9] = v2;
  v3 = (v1 + OBJC_IVAR____TtC12searchpartyd33BeaconKeyBackendServiceTrampoline_implementation);
  v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd33BeaconKeyBackendServiceTrampoline_implementation + 24);
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  v9 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1011170D0;
  v7 = v0[6];

  return v9(v7, v2, v4, v5);
}

uint64_t sub_1011170D0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_101117254;
  }

  else
  {

    v2 = sub_1011171EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1011171EC()
{
  (*(v0 + 56))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101117254()
{

  v1 = v0[11];
  v2 = v0[7];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_101117550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_101117574, 0, 0);
}

uint64_t sub_101117574()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC12searchpartyd33BeaconKeyBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1011176A4;

  return v6(v2, v3);
}

uint64_t sub_1011176A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_101117950;
  }

  else
  {
    v4 = sub_1011177B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1011177B8()
{
  v2 = v0[7];
  v1 = v0[8];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v2;
  sub_1000BC4D4(&qword_1016C84B0, &qword_101407100);
  sub_1011183FC(&qword_1016C84C8, &qword_1016C84B0, &qword_101407100, &protocol conformance descriptor for <A> [A]);
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v5 = v0[4];
    swift_errorRetain();
    v5(0, 0xF000000000000000, v1);
  }

  else
  {
    v6 = v0[4];
    v7 = v3;
    v8 = v4;

    sub_100017D5C(v7, v8);
    v6(v7, v8, 0);
    sub_100016590(v7, v8);
    sub_100016590(v7, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_101117950()
{
  v1 = v0[8];
  v2 = v0[4];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_101117ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  v5[8] = swift_task_alloc();
  v5[9] = type metadata accessor for BeaconIdentifier(0);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_101117BB4, 0, 0);
}

uint64_t sub_101117BB4()
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_101103440(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier, &unk_1013BEF2C);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v1 = (v0[4] + OBJC_IVAR____TtC12searchpartyd33BeaconKeyBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v8 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_101117DFC;
  v5 = v0[10];
  v6 = v0[8];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_101117DFC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1011180A8;
  }

  else
  {
    v2 = sub_101117F10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_101117F10()
{
  v1 = v0[12];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1011183FC(&qword_1016C8B58, &qword_10169E368, &qword_1013D6690, &protocol conformance descriptor for <A> A?);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v4 = v3;

  if (v1)
  {
    sub_1011031BC(v0[8]);
    sub_100429ACC(v0[10]);
    v5 = v0[5];
    swift_errorRetain();
    v5(0, 0xF000000000000000, v1);
  }

  else
  {
    v6 = v0[10];
    v7 = v0[8];
    v8 = v0[5];
    sub_100017D5C(v2, v4);
    v8(v2, v4, 0);
    sub_100016590(v2, v4);
    sub_100016590(v2, v4);
    sub_1011031BC(v7);
    sub_100429ACC(v6);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1011180A8()
{
  v1 = v0[12];
  sub_100429ACC(v0[10]);
  v2 = v0[5];
  swift_errorRetain();
  v2(0, 0xF000000000000000, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_101118298()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014650;

  return sub_101117ADC(v2, v3, v4, v5, v6);
}

uint64_t sub_101118354()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_101117550(v2, v3, v4);
}

uint64_t sub_1011183FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    sub_101103440(&qword_1016C84D0, type metadata accessor for KeyGenerationBeaconInfo, &unk_1013CFFC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_101118494()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_101116E84(v4, v5, v6, v0 + v3, v8, v9);
}

unint64_t sub_1011185C0()
{
  result = qword_1016C84C0;
  if (!qword_1016C84C0)
  {
    sub_1000BC580(&qword_1016C84B0, &qword_101407100);
    sub_101103440(&qword_1016C84A8, type metadata accessor for KeyGenerationBeaconInfo, &unk_1013CFFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C84C0);
  }

  return result;
}

unint64_t sub_101118688()
{
  result = qword_1016C8B60;
  if (!qword_1016C8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B60);
  }

  return result;
}

unint64_t sub_1011186DC()
{
  result = qword_1016C8B68;
  if (!qword_1016C8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B68);
  }

  return result;
}

unint64_t sub_101118730(void *a1)
{
  a1[1] = sub_101118790();
  a1[2] = sub_1011187E4();
  a1[3] = sub_100F08F84();
  a1[4] = sub_100F08FD8();
  a1[5] = sub_101118838();
  a1[6] = sub_10111888C();
  a1[7] = sub_1011188E0();
  result = sub_101118934();
  a1[8] = result;
  return result;
}

unint64_t sub_101118790()
{
  result = qword_1016C8B70;
  if (!qword_1016C8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B70);
  }

  return result;
}

unint64_t sub_1011187E4()
{
  result = qword_1016C8B78;
  if (!qword_1016C8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B78);
  }

  return result;
}

unint64_t sub_101118838()
{
  result = qword_1016C8B80;
  if (!qword_1016C8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B80);
  }

  return result;
}

unint64_t sub_10111888C()
{
  result = qword_1016C8B88;
  if (!qword_1016C8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B88);
  }

  return result;
}

unint64_t sub_1011188E0()
{
  result = qword_1016C8B90;
  if (!qword_1016C8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B90);
  }

  return result;
}

unint64_t sub_101118934()
{
  result = qword_1016C8B98;
  if (!qword_1016C8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8B98);
  }

  return result;
}

uint64_t sub_10111898C()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for LowBatteryUserNotification(0) + 28));
  v6 = v5[3];
  v7 = v5[4];
  sub_1000035D0(v5, v6);
  if (((*(v7 + 96))(v6, v7) & 1) == 0)
  {
    v8 = v5[3];
    v9 = v5[4];
    sub_1000035D0(v5, v8);
    if (((*(v9 + 104))(v8, v9) & 1) == 0)
    {
      return 0;
    }
  }

  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);
  v10 = static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t sub_101118B48()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LowBatteryUserNotification(0);
  v6 = (v0 + *(v5 + 28));
  v7 = v6[3];
  v8 = v6[4];
  sub_1000035D0(v6, v7);
  if (((*(v8 + 96))(v7, v8) & 1) == 0)
  {
    v9 = v6[3];
    v10 = v6[4];
    sub_1000035D0(v6, v9);
    if (((*(v10 + 104))(v9, v10) & 1) == 0)
    {
      return 0;
    }
  }

  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = (v0 + *(v5 + 32));
  v14 = *v12;
  v13 = v12[1];
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v14;
  *(v11 + 40) = v13;

  v15 = String.init(format:_:)();

  return v15;
}

unint64_t sub_101118D98(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 1684632949;
  *(inited + 40) = 0xE400000000000000;
  v8 = (v1 + *(a1 + 28));
  v10 = v8[3];
  v9 = v8[4];
  sub_1000035D0(v8, v10);
  (*(*(*(v9 + 8) + 8) + 32))(v10);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  v14 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  return v14;
}

void sub_101118F38(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_101694478 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177A548);
    sub_10001F280(a3, v26);
    sub_100A1B224(a1);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_100A1B234(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v13 = 141558531;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v16 = v27;
      v15 = v28;
      sub_1000035D0(v26, v27);
      (*(*(*(v15 + 8) + 8) + 32))(v16);
      sub_1002FFBAC();
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v7 + 8))(v9, v6);
      sub_100007BAC(v26);
      v20 = sub_1000136BC(v17, v19, &v25);

      *(v13 + 14) = v20;
      *(v13 + 22) = 2114;
      sub_10111C928();
      swift_allocError();
      *v21 = a1;
      sub_100A1B224(a1);
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v22;
      *v14 = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "                    Error showing notification for %{private,mask.hash}s, error: %{public}@.", v13, 0x20u);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v24);
    }

    else
    {

      sub_100007BAC(v26);
    }
  }
}

id sub_101119244(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for DelegatedShareStartUserNotification(0);
  v7 = started - 8;
  __chkstk_darwin(started);
  v33 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DelegatedShareStartUserNotification;
  v9 = v33;
  sub_10111C97C(a1, v33, type metadata accessor for DelegatedShareStartUserNotification);
  v10 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v10 setDefaultActionURL:0];
  v11 = [objc_opt_self() defaultSound];
  [v10 setSound:v11];

  v12 = String._bridgeToObjectiveC()();
  [v10 setCategoryIdentifier:v12];

  v31 = enum case for LocalizationUtility.Table.delegatedSharing(_:);
  v30 = *(v3 + 104);
  v29[0] = v2;
  v30(v5);
  static LocalizationUtility.localizedString(key:table:)();
  v13 = *(v3 + 8);
  v29[1] = v3 + 8;
  v13(v5, v2);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v32 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  v15 = (v9 + *(v7 + 28));
  v16 = *v15;
  v17 = v15[1];
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100008C00();
  *(v14 + 32) = v16;
  *(v14 + 40) = v17;

  String.init(format:arguments:)();

  v18 = String._bridgeToObjectiveC()();

  [v10 setTitle:v18];

  v19 = v29[0];
  (v30)(v5, v31, v29[0]);
  static LocalizationUtility.localizedString(key:table:)();
  v13(v5, v19);
  v20 = String._bridgeToObjectiveC()();

  [v10 setBody:v20];

  [v10 setInterruptionLevel:2];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = v32;
  *(inited + 32) = 0x6564496572616873;
  *(inited + 40) = 0xEF7265696669746ELL;
  v22 = v33;
  v23 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v23;
  *(inited + 56) = v24;
  v25 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v38 = &type metadata for Bool;
  LOBYTE(v37) = 0;
  sub_1001E6224(&v37, v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v25;
  sub_100FFB368(v36, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v35);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 setUserInfo:isa];

  [v10 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v22, v34);
  [v10 setShouldUseRequestIdentifierForDismissalSync:0];
  return v10;
}

id sub_10111979C(uint64_t a1)
{
  found = type metadata accessor for NotifyWhenFoundUserNotification(0);
  __chkstk_darwin(found);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10111C97C(a1, v4, type metadata accessor for NotifyWhenFoundUserNotification);
  v5 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v5 setDefaultActionURL:0];
  v6 = [objc_opt_self() defaultSound];
  [v5 setSound:v6];

  LODWORD(v6) = v4[1];
  sub_100E1E03C(v4[1]);
  v7 = String._bridgeToObjectiveC()();

  [v5 setCategoryIdentifier:v7];

  v8 = String._bridgeToObjectiveC()();
  [v5 setTitle:v8];

  sub_101316A60();
  v9 = String._bridgeToObjectiveC()();

  [v5 setBody:v9];

  if (v6 == 67)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  [v5 setInterruptionLevel:v10];
  v11 = sub_101316C1C();
  v19 = &type metadata for Bool;
  LOBYTE(v18) = 1;
  sub_1001E6224(&v18, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v11;
  sub_100FFB368(v17, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v16);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 setUserInfo:isa];

  [v5 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v4, type metadata accessor for NotifyWhenFoundUserNotification);
  [v5 setShouldUseRequestIdentifierForDismissalSync:0];
  return v5;
}

id sub_101119A58(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DelegatedShareOwnerReunitedUserNotification(0) - 8;
  v32 = v6;
  __chkstk_darwin(v6);
  v33 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DelegatedShareOwnerReunitedUserNotification;
  v8 = v33;
  sub_10111C97C(a1, v33, type metadata accessor for DelegatedShareOwnerReunitedUserNotification);
  v9 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v9 setDefaultActionURL:0];
  v10 = [objc_opt_self() defaultSound];
  [v9 setSound:v10];

  v11 = String._bridgeToObjectiveC()();
  [v9 setCategoryIdentifier:v11];

  v30 = enum case for LocalizationUtility.Table.delegatedSharing(_:);
  v29 = *(v3 + 104);
  v28[0] = v2;
  v29(v5);
  static LocalizationUtility.localizedString(key:table:)();
  v12 = *(v3 + 8);
  v28[1] = v3 + 8;
  v12(v5, v2);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  v31 = xmmword_101385D80;
  *(v13 + 16) = xmmword_101385D80;
  v14 = (v8 + *(v6 + 32));
  v16 = *v14;
  v15 = v14[1];
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v16;
  *(v13 + 40) = v15;

  String.init(format:arguments:)();

  v17 = String._bridgeToObjectiveC()();

  [v9 setTitle:v17];

  v18 = v28[0];
  (v29)(v5, v30, v28[0]);
  static LocalizationUtility.localizedString(key:table:)();
  v12(v5, v18);
  v19 = String._bridgeToObjectiveC()();

  [v9 setBody:v19];

  [v9 setInterruptionLevel:2];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = v31;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101347590;
  v21 = v33;
  v22 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  v24 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v38 = &type metadata for Bool;
  LOBYTE(v37) = 0;
  sub_1001E6224(&v37, v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v24;
  sub_100FFB368(v36, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v35);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 setUserInfo:isa];

  [v9 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v21, v34);
  [v9 setShouldUseRequestIdentifierForDismissalSync:0];
  return v9;
}

id sub_101119FBC(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification(0) - 8;
  v32 = v6;
  __chkstk_darwin(v6);
  v33 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification;
  v8 = v33;
  sub_10111C97C(a1, v33, type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification);
  v9 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v9 setDefaultActionURL:0];
  v10 = [objc_opt_self() defaultSound];
  [v9 setSound:v10];

  v11 = String._bridgeToObjectiveC()();
  [v9 setCategoryIdentifier:v11];

  v30 = enum case for LocalizationUtility.Table.delegatedSharing(_:);
  v29 = *(v3 + 104);
  v28[0] = v2;
  v29(v5);
  static LocalizationUtility.localizedString(key:table:)();
  v12 = *(v3 + 8);
  v28[1] = v3 + 8;
  v12(v5, v2);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  v31 = xmmword_101385D80;
  *(v13 + 16) = xmmword_101385D80;
  v14 = (v8 + *(v6 + 32));
  v16 = *v14;
  v15 = v14[1];
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v16;
  *(v13 + 40) = v15;

  String.init(format:arguments:)();

  v17 = String._bridgeToObjectiveC()();

  [v9 setTitle:v17];

  v18 = v28[0];
  (v29)(v5, v30, v28[0]);
  static LocalizationUtility.localizedString(key:table:)();
  v12(v5, v18);
  v19 = String._bridgeToObjectiveC()();

  [v9 setBody:v19];

  [v9 setInterruptionLevel:2];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = v31;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101347590;
  v21 = v33;
  v22 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  v24 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v38 = &type metadata for Bool;
  LOBYTE(v37) = 0;
  sub_1001E6224(&v37, v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v24;
  sub_100FFB368(v36, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v35);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 setUserInfo:isa];

  [v9 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v21, v34);
  [v9 setShouldUseRequestIdentifierForDismissalSync:0];
  return v9;
}

id sub_10111A51C(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DelegatedShareExpirationUserNotification(0) - 8;
  v32 = v6;
  __chkstk_darwin(v6);
  v33 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DelegatedShareExpirationUserNotification;
  v8 = v33;
  sub_10111C97C(a1, v33, type metadata accessor for DelegatedShareExpirationUserNotification);
  v9 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v9 setDefaultActionURL:0];
  v10 = [objc_opt_self() defaultSound];
  [v9 setSound:v10];

  v11 = String._bridgeToObjectiveC()();
  [v9 setCategoryIdentifier:v11];

  v30 = enum case for LocalizationUtility.Table.delegatedSharing(_:);
  v29 = *(v3 + 104);
  v28[0] = v2;
  v29(v5);
  static LocalizationUtility.localizedString(key:table:)();
  v12 = *(v3 + 8);
  v28[1] = v3 + 8;
  v12(v5, v2);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  v31 = xmmword_101385D80;
  *(v13 + 16) = xmmword_101385D80;
  v14 = (v8 + *(v6 + 32));
  v16 = *v14;
  v15 = v14[1];
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100008C00();
  *(v13 + 32) = v16;
  *(v13 + 40) = v15;

  String.init(format:arguments:)();

  v17 = String._bridgeToObjectiveC()();

  [v9 setTitle:v17];

  v18 = v28[0];
  (v29)(v5, v30, v28[0]);
  static LocalizationUtility.localizedString(key:table:)();
  v12(v5, v18);
  v19 = String._bridgeToObjectiveC()();

  [v9 setBody:v19];

  [v9 setInterruptionLevel:2];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = v31;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101347590;
  v21 = v33;
  v22 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  v24 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v38 = &type metadata for Bool;
  LOBYTE(v37) = 0;
  sub_1001E6224(&v37, v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v24;
  sub_100FFB368(v36, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v35);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 setUserInfo:isa];

  [v9 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v21, v34);
  [v9 setShouldUseRequestIdentifierForDismissalSync:0];
  return v9;
}

id sub_10111AA80(uint64_t a1)
{
  v2 = type metadata accessor for LocalizationUtility.Table();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DelegatedSharMaxViewsUserNotification(0) - 8;
  __chkstk_darwin(v33);
  v32 = type metadata accessor for DelegatedSharMaxViewsUserNotification;
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v7;
  sub_10111C97C(a1, v7, type metadata accessor for DelegatedSharMaxViewsUserNotification);
  v8 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v8 setDefaultActionURL:0];
  v9 = [objc_opt_self() defaultSound];
  [v8 setSound:v9];

  v10 = String._bridgeToObjectiveC()();
  [v8 setCategoryIdentifier:v10];

  v29 = enum case for LocalizationUtility.Table.delegatedSharing(_:);
  v27 = *(v3 + 104);
  v27(v5);
  static LocalizationUtility.localizedString(key:table:)();
  v28 = *(v3 + 8);
  v11 = v2;
  v28(v5, v2);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  v30 = xmmword_101385D80;
  *(v12 + 16) = xmmword_101385D80;
  v13 = &v7[*(v33 + 32)];
  v15 = *v13;
  v14 = *(v13 + 1);
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v15;
  *(v12 + 40) = v14;

  String.init(format:arguments:)();

  v16 = String._bridgeToObjectiveC()();

  [v8 setTitle:v16];

  (v27)(v5, v29, v11);
  static LocalizationUtility.localizedString(key:table:)();
  v28(v5, v11);
  v17 = String._bridgeToObjectiveC()();

  [v8 setBody:v17];

  [v8 setInterruptionLevel:2];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = v30;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000101347590;
  v19 = v31;
  v20 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v20;
  *(inited + 56) = v21;
  v22 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v37 = &type metadata for Bool;
  LOBYTE(v36) = 0;
  sub_1001E6224(&v36, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v22;
  sub_100FFB368(v35, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v34);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 setUserInfo:isa];

  [v8 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v19, v32);
  [v8 setShouldUseRequestIdentifierForDismissalSync:0];
  return v8;
}

id sub_10111AFE0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for UnwantedTrackingUserNotification(0);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10111C97C(a1, v7, type metadata accessor for UnwantedTrackingUserNotification);
  v8 = [objc_allocWithZone(UNMutableNotificationContent) init];
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  *&v29 = 0xD000000000000026;
  *(&v29 + 1) = 0x800000010134AA30;
  v9._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v9);

  URL.init(string:)();

  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13 = 0;
  if ((*(v11 + 48))(v4, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v11 + 8))(v4, v10);
  }

  [v8 setDefaultActionURL:v13];

  v15 = [objc_opt_self() defaultSound];
  [v8 setSound:v15];

  v16 = *(v5 + 24);
  v17 = v7[v16];
  sub_100E1E03C(v7[v16]);
  v18 = String._bridgeToObjectiveC()();

  [v8 setCategoryIdentifier:v18];

  sub_100284940();
  v19 = String._bridgeToObjectiveC()();

  [v8 setTitle:v19];

  sub_100285338();
  v20 = String._bridgeToObjectiveC()();

  [v8 setBody:v20];

  if (v17 == 67)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  [v8 setInterruptionLevel:v21];
  v22 = sub_10090403C(_swiftEmptyArrayStorage);
  v30 = &type metadata for Bool;
  LOBYTE(v29) = 1;
  sub_1001E6224(&v29, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v22;
  sub_100FFB368(v28, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v27);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 setUserInfo:isa];

  [v8 setShouldIgnoreDoNotDisturb:1];
  sub_10111C9E4(v7, type metadata accessor for UnwantedTrackingUserNotification);
  [v8 setShouldUseRequestIdentifierForDismissalSync:1];
  return v8;
}

id sub_10111B408(uint64_t a1)
{
  v2 = type metadata accessor for PlaySoundUserNotification(0);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10111C97C(a1, v4, type metadata accessor for PlaySoundUserNotification);
  v5 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v5 setDefaultActionURL:0];
  v6 = [objc_opt_self() defaultSound];
  [v5 setSound:v6];

  v7 = v4[1];
  sub_100E1E03C(v4[1]);
  v8 = String._bridgeToObjectiveC()();

  [v5 setCategoryIdentifier:v8];

  sub_100846398();
  v9 = String._bridgeToObjectiveC()();

  [v5 setTitle:v9];

  sub_100846564();
  v10 = String._bridgeToObjectiveC()();

  [v5 setBody:v10];

  if (v7 == 67)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [v5 setInterruptionLevel:v11];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 1684632949;
  *(inited + 40) = 0xE400000000000000;
  v13 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  v15 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v23 = &type metadata for Bool;
  LOBYTE(v22) = 1;
  sub_1001E6224(&v22, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v15;
  sub_100FFB368(v21, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v20);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 setUserInfo:isa];

  [v5 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v4, type metadata accessor for PlaySoundUserNotification);
  [v5 setShouldUseRequestIdentifierForDismissalSync:0];
  return v5;
}

id sub_10111B74C(uint64_t a1)
{
  v28 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ItemShareRequestReceivedUserNotification(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ItemShareRequestReceivedUserNotification;
  sub_10111C97C(a1, v8, type metadata accessor for ItemShareRequestReceivedUserNotification);
  v9 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v9 setDefaultActionURL:0];
  v10 = [objc_opt_self() defaultSound];
  [v9 setSound:v10];

  v27 = v8[1];
  sub_100E1E03C(v27);
  v11 = String._bridgeToObjectiveC()();

  [v9 setCategoryIdentifier:v11];

  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  v26 = xmmword_101385D80;
  *(inited + 16) = xmmword_101385D80;
  v13 = &v8[*(v6 + 40)];
  v14 = *(v13 + 1);
  *(inited + 32) = *v13;
  *(inited + 40) = v14;
  v15 = v28;
  (*(v2 + 104))(v4, enum case for LocalizationUtility.Table.itemSharing(_:), v28);

  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v4, v15);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  String.init(format:arguments:)();

  v16 = String._bridgeToObjectiveC()();

  [v9 setTitle:v16];

  sub_100413438();
  v17 = String._bridgeToObjectiveC()();

  [v9 setBody:v17];

  if (v27 == 67)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  [v9 setInterruptionLevel:v18];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  v19 = swift_initStackObject();
  *(v19 + 16) = v26;
  *(v19 + 32) = 0x6564496572616873;
  *(v19 + 40) = 0xEF7265696669746ELL;
  v20 = UUID.uuidString.getter();
  *(v19 + 72) = &type metadata for String;
  *(v19 + 48) = v20;
  *(v19 + 56) = v21;
  v22 = sub_10090403C(v19);
  swift_setDeallocating();
  sub_10000B3A8(v19 + 32, &unk_101695C20, &unk_101386D90);
  v33 = &type metadata for Bool;
  LOBYTE(v32) = 1;
  sub_1001E6224(&v32, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v22;
  sub_100FFB368(v31, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v30);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 setUserInfo:isa];

  [v9 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v8, v29);
  [v9 setShouldUseRequestIdentifierForDismissalSync:0];
  return v9;
}

BOOL sub_10111BC4C(void *a1, char a2, char a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_1000035D0(a1, v10);
  if (((*(v11 + 120))(v10, v11) & 1) == 0)
  {
    return a3 != 5 && a2 == 5;
  }

  if (qword_101694478 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177A548);
  sub_10001F280(a1, v26);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    v18 = v27;
    v17 = v28;
    sub_1000035D0(v26, v27);
    (*(*(*(v17 + 8) + 8) + 32))(v18);
    sub_1002FFBAC();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    sub_100007BAC(v26);
    v22 = sub_1000136BC(v19, v21, &v25);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Not posting low battery notification for %s because battery cannot be replaced.", v15, 0xCu);
    sub_100007BAC(v16);
  }

  else
  {

    sub_100007BAC(v26);
  }

  return 0;
}

id sub_10111BEFC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LowBatteryUserNotification(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for LowBatteryUserNotification;
  sub_10111C97C(a1, v9, type metadata accessor for LowBatteryUserNotification);
  v10 = [objc_allocWithZone(UNMutableNotificationContent) init];
  [v10 setDefaultActionURL:0];
  v11 = [objc_opt_self() defaultSound];
  [v10 setSound:v11];

  v12 = v9[1];
  sub_100E1E03C(v9[1]);
  v13 = String._bridgeToObjectiveC()();

  [v10 setCategoryIdentifier:v13];

  sub_10111898C();
  v14 = String._bridgeToObjectiveC()();

  [v10 setTitle:v14];

  sub_101118B48();
  v15 = String._bridgeToObjectiveC()();

  [v10 setBody:v15];

  if (v12 == 67)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  [v10 setInterruptionLevel:v16];
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 1684632949;
  *(inited + 40) = 0xE400000000000000;
  v18 = &v9[*(v7 + 36)];
  v20 = *(v18 + 3);
  v19 = *(v18 + 4);
  sub_1000035D0(v18, v20);
  (*(*(*(v19 + 8) + 8) + 32))(v20);
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v3 + 8))(v5, v2);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v21;
  *(inited + 56) = v23;
  v24 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v33 = &type metadata for Bool;
  LOBYTE(v32) = 1;
  sub_1001E6224(&v32, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v24;
  sub_100FFB368(v31, 0xD000000000000023, 0x8000000101371AB0, isUniquelyReferenced_nonNull_native);
  sub_1006950E0(v30);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 setUserInfo:isa];

  [v10 setShouldIgnoreDoNotDisturb:0];
  sub_10111C9E4(v9, v29);
  [v10 setShouldUseRequestIdentifierForDismissalSync:0];
  return v10;
}

uint64_t sub_10111C318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v7 = type metadata accessor for LowBatteryUserNotification(0);
  __chkstk_darwin(v7);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UUID();
  v43 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694478 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177A548);
  sub_10001F280(a1, aBlock);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v41 = a4;
    v19 = v18;
    *&v51[0] = v18;
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v42 = a1;
    v21 = v46;
    v20 = v47;
    sub_1000035D0(aBlock, v46);
    (*(*(*(v20 + 1) + 8) + 32))(v21);
    sub_1002FFBAC();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v43 + 8))(v12, v10);
    sub_100007BAC(aBlock);
    v25 = sub_1000136BC(v22, v24, v51);
    a1 = v42;

    *(v17 + 14) = v25;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v14, v15, "Posting low battery notification for %{private,mask.hash}s,                                        level: %ld.", v17, 0x20u);
    sub_100007BAC(v19);
    a4 = v41;

    a3 = v40;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(a1, v9 + *(v7 + 28));
  *v9 = 17153;

  UUID.init()();
  v26 = (v9 + *(v7 + 32));
  *v26 = a3;
  v26[1] = a4;
  sub_10001F280(a1, v51);
  v27 = swift_allocObject();
  sub_10000A748(v51, v27 + 16);
  v50[3] = v7;
  v50[4] = &off_101668270;
  v28 = sub_1000280DC(v50);
  sub_10111C97C(v9, v28, type metadata accessor for LowBatteryUserNotification);
  v29 = objc_allocWithZone(UNUserNotificationCenter);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v29 initWithBundleIdentifier:v30];

  v32 = sub_10111BEFC(v28);
  UUID.uuidString.getter();
  v33 = v32;
  v34 = String._bridgeToObjectiveC()();

  v35 = [objc_opt_self() requestWithIdentifier:v34 content:v33 trigger:0 destinations:7];

  sub_10001F280(v50, v49);
  v36 = swift_allocObject();
  sub_10000A748(v49, v36 + 16);
  *(v36 + 56) = sub_10111C91C;
  *(v36 + 64) = v27;
  v47 = sub_100358EC4;
  v48 = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v46 = &unk_101668248;
  v37 = _Block_copy(aBlock);

  [v31 addNotificationRequest:v35 withCompletionHandler:v37];

  _Block_release(v37);
  sub_100007BAC(v50);

  return sub_10111C9E4(v9, type metadata accessor for LowBatteryUserNotification);
}

uint64_t type metadata accessor for LowBatteryUserNotification(uint64_t a1)
{
  result = qword_1016C8C00;
  if (!qword_1016C8C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10111C928()
{
  result = qword_1016C8BA0;
  if (!qword_1016C8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8BA0);
  }

  return result;
}

uint64_t sub_10111C97C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10111C9E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10111CA6C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = sub_10111CB10();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10111CB10()
{
  result = qword_1016C8C10;
  if (!qword_1016C8C10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016C8C10);
  }

  return result;
}

Swift::Int sub_10111CB80()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10111CC38(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10111CCDC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10111CD90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10111DDA0(*a1);
  *a2 = result;
  return result;
}

void sub_10111CDC0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x6465726961706E75;
  if (*v1 != 2)
  {
    v5 = 0x64656B636F6CLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x646572696170;
    v2 = 0xE600000000000000;
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

uint64_t sub_10111CE44()
{
  v1 = v0;
  v2 = 7104878;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v3 - 8);
  v5 = &v49[-v4];
  v6 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v49[-v8];
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(198);
  v10._countAndFlagsBits = 0xD00000000000001ELL;
  v10._object = 0x800000010137BD80;
  String.append(_:)(v10);
  v11 = type metadata accessor for UUID();
  sub_1002FFBAC();
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x4970756F7267202CLL;
  v13._object = 0xEB00000000203A64;
  String.append(_:)(v13);
  v14 = type metadata accessor for AccessoryPairingAnalytics(0);
  sub_1000D2A70(v0 + v14[5], v9, &qword_1016980D0, &unk_10138F3B0);
  v15 = *(v11 - 8);
  if ((*(v15 + 48))(v9, 1, v11) == 1)
  {
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    v18 = UUID.uuidString.getter();
    v16 = v19;
    (*(v15 + 8))(v9, v11);
    v17 = v18;
  }

  v20 = v16;
  String.append(_:)(*&v17);

  v21._countAndFlagsBits = 0x644974726170202CLL;
  v21._object = 0xEA0000000000203ALL;
  String.append(_:)(v21);
  v50 = *(v1 + v14[6]);
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._object = 0x800000010137BDA0;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  static String.Encoding.utf8.getter();
  v24 = String.init(data:encoding:)();
  if (!v25)
  {
    v24 = Data.hexString.getter();
  }

  String.append(_:)(*&v24);

  v26._countAndFlagsBits = 0xD000000000000012;
  v26._object = 0x800000010137BDC0;
  String.append(_:)(v26);
  String.append(_:)(*(v1 + v14[8]));
  v27._countAndFlagsBits = 0x64644163616D202CLL;
  v27._object = 0xEE00203A73736572;
  String.append(_:)(v27);
  sub_1000D2A70(v1 + v14[12], v5, &qword_1016A40D0, &unk_10138BE70);
  v28 = type metadata accessor for MACAddress();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v5, 1, v28) == 1)
  {
    sub_10000B3A8(v5, &qword_1016A40D0, &unk_10138BE70);
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    v32 = MACAddress.description.getter();
    v30 = v33;
    (*(v29 + 8))(v5, v28);
    v31 = v32;
  }

  v34 = v30;
  String.append(_:)(*&v31);

  v35._countAndFlagsBits = 0x746375646F727020;
  v35._object = 0xEE00203A61746144;
  String.append(_:)(v35);
  v36._countAndFlagsBits = sub_100313D58(*(v1 + v14[9]), *(v1 + v14[9] + 8));
  String.append(_:)(v36);

  v37._object = 0x800000010137BDE0;
  v37._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v37);
  v50 = *(v1 + v14[10]);
  _print_unlocked<A, B>(_:_:)();
  v38._countAndFlagsBits = 0xD000000000000012;
  v38._object = 0x800000010137BE00;
  String.append(_:)(v38);
  if (*(v1 + v14[11]))
  {
    if (*(v1 + v14[11]) == 1)
    {
      v39 = 0xE800000000000000;
      v40 = 0x63697373616C632ELL;
    }

    else
    {
      v39 = 0xEA00000000007967;
      v40 = 0x72656E45776F6C2ELL;
    }
  }

  else
  {
    v39 = 0xE800000000000000;
    v40 = 0x6E776F6E6B6E752ELL;
  }

  v41 = v39;
  String.append(_:)(*&v40);

  v42._countAndFlagsBits = 0xD000000000000011;
  v42._object = 0x800000010137BE20;
  String.append(_:)(v42);
  v43 = (v1 + v14[13]);
  if (v43[1])
  {
    v2 = *v43;
    v44 = v43[1];
  }

  else
  {
    v44 = 0xE300000000000000;
  }

  v45._countAndFlagsBits = v2;
  v45._object = v44;
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0x7473656D6974202CLL;
  v46._object = 0xEC0000003A706D61;
  String.append(_:)(v46);
  v47._countAndFlagsBits = Date.localISO8601.getter();
  String.append(_:)(v47);

  return v51;
}

double sub_10111D480@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MACAddress();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryPairingAnalytics(0);
  v8 = v7[14];
  static Date.trustedNow.getter(a2 + v8);
  if (qword_101694C68 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v9, qword_10177BAD0);
  v10 = type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_101694C70 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v11, qword_10177BAE8);
  v49 = v7[5];
  Row.subscript.getter();
  if (qword_101694C80 != -1)
  {
    swift_once();
  }

  v46 = v6;
  v12 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v12, qword_10177BB18);
  sub_100028088();
  Row.subscript.getter();
  *(a2 + v7[6]) = v53._countAndFlagsBits;
  if (qword_101694CB0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v13, qword_10177BBA8);
  Row.subscript.getter();
  v14 = v53;
  v52 = v53;
  sub_1000E0A3C();
  v15 = DataProtocol.isNull.getter();
  v50 = v8;
  if (v15)
  {
    sub_100016590(v14._countAndFlagsBits, v14._object);
    sub_10020223C();
    swift_allocError();
    *v16 = 5;
    *(v16 + 4) = 1;
    swift_willThrow();
LABEL_16:
    v24 = type metadata accessor for Row();
    (*(*(v24 - 8) + 8))(a1, v24);
    (*(*(v10 - 8) + 8))(a2, v10);
    sub_10000B3A8(a2 + v49, &qword_1016980D0, &unk_10138F3B0);
    if ((v15 & 1) == 0)
    {
      sub_100016590(*(a2 + v7[7]), *(a2 + v7[7] + 8));
    }

    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 8))(a2 + v50, v25);
    return result;
  }

  v17 = Data.trimmed.getter();
  v19 = v18;
  sub_100016590(v14._countAndFlagsBits, v14._object);
  v20 = (a2 + v7[7]);
  *v20 = v17;
  v20[1] = v19;
  if (qword_101694CB8 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v21, qword_10177BBC0);
  Row.subscript.getter();
  if (v53._object >> 60 == 15)
  {
    (*(v47 + 56))(a2 + v7[12], 1, 1, v48);
  }

  else
  {
    v22 = v46;
    v23 = v51;
    MACAddress.init(dataRepresentation:)();
    if (v23)
    {
      goto LABEL_16;
    }

    v51 = 0;
    v27 = v7[12];
    v29 = v47;
    v28 = v48;
    (*(v47 + 32))(a2 + v27, v22, v48);
    (*(v29 + 56))(a2 + v27, 0, 1, v28);
  }

  if (qword_101694C78 != -1)
  {
    swift_once();
  }

  v30 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v30, qword_10177BB00);
  Row.subscript.getter();
  object = v53._object;
  v32 = (a2 + v7[8]);
  *v32 = v53._countAndFlagsBits;
  v32[1] = object;
  if (qword_101694C90 != -1)
  {
    swift_once();
  }

  v33 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v33, qword_10177BB48);
  sub_10022A60C();
  Row.subscript.getter();
  countAndFlagsBits = v52._countAndFlagsBits;
  if (qword_101694C88 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177BB30);
  Row.subscript.getter();
  v35 = v55;
  v54 = countAndFlagsBits;
  sub_100101824();
  v53._countAndFlagsBits = FixedWidthInteger.data.getter();
  v53._object = v36;
  v54 = v35;
  v37 = FixedWidthInteger.data.getter();
  v39 = v38;
  Data.append(_:)();
  sub_100016590(v37, v39);
  *(a2 + v7[9]) = v53;
  if (qword_101694C98 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v30, qword_10177BB60);
  Row.subscript.getter();
  v40 = sub_10111DDA0(v53);
  if (v40 == 4)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  *(a2 + v7[10]) = v41;
  if (qword_101694CA0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v42, qword_10177BB78);
  Row.subscript.getter();
  if (v53._countAndFlagsBits == 1)
  {
    v43 = 2;
  }

  else
  {
    v43 = v53._countAndFlagsBits == 0;
  }

  *(a2 + v7[11]) = v43;
  if (qword_101694CA8 != -1)
  {
    swift_once();
  }

  v44 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v44, qword_10177BB90);
  Row.subscript.getter();
  v45 = type metadata accessor for Row();
  (*(*(v45 - 8) + 8))(a1, v45);
  result = *&v53._countAndFlagsBits;
  *(a2 + v7[13]) = v53;
  return result;
}

uint64_t type metadata accessor for AccessoryPairingAnalytics(uint64_t a1)
{
  result = qword_1016C8CA8;
  if (!qword_1016C8CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10111DDA0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C628, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_10111DE24(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10111DF6C(319, &qword_1016B1C20, &type metadata accessor for UUID);
    if (v2 <= 0x3F)
    {
      sub_10111DF6C(319, &qword_10169AC00, &type metadata accessor for MACAddress);
      if (v3 <= 0x3F)
      {
        sub_1000E3404();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10111DF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10111DFC4()
{
  result = qword_1016C8D08;
  if (!qword_1016C8D08)
  {
    sub_1000BC580(&qword_1016C8D10, qword_101408910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D08);
  }

  return result;
}

unint64_t sub_10111E02C()
{
  result = qword_1016C8D18;
  if (!qword_1016C8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D18);
  }

  return result;
}

double SendPairingStatusCommandPayloadv2.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10111E2B0(a2, v6);
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

uint64_t sub_10111E1B4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v8 = v8;
  }

LABEL_10:
  if (v8 != 85)
  {
    goto LABEL_34;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a4);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v12 != 2)
  {
    goto LABEL_35;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v11 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v11)
  {
    __break(1u);
LABEL_18:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v13 = v13;
  }

LABEL_20:
  if (v13 == 4)
  {
    if ((a6 >> 62) > 1)
    {
      if (a6 >> 62 == 2)
      {
        v18 = *(a5 + 16);
        v17 = *(a5 + 24);
        v11 = __OFSUB__(v17, v18);
        v16 = v17 - v18;
        if (!v11)
        {
LABEL_27:
          if (v16 == 1286)
          {
            *a7 = result;
            a7[1] = a2;
            a7[2] = a3;
            a7[3] = a4;
            a7[4] = a5;
            a7[5] = a6;
            return result;
          }

          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    else if (a6 >> 62 == 1)
    {
      LODWORD(v16) = HIDWORD(a5) - a5;
      if (!__OFSUB__(HIDWORD(a5), a5))
      {
        v16 = v16;
        goto LABEL_27;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10111E2B0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v15, v16);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v15);
    return sub_100007BAC(a1);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    sub_10015049C(v15, v16);
    v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v18 = v10;
    sub_10015049C(v15, v16);
    v11 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    sub_10111E1B4(v7, v8, v9, v18, v11, v12, v17);
    sub_100007BAC(v15);
    result = sub_100007BAC(a1);
    v14 = v17[1];
    *a2 = v17[0];
    a2[1] = v14;
    a2[2] = v17[2];
  }

  return result;
}

unint64_t sub_10111E430(uint64_t a1)
{
  *(a1 + 8) = sub_10111E460();
  result = sub_100F9BFA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10111E460()
{
  result = qword_1016C8D28;
  if (!qword_1016C8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D28);
  }

  return result;
}

unint64_t sub_10111E504()
{
  result = qword_1016C8D30;
  if (!qword_1016C8D30)
  {
    sub_1000BC580(&qword_1016C8D38, qword_101408C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D30);
  }

  return result;
}

unint64_t sub_10111E56C()
{
  result = qword_1016C8D40;
  if (!qword_1016C8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D40);
  }

  return result;
}

uint64_t sub_10111E5C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x800000010136FDB0 == a2)
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_10111E628(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  sub_100009894(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_100DE8BCC(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10111E888(uint64_t a1)
{
  v2 = type metadata accessor for BeaconIdentifier(0);
  v19 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - v7;
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  sub_100009894(&qword_1016C8D90, type metadata accessor for BeaconIdentifier, &unk_1013BEEC4);
  result = Set.init(minimumCapacity:)();
  v12 = 0;
  v20 = result;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  for (i = (v13 + 63) >> 6; v15; result = sub_10112BDD4(v8, type metadata accessor for BeaconIdentifier))
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_10112BD6C(*(a1 + 48) + *(v19 + 72) * (v18 | (v17 << 6)), v10, type metadata accessor for BeaconIdentifier);
    sub_10112BC34(v10, v5, type metadata accessor for BeaconIdentifier);
    sub_100DEFD8C(v8, v5);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= i)
    {

      return v20;
    }

    v15 = *(a1 + 64 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10111EACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10111EBC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    Hasher.init(_seed:)();
    Data.hash(into:)();
    v6 = Hasher._finalize()();
    v7 = a3 + 56;
    v8 = -1 << *(a3 + 32);
    v9 = v6 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      if (a1)
      {
        v11 = 0;
      }

      else
      {
        v11 = a2 == 0xC000000000000000;
      }

      v12 = !v11;
      v42 = v12;
      v13 = a2 >> 62;
      v14 = __OFSUB__(HIDWORD(a1), a1);
      v39 = v14;
      v37 = a2;
      v38 = HIDWORD(a1) - a1;
      v40 = v10;
      v41 = BYTE6(a2);
      v36 = a1;
      while (1)
      {
        v15 = (*(a3 + 48) + 16 * v9);
        v17 = *v15;
        v16 = v15[1];
        v18 = v16 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v18 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_37;
          }

          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          v25 = __OFSUB__(v23, v24);
          v22 = v23 - v24;
          if (v25)
          {
            goto LABEL_67;
          }

          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v18)
        {
          LODWORD(v22) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_68;
          }

          v22 = v22;
          if (v13 <= 1)
          {
LABEL_34:
            v26 = v41;
            if (v13)
            {
              v26 = v38;
              if (v39)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v22 = BYTE6(v16);
          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v13 != 2)
        {
          if (!v22)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v25 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v25)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
        }

LABEL_40:
        if (v22 == v26)
        {
          if (v22 < 1)
          {
            return 1;
          }

          if (v18 <= 1)
          {
            if (!v18)
            {
              *v44 = v17;
              *&v44[8] = v16;
              v44[10] = BYTE2(v16);
              v44[11] = BYTE3(v16);
              v44[12] = BYTE4(v16);
              v44[13] = BYTE5(v16);
              sub_100017D5C(v17, v16);
              sub_100771A28(v44, a1, a2, v43);
              sub_100016590(v17, v16);
              if (v43[0])
              {
                return 1;
              }

LABEL_61:
              v10 = v40;
              goto LABEL_14;
            }

            if (v17 >> 32 < v17)
            {
              goto LABEL_69;
            }

            sub_100017D5C(v17, v16);
            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v33 = __DataStorage._offset.getter();
              if (__OFSUB__(v17, v33))
              {
                goto LABEL_72;
              }

              v31 += v17 - v33;
            }

LABEL_59:
            __DataStorage._length.getter();
            v34 = v31;
            a1 = v36;
            a2 = v37;
            sub_100771A28(v34, v36, v37, v44);
            sub_100016590(v17, v16);
            if (v44[0])
            {
              return 1;
            }

            v7 = a3 + 56;
            goto LABEL_61;
          }

          if (v18 == 2)
          {
            v30 = *(v17 + 16);
            v29 = *(v17 + 24);
            sub_100017D5C(v17, v16);
            v31 = __DataStorage._bytes.getter();
            if (v31)
            {
              v32 = __DataStorage._offset.getter();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_71;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v44[6] = 0;
          *v44 = 0;
          sub_100017D5C(v17, v16);
          sub_100771A28(v44, a1, a2, v43);
          sub_100016590(v17, v16);
          if (v43[0])
          {
            return 1;
          }
        }

LABEL_14:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return 0;
        }
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v13 < 3;
      if (((v21 | v42) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v13 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

uint64_t sub_10111EFE8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = a1;
    Hasher.init(_seed:)();
    sub_10125403C(v3);
    String.hash(into:)();

    v4 = Hasher._finalize()();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE700000000000000;
        v9 = 0x7972616D697270;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xE900000000000079;
            v9 = 0x7261646E6F636573;
            break;
          case 2:
            v9 = 0xD000000000000019;
            v8 = 0x8000000101348160;
            break;
          case 3:
            v9 = 0xD00000000000001BLL;
            v8 = 0x8000000101348180;
            break;
          case 4:
            v9 = 0x646E7542646C6977;
            v8 = 0xEA0000000000656CLL;
            break;
          case 5:
            v9 = 0x417972616D697270;
            v8 = 0xEE00737365726464;
            break;
          case 6:
            v9 = 0xD000000000000010;
            v8 = 0x80000001013481C0;
            break;
          case 7:
            v9 = 0xD000000000000012;
            v8 = 0x80000001013475D0;
            break;
          case 8:
            v9 = 0xD000000000000011;
            v8 = 0x80000001013475F0;
            break;
          case 9:
            v9 = 0x697463656E6E6F63;
            v8 = 0xED000079654B6E6FLL;
            break;
          case 0xA:
            v9 = 0x656E774F7261656ELL;
            v8 = 0xEC00000079654B72;
            break;
          case 0xB:
            v9 = 0x656B6F546E696F6ALL;
            v8 = 0xE90000000000006ELL;
            break;
          case 0xC:
            v9 = 0xD000000000000015;
            v8 = 0x80000001013481F0;
            break;
          case 0xD:
            v9 = 0xD000000000000010;
            v8 = 0x8000000101348210;
            break;
          case 0xE:
            v9 = 0x7461636F4C626577;
            v8 = 0xEE0079654B6E6F69;
            break;
          case 0xF:
            v9 = 0x646174654D626577;
            v8 = 0xEB00000000617461;
            break;
          case 0x10:
            v9 = 0x6D65744974736F6CLL;
            v8 = 0xED00007365746144;
            break;
          case 0x11:
            v9 = 0xD000000000000014;
            v8 = 0x8000000101348240;
            break;
          case 0x12:
            v9 = 0xD000000000000016;
            v8 = 0x8000000101348260;
            break;
          default:
            break;
        }

        v10 = 0xE700000000000000;
        v11 = 0x7972616D697270;
        switch(v3)
        {
          case 1:
            v10 = 0xE900000000000079;
            if (v9 == 0x7261646E6F636573)
            {
              goto LABEL_58;
            }

            goto LABEL_59;
          case 2:
            v10 = 0x8000000101348160;
            if (v9 != 0xD000000000000019)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 3:
            v10 = 0x8000000101348180;
            if (v9 != 0xD00000000000001BLL)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 4:
            v10 = 0xEA0000000000656CLL;
            if (v9 != 0x646E7542646C6977)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 5:
            v14 = 0x417972616D697270;
            v15 = 0x737365726464;
            goto LABEL_48;
          case 6:
            v10 = 0x80000001013481C0;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 7:
            v10 = 0x80000001013475D0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 8:
            v10 = 0x80000001013475F0;
            if (v9 != 0xD000000000000011)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 9:
            v12 = 0x697463656E6E6F63;
            v13 = 0x79654B6E6FLL;
            goto LABEL_35;
          case 10:
            v11 = 0x656E774F7261656ELL;
            v10 = 0xEC00000079654B72;
            goto LABEL_57;
          case 11:
            v10 = 0xE90000000000006ELL;
            if (v9 != 0x656B6F546E696F6ALL)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 12:
            v10 = 0x80000001013481F0;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 13:
            v10 = 0x8000000101348210;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 14:
            v14 = 0x7461636F4C626577;
            v15 = 0x79654B6E6F69;
LABEL_48:
            v10 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v9 != v14)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 15:
            v10 = 0xEB00000000617461;
            if (v9 != 0x646174654D626577)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 16:
            v12 = 0x6D65744974736F6CLL;
            v13 = 0x7365746144;
LABEL_35:
            v10 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v9 != v12)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 17:
            v10 = 0x8000000101348240;
            if (v9 != 0xD000000000000014)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 18:
            v10 = 0x8000000101348260;
            if (v9 != 0xD000000000000016)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          default:
LABEL_57:
            if (v9 != v11)
            {
              goto LABEL_59;
            }

LABEL_58:
            if (v8 == v10)
            {

              v16 = 1;
              return v16 & 1;
            }

LABEL_59:
            v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v16)
            {
              return v16 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v16 & 1;
            }

            break;
        }
      }
    }
  }

  v16 = 0;
  return v16 & 1;
}

BOOL sub_10111F5D4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10111F67C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = a1;
    Hasher.init(_seed:)();
    sub_1012C5AB0(v3);
    String.hash(into:)();

    v4 = Hasher._finalize()();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v9 = 0xD000000000000015;
            v8 = 0x8000000101347FF0;
            break;
          case 2:
            v9 = 0xD000000000000016;
            v8 = 0x8000000101348010;
            break;
          case 3:
            v8 = 0xE600000000000000;
            v9 = 0x657461636F6CLL;
            break;
          case 4:
            v8 = 0xEC000000676E6972;
            v9 = 0x6168537472617473;
            break;
          case 5:
            v9 = 0x72616853706F7473;
            goto LABEL_19;
          case 6:
            v11 = 2036427888;
            goto LABEL_23;
          case 7:
            v11 = 1886352499;
LABEL_23:
            v9 = v11 | 0x6E756F5300000000;
            v8 = 0xE900000000000064;
            break;
          case 8:
            v9 = 0x61654C6E69676562;
            v8 = 0xED0000676E696873;
            break;
          case 9:
            v9 = 0x687361654C646E65;
LABEL_19:
            v8 = 0xEB00000000676E69;
            break;
          case 0xA:
            v9 = 0x4654426E69676562;
            v8 = 0xEE00676E69646E69;
            break;
          case 0xB:
            v9 = 0x6E69465442646E65;
            v10 = 1735289188;
            goto LABEL_30;
          case 0xC:
            v8 = 0xEC000000676E6967;
            v9 = 0x6E61526E69676562;
            break;
          case 0xD:
            v9 = 0x69676E6152646E65;
            v8 = 0xEA0000000000676ELL;
            break;
          case 0xE:
            v9 = 0x6F4C656C62616E65;
            v8 = 0xEE0065646F4D7473;
            break;
          case 0xF:
            v9 = 0x4C656C6261736964;
            v8 = 0xEF65646F4D74736FLL;
            break;
          case 0x10:
            v8 = 0xE600000000000000;
            v9 = 0x656D616E6572;
            break;
          case 0x11:
            v9 = 0x7463656E6E6F63;
            break;
          case 0x12:
            v8 = 0xEA00000000007463;
            v9 = 0x656E6E6F63736964;
            break;
          case 0x13:
            v9 = 0xD000000000000017;
            v8 = 0x80000001013480F0;
            break;
          case 0x14:
            v8 = 0xE600000000000000;
            v9 = 0x726961706E75;
            break;
          case 0x15:
            v9 = 0x65746167656C6564;
            v8 = 0xEE00657261685364;
            break;
          case 0x16:
            v9 = 0xD000000000000013;
            v8 = 0x8000000101348120;
            break;
          case 0x17:
            v9 = 0x6F69736963657270;
            v10 = 1481004654;
LABEL_30:
            v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        v12 = 0xE700000000000000;
        v13 = 0x6E776F6E6B6E75;
        switch(v3)
        {
          case 1:
            v12 = 0x8000000101347FF0;
            if (v9 == 0xD000000000000015)
            {
              goto LABEL_74;
            }

            goto LABEL_75;
          case 2:
            v12 = 0x8000000101348010;
            if (v9 != 0xD000000000000016)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 3:
            v12 = 0xE600000000000000;
            if (v9 != 0x657461636F6CLL)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 4:
            v12 = 0xEC000000676E6972;
            if (v9 != 0x6168537472617473)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 5:
            v18 = 0x72616853706F7473;
            goto LABEL_55;
          case 6:
            v19 = 2036427888;
            goto LABEL_61;
          case 7:
            v19 = 1886352499;
LABEL_61:
            v12 = 0xE900000000000064;
            if (v9 != (v19 | 0x6E756F5300000000))
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 8:
            v12 = 0xED0000676E696873;
            if (v9 != 0x61654C6E69676562)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 9:
            v18 = 0x687361654C646E65;
LABEL_55:
            v12 = 0xEB00000000676E69;
            if (v9 != v18)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 10:
            v14 = 0x4654426E69676562;
            v15 = 0x676E69646E69;
            goto LABEL_66;
          case 11:
            v16 = 0x6E69465442646E65;
            v17 = 1735289188;
            goto LABEL_79;
          case 12:
            v12 = 0xEC000000676E6967;
            if (v9 != 0x6E61526E69676562)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 13:
            v12 = 0xEA0000000000676ELL;
            if (v9 != 0x69676E6152646E65)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 14:
            v14 = 0x6F4C656C62616E65;
            v15 = 0x65646F4D7473;
            goto LABEL_66;
          case 15:
            v12 = 0xEF65646F4D74736FLL;
            if (v9 != 0x4C656C6261736964)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 16:
            v12 = 0xE600000000000000;
            if (v9 != 0x656D616E6572)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 17:
            if (v9 != 0x7463656E6E6F63)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 18:
            v12 = 0xEA00000000007463;
            if (v9 != 0x656E6E6F63736964)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 19:
            v13 = 0xD000000000000017;
            v12 = 0x80000001013480F0;
            goto LABEL_73;
          case 20:
            v12 = 0xE600000000000000;
            if (v9 != 0x726961706E75)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 21:
            v14 = 0x65746167656C6564;
            v15 = 0x657261685364;
LABEL_66:
            v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v9 != v14)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 22:
            v12 = 0x8000000101348120;
            if (v9 != 0xD000000000000013)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 23:
            v16 = 0x6F69736963657270;
            v17 = 1481004654;
LABEL_79:
            v12 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v9 != v16)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          default:
LABEL_73:
            if (v9 != v13)
            {
              goto LABEL_75;
            }

LABEL_74:
            if (v8 == v12)
            {

              v20 = 1;
              return v20 & 1;
            }

LABEL_75:
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v20)
            {
              return v20 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v20 & 1;
            }

            break;
        }
      }
    }
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10111FDB4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v7 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = a4 + 56;
  v10 = -1 << *(a4 + 32);
  v11 = v8 & ~v10;
  if (((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  v13 = *(a4 + 48);
  while (1)
  {
    v14 = (v13 + 24 * v11);
    if (*v14 == v7)
    {
      v15 = *(v14 + 1) == a2 && *(v14 + 2) == a3;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }
    }

    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10111FED8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v6 = a2 >> 60;
  if (a2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  if (a1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2 == 0xC000000000000000;
  }

  v12 = !v11;
  v47 = v12;
  v13 = a2 >> 62;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v45 = v14;
  v46 = v10;
  v48 = 0;
  while (1)
  {
    v15 = (*(a3 + 48) + 16 * v9);
    v17 = *v15;
    v16 = v15[1];
    if (v16 >> 60 == 15)
    {
      if (v6 > 0xE)
      {
        sub_10002E98C(v17, v16);
        sub_10002E98C(a1, a2);
        goto LABEL_77;
      }

      goto LABEL_20;
    }

    if (v6 <= 0xE)
    {
      break;
    }

LABEL_20:
    sub_10002E98C(v17, v16);
    sub_10002E98C(a1, a2);
    sub_100429EA8(v17, v16);
    v18 = a1;
    v19 = a2;
LABEL_21:
    sub_100429EA8(v18, v19);
LABEL_22:
    v9 = (v9 + 1) & v10;
    v13 = a2 >> 62;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v20 = v16 >> 62;
  if (v16 >> 62 == 3)
  {
    if (v17)
    {
      v21 = 0;
    }

    else
    {
      v21 = v16 == 0xC000000000000000;
    }

    v23 = !v21 || v13 < 3;
    if (((v23 | v47) & 1) == 0)
    {
      sub_10002E98C(0, 0xC000000000000000);
      sub_10002E98C(0, 0xC000000000000000);
      sub_100429EA8(0, 0xC000000000000000);
      v17 = 0;
      goto LABEL_77;
    }

LABEL_46:
    v24 = 0;
    if (v13 > 1)
    {
      goto LABEL_47;
    }

LABEL_43:
    v28 = BYTE6(a2);
    if (v13)
    {
      v28 = HIDWORD(a1) - a1;
      if (v45)
      {
        goto LABEL_80;
      }
    }

LABEL_49:
    if (v24 == v28)
    {
      if (v24 < 1)
      {
        goto LABEL_76;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&v50[6] = 0;
          *v50 = 0;
          sub_10002E98C(v17, v16);
          sub_10002E98C(v17, v16);
          sub_10002E98C(a1, a2);
          goto LABEL_73;
        }

        v31 = *(v17 + 16);
        v43 = *(v17 + 24);
        v44 = v6;
        sub_10002E98C(v17, v16);
        sub_10002E98C(v17, v16);
        sub_10002E98C(a1, a2);
        v32 = __DataStorage._bytes.getter();
        if (v32)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_85;
          }

          v32 += v31 - v33;
        }

        if (__OFSUB__(v43, v31))
        {
          goto LABEL_84;
        }

        __DataStorage._length.getter();
        v34 = v32;
        v35 = a1;
        v36 = a2;
        v37 = v48;
      }

      else
      {
        if (!v20)
        {
          *v50 = v17;
          *&v50[8] = v16;
          v50[10] = BYTE2(v16);
          v50[11] = BYTE3(v16);
          v50[12] = BYTE4(v16);
          v50[13] = BYTE5(v16);
          sub_10002E98C(v17, v16);
          sub_10002E98C(v17, v16);
          sub_10002E98C(a1, a2);
LABEL_73:
          sub_100771A28(v50, a1, a2, &v49);
          sub_100429EA8(v17, v16);
          sub_100429EA8(a1, a2);
          v41 = v49;
          sub_100429EA8(v17, v16);
          if (v41)
          {
            return 1;
          }

LABEL_74:
          v10 = v46;
          goto LABEL_22;
        }

        v44 = v6;
        if (v17 >> 32 < v17)
        {
          goto LABEL_83;
        }

        sub_10002E98C(v17, v16);
        sub_10002E98C(v17, v16);
        sub_10002E98C(a1, a2);
        v38 = __DataStorage._bytes.getter();
        if (v38)
        {
          v39 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v39))
          {
            goto LABEL_86;
          }

          v38 += v17 - v39;
        }

        v37 = v48;
        __DataStorage._length.getter();
        v34 = v38;
        v35 = a1;
        v36 = a2;
      }

      sub_100771A28(v34, v35, v36, v50);
      sub_100429EA8(v17, v16);
      sub_100429EA8(a1, a2);
      v40 = v50[0];
      sub_100429EA8(v17, v16);
      if (v40)
      {
        return 1;
      }

      v48 = v37;
      v6 = v44;
      goto LABEL_74;
    }

LABEL_55:
    sub_10002E98C(v17, v16);
    sub_10002E98C(a1, a2);
    sub_100429EA8(a1, a2);
    v18 = v17;
    v19 = v16;
    goto LABEL_21;
  }

  if (v20 <= 1)
  {
    if (v20)
    {
      LODWORD(v24) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_81;
      }

      v24 = v24;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v24 = BYTE6(v16);
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_43;
  }

  if (v20 != 2)
  {
    goto LABEL_46;
  }

  v26 = *(v17 + 16);
  v25 = *(v17 + 24);
  v27 = __OFSUB__(v25, v26);
  v24 = v25 - v26;
  if (v27)
  {
    goto LABEL_82;
  }

  if (v13 <= 1)
  {
    goto LABEL_43;
  }

LABEL_47:
  if (v13 == 2)
  {
    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
    }

    goto LABEL_49;
  }

  if (v24)
  {
    goto LABEL_55;
  }

LABEL_76:
  sub_10002E98C(v17, v16);
  sub_10002E98C(a1, a2);
  sub_100429EA8(a1, a2);
LABEL_77:
  sub_100429EA8(v17, v16);
  return 1;
}

BOOL sub_1011204C8(Swift::UInt8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_101120594(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = qword_101408EF0[a1];
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_101408EF0[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_101120674(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (static String._unconditionallyBridgeFromObjectiveC(_:)(), Hasher.init(_seed:)(), String.hash(into:)(), v3 = Hasher._finalize()(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

BOOL sub_1011207C8(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = static Hasher._hash(seed:bytes:count:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_101120874(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_101120940(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = qword_101409050[a1];
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_101409050[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

Swift::Int sub_101120B44(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B320C0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_101128E3C(v5);
  *a1 = v2;
  return result;
}

void sub_101120D20(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v20);
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v7);
  v8 = v20;
  if (v20)
  {
    sub_1000E1F00(&v20);
    v9 = [(objc_class *)v8 valueStore];
    [v9 resetChangedKeys];

    v10 = [(objc_class *)v8 encryptedValueStore];
    [v10 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for LostModeInfoRecord(0);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v14 = qword_10177BA50;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  isa = CKRecordID.init(recordName:zoneID:)(v15, v14).super.isa;
  v17 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v19._object = 0x800000010137BE70;
  v19._countAndFlagsBits = 0xD000000000000012;
  v20 = CKRecord.init(recordType:recordID:)(v19, isa).super.isa;
  sub_1000E1F00(&v20);
}

void sub_101120F7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v20);
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v7);
  v8 = v20;
  if (v20)
  {
    sub_100E10318(&v20);
    v9 = [(objc_class *)v8 valueStore];
    [v9 resetChangedKeys];

    v10 = [(objc_class *)v8 encryptedValueStore];
    [v10 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for OwnerSharingCircle(0);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v14 = qword_10177BA50;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  isa = CKRecordID.init(recordName:zoneID:)(v15, v14).super.isa;
  v17 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v19._object = 0x8000000101364340;
  v19._countAndFlagsBits = 0xD000000000000012;
  v20 = CKRecord.init(recordType:recordID:)(v19, isa).super.isa;
  sub_100E10318(&v20);
}

void sub_1011211D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v20);
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v7);
  v8 = v20;
  if (v20)
  {
    sub_100D6B858(&v20);
    v9 = [(objc_class *)v8 valueStore];
    [v9 resetChangedKeys];

    v10 = [(objc_class *)v8 encryptedValueStore];
    [v10 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for SharingCircleSecret(0);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v14 = qword_10177BA50;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  isa = CKRecordID.init(recordName:zoneID:)(v15, v14).super.isa;
  v17 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v19._object = 0x8000000101351330;
  v19._countAndFlagsBits = 0xD000000000000013;
  v20 = CKRecord.init(recordType:recordID:)(v19, isa).super.isa;
  sub_100D6B858(&v20);
}

void sub_1011214EC(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, void *a4, void (*a5)(Class *))
{
  v10 = *a1;
  v11 = a1[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_12;
    }

    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    goto LABEL_8;
  }

  if (v12)
  {
    v13 = v10;
    v14 = v10 >> 32;
LABEL_8:
    if (v13 == v14)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v11 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = objc_autoreleasePoolPush();
  sub_101122FBC(v10, v11, &v28);
  if (v5)
  {
    objc_autoreleasePoolPop(v15);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v15);
  v16 = v28;
  if (v28)
  {
    a5(&v28);
    v17 = [(objc_class *)v16 valueStore];
    [v17 resetChangedKeys];

    v18 = [(objc_class *)v16 encryptedValueStore];
    [v18 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  a2(0);
  v19 = UUID.uuidString.getter();
  v21 = v20;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v22 = qword_10177BA50;
  v23._countAndFlagsBits = v19;
  v23._object = v21;
  isa = CKRecordID.init(recordName:zoneID:)(v23, v22).super.isa;
  v25 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v26 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v27._countAndFlagsBits = a3;
  v27._object = a4;
  v28 = CKRecord.init(recordType:recordID:)(v27, isa).super.isa;
  a5(&v28);
}

void sub_1011218E0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v20);
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v7);
  v8 = v20;
  if (v20)
  {
    sub_10051E304(&v20);
    v9 = [(objc_class *)v8 valueStore];
    [v9 resetChangedKeys];

    v10 = [(objc_class *)v8 encryptedValueStore];
    [v10 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for OwnedBeaconGroup(0);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v14 = qword_10177BA50;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  isa = CKRecordID.init(recordName:zoneID:)(v15, v14).super.isa;
  v17 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v19._countAndFlagsBits = 0x72476E6F63616542;
  v19._object = 0xEB0000000070756FLL;
  v20 = CKRecord.init(recordType:recordID:)(v19, isa).super.isa;
  sub_10051E304(&v20);
}

void sub_101121B40(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &isa);
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v7);
  v8 = isa;
  if (isa)
  {
    sub_100D6314C(&isa);
    v9 = [(objc_class *)v8 valueStore];
    [v9 resetChangedKeys];

    v10 = [(objc_class *)v8 encryptedValueStore];
    [v10 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for OwnedBeaconRecord(0);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v14 = qword_10177BA50;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  v16.super.isa = CKRecordID.init(recordName:zoneID:)(v15, v14).super.isa;
  v17 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  if (qword_101694E70 != -1)
  {
    swift_once();
  }

  v19 = qword_10177C060;
  v20 = *algn_10177C068;

  v21._countAndFlagsBits = v19;
  v21._object = v20;
  isa = CKRecord.init(recordType:recordID:)(v21, v16).super.isa;
  sub_100D6314C(&isa);
}

void sub_101121DD0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v20);
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v7);
  v8 = v20;
  if (v20)
  {
    sub_100DE1A5C(&v20);
    v9 = [(objc_class *)v8 valueStore];
    [v9 resetChangedKeys];

    v10 = [(objc_class *)v8 encryptedValueStore];
    [v10 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for BeaconNamingRecord(0);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v14 = qword_10177BA50;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  isa = CKRecordID.init(recordName:zoneID:)(v15, v14).super.isa;
  v17 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v19._object = 0x800000010134BC20;
  v19._countAndFlagsBits = 0xD000000000000012;
  v20 = CKRecord.init(recordType:recordID:)(v19, isa).super.isa;
  sub_100DE1A5C(&v20);
}

void sub_10112202C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_100152D44(a1, &v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for KeyAlignmentRecord(0);
  v12 = UUID.uuidString.getter();
  v14 = v13;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v15 = qword_10177BA50;
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  isa = CKRecordID.init(recordName:zoneID:)(v16, v15).super.isa;
  v18 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._object = 0x8000000101364380;
  v20._countAndFlagsBits = 0xD000000000000012;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_100152D44(a1, &v21);
}

void sub_101122288(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v20);
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v7);
  v8 = v20;
  if (v20)
  {
    sub_1011D8C44(&v20);
    v9 = [(objc_class *)v8 valueStore];
    [v9 resetChangedKeys];

    v10 = [(objc_class *)v8 encryptedValueStore];
    [v10 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for SharedBeaconRecord(0);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v14 = qword_10177BA50;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  isa = CKRecordID.init(recordName:zoneID:)(v15, v14).super.isa;
  v17 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v19._object = 0x800000010134BC40;
  v19._countAndFlagsBits = 0xD000000000000012;
  v20 = CKRecord.init(recordType:recordID:)(v19, isa).super.isa;
  sub_1011D8C44(&v20);
}

void sub_1011224E4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v20);
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v7);
  v8 = v20;
  if (v20)
  {
    sub_10032771C(&v20);
    v9 = [(objc_class *)v8 valueStore];
    [v9 resetChangedKeys];

    v10 = [(objc_class *)v8 encryptedValueStore];
    [v10 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for MemberSharingCircle(0);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v14 = qword_10177BA50;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  isa = CKRecordID.init(recordName:zoneID:)(v15, v14).super.isa;
  v17 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v19._object = 0x8000000101364320;
  v19._countAndFlagsBits = 0xD000000000000013;
  v20 = CKRecord.init(recordType:recordID:)(v19, isa).super.isa;
  sub_10032771C(&v20);
}

void sub_101122740(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v20);
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v7);
  v8 = v20;
  if (v20)
  {
    sub_101104A14(&v20);
    v9 = [(objc_class *)v8 valueStore];
    [v9 resetChangedKeys];

    v10 = [(objc_class *)v8 encryptedValueStore];
    [v10 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for OwnedDeviceKeyRecord(0);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v14 = qword_10177BA50;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  isa = CKRecordID.init(recordName:zoneID:)(v15, v14).super.isa;
  v17 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v19._object = 0x8000000101364360;
  v19._countAndFlagsBits = 0xD000000000000014;
  v20 = CKRecord.init(recordType:recordID:)(v19, isa).super.isa;
  sub_101104A14(&v20);
}

void sub_10112299C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v20);
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v7);
  v8 = v20;
  if (v20)
  {
    sub_1004ECA50(&v20);
    v9 = [(objc_class *)v8 valueStore];
    [v9 resetChangedKeys];

    v10 = [(objc_class *)v8 encryptedValueStore];
    [v10 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for NotifyWhenFoundRecord(0);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v14 = qword_10177BA50;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  isa = CKRecordID.init(recordName:zoneID:)(v15, v14).super.isa;
  v17 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v19._object = 0x80000001013643C0;
  v19._countAndFlagsBits = 0xD000000000000015;
  v20 = CKRecord.init(recordType:recordID:)(v19, isa).super.isa;
  sub_1004ECA50(&v20);
}

void sub_101122BF8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v20);
  if (v1)
  {
    objc_autoreleasePoolPop(v7);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v7);
  v8 = v20;
  if (v20)
  {
    sub_100D18060(&v20);
    v9 = [(objc_class *)v8 valueStore];
    [v9 resetChangedKeys];

    v10 = [(objc_class *)v8 encryptedValueStore];
    [v10 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  type metadata accessor for BeaconEstimatedLocation(0);
  v11 = UUID.uuidString.getter();
  v13 = v12;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v14 = qword_10177BA50;
  v15._countAndFlagsBits = v11;
  v15._object = v13;
  isa = CKRecordID.init(recordName:zoneID:)(v15, v14).super.isa;
  v17 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v19._object = 0x80000001013643A0;
  v19._countAndFlagsBits = 0xD000000000000017;
  v20 = CKRecord.init(recordType:recordID:)(v19, isa).super.isa;
  sub_100D18060(&v20);
}

Class sub_101122E54()
{
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v3 = qword_10177BA50;
  v4._countAndFlagsBits = v0;
  v4._object = v2;
  isa = CKRecordID.init(recordName:zoneID:)(v4, v3).super.isa;
  v6 = static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v7 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Failed to unarchive record -- creating new one", 46, 2, _swiftEmptyArrayStorage);

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v8._object = 0x800000010136FDB0;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v9 = CKRecord.init(recordType:recordID:)(v8, isa).super.isa;
  v11 = v9;
  sub_10015AAC0(&v11);
  return v9;
}

void sub_101122FBC(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_100017D5C(a1, a2);
  v8 = sub_101129808();
  if (v3)
  {
    sub_100016590(a1, a2);
    v9 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100008C00();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v14, "Unable to create unarchiver: %@", 31, 2, v10);

    v15 = 0;
  }

  else
  {
    v16 = v8;
    sub_100016590(a1, a2);
    [v16 _enableStrictSecureDecodingMode];
    v17 = [objc_allocWithZone(CKRecord) initWithCoder:v16];
    if (v17)
    {
      v15 = v17;
    }

    else
    {
      v18 = static os_log_type_t.error.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v19 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

      v15 = 0;
    }
  }

  *a3 = v15;
}

uint64_t CKRecord.description.getter()
{
  v1 = v0;
  if (!os_variant_has_internal_diagnostics())
  {
    return 0x657463616465723CLL;
  }

  *&v79 = v0;
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1000BC4D4(&qword_1016C8D48, &qword_101408CD8);
  _print_unlocked<A, B>(_:_:)();
  v3 = v81;
  v2 = v82;
  v4 = [v0 recordID];
  v5 = [v4 zoneID];

  v6 = [v0 recordID];
  v7 = [v6 recordName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v81 = v8;
  v82 = v10;
  v11._countAndFlagsBits = 10298;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12 = [v5 zoneName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 58;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18 = [v5 ownerName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24 = v82;
  v77 = v81;
  v25 = [v1 encryptedValues];
  swift_getObjectType();
  v26 = [v25 changedKeys];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = sub_101129930(v27);

  v29 = [v25 allKeys];
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v81 = v30;

  sub_101120B44(&v81);

  v31 = v81;
  v32 = [v1 recordChangeTag];
  if (v32)
  {
    v33 = v32;
    v34 = v31;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v81 = 0x3D676174202CLL;
    v82 = 0xE600000000000000;
    v38._countAndFlagsBits = v35;
    v31 = v34;
    v38._object = v37;
    String.append(_:)(v38);

    v39 = v82;
    v76 = v81;
    v40 = *(v34 + 16);
    if (v40)
    {
LABEL_4:
      v71 = v39;
      v72 = v24;
      v73 = v3;
      v74 = v2;
      v75 = v5;
      sub_101123BB8(0, v40, 0);
      v41 = 0;
      v78 = v31 + 32;
      v42 = v28 + 56;
      while (1)
      {
        v43 = v78 + 16 * v41;
        v44 = *v43;
        v45 = *(v43 + 8);
        if (*(v28 + 16))
        {
          Hasher.init(_seed:)();

          String.hash(into:)();
          v46 = Hasher._finalize()();
          v47 = -1 << *(v28 + 32);
          v48 = v46 & ~v47;
          if ((*(v42 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
          {
            v49 = ~v47;
            while (1)
            {
              v50 = (*(v28 + 48) + 16 * v48);
              v51 = *v50 == v44 && v50[1] == v45;
              if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v48 = (v48 + 1) & v49;
              if (((*(v42 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            v81 = v44;
            v82 = v45;

            v54._countAndFlagsBits = 42;
            v54._object = 0xE100000000000000;
            String.append(_:)(v54);
            v52 = v81;
            v53 = v82;
            goto LABEL_18;
          }
        }

        else
        {
        }

LABEL_16:

        v52 = v44;
        v53 = v45;
LABEL_18:
        v55 = v53;
        String.append(_:)(*&v52);

        v56._countAndFlagsBits = 2112800;
        v56._object = 0xE300000000000000;
        String.append(_:)(v56);
        CKRecordKeyValueSetting.subscript.getter();
        if (v80)
        {
          sub_10000A748(&v79, &v81);
        }

        else
        {
          v83 = &type metadata for String;
          v84 = &protocol witness table for String;
          v81 = 0;
          v82 = 0xE000000000000000;
        }

        sub_1000BC4D4(&qword_1016C8D50, &qword_101408CE0);
        _print_unlocked<A, B>(_:_:)();
        sub_100007BAC(&v81);

        v58 = _swiftEmptyArrayStorage[2];
        v57 = _swiftEmptyArrayStorage[3];
        if (v58 >= v57 >> 1)
        {
          sub_101123BB8((v57 > 1), v58 + 1, 1);
        }

        ++v41;
        _swiftEmptyArrayStorage[2] = v58 + 1;
        v59 = &_swiftEmptyArrayStorage[2 * v58];
        v59[4] = 0;
        v59[5] = 0xE000000000000000;
        if (v41 == v40)
        {

          v2 = v74;
          v5 = v75;
          v24 = v72;
          v3 = v73;
          v39 = v71;
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    v76 = 0;
    v39 = 0xE000000000000000;
    v40 = *(v31 + 16);
    if (v40)
    {
      goto LABEL_4;
    }
  }

LABEL_28:
  v81 = _swiftEmptyArrayStorage;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1000041A4(&qword_1016B7CB0, &qword_1016B0470, &qword_10138EB80, &protocol conformance descriptor for [A]);
  v61 = BidirectionalCollection<>.joined(separator:)();
  v63 = v62;

  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v81 = 0x726F6365524B433CLL;
  v82 = 0xEB00000000203A64;
  v64._countAndFlagsBits = v3;
  v64._object = v2;
  String.append(_:)(v64);

  v65._countAndFlagsBits = 0x64726F636572203BLL;
  v65._object = 0xEB000000003D6449;
  String.append(_:)(v65);
  v66._countAndFlagsBits = v77;
  v66._object = v24;
  String.append(_:)(v66);

  v67._countAndFlagsBits = v76;
  v67._object = v39;
  String.append(_:)(v67);

  v68._countAndFlagsBits = 31520;
  v68._object = 0xE200000000000000;
  String.append(_:)(v68);
  v69._countAndFlagsBits = v61;
  v69._object = v63;
  String.append(_:)(v69);

  v70._countAndFlagsBits = 15997;
  v70._object = 0xE200000000000000;
  String.append(_:)(v70);
  swift_unknownObjectRelease();

  return v81;
}

uint64_t sub_1011239D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = objc_autoreleasePoolPush();
  v6 = a3(v3);
  objc_autoreleasePoolPop(v5);
  return v6;
}

uint64_t sub_101123A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void *a5, void (*a6)(Class *))
{
  v11 = objc_autoreleasePoolPush();
  sub_1011214EC(v6, a3, a4, a5, a6);
  v13 = v12;
  objc_autoreleasePoolPop(v11);
  return v13;
}

uint64_t sub_101123B28(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

char *sub_101123BB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011258B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101123BD8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011259C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101123BF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101125C34(a1, a2, a3, *v3, &qword_10169EF40, &qword_10139FC28);
  *v3 = result;
  return result;
}

char *sub_101123C28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101125C34(a1, a2, a3, *v3, &qword_10169D108, &qword_10139AAA8);
  *v3 = result;
  return result;
}

void *sub_101123C58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016A74C8, &unk_1013B6248, &qword_101697240, &unk_10138BDA0);
  *v3 = result;
  return result;
}

char *sub_101123C98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101125D58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101123CB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101125E64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101123CD8(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8D70, &qword_101408D10, type metadata accessor for KeySyncMetadata);
  *v3 = result;
  return result;
}

char *sub_101123D1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112860C(a1, a2, a3, *v3, &qword_101699368, &unk_1013B34B0);
  *v3 = result;
  return result;
}

void *sub_101123D4C(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &unk_1016A9A10, &qword_1013A07C0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

char *sub_101123D90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101125F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101123DB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101126090(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101123DD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112619C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101123DF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011270D8(a1, a2, a3, *v3, &qword_1016C8EA8, &qword_101408E00, &type metadata for NearOwnerAdvertisement);
  *v3 = result;
  return result;
}

void *sub_101123E28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112630C(a1, a2, a3, *v3, &qword_1016C8EB0, &qword_101408E08, &qword_1016B9BC0, &qword_1013E3730);
  *v3 = result;
  return result;
}

char *sub_101123E68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011270D8(a1, a2, a3, *v3, &qword_1016C8EB8, &qword_101408E10, &type metadata for ConnectionKey);
  *v3 = result;
  return result;
}

void *sub_101123EA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112630C(a1, a2, a3, *v3, &qword_1016C8EC0, &qword_101408E18, &qword_1016B9BC8, &unk_1013E3738);
  *v3 = result;
  return result;
}

void *sub_101123EE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112630C(a1, a2, a3, *v3, &qword_1016C8EC8, &qword_101408E20, &qword_1016C8ED0, &qword_101408E28);
  *v3 = result;
  return result;
}

void *sub_101123F20(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &unk_101697F80, &unk_10138CDC0, &qword_1016C8EF0, &qword_101408E48);
  *v3 = result;
  return result;
}

void *sub_101123F60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F60, &qword_101408EA0, &qword_1016A9F20, &qword_1013BCC18);
  *v3 = result;
  return result;
}

void *sub_101123FA0(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3CB0, &unk_1013D7360, type metadata accessor for MemberSharingCircle);
  *v3 = result;
  return result;
}

void *sub_101123FE4(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_101698E50, &unk_101390D40, type metadata accessor for OwnerSharingCircle);
  *v3 = result;
  return result;
}

void *sub_101124028(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3AA0, &qword_1013D4848, type metadata accessor for TimeBasedKey);
  *v3 = result;
  return result;
}

void *sub_10112406C(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3D48, &qword_1013D4AB0, type metadata accessor for KeyDropJoinToken);
  *v3 = result;
  return result;
}

char *sub_1011240B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101126490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011240D0(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016AB880, &unk_1013E3620, type metadata accessor for OwnSubmitLocationInfo);
  *v3 = result;
  return result;
}

void *sub_101124114(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_101698D88, &qword_101390910, type metadata accessor for SharingCircleSecret);
  *v3 = result;
  return result;
}

void *sub_101124158(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3E98, &qword_1013D4BE8, &qword_101697700, &unk_10139FB90);
  *v3 = result;
  return result;
}

void *sub_101124198(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F90, &qword_101408ED0, &qword_101697708, &qword_10138C3C0);
  *v3 = result;
  return result;
}

void *sub_1011241D8(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169EF30, &qword_10139FC20, type metadata accessor for BeaconNamingRecord);
  *v3 = result;
  return result;
}

void *sub_10112421C(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169EFB8, &unk_1013B12F0, type metadata accessor for SharedBeaconRecord);
  *v3 = result;
  return result;
}

void *sub_101124260(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3BF8, &qword_1013D4988, type metadata accessor for MemberPeerTrust);
  *v3 = result;
  return result;
}

void *sub_1011242A4(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169EF80, &qword_10139FCC0, type metadata accessor for OwnerPeerTrust);
  *v3 = result;
  return result;
}

char *sub_1011242E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011265E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101124308(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016AC9D0, &unk_10139D760, type metadata accessor for BeaconObservation);
  *v3 = result;
  return result;
}

void *sub_10112434C(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3A78, &qword_1013D4820, type metadata accessor for OwnedBeaconRecord);
  *v3 = result;
  return result;
}

char *sub_101124390(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101126740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011243B0(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_101697DD8, &unk_10138CDD0, type metadata accessor for DefaultConfigurationLayer);
  *v3 = result;
  return result;
}

void *sub_1011243F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3A18, &qword_1013D47C0, &qword_1016B1E70, &qword_10138CDB0);
  *v3 = result;
  return result;
}

void *sub_101124434(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016B3A30, &qword_1013D47D8, &qword_101698D58, &unk_1013908E0);
  *v3 = result;
  return result;
}

void *sub_101124474(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8E98, &qword_101408DF0, type metadata accessor for PeerCommunicationIdentifier);
  *v3 = result;
  return result;
}

char *sub_1011244B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011268AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1011244D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011269A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011244F8(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &unk_1016A6320, &qword_1013B3CD0, &qword_1016C8E30, &qword_101408DA0);
  *v3 = result;
  return result;
}

char *sub_101124538(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101126AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101124558(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101126BC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101124578(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101126CE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101124598(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011270D8(a1, a2, a3, *v3, &qword_1016C8DF8, &qword_101408D88, &type metadata for ImportedBeaconAdvertisement);
  *v3 = result;
  return result;
}

void *sub_1011245D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101126E14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011245F0(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3C98, &qword_1013D4A20, type metadata accessor for ObservedAdvertisement);
  *v3 = result;
  return result;
}

void *sub_101124634(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8DE8, &qword_101408D80, type metadata accessor for ObservedAdvertisement.Location);
  *v3 = result;
  return result;
}

void *sub_101124678(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3D60, &qword_1013D4AC8, type metadata accessor for DeviceEvent);
  *v3 = result;
  return result;
}

char *sub_1011246BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101126FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011246DC(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016C8F78, &qword_101408EB8, &qword_1016C8F80, &qword_101408EC0);
  *v3 = result;
  return result;
}

void *sub_10112471C(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8F88, &qword_101408EC8, type metadata accessor for SPCachedAdvertisement);
  *v3 = result;
  return result;
}

void *sub_101124760(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016A5878, &qword_1013B3268, type metadata accessor for BeaconIdentifier);
  *v3 = result;
  return result;
}

char *sub_1011247A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011270D8(a1, a2, a3, *v3, &qword_1016C8F18, &qword_101408E68, &type metadata for HashedAdvertisement);
  *v3 = result;
  return result;
}

char *sub_1011247DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011271E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011247FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3B00, &qword_1013D48A8, &qword_101697DE0, &qword_101393190);
  *v3 = result;
  return result;
}

void *sub_10112483C(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3AF0, &qword_1013D4898, type metadata accessor for SafeLocation);
  *v3 = result;
  return result;
}

void *sub_101124880(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3BD8, &qword_1013D4970, &qword_10169EFB0, &unk_10139FD20);
  *v3 = result;
  return result;
}

void *sub_1011248C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101127438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011248E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112756C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101124900(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011276B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101124920(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011277D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101124940(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169F010, &qword_10139FDE8, type metadata accessor for OwnedBeaconGroup);
  *v3 = result;
  return result;
}

char *sub_101124984(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112732C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1011249A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101127944(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011249C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101127A50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011249E4(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016AA468, &qword_1013BD038, &qword_1016A58D0, &qword_1013B3310);
  *v3 = result;
  return result;
}

void *sub_101124A24(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016A5860, &qword_1013B3220, type metadata accessor for BeaconEstimatedLocation);
  *v3 = result;
  return result;
}

void *sub_101124A68(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016B3AF8, &qword_1013D48A0, &qword_10169EF38, &unk_1013AB040);
  *v3 = result;
  return result;
}

void *sub_101124AA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3CA0, &qword_1013D4A28, &qword_1016A5A80, &qword_1013B35A8);
  *v3 = result;
  return result;
}

void *sub_101124AE8(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3A98, &qword_1013D4840, _s18ConnectionKeyGroupVMa);
  *v3 = result;
  return result;
}

void *sub_101124B2C(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3D88, &qword_1013D4AF0, type metadata accessor for WildModeAssociationRecord);
  *v3 = result;
  return result;
}

void *sub_101124B70(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169EFC0, &qword_10139FD38, type metadata accessor for WildModeTrackingLocation);
  *v3 = result;
  return result;
}

void *sub_101124BB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8E68, &qword_101408DD0, &qword_1016B54A8, &qword_1013D6838);
  *v3 = result;
  return result;
}

void *sub_101124BF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3EA0, &qword_1013D4BF0, &qword_101697E00, &qword_10139A1B0);
  *v3 = result;
  return result;
}

char *sub_101124C34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101127BF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101124C54(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8E60, &qword_101408DC8, type metadata accessor for FamilyCryptoKeysV2);
  *v3 = result;
  return result;
}

void *sub_101124C98(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8E58, &qword_101408DC0, type metadata accessor for FamilyCryptoKeysV1);
  *v3 = result;
  return result;
}

void *sub_101124CDC(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3B48, &qword_1013D48F0, type metadata accessor for ShareRecord);
  *v3 = result;
  return result;
}

void *sub_101124D20(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8E50, &qword_101408DB8, type metadata accessor for CryptoKeys);
  *v3 = result;
  return result;
}

void *sub_101124D64(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016C8E38, &qword_101408DA8, &qword_10169EFE0, &qword_10139FD90);
  *v3 = result;
  return result;
}

void *sub_101124DA4(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016C8E40, &qword_101408DB0, &qword_10169EFD8, &qword_10139FD88);
  *v3 = result;
  return result;
}

void *sub_101124DE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8D78, &qword_101408D18, &qword_10169EF28, &unk_10139FC10);
  *v3 = result;
  return result;
}

void *sub_101124E24(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169C978, &unk_10139FBF0, type metadata accessor for RawSearchResult);
  *v3 = result;
  return result;
}

void *sub_101124E68(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3A88, &qword_1013D4830, type metadata accessor for FetchRequestBeacon);
  *v3 = result;
  return result;
}

void *sub_101124EAC(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3F28, &qword_1013D4C78, type metadata accessor for FetchResponse.SearchResult);
  *v3 = result;
  return result;
}

void *sub_101124EF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101127ED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101124F10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8E28, &qword_101408D98, &qword_1016A6070, &unk_1013B3BA0);
  *v3 = result;
  return result;
}

void *sub_101124F50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112800C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101124F70(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3E28, &qword_1013D4B78, type metadata accessor for FindMyServiceDevice);
  *v3 = result;
  return result;
}

void *sub_101124FB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8D80, &qword_101408D20, &qword_1016A7800, &qword_1013B66B0);
  *v3 = result;
  return result;
}

void *sub_101124FF4(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B2830, &qword_1013D3730, type metadata accessor for KeySyncMetadataDisplay);
  *v3 = result;
  return result;
}

void *sub_101125038(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3E30, &qword_1013D4B80, type metadata accessor for FindMyServiceDeviceStore.ListChange);
  *v3 = result;
  return result;
}

void *sub_10112507C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3B08, &qword_1013D48B0, &unk_1016B1E80, &qword_10138CDE0);
  *v3 = result;
  return result;
}

char *sub_1011250BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112860C(a1, a2, a3, *v3, &qword_1016AA5A8, &unk_1013BD208);
  *v3 = result;
  return result;
}

char *sub_1011250EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112815C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10112510C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3E80, &qword_1013D4BD0, &qword_10169F030, &qword_10139FE18);
  *v3 = result;
  return result;
}

void *sub_10112514C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128278(a1, a2, a3, *v3, &qword_1016C8F50, &qword_101408E90, &qword_1016B6E20, &unk_10138CE00);
  *v3 = result;
  return result;
}

void *sub_10112518C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F20, &qword_101408E70, &unk_1016AA490, &unk_1013BD060);
  *v3 = result;
  return result;
}

void *sub_1011251CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3E00, &qword_1013D4B50, &unk_1016AA4B0, &qword_1013BD0A0);
  *v3 = result;
  return result;
}

void *sub_10112520C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128278(a1, a2, a3, *v3, &unk_1016AA4A0, &qword_1013BD070, &qword_101697DF8, &unk_10138CDF0);
  *v3 = result;
  return result;
}

void *sub_10112524C(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3A40, &qword_1013D47E0, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

void *sub_101125290(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016B3E68, &qword_1013D4BB8, &qword_10169F028, &qword_10139FE10);
  *v3 = result;
  return result;
}

void *sub_1011252D0(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3B18, &qword_1013D48C0, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
  *v3 = result;
  return result;
}

char *sub_101125314(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1011283F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101125334(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3C70, &qword_1013D49F8, &unk_1016C1120, &qword_1013C49D0);
  *v3 = result;
  return result;
}

char *sub_101125374(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112860C(a1, a2, a3, *v3, &qword_1016C8E00, &qword_101408D90);
  *v3 = result;
  return result;
}

void *sub_1011253A4(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8FB0, &qword_101408EE8, type metadata accessor for ShareState);
  *v3 = result;
  return result;
}

void *sub_1011253E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3C18, &qword_1013D49A0, &qword_101697DE8, &unk_1013CA800);
  *v3 = result;
  return result;
}

void *sub_101125428(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F40, &qword_101408E88, &qword_1016ADE80, &unk_1013C55E0);
  *v3 = result;
  return result;
}

void *sub_101125468(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3E10, &qword_1013D4B60, type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange);
  *v3 = result;
  return result;
}

void *sub_1011254AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F38, &qword_101408E80, &qword_1016980D0, &unk_10138F3B0);
  *v3 = result;
  return result;
}

void *sub_1011254EC(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3B30, &qword_1013D48D8, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  *v3 = result;
  return result;
}

char *sub_101125530(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128508(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101125550(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112860C(a1, a2, a3, *v3, &qword_1016C8E88, &qword_101408DE8);
  *v3 = result;
  return result;
}

void *sub_101125580(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016B3C08, &qword_1013D4998, &qword_1016B3C10, &qword_10140F6B0);
  *v3 = result;
  return result;
}

void *sub_1011255C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F28, &qword_101408E78, &qword_1016B1780, &unk_1013B36E0);
  *v3 = result;
  return result;
}

char *sub_101125600(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101125620(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3B60, &qword_1013D4900, &qword_101697DF0, &qword_10138CDE8);
  *v3 = result;
  return result;
}

char *sub_101125660(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10112896C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101125680(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169EF60, &qword_10139FC30, &type metadata accessor for Device);
  *v3 = result;
  return result;
}

void *sub_1011256C4(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016B2BA8, &unk_1013EACE0, &qword_1016B7700, &qword_1013DD170);
  *v3 = result;
  return result;
}

void *sub_101125704(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8DD0, &qword_101408D68, &type metadata accessor for CloudKitCoordinator.Deletion);
  *v3 = result;
  return result;
}

void *sub_101125748(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8DE0, &qword_101408D78, &qword_1016BA4F0, &qword_1013E4B68);
  *v3 = result;
  return result;
}

char *sub_101125788(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_101128AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011257A8(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016C8FA0, &qword_101408ED8, &qword_1016C8FA8, &qword_101408EE0);
  *v3 = result;
  return result;
}

void *sub_1011257E8(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3A48, &qword_1013D47E8, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

void *sub_10112582C(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3BA8, &qword_1013D4948, type metadata accessor for BeaconKeyManager.KeyIndexMapInfo);
  *v3 = result;
  return result;
}

void *sub_101125870(void *a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3BA0, &qword_1013D4940, type metadata accessor for BeaconKeyManager.KeyMapInfo);
  *v3 = result;
  return result;
}

char *sub_1011258B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1011259C0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8DC0, &qword_101408D58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016C8DC8, &qword_101408D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101125B08(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_10169EF78, &qword_10139FC88);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_101125C34(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_101125D58(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8D98, &qword_101408D30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101125E64(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_10169F000, &qword_10139FDC0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_101125F70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8EE0, &qword_101408E38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101126090(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8ED8, &qword_101408E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10112619C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10112630C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000BC4D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_101126490(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3E58, &qword_1013D4BA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1011265E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8DD8, &qword_101408D70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101126740(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8DB8, &qword_101408D50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1011268AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8EA0, &qword_101408DF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1011269A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_101126AB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8F00, &qword_101408E50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101126BC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3A28, &qword_1013D47D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101126CE0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3C40, &qword_1013D49C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_10169F020, &qword_10139FE08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101126E14(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8DA0, &qword_101408D38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016C8DA8, &qword_101408D40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101126FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3D90, &qword_1013D4AF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1011270D8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1000BC4D4(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1011271E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8F10, &qword_101408E60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10112732C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3F30, &unk_1013D4C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101127438(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000BC4D4(&qword_1016AB898, &qword_1013BF978);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10112756C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8E78, &qword_101408DD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016C8E80, &qword_101408DE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1011276B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1011277D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101127944(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8F70, &qword_101408EB0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_101127A50(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8F68, &qword_101408EA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016A1360, &unk_1013A52C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101127BF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8F08, &qword_101408E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101127D68(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3AC8, &qword_1013D4870);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016B3AD0, &qword_1013D4878);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101127ED8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3AB0, &qword_1013D4858);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10112800C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000BC4D4(&qword_10169EFF0, &qword_10139FDA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for SPBeaconTaskName(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10112815C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8F58, &qword_101408E98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101128278(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000BC4D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1011283F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8D88, &qword_101408D28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_101128508(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8DB0, &qword_101408D48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10112860C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_10112871C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B5C90, &qword_1013D7310);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016B5C98, &qword_1013D7318);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101128850(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016B3F20, &qword_1013D4C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10112896C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8EE8, &qword_101408E40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101128AB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000BC4D4(&qword_1016C8D68, &qword_101408D08);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}