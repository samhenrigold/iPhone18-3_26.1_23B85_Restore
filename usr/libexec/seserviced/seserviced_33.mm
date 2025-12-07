uint64_t sub_1002C9E28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 280) = a1;
  *(v4 + 288) = v1;

  if (v1)
  {
    v5 = sub_1002CA4E0;
  }

  else
  {
    v5 = sub_1002C9F64;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C9F64()
{
  v1 = qword_100508D40;
  if (qword_100508D40)
  {
    v2 = v0[36];
LABEL_3:
    v0[37] = v2;
    v0[38] = v1;

    return _swift_task_switch(sub_1002CA17C, v1, 0);
  }

  v3 = v0[36];
  type metadata accessor for SERPersistenceController(0);
  swift_allocObject();
  sub_100284074();
  if (!v3)
  {
    v1 = v4;
    qword_100508D40 = v4;

    v2 = 0;
    goto LABEL_3;
  }

  v5 = v0[35];
  v6 = v0[33];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];
  *v9 = 0xD000000000000039;
  v9[1] = 0x800000010046B290;
  (*(v7 + 104))(v9, enum case for SERXPCInternalErrors.internalError(_:), v8);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002CA17C()
{
  v1 = *(v0 + 296);
  sub_10028115C();
  *(v0 + 312) = v2;
  if (v1)
  {

    v3 = sub_1002CA7AC;
  }

  else
  {

    v3 = sub_1002CA220;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002CA220()
{
  v1 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  IOObjectRelease(MatchingService);
  v3 = objc_allocWithZone(type metadata accessor for DeviceCapability());
  DeviceCapability.init(supportsUWB:)();
  v4 = objc_allocWithZone(type metadata accessor for SESnapshot());
  v5 = SESnapshot.init(seState:reservationState:stagedCredentials:dataSource:deviceCapability:)();

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1002CA38C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  *v3 = 0xD000000000000043;
  v3[1] = 0x800000010046B1E0;
  (*(v1 + 104))(v3, enum case for SERXPCInternalErrors.internalError(_:), v2);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002CA4E0()
{
  v0[5] = v0[36];
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v1 = v0[33];
    v2 = v0[12];
    v3 = v0[13];
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[9];

    (*(v5 + 32))(v2, v3, v4);
    (*(v5 + 16))(v6, v2, v4);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();

    (*(v5 + 8))(v2, v4);
  }

  else
  {
    v7 = v0[33];
    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[9];

    _StringGuts.grow(_:)(24);

    swift_getErrorValue();
    v11._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v11);

    *v10 = 0xD000000000000016;
    v10[1] = 0x800000010046B270;
    (*(v9 + 104))(v10, enum case for SERXPCInternalErrors.internalError(_:), v8);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002CA7AC()
{
  v1 = v0[35];
  v2 = v0[33];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  *v5 = 0xD000000000000039;
  v5[1] = 0x800000010046B290;
  (*(v3 + 104))(v5, enum case for SERXPCInternalErrors.internalError(_:), v4);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002CA930()
{
  v1 = objc_opt_self();
  if (qword_100501C70 != -1)
  {
    swift_once();
  }

  v2 = qword_10051B6E0;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_1002CAA98;
  v3 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100509B40, &qword_100414800);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002D4290;
  v0[13] = &unk_1004CF4D8;
  v0[14] = v3;
  [v1 getWatchSnapshot:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002CAA98()
{

  return _swift_task_switch(sub_1002CAB78, 0, 0);
}

uint64_t sub_1002CAB78()
{
  v1 = *(v0 + 192);
  *(v0 + 144) = *(v0 + 176);
  *(v0 + 160) = v1;
  if (*(v0 + 168))
  {
    type metadata accessor for SESnapshot();
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 80);
      v3 = *(v0 + 8);

      return v3(v2);
    }
  }

  else
  {
    sub_100075768(v0 + 144, &qword_100502420, &qword_10040F310);
  }

  v5 = *(v0 + 208);
  _StringGuts.grow(_:)(51);
  v6._object = 0x800000010046B450;
  v6._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 58;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  *(v0 + 80) = 793;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD00000000000002ELL;
  v9._object = 0x800000010046B470;
  String.append(_:)(v9);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v10 = enum case for SERXPCInternalErrors.internalError(_:);
  v11 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v11 - 8) + 104))(v5, v10, v11);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002CADB8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for SEStorageCredential();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for SERXPCInternalErrors();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for SEType();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1002CAF4C, 0, 0);
}

uint64_t sub_1002CAF4C(uint64_t a1, const char *a2)
{
  v3 = *(v2 + 136);
  v4 = sub_1003AF3C4(*(v2 + 64), a2);
  v5 = [v4 type];

  v6 = *(v3 + 104);
  if ((v5 - 1) > 5)
  {
    v7 = &enum case for SEType.EOSAdv(_:);
  }

  else
  {
    v7 = *(&off_1004CF5F0 + (v5 - 1));
  }

  v9 = *(v2 + 152);
  v8 = *(v2 + 160);
  v11 = *(v2 + 136);
  v10 = *(v2 + 144);
  v12 = *(v2 + 128);
  v6(v9, *v7, v12);
  (*(v11 + 32))(v8, v9, v12);
  v6(v10, enum case for SEType.P61(_:), v12);
  sub_1002D9BE4(&qword_100509B18, &type metadata accessor for SEType, &protocol conformance descriptor for SEType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v11 + 8);
  *(v2 + 168) = v13;
  *(v2 + 176) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v12);
  if (*(v2 + 16) == *(v2 + 24) || (v14 = *(v2 + 144), v15 = *(v2 + 128), v6(v14, enum case for SEType.P73(_:), v15), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v13(v14, v15), *(v2 + 32) == *(v2 + 40)))
  {
    v16 = *(v2 + 160);
    v17 = *(v2 + 128);
    v18 = *(v2 + 104);
    v19 = *(v2 + 112);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_allocError();
    *v20 = 0xD000000000000013;
    v20[1] = 0x800000010046B2D0;
    (*(v19 + 104))(v20, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v18);
    swift_willThrow();
    v13(v16, v17);

    v21 = *(v2 + 8);

    return v21();
  }

  else
  {
    v23 = swift_task_alloc();
    *(v2 + 184) = v23;
    *v23 = v2;
    v23[1] = sub_1002CB2E4;
    v24 = *(v2 + 160);

    return sub_100279C60(v24);
  }
}

uint64_t sub_1002CB2E4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1002CBA68, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[27] = v5;
    *v5 = v4;
    v5[1] = sub_1002CB45C;
    v6 = v4[7];
    v7 = v4[8];

    return sub_1002D14B4(v7, v6);
  }
}

uint64_t sub_1002CB45C(uint64_t a1)
{
  v4 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CBB18, 0, 0);
  }

  else
  {
    v4[6] = a1;
    v5 = swift_task_alloc();
    v4[30] = v5;
    *v5 = v4;
    v5[1] = sub_1002CB5E8;
    v6 = v4[15];
    v7 = v4[8];

    return sub_1002D1B98(v7, (v4 + 6), v6);
  }
}

uint64_t sub_1002CB5E8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1002CBBDC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v2 + 248) = v4;
    *v4 = v3;
    v4[1] = sub_1002CB754;

    return sub_1002D82A0();
  }
}

uint64_t sub_1002CB754(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_1002CB854, 0, 0);
}

uint64_t sub_1002CB854()
{
  v1 = v0[8];
  sub_1002F9130(v0[32]);
  v2 = sub_1002D8968(v1);
  if (v2)
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    *v3 = v2;
    v6 = v2;
    (*(v4 + 104))(v3, enum case for SEStorageCredential.muirfield(_:), v5);
    v7 = v0[6];
    v8 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10012FAA8(0, v7[2] + 1, 1, v7);
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_10012FAA8((v9 > 1), v10 + 1, 1, v7);
    }

    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];

    v7[2] = v10 + 1;
    (*(v12 + 32))(v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, v11, v13);
    v0[6] = v7;
  }

  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[16];
  (*(v0[17] + 16))(v0[18], v15, v16);
  v17 = objc_allocWithZone(type metadata accessor for SEState());
  v18 = SEState.init(seType:freeMemory:seStorageCredentials:memoryInfo:)();
  v14(v15, v16);

  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_1002CBA68()
{
  (*(v0 + 168))(*(v0 + 160), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CBB18()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);

  v2(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002CBBDC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v4 = v0[20];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v8 + 32))(v9, v6, v7);

  v3(v4, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002CBD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SERXPCInternalErrors();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1002CBE20;

  return sub_1002CC034(a2, v5);
}

uint64_t sub_1002CBE20()
{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1002CBF58, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1002CBF58()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002CC034(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[10] = v5;
  v6 = swift_task_alloc();
  v2[11] = v6;
  *v6 = v2;
  v6[1] = sub_1002CC164;

  return sub_1002CF3A0(a1, v5);
}

uint64_t sub_1002CC164()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1002CC7EC;
  }

  else
  {
    v2 = sub_1002CC2A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CC2A4()
{
  *(v0 + 16) = 0;
  v1 = sub_100053D3C(*(v0 + 48));
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    v4 = objc_opt_self();
    *(v0 + 24) = 0;
    v5 = v2;
    v6 = [v4 getSPRInspectorAndReturnError:v0 + 24];
    v7 = *(v0 + 24);
    if (v6)
    {
      v8 = v6;
      v9 = *(v0 + 48);
      v10 = v7;
      v12 = sub_1003AF3C4(v9, v11);
      v13 = [v12 seid];

      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      *(v0 + 32) = sub_100288788(v14, v16);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      BidirectionalCollection<>.joined(separator:)();
      sub_10006A178(v14, v16);

      v17 = String._bridgeToObjectiveC()();

      *(v0 + 40) = 0;
      v18 = [v8 removeMuirfieldWithForce:0 session:v3 seid:v17 error:v0 + 40];

      v19 = *(v0 + 40);
      if (v18)
      {
        v20 = v19;

LABEL_17:

        v29 = *(v0 + 8);
        goto LABEL_18;
      }

      v31 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      v30 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000958E4(v32, qword_100509A58);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "SPR cleanup error: %@", v35, 0xCu);
      sub_100075768(v36, &unk_100503F70, &unk_10040B2E0);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v21 = v2;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000958E4(v22, qword_100509A58);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Could not get the NFSecureElementManagerSession for cleanup", v25, 2u);
  }

  v26 = *(v0 + 64);
  v27 = *(v0 + 72);
  v28 = *(v0 + 56);

  *v28 = 0xD00000000000001DLL;
  v28[1] = 0x800000010046B770;
  (*(v27 + 104))(v28, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v26);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v29 = *(v0 + 8);
LABEL_18:

  return v29();
}

uint64_t sub_1002CC7EC()
{
  (*(v0[9] + 32))(v0[7], v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002CC894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v5 = swift_task_alloc();
  v3[7] = v5;
  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v3;
  v6[1] = sub_1002CC994;

  return sub_1002C89B8(0, 0xF000000000000000, v5);
}

uint64_t sub_1002CC994(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CCC94, 0, 0);
  }

  else
  {
    v9 = (v4[3] + *v4[3]);
    v6 = swift_task_alloc();
    v4[10] = v6;
    *v6 = v5;
    v6[1] = sub_1002CCB80;
    v7 = v4[2];

    return v9(v7, a1);
  }
}

uint64_t sub_1002CCB80()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1002CCDE0;
  }

  else
  {
    v2 = sub_1002CCD70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CCC94()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002CCD70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CCDE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CCE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v5 = swift_task_alloc();
  v3[7] = v5;
  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v3;
  v6[1] = sub_1002CCF4C;

  return sub_1002C89B8(0, 0xF000000000000000, v5);
}

uint64_t sub_1002CCF4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002D9C60, 0, 0);
  }

  else
  {
    v9 = (v4[3] + *v4[3]);
    v6 = swift_task_alloc();
    v4[10] = v6;
    *v6 = v5;
    v6[1] = sub_1002CD138;
    v7 = v4[2];

    return v9(v7, a1);
  }
}

uint64_t sub_1002CD138()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1002D9C70;
  }

  else
  {
    v2 = sub_1002D9C40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CD24C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for SERXPCInternalErrors();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[7] = v4;
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_1002CD348;

  return sub_1002C89B8(0, 0xF000000000000000, v4);
}

uint64_t sub_1002CD348(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CCC94, 0, 0);
  }

  else
  {
    v8 = (*(v4 + 24) + **(v4 + 24));
    v6 = swift_task_alloc();
    *(v4 + 80) = v6;
    *v6 = v5;
    v6[1] = sub_1002CD534;

    return v8(v4 + 16, a1);
  }
}

uint64_t sub_1002CD534()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1002CCDE0;
  }

  else
  {
    v2 = sub_1002CD648;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CD648()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002CD6C0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for SERXPCInternalErrors();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[6] = v4;
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_1002CD7BC;

  return sub_1002C89B8(0, 0xF000000000000000, v4);
}

uint64_t sub_1002CD7BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CDABC, 0, 0);
  }

  else
  {
    v8 = (*(v4 + 16) + **(v4 + 16));
    v6 = swift_task_alloc();
    *(v4 + 72) = v6;
    *v6 = v5;
    v6[1] = sub_1002CD9A8;

    return v8(v4 + 88, a1);
  }
}

uint64_t sub_1002CD9A8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1002CDC14;
  }

  else
  {
    v2 = sub_1002CDB9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CDABC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_1002CDB9C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002CDC14()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1002CDC84()
{
  v1[2] = *v0;
  v1[3] = type metadata accessor for SECleanup(0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002CDD60, 0, 0);
}

uint64_t sub_1002CDD60(uint64_t a1)
{
  if (SESInternalVariant())
  {
    v2 = swift_task_alloc();
    v1[8] = v2;
    *v2 = v1;
    v2[1] = sub_1002CDECC;
    v3 = v1[7];

    return sub_1002CC894(v3, &unk_1004148E0, 0);
  }

  else
  {
    v1[10] = 0;
    v1[11] = 0;
    v5 = swift_task_alloc();
    v1[12] = v5;
    *v5 = v1;
    v5[1] = sub_1002CE400;

    return withCheckedContinuation<A>(isolation:function:_:)(v1 + 15, 0, 0, 0xD00000000000001ALL, 0x800000010046B710, sub_1002CFB1C, 0, &type metadata for Bool);
  }
}

uint64_t sub_1002CDECC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1002CEAC4;
  }

  else
  {
    v2 = sub_1002CDFE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CDFE0(uint64_t a1, uint64_t a2)
{
  v36 = v2;
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v4 = v2[6];
  v3 = v2[7];
  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_100509A58);
  sub_1001DA29C(v3, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v2[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35[0] = v10;
    *v9 = 136315138;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1002D9BE4(&qword_100509B78, type metadata accessor for SECleanup, &unk_10040E718);
    v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v8)
    {

      object = 0x800000010046B750;
      countAndFlagsBits = 0xD000000000000018;
    }

    else
    {
      v16 = v11;
      v17 = v12;

      v18 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v18._countAndFlagsBits;
      object = v18._object;
      sub_10006A178(v16, v17);
    }

    sub_1001DA300(v2[6]);
    v19 = sub_1002FFA0C(countAndFlagsBits, object, v35);

    *(v9 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "SECleanup pre: %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  else
  {
    v15 = v2[6];

    sub_1001DA300(v15);
  }

  v20 = sub_1001D6458();
  v22 = v21;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v2[7];
  if (v25)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35[0] = v28;
    *v27 = 136315138;

    v29 = sub_1001D408C(v20, v22);
    v31 = v30;

    v32 = sub_1002FFA0C(v29, v31, v35);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Result: %s", v27, 0xCu);
    sub_1000752F4(v28);
  }

  sub_1001DA300(v26);
  v2[10] = v20;
  v2[11] = v22;
  v33 = swift_task_alloc();
  v2[12] = v33;
  *v33 = v2;
  v33[1] = sub_1002CE400;

  return withCheckedContinuation<A>(isolation:function:_:)(v2 + 15, 0, 0, 0xD00000000000001ALL, 0x800000010046B710, sub_1002CFB1C, 0, &type metadata for Bool);
}

uint64_t sub_1002CE400()
{

  return _swift_task_switch(sub_1002CE4FC, 0, 0);
}

uint64_t sub_1002CE4FC()
{
  if (*(v0 + 120) == 1)
  {
    if (*(v0 + 80))
    {

      v1 = swift_task_alloc();
      *(v0 + 104) = v1;
      *v1 = v0;
      v1[1] = sub_1002CE640;
      v2 = *(v0 + 40);

      return sub_1002CC894(v2, &unk_1004148D0, 0);
    }
  }

  else
  {
    sub_1002D978C(*(v0 + 80), *(v0 + 88));
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002CE640()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_1002CEB4C;
  }

  else
  {
    v2 = sub_1002CE764;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CE764()
{
  v25 = v0;
  v1 = sub_1001D781C(v0[10], v0[11]);

  if ((v1 & 1) == 0)
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v2 = v0[4];
    v3 = v0[5];
    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_100509A58);
    sub_1001DA29C(v3, v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[14];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136315138;
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_1002D9BE4(&qword_100509B78, type metadata accessor for SECleanup, &unk_10040E718);
      v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      if (v7)
      {

        object = 0x800000010046B750;
        countAndFlagsBits = 0xD000000000000018;
      }

      else
      {
        v15 = v10;
        v16 = v11;

        v17 = Data.base64EncodedString(options:)(0);
        countAndFlagsBits = v17._countAndFlagsBits;
        object = v17._object;
        sub_10006A178(v15, v16);
      }

      sub_1001DA300(v0[4]);
      v18 = sub_1002FFA0C(countAndFlagsBits, object, &v24);

      *(v8 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "SECleanup post: %s", v8, 0xCu);
      sub_1000752F4(v9);
    }

    else
    {
      v14 = v0[4];

      sub_1001DA300(v14);
    }

    v19 = objc_opt_self();
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    [v19 requestTapToRadar:v20 client:v21 fullArchive:0];
  }

  sub_1001DA300(v0[5]);
  sub_1002D978C(v0[10], v0[11]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1002CEAC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CEB4C()
{
  sub_1002D978C(v0[10], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002CEBDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for SERXPCInternalErrors();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1002CECE4;

  return sub_1002C8FAC(a2, v5);
}

uint64_t sub_1002CECE4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = sub_1002CEE78;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1002CEE08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002CEE08()
{
  **(v0 + 16) = *(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CEE78()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002CEF70()
{
  v1 = objc_opt_self();
  if (qword_100501C70 != -1)
  {
    swift_once();
  }

  v2 = qword_10051B6E0;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_1002CF0D8;
  v3 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100509B40, &qword_100414800);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002D4290;
  v0[13] = &unk_1004CF5C8;
  v0[14] = v3;
  [v1 reclaimUnusedSEMemory:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002CF0D8()
{

  return _swift_task_switch(sub_1002CF1B8, 0, 0);
}

uint64_t sub_1002CF1B8()
{
  v11 = v0;
  v1 = *(v0 + 192);
  *(v0 + 144) = *(v0 + 176);
  *(v0 + 160) = v1;
  if (*(v0 + 168))
  {
    type metadata accessor for SESnapshot();
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 80);
      goto LABEL_10;
    }
  }

  else
  {
    sub_100075768(v0 + 144, &qword_100502420, &qword_10040F310);
  }

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1002FFA0C(0xD000000000000022, 0x800000010046B7B0, &v10);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 800;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s:%ld failed to generate snapshot for pairedWatch", v6, 0x16u);
    sub_1000752F4(v7);
  }

  v2 = 0;
LABEL_10:
  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_1002CF3A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return _swift_task_switch(sub_1002CF3C0, 0, 0);
}

uint64_t sub_1002CF3C0()
{
  v1 = [objc_opt_self() getServer];
  v0[28] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[26];
    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_1002CF6B0;
    v4 = swift_continuation_init();
    v0[17] = sub_100068FC4(&qword_100509B88, &qword_100414900);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1002D13E8;
    v0[13] = &unk_1004CF5A0;
    v0[14] = v4;
    [v2 cleanupAppletsWithNoEndpoints:v3 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_100509A58);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "SESEndpointAndKeyXPCServer not initalized?", v8, 2u);
    }

    v9 = v0[27];

    *v9 = 0xD000000000000028;
    v9[1] = 0x800000010046B320;
    v10 = enum case for SERXPCInternalErrors.resourceUnavailable(_:);
    v11 = type metadata accessor for SERXPCInternalErrors();
    (*(*(v11 - 8) + 104))(v9, v10, v11);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1002CF6B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1002CF824;
  }

  else
  {
    v2 = sub_1002CF7C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002CF7C0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CF824(uint64_t a1)
{
  v21 = v1;
  swift_willThrow();
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_100509A58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002FFA0C(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not cleanup PTA %s", v5, 0xCu);
    sub_1000752F4(v6);
  }

  v10 = v1[28];
  v11 = v1[27];
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v19 = 0xD000000000000016;
  v20 = 0x800000010046B790;
  swift_getErrorValue();
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v20;
  *v11 = v19;
  v11[1] = v14;
  v15 = enum case for SERXPCInternalErrors.resourceUnavailable(_:);
  v16 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v16 - 8) + 104))(v11, v15, v16);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v17 = v1[1];

  return v17();
}

uint64_t sub_1002CFAFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002D9C5C, 0, 0);
}

void sub_1002CFB1C(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100509B80, &qword_1004148E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() sharedRemoteAdminManager];
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  aBlock = 0xD000000000000010;
  v14 = 0x8000000100465CF0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v3 + 16))(v5, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v5, v2);
  v17 = sub_1002D9860;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1001BA05C;
  v16 = &unk_1004CF578;
  v11 = _Block_copy(&aBlock);

  [v6 connectToServer:0 initialClientRequestInfo:isa callback:v11];
  _Block_release(v11);
}

uint64_t sub_1002CFDD8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_100509A58);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to perform SE cleanup from TSM: %@", v5, 0xCu);
      sub_100075768(v6, &unk_100503F70, &unk_10040B2E0);
    }

    sub_100068FC4(&qword_100509B80, &qword_1004148E8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_100509A58);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "SE cleanup complete", v12, 2u);
    }

    sub_100068FC4(&qword_100509B80, &qword_1004148E8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1002D004C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002D006C, 0, 0);
}

uint64_t sub_1002D006C()
{
  sub_1001D49D4(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D00D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v5 = type metadata accessor for SERXPCInternalErrors();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[6] = v6;
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_1002D01E0;

  return sub_1002C8FAC(a2, v6);
}

uint64_t sub_1002D01E0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = sub_1002D0390;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1002D0304;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002D0304()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = SESnapshot.canFit(proposedUsage:)();

  *v2 = v3 & 1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D0390()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D046C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v7 = type metadata accessor for SERXPCInternalErrors();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[9] = v8;
  v9 = swift_task_alloc();
  v5[10] = v9;
  *v9 = v5;
  v9[1] = sub_1002D0584;

  return sub_1002CC034(a2, v8);
}

uint64_t sub_1002D0584()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1002D08BC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[11] = v4;
    *v4 = v3;
    v4[1] = sub_1002D06F8;
    v5 = v2[8];
    v6 = v2[3];

    return sub_1002C8FAC(v6, v5);
  }
}

uint64_t sub_1002D06F8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = sub_1002D09A8;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1002D081C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002D081C()
{
  v1 = v0[12];
  v2 = v0[2];
  v3 = SESnapshot.canFit(proposedUsage:)();

  *v2 = v3 & 1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D08BC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v3 + 32))(v4, v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D09A8()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v3 + 32))(v4, v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D0A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SERXPCInternalErrors();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1002D0B58, 0, 0);
}

uint64_t sub_1002D0B58(uint64_t a1, const char *a2)
{
  v3 = sub_1003AF3C4(*(v2 + 24), a2);
  v4 = [v3 type];

  if ((v4 - 1) > 2)
  {
    v10 = swift_task_alloc();
    *(v2 + 72) = v10;
    *v10 = v2;
    v10[1] = sub_1002D0D08;
    v11 = *(v2 + 64);
    v12 = *(v2 + 24);

    return sub_1002C8FAC(v12, v11);
  }

  else
  {
    v5 = *(v2 + 48);
    v6 = *(v2 + 56);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_allocError();
    *v7 = 0xD000000000000025;
    v7[1] = 0x800000010046B880;
    (*(v6 + 104))(v7, enum case for SERXPCInternalErrors.resourceUnavailable(_:), v5);
    swift_willThrow();

    v8 = *(v2 + 8);

    return v8();
  }
}

uint64_t sub_1002D0D08(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = sub_1002D0EBC;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1002D0E2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002D0E2C()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = SESnapshot.canFit(proposedESimProfilesUsage:)();

  *v2 = v3 & 1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D0EBC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D0F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v7 = type metadata accessor for SERXPCInternalErrors();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[9] = v8;
  v9 = swift_task_alloc();
  v5[10] = v9;
  *v9 = v5;
  v9[1] = sub_1002D10B0;

  return sub_1002CC034(a2, v8);
}

uint64_t sub_1002D10B0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1002D9C64, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[11] = v4;
    *v4 = v3;
    v4[1] = sub_1002D1224;
    v5 = v2[8];
    v6 = v2[3];

    return sub_1002C8FAC(v6, v5);
  }
}

uint64_t sub_1002D1224(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = sub_1002D9C68;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1002D1348;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002D1348()
{
  v1 = v0[12];
  v2 = v0[2];
  v3 = SESnapshot.canFit(proposedESimProfilesUsage:)();

  *v2 = v3 & 1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D13E8(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1002D14B4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_1002D14D8, 0, 0);
}

uint64_t sub_1002D14D8()
{
  *(v0 + 32) = _swiftEmptyArrayStorage;
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 64) = qword_10051B858;

  return _swift_task_switch(sub_1002D157C, v1, 0);
}

uint64_t sub_1002D157C()
{
  *(v0 + 72) = sub_100362B68(0, 0);
  *(v0 + 80) = 0;

  return _swift_task_switch(sub_1002D1610, 0, 0);
}

uint64_t sub_1002D1610(uint64_t a1, uint64_t a2)
{
  v35 = v2;
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100509A58);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34 = v7;
    *v6 = 136315138;
    type metadata accessor for CredentialInternal();
    v8 = Array.description.getter();
    v10 = sub_1002FFA0C(v8, v9, &v34);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Matching Vienna credentials against: %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v11 = *(v2 + 40);
  v12 = swift_task_alloc();
  v32 = *(v2 + 48);
  v12[1] = vextq_s8(v32, v32, 8uLL);
  v12[2].i64[0] = v2 + 32;
  v13 = swift_task_alloc();
  *(v13 + 16) = v11;
  *(v13 + 24) = xmmword_1004098E0;
  *(v13 + 40) = &off_1004C47E0;
  *(v13 + 48) = sub_1002D903C;
  *(v13 + 56) = v12;
  sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  v14 = qword_100501D80;
  v15 = v32.i64[0];
  if (v14 != -1)
  {
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  if ((*(v2 + 24) & 1) != 0 || *(v2 + 16) != 0x534F534543555245)
  {
    v19 = *(v2 + 80);
    v18 = sub_1003AF3D8(*(v2 + 40));
    OS_dispatch_queue.sync<A>(execute:)();
    v17 = *(v2 + 48);
    if (v19)
    {
LABEL_12:

      v31 = *(v2 + 8);

      return v31();
    }

    v33 = (v2 + 32);
  }

  else
  {
    v16 = *(v2 + 80);
    sub_10007FC60(*(v2 + 40), 0, 0, 0xF000000000000000, &off_1004C47E0, *(v2 + 48), (v2 + 32));
    v17 = *(v2 + 48);
    if (v16)
    {
      v18 = *(v2 + 48);
      goto LABEL_12;
    }

    v33 = (v2 + 32);
    v18 = *(v2 + 48);
  }

  v20 = *(v2 + 72);
  v21 = *(v2 + 56);
  v22 = *(v2 + 40);

  v23 = swift_task_alloc();
  v23[2] = v21;
  v23[3] = v20;
  v23[4] = v33;
  v24 = swift_task_alloc();
  *(v24 + 16) = v22;
  *(v24 + 24) = xmmword_1004098E0;
  *(v24 + 40) = &off_1004C4808;
  *(v24 + 48) = sub_1002D9084;
  *(v24 + 56) = v23;
  swift_bridgeObjectRetain_n();
  static OS_dispatch_queue.getSpecific<A>(key:)();
  if ((*(v2 + 24) & 1) != 0 || *(v2 + 16) != 0x534F534543555245)
  {
    v30 = sub_1003AF3D8(*(v2 + 40));
    OS_dispatch_queue.sync<A>(execute:)();

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v25 = *(v2 + 72);
    v26 = *(v2 + 40);

    sub_10007EF98(v26, 1, 0, 0xF000000000000000, &off_1004C4808, v25, v33);
    swift_bridgeObjectRelease_n();
  }

  v27 = *(v2 + 32);
  v28 = *(v2 + 8);

  return v28(v27);
}

uint64_t sub_1002D1B34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D1B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[34] = a2;
  v3[35] = a3;
  v3[33] = a1;
  sub_100068FC4(&qword_100509B28, &qword_1004147E8);
  v3[36] = swift_task_alloc();
  v4 = type metadata accessor for CredentialType();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_1002D1CC0, 0, 0);
}

uint64_t sub_1002D1CC0()
{
  v1 = [objc_opt_self() getServer];
  v0[40] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[33];
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_1002D2008;
    v4 = swift_continuation_init();
    v0[17] = sub_100068FC4(&qword_100509B30, &qword_1004147F0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1002D3CC4;
    v0[13] = &unk_1004CF488;
    v0[14] = v4;
    [v2 getEndpoints:v3 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_100509A58);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "SESEndpointAndKeyXPCServer not initalized?", v8, 2u);
    }

    v9 = v0[35];

    *v9 = 0xD000000000000028;
    v9[1] = 0x800000010046B320;
    v10 = enum case for SERXPCInternalErrors.resourceUnavailable(_:);
    v11 = type metadata accessor for SERXPCInternalErrors();
    (*(*(v11 - 8) + 104))(v9, v10, v11);
    sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
    swift_willThrowTypedImpl();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1002D2008()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_1002D2C74;
  }

  else
  {
    v2 = sub_1002D2144;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D2144()
{
  v113 = v0;
  v1 = *(v0 + 304);
  v86 = v0 + 144;
  v2 = sub_1002D8008(*(v0 + 224));

  v3 = 0;
  v4 = v2 + 8;
  v91 = v2;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2[8];
  v8 = (63 - v6) >> 6;
  v87 = enum case for SEStorageCredential.pta(_:);
  v88 = (v1 + 8);
  v93 = v0;
  v89 = v8;
  v90 = v2 + 8;
LABEL_6:
  if (v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_121;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = v4[v10];
    ++v3;
    if (v7)
    {
      v3 = v10;
LABEL_11:
      v11 = __clz(__rbit64(v7)) | (v3 << 6);
      v12 = (v91[6] + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = v14 >> 62;
      v103 = v14;
      v104 = HIDWORD(*v12);
      v102 = *v12;
      v95 = v7;
      v97 = *(v91[7] + 8 * v11);
      v92 = v3;
      if ((v14 >> 62) > 1)
      {
        if (v15 == 2)
        {
          v18 = *(v13 + 16);
          v17 = *(v13 + 24);
          v16 = v17 - v18;
          if (__OFSUB__(v17, v18))
          {
            goto LABEL_135;
          }

          goto LABEL_21;
        }
      }

      else
      {
        if (!v15)
        {
          v16 = BYTE6(v14);
          if (!BYTE6(v14))
          {
            goto LABEL_25;
          }

LABEL_22:

          sub_10019F3C0(0, v16 & ~(v16 >> 63), 0);
          v19 = _swiftEmptyArrayStorage;
          v20 = v13;
          if (v15 == 2)
          {
            v21 = *(v13 + 16);
            goto LABEL_27;
          }

          if (v15 == 1)
          {
            v21 = v13;
LABEL_27:
            if (v16 < 0)
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (v16 < 0)
            {
              goto LABEL_137;
            }

            v21 = 0;
          }

          v22 = v13 >> 32;
          v23 = BYTE6(v14);
          while (2)
          {
            if (!v16)
            {
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
LABEL_119:
              __break(1u);
LABEL_120:
              __break(1u);
LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              __break(1u);
LABEL_129:
              __break(1u);
              goto LABEL_130;
            }

            if (v15 == 2)
            {
              if (v21 < *(v13 + 16))
              {
                goto LABEL_122;
              }

              if (v21 >= *(v13 + 24))
              {
                goto LABEL_125;
              }

              v28 = __DataStorage._bytes.getter();
              if (!v28)
              {
                goto LABEL_142;
              }

              v25 = v28;
              v29 = __DataStorage._offset.getter();
              v27 = v21 - v29;
              if (__OFSUB__(v21, v29))
              {
                goto LABEL_127;
              }

LABEL_45:
              v30 = *(v25 + v27);
            }

            else
            {
              if (v15 == 1)
              {
                if (v21 < v20 || v21 >= v22)
                {
                  goto LABEL_124;
                }

                v24 = __DataStorage._bytes.getter();
                if (!v24)
                {
                  goto LABEL_141;
                }

                v25 = v24;
                v26 = __DataStorage._offset.getter();
                v27 = v21 - v26;
                if (__OFSUB__(v21, v26))
                {
                  goto LABEL_126;
                }

                goto LABEL_45;
              }

              if (v21 >= v23)
              {
                goto LABEL_123;
              }

              LOWORD(v107) = v13;
              BYTE2(v107) = BYTE2(v13);
              BYTE3(v107) = BYTE3(v13);
              BYTE4(v107) = v104;
              BYTE5(v107) = BYTE5(v13);
              BYTE6(v107) = BYTE6(v13);
              HIBYTE(v107) = HIBYTE(v13);
              v108 = v14;
              v109 = BYTE2(v14);
              v110 = BYTE3(v14);
              v111 = BYTE4(v14);
              v112 = BYTE5(v14);
              v30 = *(&v107 + v21);
            }

            sub_100068FC4(&qword_100502440, &unk_10040B240);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1004098F0;
            *(v31 + 56) = &type metadata for UInt8;
            *(v31 + 64) = &protocol witness table for UInt8;
            *(v31 + 32) = v30;
            v32 = String.init(format:_:)();
            v105 = v19;
            v35 = v19[2];
            v34 = v19[3];
            if (v35 >= v34 >> 1)
            {
              v101 = v32;
              v37 = v33;
              sub_10019F3C0((v34 > 1), v35 + 1, 1);
              v33 = v37;
              v32 = v101;
              v19 = v105;
            }

            v19[2] = v35 + 1;
            v36 = &v19[2 * v35];
            v36[4] = v32;
            v36[5] = v33;
            ++v21;
            --v16;
            v13 = v102;
            v14 = v103;
            if (!v16)
            {
              v0 = v93;
LABEL_52:
              v96 = (v95 - 1) & v95;
              v38 = *(v0 + 288);
              *(v0 + 248) = v19;
              sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
              sub_10007A2D0();
              BidirectionalCollection<>.joined(separator:)();

              CredentialType.init(instanceAID:)();
              static SEStorageCredential.find(in:withType:)();
              v39 = type metadata accessor for SEStorageCredential();
              v40 = *(v39 - 8);
              if ((*(v40 + 48))(v38, 1, v39) == 1)
              {
                v9 = *(v0 + 288);
                (*v88)(*(v0 + 312), *(v0 + 296));
                sub_10006A178(v102, v103);

                sub_100075768(v9, &qword_100509B28, &qword_1004147E8);
              }

              else if ((*(v40 + 88))(*(v0 + 288), v39) == v87)
              {
                v41 = *(v0 + 288);
                (*(v40 + 96))(v41, v39);

                if (v97 >> 62)
                {
                  v42 = _CocoaArrayWrapper.endIndex.getter();
                  if (v42)
                  {
                    goto LABEL_56;
                  }
                }

                else
                {
                  v42 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v42)
                  {
LABEL_56:
                    sub_10019F3C0(0, v42 & ~(v42 >> 63), 0);
                    if (v42 < 0)
                    {
                      goto LABEL_138;
                    }

                    v43 = 0;
                    v44 = _swiftEmptyArrayStorage;
                    v94 = v42;
                    while (2)
                    {
                      v45 = v43 + 1;
                      if (__OFADD__(v43, 1))
                      {
                        goto LABEL_128;
                      }

                      if ((v97 & 0xC000000000000001) != 0)
                      {
                        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        if (v43 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_129;
                        }

                        v46 = *(v97 + 32 + 8 * v43);
                      }

                      v47 = v46;
                      v48 = [v46 publicKeyIdentifier];
                      v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                      v51 = v50;

                      v52 = v51 >> 62;
                      v99 = v45;
                      v100 = v44;
                      v98 = v47;
                      if ((v51 >> 62) > 1)
                      {
                        if (v52 != 2)
                        {
                          v54 = _swiftEmptyArrayStorage;
                          goto LABEL_102;
                        }

                        v56 = *(v49 + 16);
                        v55 = *(v49 + 24);
                        v53 = v55 - v56;
                        if (__OFSUB__(v55, v56))
                        {
                          goto LABEL_131;
                        }

                        if (!v53)
                        {
                          goto LABEL_66;
                        }
                      }

                      else if (v52)
                      {
                        v58 = HIDWORD(v49) - v49;
                        if (__OFSUB__(HIDWORD(v49), v49))
                        {
                          goto LABEL_132;
                        }

                        v53 = v58;
                        if (!v58)
                        {
LABEL_66:
                          v54 = _swiftEmptyArrayStorage;
                          goto LABEL_102;
                        }
                      }

                      else
                      {
                        v53 = BYTE6(v51);
                        if (!BYTE6(v51))
                        {
                          goto LABEL_66;
                        }
                      }

                      sub_10019F3C0(0, v53 & ~(v53 >> 63), 0);
                      v54 = _swiftEmptyArrayStorage;
                      if (v52 == 2)
                      {
                        v57 = *(v49 + 16);
                        goto LABEL_78;
                      }

                      if (v52 == 1)
                      {
                        v57 = v49;
LABEL_78:
                        if ((v53 & 0x8000000000000000) == 0)
                        {
                          goto LABEL_82;
                        }

LABEL_130:
                        __break(1u);
LABEL_131:
                        __break(1u);
LABEL_132:
                        __break(1u);
LABEL_133:
                        __break(1u);
LABEL_134:
                        __break(1u);
LABEL_135:
                        __break(1u);
LABEL_136:
                        __break(1u);
LABEL_137:
                        __break(1u);
LABEL_138:
                        __break(1u);
LABEL_139:
                        __break(1u);
LABEL_140:
                        __break(1u);
LABEL_141:
                        __break(1u);
LABEL_142:
                        __break(1u);
                      }

                      if (v53 < 0)
                      {
                        goto LABEL_133;
                      }

                      v57 = 0;
LABEL_82:
                      if (!v53)
                      {
                        __break(1u);
                        goto LABEL_114;
                      }

                      if (v52 == 2)
                      {
                        if (v57 < *(v49 + 16))
                        {
                          goto LABEL_116;
                        }

                        if (v57 >= *(v49 + 24))
                        {
                          goto LABEL_118;
                        }

                        v63 = __DataStorage._bytes.getter();
                        if (!v63)
                        {
                          goto LABEL_140;
                        }

                        v60 = v63;
                        v64 = __DataStorage._offset.getter();
                        v62 = v57 - v64;
                        if (__OFSUB__(v57, v64))
                        {
                          goto LABEL_120;
                        }

LABEL_95:
                        v65 = *(v60 + v62);
                      }

                      else
                      {
                        if (v52 == 1)
                        {
                          if (v57 < v49 || v57 >= v49 >> 32)
                          {
                            goto LABEL_117;
                          }

                          v59 = __DataStorage._bytes.getter();
                          if (!v59)
                          {
                            goto LABEL_139;
                          }

                          v60 = v59;
                          v61 = __DataStorage._offset.getter();
                          v62 = v57 - v61;
                          if (__OFSUB__(v57, v61))
                          {
                            goto LABEL_119;
                          }

                          goto LABEL_95;
                        }

                        if (v57 >= BYTE6(v51))
                        {
                          goto LABEL_115;
                        }

                        v107 = v49;
                        v108 = v51;
                        v109 = BYTE2(v51);
                        v110 = BYTE3(v51);
                        v111 = BYTE4(v51);
                        v112 = BYTE5(v51);
                        v65 = *(&v107 + v57);
                      }

                      sub_100068FC4(&qword_100502440, &unk_10040B240);
                      v66 = swift_allocObject();
                      *(v66 + 16) = xmmword_1004098F0;
                      *(v66 + 56) = &type metadata for UInt8;
                      *(v66 + 64) = &protocol witness table for UInt8;
                      *(v66 + 32) = v65;
                      v67 = String.init(format:_:)();
                      v106 = v54;
                      v70 = v54[2];
                      v69 = v54[3];
                      if (v70 >= v69 >> 1)
                      {
                        v85 = v67;
                        v72 = v68;
                        sub_10019F3C0((v69 > 1), v70 + 1, 1);
                        v68 = v72;
                        v67 = v85;
                        v54 = v106;
                      }

                      v54[2] = v70 + 1;
                      v71 = &v54[2 * v70];
                      v71[4] = v67;
                      v71[5] = v68;
                      ++v57;
                      if (!--v53)
                      {
                        v0 = v93;
LABEL_102:
                        *(v0 + 256) = v54;
                        v73 = BidirectionalCollection<>.joined(separator:)();
                        v75 = v74;

                        sub_10006A178(v49, v51);

                        v44 = v100;
                        v77 = *(v100 + 2);
                        v76 = *(v100 + 3);
                        if (v77 >= v76 >> 1)
                        {
                          sub_10019F3C0((v76 > 1), v77 + 1, 1);
                          v44 = v100;
                        }

                        *(v44 + 2) = v77 + 1;
                        v78 = &v44[16 * v77];
                        *(v78 + 4) = v73;
                        *(v78 + 5) = v75;
                        v43 = v99;
                        if (v99 == v94)
                        {

                          goto LABEL_109;
                        }

                        continue;
                      }

                      goto LABEL_82;
                    }
                  }
                }

                v44 = _swiftEmptyArrayStorage;
LABEL_109:
                v80 = *(v0 + 312);
                v81 = *(v0 + 296);
                v82 = dispatch thunk of SEStorageCredential.Endpoints.endpointIds.modify();
                sub_1002F903C(v44);
                v82(v86, 0);

                sub_10006A178(v102, v103);
                (*v88)(v80, v81);
              }

              else
              {
                v79 = *(v0 + 288);
                (*v88)(*(v0 + 312), *(v0 + 296));
                sub_10006A178(v102, v103);

                (*(v40 + 8))(v79, v39);
              }

              v8 = v89;
              v4 = v90;
              v3 = v92;
              v7 = v96;
              goto LABEL_6;
            }

            continue;
          }
        }

        if (__OFSUB__(v104, v13))
        {
          goto LABEL_136;
        }

        v16 = v104 - v13;
LABEL_21:
        sub_100069E2C(v13, v14);
        if (v16)
        {
          goto LABEL_22;
        }
      }

LABEL_25:

      v19 = _swiftEmptyArrayStorage;
      goto LABEL_52;
    }
  }

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_1002D2C74(uint64_t a1)
{
  v21 = v1;
  swift_willThrow();
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_100509A58);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002FFA0C(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not get endpoints %s", v5, 0xCu);
    sub_1000752F4(v6);
  }

  v10 = v1[40];
  v11 = v1[35];
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v19 = 0xD000000000000018;
  v20 = 0x800000010046B350;
  swift_getErrorValue();
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v20;
  *v11 = v19;
  v11[1] = v14;
  v15 = enum case for SERXPCInternalErrors.resourceUnavailable(_:);
  v16 = type metadata accessor for SERXPCInternalErrors();
  (*(*(v16 - 8) + 104))(v11, v15, v16);
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_willThrowTypedImpl();

  v17 = v1[1];

  return v17();
}

void *sub_1002D2F8C()
{
  v0 = type metadata accessor for AppletType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v27 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = String.uppercased()();
  countAndFlagsBits = v6._countAndFlagsBits;
  object = v6._object;
  result = static AppletType.allCases.getter();
  v25 = result[2];
  if (v25)
  {
    v8 = 0;
    v19 = (v1 + 8);
    v21 = (v1 + 32);
    v22 = v1 + 16;
    v9 = _swiftEmptyArrayStorage;
    v20 = v0;
    v23 = result;
    v24 = v1;
    while (v8 < result[2])
    {
      v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v11 = *(v1 + 72);
      (*(v1 + 16))(v5, result + v10 + v11 * v8, v0);
      v12 = AppletType.moduleAID.getter();
      v29[0] = countAndFlagsBits;
      v29[1] = object;
      __chkstk_darwin(v12);
      *(&v19 - 2) = v29;
      v13 = sub_1002F784C(sub_10021C254, (&v19 - 4), v12);

      if (v13)
      {
        v14 = *v21;
        (*v21)(v27, v5, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019FAA8(0, v9[2] + 1, 1);
          v9 = v30;
        }

        v17 = v9[2];
        v16 = v9[3];
        if (v17 >= v16 >> 1)
        {
          sub_10019FAA8((v16 > 1), v17 + 1, 1);
          v9 = v30;
        }

        v9[2] = v17 + 1;
        v18 = v9 + v10 + v17 * v11;
        v0 = v20;
        v14(v18, v27, v20);
      }

      else
      {
        (*v19)(v5, v0);
      }

      ++v8;
      v1 = v24;
      result = v23;
      if (v25 == v8)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_13:

    return v9;
  }

  return result;
}

void sub_1002D326C(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, unint64_t a5@<X8>)
{
  v42 = a4;
  v44 = a5;
  v45 = a3;
  v43 = type metadata accessor for SEStorageCredential();
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for CredentialType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v19 = sub_100288788(a1, a2);
  v46 = v5;
  v47 = v19;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  BidirectionalCollection<>.joined(separator:)();

  v20 = *(v13 + 16);
  v21 = v45;
  v20(v18, v45, v12);
  v22 = objc_allocWithZone(type metadata accessor for SEPackageDetails());
  v23 = SEPackageDetails.init(packageLoaded:containers:instances:moduleAID:type:)();
  if (CredentialType.isCopernicus.getter())
  {
    type metadata accessor for SEStorageCredential.Endpoints();
    v20(v15, v21, v12);
    v24 = v46;
    v25 = SEStorageCredential.Endpoints.__allocating_init(type:endpointIds:)();
    if (v24)
    {

      return;
    }

    v46 = 0;
    *v11 = v23;
    *(v11 + 1) = v25;
    v26 = &enum case for SEStorageCredential.pta(_:);
  }

  else
  {
    *v11 = v23;
    v26 = &enum case for SEStorageCredential.classicPackage(_:);
  }

  v27 = v40;
  v28 = v43;
  (*(v40 + 104))(v11, *v26, v43);
  v29 = v41;
  (*(v27 + 16))(v41, v11, v28);
  v30 = v42;
  v31 = *v42;
  v32 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_10012FAA8(0, v31[2] + 1, 1, v31);
    *v30 = v31;
  }

  v35 = v31[2];
  v34 = v31[3];
  if (v35 >= v34 >> 1)
  {
    *v30 = sub_10012FAA8((v34 > 1), v35 + 1, 1, v31);
  }

  v36 = *v30;
  *(v36 + 16) = v35 + 1;
  v37 = *(v27 + 32);
  v37(v36 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v35, v29, v28);
  v38 = v44;
  v37(v44, v11, v28);
  (*(v27 + 56))(v38, 0, 1, v28);
}

uint64_t sub_1002D3668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = AppletMemoryInfo.pids.getter();
  v10[0] = a4;
  v10[1] = a5;
  v9[2] = v10;
  LOBYTE(a5) = sub_1002F784C(sub_10012E558, v9, v7);

  return a5 & 1;
}

uint64_t sub_1002D36E8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CredentialInternal.identifier.getter();
  v6 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

void sub_1002D37D8(uint64_t a3@<X2>, uint64_t *a4@<X3>, unint64_t a5@<X8>)
{
  v42 = a4;
  v44 = a5;
  v43 = type metadata accessor for SEStorageCredential();
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v37 - v8);
  v10 = type metadata accessor for CredentialType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = *(v11 + 16);
  v17(&v37 - v15, a3, v10, v14);
  objc_allocWithZone(type metadata accessor for SEPackageDetails());

  v18 = SEPackageDetails.init(packageLoaded:containers:instances:moduleAID:type:)();
  v39 = a3;
  (v17)(v16, a3, v10);
  v19 = CredentialType.isCopernicus.getter();
  (*(v11 + 8))(v16, v10);
  if (v19)
  {
    type metadata accessor for SEStorageCredential.Endpoints();
    (v17)(v38, v39, v10);
    v20 = v45;
    v21 = SEStorageCredential.Endpoints.__allocating_init(type:endpointIds:)();
    if (v20)
    {

      return;
    }

    v23 = v18;
    *v9 = v18;
    v9[1] = v21;
    v22 = &enum case for SEStorageCredential.pta(_:);
  }

  else
  {
    *v9 = v18;
    v22 = &enum case for SEStorageCredential.classicPackage(_:);
    v23 = v18;
  }

  v24 = v40;
  v25 = v43;
  (*(v40 + 104))(v9, *v22, v43);
  v26 = *(v24 + 16);
  v27 = v41;
  v45 = v9;
  v26(v41, v9, v25);
  v28 = v42;
  v29 = *v42;
  v30 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_10012FAA8(0, v29[2] + 1, 1, v29);
    *v28 = v29;
  }

  v33 = v29[2];
  v32 = v29[3];
  if (v33 >= v32 >> 1)
  {
    *v28 = sub_10012FAA8((v32 > 1), v33 + 1, 1, v29);
  }

  v34 = *v28;
  *(v34 + 16) = v33 + 1;
  v35 = *(v24 + 32);
  v35(v34 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v33, v27, v25);
  v36 = v44;
  v35(v44, v45, v25);
  (*(v24 + 56))(v36, 0, 1, v25);
}

uint64_t sub_1002D3BC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1002D3CC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1002D3DB4@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a2;
  v45 = a3;
  v4 = type metadata accessor for UUID();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  __chkstk_darwin(v9);
  v46 = &v42 - v10;
  v11 = sub_100068FC4(&qword_100507468, &qword_10040FA20);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for CredentialType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v43 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = *a1;
  v22 = [v21 type];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_1002820E0(v24, v26, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100075768(v13, &qword_100507468, &qword_10040FA20);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    v27 = [v21 uuid];
    if (v27)
    {
      v28 = v27;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = v46;
      v29 = v47;
      v31 = v48;
      (*(v47 + 32))(v46, v8, v48);
      v32 = [v21 metadata];
      if (v32)
      {
        v33 = v29;
        v34 = v32;
        v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v33 + 16))(v44, v30, v31);
        (*(v15 + 16))(v43, v20, v14);
        v35 = objc_allocWithZone(type metadata accessor for Reservation());
        v36 = Reservation.init(uuid:type:metadata:)();
        (*(v33 + 8))(v30, v31);
        result = (*(v15 + 8))(v20, v14);
        *v45 = v36;
        return result;
      }

      (*(v29 + 8))(v30, v31);
    }

    (*(v15 + 8))(v20, v14);
  }

  v38 = objc_allocWithZone(NSError);
  v39 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v41 = [v38 initWithDomain:v39 code:23 userInfo:isa];

  result = swift_willThrow();
  *v49 = v41;
  return result;
}

id sub_1002D425C(uint64_t a1, double a2)
{
  sub_1003F7018(a2);
  result = [objc_allocWithZone(*(v2 + 1360)) init];
  qword_10051B6E0 = result;
  return result;
}

uint64_t sub_1002D4290(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v7 = a2;
    sub_100075D50(&v7, &v9);
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v4 = *(*(v3 + 64) + 40);
  v5 = v10;
  *v4 = v9;
  v4[1] = v5;
  swift_unknownObjectRetain();
  return swift_continuation_resume();
}

uint64_t sub_1002D4324()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002D4388(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100509A58);
  sub_1000958E4(v2, qword_100509A58);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002D4404(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v7 = *(a1 + 16);

  v36 = a2;

  if (!v7)
  {
LABEL_25:
    swift_bridgeObjectRelease_n();
    return swift_bridgeObjectRelease_n();
  }

  v8 = 0;
  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a1 + 40);
  v33 = a2 & 0xC000000000000001;
  v34 = a2 >> 62;
  v32 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 >= v7)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_31;
    }

    v11 = *(v10 - 1);
    v12 = *v10;
    if (v34)
    {
      if (v8 == _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_25;
      }
    }

    else if (v8 == *(v9 + 16))
    {
      goto LABEL_25;
    }

    if (v33)
    {

      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v9 + 16))
      {
        goto LABEL_28;
      }

      v13 = *(v36 + 8 * v8 + 32);

      v14 = v13;
    }

    v37 = v14;
    v15 = *a4;
    v17 = sub_10008C908(v11, v12);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_27;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      break;
    }

    if (a3)
    {
      if (v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_10031317C();
      if (v21)
      {
        goto LABEL_23;
      }
    }

LABEL_16:
    v24 = *a4;
    *(*a4 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v24[6] + 16 * v17);
    *v25 = v11;
    v25[1] = v12;
    *(v24[7] + 8 * v17) = v37;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_29;
    }

    ++v8;
    v24[2] = v28;
    v7 = *(a1 + 16);
    v10 += 2;
    a3 = 1;
    v9 = v32;
    if (v8 == v7)
    {
      goto LABEL_25;
    }
  }

  sub_10030E04C(v20, a3 & 1);
  v22 = sub_10008C908(v11, v12);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_30;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_23:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

LABEL_31:
  _StringGuts.grow(_:)(30);
  v30._object = 0x8000000100466020;
  v30._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v30);
  _print_unlocked<A, B>(_:_:)();
  v31._countAndFlagsBits = 39;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_1002D4798(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1002D618C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1002D4828(void *a1, uint64_t a2, uint64_t *a3)
{
  v170 = a3;
  v171 = a2;
  v4 = sub_100068FC4(&qword_100509B28, &qword_1004147E8);
  __chkstk_darwin(v4 - 8);
  v167 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v173 = (&v155 - v7);
  __chkstk_darwin(v8);
  v169 = &v155 - v9;
  __chkstk_darwin(v10);
  v172 = (&v155 - v11);
  __chkstk_darwin(v12);
  v14 = &v155 - v13;
  v15 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v15 - 8);
  v17 = (&v155 - v16);
  v18 = type metadata accessor for UUID();
  isa = v18[-1].isa;
  v174 = v18;
  v175 = isa;
  __chkstk_darwin(v18);
  v168 = &v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v155 - v22;
  __chkstk_darwin(v24);
  v26 = &v155 - v25;
  v27 = type metadata accessor for CredentialType();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v155 - v33;
  if ([a1 tag] != 227)
  {
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_1000958E4(v68, qword_100509A58);
    v174 = a1;
    v175 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v175, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 67109120;
      *(v70 + 4) = [v174 tag];

      _os_log_impl(&_mh_execute_header, v175, v69, "Error get status, expect E3 got %u, skip and continue to process next TLV.", v70, 8u);

      v71 = v175;
    }

    else
    {

      v71 = v174;
    }

    return;
  }

  v166 = v14;
  v35 = [a1 childWithTag:79];
  if (!v35)
  {
LABEL_24:
    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_1000958E4(v72, qword_100509A58);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Error get status, E3 children not as expected, skip and continue to process next TLV.", v75, 2u);
    }

    return;
  }

  v36 = v35;
  v37 = [v35 value];
  if (!v37)
  {

    goto LABEL_24;
  }

  v159 = v26;
  v164 = v34;
  v163 = v27;
  v162 = v28;
  v38 = v37;
  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v177[0] = sub_100288788(v39, v41);
  v42 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v43 = sub_10007A2D0();
  v161 = v42;
  v160 = v43;
  v158 = BidirectionalCollection<>.joined(separator:)();
  v45 = v44;
  sub_10006A178(v39, v41);

  v46 = [a1 childWithTag:40816];
  if (!v46)
  {
    goto LABEL_23;
  }

  v47 = v46;
  v165 = v45;
  v48 = [v46 value];
  if (!v48)
  {
    goto LABEL_22;
  }

  v49 = v48;
  v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v53 = [a1 childWithTag:132];
  if (!v53)
  {
    sub_10006A178(v50, v52);
LABEL_23:

    goto LABEL_24;
  }

  v47 = v53;
  v157 = v50;
  v54 = [v53 value];
  if (!v54)
  {
    sub_10006A178(v157, v52);
LABEL_22:

    goto LABEL_23;
  }

  v55 = v54;
  v156 = v52;
  v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v177[0] = sub_100288788(v56, v58);
  v59 = BidirectionalCollection<>.joined(separator:)();
  v61 = v60;
  sub_10006A178(v56, v58);

  v62 = v164;
  v160 = v59;
  v161 = v61;
  CredentialType.init(moduleAID:)();
  v63 = a1;
  v64 = [v63 childWithTag:165];

  sub_1000B7D0C(v64, v177);
  sub_1000B6F08(v17);
  v66 = v174;
  v65 = v175;
  if ((v175[6].isa)(v17, 1, v174) == 1)
  {
    sub_100075768(v17, &unk_10050BE80, &unk_10040B360);
    v67 = v162;
    goto LABEL_35;
  }

  v76 = v159;
  v77 = (v65[4].isa)(v159, v17, v66);
  v67 = &v155;
  __chkstk_darwin(v77);
  *(&v155 - 2) = v76;
  v78 = v171;

  v79 = sub_10033322C(sub_1002D9170, &v155 - 4, v78);
  v80 = v79;
  if (v79 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_31;
    }
  }

  else if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    if ((v80 & 0xC000000000000001) != 0)
    {
      v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_84;
      }

      v81 = *(v80 + 32);
    }

    v82 = v81;

    CredentialInternal.configUUID.getter();
    v83 = UUID.uuidString.getter();
    v85 = v84;

    v86 = v175[1].isa;
    v86(v23, v66);
    v67 = v162;
    v87 = v163;
    (*(v162 + 8))(v62, v163);
    *v30 = v83;
    *(v30 + 1) = v85;
    (v67[13])(v30, enum case for CredentialType.Vienna(_:), v87);
    (v67[4])(v62, v30, v87);
    v86(v159, v66);
LABEL_35:
    v17 = v173;
    v88 = CredentialType.isNightmare.getter();
    v89 = v172;
    if (v88)
    {

      v90 = v165;
      if (qword_100501C78 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_1000958E4(v91, qword_100509A58);

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v176[0] = v95;
        *v94 = 136315138;
        v96 = sub_1002FFA0C(v158, v90, v176);

        *(v94 + 4) = v96;
        _os_log_impl(&_mh_execute_header, v92, v93, "%s not recognized.", v94, 0xCu);
        sub_1000752F4(v95);

        sub_10006A178(v157, v156);
        sub_1000B8860(v177);
      }

      else
      {

        sub_10006A178(v157, v156);
        sub_1000B8860(v177);
      }

      (v67[1])(v62, v163);
      return;
    }

    v97 = v170;
    static SEStorageCredential.find(in:withType:)();
    v23 = type metadata accessor for SEStorageCredential();
    v66 = *(v23 - 1);
    v30 = v66[6].isa;
    if ((v30)(v89, 1, v23) == 1)
    {
      v98 = v97;
      v99 = v166;
      sub_1002D37D8(v62, v98, v166);
      v113 = (v30)(v89, 1, v23);
      v100 = v169;
      if (v113 != 1)
      {
        sub_100075768(v89, &qword_100509B28, &qword_1004147E8);
      }
    }

    else
    {
      v99 = v166;
      (v66[4].isa)(v166, v89, v23);
      (v66[7].isa)(v99, 0, 1, v23);
      v100 = v169;
    }

    sub_1002D9100(v99, v100);
    if ((v30)(v100, 1, v23) == 1)
    {

      sub_100075768(v100, &qword_100509B28, &qword_1004147E8);
      goto LABEL_57;
    }

    v101 = SEStorageCredential.packageDetails.getter();
    (v66[1].isa)(v100, v23);
    if (!v101)
    {

LABEL_57:
      if (qword_100501C78 == -1)
      {
LABEL_58:
        v114 = type metadata accessor for Logger();
        sub_1000958E4(v114, qword_100509A58);
        v115 = v166;
        sub_1002D9100(v166, v17);
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v176[0] = swift_slowAlloc();
          *v118 = 136315650;
          *(v118 + 4) = sub_1002FFA0C(0xD00000000000003ALL, 0x800000010046B3F0, v176);
          *(v118 + 12) = 2048;
          *(v118 + 14) = 568;
          *(v118 + 22) = 2080;
          v119 = v167;
          sub_1002D9100(v17, v167);
          if ((v30)(v119, 1, v23) == 1)
          {
            sub_100075768(v119, &qword_100509B28, &qword_1004147E8);
            v120 = 0xE300000000000000;
            v121 = 7104878;
          }

          else
          {
            v121 = SEStorageCredential.description.getter();
            v120 = v123;
            (v66[1].isa)(v119, v23);
          }

          sub_100075768(v17, &qword_100509B28, &qword_1004147E8);
          v124 = sub_1002FFA0C(v121, v120, v176);

          *(v118 + 24) = v124;
          _os_log_impl(&_mh_execute_header, v116, v117, "%s:%ld %s", v118, 0x20u);
          swift_arrayDestroy();

          sub_10006A178(v157, v156);
          sub_1000B8860(v177);
          sub_100075768(v166, &qword_100509B28, &qword_1004147E8);
          (*(v162 + 8))(v164, v163);
          return;
        }

        sub_10006A178(v157, v156);
        sub_1000B8860(v177);
        sub_100075768(v17, &qword_100509B28, &qword_1004147E8);
        v122 = v115;
LABEL_74:
        sub_100075768(v122, &qword_100509B28, &qword_1004147E8);
        (v67[1])(v164, v163);
        return;
      }

LABEL_84:
      swift_once();
      goto LABEL_58;
    }

    if ((v177[0] & 0x10000) != 0 || (v177[0] & 4) == 0)
    {
      v125 = v156;
      Data._Representation.subscript.getter();
      v126 = objc_allocWithZone(type metadata accessor for SEApplet());
      SEApplet.init(identifier:moduleIdentifier:lifecycleState:)();
      v127 = SEPackageDetails.instances.modify();
      v129 = v128;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v67 = v162;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v127(v176, 0);
      if (qword_100501C78 != -1)
      {
        swift_once();
      }

      v130 = type metadata accessor for Logger();
      sub_1000958E4(v130, qword_100509A58);
      v104 = v101;
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v108 = v67;
        v134 = swift_slowAlloc();
        v176[0] = v134;
        *v133 = 136315138;
        v135 = SEPackageDetails.description.getter();
        v137 = sub_1002FFA0C(v135, v136, v176);

        *(v133 + 4) = v137;
        _os_log_impl(&_mh_execute_header, v131, v132, "PackageDetails: %s", v133, 0xCu);
        sub_1000752F4(v134);

        sub_10006A178(v157, v125);
        goto LABEL_70;
      }

      sub_10006A178(v157, v125);
    }

    else
    {

      SEPackageDetails.containers.setter();
      v102 = v156;
      if (qword_100501C78 != -1)
      {
        swift_once();
      }

      v103 = type metadata accessor for Logger();
      sub_1000958E4(v103, qword_100509A58);
      v104 = v101;
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = v67;
        v109 = swift_slowAlloc();
        v176[0] = v109;
        *v107 = 136315138;
        v110 = SEPackageDetails.description.getter();
        v112 = sub_1002FFA0C(v110, v111, v176);

        *(v107 + 4) = v112;
        _os_log_impl(&_mh_execute_header, v105, v106, "Adding container %s ", v107, 0xCu);
        sub_1000752F4(v109);

        sub_10006A178(v157, v102);

LABEL_70:
        sub_1000B8860(v177);

        sub_100075768(v166, &qword_100509B28, &qword_1004147E8);
        (v108[1])(v164, v163);
        return;
      }

      sub_10006A178(v157, v102);
    }

    sub_1000B8860(v177);

    v122 = v166;
    goto LABEL_74;
  }

  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v138 = type metadata accessor for Logger();
  sub_1000958E4(v138, qword_100509A58);
  v139 = v175;
  v140 = v168;
  (v175[2].isa)(v168, v76, v66);
  v141 = Logger.logObject.getter();
  v142 = static os_log_type_t.error.getter();
  v143 = os_log_type_enabled(v141, v142);
  v144 = v162;
  if (v143)
  {
    v145 = swift_slowAlloc();
    v173 = v141;
    v146 = v140;
    v147 = v145;
    v172 = swift_slowAlloc();
    v176[0] = v172;
    *v147 = 136315138;
    sub_1002D9BE4(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v148 = dispatch thunk of CustomStringConvertible.description.getter();
    v150 = v149;
    v151 = v139[1].isa;
    v152 = v66;
    v151(v146, v66);
    v153 = sub_1002FFA0C(v148, v150, v176);

    *(v147 + 4) = v153;
    v154 = v173;
    _os_log_impl(&_mh_execute_header, v173, v142, "Failed to match config to credential uuid: %s", v147, 0xCu);
    sub_1000752F4(v172);

    sub_10006A178(v157, v156);
    sub_1000B8860(v177);

    (*(v162 + 8))(v164, v163);
  }

  else
  {
    sub_10006A178(v157, v156);
    sub_1000B8860(v177);

    v151 = v139[1].isa;
    v152 = v66;
    v151(v140, v66);
    (*(v144 + 8))(v164, v163);
  }

  v151(v76, v152);
}

uint64_t sub_1002D5ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 TLVsWithData:isa];

  if (v8)
  {
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_4:
        if (v10 >= 1)
        {
          for (i = 0; i != v10; ++i)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v12 = *(v9 + 8 * i + 32);
            }

            v13 = v12;
            sub_1002D4828(v12, a3, a4);
          }
        }

        __break(1u);
        goto LABEL_17;
      }
    }
  }

  if (qword_100501C78 != -1)
  {
LABEL_17:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000958E4(v14, qword_100509A58);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Instances: No TLV in the reponse of get status for applets", v17, 2u);
  }

  v18 = type metadata accessor for SERXPCInternalErrors();
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  *v19 = 0xD00000000000003ALL;
  v19[1] = 0x800000010046B3B0;
  (*(*(v18 - 8) + 104))(v19, enum case for SERXPCInternalErrors.formatError(_:), v18);
  return swift_willThrow();
}

void sub_1002D618C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100332BA0(a1, a2, v22, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1002D62FC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, id))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1002D4798(v9, v6, v4, a2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v8 = &v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1002D618C(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_1002D647C(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v190 = a3;
  v163 = a2;
  v4 = type metadata accessor for SEStorageCredential();
  v170 = *(v4 - 8);
  __chkstk_darwin(v4);
  v169 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v168 = (&v158 - v7);
  v8 = sub_100068FC4(&qword_100509B28, &qword_1004147E8);
  __chkstk_darwin(v8 - 8);
  v166 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v158 - v11;
  __chkstk_darwin(v13);
  v15 = &v158 - v14;
  v208 = type metadata accessor for AppletType();
  v213 = *(v208 - 1);
  __chkstk_darwin(v208);
  v207 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CredentialType();
  v209 = *(v17 - 8);
  __chkstk_darwin(v17);
  v165 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v158 - v20;
  __chkstk_darwin(v22);
  v24 = &v158 - v23;
  v26 = __chkstk_darwin(v25);
  v28 = &v158 - v27;
  v29 = &selRef_mockFleetIntermediateCert;
  if ([a1 tag] != 227)
  {
    if (qword_100501C78 != -1)
    {
      goto LABEL_164;
    }

    goto LABEL_116;
  }

  v167 = v21;
  v30 = sub_1002EA4AC(1);
  v31 = *(v30 + 2);
  v196 = v4;
  v197 = v17;
  v174 = v31;
  if (!v31)
  {

    v194 = 0;
    goto LABEL_124;
  }

  v32 = 0;
  v194 = 0;
  v173 = v30 + 32;
  v205 = v213 + 16;
  LODWORD(v204) = enum case for CredentialType.wallet(_:);
  v202 = v213 + 8;
  v203 = (v209 + 104);
  v201 = v209 + 32;
  v195 = (v209 + 16);
  v200 = (v170 + 48);
  v193 = (v209 + 8);
  v178 = (v170 + 32);
  v192 = (v170 + 56);
  *(&v33 + 1) = 2;
  v199 = xmmword_1004098F0;
  *&v33 = 136315138;
  v162 = v33;
  v175 = a1;
  v198 = v15;
  v171 = v24;
  v206 = v28;
  v34 = v12;
  v172 = v30;
  while (2)
  {
    if (v32 >= *(v30 + 2))
    {
      goto LABEL_153;
    }

    v35 = &v173[16 * v32];
    v36 = *v35;
    v37 = v35[1];
    v38 = v37 >> 62;
    v189 = v36 >> 8;
    v188 = v36 >> 16;
    v187 = v36 >> 24;
    v191 = HIDWORD(v36);
    v186 = v36 >> 40;
    v185 = HIWORD(v36);
    v184 = HIBYTE(v36);
    v183 = v37 >> 8;
    v182 = v37 >> 16;
    v181 = v37 >> 24;
    v180 = HIDWORD(v37);
    v179 = v37 >> 40;
    v214 = v37;
    v215 = v36;
    v210 = (v37 >> 62);
    v176 = v32;
    if ((v37 >> 62) > 1)
    {
      if (v38 != 2)
      {
        goto LABEL_21;
      }

      v40 = *(v36 + 16);
      v39 = *(v36 + 24);
      v29 = v39 - v40;
      if (__OFSUB__(v39, v40))
      {
        goto LABEL_162;
      }

LABEL_17:
      sub_100069E2C(v36, v37);
      if (!v29)
      {
        goto LABEL_21;
      }

LABEL_18:
      v224 = _swiftEmptyArrayStorage;
      v41 = v29 & ~(v29 >> 63);
      sub_10019F3C0(0, v41, 0);
      v42 = v210;
      a1 = v224;
      if (v210 == 2)
      {
        v43 = *(v36 + 16);
      }

      else
      {
        if (v210 != 1)
        {
          if (v29 < 0)
          {
            goto LABEL_163;
          }

          v43 = 0;
          goto LABEL_55;
        }

        v43 = v36;
      }

      if (v29 < 0)
      {
        goto LABEL_160;
      }

LABEL_55:
      v212 = v36;
      v177 = v36 >> 32;
      v211 = BYTE6(v37);
      while (1)
      {
        if (!v41)
        {
          goto LABEL_144;
        }

        if (v42 == 2)
        {
          if (v43 < *(v36 + 16))
          {
            goto LABEL_146;
          }

          if (v43 >= *(v36 + 24))
          {
            goto LABEL_148;
          }

          v83 = __DataStorage._bytes.getter();
          if (!v83)
          {
            goto LABEL_169;
          }

          v80 = v83;
          v84 = __DataStorage._offset.getter();
          v82 = v43 - v84;
          if (__OFSUB__(v43, v84))
          {
            goto LABEL_150;
          }
        }

        else
        {
          if (v42 != 1)
          {
            if (v43 >= v211)
            {
              goto LABEL_145;
            }

            LOBYTE(v216) = v36;
            BYTE1(v216) = v189;
            BYTE2(v216) = v188;
            BYTE3(v216) = v187;
            BYTE4(v216) = v191;
            BYTE5(v216) = v186;
            BYTE6(v216) = v185;
            HIBYTE(v216) = v184;
            v217 = v37;
            v218 = v183;
            v219 = v182;
            v220 = v181;
            v221 = v180;
            v222 = v179;
            v85 = *(&v216 + v43);
            goto LABEL_72;
          }

          if (v43 < v212 || v43 >= v177)
          {
            goto LABEL_147;
          }

          v79 = __DataStorage._bytes.getter();
          if (!v79)
          {
            goto LABEL_168;
          }

          v80 = v79;
          v81 = __DataStorage._offset.getter();
          v82 = v43 - v81;
          if (__OFSUB__(v43, v81))
          {
            goto LABEL_149;
          }
        }

        v85 = *(v80 + v82);
LABEL_72:
        sub_100068FC4(&qword_100502440, &unk_10040B240);
        v86 = swift_allocObject();
        *(v86 + 16) = v199;
        *(v86 + 56) = &type metadata for UInt8;
        *(v86 + 64) = &protocol witness table for UInt8;
        *(v86 + 32) = v85;
        v87 = String.init(format:_:)();
        v89 = v88;
        v224 = a1;
        v91 = *(a1 + 16);
        v90 = *(a1 + 24);
        if (v91 >= v90 >> 1)
        {
          sub_10019F3C0((v90 > 1), v91 + 1, 1);
          a1 = v224;
        }

        *(a1 + 16) = v91 + 1;
        v92 = a1 + 16 * v91;
        *(v92 + 32) = v87;
        *(v92 + 40) = v89;
        ++v43;
        --v41;
        --v29;
        v17 = v197;
        v37 = v214;
        v36 = v215;
        v42 = v210;
        if (!v29)
        {
          goto LABEL_22;
        }
      }
    }

    if (v38)
    {
      if (__OFSUB__(v191, v36))
      {
        goto LABEL_161;
      }

      v29 = v191 - v36;
      goto LABEL_17;
    }

    v29 = BYTE6(v37);
    if (BYTE6(v37))
    {
      goto LABEL_18;
    }

LABEL_21:
    a1 = _swiftEmptyArrayStorage;
LABEL_22:
    v216 = a1;
    v44 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    v45 = sub_10007A2D0();
    BidirectionalCollection<>.joined(separator:)();

    a1 = sub_1002D2F8C();

    v46 = *(a1 + 16);
    if (v46)
    {
      v216 = _swiftEmptyArrayStorage;
      sub_10019FAEC(0, v46, 0);
      v29 = 0;
      v47 = v216;
      v210 = (a1 + ((*(v213 + 80) + 32) & ~*(v213 + 80)));
      v211 = v46;
      v212 = a1;
      while (v29 < *(a1 + 16))
      {
        v48 = v34;
        v49 = v213;
        v50 = *(v213 + 16);
        v52 = v207;
        v51 = v208;
        v50(v207, &v210[*(v213 + 72) * v29], v208);
        v53 = v206;
        v50(v206, v52, v51);
        (*v203)(v53, v204, v17);
        (*(v49 + 8))(v52, v51);
        v216 = v47;
        v54 = v17;
        v56 = v47[2];
        v55 = v47[3];
        if (v56 >= v55 >> 1)
        {
          sub_10019FAEC((v55 > 1), v56 + 1, 1);
          v47 = v216;
        }

        ++v29;
        v47[2] = v56 + 1;
        v57 = (*(v209 + 80) + 32) & ~*(v209 + 80);
        v58 = *(v209 + 72);
        (*(v209 + 32))(v47 + v57 + v58 * v56, v53, v54);
        v17 = v54;
        v34 = v48;
        a1 = v212;
        if (v211 == v29)
        {

          v59 = v47[2];
          if (!v59)
          {
LABEL_42:

            sub_10006A178(v215, v214);
            goto LABEL_114;
          }

          v212 = *v195;
          v60 = v47 + v57;
          v29 = v190;
          v61 = v196;
          v62 = v171;
          while (2)
          {
            (v212)(v62, v60, v17);
            static SEStorageCredential.find(in:withType:)();
            v63 = *v200;
            if ((*v200)(v34, 1, v61) != 1)
            {
              (*v193)(v62, v17);
              v70 = v198;
              (*v178)(v198, v34, v61);
              v69 = 0;
              goto LABEL_36;
            }

            v64 = v34;
            v65 = v62;
            v66 = v198;
            v67 = v29;
            v68 = v194;
            sub_1002D326C(v215, v214, v65, v67, v198);
            if (v68)
            {
              v194 = 0;

              (*v193)(v65, v17);
              v62 = v65;
              if (v63(v64, 1, v196) != 1)
              {
                sub_100075768(v64, &qword_100509B28, &qword_1004147E8);
              }

              v69 = 1;
              v29 = v190;
              v70 = v198;
              v34 = v64;
              v61 = v196;
LABEL_36:
              (*v192)(v70, v69, 1, v61);
              v71 = v70;
LABEL_37:
              sub_100075768(v71, &qword_100509B28, &qword_1004147E8);
            }

            else
            {
              v194 = 0;
              sub_100075768(v66, &qword_100509B28, &qword_1004147E8);
              (*v193)(v65, v17);
              v72 = v63(v64, 1, v196);
              v71 = v64;
              v29 = v190;
              v62 = v65;
              v34 = v64;
              v61 = v196;
              if (v72 != 1)
              {
                goto LABEL_37;
              }
            }

            v60 += v58;
            if (!--v59)
            {
              goto LABEL_42;
            }

            continue;
          }
        }
      }

      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (qword_100501C78 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_1000958E4(v73, qword_100509A58);
    v74 = v215;
    sub_100069E2C(v215, v37);
    v75 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    sub_10006A178(v74, v37);
    v76 = os_log_type_enabled(v75, v29);
    a1 = v175;
    if (!v76)
    {

      sub_10006A178(v74, v37);
      goto LABEL_5;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v224 = v78;
    *v77 = v162;
    v211 = v77;
    v177 = v78;
    if (v210 > 1)
    {
      if (v210 != 2)
      {
        a1 = _swiftEmptyArrayStorage;
        goto LABEL_113;
      }

      v164 = v29;
      v94 = *(v74 + 16);
      v93 = *(v74 + 24);
      v29 = v93 - v94;
      if (__OFSUB__(v93, v94))
      {
        goto LABEL_166;
      }

      if (!v29)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v164 = v29;
      if (v210)
      {
        v98 = v191 - v74;
        if (__OFSUB__(v191, v74))
        {
          goto LABEL_165;
        }

        v29 = v98;
        if (!v98)
        {
LABEL_84:
          a1 = _swiftEmptyArrayStorage;
          goto LABEL_112;
        }
      }

      else
      {
        v29 = BYTE6(v37);
        if (!BYTE6(v37))
        {
          goto LABEL_84;
        }
      }
    }

    v159 = v75;
    v223 = _swiftEmptyArrayStorage;
    v95 = v29 & ~(v29 >> 63);
    sub_10019F3C0(0, v95, 0);
    v96 = v210;
    a1 = v223;
    v212 = v74;
    v161 = v44;
    v160 = v45;
    if (v210 == 2)
    {
      v97 = *(v74 + 16);
LABEL_87:
      if (v29 < 0)
      {
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
      }

      goto LABEL_91;
    }

    if (v210 == 1)
    {
      v97 = v212;
      goto LABEL_87;
    }

    if (v29 < 0)
    {
      goto LABEL_167;
    }

    v97 = 0;
LABEL_91:
    v99 = v74 >> 32;
    v100 = BYTE6(v37);
    do
    {
      if (!v95)
      {
        goto LABEL_151;
      }

      if (v96 == 2)
      {
        if (v97 < *(v74 + 16))
        {
          goto LABEL_154;
        }

        if (v97 >= *(v74 + 24))
        {
          goto LABEL_157;
        }

        v105 = __DataStorage._bytes.getter();
        if (!v105)
        {
          goto LABEL_171;
        }

        v102 = v105;
        v106 = __DataStorage._offset.getter();
        v104 = v97 - v106;
        if (__OFSUB__(v97, v106))
        {
          goto LABEL_159;
        }

        goto LABEL_105;
      }

      if (v96 == 1)
      {
        if (v97 < v212 || v97 >= v99)
        {
          goto LABEL_156;
        }

        v101 = __DataStorage._bytes.getter();
        if (!v101)
        {
          goto LABEL_170;
        }

        v102 = v101;
        v103 = __DataStorage._offset.getter();
        v104 = v97 - v103;
        if (__OFSUB__(v97, v103))
        {
          goto LABEL_158;
        }

LABEL_105:
        v107 = *(v102 + v104);
        goto LABEL_108;
      }

      if (v97 >= v100)
      {
        goto LABEL_155;
      }

      LOBYTE(v216) = v74;
      BYTE1(v216) = v189;
      BYTE2(v216) = v188;
      BYTE3(v216) = v187;
      BYTE4(v216) = v191;
      BYTE5(v216) = v186;
      BYTE6(v216) = v185;
      HIBYTE(v216) = v184;
      v217 = v37;
      v218 = v183;
      v219 = v182;
      v220 = v181;
      v221 = v180;
      v222 = v179;
      v107 = *(&v216 + v97);
LABEL_108:
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v108 = swift_allocObject();
      *(v108 + 16) = v199;
      *(v108 + 56) = &type metadata for UInt8;
      *(v108 + 64) = &protocol witness table for UInt8;
      *(v108 + 32) = v107;
      v109 = String.init(format:_:)();
      v223 = a1;
      v112 = *(a1 + 16);
      v111 = *(a1 + 24);
      if (v112 >= v111 >> 1)
      {
        v158 = v109;
        v114 = v110;
        sub_10019F3C0((v111 > 1), v112 + 1, 1);
        v110 = v114;
        v109 = v158;
        a1 = v223;
      }

      *(a1 + 16) = v112 + 1;
      v113 = a1 + 16 * v112;
      *(v113 + 32) = v109;
      *(v113 + 40) = v110;
      ++v97;
      --v95;
      --v29;
      v37 = v214;
      v74 = v215;
      v96 = v210;
    }

    while (v29);
    v17 = v197;
    v75 = v159;
LABEL_112:
    v29 = v164;
LABEL_113:
    v216 = a1;
    v115 = BidirectionalCollection<>.joined(separator:)();
    v117 = v116;

    v118 = sub_1002FFA0C(v115, v117, &v224);

    v119 = v211;
    *(v211 + 4) = v118;
    _os_log_impl(&_mh_execute_header, v75, v29, "%s not recognized.", v119, 0xCu);
    sub_1000752F4(v177);

    sub_10006A178(v215, v37);

LABEL_114:
    a1 = v175;
LABEL_5:
    v30 = v172;
    v32 = v176 + 1;
    if (v176 + 1 != v174)
    {
      continue;
    }

    break;
  }

LABEL_124:
  v124 = sub_1002EA4AC(0);
  if (*(v124 + 2))
  {
    v125 = *(v124 + 4);
    v126 = *(v124 + 5);
    sub_100069E2C(v125, v126);

    v204 = v126;
    v205 = v125;
    v127 = v126;
    v128 = v194;
    v216 = sub_100288788(v125, v127);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v129 = BidirectionalCollection<>.joined(separator:)();
    v131 = v130;

    v132 = SERDataSource.credentialSizes.getter();
    __chkstk_darwin(v132);
    *(&v158 - 2) = v129;
    *(&v158 - 1) = v131;
    sub_1002D62FC(v133, sub_1002D90F8);
    a1 = v134;
    v203 = v128;

    v29 = 0;
    v136 = a1 + 64;
    v135 = *(a1 + 64);
    v213 = a1;
    v137 = 1 << *(a1 + 32);
    v138 = -1;
    if (v137 < 64)
    {
      v138 = ~(-1 << v137);
    }

    v139 = v138 & v135;
    v140 = (v137 + 63) >> 6;
    LODWORD(v212) = enum case for CredentialType.Vienna(_:);
    v211 = v209 + 104;
    v210 = (v209 + 8);
    v214 = (v170 + 32);
    v215 = (v170 + 48);
    v208 = (v170 + 8);
    v209 += 16;
    LODWORD(v207) = enum case for SEStorageCredential.classicPackage(_:);
    v206 = (v170 + 104);
    v141 = v166;
    while (v139)
    {
LABEL_134:
      v144 = __clz(__rbit64(v139));
      v139 &= v139 - 1;
      v145 = (*(v213 + 48) + ((v29 << 10) | (16 * v144)));
      v146 = v145[1];
      v147 = v167;
      *v167 = *v145;
      v147[1] = v146;
      v148 = v197;
      (*v211)(v147, v212, v197);
      v149 = *v190;
      v150 = v147;

      static SEStorageCredential.find(in:withType:)();
      isa = v215->isa;
      a1 = v196;
      if ((v215->isa)(v141, 1, v196) == 1)
      {
        (*v209)(v165, v150, v148);
        v152 = objc_allocWithZone(type metadata accessor for SEPackageDetails());
        v153 = SEPackageDetails.init(packageLoaded:containers:instances:moduleAID:type:)();
        v154 = v168;
        *v168 = v153;
        (*v206)(v154, v207, a1);
        v155 = v214->isa;
        (v214->isa)(v169, v154, a1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_10012FAA8(0, v149[2] + 1, 1, v149);
        }

        a1 = v149[2];
        v156 = v149[3];
        if (a1 >= v156 >> 1)
        {
          v149 = sub_10012FAA8((v156 > 1), a1 + 1, 1, v149);
        }

        (*v210)(v167, v197);
        v149[2] = a1 + 1;
        v157 = v196;
        v155((v149 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * a1), v169, v196);
        *v190 = v149;
        v141 = v166;
        if (isa(v166, 1, v157) != 1)
        {
          sub_100075768(v141, &qword_100509B28, &qword_1004147E8);
        }
      }

      else
      {
        (*v210)(v150, v148);
        v142 = v168;
        (v214->isa)(v168, v141, a1);
        (*v208)(v142, a1);
      }
    }

    while (1)
    {
      v143 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v143 >= v140)
      {
        sub_10006A178(v205, v204);

        return;
      }

      v139 = *(v136 + 8 * v143);
      ++v29;
      if (v139)
      {
        v29 = v143;
        goto LABEL_134;
      }
    }

LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_once();
LABEL_116:
    v120 = type metadata accessor for Logger();
    sub_1000958E4(v120, qword_100509A58);
    v214 = a1;
    v215 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v215, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 67109120;
      *(v122 + 4) = [v214 *(v29 + 3920)];

      _os_log_impl(&_mh_execute_header, v215, v121, "Error get status, expect E3 got %u, skip and continue to process next TLV.", v122, 8u);

      v123 = v215;
    }

    else
    {

      v123 = v214;
    }
  }

  else
  {
  }
}

uint64_t sub_1002D7C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 TLVsWithData:isa];

  if (v8)
  {
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_4:
        if (v10 >= 1)
        {
          for (i = 0; i != v10; ++i)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v12 = *(v9 + 8 * i + 32);
            }

            v13 = v12;
            sub_1002D647C(v12, a3, a4);
          }
        }

        __break(1u);
        goto LABEL_17;
      }
    }
  }

  if (qword_100501C78 != -1)
  {
LABEL_17:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000958E4(v14, qword_100509A58);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Packages: No TLV in the reponse of get status for applets", v17, 2u);
  }

  v18 = type metadata accessor for SERXPCInternalErrors();
  sub_1002D9BE4(&qword_100507080, &type metadata accessor for SERXPCInternalErrors, &protocol conformance descriptor for SERXPCInternalErrors);
  swift_allocError();
  *v19 = 0xD000000000000039;
  v19[1] = 0x800000010046B370;
  (*(*(v18 - 8) + 104))(v19, enum case for SERXPCInternalErrors.formatError(_:), v18);
  return swift_willThrow();
}

void *sub_1002D7F1C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (a2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    sub_100068FC4(&qword_100509B38, &qword_1004147F8);
    v6 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v6 = _swiftEmptyDictionarySingleton;
  }

  v8 = v6;

  sub_1002D4404(a1, a2, 1, &v8);
  return v8;
}

void *sub_1002D8008(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_24:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v26 = v6;
    v7 = v5;
    v8 = [v5 appletIdentifier];
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v13 = sub_10008C8DC(v9, v11);
    v14 = _swiftEmptyDictionarySingleton[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_22;
    }

    v17 = v12;
    if (_swiftEmptyDictionarySingleton[3] < v16)
    {
      break;
    }

LABEL_15:
    if (v17)
    {
      sub_10006A178(v9, v11);
      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v13);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      sub_100068FC4(&qword_100504060, &qword_10040B370);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100409E40;
      *(v20 + 32) = v7;
      _swiftEmptyDictionarySingleton[(v13 >> 6) + 8] |= 1 << v13;
      v21 = (_swiftEmptyDictionarySingleton[6] + 16 * v13);
      *v21 = v9;
      v21[1] = v11;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v13) = v20;
      v22 = _swiftEmptyDictionarySingleton[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      _swiftEmptyDictionarySingleton[2] = v24;
    }

    if (v26 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  sub_10030D5F8(v16, 1);
  v18 = sub_10008C8DC(v9, v11);
  if ((v17 & 1) == (v19 & 1))
  {
    v13 = v18;
    goto LABEL_15;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002D82BC(uint64_t a1, uint64_t a2)
{
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v2[19] = sub_1000958E4(v3, qword_100509A58);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Calling into CT to get profile size information", v6, 2u);
  }

  v7 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:0];
  v2[20] = v7;
  v2[2] = v2;
  v2[7] = v2 + 18;
  v2[3] = sub_1002D84AC;
  v8 = swift_continuation_init();
  v2[17] = sub_100068FC4(&qword_100509B20, &qword_1004147E0);
  v2[10] = _NSConcreteStackBlock;
  v2[11] = 1107296256;
  v2[12] = sub_1002D3BC4;
  v2[13] = &unk_1004CF460;
  v2[14] = v8;
  [v7 getProfileSizeInformationWithCompletion:v2 + 10];

  return _swift_continuation_await(v2 + 2);
}

uint64_t sub_1002D84AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1002D8804;
  }

  else
  {
    v2 = sub_1002D85BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D85BC()
{
  v18 = v0;
  v1 = v0[20];
  v2 = v0[18];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v2 + 16);

    *(v5 + 4) = v6;

    _os_log_impl(&_mh_execute_header, v3, v4, "Received profile size information : %ld", v5, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    v11 = Dictionary.description.getter();
    v13 = sub_1002FFA0C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s returned for getProfileSizeInfo", v9, 0xCu);
    sub_1000752F4(v10);
  }

  v14 = sub_1002BC604(v2);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_1002D8804(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching eSIM information failed: %@", v5, 0xCu);
    sub_100075768(v6, &unk_100503F70, &unk_10040B2E0);
  }

  v8 = *(v1 + 8);

  return v8(_swiftEmptyArrayStorage);
}

void *sub_1002D8968(uint64_t *a1)
{
  v2 = type metadata accessor for CredentialType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for CredentialType.muirfield(_:), v2, v4);
  v7 = CredentialType.instanceAID.getter();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v10 = sub_10013044C(v7, v9);
  v12 = v11;
  sub_10007A334(v10, v11, &off_1004C4830, a1);
  sub_10006A2D0(v10, v12);
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_100509A58);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Calling into Muirfield to get profile size information", v16, 2u);
  }

  v17 = objc_opt_self();
  v57 = 0;
  v18 = [v17 getSPRInspectorAndReturnError:&v57];
  v19 = v57;
  if (v18)
  {
    v20 = v18;
    v57 = 0;
    v21 = v19;
    v22 = sub_100053D3C(a1);
    if (!v22)
    {
      v47 = v57;

      goto LABEL_13;
    }

    v23 = v22;
    v24 = v57;
    v26 = sub_1003AF3C4(a1, v25);
    v27 = [v26 seid];

    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v57 = sub_100288788(v28, v30);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    BidirectionalCollection<>.joined(separator:)();
    sub_10006A178(v28, v30);

    v31 = String._bridgeToObjectiveC()();

    v33 = sub_1003AF3C4(a1, v32);
    v34 = [v33 isProd];

    v57 = 0;
    v35 = [v20 getMemoryInfoWithSession:v23 seid:v31 isProduction:v34 error:&v57];

    v19 = v57;
    if (v35)
    {
      v36 = v57;
      [v35 nvm];
      [v35 cor];
      [v35 cod];
      [v35 idx];
      v37 = objc_allocWithZone(type metadata accessor for MemoryUsage());
      v38 = MemoryUsage.init(pHeap:cor:cod:usedIndices:)();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v57 = v42;
        *v41 = 136315138;
        if (v38)
        {
          v43 = [v38 description];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
        }

        else
        {
          v46 = 0xE500000000000000;
          v44 = 0x3F3F6C696ELL;
        }

        v55 = sub_1002FFA0C(v44, v46, &v57);

        *(v41 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v39, v40, "Received Muirfield size information %s", v41, 0xCu);
        sub_1000752F4(v42);
      }

      return v38;
    }
  }

  v47 = v19;
LABEL_13:
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100501C78 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_1000958E4(v48, qword_100509A58);
  swift_errorRetain();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    swift_errorRetain();
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 4) = v53;
    *v52 = v53;
    _os_log_impl(&_mh_execute_header, v49, v50, "Muirfield get credential size failed: %@", v51, 0xCu);
    sub_100075768(v52, &unk_100503F70, &unk_10040B2E0);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1002D9100(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100509B28, &qword_1004147E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D9190()
{
  v0 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for SERXPCServer();
  inited = swift_initStaticObject();

  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  *(inited + 16) = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
}

uint64_t sub_1002D92A0()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002D9328(uint64_t a1)
{
  type metadata accessor for XPCReceivedMessage();

  return sub_1002BDDE4(a1);
}

uint64_t sub_1002D9398(double a1)
{
  v2 = type metadata accessor for SERXPCRequest();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 16, v4 | 7);
}

uint64_t sub_1002D948C(uint64_t a1, double a2)
{
  v4 = v3;
  v6 = *(type metadata accessor for SERXPCRequest() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + v9);
  v14 = *(v2 + v9 + 8);
  v15 = swift_task_alloc();
  *(v4 + 16) = v15;
  *v15 = v4;
  v15[1] = sub_1000C288C;

  return sub_1002BE5A8(a1, v11, v12, v2 + v7, v10, v13, v14);
}

uint64_t sub_1002D9630(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10012E598;

  return sub_1002CBD1C(a1, a2);
}

uint64_t sub_1002D96DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000C288C;

  return sub_1002CEBDC(a1, a2);
}

uint64_t sub_1002D978C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1002D97CC()
{
  v1 = sub_100068FC4(&qword_100509B80, &qword_1004148E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002D9860(uint64_t a1)
{
  v3 = *(sub_100068FC4(&qword_100509B80, &qword_1004148E8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002CFDD8(a1, v4);
}

uint64_t sub_1002D98DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D98F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10012E598;

  return sub_1002D00D8(a1, a2, v6);
}

uint64_t sub_1002D99A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_1002D046C(a1, a2, v6, v7, v8);
}

uint64_t sub_1002D9A6C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10012E598;

  return sub_1002D0A94(a1, a2, v7, v6);
}

uint64_t sub_1002D9B20(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10012E598;

  return sub_1002D0F98(a1, a2, v6, v7, v8);
}

uint64_t sub_1002D9BE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002D9C74(int a1, unint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, NSObject *a6, void *a7, int a8)
{
  v204 = a8;
  v199 = a6;
  v200 = a7;
  v205 = a4;
  v206 = a5;
  v207 = a3;
  LODWORD(v208) = a1;
  v188 = type metadata accessor for Logger();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v185 = &v185 - v11;
  v12 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v196 = *(v12 - 8);
  v13 = *(v196 + 64);
  __chkstk_darwin(v12 - 8);
  v195 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v202 = &v185 - v15;
  __chkstk_darwin(v16);
  v191 = &v185 - v17;
  __chkstk_darwin(v18);
  v194 = &v185 - v19;
  v203 = type metadata accessor for UUID();
  v201 = *(v203 - 8);
  __chkstk_darwin(v203);
  v189 = &v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v190 = &v185 - v22;
  __chkstk_darwin(v23);
  v192 = &v185 - v24;
  __chkstk_darwin(v25);
  v193 = &v185 - v26;
  __chkstk_darwin(v27);
  v197 = &v185 - v28;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v185 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v33 = qword_10051B7F0;
  *v32 = qword_10051B7F0;
  v34 = enum case for DispatchPredicate.onQueue(_:);
  v35 = *(v30 + 104);
  v35(v32, enum case for DispatchPredicate.onQueue(_:), v29);
  v198 = v33;
  v36 = _dispatchPreconditionTest(_:)();
  v39 = *(v30 + 8);
  v38 = v30 + 8;
  v37 = v39;
  (v39)(v32, v29);
  if ((v36 & 1) == 0)
  {
    __break(1u);
LABEL_80:
    swift_once();
    goto LABEL_10;
  }

  if (v209[OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning] != 1)
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Not running", v59, 2u);
LABEL_18:
    }

LABEL_19:

    return;
  }

  if (v208 != 11)
  {
    v60 = a2;
    v61 = a2;
    v62 = v207;
    sub_100069E2C(v60, v207);
    v57 = Logger.logObject.getter();
    v63 = static os_log_type_t.info.getter();
    sub_10006A178(v61, v62);
    if (os_log_type_enabled(v57, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v210 = v65;
      *v64 = 16777730;
      *(v64 + 4) = v208;
      *(v64 + 5) = 2080;
      v213 = sub_100288788(v61, v62);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v66 = BidirectionalCollection<>.joined(separator:)();
      v68 = v67;

      v69 = sub_1002FFA0C(v66, v68, &v210);

      *(v64 + 7) = v69;
      _os_log_impl(&_mh_execute_header, v57, v63, "Ignoring unknown message with identifier %hhu payload %s", v64, 0xFu);
      sub_1000752F4(v65);

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v208 = v37;
  v40 = a2;
  v41 = a2;
  v42 = v207;
  v43 = sub_1002DC834(v40, v207);
  if ((v43 & 0x10000) != 0)
  {
    sub_100069E2C(v41, v42);
    v197 = v41;
    v70 = sub_1000939AC(v41, v42, 1, 0, 0);
    switch(v70)
    {
      case 164:
        LOBYTE(v32) = 1;
        break;
      case 113:
        v80 = objc_opt_self();
        v29 = v205;
        UUID.uuidString.getter();
        v81 = String._bridgeToObjectiveC()();

        sub_1003ADCE0(v80, 1u, v81);

        LOBYTE(v32) = 0;
        goto LABEL_34;
      case 60:
        if (qword_100501B60 != -1)
        {
          swift_once();
        }

        v202 = qword_10051B5A0;
        v71 = sub_1002B3B94(&off_1004C3818);
        v209 = v72;
        v73 = v198;
        *v32 = v198;
        v35(v32, v34, v29);
        v74 = v73;
        v75 = _dispatchPreconditionTest(_:)();
        v208(v32, v29);
        if ((v75 & 1) == 0)
        {
          __break(1u);
          goto LABEL_84;
        }

        v29 = v205;
        v76 = v206;
        v77 = v203;
        v78 = v201;
        if (v206)
        {
          v79 = v191;
          sub_1000756F8(v199, v191);
          if ((*(v78 + 48))(v79, 1, v77) == 1)
          {
            sub_100075768(v79, &unk_10050BE80, &unk_10040B360);
          }

          else
          {
            v137 = v190;
            (*(v78 + 32))(v190, v79, v77);
            v138 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
            swift_beginAccess();
            v139 = v193;
            v208 = *(v78 + 16);
            (v208)(v193, v29 + v138, v77);
            v140 = static UUID.== infix(_:_:)();
            v142 = *(v78 + 8);
            v141 = v78 + 8;
            v143 = v139;
            v144 = v142;
            v142(v143, v77);
            if ((v140 & 1) == 0)
            {
              v206 = v144;
              v201 = v141;
              v151 = v189;
              (v208)(v189, v137, v77);

              v152 = Logger.logObject.getter();
              v153 = static os_log_type_t.error.getter();

              v204 = v153;
              if (os_log_type_enabled(v152, v153))
              {
                v154 = swift_slowAlloc();
                v200 = swift_slowAlloc();
                v213 = v200;
                *v154 = 136315394;
                v198 = sub_10007554C();
                v199 = v152;
                v155 = dispatch thunk of CustomStringConvertible.description.getter();
                v157 = v156;
                (v206)(v151, v77);
                v158 = sub_1002FFA0C(v155, v157, &v213);

                v196 = v154;
                *(v154 + 4) = v158;
                *(v154 + 12) = 2080;
                v159 = v193;
                (v208)(v193, v205 + v138, v77);
                v160 = v190;
                v161 = dispatch thunk of CustomStringConvertible.description.getter();
                v163 = v162;
                v164 = v159;
                v165 = v206;
                (v206)(v164, v77);
                v166 = sub_1002FFA0C(v161, v163, &v213);
                v29 = v205;

                v167 = v196;
                *(v196 + 14) = v166;
                v168 = v199;
                _os_log_impl(&_mh_execute_header, v199, v204, "Connection identifier has changed %s %s", v167, 0x16u);
                swift_arrayDestroy();
              }

              else
              {
                v160 = v137;

                v169 = v151;
                v165 = v206;
                (v206)(v169, v77);
              }

              v165(v160, v77);
              v35 = v209;
              goto LABEL_75;
            }

            v144(v137, v77);
          }

          v76 = v206;
        }

        if ((v76 & 2) == 0 || (v204 & 1) != 0 || (v145 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber, *(v29 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) == v200))
        {
          v35 = v209;
          v32 = sub_100239160(1, 12, v71, v209);
          v38 = v146;
          if (qword_100501960 == -1)
          {
LABEL_67:
            sub_1000E71A0(v32, v38, v29);
            sub_10006A178(v32, v38);
            goto LABEL_75;
          }

LABEL_84:
          swift_once();
          goto LABEL_67;
        }

        v147 = Logger.logObject.getter();
        v148 = static os_log_type_t.error.getter();
        v149 = os_log_type_enabled(v147, v148);
        v35 = v209;
        if (v149)
        {
          v150 = swift_slowAlloc();
          *v150 = 134218240;
          *(v150 + 4) = v200;
          *(v150 + 12) = 2048;
          *(v150 + 14) = *(v29 + v145);

          _os_log_impl(&_mh_execute_header, v147, v148, "Sequence number has changed %ld %ld", v150, 0x16u);
        }

        else
        {
        }

LABEL_75:
        sub_10006A178(v71, v35);
        v170 = objc_opt_self();
        UUID.uuidString.getter();
        v171 = String._bridgeToObjectiveC()();

        v172 = sub_1003AE1A8(v170, v171);

        if (v172 == 4)
        {
          v173 = v197;
          v174 = v207;
          sub_100069E2C(v197, v207);
          v175 = sub_1000939AC(v173, v174, 2, 0, 0);
          sub_100069E2C(v173, v174);
          v176 = sub_1000939AC(v173, v174, 3, 0, 0);
          if (v175 == 1 && (v176 & 0xFE) == 0x90)
          {
            sub_1002370C8(v29);
          }
        }

        return;
      default:
        LOBYTE(v32) = 0;
        break;
    }

    v29 = v205;
LABEL_34:
    LOBYTE(v34) = v204;
    v37 = v209;
    if (qword_100501A30 == -1)
    {
LABEL_35:
      v82 = *&v37[OBJC_IVAR____TtC10seserviced8AlishaSE_seTimeoutInSec];
      v208 = qword_10051B358;
      v83 = *(v29 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      v198 = v82;
      if (v83 >> 60 == 15)
      {
        v212 = 0;
        v210 = 0u;
        v211 = 0u;
      }

      else
      {
        v84 = *(v29 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
        v85 = type metadata accessor for AlishaSE.HandoffToken();
        v86 = swift_allocObject();
        *(v86 + 16) = v84;
        *(v86 + 24) = v83;
        *(&v211 + 1) = v85;
        v212 = &off_1004CF620;
        *&v210 = v86;
        sub_100069E2C(v84, v83);
      }

      v87 = v196;
      v88 = v199;
      sub_1000756F8(v199, v202);
      v89 = v195;
      sub_1000756F8(v88, v195);
      v90 = (*(v87 + 80) + 64) & ~*(v87 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = v32;
      v93 = v206;
      v92 = v207;
      *(v91 + 24) = v197;
      *(v91 + 32) = v92;
      *(v91 + 40) = v209;
      *(v91 + 48) = v29;
      *(v91 + 56) = v93;
      sub_100075390(v89, v91 + v90);
      v94 = v91 + ((v13 + v90 + 7) & 0xFFFFFFFFFFFFFFF8);
      v95 = v200;
      *v94 = v200;
      *(v94 + 8) = v34 & 1;
      type metadata accessor for SERequest(0);
      v96 = swift_allocObject();
      if (v93)
      {
        v97 = (*(v201 + 48))(v202, 1, v203);
        v93 = v206;
        if (v97 == 1)
        {
          swift_retain_n();
          sub_100069E2C(v197, v92);
          v181 = qword_100501D88;

          if (v181 != -1)
          {
            swift_once();
          }

          (*(v187 + 16))(v185, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v188);
          v182 = Logger.logObject.getter();
          v183 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v182, v183))
          {
            v184 = swift_slowAlloc();
            *v184 = 0;
            _os_log_impl(&_mh_execute_header, v182, v183, "Requesting connection identifier check with no connection identifier", v184, 2u);
          }

          else
          {
          }

          v186 = v185;
          goto LABEL_95;
        }
      }

      if (v93 & 2) != 0 && (v34)
      {
        swift_retain_n();
        sub_100069E2C(v197, v92);
        v177 = qword_100501D88;

        if (v177 != -1)
        {
          goto LABEL_96;
        }

        while (1)
        {
          (*(v187 + 16))(v186, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v188);
          v178 = Logger.logObject.getter();
          v179 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            *v180 = 0;
            _os_log_impl(&_mh_execute_header, v178, v179, "Requesting sequence number check with no sequence number", v180, 2u);
          }

          else
          {
          }

LABEL_95:

          (*(v187 + 8))(v186, v188);
          sub_100075768(&v210, &qword_100502438, &qword_100409990);
          swift_deallocPartialClassInstance();
          sub_100075768(v202, &unk_10050BE80, &unk_10040B360);
          __break(1u);
          swift_unexpectedError();
          __break(1u);
LABEL_96:
          swift_once();
        }
      }

      v98 = (v96 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
      *v98 = 0xD000000000000019;
      v98[1] = 0x800000010046BA20;
      *(v96 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = v32;
      *(v96 + 16) = v198;
      *(v96 + 24) = 0;
      v99 = v96 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
      *(v99 + 32) = v212;
      v100 = v211;
      *v99 = v210;
      *(v99 + 16) = v100;
      *(v96 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
      *(v96 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = v29;
      v101 = v96 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
      *v101 = v93;
      *(v101 + 8) = 0;
      v102 = v202;
      sub_1000756F8(v202, v96 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
      v103 = v96 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
      *v103 = v95;
      *(v103 + 8) = v34 & 1;
      *(v96 + 32) = sub_1002DFFD8;
      *(v96 + 40) = v91;
      swift_retain_n();
      sub_100069E2C(v197, v92);

      sub_100075768(v102, &unk_10050BE80, &unk_10040B360);
      sub_1001939C8(1, v96);

      return;
    }

LABEL_82:
    swift_once();
    goto LABEL_35;
  }

  LODWORD(a2) = v43;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Blocking invalid command", v46, 2u);
  }

  v37 = v208;
  if (qword_100501B60 != -1)
  {
    goto LABEL_80;
  }

LABEL_10:
  v13 = qword_10051B5A0;
  LOWORD(v210) = bswap32(a2) >> 16;
  v207 = sub_1002B1854(&v210, &v210 + 2);
  v209 = v47;
  v48 = v198;
  *v32 = v198;
  v35(v32, v34, v29);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  (v37)(v32, v29);
  if ((v48 & 1) == 0)
  {
    __break(1u);
    goto LABEL_82;
  }

  v51 = v205;
  v50 = v206;
  v52 = v203;
  v53 = v201;
  v54 = v204;
  v55 = v197;
  if ((v206 & 1) == 0)
  {
LABEL_46:
    if ((v50 & 2) == 0 || (v54 & 1) != 0 || (v110 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber, *(v51 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) == v200))
    {
      v111 = v207;
      v112 = v209;
      v113 = sub_100239160(1, 12, v207, v209);
      v115 = v114;
      if (qword_100501960 != -1)
      {
        swift_once();
      }

      sub_1000E71A0(v113, v115, v51);
      sub_10006A178(v113, v115);
      sub_10006A178(v111, v112);
    }

    else
    {

      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 134218240;
        *(v118 + 4) = v200;
        *(v118 + 12) = 2048;
        *(v118 + 14) = *(v51 + v110);

        _os_log_impl(&_mh_execute_header, v116, v117, "Sequence number has changed %ld %ld", v118, 0x16u);
      }

      else
      {
      }

      sub_10006A178(v207, v209);
    }

    return;
  }

  v56 = v194;
  sub_1000756F8(v199, v194);
  if ((*(v53 + 48))(v56, 1, v52) == 1)
  {
    sub_100075768(v56, &unk_10050BE80, &unk_10040B360);
LABEL_45:
    v50 = v206;
    goto LABEL_46;
  }

  (*(v53 + 32))(v55, v56, v52);
  v104 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
  swift_beginAccess();
  v105 = *(v53 + 16);
  v106 = v193;
  v105(v193, v51 + v104, v52);
  v107 = static UUID.== infix(_:_:)();
  v108 = v106;
  v109 = *(v53 + 8);
  v109(v108, v52);
  if (v107)
  {
    v109(v55, v52);
    v54 = v204;
    goto LABEL_45;
  }

  v208 = v109;
  v119 = v192;
  v105(v192, v55, v52);

  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v213 = v206;
    *v122 = 136315394;
    sub_10007554C();
    v204 = v121;
    v123 = dispatch thunk of CustomStringConvertible.description.getter();
    v125 = v124;
    v126 = v119;
    v127 = v208;
    v208(v126, v203);
    v128 = sub_1002FFA0C(v123, v125, &v213);

    *(v122 + 4) = v128;
    *(v122 + 12) = 2080;
    v129 = v193;
    v105(v193, v205 + v104, v203);
    v130 = dispatch thunk of CustomStringConvertible.description.getter();
    v132 = v131;
    v127(v129, v203);
    v133 = sub_1002FFA0C(v130, v132, &v213);

    *(v122 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v120, v204, "Connection identifier has changed %s %s", v122, 0x16u);
    swift_arrayDestroy();

    v52 = v203;
  }

  else
  {

    v134 = v119;
    v127 = v208;
    v208(v134, v52);
  }

  v135 = v209;
  v136 = v207;
  v127(v197, v52);
  sub_10006A178(v136, v135);
}

void sub_1002DB638()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning;
    v9 = *(v1 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning);
    v10 = Logger.logObject.getter();
    if (v9)
    {
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "AlishaSE is already running", v12, 2u);
      }
    }

    else
    {
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, v13, "Starting AlishaSE", v14, 2u);
      }

      *(v1 + v8) = 1;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002DB870()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning;
    v9 = *(v1 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning);
    v10 = Logger.logObject.getter();
    if (v9 == 1)
    {
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Stopping AlishaSE", v12, 2u);
      }

      *(v1 + v8) = 0;
    }

    else
    {
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, v13, "AlishaSE is not running", v14, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002DBAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a7;
  v56 = a8;
  v57 = a3;
  v54 = a1;
  v13 = type metadata accessor for Logger();
  v52 = *(v13 - 8);
  v53 = v13;
  __chkstk_darwin(v13);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v50 = &v50 - v16;
  v17 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v24 = qword_10051B7F0;
  *v23 = qword_10051B7F0;
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (*(v8 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning) != 1)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Not running", v30, 2u);
    }

    return;
  }

  if (qword_100501A30 != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  v26 = v57;
  v27 = *(v57 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v27 >> 60 == 15)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
  }

  else
  {
    v31 = *(v57 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v32 = type metadata accessor for AlishaSE.HandoffToken();
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v27;
    *(&v59 + 1) = v32;
    v60 = &off_1004CF620;
    *&v58 = v33;
    sub_100069E2C(v31, v27);
  }

  sub_1000756F8(a6, v19);
  type metadata accessor for SERequest(0);
  v34 = swift_allocObject();
  if ((a5 & 1) == 0)
  {
    if (a4)
    {
      v35 = type metadata accessor for UUID();
      if ((*(*(v35 - 8) + 48))(v19, 1, v35) == 1)
      {
        v46 = qword_100501D88;

        if (v46 != -1)
        {
          swift_once();
        }

        (*(v52 + 16))(v50, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v53);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "Requesting connection identifier check with no connection identifier", v49, 2u);
        }

        else
        {
        }

        v51 = v50;
        goto LABEL_29;
      }
    }

    if ((a4 & 2) != 0)
    {
      v42 = qword_100501D88;

      if (v42 != -1)
      {
        goto LABEL_30;
      }

      while (1)
      {
        (*(v52 + 16))(v51, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v53);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Requesting sequence number check with no sequence number", v45, 2u);
        }

        else
        {
        }

LABEL_29:
        (*(v52 + 8))(v51, v53);
        sub_100075768(&v58, &qword_100502438, &qword_100409990);
        swift_deallocPartialClassInstance();
        sub_100075768(v19, &unk_10050BE80, &unk_10040B360);
        __break(1u);
LABEL_30:
        swift_once();
      }
    }
  }

  v36 = (v34 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
  *v36 = v54;
  v36[1] = a2;
  *(v34 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) = 1;
  *(v34 + 16) = 0;
  *(v34 + 24) = 1;
  v37 = v34 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
  *(v37 + 32) = v60;
  v38 = v59;
  *v37 = v58;
  *(v37 + 16) = v38;
  *(v34 + OBJC_IVAR____TtC10seserviced9SERequest_priority) = 2;
  *(v34 + OBJC_IVAR____TtC10seserviced9SERequest_peer) = v26;
  v39 = v34 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks;
  *v39 = a4;
  *(v39 + 8) = a5 & 1;
  sub_1000756F8(v19, v34 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier);
  v40 = v34 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = v56;
  *(v34 + 32) = v55;
  *(v34 + 40) = v41;

  sub_100075768(v19, &unk_10050BE80, &unk_10040B360);
  sub_1001939C8(0, v34);
}

void sub_1002DC22C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning) == 1)
  {
    if (qword_100501A30 == -1)
    {
LABEL_6:
      sub_1001990A4(a1);
      sub_100194774(a1);
      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Not running", v11, 2u);
  }
}

uint64_t sub_1002DC444()
{
  type metadata accessor for AlishaSE(0);
  swift_allocObject();
  result = sub_1002DC484();
  qword_10051B6E8 = result;
  return result;
}

uint64_t sub_1002DC484()
{
  v1 = v0;
  v2 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v1 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning) = 0;
  v6 = OBJC_IVAR____TtC10seserviced8AlishaSE_seTimeoutInSec;
  v16 = 0x4008000000000000;
  aBlock = 0;
  LOBYTE(v11) = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  *(v1 + v6) = aBlock;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = sub_1002DFE80;
  v15 = v1;
  aBlock = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100193978;
  v13 = &unk_1004CF638;
  v7 = _Block_copy(&aBlock);

  os_state_add_handler();
  _Block_release(v7);
  return v1;
}

_DWORD *sub_1002DC6DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced8AlishaSE_isRunning);
  v10 = &type metadata for Bool;
  LOBYTE(v9) = v1;
  sub_100075D50(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v8, 0x6E696E6E75527369, 0xE900000000000067, isUniquelyReferenced_nonNull_native);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced8AlishaSE_seTimeoutInSec);
  v10 = &type metadata for Double;
  *&v9 = v3;
  sub_100075D50(&v9, v8);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v8, 0x756F656D69546573, 0xEE006365536E4974, v4);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = sub_100015DA0("alishase.state", isa);

  return v6;
}

uint64_t sub_1002DC834(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v63[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 >= 4)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    goto LABEL_62;
  }

  if (v10)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 4)
      {
        goto LABEL_18;
      }

LABEL_11:
      sub_100069E2C(a1, a2);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      sub_10006A178(a1, a2);
      if (!os_log_type_enabled(v15, v16))
      {
LABEL_14:

        v24 = 0;
        v25 = 26368;
        return v25 | (v24 << 16);
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v63[0] = v18;
      *v17 = 136315138;
      v62 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v19 = BidirectionalCollection<>.joined(separator:)();
      v21 = v20;

      v22 = sub_1002FFA0C(v19, v21, v63);

      *(v17 + 4) = v22;
      v23 = "Payload is too short %s";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v15, v16, v23, v17, 0xCu);
      sub_1000752F4(v18);

      goto LABEL_14;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (BYTE6(a2) < 4uLL)
  {
    goto LABEL_11;
  }

LABEL_18:
  sub_100069E2C(a1, a2);
  v27 = sub_100090214(a1, a2, 0, 0, 0);
  sub_10006A178(a1, a2);
  v25 = 0;
  v24 = 1;
  if (v27 > 0x8070u)
  {
    if (v27 - 32881 <= 0x10 && ((1 << (v27 - 113)) & 0x18001) != 0 || v27 == 33928 || v27 == 33993)
    {
      return v25 | (v24 << 16);
    }

    goto LABEL_30;
  }

  if (v27 - 32828 < 3)
  {
    return v25 | (v24 << 16);
  }

  if (v27 != 164)
  {
LABEL_30:
    sub_100069E2C(a1, a2);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v63[0] = v32;
      *v31 = 136315138;
      v62 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v33 = BidirectionalCollection<>.joined(separator:)();
      v35 = v34;

      v36 = sub_1002FFA0C(v33, v35, v63);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Blocked command %s", v31, 0xCu);
      sub_1000752F4(v32);
    }

    v24 = 0;
    v25 = 27904;
    return v25 | (v24 << 16);
  }

  if (v10 != 2)
  {
    if (v10 == 1)
    {
      LODWORD(v28) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v28 = v28;
        goto LABEL_37;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    goto LABEL_36;
  }

  v38 = *(a1 + 16);
  v37 = *(a1 + 24);
  v13 = __OFSUB__(v37, v38);
  v28 = v37 - v38;
  if (v13)
  {
    __break(1u);
LABEL_36:
    v28 = BYTE6(a2);
  }

LABEL_37:
  if (v28 < 5)
  {
LABEL_47:
    sub_100069E2C(a1, a2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_14;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v63[0] = v18;
    *v17 = 136315138;
    v62 = sub_100288788(a1, a2);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v43 = BidirectionalCollection<>.joined(separator:)();
    v45 = v44;

    v46 = sub_1002FFA0C(v43, v45, v63);

    *(v17 + 4) = v46;
    v23 = "Payload for SELECT is too short %s";
    goto LABEL_13;
  }

  sub_100069E2C(a1, a2);
  v39 = sub_1000939AC(a1, a2, 4, 0, 0);
  if (v10 == 2)
  {
    v42 = *(a1 + 16);
    v41 = *(a1 + 24);
    v13 = __OFSUB__(v41, v42);
    v40 = v41 - v42;
    if (!v13)
    {
LABEL_46:
      if (v40 < v39 + 5)
      {
        goto LABEL_47;
      }

      v47 = Data.subdata(in:)();
      v49 = v48;
      sub_100069E2C(v47, v48);
      v51 = sub_10013044C(0xD00000000000001ALL, 0x80000001004629D0);
      v52 = v50;
      if (v49 >> 60 == 15)
      {
        if (v50 >> 60 == 15)
        {
          sub_10006A178(v47, v49);
          sub_10006A2D0(v47, v49);
LABEL_60:
          v25 = 0;
          v24 = 1;
          return v25 | (v24 << 16);
        }
      }

      else if (v50 >> 60 != 15)
      {
        sub_100069E2C(v47, v49);
        sub_10006A2BC(v51, v52);
        v61 = sub_10008FB4C(v47, v49, v51, v52);
        sub_10006A2D0(v51, v52);
        sub_10006A2D0(v51, v52);
        sub_10006A178(v47, v49);
        sub_10006A2D0(v47, v49);
        if (v61)
        {
          sub_10006A178(v47, v49);
          goto LABEL_60;
        }

LABEL_54:
        sub_100069E2C(v47, v49);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();
        sub_10006A178(v47, v49);
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v63[0] = v56;
          *v55 = 136315138;
          v62 = sub_100288788(v47, v49);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_10007A2D0();
          v57 = BidirectionalCollection<>.joined(separator:)();
          v59 = v58;

          v60 = sub_1002FFA0C(v57, v59, v63);

          *(v55 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v53, v54, "Invalid AID for SELECT %s", v55, 0xCu);
          sub_1000752F4(v56);

          sub_10006A178(v47, v49);
        }

        else
        {

          sub_10006A178(v47, v49);
        }

        v24 = 0;
        v25 = 27266;
        return v25 | (v24 << 16);
      }

      sub_10006A2D0(v47, v49);
      sub_10006A2D0(v51, v52);
      goto LABEL_54;
    }

    __break(1u);
LABEL_45:
    v40 = BYTE6(a2);
    goto LABEL_46;
  }

  if (v10 != 1)
  {
    goto LABEL_45;
  }

  LODWORD(v40) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v40 = v40;
    goto LABEL_46;
  }

LABEL_65:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1002DD1A0(void *a1, char a2, char a3, NSObject *a4, unint64_t a5, NSObject *a6, char *a7, void (*a8)(uint64_t, uint64_t), char *a9, NSObject *a10, unsigned __int8 a11)
{
  v341 = a7;
  v342 = a8;
  LODWORD(v337) = a11;
  v336 = a10;
  v334 = a9;
  v17 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v17 - 8);
  v19 = &v320 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v328 = &v320 - v21;
  __chkstk_darwin(v22);
  v24 = &v320 - v23;
  __chkstk_darwin(v25);
  v329 = (&v320 - v26);
  __chkstk_darwin(v27);
  v330 = &v320 - v28;
  v335 = type metadata accessor for UUID();
  v338 = *(v335 - 8);
  __chkstk_darwin(v335);
  v327 = &v320 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v331 = (&v320 - v31);
  __chkstk_darwin(v32);
  v321 = &v320 - v33;
  __chkstk_darwin(v34);
  v324 = &v320 - v35;
  __chkstk_darwin(v36);
  v38 = &v320 - v37;
  __chkstk_darwin(v39);
  v326 = &v320 - v40;
  __chkstk_darwin(v41);
  v322 = &v320 - v42;
  __chkstk_darwin(v43);
  v325 = &v320 - v44;
  __chkstk_darwin(v45);
  v323 = &v320 - v46;
  __chkstk_darwin(v47);
  v333 = &v320 - v48;
  __chkstk_darwin(v49);
  v332 = (&v320 - v50);
  v51 = type metadata accessor for DispatchPredicate();
  v339 = *(v51 - 8);
  v340 = v51;
  __chkstk_darwin(v51);
  v53 = (&v320 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v54 = a1;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v344[0] = v58;
      *v57 = 136315138;
      LOBYTE(v343) = a1;
      sub_100075400();
      v59 = Error.localizedDescription.getter();
      v61 = sub_1002FFA0C(v59, v60, v344);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "Failed to get SE %s", v57, 0xCu);
      sub_1000752F4(v58);
    }

    if (v54)
    {
      v62 = 3;
    }

    else
    {
      v62 = -126;
    }

    if (v54 == 3)
    {
      v63 = -127;
    }

    else
    {
      v63 = v62;
    }

    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100409900;
    *(v64 + 32) = 1;
    *(v64 + 33) = v63;
    v65 = sub_1002B3B94(v64);
    v67 = v66;

    v38 = v341;
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v68 = qword_10051B7F0;
    *v53 = qword_10051B7F0;
    v70 = v339;
    v69 = v340;
    v339[13](v53, enum case for DispatchPredicate.onQueue(_:), v340);
    v71 = v68;
    LOBYTE(v68) = _dispatchPreconditionTest(_:)();
    v73 = v70[1];
    v72 = (v70 + 1);
    v73(v53, v69);
    if ((v68 & 1) == 0)
    {
      __break(1u);
      goto LABEL_141;
    }

    v74 = v342;
    if (v342)
    {
      sub_1000756F8(v334, v19);
      v75 = v338;
      v76 = v335;
      if ((*(v338 + 48))(v19, 1, v335) != 1)
      {
        v340 = v67;
        v136 = v331;
        (*(v75 + 32))(v331, v19, v76);
        v137 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        swift_beginAccess();
        v138 = *(v75 + 16);
        v334 = v137;
        v139 = v333;
        v339 = v138;
        (v138)(v333, &v137[v38], v76);
        v140 = static UUID.== infix(_:_:)();
        v143 = *(v75 + 8);
        v142 = v75 + 8;
        v141 = v143;
        v143(v139, v76);
        if ((v140 & 1) == 0)
        {
          v342 = v141;
          v338 = v142;
          v184 = v327;
          (v339)(v327, v136, v76);

          v185 = Logger.logObject.getter();
          v186 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v185, v186))
          {
            v187 = swift_slowAlloc();
            v337 = swift_slowAlloc();
            v343 = v337;
            *v187 = 136315394;
            v330 = sub_10007554C();
            v188 = dispatch thunk of CustomStringConvertible.description.getter();
            v189 = v38;
            v191 = v190;
            LODWORD(v332) = v186;
            v336 = v185;
            v192 = v342;
            v342(v184, v76);
            v193 = sub_1002FFA0C(v188, v191, &v343);

            *(v187 + 4) = v193;
            *(v187 + 12) = 2080;
            v194 = v333;
            (v339)(v333, &v334[v189], v76);
            v195 = dispatch thunk of CustomStringConvertible.description.getter();
            v197 = v196;
            v198 = v194;
            v199 = v192;
            v192(v198, v76);
            v200 = sub_1002FFA0C(v195, v197, &v343);

            *(v187 + 14) = v200;
            v201 = v336;
            _os_log_impl(&_mh_execute_header, v336, v332, "Connection identifier has changed %s %s", v187, 0x16u);
            swift_arrayDestroy();

            v202 = v331;
          }

          else
          {
            v202 = v136;

            v199 = v342;
            v342(v184, v76);
          }

          v67 = v340;
          v199(v202, v76);
          goto LABEL_96;
        }

        v141(v136, v76);
        v67 = v340;
        if ((v342 & 2) == 0)
        {
LABEL_21:
          v69 = sub_100239160(3, 17, v65, v67);
          v72 = v78;
          if (qword_100501960 == -1)
          {
LABEL_22:
            v79 = v69;
            v80 = v72;
            v81 = v38;
LABEL_23:
            sub_1000E71A0(v79, v80, v81);
            sub_10006A178(v69, v72);
LABEL_96:
            v112 = v65;
            v113 = v67;
            return sub_10006A178(v112, v113);
          }

LABEL_141:
          swift_once();
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      sub_100075768(v19, &unk_10050BE80, &unk_10040B360);
    }

    if ((v74 & 2) == 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (v337)
    {
      goto LABEL_21;
    }

    v77 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
    if (*(v38 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) == v336)
    {
      goto LABEL_21;
    }

LABEL_60:

    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 134218240;
      *(v146 + 4) = v336;
      *(v146 + 12) = 2048;
      *(v146 + 14) = *(v38 + v77);

      _os_log_impl(&_mh_execute_header, v144, v145, "Sequence number has changed %ld %ld", v146, 0x16u);
    }

    else
    {
    }

    goto LABEL_96;
  }

  v331 = a6;
  if ((a3 & 1) == 0)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v344[0] = 0;
    v96 = sub_1003AE9C8(a1, isa, v344);

    if (!v96)
    {
      v147 = v344[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_100069E2C(a4, a5);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.error.getter();
      sub_10006A178(a4, a5);
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v344[0] = v151;
        *v150 = 136315138;
        v343 = sub_100288788(a4, a5);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v152 = BidirectionalCollection<>.joined(separator:)();
        v154 = v153;

        v155 = sub_1002FFA0C(v152, v154, v344);

        *(v150 + 4) = v155;
        _os_log_impl(&_mh_execute_header, v148, v149, "Failed to transceive %s", v150, 0xCu);
        sub_1000752F4(v151);
      }

      v38 = v341;
      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      v65 = sub_1002B3B94(&off_1004C4F58);
      v67 = v156;
      if (qword_100501D90 != -1)
      {
        swift_once();
      }

      v157 = qword_10051B7F0;
      *v53 = qword_10051B7F0;
      v159 = v339;
      v158 = v340;
      v339[13](v53, enum case for DispatchPredicate.onQueue(_:), v340);
      v160 = v157;
      LOBYTE(v157) = _dispatchPreconditionTest(_:)();
      v161 = v159[1];
      v19 = (v159 + 1);
      v161(v53, v158);
      if (v157)
      {
        v162 = v338;
        v163 = v342;
        v164 = v328;
        if (v342)
        {
          sub_1000756F8(v334, v328);
          v165 = v335;
          if ((*(v162 + 48))(v164, 1, v335) == 1)
          {
            sub_100075768(v164, &unk_10050BE80, &unk_10040B360);
          }

          else
          {
            v340 = v67;
            v225 = v324;
            (*(v162 + 32))(v324, v164, v165);
            v226 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
            swift_beginAccess();
            v227 = *(v162 + 16);
            v334 = v226;
            v228 = v333;
            v339 = v227;
            (v227)(v333, v38 + v226, v165);
            LOBYTE(v226) = static UUID.== infix(_:_:)();
            v229 = v228;
            v230 = *(v162 + 8);
            v230(v229, v165);
            if ((v226 & 1) == 0)
            {
              v342 = v230;
              v283 = v321;
              (v339)(v321, v225, v165);

              v284 = Logger.logObject.getter();
              v285 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v284, v285))
              {
                v286 = swift_slowAlloc();
                v338 = swift_slowAlloc();
                v343 = v338;
                *v286 = 136315394;
                sub_10007554C();
                LODWORD(v337) = v285;
                v336 = v284;
                v287 = dispatch thunk of CustomStringConvertible.description.getter();
                v289 = v288;
                v290 = v342;
                v342(v283, v165);
                v291 = sub_1002FFA0C(v287, v289, &v343);

                *(v286 + 4) = v291;
                *(v286 + 12) = 2080;
                v292 = v333;
                (v339)(v333, &v334[v341], v165);
                v293 = dispatch thunk of CustomStringConvertible.description.getter();
                v295 = v294;
                v296 = v292;
                v297 = v290;
                v290(v296, v165);
                v298 = sub_1002FFA0C(v293, v295, &v343);
                v225 = v324;

                *(v286 + 14) = v298;
                v299 = v336;
                _os_log_impl(&_mh_execute_header, v336, v337, "Connection identifier has changed %s %s", v286, 0x16u);
                swift_arrayDestroy();
              }

              else
              {

                v318 = v283;
                v297 = v342;
                v342(v318, v165);
              }

              v297(v225, v165);
              v112 = v65;
              v113 = v340;
              return sub_10006A178(v112, v113);
            }

            v230(v225, v165);
            v163 = v342;
            v67 = v340;
          }
        }

        if ((v163 & 2) != 0 && (v337 & 1) == 0)
        {
          v77 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
          if (*(v38 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) != v336)
          {
            goto LABEL_60;
          }
        }

        v69 = sub_100239160(3, 17, v65, v67);
        v72 = v231;
        if (qword_100501960 == -1)
        {
LABEL_104:
          v79 = v69;
          v80 = v72;
          v81 = v38;
          goto LABEL_23;
        }

LABEL_149:
        swift_once();
        goto LABEL_104;
      }

      __break(1u);
      goto LABEL_147;
    }

    v97 = qword_100501B60;
    v98 = v344[0];
    if (v97 != -1)
    {
      swift_once();
    }

    v99 = qword_10051B5A0;
    v100 = sub_1003AAA78(v96);
    v332 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v101;

    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v102 = qword_10051B7F0;
    *v53 = qword_10051B7F0;
    v104 = v339;
    v103 = v340;
    v339[13](v53, enum case for DispatchPredicate.onQueue(_:), v340);
    v105 = v102;
    LOBYTE(v102) = _dispatchPreconditionTest(_:)();
    (v104[1])(v53, v103);
    if ((v102 & 1) == 0)
    {
      __break(1u);
      goto LABEL_143;
    }

    v106 = v338;
    v107 = v342;
    if (v342)
    {
      sub_1000756F8(v334, v24);
      v108 = v335;
      if ((*(v106 + 48))(v24, 1, v335) != 1)
      {
        v340 = v99;
        v331 = a4;
        v203 = v326;
        (*(v106 + 32))(v326, v24, v108);
        v204 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        v205 = v341;
        swift_beginAccess();
        v206 = *(v106 + 16);
        v334 = v204;
        v207 = v333;
        v339 = v206;
        (v206)(v333, &v205[v204], v108);
        LOBYTE(v204) = static UUID.== infix(_:_:)();
        v208 = *(v106 + 8);
        v208(v207, v108);
        if ((v204 & 1) == 0)
        {
          v342 = v208;
          (v339)(v38, v203, v108);

          v247 = Logger.logObject.getter();
          v248 = static os_log_type_t.error.getter();

          v249 = os_log_type_enabled(v247, v248);
          v250 = v331;
          if (v249)
          {
            v251 = swift_slowAlloc();
            LODWORD(v338) = v248;
            v252 = v251;
            v340 = swift_slowAlloc();
            v343 = v340;
            *v252 = 136315394;
            v336 = sub_10007554C();
            v337 = v247;
            v253 = dispatch thunk of CustomStringConvertible.description.getter();
            v255 = v254;
            v256 = v342;
            v342(v38, v108);
            v257 = sub_1002FFA0C(v253, v255, &v343);

            *(v252 + 4) = v257;
            *(v252 + 12) = 2080;
            v258 = &v334[v205];
            v259 = v333;
            (v339)(v333, v258, v108);
            v260 = dispatch thunk of CustomStringConvertible.description.getter();
            v262 = v261;
            v256(v259, v108);
            v263 = sub_1002FFA0C(v260, v262, &v343);
            v250 = v331;

            *(v252 + 14) = v263;
            v264 = v337;
            _os_log_impl(&_mh_execute_header, v337, v338, "Connection identifier has changed %s %s", v252, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            v256 = v342;
            v342(v38, v108);
          }

          v317 = v332;
          v256(v326, v108);

          v112 = v317;
          v113 = v250;
          return sub_10006A178(v112, v113);
        }

        v208(v203, v108);
        a4 = v331;
        v38 = v341;
        if ((v342 & 2) == 0)
        {
LABEL_39:
          v103 = v332;
          v110 = sub_100239160(1, 12, v332, a4);
          v53 = v111;
          if (qword_100501960 == -1)
          {
LABEL_40:
            sub_1000E71A0(v110, v53, v38);
            sub_10006A178(v110, v53);

            v112 = v103;
            v113 = a4;
            return sub_10006A178(v112, v113);
          }

LABEL_145:
          swift_once();
          goto LABEL_40;
        }

LABEL_37:
        if ((v337 & 1) == 0)
        {
          v109 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
          if (*(v38 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) != v336)
          {

            v217 = Logger.logObject.getter();
            v218 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v217, v218))
            {
              v219 = swift_slowAlloc();
              *v219 = 134218240;
              *(v219 + 4) = v336;
              *(v219 + 12) = 2048;
              *(v219 + 14) = *(v38 + v109);

              _os_log_impl(&_mh_execute_header, v217, v218, "Sequence number has changed %ld %ld", v219, 0x16u);
            }

            else
            {
            }

            v112 = v332;
            v113 = a4;
            return sub_10006A178(v112, v113);
          }
        }

        goto LABEL_39;
      }

      sub_100075768(v24, &unk_10050BE80, &unk_10040B360);
      v107 = v342;
    }

    v38 = v341;
    if ((v107 & 2) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  sub_100069E2C(a4, a5);
  sub_1000939AC(a4, a5, 4, 0, 0);
  v19 = Data.subdata(in:)();
  a4 = v82;
  v83 = OBJC_IVAR____TtC10seserviced8AlishaSE_logger;
  sub_100069E2C(v19, v82);
  v326 = v83;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.info.getter();
  sub_10006A178(v19, a4);
  v86 = os_log_type_enabled(v84, v85);
  v328 = v19;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v344[0] = v88;
    *v87 = 136315138;
    v89 = sub_100288788(v328, a4);
    v327 = 0;
    v343 = v89;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    v90 = a4;
    sub_10007A2D0();
    v91 = BidirectionalCollection<>.joined(separator:)();
    v93 = v92;

    v94 = sub_1002FFA0C(v91, v93, v344);
    a4 = v90;

    *(v87 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v84, v85, "Selecting %s", v87, 0xCu);
    sub_1000752F4(v88);
    v19 = v328;
  }

  else
  {
    v327 = 0;
  }

  v38 = v341;
  v114 = Data._bridgeToObjectiveC()().super.isa;
  v344[0] = 0;
  v103 = sub_1003AF230(a1, v114, 1, v344);

  if (v103)
  {
    v115 = qword_100501B60;
    v116 = v344[0];
    if (v115 == -1)
    {
LABEL_44:
      v117 = sub_1003AAA78(v103);
      v331 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      if (qword_100501D90 != -1)
      {
        swift_once();
      }

      v120 = qword_10051B7F0;
      *v53 = qword_10051B7F0;
      v122 = v339;
      v121 = v340;
      v339[13](v53, enum case for DispatchPredicate.onQueue(_:), v340);
      v123 = v120;
      v96 = _dispatchPreconditionTest(_:)();
      v124 = v122[1];
      v110 = (v122 + 1);
      v124(v53, v121);
      if (v96)
      {
        v125 = v338;
        v126 = v342;
        v127 = v332;
        v128 = v330;
        if ((v342 & 1) == 0)
        {
          goto LABEL_50;
        }

        sub_1000756F8(v334, v330);
        v129 = v335;
        if ((*(v125 + 48))(v128, 1, v335) == 1)
        {
          sub_100075768(v128, &unk_10050BE80, &unk_10040B360);
          v19 = v328;
LABEL_50:
          if ((v126 & 2) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_51;
        }

        v339 = v119;
        v340 = a4;
        (*(v125 + 32))(v127, v128, v129);
        v209 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        swift_beginAccess();
        v210 = *(v125 + 16);
        v330 = v209;
        v211 = v333;
        v334 = v210;
        (v210)(v333, v38 + v209, v129);
        v212 = v127;
        v213 = static UUID.== infix(_:_:)();
        v216 = *(v125 + 8);
        v214 = v125 + 8;
        v215 = v216;
        v216(v211, v129);
        if (v213)
        {
          v215(v212, v129);
          v119 = v339;
          a4 = v340;
          v19 = v328;
          if ((v342 & 2) == 0)
          {
            goto LABEL_53;
          }

LABEL_51:
          if ((v337 & 1) == 0)
          {
            v130 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
            if (*(v38 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) != v336)
            {

              v220 = Logger.logObject.getter();
              v221 = static os_log_type_t.error.getter();
              v222 = os_log_type_enabled(v220, v221);
              v131 = v331;
              if (v222)
              {
                v223 = swift_slowAlloc();
                *v223 = 134218240;
                *(v223 + 4) = v336;
                *(v223 + 12) = 2048;
                *(v223 + 14) = *(v38 + v130);

                _os_log_impl(&_mh_execute_header, v220, v221, "Sequence number has changed %ld %ld", v223, 0x16u);
              }

              else
              {
              }

LABEL_124:
              sub_10006A178(v19, a4);

              v112 = v131;
              v113 = v119;
              return sub_10006A178(v112, v113);
            }
          }

LABEL_53:
          v131 = v331;
          v132 = sub_100239160(1, 12, v331, v119);
          v134 = v133;
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          v135 = v327;
          sub_1000E71A0(v132, v134, v38);
          sub_10006A178(v132, v134);
          if (v135)
          {
          }

          goto LABEL_124;
        }

        v342 = v215;
        v338 = v214;
        v265 = v323;
        (v334)(v323, v212, v129);

        v266 = Logger.logObject.getter();
        v267 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v266, v267))
        {
          v268 = v265;
          v269 = swift_slowAlloc();
          v337 = swift_slowAlloc();
          v343 = v337;
          *v269 = 136315394;
          v327 = sub_10007554C();
          LODWORD(v336) = v267;
          v270 = dispatch thunk of CustomStringConvertible.description.getter();
          v329 = v266;
          v272 = v271;
          v273 = v268;
          v274 = v342;
          v342(v273, v129);
          v275 = sub_1002FFA0C(v270, v272, &v343);

          *(v269 + 4) = v275;
          *(v269 + 12) = 2080;
          v276 = v333;
          (v334)(v333, v38 + v330, v129);
          v277 = v332;
          v278 = dispatch thunk of CustomStringConvertible.description.getter();
          v280 = v279;
          v274(v276, v129);
          v281 = sub_1002FFA0C(v278, v280, &v343);

          *(v269 + 14) = v281;
          v282 = v329;
          _os_log_impl(&_mh_execute_header, v329, v336, "Connection identifier has changed %s %s", v269, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v277 = v212;

          v274 = v342;
          v342(v265, v129);
        }

        v274(v277, v129);
        sub_10006A178(v328, v340);

        v112 = v331;
LABEL_139:
        v113 = v339;
        return sub_10006A178(v112, v113);
      }

      __break(1u);
      goto LABEL_145;
    }

LABEL_143:
    swift_once();
    goto LABEL_44;
  }

  v166 = v344[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();

  sub_100069E2C(v19, a4);
  v167 = Logger.logObject.getter();
  v168 = static os_log_type_t.error.getter();
  sub_10006A178(v19, a4);
  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v344[0] = v170;
    *v169 = 136315138;
    v343 = sub_100288788(v19, a4);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v171 = BidirectionalCollection<>.joined(separator:)();
    v173 = v172;
    v19 = v328;

    v174 = sub_1002FFA0C(v171, v173, v344);
    v38 = v341;

    *(v169 + 4) = v174;
    _os_log_impl(&_mh_execute_header, v167, v168, "Failed to select %s", v169, 0xCu);
    sub_1000752F4(v170);
  }

  if (qword_100501B60 != -1)
  {
LABEL_147:
    swift_once();
  }

  v332 = sub_1002B3B94(&off_1004C4F30);
  v69 = v175;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v176 = qword_10051B7F0;
  *v53 = qword_10051B7F0;
  v177 = v339;
  v65 = v340;
  v339[13](v53, enum case for DispatchPredicate.onQueue(_:), v340);
  v178 = v176;
  v67 = _dispatchPreconditionTest(_:)();
  v179 = v177[1];
  v72 = (v177 + 1);
  v179(v53, v65);
  if ((v67 & 1) == 0)
  {
    __break(1u);
    goto LABEL_149;
  }

  v180 = v338;
  v181 = v342;
  v182 = v329;
  if (v342)
  {
    sub_1000756F8(v334, v329);
    v183 = v335;
    if ((*(v180 + 48))(v182, 1, v335) == 1)
    {
      sub_100075768(v182, &unk_10050BE80, &unk_10040B360);
    }

    else
    {
      v339 = v69;
      v340 = a4;
      v232 = v325;
      (*(v180 + 32))(v325, v182, v183);
      v233 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
      swift_beginAccess();
      v234 = v333;
      v334 = *(v180 + 16);
      (v334)(v333, v38 + v233, v183);
      v235 = static UUID.== infix(_:_:)();
      v236 = v234;
      v237 = *(v180 + 8);
      v237(v236, v183);
      if ((v235 & 1) == 0)
      {
        v342 = v237;
        v300 = v322;
        (v334)(v322, v232, v183);

        v301 = Logger.logObject.getter();
        v302 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v301, v302))
        {
          v303 = swift_slowAlloc();
          v338 = swift_slowAlloc();
          v343 = v338;
          *v303 = 136315394;
          sub_10007554C();
          v337 = v301;
          LODWORD(v336) = v302;
          v304 = dispatch thunk of CustomStringConvertible.description.getter();
          v306 = v305;
          v307 = v342;
          v342(v300, v183);
          v308 = sub_1002FFA0C(v304, v306, &v343);

          *(v303 + 4) = v308;
          *(v303 + 12) = 2080;
          v309 = v333;
          (v334)(v333, &v341[v233], v183);
          v310 = dispatch thunk of CustomStringConvertible.description.getter();
          v312 = v311;
          v313 = v309;
          v314 = v307;
          v307(v313, v183);
          v315 = sub_1002FFA0C(v310, v312, &v343);

          *(v303 + 14) = v315;
          v316 = v337;
          _os_log_impl(&_mh_execute_header, v337, v336, "Connection identifier has changed %s %s", v303, 0x16u);
          swift_arrayDestroy();

          v232 = v325;
        }

        else
        {

          v319 = v300;
          v314 = v342;
          v342(v319, v183);
        }

        v314(v232, v183);
        sub_10006A178(v328, v340);
        v112 = v332;
        goto LABEL_139;
      }

      v237(v232, v183);
      v181 = v342;
      v69 = v339;
      a4 = v340;
    }

    v19 = v328;
  }

  if ((v181 & 2) == 0 || (v337 & 1) != 0 || (v238 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber, *(v38 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) == v336))
  {
    v239 = v332;
    v240 = sub_100239160(3, 17, v332, v69);
    v242 = v241;
    if (qword_100501960 != -1)
    {
      swift_once();
    }

    sub_1000E71A0(v240, v242, v38);
    sub_10006A178(v240, v242);
  }

  else
  {

    v243 = Logger.logObject.getter();
    v244 = static os_log_type_t.error.getter();
    v245 = os_log_type_enabled(v243, v244);
    v239 = v332;
    if (v245)
    {
      v246 = swift_slowAlloc();
      *v246 = 134218240;
      *(v246 + 4) = v336;
      *(v246 + 12) = 2048;
      *(v246 + 14) = *(v38 + v238);

      _os_log_impl(&_mh_execute_header, v243, v244, "Sequence number has changed %ld %ld", v246, 0x16u);
    }

    else
    {
    }
  }

  sub_10006A178(v19, a4);
  v112 = v239;
  v113 = v69;
  return sub_10006A178(v112, v113);
}

void sub_1002DF844()
{
  v5 = [objc_opt_self() sessionManager];
  v6 = [v5 getActiveDCKSessions];

  sub_1002E00AC();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
LABEL_54:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_55:

    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_55;
  }

LABEL_3:
  v9 = 0;
  while ((v7 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_45;
    }

LABEL_11:
    v26 = v10;
    v12 = [v10 activeEndpoint];
    if (!v12)
    {
      v2 = 0;
      v4 = *(v0 + 16);
      v3 = *(v0 + 24);
      v1 = 0xF000000000000000;
LABEL_5:
      if (v3 >> 60 == 15)
      {
        goto LABEL_46;
      }

      goto LABEL_6;
    }

    v13 = v12;
    v14 = [v12 publicKeyIdentifier];

    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v15;

    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    if (v1 >> 60 == 15)
    {
      goto LABEL_5;
    }

    if (v3 >> 60 != 15)
    {
      v16 = v1 >> 62;
      v17 = v3 >> 62;
      if (v1 >> 62 == 3)
      {
        v18 = 0;
        if (!v2 && v1 == 0xC000000000000000 && v3 >> 62 == 3)
        {
          v18 = 0;
          if (!v4 && v3 == 0xC000000000000000)
          {
            sub_100069E2C(0, 0xC000000000000000);
            sub_10006A2D0(0, 0xC000000000000000);
            v2 = 0;
LABEL_48:
            sub_10006A2D0(v2, v1);
LABEL_49:

            goto LABEL_50;
          }
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          LODWORD(v18) = HIDWORD(v2) - v2;
          if (__OFSUB__(HIDWORD(v2), v2))
          {
            goto LABEL_60;
          }

          v18 = v18;
        }

        else
        {
          v20 = *(v2 + 16);
          v19 = *(v2 + 24);
          v21 = __OFSUB__(v19, v20);
          v18 = v19 - v20;
          if (v21)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        v18 = BYTE6(v1);
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          if (!v18)
          {
LABEL_47:
            sub_100069E2C(*(v0 + 16), *(v0 + 24));
            sub_10006A2D0(v4, v3);
            goto LABEL_48;
          }

          goto LABEL_41;
        }

        v23 = *(v4 + 16);
        v22 = *(v4 + 24);
        v21 = __OFSUB__(v22, v23);
        v24 = v22 - v23;
        if (v21)
        {
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          return;
        }

        if (v18 != v24)
        {
LABEL_41:
          sub_100069E2C(*(v0 + 16), *(v0 + 24));
          sub_10006A2D0(v4, v3);
          sub_10006A2D0(v2, v1);
LABEL_42:

          goto LABEL_7;
        }
      }

      else if (v17)
      {
        if (__OFSUB__(HIDWORD(v4), v4))
        {
          goto LABEL_59;
        }

        if (v18 != HIDWORD(v4) - v4)
        {
          goto LABEL_41;
        }
      }

      else if (v18 != BYTE6(v3))
      {
        goto LABEL_41;
      }

      if (v18 < 1)
      {
        goto LABEL_47;
      }

      sub_100069E2C(*(v0 + 16), *(v0 + 24));
      sub_100069E2C(v4, v3);
      sub_10006A2BC(v4, v3);
      sub_10006A2BC(v2, v1);
      v25 = sub_10008C678(v2, v1, v4, v3);
      sub_10006A178(v4, v3);
      sub_10006A2D0(v2, v1);
      sub_10006A2D0(v4, v3);
      sub_10006A2D0(v2, v1);
      if (v25)
      {
        goto LABEL_49;
      }

      goto LABEL_42;
    }

LABEL_6:
    sub_100069E2C(v4, v3);

    sub_10006A2D0(v2, v1);
    sub_10006A2D0(v4, v3);
LABEL_7:
    ++v9;
    if (v11 == v8)
    {
      goto LABEL_55;
    }
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_54;
  }

  v10 = *(v7 + 8 * v9 + 32);
  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_11;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  sub_100069E2C(v4, v3);

  sub_10006A2D0(v2, v1);
LABEL_50:
  [v26 useSecureElementToken];
}

uint64_t sub_1002DFC8C()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1002DFCC4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced8AlishaSE_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaSE(uint64_t a1)
{
  result = qword_100509BD0;
  if (!qword_100509BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002DFDB4(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002DFE84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002DFE9C()
{
  v1 = *(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_1002DFFD8(void *a1, char a2)
{
  v5 = *(sub_100068FC4(&unk_10050BE80, &unk_10040B360) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002DD1A0(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), (v2 + v6), *(v2 + v7), *(v2 + v7 + 8));
}

unint64_t sub_1002E00AC()
{
  result = qword_100505370;
  if (!qword_100505370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100505370);
  }

  return result;
}

uint64_t sub_1002E00F8(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for TriggerCoalescer.State(319, *(a1 + 80), *(a1 + 88), v4);
      if (v6 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1002E0224(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v2);
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return 1819047278;
  }

  (*(v7 + 8))(v4, v6);
  return 0x676E6974696177;
}

id *sub_1002E036C()
{
  v1 = *v0;

  v2 = qword_100509D18;
  v3 = type metadata accessor for DispatchTimeInterval();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = qword_100509D28;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 17);
  v8 = type metadata accessor for TriggerCoalescer.State(0, v1[10], v1[11], v7);
  (*(*(v8 - 8) + 8))(v0 + v6, v8);
  return v0;
}

uint64_t sub_1002E04B0()
{
  sub_1002E036C();

  return swift_deallocClassInstance();
}

uint64_t sub_1002E0538(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1002E0594(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1002E0714(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (v8)
  {
    v11 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v10 = 0;
    v11 = v9 + 1;
  }

  v12 = a3 >= v10;
  v13 = a3 - v10;
  if (v13 == 0 || !v12)
  {
    goto LABEL_16;
  }

  if (v11 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_17:
    v16 = ~v10 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v18 = v16 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v18;
            if (v6 > 1)
            {
LABEL_55:
              if (v6 == 2)
              {
                *&a1[v11] = v17;
              }

              else
              {
                *&a1[v11] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v6 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v6)
    {
      a1[v11] = v17;
    }

    return;
  }

LABEL_26:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v11] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    goto LABEL_32;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v9 <= 3)
      {
        v20 = ~(-1 << (8 * v9));
      }

      else
      {
        v20 = -1;
      }

      if (v9)
      {
        v21 = v20 & (a2 - v8);
        if (v9 <= 3)
        {
          v22 = v9;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v9);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *a1 = v21;
            a1[2] = BYTE2(v21);
          }

          else
          {
            *a1 = v21;
          }
        }

        else if (v22 == 1)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v19 = *(v7 + 56);

      v19();
    }
  }
}

uint64_t sub_1002E09BC(id *a1)
{
  v1 = *a1;
  if ([*a1 endPointType] != 1)
  {
    return 0;
  }

  v2 = [v1 revocationAttestation];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10006A178(v4, v6);
    return 0;
  }

  return 1;
}

id sub_1002E0A44()
{
  result = [objc_allocWithZone(type metadata accessor for AlishaExternal()) init];
  qword_10051B6F0 = result;
  return result;
}

id sub_1002E0BC4(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v7 = a1;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = a4(v8, v10);
  sub_10006A178(v8, v10);

  return v11;
}

void sub_1002E0C58(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_100069E2C(a1, a2);
  if (qword_1005019E8 != -1)
  {
    swift_once();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = sub_1002E7B2C;
  *(v7 + 24) = v6;

  v8 = sub_1000CAA04();

  v9 = sub_1000CA810(v8);

  if (!v9)
  {
    goto LABEL_11;
  }

  if (qword_100501A58 != -1)
  {
    swift_once();
  }

  v10 = [v9 publicKeyIdentifier];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [v9 appletIdentifier];
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = sub_1001C1F18(v11, v13, v15, v17);
  sub_10006A178(v15, v17);
  sub_10006A178(v11, v13);
  if (v18 != 1)
  {

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B5B0;

  v20 = *(v19 + OBJC_IVAR____TtC10seserviced6DSKUWB_isAvailable);
LABEL_12:
  *a3 = v20;
}

uint64_t sub_1002E0EA8(void *a1, uint64_t a2, unint64_t a3)
{
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v6 = [a1 readerIdentifier];
  if (!v6)
  {
    v8 = 0;
    v10 = 0xF000000000000000;
LABEL_8:
    if (a3 >> 60 == 15)
    {
      sub_100069E2C(a2, a3);
      sub_10006A2D0(v8, v10);
      goto LABEL_10;
    }

LABEL_12:
    sub_100069E2C(a2, a3);
    sub_10006A2D0(v8, v10);
    sub_10006A2D0(a2, a3);
    return 0;
  }

  v7 = v6;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    goto LABEL_8;
  }

  if (a3 >> 60 == 15)
  {
    goto LABEL_12;
  }

  sub_100069E2C(a2, a3);
  sub_10006A2BC(v8, v10);
  v11 = sub_10008FB4C(v8, v10, a2, a3);
  sub_10006A2D0(a2, a3);
  sub_10006A2D0(v8, v10);
  sub_10006A2D0(v8, v10);
  if (!v11)
  {
    return 0;
  }

LABEL_10:
  result = [a1 bleUUID];
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1002E11E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v7);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  if (qword_100501D78 != -1)
  {
    swift_once();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = sub_1002E7A6C;
  *(v11 + 24) = v10;

  v12 = sub_1000CAAC4();

  v13 = sub_1000CA840(v12);

  if (v13)
  {
    v15 = *(v13 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
  }

  else
  {
    v15 = 0;
  }

  *a2 = v15;
  return result;
}

void sub_1002E162C(void *a1@<X8>, int a2@<W0>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  if (qword_100501DB0 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a3 = v8;
    a4 = v9;
  }

  sub_10034D0AC(a2, a3, a4);
  if (v4)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    swift_dynamicCast();
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_1002E1930(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v8 = v7;
  v61 = a5;
  v67 = a4;
  v70 = a3;
  LOBYTE(v10) = a2;
  LODWORD(v74) = a1;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501DB0 != -1)
  {
LABEL_86:
    swift_once();
  }

  v66 = qword_10051B820;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v16 = qword_10051B7F0;
  *v15 = qword_10051B7F0;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_88;
  }

  v60 = a6;
  v65 = a7;
  v19 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  v20 = v66;
  swift_beginAccess();
  a6 = *(v20 + v19);
  if (a6 >> 62)
  {
LABEL_88:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_7;
  }

  v12 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v13 = v8;

  if (!v12)
  {
LABEL_81:

    v54 = objc_allocWithZone(NSError);
    v55 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v57 = [v54 initWithDomain:v55 code:16 userInfo:isa];

    *v65 = v57;
    return;
  }

  v15 = 0;
  a7 = v10;
  v72 = v74;
  v73 = a6 & 0xFFFFFFFFFFFFFF8;
  v74 = a6 & 0xC000000000000001;
  v10 = v67;
  if (v70)
  {
    v21 = 0;
  }

  else
  {
    v21 = v67 == 0xC000000000000000;
  }

  v22 = !v21;
  v69 = v22;
  v23 = v67 >> 62;
  v24 = __OFSUB__(HIDWORD(v70), v70);
  v64 = v24;
  v63 = HIDWORD(v70) - v70;
  v68 = BYTE6(v67);
  v25 = v67 >> 62;
  v71 = a7;
  while (1)
  {
    if (v74)
    {
      v23 = v25;
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v26 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }
    }

    else
    {
      if (v15 >= *(v73 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      v8 = *(a6 + 8 * v15 + 32);

      v26 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_80;
      }
    }

    if (*(v8 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) != v72 || *(v8 + 16) != a7)
    {
      goto LABEL_19;
    }

    v27 = *(v8 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
    v28 = *(v8 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
    v29 = v28 >> 62;
    if (v28 >> 62 == 3)
    {
      break;
    }

    if (v29 > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_47;
      }

      v35 = *(v27 + 16);
      v34 = *(v27 + 24);
      v36 = __OFSUB__(v34, v35);
      v33 = v34 - v35;
      if (v36)
      {
        goto LABEL_91;
      }

      if (v23 > 1)
      {
        goto LABEL_48;
      }
    }

    else if (v29)
    {
      LODWORD(v33) = HIDWORD(v27) - v27;
      if (__OFSUB__(HIDWORD(v27), v27))
      {
        goto LABEL_92;
      }

      v33 = v33;
      if (v23 > 1)
      {
LABEL_48:
        if (v23 != 2)
        {
          a7 = v71;
          if (!v33)
          {
            goto LABEL_82;
          }

          goto LABEL_19;
        }

        v39 = *(v70 + 16);
        v38 = *(v70 + 24);
        v36 = __OFSUB__(v38, v39);
        v37 = v38 - v39;
        if (v36)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
        }

        goto LABEL_50;
      }
    }

    else
    {
      v33 = BYTE6(v28);
      if (v23 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_44:
    v37 = v68;
    if (v23)
    {
      v37 = v63;
      if (v64)
      {
        goto LABEL_90;
      }
    }

LABEL_50:
    if (v33 != v37)
    {
      a7 = v71;
      goto LABEL_19;
    }

    if (v33 < 1)
    {
      goto LABEL_82;
    }

    if (v29 > 1)
    {
      if (v29 != 2)
      {
        memset(v75, 0, 14);
LABEL_69:
        sub_10019F024(v75, v70, v10, &v76);
        a7 = v71;
        if (v76)
        {
          goto LABEL_82;
        }

        goto LABEL_19;
      }

      v62 = v13;
      v40 = *(v27 + 16);
      v59 = *(v27 + 24);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v58 = v41;
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v40, v42))
        {
          goto LABEL_95;
        }

        v43 = v40 - v42 + v58;
      }

      else
      {
        v43 = 0;
      }

      if (__OFSUB__(v59, v40))
      {
        goto LABEL_94;
      }

      v51 = v43;
      __DataStorage._length.getter();
      v52 = v51;
    }

    else
    {
      if (!v29)
      {
        v75[0] = *(v8 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
        LOWORD(v75[1]) = v28;
        BYTE2(v75[1]) = BYTE2(v28);
        BYTE3(v75[1]) = BYTE3(v28);
        BYTE4(v75[1]) = BYTE4(v28);
        BYTE5(v75[1]) = BYTE5(v28);
        goto LABEL_69;
      }

      v62 = v13;
      v44 = v27;
      v45 = v27 >> 32;
      v46 = v45 < v44;
      v47 = v45 - v44;
      if (v46)
      {
        goto LABEL_93;
      }

      v59 = v47;
      v48 = __DataStorage._bytes.getter();
      if (v48)
      {
        v58 = v48;
        v49 = __DataStorage._offset.getter();
        if (__OFSUB__(v44, v49))
        {
          goto LABEL_96;
        }

        v50 = v44 - v49 + v58;
      }

      else
      {
        v50 = 0;
      }

      __DataStorage._length.getter();
      v52 = v50;
    }

    v10 = v67;
    v53 = v62;
    sub_10019F024(v52, v70, v67, v75);
    v13 = v53;
    a7 = v71;
    if (v75[0])
    {
      goto LABEL_82;
    }

LABEL_19:

    ++v15;
    v23 = v25;
    if (v26 == v12)
    {
      goto LABEL_81;
    }
  }

  if (v27)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28 == 0xC000000000000000;
  }

  v32 = !v30 || v23 < 3;
  if ((v32 | v69))
  {
LABEL_47:
    v33 = 0;
    if (v23 > 1)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

LABEL_82:

  sub_10034E460(v8, v61, v60);

  if (v13)
  {
    v75[0] = v13;
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    swift_dynamicCast();
    *v65 = v76;
  }

  else
  {
    *v65 = 0;
  }
}