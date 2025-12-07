uint64_t sub_10004D55C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 136) = a1;
  v6 = type metadata accessor for Logger();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10004D630, 0, 0);
}

uint64_t sub_10004D630(uint64_t a1)
{
  v22 = v1;
  static FamilyLogger.daemon.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 88);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  if (v4)
  {
    v9 = *(v1 + 32);
    v8 = *(v1 + 40);
    v20 = *(v1 + 88);
    v10 = *(v1 + 136);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 67109378;
    *(v11 + 4) = v10;
    *(v11 + 8) = 2080;
    *(v11 + 10) = sub_1000373D4(v9, v8, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting parental controls declaredAgeRangeSharingOption: %d on server side for altDSID: %s", v11, 0x12u);
    sub_100024F7C(v12);

    v13 = *(v7 + 8);
    v13(v20, v6);
  }

  else
  {

    v13 = *(v7 + 8);
    v13(v5, v6);
  }

  *(v1 + 96) = v13;
  v14 = [objc_allocWithZone(NSNumber) initWithInt:*(v1 + 136)];
  *(v1 + 104) = v14;
  v15 = swift_task_alloc();
  *(v1 + 112) = v15;
  *v15 = v1;
  v15[1] = sub_10004D83C;
  v16 = *(v1 + 40);
  v17 = *(v1 + 48);
  v18 = *(v1 + 32);

  return sub_10006FB90(v18, v16, v14, v17);
}

uint64_t sub_10004D83C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_10004DC78;
  }

  else
  {
    v6 = *(v4 + 104);
    *(v4 + 128) = a1;

    v5 = sub_10004D96C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10004D96C()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v1;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for AgeRangeError(0);
  v0[3] = -4011;
  sub_100023D48(_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v3 = v0[1];

  v3();
}

uint64_t sub_10004DC78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AgeRangeDaemonService.setAgeRangeGlobalState(_:for:privacyVersion:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 184) = a1;
  v6 = type metadata accessor for FamilyFeatureFlags();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_10004DE28, 0, 0);
}

uint64_t sub_10004DE28(uint64_t a1)
{
  v38 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 104);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD00000000000002DLL, 0x8000000100088650, &v37);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v12 = *(v1 + 56);
  v11 = *(v1 + 64);
  v13 = *(v1 + 48);
  (*(v12 + 104))(v11, enum case for FamilyFeatureFlags.fetchParentalControlsFromServer(_:), v13);
  v14 = static FamilyFeatureFlags.enabled(_:)();
  (*(v12 + 8))(v11, v13);
  static FamilyLogger.daemon.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v14 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "serverFeatureFlagEnabled : %{BOOL}d", v17, 8u);
  }

  v18 = *(v1 + 96);
  v19 = *(v1 + 72);

  v10(v18, v19);
  if (v14)
  {
    v20 = swift_task_alloc();
    *(v1 + 112) = v20;
    *v20 = v1;
    v20[1] = sub_10004E210;
    v21 = *(v1 + 32);
    v22 = *(v1 + 16);
    v23 = *(v1 + 24);
    v24 = *(v1 + 184);

    return sub_10004D55C(v24, v22, v23, v21);
  }

  else
  {
    static FamilyLogger.daemon.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Setting parental controls in local database", v28, 2u);
    }

    v29 = *(v1 + 88);
    v30 = *(v1 + 72);

    v10(v29, v30);
    v31 = [objc_allocWithZone(NSNumber) initWithDouble:86400.0];
    *(v1 + 160) = v31;
    v32 = swift_task_alloc();
    *(v1 + 168) = v32;
    *v32 = v1;
    v32[1] = sub_10004E620;
    v33 = *(v1 + 32);
    v34 = *(v1 + 16);
    v35 = *(v1 + 24);
    v36 = *(v1 + 184);

    return AgeRangeDaemonService.saveAgeRangeGlobalState(_:for:cacheDuration:privacyVersion:)(v36, v34, v35, v31, v33);
  }
}

uint64_t sub_10004E210(uint64_t a1, double a2)
{
  v5 = *v3;
  *(v5 + 120) = a1;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v5 + 128) = a2;

    return _swift_task_switch(sub_10004E38C, 0, 0);
  }
}

uint64_t sub_10004E38C()
{
  v1 = [objc_allocWithZone(NSNumber) initWithDouble:*(v0 + 128)];
  *(v0 + 136) = v1;
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_10004E460;
  v3 = *(v0 + 120);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 184);

  return AgeRangeDaemonService.saveAgeRangeGlobalState(_:for:cacheDuration:privacyVersion:)(v6, v4, v5, v1, v3);
}

uint64_t sub_10004E460()
{
  v2 = *(*v1 + 136);
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10004E794;
  }

  else
  {
    v3 = sub_10004E58C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004E58C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004E620()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10004E828, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10004E794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004E828()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004EA60(int a1, uint64_t a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = a3;

  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_10004EB54;

  return AgeRangeDaemonService.setAgeRangeGlobalState(_:for:privacyVersion:)(a1, v8, v10, v11);
}

uint64_t sub_10004EB54()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 32);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v9 = *(v6 + 8);

  return v9();
}

BOOL sub_10004ED18(_BOOL8 result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    v3 = v1 - 1;
    while (1)
    {
      v4 = v3;
      if (v3-- == 0)
      {
        return v4 != 0;
      }

      v6 = *(v2 - 1);
      v7 = __OFADD__(v6, 1);
      v8 = v6 + 1;
      if (v7)
      {
        break;
      }

      v9 = *v2++;
      if (v9 == v8)
      {
        return v4 != 0;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_10004ED60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v6 = *v2++;
      v5 = v6;
      if (v6 < 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005580C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v4 = _swiftEmptyArrayStorage[2];
        v3 = _swiftEmptyArrayStorage[3];
        if (v4 >= v3 >> 1)
        {
          sub_10005580C((v3 > 1), v4 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v4 + 1;
        _swiftEmptyArrayStorage[v4 + 4] = v5;
      }

      --v1;
    }

    while (v1);
  }

  v7 = _swiftEmptyArrayStorage[2];

  return v7 != 0;
}

uint64_t AgeRangeDaemonService.shouldPromptAgeRange(with:bundleID:appName:privacyVersion:userAgeOverride:attestedAtOverrideInDays:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[17] = a8;
  v9[18] = v8;
  v9[15] = a6;
  v9[16] = a7;
  v9[13] = a4;
  v9[14] = a5;
  v9[11] = a2;
  v9[12] = a3;
  v9[10] = a1;
  v10 = type metadata accessor for Logger();
  v9[19] = v10;
  v9[20] = *(v10 - 8);
  v9[21] = swift_task_alloc();
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v9[24] = swift_task_alloc();
  v9[25] = swift_task_alloc();

  return _swift_task_switch(sub_10004EF4C, 0, 0);
}

uint64_t sub_10004EF4C(uint64_t a1)
{
  v15 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[25];
  v6 = v1[19];
  v7 = v1[20];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000064, 0x8000000100088680, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[26] = v10;
  sub_1000297A8((v1[18] + 48), *(v1[18] + 72));
  if (sub_100032AF0() & 1) != 0 || (sub_100032DDC())
  {
    type metadata accessor for AgeRangeError(0);
    v1[9] = -4004;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v11 = v1[1];

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v1[27] = v13;
    *v13 = v1;
    v13[1] = sub_10004F208;

    return sub_100056BF0();
  }
}

uint64_t sub_10004F208(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[28] = a1;
  v4[29] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10004F384, 0, 0);
  }
}

uint64_t sub_10004F384()
{
  v1 = v0;
  v2 = v0[10];
  if (v2 >> 62)
  {
LABEL_35:
    v49 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v1[10];
  }

  else
  {
    v49 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[10];
  }

  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v7 = v4 + 32;
  do
  {
    if (v3 == v5)
    {
      v20 = swift_task_alloc();
      v1[30] = v20;
      *v20 = v1;
      v20[1] = sub_10004F918;
      v21 = v1[28];
      v22 = v1[29];
      v23 = v1[16];
      v24 = v1[13];
      v25 = v1[14];
      v26 = v1[11];
      v27 = v1[12];
      v28 = v1[10];

      return AgeRangeDaemonService.requestAgeRange(with:userAgeOverride:altDSID:bundleID:appName:attestedAtOverrideInDays:)(v28, v23, v21, v22, v26, v27, v24, v25);
    }

    if (v6)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v49 + 16))
      {
        goto LABEL_34;
      }

      v10 = *(v7 + 8 * v5);
    }

    v11 = v10;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v12 = v1;
    v13 = v1[18];
    v14 = [v10 integerValue];
    v15 = sub_1000297A8((v13 + 48), *(v13 + 72));
    v16 = *v15;
    v17 = [*(*v15 + 16) aa_primaryAppleAccount];
    if (v17)
    {
      v18 = v17;
      isa = [*(v16 + 24) ageOfMajorityForAccount:v17];
      if (!isa)
      {
        sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
        isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
      }

      v2 = isa;
    }

    else
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      v2 = NSNumber.init(integerLiteral:)(18).super.super.isa;
    }

    v8 = [(objc_class *)v2 integerValue];

    ++v5;
    v9 = v8 < v14;
    v1 = v12;
  }

  while (!v9);
  static FamilyLogger.daemon.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "One of the gates is above 18", v32, 2u);
  }

  v33 = v12[26];
  v34 = v1[24];
  v35 = v1[19];

  v33(v34, v35);
  type metadata accessor for AgeRangeError(0);
  v1[3] = -4010;
  sub_100023D48(_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
  _BridgedStoredNSError.init(_:userInfo:)();
  v36 = v1[2];
  swift_willThrow();
  v1[33] = v36;
  v1[4] = v36;
  swift_errorRetain();
  sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
  if (swift_dynamicCast())
  {
    v37 = v1[5];
    v1[34] = v37;
    v1[6] = v37;
    _BridgedStoredNSError.code.getter();
    if (v1[7] == -4009)
    {
      static FamilyLogger.daemon.getter();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "no response, need to prompt", v40, 2u);
      }

      v41 = v1[26];
      v42 = v1[22];
      v43 = v1[19];

      v41(v42, v43);
      v44 = swift_task_alloc();
      v1[35] = v44;
      *v44 = v1;
      v44[1] = sub_10004FBB8;
      v45 = v1[29];
      v46 = v1[15];
      v47 = v1[28];

      return sub_1000520D8(v47, v45, v46);
    }
  }

  else
  {
  }

  swift_willThrow();

  v48 = v1[1];

  return v48();
}

uint64_t sub_10004F918(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_1000500E8;
  }

  else
  {

    v4 = sub_10004FA34;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004FA34(uint64_t a1)
{
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Found response, no need to prompt", v4, 2u);
  }

  v5 = v1[31];
  v6 = v1[26];
  v7 = v1[23];
  v8 = v1[19];

  v6(v7, v8);
  v9 = [objc_allocWithZone(FAAgeRangeAlertModel) initWithAgeRangeResponse:v5 shouldPrompt:0 flowType:0 title:0 message:0 primaryButtonText:0 secondaryButtonText:0];

  v10 = v1[1];

  return v10(v9);
}

uint64_t sub_10004FBB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = sub_100050374;
  }

  else
  {
    v4 = sub_10004FCD4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004FCD4(uint64_t a1)
{
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[36];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "flowType for age range OOP UI: %ld", v5, 0xCu);
  }

  v6 = v1[36];
  v7 = v1[26];
  v8 = v1[21];
  v9 = v1[19];

  v7(v8, v9);
  if (v6 == 3)
  {
    v10 = v1[34];
    v12 = v1[13];
    v11 = v1[14];

    v13 = sub_1000572C4(v12, v11, 3);

    v14 = v1[1];

    return v14(v13);
  }

  else
  {
    v16 = swift_task_alloc();
    v1[38] = v16;
    *v16 = v1;
    v16[1] = sub_10004FEF0;
    v17 = v1[28];
    v18 = v1[29];
    v19 = v1[16];
    v21 = v1[13];
    v20 = v1[14];
    v22 = v1[11];
    v23 = v1[12];
    v24 = v1[10];

    return sub_100050A5C(v21, v20, v17, v18, v22, v23, v24, v19);
  }
}

uint64_t sub_10004FEF0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = sub_100050420;
  }

  else
  {
    *(v4 + 320) = a1;
    v5 = sub_100050034;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100050034()
{

  v1 = *(v0 + 320);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000500E8()
{
  v1 = v0[32];
  v0[4] = v1;
  v0[33] = v1;
  swift_errorRetain();
  sub_100022F18(&qword_1000B8400, &unk_10008C7D0);
  type metadata accessor for AgeRangeError(0);
  if (swift_dynamicCast())
  {
    v2 = v0[5];
    v0[6] = v2;
    v0[34] = v2;
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
    _BridgedStoredNSError.code.getter();
    if (v0[7] == -4009)
    {
      static FamilyLogger.daemon.getter();
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "no response, need to prompt", v5, 2u);
      }

      v6 = v0[26];
      v7 = v0[22];
      v8 = v0[19];

      v6(v7, v8);
      v9 = swift_task_alloc();
      v0[35] = v9;
      *v9 = v0;
      v9[1] = sub_10004FBB8;
      v11 = v0[28];
      v10 = v0[29];
      v12 = v0[15];

      return sub_1000520D8(v11, v10, v12);
    }
  }

  else
  {
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100050374()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100050420()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100050698(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *aBlock, uint64_t a8)
{
  v8[4] = a6;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  v8[6] = _Block_copy(aBlock);
  sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8[7] = v12;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v8[8] = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v8[9] = v16;
  v18 = a4;
  v19 = a5;
  v20 = a6;

  v21 = swift_task_alloc();
  v8[10] = v21;
  *v21 = v8;
  v21[1] = sub_100050804;

  return AgeRangeDaemonService.shouldPromptAgeRange(with:bundleID:appName:privacyVersion:userAgeOverride:attestedAtOverrideInDays:)(v12, v23, v14, v15, v17, v18, a5, a6);
}

uint64_t sub_100050804(void *a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v4 + 48);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v4 + 48), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100050A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[20] = v14;
  v9[21] = v8;
  v9[18] = a7;
  v9[19] = a8;
  v9[16] = a5;
  v9[17] = a6;
  v9[14] = a3;
  v9[15] = a4;
  v9[12] = a1;
  v9[13] = a2;
  v10 = type metadata accessor for AgeRangeDaemonServiceNewInfoCalculator();
  v9[22] = v10;
  v9[23] = *(v10 - 8);
  v9[24] = swift_task_alloc();
  v11 = type metadata accessor for NewInfoMetadata();
  v9[25] = v11;
  v9[26] = *(v11 - 8);
  v9[27] = swift_task_alloc();

  return _swift_task_switch(sub_100050B90, 0, 0);
}

char *sub_100050B90()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = [v1 integerValue];
    *(v0 + 248) = v2;
    v3 = *(v0 + 144);
    if (v3 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      result = sub_10005580C(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        __break(1u);
        return result;
      }

      v41 = v2;
      v6 = 0;
      v7 = v3 & 0xC000000000000001;
      v8 = *(v0 + 144) + 32;
      do
      {
        if (v7)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v9 = *(v8 + 8 * v6);
        }

        v10 = v9;
        v11 = [v9 integerValue];

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_10005580C((v12 > 1), v13 + 1, 1);
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v13 + 1;
        _swiftEmptyArrayStorage[v13 + 4] = v11;
      }

      while (v4 != v6);
      v2 = v41;
    }

    v14 = sub_1000567F8(_swiftEmptyArrayStorage, v2);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    *(v0 + 360) = v15;
    *(v0 + 256) = v14;
    *(v0 + 264) = v17;
    *(v0 + 361) = v19;

    v22 = *(v0 + 104);
    v42 = *(v0 + 96);
    type metadata accessor for AgeRangeStringsProvider();
    static AgeRangeStringsProvider.promptTitle.getter();
    sub_100022F18(&qword_1000B8230, &qword_10008D830);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10008C640;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100024F28();
    *(v23 + 32) = v42;
    *(v23 + 40) = v22;

    v24 = String.init(format:_:)();
    v26 = v25;
    *(v0 + 16) = v24;
    *(v0 + 24) = v25;

    *(v0 + 272) = v26;
    v27 = static AgeRangeStringsProvider.promptSecondaryButtonText.getter();
    v29 = 0;
    *(v0 + 32) = v27;
    *(v0 + 40) = v28;
    *(v0 + 280) = v28;
    if ((v16 & 1) == 0)
    {
      v29 = [objc_allocWithZone(NSNumber) initWithInteger:v14];
    }

    *(v0 + 288) = v29;
    if (v20)
    {
      v30 = 0;
    }

    else
    {
      v30 = [objc_allocWithZone(NSNumber) initWithInteger:v18];
    }

    *(v0 + 296) = v30;
    v31 = objc_allocWithZone(FAAgeRange);
    v32 = v30;
    v33 = v29;
    v34 = String._bridgeToObjectiveC()();
    v35 = String._bridgeToObjectiveC()();
    *(v0 + 304) = [v31 initWithAltDSID:v34 bundleID:v35 lowerbound:v33 upperbound:v32];

    v36 = swift_task_alloc();
    *(v0 + 312) = v36;
    *v36 = v0;
    v36[1] = sub_100051518;
    v37 = *(v0 + 128);
    v38 = *(v0 + 136);
    v40 = *(v0 + 112);
    v39 = *(v0 + 120);

    return AgeRangeDaemonService.fetchAllAgeRangesForBundleID(with:bundleID:)(v40, v39, v37, v38);
  }

  else
  {
    sub_1000297A8((*(v0 + 168) + 48), *(*(v0 + 168) + 72));
    v21 = swift_task_alloc();
    *(v0 + 224) = v21;
    *v21 = v0;
    v21[1] = sub_100050FF0;

    return sub_1000340F0();
  }
}

uint64_t sub_100050FF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 240) = a1;

    return _swift_task_switch(sub_100051154, 0, 0);
  }
}

char *sub_100051154()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  *(v0 + 248) = v2;
  v3 = *(v0 + 144);
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    result = sub_10005580C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v39 = v1;
    v40 = v2;
    v6 = 0;
    v7 = *(v0 + 144) + 32;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v7 + 8 * v6);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_10005580C((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
    }

    while (v4 != v6);
    v1 = v39;
    v2 = v40;
  }

  v13 = sub_1000567F8(_swiftEmptyArrayStorage, v2);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  *(v0 + 360) = v14;
  *(v0 + 256) = v13;
  *(v0 + 264) = v16;
  *(v0 + 361) = v18;

  if (v1)
  {

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v21 = *(v0 + 104);
    v41 = *(v0 + 96);
    type metadata accessor for AgeRangeStringsProvider();
    static AgeRangeStringsProvider.promptTitle.getter();
    sub_100022F18(&qword_1000B8230, &qword_10008D830);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10008C640;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100024F28();
    *(v22 + 32) = v41;
    *(v22 + 40) = v21;

    v23 = String.init(format:_:)();
    v25 = v24;
    *(v0 + 16) = v23;
    *(v0 + 24) = v24;

    *(v0 + 272) = v25;
    v26 = 0;
    *(v0 + 32) = static AgeRangeStringsProvider.promptSecondaryButtonText.getter();
    *(v0 + 40) = v27;
    *(v0 + 280) = v27;
    if ((v15 & 1) == 0)
    {
      v26 = [objc_allocWithZone(NSNumber) initWithInteger:v13];
    }

    *(v0 + 288) = v26;
    if (v19)
    {
      v28 = 0;
    }

    else
    {
      v28 = [objc_allocWithZone(NSNumber) initWithInteger:v17];
    }

    *(v0 + 296) = v28;
    v29 = objc_allocWithZone(FAAgeRange);
    v30 = v28;
    v31 = v26;
    v32 = String._bridgeToObjectiveC()();
    v33 = String._bridgeToObjectiveC()();
    *(v0 + 304) = [v29 initWithAltDSID:v32 bundleID:v33 lowerbound:v31 upperbound:v30];

    v34 = swift_task_alloc();
    *(v0 + 312) = v34;
    *v34 = v0;
    v34[1] = sub_100051518;
    v35 = *(v0 + 128);
    v36 = *(v0 + 136);
    v38 = *(v0 + 112);
    v37 = *(v0 + 120);

    return AgeRangeDaemonService.fetchAllAgeRangesForBundleID(with:bundleID:)(v38, v37, v35, v36);
  }
}

uint64_t sub_100051518(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {

    v4 = sub_100051984;
  }

  else
  {
    v4 = sub_10005163C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10005163C()
{
  v1 = *(v0 + 320);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 304);
  if (v2)
  {
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 176);
    AgeRangeDaemonServiceNewInfoCalculator.init()();
    AgeRangeDaemonServiceNewInfoCalculator.isThisNewInformation(from:newRequestRange:bundleID:)();

    (*(v5 + 8))(v4, v6);
  }

  else
  {

    v7 = v3;
    NewInfoMetadata.init(isSuperSet:isOverLapping:ageRange:)();
  }

  v8 = sub_1000297A8((*(v0 + 168) + 48), *(*(v0 + 168) + 72));
  v9 = *v8;
  v10 = [*(*v8 + 16) aa_primaryAppleAccount];
  if (v10)
  {
    v11 = v10;
    isa = [*(v9 + 24) ageOfMajorityForAccount:v10];
    if (!isa)
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
    }

    v13 = isa;
  }

  else
  {
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v13 = NSNumber.init(integerLiteral:)(18).super.super.isa;
  }

  v14 = *(v0 + 248);
  v15 = [(objc_class *)v13 integerValue];

  if (NewInfoMetadata.isSuperSet.getter())
  {
    v16 = v14 >= v15;
    v17 = *(v0 + 361);
    v18 = *(v0 + 360);
    v20 = *(v0 + 256);
    v19 = *(v0 + 264);
    v21 = *(v0 + 216);
    v22 = swift_task_alloc();
    *(v22 + 16) = v16;
    *(v22 + 24) = v21;
    v23 = v18 & 1;
    LODWORD(v15) = v17 & 1;
    v24 = sub_100058ED4;
LABEL_15:
    v30 = sub_100057474(v20, v23, v19, v15, v24);
    v32 = v31;

    goto LABEL_17;
  }

  v25 = NewInfoMetadata.isOverLapping.getter();
  v26 = *(v0 + 361);
  v27 = *(v0 + 360);
  v20 = *(v0 + 256);
  v19 = *(v0 + 264);
  if (v25)
  {
    v28 = *(v0 + 216);
    v29 = swift_task_alloc();
    *(v29 + 16) = v14 >= v15;
    *(v29 + 24) = v28;
    v23 = v27 & 1;
    LODWORD(v15) = v26 & 1;
    v24 = sub_100058EB0;
    goto LABEL_15;
  }

  v33 = v14 >= v15;
  v23 = v27 & 1;
  LOBYTE(v15) = v26 & 1;
  v30 = sub_10005774C(*(v0 + 256), v23, *(v0 + 264), v26 & 1, v33);
  v32 = v34;
LABEL_17:
  *(v0 + 48) = v30;
  *(v0 + 56) = v32;
  *(v0 + 64) = sub_100057A8C(*(v0 + 256), v23, *(v0 + 264), v15, 3);
  *(v0 + 72) = v35;
  v36 = swift_task_alloc();
  *(v0 + 336) = v36;
  *v36 = v0;
  v36[1] = sub_100051A08;
  v38 = *(v0 + 112);
  v37 = *(v0 + 120);

  return sub_1000562D0(v38, v37);
}

uint64_t sub_100051984()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100051A08(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 80) = v1;
  *(v2 + 88) = a1;

  return _swift_task_switch(sub_100051B08, 0, 0);
}

uint64_t sub_100051B08()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = [*(v0 + 296) integerValue];
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1000297A8((*(v0 + 168) + 48), *(*(v0 + 168) + 72));
  v4 = *v3;
  v5 = [*(*v3 + 16) aa_primaryAppleAccount];
  if (v5)
  {
    v6 = v5;
    isa = [*(v4 + 24) ageOfMajorityForAccount:v5];
    if (!isa)
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
    }

    v8 = isa;
  }

  else
  {
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v8 = NSNumber.init(integerLiteral:)(18).super.super.isa;
  }

  v9 = [(objc_class *)v8 integerValue];

  v10 = swift_task_alloc();
  *(v0 + 344) = v10;
  *v10 = v0;
  v10[1] = sub_100051CA4;

  return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(1, v2, v1 == 0, 0, 0, v9);
}

uint64_t sub_100051CA4(uint64_t a1)
{
  *(*v1 + 352) = a1;

  return _swift_task_switch(sub_100051DA4, 0, 0);
}

uint64_t sub_100051DA4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 296);
  v3 = *(v0 + 288);
  v4 = v2;
  v18 = NewInfoMetadata.isOverLapping.getter();
  if (v1)
  {
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = *(v0 + 296);
  v7 = *(v0 + 288);
  v22 = *(v0 + 216);
  v23 = *(v0 + 304);
  v20 = *(v0 + 208);
  v21 = *(v0 + 200);
  v19 = *(v0 + 160);
  v8 = [objc_allocWithZone(FAAgeRangeResponse) initWithLowerbound:v7 upperbound:v6 validationLevel:*(v0 + 88) response:1 parentalControlsInformation:v5.super.isa isSharingNewInformation:v18 & 1];

  v9 = objc_allocWithZone(FAAgeRangeAlertModel);
  v10 = v8;
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [v9 initWithAgeRangeResponse:v10 shouldPrompt:1 flowType:v19 title:v11 message:v12 primaryButtonText:v13 secondaryButtonText:v14];

  (*(v20 + 8))(v22, v21);

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_100052004@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  a4[3] = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel(0);
  a4[4] = &off_1000A8C30;
  v7 = sub_10003A24C(a4);
  v8 = *(sub_100022F18(&qword_1000B9040, &qword_10008D838) + 48);
  *v7 = a1;
  v9 = type metadata accessor for NewInfoMetadata();
  (*(*(v9 - 8) + 16))(v7 + v8, a2, v9);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000520D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v7 = type metadata accessor for Logger();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[28] = v8;
  *v8 = v4;
  v8[1] = sub_1000521F8;

  return sub_1000492E4(a1, a2);
}

uint64_t sub_1000521F8(int a1, void *a2)
{
  v5 = *v3;
  *(v5 + 272) = a1;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10005235C, 0, 0);
  }
}

uint64_t sub_10005235C(uint64_t a1)
{
  v21 = v1;
  static FamilyLogger.common.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 272);
    v5 = *(v1 + 216);
    v6 = *(v1 + 184);
    v7 = *(v1 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000373D4(0xD000000000000024, 0x8000000100088B80, &v20);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s age range state: %d", v8, 0x12u);
    sub_100024F7C(v9);

    v10 = *(v7 + 8);
    v10(v5, v6);
  }

  else
  {
    v11 = *(v1 + 216);
    v12 = *(v1 + 184);
    v13 = *(v1 + 192);

    v10 = *(v13 + 8);
    v10(v11, v12);
  }

  *(v1 + 232) = v10;
  if (*(v1 + 272))
  {
    v14 = swift_task_alloc();
    *(v1 + 256) = v14;
    *v14 = v1;
    v14[1] = sub_100052974;
    v16 = *(v1 + 152);
    v15 = *(v1 + 160);

    return sub_1000492E4(v16, v15);
  }

  else
  {
    v18 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    *(v1 + 240) = v18;
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 144;
    *(v1 + 24) = sub_10005265C;
    v19 = swift_continuation_init();
    *(v1 + 136) = sub_100022F18(&unk_1000B8440, &unk_10008C890);
    *(v1 + 80) = _NSConcreteStackBlock;
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_10007415C;
    *(v1 + 104) = &unk_1000A8B90;
    *(v1 + 112) = v19;
    [v18 startRequestWithCompletionHandler:v1 + 80];

    return _swift_continuation_await(v1 + 16);
  }
}

uint64_t sub_10005265C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_100052CD4;
  }

  else
  {
    v2 = sub_10005276C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005276C()
{
  v18 = v0;
  v1 = *(v0 + 144);
  LOBYTE(v2) = FAFamilyCircle.isPartOfFamilyAndChildOrTeen(altDSID:)(*(v0 + 152))._0;
  v3 = v2;

  v4 = v3 & 0x100;
  static FamilyLogger.common.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v10 = *(v0 + 184);
  if (v7)
  {
    v16 = *(v0 + 232);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1000373D4(0xD000000000000024, 0x8000000100088B80, &v17);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v3 & 1;
    *(v11 + 18) = 1024;
    *(v11 + 20) = v4 >> 8;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s isPartOfFamily: %{BOOL}d, isChildOrTeen: %{BOOL}d", v11, 0x18u);
    sub_100024F7C(v12);

    v16(v9, v10);
  }

  else
  {

    v8(v9, v10);
  }

  if (((v4 != 0) & v3) != 0)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_100052974(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 264) = a2;

  if (v2)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100052AD0, 0, 0);
  }
}

uint64_t sub_100052AD0()
{
  sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
  v1 = static NSObject.== infix(_:_:)();
  v2 = v0[33];
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v4 = v0[21];
    static FamilyLogger.common.getter();
    v5 = v4;
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[33];
      v10 = v0[21];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      *(v11 + 4) = v10;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v9;
      *v12 = v10;
      v12[1] = v9;
      v13 = v10;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, v8, "Privacy version mismatch, currentVersion: %@, serverPrivacyVersion: %@ ", v11, 0x16u);
      sub_100022F18(&qword_1000B8590, &qword_10008C960);
      swift_arrayDestroy();
    }

    v2 = v0[33];
    v15 = v0[29];
    v16 = v0[25];
    v17 = v0[23];

    v15(v16, v17);
    v3 = 2;
  }

  v18 = v0[1];

  return v18(v3);
}

uint64_t sub_100052CD4(uint64_t a1)
{
  v13 = v1;
  swift_willThrow();

  static FamilyLogger.common.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 232);
  v6 = *(v1 + 208);
  v7 = *(v1 + 184);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_1000373D4(0xD000000000000024, 0x8000000100088B80, &v12);
    *(v8 + 12) = 1024;
    *(v8 + 14) = 0;
    *(v8 + 18) = 1024;
    *(v8 + 20) = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s isPartOfFamily: %{BOOL}d, isChildOrTeen: %{BOOL}d", v8, 0x18u);
    sub_100024F7C(v9);
  }

  v5(v6, v7);

  v10 = *(v1 + 8);

  return v10(2);
}

uint64_t AgeRangeDaemonService.fetchFamilyCircle()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100052F34;

  return sub_100057DB8();
}

uint64_t sub_100052F34(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000531AC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100053254;

  return sub_100057DB8();
}

uint64_t sub_100053254(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t AgeRangeDaemonService.fetchAltDSID()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100053474;

  return sub_100056BF0();
}

uint64_t sub_100053474(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1000536FC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000537A4;

  return sub_100056BF0();
}

uint64_t sub_1000537A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *v3;

  if (v4)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v5 + 16);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t AgeRangeDaemonService.fetchAge()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000539D4, 0, 0);
}

uint64_t sub_1000539D4(uint64_t a1)
{
  v13 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0x6567416863746566, 0xEA00000000002928, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  (*(v6 + 8))(v5, v7);
  sub_1000297A8((v1[2] + 48), *(v1[2] + 72));
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_100053B7C;

  return sub_1000340F0();
}

uint64_t sub_100053B7C(uint64_t a1)
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
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_100053CD0, 0, 0);
  }
}

uint64_t sub_100053CD0()
{
  v1 = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + 56)];

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100053ED8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100053F80;

  return AgeRangeDaemonService.fetchAge()();
}

uint64_t sub_100053F80(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t AgeRangeDaemonService.fetchPrivacyVersion(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000541C8;

  return sub_1000492E4(a1, a2);
}

uint64_t sub_1000541C8(uint64_t a1, uint64_t a2)
{
  v8 = *v3;

  v6 = *(v8 + 8);
  if (!v2)
  {
    v5 = a2;
  }

  return v6(v5);
}

uint64_t sub_100054454(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100054528;

  return sub_1000492E4(v4, v6);
}

uint64_t sub_100054528(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;

  if (v2)
  {
    v7 = *(v5 + 24);

    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    *(v5 + 48) = a2;

    return _swift_task_switch(sub_1000546C8, 0, 0);
  }
}

uint64_t sub_1000546C8()
{
  v1 = v0[6];
  v2 = v0[3];

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

uint64_t AgeRangeDaemonService.deinit()
{

  sub_100024F7C((v0 + 48));

  return v0;
}

uint64_t AgeRangeDaemonService.__deallocating_deinit()
{

  sub_100024F7C((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_100054840(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v6 = v3;
  v8 = type metadata accessor for NewInfoMetadata();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v90 - v15;
  v17 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel(0);
  __chkstk_darwin(v17, v18);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058F44(v6, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v22 = *v20;
      v23 = type metadata accessor for AgeRangeStringsProvider();
      if (v22 == 1)
      {
        static AgeRangeStringsProvider.promptMessageAdult.getter();
        goto LABEL_8;
      }

      a2(v23);
LABEL_17:
      sub_100022F18(&qword_1000B8230, &qword_10008D830);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_10008C640;
      v90 = a1;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      *(v72 + 56) = &type metadata for String;
      *(v72 + 64) = sub_100024F28();
      *(v72 + 32) = v73;
      *(v72 + 40) = v75;
      v24 = String.init(format:_:)();

      return v24;
    }

    v45 = *v20;
    v46 = sub_100022F18(&qword_1000B9040, &qword_10008D838);
    (*(v9 + 32))(v16, &v20[*(v46 + 48)], v8);
    v47 = type metadata accessor for AgeRangeStringsProvider();
    if (v45 == 1)
    {
      static AgeRangeStringsProvider.promptMessageAdult.getter();
      v48 = String.init(format:_:)();
      v50 = v49;

      v90 = v48;
      v91 = v50;
    }

    else
    {
      a2(v47);
      sub_100022F18(&qword_1000B8230, &qword_10008D830);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_10008C640;
      v90 = a1;
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = sub_100024F28();
      *(v76 + 32) = v77;
      *(v76 + 40) = v79;
      v80 = String.init(format:_:)();
      v82 = v81;

      v90 = v80;
      v91 = v82;
    }

    v51._countAndFlagsBits = 2570;
    v51._object = 0xE200000000000000;
    String.append(_:)(v51);

    v84 = v90;
    v83 = v91;
    v85 = NewInfoMetadata.rangeDescription.getter();
    v87 = v86;
    v90 = v84;
    v91 = v83;

    v88._countAndFlagsBits = v85;
    v88._object = v87;
    String.append(_:)(v88);

    v24 = v90;
    (*(v9 + 8))(v16, v8);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        type metadata accessor for AgeRangeStringsProvider();
        static AgeRangeStringsProvider.promptPrimaryButtonText.getter();
LABEL_8:
        v24 = String.init(format:_:)();

        return v24;
      }

      type metadata accessor for AgeRangeStringsProvider();
      a3();
      goto LABEL_17;
    }

    v25 = *v20;
    v26 = sub_100022F18(&qword_1000B9040, &qword_10008D838);
    (*(v9 + 32))(v13, &v20[*(v26 + 48)], v8);
    type metadata accessor for AgeRangeStringsProvider();
    if (v25 == 1)
    {
      static AgeRangeStringsProvider.promptMessageAdult.getter();
      v27 = String.init(format:_:)();
      v29 = v28;

      v90 = v27;
      v91 = v29;

      v30._countAndFlagsBits = 2570;
      v30._object = 0xE200000000000000;
      String.append(_:)(v30);

      v32 = v90;
      v31 = v91;
      v33 = NewInfoMetadata.rangeDescription.getter();
      v35 = v34;
      v90 = v32;
      v91 = v31;

      v36._countAndFlagsBits = v33;
      v36._object = v35;
      String.append(_:)(v36);

      v37._countAndFlagsBits = 10;
      v37._object = 0xE100000000000000;
      String.append(_:)(v37);

      v39 = v90;
      v38 = v91;
      static AgeRangeStringsProvider.promptMessageNewInfoText.getter();
      v40 = String.init(format:_:)();
      v42 = v41;

      v90 = v39;
      v91 = v38;

      v43 = v40;
      v44 = v42;
    }

    else
    {
      (a2)();
      sub_100022F18(&qword_1000B8230, &qword_10008D830);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_10008C640;
      v90 = a1;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = sub_100024F28();
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      v56 = String.init(format:_:)();
      v58 = v57;

      v90 = v56;
      v91 = v58;

      v59._countAndFlagsBits = 2570;
      v59._object = 0xE200000000000000;
      String.append(_:)(v59);

      v61 = v90;
      v60 = v91;
      v62 = NewInfoMetadata.rangeDescription.getter();
      v64 = v63;
      v90 = v61;
      v91 = v60;

      v65._countAndFlagsBits = v62;
      v65._object = v64;
      String.append(_:)(v65);

      v66._countAndFlagsBits = 2570;
      v66._object = 0xE200000000000000;
      String.append(_:)(v66);

      v68 = v90;
      v67 = v91;
      static AgeRangeStringsProvider.promptMessageNewInfoText.getter();
      v69 = String.init(format:_:)();
      v71 = v70;

      v90 = v68;
      v91 = v67;

      v43 = v69;
      v44 = v71;
    }

    String.append(_:)(*&v43);

    v24 = v90;
    (*(v9 + 8))(v13, v8);
  }

  return v24;
}

uint64_t sub_100054F58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NewInfoMetadata();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = v104 - v13;
  v15 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel(0);
  __chkstk_darwin(v15, v16);
  v18 = v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058F44(v3, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = *v18;
      type metadata accessor for AgeRangeStringsProvider();
      if (v20 == 1)
      {
        static AgeRangeStringsProvider.promptMessageAdult.getter();
        goto LABEL_18;
      }

      static AgeRangeStringsProvider.promptMessage.getter();
      goto LABEL_17;
    }

    v42 = *v18;
    v43 = sub_100022F18(&qword_1000B9040, &qword_10008D838);
    (*(v7 + 32))(v14, &v18[*(v43 + 48)], v6);
    type metadata accessor for AgeRangeStringsProvider();
    if (v42 == 1)
    {
      static AgeRangeStringsProvider.promptMessageAdult.getter();
      v44 = String.init(format:_:)();
      v46 = v45;

      v107 = v44;
      v108 = v46;

      v47._countAndFlagsBits = 2570;
      v47._object = 0xE200000000000000;
      String.append(_:)(v47);

      v49 = v107;
      v48 = v108;
      v50 = NewInfoMetadata.rangeDescription.getter();
      v52 = v51;
      v107 = v49;
      v108 = v48;

      v53._countAndFlagsBits = v50;
      v53._object = v52;
      String.append(_:)(v53);

      v41 = v107;
      (*(v7 + 8))(v14, v6);
    }

    else
    {
      v105 = static AgeRangeStringsProvider.promptMessage.getter();
      sub_100022F18(&qword_1000B8230, &qword_10008D830);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_10008C760;
      v107 = a1;
      v106 = v7;
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      *(v86 + 56) = &type metadata for String;
      v90 = sub_100024F28();
      *(v86 + 64) = v90;
      *(v86 + 32) = v87;
      *(v86 + 40) = v89;
      v107 = a2;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v86 + 96) = &type metadata for String;
      *(v86 + 104) = v90;
      *(v86 + 72) = v91;
      *(v86 + 80) = v92;
      v93 = String.init(format:_:)();
      v95 = v94;

      v107 = v93;
      v108 = v95;

      v96._countAndFlagsBits = 2570;
      v96._object = 0xE200000000000000;
      String.append(_:)(v96);

      v98 = v107;
      v97 = v108;
      v99 = NewInfoMetadata.rangeDescription.getter();
      v101 = v100;
      v107 = v98;
      v108 = v97;

      v102._countAndFlagsBits = v99;
      v102._object = v101;
      String.append(_:)(v102);

      v41 = v107;
      (*(v106 + 8))(v14, v6);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        type metadata accessor for AgeRangeStringsProvider();
        static AgeRangeStringsProvider.promptPrimaryButtonText.getter();
LABEL_18:
        v41 = String.init(format:_:)();

        return v41;
      }

      type metadata accessor for AgeRangeStringsProvider();
      static AgeRangeStringsProvider.userNotificationBody.getter();
LABEL_17:
      sub_100022F18(&qword_1000B8230, &qword_10008D830);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_10008C760;
      v107 = a1;
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      *(v79 + 56) = &type metadata for String;
      v83 = sub_100024F28();
      *(v79 + 64) = v83;
      *(v79 + 32) = v80;
      *(v79 + 40) = v82;
      v107 = a2;
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v79 + 96) = &type metadata for String;
      *(v79 + 104) = v83;
      *(v79 + 72) = v84;
      *(v79 + 80) = v85;
      goto LABEL_18;
    }

    v21 = *v18;
    v22 = sub_100022F18(&qword_1000B9040, &qword_10008D838);
    (*(v7 + 32))(v11, &v18[*(v22 + 48)], v6);
    v23 = type metadata accessor for AgeRangeStringsProvider();
    if (v21 == 1)
    {
      static AgeRangeStringsProvider.promptMessageAdult.getter();
      v24 = String.init(format:_:)();
      v26 = v25;

      v107 = v24;
      v108 = v26;

      v27._countAndFlagsBits = 2570;
      v27._object = 0xE200000000000000;
      String.append(_:)(v27);

      v28 = v107;
      v29 = v108;
      v30 = NewInfoMetadata.rangeDescription.getter();
      v32 = v31;
      v107 = v28;
      v108 = v29;

      v33._countAndFlagsBits = v30;
      v33._object = v32;
      String.append(_:)(v33);

      v34._countAndFlagsBits = 10;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);

      v36 = v107;
      v35 = v108;
      static AgeRangeStringsProvider.promptMessageNewInfoText.getter();
      v37 = String.init(format:_:)();
      v39 = v38;

      v107 = v36;
      v108 = v35;

      v40._countAndFlagsBits = v37;
      v40._object = v39;
      String.append(_:)(v40);

      v41 = v107;
      (*(v7 + 8))(v11, v6);
    }

    else
    {
      v104[1] = static AgeRangeStringsProvider.promptMessage.getter();
      sub_100022F18(&qword_1000B8230, &qword_10008D830);
      v54 = swift_allocObject();
      v106 = v7;
      v107 = a1;
      v55 = v54;
      *(v54 + 16) = xmmword_10008C760;
      v105 = v23;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v55[7] = &type metadata for String;
      v59 = sub_100024F28();
      v55[8] = v59;
      v55[4] = v56;
      v55[5] = v58;
      v107 = a2;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v55[12] = &type metadata for String;
      v55[13] = v59;
      v55[9] = v60;
      v55[10] = v61;
      v62 = String.init(format:_:)();
      v64 = v63;

      v107 = v62;
      v108 = v64;

      v65._countAndFlagsBits = 2570;
      v65._object = 0xE200000000000000;
      String.append(_:)(v65);

      v67 = v107;
      v66 = v108;
      v68 = NewInfoMetadata.rangeDescription.getter();
      v70 = v69;
      v107 = v67;
      v108 = v66;

      v71._countAndFlagsBits = v68;
      v71._object = v70;
      String.append(_:)(v71);

      v72._countAndFlagsBits = 2570;
      v72._object = 0xE200000000000000;
      String.append(_:)(v72);

      v74 = v107;
      v73 = v108;
      static AgeRangeStringsProvider.promptMessageNewInfoText.getter();
      v75 = String.init(format:_:)();
      v77 = v76;

      v107 = v74;
      v108 = v73;

      v78._countAndFlagsBits = v75;
      v78._object = v77;
      String.append(_:)(v78);

      v41 = v107;
      (*(v106 + 8))(v11, v6);
    }
  }

  return v41;
}

void sub_100055740(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1000557DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_10005580C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10005582C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10005582C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100022F18(&qword_1000B9070, &qword_10008D868);
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

Swift::Int sub_100055930(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000562BC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100055A64(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100055A64(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000561A4(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_100055FB0((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000561B8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1000561B8((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_100055FB0((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_100055FB0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_1000561B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100022F18(&qword_1000B94F0, &qword_10008D860);
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

uint64_t sub_1000562D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_1000562F0, 0, 0);
}

uint64_t sub_1000562F0()
{
  v1 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100056428;
  v2 = swift_continuation_init();
  v0[17] = sub_100022F18(&unk_1000B8440, &unk_10008C890);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10007415C;
  v0[13] = &unk_1000A8C08;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100056428()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_100056778;
  }

  else
  {
    v2 = sub_100056538;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100056538()
{
  v22 = v0[18];
  v1 = [v22 members];
  sub_100002B10(0, &qword_1000B9050, FAFamilyMember_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v24 = v2;
    v25 = v2 & 0xC000000000000001;
    v23 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v25)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 altDSID];
      if (v8)
      {
        v9 = i;
        v11 = v0[19];
        v10 = v0[20];
        v12 = v8;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (v13 == v11 && v15 == v10)
        {

          i = v9;
          v2 = v24;
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          i = v9;
          v2 = v24;
          if ((v17 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if ([v6 isMe] && (FAFamilyMember.isTeenOrChild.getter() & 1) != 0)
        {
          v18 = v0[21];

          v19 = 2;
          goto LABEL_25;
        }
      }

LABEL_4:

      ++v4;
      if (v7 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  v6 = v0[21];
  v19 = 1;
LABEL_25:

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_100056778(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2(1);
}

uint64_t sub_1000567F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v2;
    v14 = a2;
    v15 = v13;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1000373D4(0xD000000000000014, 0x8000000100088C60, &v30);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v15, 0xCu);
    sub_100024F7C(v16);

    a2 = v14;
    v3 = v28;
  }

  (*(v7 + 8))(v10, v6);
  if ((*(a1 + 16) - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    type metadata accessor for AgeRangeError(0);
    v17 = -4008;
LABEL_10:
    v29 = v17;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return v3;
  }

  v30 = a1;

  sub_100055930(&v30);
  if (!v3)
  {
    v18 = v30;
    if (sub_10004ED18(v30))
    {

      type metadata accessor for AgeRangeError(0);
      v17 = -4007;
      goto LABEL_10;
    }

    if (sub_10004ED60(v18))
    {

      type metadata accessor for AgeRangeError(0);
      v17 = -4013;
      goto LABEL_10;
    }

    v20 = *(v18 + 2);
    v21 = v20 == 0;
    if (v20)
    {
      v22 = *(v18 + 4);
      v23 = v22 > a2;
      if (v22 > a2)
      {
        v3 = 0;
LABEL_20:

        v24 = 0;
        goto LABEL_21;
      }

      v25 = (v18 + 40);
      v26 = v20 - 1;
      while (1)
      {
        v3 = v22;
        if (!v26)
        {
          break;
        }

        v27 = *v25++;
        v22 = v27;
        --v26;
        if (v27 > a2)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v24 = 1;
    v23 = v21;
LABEL_21:
    LOBYTE(v30) = v23;
    LOBYTE(v29) = v24;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100056BF0()
{
  v1 = type metadata accessor for Logger();
  v0[21] = v1;
  v0[22] = *(v1 - 8);
  v0[23] = swift_task_alloc();

  return _swift_task_switch(sub_100056CAC, 0, 0);
}

uint64_t sub_100056CAC(uint64_t a1)
{
  v16 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[22];
  v5 = v1[23];
  v7 = v1[21];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0x746C416863746566, 0xEE00292844495344, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = [objc_opt_self() defaultStore];
  v1[24] = v10;
  if (v10)
  {
    v11 = v10;
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_100056FB4;
    v12 = swift_continuation_init();
    v1[17] = sub_100022F18(&qword_1000B9048, &unk_10008D840);
    v1[10] = _NSConcreteStackBlock;
    v1[11] = 1107296256;
    v1[12] = sub_10006D050;
    v1[13] = &unk_1000A8BB8;
    v1[14] = v12;
    [v11 aa_primaryAppleAccountWithCompletion:v1 + 10];

    return _swift_continuation_await(v1 + 2);
  }

  else
  {
    type metadata accessor for AgeRangeError(0);
    v1[20] = -4004;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v13 = v1[1];

    return v13();
  }
}

uint64_t sub_100056FB4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_10005724C;
  }

  else
  {
    v2 = sub_1000570C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000570C4()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = [v1 aa_altDSID];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7 = *(v0 + 8);

      return v7(v4, v6);
    }
  }

  type metadata accessor for AgeRangeError(0);
  *(v0 + 160) = -4004;
  sub_100023D48(_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError, &unk_10008C45C);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10005724C(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

id sub_1000572C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AgeRangeStringsProvider();
  static AgeRangeStringsProvider.unconfiguredAlertTitle.getter();
  static AgeRangeStringsProvider.unconfiguredAlertMessage.getter();
  sub_100022F18(&qword_1000B8230, &qword_10008D830);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10008C640;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100024F28();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  String.init(format:_:)();

  static AgeRangeStringsProvider.unconfiguredAlertPrimaryButtonText.getter();
  static AgeRangeStringsProvider.unconfiguredAlertSecondaryButtonText.getter();
  v6 = objc_allocWithZone(FAAgeRangeAlertModel);
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v6 initWithAgeRangeResponse:0 shouldPrompt:1 flowType:a3 title:v7 message:v8 primaryButtonText:v9 secondaryButtonText:v10];

  return v11;
}

uint64_t sub_100057474(uint64_t a1, char a2, uint64_t a3, int a4, void (*a5)(void *__return_ptr, void))
{
  v26 = a4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.daemon.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = a3;
    v25 = a5;
    v17 = v16;
    v18 = a1;
    v19 = swift_slowAlloc();
    v27[0] = v19;
    *v17 = 136315138;
    *(v17 + 4) = sub_1000373D4(0xD00000000000002FLL, 0x8000000100088B50, v27);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v17, 0xCu);
    sub_100024F7C(v19);
    a1 = v18;

    a3 = v24;
    a5 = v25;
  }

  v20 = (*(v10 + 8))(v13, v9);
  if ((v26 & 1) == 0)
  {
    a5(v27, v20);
    sub_1000297A8(v27, v28);
    if (a2)
    {
      v22 = sub_100054840(a3, &static AgeRangeStringsProvider.promptMessageUnder.getter, &static AgeRangeStringsProvider.userNotificationBodyUnder.getter);
    }

    else
    {
      v22 = sub_100054F58(a1, a3);
    }

    goto LABEL_10;
  }

  if ((a2 & 1) == 0)
  {
    a5(v27, v20);
    sub_1000297A8(v27, v28);
    v22 = sub_100054840(a1, &static AgeRangeStringsProvider.promptMessageOver.getter, &static AgeRangeStringsProvider.userNotificationBodyOver.getter);
LABEL_10:
    v21 = v22;
    sub_100024F7C(v27);
    return v21;
  }

  return 0;
}

uint64_t sub_10005774C(uint64_t a1, char a2, uint64_t a3, char a4, int a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.daemon.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = a5;
    v31 = a3;
    v18 = a1;
    v19 = v17;
    v20 = a4;
    v21 = a2;
    v22 = swift_slowAlloc();
    v33[0] = v22;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000373D4(0xD00000000000002FLL, 0x8000000100088B50, v33);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v19, 0xCu);
    sub_100024F7C(v22);
    a2 = v21;
    a4 = v20;

    a1 = v18;
    a3 = v31;
    LOBYTE(a5) = v32;
  }

  (*(v11 + 8))(v14, v10);
  if ((a4 & 1) == 0)
  {
    v24 = a5 & 1;
    if ((a2 & 1) == 0)
    {
      v34 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel(0);
      v35 = &off_1000A8C30;
      *sub_10003A24C(v33) = v24;
      swift_storeEnumTagMultiPayload();
      sub_1000297A8(v33, v34);
      v28 = sub_100054F58(a1, a3);
      goto LABEL_11;
    }

    v34 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel(0);
    v35 = &off_1000A8C30;
    *sub_10003A24C(v33) = v24;
    swift_storeEnumTagMultiPayload();
    sub_1000297A8(v33, v34);
    v25 = &static AgeRangeStringsProvider.promptMessageUnder.getter;
    v26 = &static AgeRangeStringsProvider.userNotificationBodyUnder.getter;
    v27 = a3;
LABEL_9:
    v28 = sub_100054840(v27, v25, v26);
LABEL_11:
    v23 = v28;
    sub_100024F7C(v33);
    return v23;
  }

  if ((a2 & 1) == 0)
  {
    v34 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel(0);
    v35 = &off_1000A8C30;
    *sub_10003A24C(v33) = a5 & 1;
    swift_storeEnumTagMultiPayload();
    sub_1000297A8(v33, v34);
    v25 = &static AgeRangeStringsProvider.promptMessageOver.getter;
    v26 = &static AgeRangeStringsProvider.userNotificationBodyOver.getter;
    v27 = a1;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_100057A8C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = a5;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.daemon.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v5;
    v30 = a1;
    v18 = a3;
    v19 = v17;
    v20 = a4;
    v21 = a2;
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000373D4(0xD00000000000002FLL, 0x8000000100088B50, v32);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v19, 0xCu);
    sub_100024F7C(v22);
    a2 = v21;
    a4 = v20;

    a3 = v18;
    a1 = v30;
  }

  (*(v11 + 8))(v14, v10);
  if ((a4 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      v33 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel(0);
      v34 = &off_1000A8C30;
      sub_10003A24C(v32);
      swift_storeEnumTagMultiPayload();
      sub_1000297A8(v32, v33);
      v27 = sub_100054F58(a1, a3);
      goto LABEL_11;
    }

    v33 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel(0);
    v34 = &off_1000A8C30;
    sub_10003A24C(v32);
    swift_storeEnumTagMultiPayload();
    sub_1000297A8(v32, v33);
    v24 = &static AgeRangeStringsProvider.promptMessageUnder.getter;
    v25 = &static AgeRangeStringsProvider.userNotificationBodyUnder.getter;
    v26 = a3;
LABEL_9:
    v27 = sub_100054840(v26, v24, v25);
LABEL_11:
    v23 = v27;
    sub_100024F7C(v32);
    return v23;
  }

  if ((a2 & 1) == 0)
  {
    v33 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel(0);
    v34 = &off_1000A8C30;
    sub_10003A24C(v32);
    swift_storeEnumTagMultiPayload();
    sub_1000297A8(v32, v33);
    v24 = &static AgeRangeStringsProvider.promptMessageOver.getter;
    v25 = &static AgeRangeStringsProvider.userNotificationBodyOver.getter;
    v26 = a1;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_100057DB8()
{
  v1 = type metadata accessor for Logger();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_100057E74, 0, 0);
}

uint64_t sub_100057E74(uint64_t a1)
{
  v14 = v1;
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[20];
  v5 = v1[21];
  v7 = v1[19];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000013, 0x8000000100088B30, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  (*(v6 + 8))(v5, v7);
  v10 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v1[22] = v10;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1000580A8;
  v11 = swift_continuation_init();
  v1[17] = sub_100022F18(&unk_1000B8440, &unk_10008C890);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10007415C;
  v1[13] = &unk_1000A8B68;
  v1[14] = v11;
  [v10 startRequestWithCompletionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_1000580A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10005822C;
  }

  else
  {
    v2 = sub_1000581B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000581B8()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10005822C(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000582CC(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100058344()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_100054454(v2, v3, v4);
}

uint64_t sub_1000583F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100026620;

  return sub_100053ED8(v2, v3);
}

uint64_t sub_1000584A4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100026620;

  return sub_1000536FC(v2);
}

uint64_t sub_100058550()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058590()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100026620;

  return sub_1000531AC(v2);
}

uint64_t sub_10005863C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100026358;

  return sub_100050698(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100058724()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100026620;

  return sub_10004EA60(v2, v3, v4, v6, v5);
}

uint64_t sub_1000587EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_10004CCEC(v2, v3, v4);
}

uint64_t sub_1000588A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100026620;

  return sub_1000491D4(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100058978()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_100048068(v2, v3, v4);
}

uint64_t sub_100058A2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_100046F68(v2, v3, v4);
}

uint64_t sub_100058AE0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_100044CD8(v2, v3, v4);
}

uint64_t sub_100058B94()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058BDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026620;

  return sub_100043CB8(v2, v3, v4);
}

uint64_t sub_100058C90()
{
  _Block_release(*(v0 + 64));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100058D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = v9[2];
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[6];
  v16 = v9[7];
  v18 = v9[8];
  v17 = v9[9];
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_100026620;

  return sub_100041A00(v11, v12, v13, v14, v15, v16, v18, v17, a9);
}

uint64_t sub_100058DE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100026620;

  return sub_10003DB98(v2, v3, v4, v5, v6);
}

uint64_t type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel(uint64_t a1)
{
  result = qword_1000B90E8;
  if (!qword_1000B90E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100058F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeRangeDaemonService.AgeRangeAlertContentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058FA8(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10005901C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000590B4(uint64_t a1)
{
  sub_100059128();
  if (v1 <= 0x3F)
  {
    sub_100059158(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *sub_100059128()
{
  result = qword_1000B90F8;
  if (!qword_1000B90F8)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_1000B90F8);
  }

  return result;
}

void sub_100059158(uint64_t a1)
{
  if (!qword_1000B9100)
  {
    type metadata accessor for NewInfoMetadata();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000B9100);
    }
  }
}

id sub_1000591E8(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(type metadata accessor for PDSRegistrarService(a1 a2))];
  static PDSRegistrarService.sharedInstance = result;
  return result;
}

uint64_t *PDSRegistrarService.sharedInstance.unsafeMutableAddressor()
{
  if (qword_1000B7F28 != -1)
  {
    swift_once();
  }

  return &static PDSRegistrarService.sharedInstance;
}

id static PDSRegistrarService.sharedInstance.getter()
{
  if (qword_1000B7F28 != -1)
  {
    swift_once();
  }

  v1 = static PDSRegistrarService.sharedInstance;

  return v1;
}

id sub_100059320()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2, v3);
  v4 = OBJC_IVAR___PDSRegistrarService_pdsRegistrar;
  *&v0[OBJC_IVAR___PDSRegistrarService_pdsRegistrar] = 0;
  v5 = [objc_allocWithZone(ACAccountStore) init];
  v6 = [v5 aida_accountForPrimaryiCloudAccount];

  if (v6 && (v7 = [v6 aida_dsid]) != 0)
  {
    v8 = v7;
    v9 = [objc_opt_self() userWithDSID:v7];
  }

  else
  {
    v9 = 0;
  }

  *&v1[OBJC_IVAR___PDSRegistrarService_pdsUser] = v9;
  v10 = objc_allocWithZone(PDSRegistrar);
  v11 = sub_100059F90(0xD000000000000010, 0x8000000100088E30);

  v12 = *&v1[v4];
  *&v1[v4] = v11;

  v16.receiver = v1;
  v16.super_class = type metadata accessor for PDSRegistrarService(v13, v14);
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t PDSRegistrarService.registerToPDS(_:usePDS:)(char a1, char a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v53 - v13;
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v53 - v17;
  v20 = __chkstk_darwin(v16, v19);
  v22 = &v53 - v21;
  __chkstk_darwin(v20, v23);
  v25 = &v53 - v24;
  if (a2)
  {
    v26 = objc_allocWithZone(PDSRegistration);
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 initWithTopic:v27 pushEnvironment:a1];

    v29 = *(v2 + OBJC_IVAR___PDSRegistrarService_pdsUser);
    if (v29)
    {
      v30 = *(v2 + OBJC_IVAR___PDSRegistrarService_pdsRegistrar);
      if (v30)
      {
        v56 = 0;
        v31 = v29;
        v32 = v30;
        if ([v32 ensureRegistrationPresent:v28 forUser:v31 error:&v56])
        {
          v54 = v31;
          v33 = v56;
          static FamilyLogger.daemon.getter();
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v56 = v53;
            *v36 = 136315138;
            v55 = a1;
            v37 = dispatch thunk of CustomStringConvertible.description.getter();
            v39 = sub_1000373D4(v37, v38, &v56);

            *(v36 + 4) = v39;
            _os_log_impl(&_mh_execute_header, v34, v35, "PDS Registration was successful. environment is: %s", v36, 0xCu);
            sub_100024F7C(v53);
          }

          return (*(v6 + 8))(v25, v5);
        }

        else
        {
          v51 = v56;
          v52 = _convertNSErrorToError(_:)();

          swift_willThrow();
          static FamilyLogger.daemon.getter();
          swift_errorRetain();
          sub_100024D60(v52, 0xD000000000000022, 0x8000000100088D70);

          return (*(v6 + 8))(v10, v5);
        }
      }

      else
      {
        v47 = v29;
        static FamilyLogger.daemon.getter();
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, "PDSRegistrar is nil", v50, 2u);
        }

        return (*(v6 + 8))(v22, v5);
      }
    }

    else
    {
      static FamilyLogger.daemon.getter();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "PDSUser is nil", v46, 2u);
      }

      return (*(v6 + 8))(v18, v5);
    }
  }

  else
  {
    static FamilyLogger.daemon.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Did not register to PDS since server flag is not enabled", v43, 2u);
    }

    return (*(v6 + 8))(v14, v5);
  }
}

Swift::Void __swiftcall PDSRegistrarService.removeRegistrationFromPDS()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v35[-v9];
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v35[-v13];
  __chkstk_darwin(v12, v15);
  v17 = &v35[-v16];
  v18 = *(v0 + OBJC_IVAR___PDSRegistrarService_pdsUser);
  if (v18)
  {
    v19 = *(v0 + OBJC_IVAR___PDSRegistrarService_pdsRegistrar);
    if (v19)
    {
      v36 = 0;
      v20 = v18;
      v21 = v19;
      if ([v21 removeAllRegistrationsFromUser:v20 error:&v36])
      {
        v22 = v36;
        static FamilyLogger.daemon.getter();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "PDS deregistration was successful, removed all registration properly!", v25, 2u);
        }
      }

      else
      {
        v33 = v36;
        v34 = _convertNSErrorToError(_:)();

        swift_willThrow();
        static FamilyLogger.daemon.getter();
        swift_errorRetain();
        sub_100024D60(v34, 0xD000000000000020, 0x8000000100088DA0);

        v17 = v6;
      }
    }

    else
    {
      v29 = v18;
      static FamilyLogger.daemon.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "PDSRegistrar is nil", v32, 2u);
      }

      v17 = v14;
    }
  }

  else
  {
    static FamilyLogger.daemon.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "PDSUser is nil in removing registration after this change", v28, 2u);
    }

    v17 = v10;
  }

  (*(v2 + 8))(v17, v1);
}

id PDSRegistrarService.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PDSRegistrarService(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100059F90(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();

  v8 = 0;
  v4 = [v2 initWithClientID:v3 error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10005A0C8()
{
  if (qword_1000B7F40 != -1)
  {
    swift_once();
  }

  v1 = off_1000B9368;

  os_unfair_lock_lock(v1 + 6);
  if (*(v1 + 2))
  {
    v3 = *(v1 + 2);
  }

  else
  {
    v3 = type metadata accessor for CoreDataStack(0, v2);
    v4 = sub_1000634A4(0x6943796C696D6146, 0xEC000000656C6372, 0xD000000000000016, 0x80000001000881C0, 0);
    if (v0)
    {
      goto LABEL_7;
    }

    v3 = v4;

    *(v1 + 2) = v3;
  }

LABEL_7:
  os_unfair_lock_unlock(v1 + 6);

  return v3;
}

id FamilySettingsDaemonListener.__deallocating_deinit(uint64_t a1)
{
  v2 = dispatch thunk of XPCListener.cancel()();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FamilySettingsDaemonListener(v2, v3);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10005A400(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_10005A4AC(a1, a2);
}

uint64_t sub_10005A4AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  updated = type metadata accessor for FamilySettings.XPC.UpdateValueMessage();
  v3[8] = updated;
  v6 = *(updated - 8);
  v3[9] = v6;
  v3[10] = *(v6 + 64);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10005A5D4, 0, 0);
}

uint64_t sub_10005A5D4()
{
  v1 = *((*(v0[4] + OBJC_IVAR___FAFamilySettingsDaemonListener_coreDataStackFactory))() + 56);
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v18 = v0[7];
  v7 = v0[5];
  v8 = v0[3];
  v9 = v1;

  v10 = [v9 newBackgroundContext];
  v0[12] = v10;

  (*(v5 + 16))(v3, v8, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[13] = v12;
  (*(v5 + 32))(v12 + v11, v3, v4);
  *(v12 + ((v2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  (*(v6 + 104))(v18, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
  v10;
  v13 = swift_task_alloc();
  v0[14] = v13;
  updated = type metadata accessor for FamilySettings.XPC.UpdateValueResponse();
  *v13 = v0;
  v13[1] = sub_10005A890;
  v15 = v0[7];
  v16 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v16, v15, sub_10005DCF0, v12, updated);
}

uint64_t sub_10005A890()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_10005DF8C;
  }

  else
  {
    v5 = sub_10005DF90;
  }

  return _swift_task_switch(v5, 0, 0);
}

void *sub_10005AA24(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return &unk_10008DA48;
}

uint64_t sub_10005AA88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_10005AB34(a1, a2);
}

uint64_t sub_10005AB34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  ValueMessage = type metadata accessor for FamilySettings.XPC.ReadValueMessage();
  v3[8] = ValueMessage;
  v6 = *(ValueMessage - 8);
  v3[9] = v6;
  v3[10] = *(v6 + 64);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10005AC5C, 0, 0);
}

uint64_t sub_10005AC5C()
{
  v1 = *((*(v0[4] + OBJC_IVAR___FAFamilySettingsDaemonListener_coreDataStackFactory))() + 56);
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v18 = v0[7];
  v7 = v0[5];
  v8 = v0[3];
  v9 = v1;

  v10 = [v9 newBackgroundContext];
  v0[12] = v10;

  (*(v5 + 16))(v3, v8, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[13] = v12;
  (*(v5 + 32))(v12 + v11, v3, v4);
  *(v12 + ((v2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  (*(v6 + 104))(v18, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
  v10;
  v13 = swift_task_alloc();
  v0[14] = v13;
  ValueResponse = type metadata accessor for FamilySettings.XPC.ReadValueResponse();
  *v13 = v0;
  v13[1] = sub_10005AF18;
  v15 = v0[7];
  v16 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v16, v15, sub_10005DB5C, v12, ValueResponse);
}

uint64_t sub_10005AF18()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_10005B124;
  }

  else
  {
    v5 = sub_10005B0AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005B0AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005B124()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10005B19C(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return &unk_10008DA28;
}

uint64_t sub_10005B200(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026358;

  return sub_10005B2AC(a1, a2);
}

uint64_t sub_10005B2AC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for FamilySettings.XPC.ShareSettingsMessage();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v3[13] = *(v6 + 64);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10005B3D4, 0, 0);
}

uint64_t sub_10005B3D4()
{
  v1 = v0[7] + OBJC_IVAR___FAFamilySettingsDaemonListener_coreDataStackFactory;
  v2 = *v1;
  v0[15] = *v1;
  v0[16] = *(v1 + 8);
  v3 = *(v2() + 56);
  if (!v3)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v19 = v0[10];
  v9 = v0[8];
  v10 = v0[6];
  v11 = v3;

  v12 = [v11 newBackgroundContext];
  v0[17] = v12;

  (*(v7 + 16))(v5, v10, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v0[18] = v14;
  (*(v7 + 32))(v14 + v13, v5, v6);
  *(v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  (*(v8 + 104))(v19, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v9);
  v12;
  v15 = swift_task_alloc();
  v0[19] = v15;
  v16 = sub_100022F18(&qword_1000B91C8, &unk_10008D930);
  *v15 = v0;
  v15[1] = sub_10005B6A8;
  v17 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v17, sub_10005D4EC, v14, v16);
}

uint64_t sub_10005B6A8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {
    v3 = sub_10005BD64;
  }

  else
  {
    v3 = sub_10005B82C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005B82C()
{
  v1 = *(v0 + 16);
  *(v0 + 168) = v1;
  if (!v1)
  {
    v4 = *(v0 + 136);
    v5 = FamilySettings.XPC.ShareSettingsMessage.key.getter();
    v7 = v6;
    v8 = FamilySettings.XPC.ShareSettingsMessage.altDSID.getter();
    v10 = v9;
    sub_10005D584();
    swift_allocError();
    *v11 = v5;
    v11[1] = v7;
    v11[2] = v8;
    v11[3] = v10;
    swift_willThrow();

    goto LABEL_6;
  }

  v2 = *(v0 + 160);
  *(v0 + 176) = (*(v0 + 120))();
  if (v2)
  {
    v3 = *(v0 + 136);

LABEL_6:

    v12 = *(v0 + 8);

    return v12();
  }

  *(v0 + 184) = (*(*(v0 + 56) + OBJC_IVAR___FAFamilySettingsDaemonListener_manateeCoreDataStackFactory))();
  sub_100022F18(&qword_1000B8598, &qword_10008C968);
  swift_retain_n();

  *(v0 + 192) = FamilyCoreDataSharingService.__allocating_init(container:privateStore:sharedStore:manateeContainer:)();
  FamilySettings.XPC.ShareSettingsMessage.recordZone.getter();
  dispatch thunk of FamilyCoreDataSharingService.share(forRecordZoneID:)();

  v14 = *(v0 + 24);
  *(v0 + 200) = v14;
  if (!v14)
  {
    v16 = *(v0 + 136);
    v17 = FamilySettings.XPC.ShareSettingsMessage.recordZone.getter();
    v19 = v18;
    sub_10005D5D8();
    swift_allocError();
    *v20 = v17;
    v20[1] = v19;
    swift_willThrow();

    goto LABEL_6;
  }

  *(v0 + 32) = v14;
  v21 = (&async function pointer to dispatch thunk of FamilyCoreDataSharingService.share(record:to:) + async function pointer to dispatch thunk of FamilyCoreDataSharingService.share(record:to:));
  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  *v15 = v0;
  v15[1] = sub_10005BB88;

  return v21(v1, v0 + 32);
}

uint64_t sub_10005BB88()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10005BDDC;
  }

  else
  {
    v2 = sub_10005BC9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005BC9C()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[17];
  FamilySettings.XPC.ShareSettingsResponse.init()();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10005BD64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005BDDC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

void *sub_10005BE90(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return &unk_10008D920;
}

void sub_10005BEF4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v83 = v5;
  v84 = v6;
  __chkstk_darwin(v5, v7);
  v88 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for FamilySettings.Value();
  v90 = *(v87 - 8);
  __chkstk_darwin(v87, v9);
  v89 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100022F18(&qword_1000B9248, &qword_10008DA58);
  v13 = __chkstk_darwin(v11 - 8, v12);
  v85 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13, v15);
  v86 = v78 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v21 = v78 - v20;
  v23 = __chkstk_darwin(v19, v22);
  v25 = v78 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = v78 - v28;
  __chkstk_darwin(v27, v30);
  v32 = v78 - v31;
  updated = FamilySettings.XPC.UpdateValueMessage.key.getter();
  v35 = v34;
  v91 = a1;
  v36 = FamilySettings.XPC.UpdateValueMessage.altDSID.getter();
  v37 = a2;
  v38 = v92;
  v40 = sub_10005D62C(updated, v35, v36, v39);
  if (v38)
  {
  }

  else
  {
    v41 = v40;
    v79 = v29;
    v80 = v32;
    v81 = v25;
    v78[1] = 0;
    v92 = v37;

    if (v41)
    {
      v42 = v41;
    }

    else
    {
      type metadata accessor for FamilySettingsValueEntity();
      v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v42 = [v43 initWithContext:v92];
    }

    v44 = v87;
    v45 = v79;
    FamilySettings.XPC.UpdateValueMessage.altDSID.getter();
    v46 = String._bridgeToObjectiveC()();

    [v42 setAltDSID:v46];

    FamilySettings.XPC.UpdateValueMessage.key.getter();
    v47 = String._bridgeToObjectiveC()();

    [v42 setKey:v47];

    v48 = v80;
    FamilySettings.XPC.UpdateValueMessage.value.getter();
    sub_100024C08(v48, v45, &qword_1000B9248, &qword_10008DA58);
    v49 = v90;
    v50 = *(v90 + 48);
    if (v50(v45, 1, v44) == 1)
    {
      sub_10005DDE0(v48);
      v51 = 0;
    }

    else
    {
      v87 = v50;
      v52 = v89;
      (*(v49 + 32))(v89, v45, v44);
      v53 = FamilySettings.Value.BOOLValue.getter();
      (*(v49 + 8))(v52, v44);
      sub_10005DDE0(v48);
      if (v53 == 2)
      {
        v51 = 0;
      }

      else
      {
        v51 = [objc_allocWithZone(NSNumber) initWithBool:v53 & 1];
      }

      v50 = v87;
    }

    [v42 setBoolValue:v51];

    v54 = v81;
    FamilySettings.XPC.UpdateValueMessage.value.getter();
    sub_100024C08(v54, v21, &qword_1000B9248, &qword_10008DA58);
    if (v50(v21, 1, v44) == 1)
    {
      sub_10005DDE0(v54);
      v55 = 0;
      v56 = v83;
    }

    else
    {
      v57 = v50;
      v58 = v89;
      v59 = v90;
      (*(v90 + 32))(v89, v21, v44);
      v60 = FamilySettings.Value.intValue.getter();
      v62 = v61;
      (*(v59 + 8))(v58, v44);
      sub_10005DDE0(v54);
      if (v62)
      {
        v55 = 0;
      }

      else
      {
        v55 = [objc_allocWithZone(NSNumber) initWithInteger:v60];
      }

      v56 = v83;
      v50 = v57;
    }

    [v42 setIntValue:v55];

    v63 = v86;
    FamilySettings.XPC.UpdateValueMessage.value.getter();
    v64 = v85;
    sub_100024C08(v63, v85, &qword_1000B9248, &qword_10008DA58);
    v65 = v50(v64, 1, v44);
    v66 = v89;
    if (v65 == 1)
    {
      sub_10005DDE0(v63);
      v67 = 0;
      v68 = v88;
    }

    else
    {
      v69 = v56;
      v70 = v90;
      (*(v90 + 32))(v89, v64, v44);
      v71 = v63;
      v72 = FamilySettings.Value.doubleValue.getter();
      v74 = v73;
      (*(v70 + 8))(v66, v44);
      sub_10005DDE0(v71);
      v68 = v88;
      if (v74)
      {
        v67 = 0;
      }

      else
      {
        v67 = [objc_allocWithZone(NSNumber) initWithDouble:*&v72];
      }

      v56 = v69;
    }

    [v42 setDoubleValue:v67];

    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v84 + 8))(v68, v56);
    [v42 setUpdatedAt:isa];

    v93 = 0;
    if ([v92 save:&v93])
    {
      v76 = v93;
      FamilySettings.XPC.UpdateValueResponse.init()();
    }

    else
    {
      v77 = v93;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_10005C644(uint64_t a1, uint64_t a2)
{
  v3 = sub_100022F18(&qword_1000B9240, &qword_10008DA38);
  __chkstk_darwin(v3 - 8, v4);
  Value = FamilySettings.XPC.ReadValueMessage.key.getter();
  v7 = v6;
  v8 = FamilySettings.XPC.ReadValueMessage.altDSID.getter();
  v10 = sub_10005D62C(Value, v7, v8, v9);
  if (v2)
  {
  }

  else
  {
    v11 = v10;

    v12 = v11;
    FamilySettings.ValueWithMetadata.init(from:)();
    FamilySettings.XPC.ReadValueResponse.init(valueWithMetadata:)();
  }
}

uint64_t sub_10005C760@<X0>(uint64_t *a2@<X8>)
{
  v4 = FamilySettings.XPC.ShareSettingsMessage.key.getter();
  v6 = v5;
  v7 = FamilySettings.XPC.ShareSettingsMessage.altDSID.getter();
  v9 = sub_10005D62C(v4, v6, v7, v8);
  if (v2)
  {
  }

  else
  {
    v11 = v9;

    *a2 = v11;
  }

  return result;
}

uint64_t sub_10005C818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v55 = a4;
  v56 = a5;
  v49 = a2;
  v50 = a3;
  v57 = a6;
  v52 = sub_100022F18(&qword_1000B8C70, &qword_10008D990);
  v60 = *(v52 - 8);
  __chkstk_darwin(v52, v7);
  v9 = v43 - v8;
  v10 = sub_100022F18(&qword_1000B91E8, &qword_10008D998);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v43 - v13;
  v15 = sub_100022F18(&qword_1000B91F0, &qword_10008D9A0);
  v16 = *(v15 - 8);
  v58 = v15;
  v59 = v16;
  __chkstk_darwin(v15, v17);
  v19 = v43 - v18;
  v20 = sub_100022F18(&qword_1000B91F8, &unk_10008D9A8);
  v21 = *(v20 - 8);
  v53 = v20;
  v54 = v21;
  v23 = __chkstk_darwin(v20, v22);
  v51 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v47 = *a1;
  v48 = v43 - v26;
  sub_100031B9C(&qword_1000B9200, &qword_1000B91E8, &qword_10008D998, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v44 = v10;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v27 = *(v11 + 8);
  v45 = v11 + 8;
  v46 = v27;
  v27(v14, v10);
  v61 = v49;
  v62 = v50;
  v50 = sub_100022F18(&qword_1000B8630, &qword_10008C9F0);
  v28 = v9;
  static PredicateExpressions.build_Arg<A>(_:)();
  v49 = sub_100031B9C(&qword_1000B9208, &qword_1000B91F0, &qword_10008D9A0, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v43[1] = sub_100031B9C(&qword_1000B8CA0, &qword_1000B8C70, &qword_10008D990, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_10003A1E0(&qword_1000B8CA8, &protocol witness table for String, &protocol conformance descriptor for <A> A?);
  v29 = v58;
  v30 = v52;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v31 = *(v60 + 8);
  v60 += 8;
  v31(v28, v30);
  v32 = *(v59 + 8);
  v59 += 8;
  v32(v19, v29);
  v33 = v44;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v46(v14, v33);
  v61 = v55;
  v62 = v56;
  static PredicateExpressions.build_Arg<A>(_:)();
  v34 = v51;
  v35 = v28;
  v36 = v58;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v31(v35, v30);
  v32(v19, v36);
  v37 = sub_100022F18(&qword_1000B9210, &qword_10008DA18);
  v38 = v57;
  v57[3] = v37;
  v38[4] = sub_10005D8EC();
  sub_10003A24C(v38);
  sub_100031B9C(&qword_1000B9238, &qword_1000B91F8, &unk_10008D9A8, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v39 = v48;
  v40 = v53;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v41 = *(v54 + 8);
  v41(v34, v40);
  return (v41)(v39, v40);
}

uint64_t sub_10005CDFC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 updatedAt];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10005CEA0(uint64_t a1, void **a2)
{
  v4 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100024C08(a1, &v12 - v6, &qword_1000B89A8, &qword_10008CE90);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setUpdatedAt:isa];
}

char *sub_10005CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v6 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v6 - 8, v7);
  v8 = type metadata accessor for XPCPeerRequirement();
  v10 = __chkstk_darwin(v8 - 8, v9);
  v12 = type metadata accessor for FamilySettingsDaemonListener(v10, v11);
  v13 = objc_allocWithZone(v12);
  sub_100022F18(&qword_1000B85A8, &qword_10008D910);
  v14 = MessageDispatcher<>.init()();
  type metadata accessor for XPCListener();
  swift_retain_n();
  static XPCPeerRequirement.hasEntitlement(_:)();

  static XPCListener.InitializationOptions.none.getter();
  v15 = XPCListener.__allocating_init(service:targetQueue:options:requirement:incomingSessionHandler:)();
  if (v4)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v15;

    *&v13[OBJC_IVAR___FAFamilySettingsDaemonListener_listener] = v16;
    *&v13[OBJC_IVAR___FAFamilySettingsDaemonListener_dispatcher] = v14;
    v17 = &v13[OBJC_IVAR___FAFamilySettingsDaemonListener_coreDataStackFactory];
    *v17 = a1;
    *(v17 + 1) = a2;
    v18 = &v13[OBJC_IVAR___FAFamilySettingsDaemonListener_manateeCoreDataStackFactory];
    v19 = v25;
    *v18 = a3;
    *(v18 + 1) = v19;
    v24.receiver = v13;
    v24.super_class = v12;

    v20 = objc_msgSendSuper2(&v24, "init", a2, v16);
    type metadata accessor for FamilySettings.XPC.UpdateValueMessage();
    sub_10005D3F4(&qword_1000B91B0, &type metadata accessor for FamilySettings.XPC.UpdateValueMessage, &protocol conformance descriptor for FamilySettings.XPC.UpdateValueMessage);
    v13 = v20;
    dispatch thunk of MessageDispatcher.registerHandler<A, B>(_:in:)();
    type metadata accessor for FamilySettings.XPC.ReadValueMessage();
    sub_10005D3F4(&qword_1000B91B8, &type metadata accessor for FamilySettings.XPC.ReadValueMessage, &protocol conformance descriptor for FamilySettings.XPC.ReadValueMessage);
    dispatch thunk of MessageDispatcher.registerHandler<A, B>(_:in:)();
    type metadata accessor for FamilySettings.XPC.ShareSettingsMessage();
    sub_10005D3F4(&qword_1000B91C0, &type metadata accessor for FamilySettings.XPC.ShareSettingsMessage, &protocol conformance descriptor for FamilySettings.XPC.ShareSettingsMessage);
    dispatch thunk of MessageDispatcher.registerHandler<A, B>(_:in:)();
  }

  return v13;
}

uint64_t sub_10005D3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005D43C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026358;

  return sub_10005B200(a1, a2);
}

unint64_t sub_10005D584()
{
  result = qword_1000B91D0;
  if (!qword_1000B91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B91D0);
  }

  return result;
}

unint64_t sub_10005D5D8()
{
  result = qword_1000B91D8;
  if (!qword_1000B91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B91D8);
  }

  return result;
}

unint64_t sub_10005D62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_100022F18(&qword_1000B91E0, qword_10008D940);
  __chkstk_darwin(v4 - 8, v5);
  type metadata accessor for FamilySettingsValueEntity();
  v6 = static FamilySettingsValueEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  Predicate.init(_:)();
  v7 = NSPredicate.init<A>(_:)();
  [v6 setPredicate:v7];

  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10008D220;
  sub_100002B10(0, &qword_1000B8C68, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v8 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setSortDescriptors:isa];

  [v6 setFetchLimit:1];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v14)
  {

    return v8;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v12 = result;
  v13 = _CocoaArrayWrapper.endIndex.getter();
  result = v12;
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 32);
LABEL_8:
    v8 = v11;

    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_10005D8EC()
{
  result = qword_1000B9218;
  if (!qword_1000B9218)
  {
    sub_100022F60(&qword_1000B9210, &qword_10008DA18);
    sub_10005D970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9218);
  }

  return result;
}

unint64_t sub_10005D970()
{
  result = qword_1000B9220;
  if (!qword_1000B9220)
  {
    sub_100022F60(&qword_1000B91F8, &unk_10008D9A8);
    sub_10005D9FC();
    sub_10003A10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9220);
  }

  return result;
}

unint64_t sub_10005D9FC()
{
  result = qword_1000B9228;
  if (!qword_1000B9228)
  {
    sub_100022F60(&qword_1000B91F0, &qword_10008D9A0);
    sub_100031B9C(&qword_1000B9230, &qword_1000B91E8, &qword_10008D998, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9228);
  }

  return result;
}

uint64_t sub_10005DAAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_10005AA88(a1, a2);
}

uint64_t sub_10005DB9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_10005A400(a1, a2);
}

uint64_t sub_10005DC4C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_10005DD30(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, void))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  return a2(v2 + v5, *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10005DDE0(uint64_t a1)
{
  v2 = sub_100022F18(&qword_1000B9248, &qword_10008DA58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10005DE48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10005DE54(uint64_t a1, int a2)
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

uint64_t sub_10005DE9C(uint64_t result, int a2, int a3)
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

__n128 sub_10005DEE8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005DEF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10005DF3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *FAFamilyChecklistRankingConfigCache.shared.unsafeMutableAddressor()
{
  if (qword_1000B7F30 != -1)
  {
    swift_once();
  }

  return &static FAFamilyChecklistRankingConfigCache.shared;
}

uint64_t sub_10005DFE4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FAFamilyChecklistRankingConfigCache(a1, a2);
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static FAFamilyChecklistRankingConfigCache.shared = v2;
  return result;
}

uint64_t static FAFamilyChecklistRankingConfigCache.shared.getter()
{
  if (qword_1000B7F30 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10005E07C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  v11 = 0;
  v6 = [v5 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v11];

  v7 = v11;
  if (v6)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    URL.appendingPathComponent(_:)();
    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    v10 = v11;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t FAFamilyChecklistRankingConfigCache.load()()
{
  v1[6] = v0;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10005E364, v0, 0);
}

uint64_t sub_10005E364(uint64_t a1, uint64_t a2)
{
  v14 = v2;
  v3 = [objc_opt_self() defaultManager];
  sub_10005E07C();
  v4 = v2[13];
  v5 = v2[10];
  v6 = v2[11];
  URL.path.getter();
  v7 = *(v6 + 8);
  v7(v4, v5);
  v8 = String._bridgeToObjectiveC()();

  LOBYTE(v5) = [v3 fileExistsAtPath:v8];

  if (v5)
  {
    sub_10005E07C();
    v9 = Data.init(contentsOf:options:)();
    v11 = v10;
    v7(v2[12], v2[10]);
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = v2[1];

  return v12(v9, v11);
}

unint64_t sub_10005E6D4()
{
  result = qword_1000B9250;
  if (!qword_1000B9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9250);
  }

  return result;
}

uint64_t FAFamilyChecklistRankingConfigCache.save(with:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for Logger();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10005E848, v2, 0);
}

uint64_t sub_10005E848()
{
  sub_10005E07C();
  Data.write(to:options:)();
  (*(*(v0 + 104) + 8))();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t FAFamilyChecklistRankingConfigCache.invalidate()()
{
  v1[3] = v0;
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10005EBA8, v0, 0);
}

uint64_t sub_10005EBA8(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultManager];
  sub_10005E07C();
  v5 = v2[5];
  v4 = v2[6];
  v6 = v2[4];
  URL.path.getter();
  (*(v5 + 8))(v4, v6);
  v7 = String._bridgeToObjectiveC()();

  v2[2] = 0;
  v8 = [v3 removeItemAtPath:v7 error:v2 + 2];

  v9 = v2[2];
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v12 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = v2[1];

  return v11();
}

uint64_t FAFamilyChecklistRankingConfigCache.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10005EDBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100053474;

  return FAFamilyChecklistRankingConfigCache.load()();
}

uint64_t sub_10005EE4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return FAFamilyChecklistRankingConfigCache.save(with:)(a1, a2);
}

uint64_t sub_10005EEF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100026358;

  return FAFamilyChecklistRankingConfigCache.invalidate()();
}

unint64_t sub_10005EFBC()
{
  result = qword_1000B9320;
  if (!qword_1000B9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9320);
  }

  return result;
}

void sub_10005F010(uint64_t a1, void *a2)
{
  v61 = a1;
  v60 = sub_100022F18(&qword_1000B9350, &qword_10008DD70);
  v3 = *(v60 - 8);
  __chkstk_darwin(v60, v4);
  v59 = &v58 - v5;
  sub_100022F18(&qword_1000B9358, &qword_10008DD78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008DD00;
  v7 = [a2 agePresetKeySTCustomRestrictionWebFilterState];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 32) = v8;
  *(inited + 40) = v10;
  [a2 webFilterAutoFilter];
  *(inited + 48) = UInt._bridgeToObjectiveC()();
  v11 = [a2 agePresetKeyAllowExplicitContent];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(inited + 56) = v12;
  *(inited + 64) = v14;
  sub_100060238(0, v15);
  *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(0);
  v16 = [a2 agePresetKeyPresetOnlyImageGeneration];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(inited + 80) = v17;
  *(inited + 88) = v19;
  *(inited + 96) = NSNumber.init(BOOLeanLiteral:)(0);
  v20 = [a2 agePresetKeyAllowBookstoreErotica];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(inited + 104) = v21;
  *(inited + 112) = v23;
  *(inited + 120) = NSNumber.init(BOOLeanLiteral:)(0);
  v24 = [a2 agePresetKeyAllowExternalIntelligenceIntegrations];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(inited + 128) = v25;
  *(inited + 136) = v27;
  *(inited + 144) = NSNumber.init(BOOLeanLiteral:)(0);
  v28 = [a2 agePresetKeyAllowWritingTools];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(inited + 152) = v29;
  *(inited + 160) = v31;
  *(inited + 168) = NSNumber.init(BOOLeanLiteral:)(0);
  v32 = [a2 agePresetKeyForceAssistantProfanityFilter];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  *(inited + 176) = v33;
  *(inited + 184) = v35;
  *(inited + 192) = NSNumber.init(BOOLeanLiteral:)(1);
  v36 = [a2 agePresetKeyAllowAppRemoval];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  *(inited + 200) = v37;
  *(inited + 208) = v39;
  *(inited + 216) = NSNumber.init(BOOLeanLiteral:)(0);
  v40 = [a2 agePresetKeyRatingApps];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  *(inited + 224) = v41;
  *(inited + 232) = v43;
  *(inited + 240) = NSNumber.init(integerLiteral:)(100);
  v44 = [a2 agePresetKeyRatingMovies];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  *(inited + 248) = v45;
  *(inited + 256) = v47;
  *(inited + 264) = NSNumber.init(integerLiteral:)(100);
  v48 = [a2 agePresetKeyRatingTVShows];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  *(inited + 272) = v49;
  *(inited + 280) = v51;
  *(inited + 288) = NSNumber.init(integerLiteral:)(100);
  sub_1000242C0(inited);
  swift_setDeallocating();
  sub_100022F18(&qword_1000B9360, &unk_10008DD80);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v54 = v59;
  v53 = v60;
  (*(v3 + 16))(v59, v61, v60);
  v55 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v56 = swift_allocObject();
  (*(v3 + 32))(v56 + v55, v54, v53);
  v62[4] = sub_100060284;
  v62[5] = v56;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 1107296256;
  v62[2] = sub_10005F7E8;
  v62[3] = &unk_1000A8F90;
  v57 = _Block_copy(v62);

  [a2 saveExpressIntroductionSettingsDefaultsWithIsContentRestrictionsEnabled:1 contentRestrictionsByKey:isa isCommunicationSafetyEnabled:1 isScreenDistanceEnabled:1 isStrictPolicy:1 completionHandler:v57];
  _Block_release(v57);
}

uint64_t sub_10005F52C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v20 - v9;
  if (a1)
  {
    swift_errorRetain();
    static FamilyLogger.ageAttestation.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to apply proto account restrictions. ScreenTime error - %@", v13, 0xCu);
      sub_100060300(v14);
    }

    (*(v3 + 8))(v7, v2);
    v20 = a1;
    sub_100022F18(&qword_1000B9350, &qword_10008DD70);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    static FamilyLogger.ageAttestation.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Applied proto account restrictions through ScreenTime.", v19, 2u);
    }

    (*(v3 + 8))(v10, v2);
    v21 = 1;
    sub_100022F18(&qword_1000B9350, &qword_10008DD70);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10005F7E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10005F9DC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10005FAB0;

  return sub_10005FDE4(v6);
}

uint64_t sub_10005FAB0(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v12 = *(v9 + 8);

  return v12();
}

id sub_10005FCA0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SettingProtoAccountRestrictionsOperation(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10005FCF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100026358;

  return sub_10005F9DC(v2, v3, v4);
}

uint64_t sub_10005FDAC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10005FDE4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10005FEA4, 0, 0);
}

uint64_t sub_10005FEA4(uint64_t a1)
{
  static FamilyLogger.ageAttestation.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Applying proto account restrictions through ScreenTime settings.", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v9 = swift_task_alloc();
  v1[6] = v9;
  *(v9 + 16) = v8;
  v10 = swift_task_alloc();
  v1[7] = v10;
  *v10 = v1;
  v10[1] = sub_100060038;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 9, 0, 0, 0xD00000000000002ELL, 0x8000000100089030, sub_100060230, v9, &type metadata for Bool);
}

uint64_t sub_100060038()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1000601C0;
  }

  else
  {

    v2 = sub_100060154;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100060154()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000601C0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

unint64_t sub_100060238(uint64_t a1, uint64_t a2)
{
  result = qword_1000B8E30;
  if (!qword_1000B8E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8E30);
  }

  return result;
}

uint64_t sub_100060284(uint64_t a1)
{
  sub_100022F18(&qword_1000B9350, &qword_10008DD70);

  return sub_10005F52C(a1);
}

uint64_t sub_100060300(uint64_t a1)
{
  v2 = sub_100022F18(&qword_1000B8590, &qword_10008C960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000603C4(uint64_t a1, void *a2, char a3)
{
  v6 = *(v3 + 56);
  if (v6)
  {
    v8 = [v6 persistentStoreCoordinator];
    v9 = [v8 persistentStores];

    sub_100002B10(0, &qword_1000B9498, NSPersistentStore_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v5 = v13;
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v20 = v13;
        v15 = sub_1000605D4(&v20, v3, a1, a2);
        if (v4)
        {

          return v5;
        }

        if (v15)
        {

          return v5;
        }

        ++v12;
        if (v14 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:

    sub_100063700();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = a3;
    swift_willThrow();
    return v5;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000605D4(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v73._countAndFlagsBits = a3;
  v73._object = a4;
  v74 = sub_100022F18(&qword_1000B94A0, &qword_10008DDD8);
  __chkstk_darwin(v74, v6);
  v75 = &v66 - v7;
  v8 = sub_100022F18(&qword_1000B8290, &unk_10008C690);
  v10 = __chkstk_darwin(v8 - 8, v9);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v76 = &v66 - v14;
  __chkstk_darwin(v13, v15);
  v77 = &v66 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v20, v23);
  v26 = &v66 - v25;
  v28 = __chkstk_darwin(v24, v27);
  v30 = &v66 - v29;
  __chkstk_darwin(v28, v31);
  v79 = &v66 - v32;
  v72 = *a1;
  v33 = *(a2 + 24);
  v78._countAndFlagsBits = *(a2 + 16);
  v78._object = v33;

  v34._countAndFlagsBits = 0x6573616261746144;
  v34._object = 0xE800000000000000;
  String.append(_:)(v34);
  object = v78._object;
  countAndFlagsBits = v78._countAndFlagsBits;
  v78 = String.lowercased()();
  v36._countAndFlagsBits = 46;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x6574696C7173;
  v37._object = 0xE600000000000000;
  String.append(_:)(v37);
  v71 = v78._countAndFlagsBits;
  v38 = [objc_opt_self() defaultManager];
  v39 = [v38 URLsForDirectory:5 inDomains:1];

  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v40 + 16))
  {
    v41 = v40 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v67 = *(v18 + 16);
    v68 = v18 + 16;
    v67(v30, v41, v17);

    v42 = 1;
    URL.appendingPathComponent(_:isDirectory:)();
    v78._countAndFlagsBits = countAndFlagsBits;
    v78._object = object;
    v43._countAndFlagsBits = 46;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    String.append(_:)(v73);
    URL.appendingPathComponent(_:isDirectory:)();

    v73._object = v18;
    v44 = *(v18 + 8);
    v44(v22, v17);
    URL.appendingPathComponent(_:isDirectory:)();

    v44(v26, v17);
    v73._countAndFlagsBits = v44;
    v44(v30, v17);
    v45 = [v72 URL];
    v66 = v26;
    if (v45)
    {
      v46 = v77;
      v47 = v45;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v42 = 0;
      v48 = v75;
    }

    else
    {
      v48 = v75;
      v46 = v77;
    }

    v50 = v73._object;
    v51 = *(v73._object + 7);
    v51(v46, v42, 1, v17);
    v52 = v76;
    v53 = v79;
    v67(v76, v79, v17);
    v51(v52, 0, 1, v17);
    v54 = v52;
    v55 = *(v74 + 48);
    sub_100063754(v46, v48);
    sub_100063754(v52, v48 + v55);
    v56 = v50;
    v57 = v46;
    v58 = v56[6];
    if (v58(v48, 1, v17) == 1)
    {
      sub_10002624C(v54, &qword_1000B8290, &unk_10008C690);
      sub_10002624C(v57, &qword_1000B8290, &unk_10008C690);
      (v73._countAndFlagsBits)(v53, v17);
      if (v58(v48 + v55, 1, v17) == 1)
      {
        sub_10002624C(v48, &qword_1000B8290, &unk_10008C690);
        LOBYTE(v40) = 1;
        return v40 & 1;
      }
    }

    else
    {
      v59 = v69;
      sub_100063754(v48, v69);
      if (v58(v48 + v55, 1, v17) != 1)
      {
        v62 = v66;
        (*(v73._object + 4))(v66, v48 + v55, v17);
        sub_1000637C4(&qword_1000B94A8, &protocol conformance descriptor for URL);
        LOBYTE(v40) = dispatch thunk of static Equatable.== infix(_:_:)();
        v63 = v62;
        v64 = v73._countAndFlagsBits;
        (v73._countAndFlagsBits)(v63, v17);
        sub_10002624C(v76, &qword_1000B8290, &unk_10008C690);
        sub_10002624C(v77, &qword_1000B8290, &unk_10008C690);
        v64(v79, v17);
        v64(v59, v17);
        sub_10002624C(v48, &qword_1000B8290, &unk_10008C690);
        return v40 & 1;
      }

      v60 = v59;
      sub_10002624C(v76, &qword_1000B8290, &unk_10008C690);
      sub_10002624C(v77, &qword_1000B8290, &unk_10008C690);
      v61 = v73._countAndFlagsBits;
      (v73._countAndFlagsBits)(v79, v17);
      v61(v60, v17);
    }

    sub_10002624C(v48, &qword_1000B94A0, &qword_10008DDD8);
    LOBYTE(v40) = 0;
    return v40 & 1;
  }

  sub_100063700();
  swift_allocError();
  *v49 = 0;
  *(v49 + 8) = 1;
  swift_willThrow();
  return v40 & 1;
}

uint64_t sub_100060D70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v78 = a2;
  v80 = a4;
  v81 = a5;
  v83 = a6;
  v8 = type metadata accessor for Logger();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8, v9);
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v73 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v82 = &v70 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v22 = &v70 - v21;
  v24 = __chkstk_darwin(v20, v23);
  v26 = &v70 - v25;
  __chkstk_darwin(v24, v27);
  v29 = &v70 - v28;
  v79 = objc_opt_self();
  v30 = [v79 defaultManager];
  v31 = [v30 URLsForDirectory:5 inDomains:1];

  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v32 + 16))
  {

    sub_100063700();
    swift_allocError();
    *v39 = 0;
    *(v39 + 8) = 1;
    return swift_willThrow();
  }

  v77 = v12;
  v34 = *(v12 + 16);
  v33 = v12 + 16;
  v35 = v32 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
  v71 = v34;
  v34(v29, v35, v11);

  URL.appendingPathComponent(_:isDirectory:)();
  v84[0] = v78;
  v84[1] = a3;

  v36._countAndFlagsBits = 46;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  v72 = v33;
  switch(a1)
  {
    case 1:
      v37 = 0xE600000000000000;
      v38 = 0x63696C627570;
      break;
    case 3:
      v37 = 0xE600000000000000;
      v38 = 0x646572616873;
      break;
    case 2:
      v37 = 0xE700000000000000;
      v38 = 0x65746176697270;
      break;
    default:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
  }

  v41 = v37;
  String.append(_:)(*&v38);

  URL.appendingPathComponent(_:isDirectory:)();

  v42 = *(v77 + 8);
  v42(v22, v11);
  URL.appendingPathComponent(_:isDirectory:)();
  v42(v26, v11);
  v42(v29, v11);
  v43 = v82;
  URL.deletingLastPathComponent()();
  v44 = v79;
  v45 = [v79 defaultManager];
  URL.path.getter();
  v46 = String._bridgeToObjectiveC()();

  v47 = [v45 fileExistsAtPath:v46];

  if (v47)
  {
    return (v42)(v43, v11);
  }

  v81 = v42;
  v48 = [v44 defaultManager];
  URL.path.getter();
  v49 = String._bridgeToObjectiveC()();

  v84[0] = 0;
  v50 = [v48 createDirectoryAtPath:v49 withIntermediateDirectories:1 attributes:0 error:v84];

  if (v50)
  {
    v51 = v84[0];
    v52 = v76;
    static FamilyLogger.daemon.getter();
    v53 = v73;
    v71(v73, v43, v11);
    v54 = Logger.logObject.getter();
    v55 = v43;
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v84[0] = v58;
      *v57 = 136315138;
      sub_1000637C4(&qword_1000B9490, &protocol conformance descriptor for URL);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v62 = v53;
      v63 = v81;
      v81(v62, v11);
      v64 = sub_1000373D4(v59, v61, v84);

      *(v57 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v54, v56, "Successfully created database directory %s", v57, 0xCu);
      sub_100024F7C(v58);

      (*(v74 + 8))(v76, v75);
      return (v63)(v82, v11);
    }

    else
    {

      v69 = v81;
      v81(v53, v11);
      (*(v74 + 8))(v52, v75);
      return (v69)(v55, v11);
    }
  }

  else
  {
    v65 = v84[0];
    v66 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100063700();
    swift_allocError();
    *v67 = v66;
    *(v67 + 8) = 2;
    swift_willThrow();
    v68 = v81;
    v81(v43, v11);
    return (v68)(v83, v11);
  }
}

id sub_100061528()
{
  v0 = type metadata accessor for Logger();
  v76 = *(v0 - 8);
  v77 = v0;
  v2 = __chkstk_darwin(v0, v1);
  v75 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2, v4);
  v6 = &v68 - v5;
  v7 = sub_100022F18(&qword_1000B8290, &unk_10008C690);
  v9 = __chkstk_darwin(v7 - 8, v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v68 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v18 = __chkstk_darwin(v15, v17);
  v73 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18, v20);
  v72 = &v68 - v22;
  __chkstk_darwin(v21, v23);
  v78 = &v68 - v24;
  sub_100002B10(0, &qword_1000B9488, NSBundle_ptr);
  v25 = static NSBundle.familyCircle.getter();
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 URLForResource:v26 withExtension:v27];

  if (v28)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v16 + 56))(v11, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v11, 1, 1, v15);
  }

  sub_1000261DC(v11, v14);
  v29 = (*(v16 + 48))(v14, 1, v15);
  v30 = v78;
  v31 = v72;
  if (v29 == 1)
  {
    sub_10002624C(v14, &qword_1000B8290, &unk_10008C690);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v78, v14, v15);
    static FamilyLogger.daemon.getter();
    v32 = *(v16 + 16);
    v32(v31, v30, v15);
    v71 = v6;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v33, v34);
    v74 = v16;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v70 = v32;
      v37 = v36;
      v38 = swift_slowAlloc();
      v79 = v38;
      *v37 = 136315138;
      sub_1000637C4(&qword_1000B9490, &protocol conformance descriptor for URL);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v31;
      v41 = v39;
      v43 = v42;
      v72 = *(v16 + 8);
      (v72)(v40, v15);
      v44 = sub_1000373D4(v41, v43, &v79);

      *(v37 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v33, v34, "The modelURL is : %s", v37, 0xCu);
      sub_100024F7C(v38);
      v30 = v78;

      v32 = v70;
    }

    else
    {

      v72 = *(v16 + 8);
      (v72)(v31, v15);
    }

    v45 = *(v76 + 8);
    v45(v71, v77);
    v46 = v15;
    v47 = v73;
    v48 = objc_allocWithZone(NSManagedObjectModel);
    URL._bridgeToObjectiveC()(v49);
    v51 = v50;
    v52 = [v48 initWithContentsOfURL:v50];

    v53 = v75;
    if (v52)
    {
      v73 = v45;
      static FamilyLogger.daemon.getter();
      v32(v47, v30, v46);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v79 = v57;
        *v56 = 136315138;
        v58 = URL.absoluteString.getter();
        v69 = v46;
        v59 = v47;
        v61 = v60;
        v62 = v46;
        v63 = v72;
        (v72)(v59, v62);
        v64 = sub_1000373D4(v58, v61, &v79);

        *(v56 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v54, v55, "Successfully loaded Core Data model at path %s", v56, 0xCu);
        sub_100024F7C(v57);

        (v73)(v75, v77);
        v63(v78, v69);
      }

      else
      {

        v66 = v72;
        (v72)(v47, v46);
        (v73)(v53, v77);
        v66(v30, v46);
      }
    }

    else
    {
      sub_100063700();
      swift_allocError();
      *v65 = 0;
      *(v65 + 8) = 3;
      swift_willThrow();
      (v72)(v30, v46);
    }

    return v52;
  }

  return result;
}

char *sub_100061CAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v85 = a6;
  v83 = a5;
  v81 = a4;
  v87 = type metadata accessor for Logger();
  v84 = *(v87 - 8);
  v10 = __chkstk_darwin(v87, v9);
  v86 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v15 = v76 - v14;
  __chkstk_darwin(v13, v16);
  v18 = v76 - v17;
  v19 = type metadata accessor for URL();
  v79 = *(v19 - 8);
  v80 = v19;
  __chkstk_darwin(v19, v20);
  v22 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88._countAndFlagsBits = a2;
  v88._object = a3;

  v23._countAndFlagsBits = 0x6573616261746144;
  v23._object = 0xE800000000000000;
  String.append(_:)(v23);
  countAndFlagsBits = v88._countAndFlagsBits;
  object = v88._object;
  v88 = String.lowercased()();
  v26._countAndFlagsBits = 46;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x6574696C7173;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28 = object;
  v29 = v88._object;
  v82 = a1;
  v30 = v89;
  sub_100060D70(a1, countAndFlagsBits, v28, v88._countAndFlagsBits, v88._object, v22);
  if (v30)
  {

    return v15;
  }

  v76[1] = v29;
  v76[2] = v28;
  v76[3] = a2;
  v76[4] = a3;
  v77 = v18;
  v78 = v15;
  v31 = objc_allocWithZone(NSPersistentStoreDescription);
  URL._bridgeToObjectiveC()(v32);
  v34 = v33;
  v15 = [v31 initWithURL:v33];

  (*(v79 + 8))(v22, v80);
  [v15 setType:NSSQLiteStoreType];
  [v15 setShouldInferMappingModelAutomatically:1];
  [v15 setShouldMigrateStoreAutomatically:1];
  [v15 setTimeout:10.0];
  v35 = v82;
  if (v82 == 2)
  {
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    [v15 setOption:isa forKey:NSPersistentHistoryTrackingKey];

    v37 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    [v15 setOption:v37 forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];
  }

  v38 = objc_allocWithZone(NSPersistentCloudKitContainerOptions);
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 initWithContainerIdentifier:v39];

  v89 = v40;
  [v40 setDatabaseScope:v35];
  v88._countAndFlagsBits = 0xD000000000000025;
  v88._object = 0x80000001000891A0;
  v41 = String.lowercased()();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 46;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  v43 = v84;
  if (v35 == 1)
  {
    v45 = 0xE600000000000000;
    v46 = 0x63696C627570;
    v44 = v77;
    goto LABEL_11;
  }

  v44 = v77;
  if (v35 == 3)
  {
    v45 = 0xE600000000000000;
    v46 = 0x646572616873;
LABEL_11:
    v83 = 0;

    v47._countAndFlagsBits = v46;
    v47._object = v45;
    String.append(_:)(v47);

    v49 = v88._countAndFlagsBits;
    v48 = v88._object;
    static FamilyLogger.common.getter();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v44;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v88._countAndFlagsBits = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_1000373D4(v49, v48, &v88._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v50, v51, "Setting up CK APS connection %s", v53, 0xCu);
      sub_100024F7C(v54);

      v55 = v52;
      v56 = *(v43 + 8);
    }

    else
    {

      v56 = *(v43 + 8);
      v55 = v44;
    }

    v57 = v87;
    v56(v55, v87);
    v58 = v86;
    v59 = v85;
    v60 = String._bridgeToObjectiveC()();

    [v89 setApsConnectionMachServiceName:v60];

    v61 = v78;
    static FamilyLogger.common.getter();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 67109120;
      *(v64 + 4) = v59 & 1;
      _os_log_impl(&_mh_execute_header, v62, v63, "Setting useDeviceToDeviceEncryption to: %{BOOL}d", v64, 8u);
      v61 = v78;
    }

    v56(v61, v57);
    if (v59)
    {
      v65 = v89;
      [v89 setUseDeviceToDeviceEncryption:1];
      v66 = [objc_allocWithZone(CKContainerOptions) init];
      v67 = String._bridgeToObjectiveC()();
      [v66 setEncryptionServiceName:v67];

      [v66 setUseZoneWidePCS:1];
      [v65 setContainerOptions:v66];
      static FamilyLogger.common.getter();
      v68 = v66;
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138412290;
        *(v71 + 4) = v68;
        *v72 = v68;
        v73 = v68;
        _os_log_impl(&_mh_execute_header, v69, v70, "Setting cloudKit container options to: %@", v71, 0xCu);
        sub_10002624C(v72, &qword_1000B8590, &qword_10008C960);
        v58 = v86;

        v57 = v87;
      }

      else
      {
        v73 = v69;
        v69 = v68;
      }

      v56(v58, v57);
    }

    v74 = v89;
    [v15 setCloudKitContainerOptions:v89];

    return v15;
  }

  if (v35 == 2)
  {
    v45 = 0xE700000000000000;
    v46 = 0x65746176697270;
    goto LABEL_11;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t *sub_100062564(uint64_t a1)
{
  v3 = v1;
  v47 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v40 - v11;
  static FamilyLogger.daemon.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v44 = v5;
  v45 = v9;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1000373D4(*(v3 + 16), *(v3 + 24), aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "Initializing on-disk Core Data database %s", v16, 0xCu);
    sub_100024F7C(v17);
  }

  v18 = *(v5 + 8);
  v18(v12, v4);
  v19 = v3;
  v20 = sub_100061528();
  if (!v2)
  {
    v21 = v20;
    v42 = 0;
    v22 = objc_allocWithZone(NSPersistentCloudKitContainer);
    v23 = v21;
    v24 = String._bridgeToObjectiveC()();
    v25 = [v22 initWithName:v24 managedObjectModel:v23];

    v43 = v23;
    v26 = v45;
    static FamilyLogger.daemon.getter();
    v27 = v47;

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v30 = 136315138;
      sub_100002B10(0, &qword_1000B9478, NSPersistentStoreDescription_ptr);
      v31 = Array.description.getter();
      v33 = sub_1000373D4(v31, v32, aBlock);

      *(v30 + 4) = v33;
      v27 = v47;
      _os_log_impl(&_mh_execute_header, v28, v29, "Loading stores %s", v30, 0xCu);
      sub_100024F7C(v41);

      v34 = v45;
    }

    else
    {

      v34 = v26;
    }

    v18(v34, v4);
    sub_100002B10(0, &qword_1000B9478, NSPersistentStoreDescription_ptr);
    v19 = v25;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v19 setPersistentStoreDescriptions:isa];

    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = v27;
    v37[4] = v3;
    aBlock[4] = sub_1000636E4;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100063418;
    aBlock[3] = &unk_1000A9008;
    v38 = _Block_copy(aBlock);

    [v19 loadPersistentStoresWithCompletionHandler:v38];
    _Block_release(v38);
    swift_beginAccess();
    if (*(v36 + 16))
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
    }
  }

  return v19;
}

uint64_t sub_100062A70(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, uint64_t a5)
{
  v83 = a5;
  v86 = type metadata accessor for Logger();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86, v8);
  v84 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for URLResourceValues();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88, v10);
  v90 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100022F18(&qword_1000B8290, &unk_10008C690);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v14, v17);
  v98 = &v81 - v19;
  __chkstk_darwin(v18, v20);
  v22 = &v81 - v21;
  v23 = type metadata accessor for URL();
  v99 = *(v23 - 8);
  v100 = v23;
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v25, v28);
  v91 = &v81 - v30;
  __chkstk_darwin(v29, v31);
  v97 = (&v81 - v32);
  v89 = v27;
  if (a2)
  {
    swift_beginAccess();
    *(a3 + 2) = a2;
    swift_errorRetain();
  }

  if (a4 >> 62)
  {
    goto LABEL_43;
  }

  v33 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v82 = a3;
  if (v33)
  {
    v34 = 0;
    v95 = a4 & 0xFFFFFFFFFFFFFF8;
    v96 = a4 & 0xC000000000000001;
    v93 = (v99 + 56);
    a3 = (v99 + 48);
    v35 = _swiftEmptyArrayStorage;
    v92 = (v99 + 32);
    v94 = v33;
    while (1)
    {
      if (v96)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v38 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v34 >= *(v95 + 16))
        {
          goto LABEL_41;
        }

        v37 = *(a4 + 8 * v34 + 32);
        v38 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v33 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_5;
        }
      }

      v39 = v35;
      v40 = v37;
      v41 = [v40 URL];
      if (v41)
      {
        v42 = v41;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = 0;
      }

      else
      {
        v43 = 1;
      }

      v44 = v16;
      v45 = v16;
      v46 = v100;
      (*v93)(v44, v43, 1, v100);
      v47 = v45;
      v48 = v45;
      v49 = v98;
      sub_1000261DC(v48, v98);
      sub_1000261DC(v49, v22);

      if ((*a3)(v22, 1, v46) == 1)
      {
        sub_10002624C(v22, &qword_1000B8290, &unk_10008C690);
        v35 = v39;
        v16 = v47;
        v36 = v94;
      }

      else
      {
        v50 = *v92;
        (*v92)(v97, v22, v46);
        v51 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1000643D4(0, v39[2] + 1, 1, v39);
        }

        v16 = v47;
        v53 = v51[2];
        v52 = v51[3];
        v54 = v51;
        v36 = v94;
        if (v53 >= v52 >> 1)
        {
          v54 = sub_1000643D4((v52 > 1), v53 + 1, 1, v51);
        }

        v54[2] = v53 + 1;
        v35 = v54;
        v50((v54 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v53), v97, v100);
      }

      ++v34;
      if (v38 == v36)
      {
        goto LABEL_25;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_25:
  v55 = v91;
  a4 = v100;
  v98 = v35[2];
  if (v98)
  {
    v22 = 0;
    v16 = 0;
    v94 = NSURLFileProtectionKey;
    v97 = (v99 + 8);
    v95 = v87 + 8;
    v96 = (v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (v22 < v35[2])
    {
      v56 = v35;
      v57 = *(v99 + 16);
      v57(v55, v35 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v22, a4);
      v58 = [objc_opt_self() defaultManager];
      URL.path(percentEncoded:)(1);
      v59 = String._bridgeToObjectiveC()();

      v60 = [v58 fileExistsAtPath:v59];

      if (v60)
      {
        v57(v89, v55, a4);
        URLResourceValues.init()();
        URLResourceValues.isExcludedFromBackup.setter();
        URL.setResourceValues(_:)();
        URL._bridgeToObjectiveC()(v61);
        v63 = v62;
        if (qword_1000B7F38 != -1)
        {
          swift_once();
        }

        v102[0] = 0;
        v64 = [v63 setResourceValue:qword_1000BC028 forKey:v94 error:v102];

        if (!v64)
        {
          v68 = v102[0];
          v69 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v70 = v89;
          sub_100063700();
          v71 = swift_allocError();
          *v72 = v69;
          *(v72 + 8) = 0;
          swift_willThrow();
          (*v95)(v90, v88);
          v73 = *v97;
          (*v97)(v70, a4);
          (v73)(v91, a4);

          v74 = v82;
          swift_beginAccess();
          *(v74 + 2) = v71;
          swift_errorRetain();

          v75 = v84;
          static FamilyLogger.daemon.getter();
          v76 = v83;

          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v101 = v80;
            *v79 = 136315138;
            *(v79 + 4) = sub_1000373D4(*(v76 + 16), *(v76 + 24), &v101);
            _os_log_impl(&_mh_execute_header, v77, v78, "Done initializing %s CloudKit database", v79, 0xCu);
            sub_100024F7C(v80);
          }

          else
          {
          }

          return (*(v85 + 8))(v75, v86);
        }

        v65 = *v95;
        v66 = v102[0];
        v65(v90, v88);
        a3 = *v97;
        (*v97)(v89, a4);
      }

      else
      {
        a3 = *v97;
      }

      ++v22;
      v55 = v91;
      (a3)(v91, a4);
      v35 = v56;
      if (v98 == v22)
      {
      }
    }

    goto LABEL_42;
  }
}

void sub_100063418(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1000634A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10008D210;
  v12 = sub_100061CAC(2, a1, a2, a3, a4, a5);
  if (v5)
  {
    *(v11 + 16) = 0;
  }

  else
  {
    *(v11 + 32) = v12;
    v13 = a5 & 1;
    v14 = sub_100061CAC(3, a1, a2, a3, a4, a5 & 1);
    *(v11 + 40) = v14;
    type metadata accessor for CoreDataStack(v14, v16);
    a5 = swift_allocObject();
    *(a5 + 56) = 0;
    *(a5 + 16) = a1;
    *(a5 + 24) = a2;
    *(a5 + 32) = a3;
    *(a5 + 40) = a4;
    *(a5 + 48) = v13;
    v17 = sub_100062564(v11);

    v18 = *(a5 + 56);
    *(a5 + 56) = v17;
  }

  return a5;
}

uint64_t sub_10006362C(uint64_t a1, uint64_t *a2)
{
  sub_100022F18(&qword_1000B94B0, &qword_10008DDF0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *a2 = result;
  return result;
}

uint64_t sub_100063678()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100063700()
{
  result = qword_1000B9480;
  if (!qword_1000B9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9480);
  }

  return result;
}

uint64_t sub_100063754(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022F18(&qword_1000B8290, &unk_10008C690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000637C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100063808(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10006381C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100063878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreDataStack.ErrorType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreDataStack.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100063A34()
{
  result = qword_1000B94B8;
  if (!qword_1000B94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B94B8);
  }

  return result;
}

id sub_100063A88()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9[3] = sub_100022F18(&unk_1000B94C0, &unk_10008E420);
  v9[0] = v2;
  sub_100063C28(v9, v10);
  sub_100024F7C(v9);
  if (!v10[3])
  {
    sub_1000272A4(v10);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_100023D48(_swiftEmptyArrayStorage);
  }

  v3 = [v0 domain];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = [v0 code];
  v5 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithDomain:v3 code:v4 userInfo:isa];

  return v7;
}

uint64_t sub_100063C28@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026180(a1, &v77);
  v10 = sub_100022F18(&qword_1000B94D0, &unk_10008DF70);
  if (!swift_dynamicCast())
  {
    sub_100026180(a1, &v77);
    v20 = sub_100022F18(&unk_1000B94C0, &unk_10008E420);
    if (!swift_dynamicCast())
    {
      sub_100026180(a1, &v77);
      sub_100022F18(&qword_1000B94D8, &qword_10008DF80);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        return sub_100026180(a1, a2);
      }

      else
      {
        v66 = a2;
        static FamilyLogger.daemon.getter();
        sub_100026180(a1, &v77);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v72 = v58;
          *v57 = 136315138;
          sub_100026180(&v77, &v74);
          v59 = String.init<A>(describing:)();
          v61 = v60;
          sub_100024F7C(&v77);
          v62 = sub_1000373D4(v59, v61, &v72);

          *(v57 + 4) = v62;
          _os_log_impl(&_mh_execute_header, v55, v56, "Removing non secure value: %s", v57, 0xCu);
          sub_100024F7C(v58);
        }

        else
        {

          sub_100024F7C(&v77);
        }

        result = (*(v6 + 8))(v9, v5);
        v63 = v66;
        *v66 = 0u;
        *(v63 + 16) = 0u;
      }

      return result;
    }

    v65 = v20;
    v66 = a2;
    v21 = 0;
    v68 = v74;
    v22 = 1 << *(v74 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v74 + 64;
    v25 = v23 & *(v74 + 64);
    v26 = (v22 + 63) >> 6;
    v27 = &_swiftEmptyDictionarySingleton;
    v67 = v2;
    if (!v25)
    {
      goto LABEL_19;
    }

    while (1)
    {
      while (1)
      {
        v30 = v21;
LABEL_29:
        v31 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v32 = v31 | (v30 << 6);
        v33 = (*(v68 + 48) + 16 * v32);
        v34 = *v33;
        v35 = v33[1];
        sub_100026180(*(v68 + 56) + 32 * v32, &v72);
        *&v74 = v34;
        *(&v74 + 1) = v35;
        sub_1000249A8(&v72, &v75);

LABEL_30:
        v77 = v74;
        v78[0] = v75;
        v78[1] = v76;
        v36 = *(&v74 + 1);
        if (!*(&v74 + 1))
        {

          v54 = v66;
          *(v66 + 24) = v65;
          *v54 = v27;
          return result;
        }

        v37 = v77;
        sub_1000249A8(v78, &v74);
        sub_100063C28(&v74, &v70);
        if (v71)
        {
          break;
        }

        sub_100024F7C(&v74);

        sub_1000272A4(&v70);
        if (!v25)
        {
          goto LABEL_19;
        }
      }

      sub_1000249A8(&v70, &v72);
      sub_100026180(&v72, &v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v27;
      v39 = sub_100037A08(v37, v36);
      v41 = v27[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_55;
      }

      v45 = v40;
      if (v27[3] < v44)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_37;
      }

      v49 = v39;
      sub_10007723C();
      v39 = v49;
      if ((v45 & 1) == 0)
      {
LABEL_40:
        v27 = v69;
        v69[(v39 >> 6) + 8] |= 1 << v39;
        v50 = (v27[6] + 16 * v39);
        *v50 = v37;
        v50[1] = v36;
        sub_1000249A8(&v70, (v27[7] + 32 * v39));
        sub_100024F7C(&v72);
        sub_100024F7C(&v74);
        v51 = v27[2];
        v43 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v43)
        {
          goto LABEL_56;
        }

        v27[2] = v52;
        goto LABEL_42;
      }

LABEL_38:
      v47 = v39;

      v27 = v69;
      v48 = (v69[7] + 32 * v47);
      sub_100024F7C(v48);
      sub_1000249A8(&v70, v48);
      sub_100024F7C(&v72);
      sub_100024F7C(&v74);
LABEL_42:
      if (!v25)
      {
LABEL_19:
        if (v26 <= v21 + 1)
        {
          v28 = v21 + 1;
        }

        else
        {
          v28 = v26;
        }

        v29 = v28 - 1;
        while (1)
        {
          v30 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v30 >= v26)
          {
            v25 = 0;
            v75 = 0u;
            v76 = 0u;
            v21 = v29;
            v74 = 0u;
            goto LABEL_30;
          }

          v25 = *(v24 + 8 * v30);
          ++v21;
          if (v25)
          {
            v21 = v30;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    sub_100076048(v44, isUniquelyReferenced_nonNull_native);
    v39 = sub_100037A08(v37, v36);
    if ((v45 & 1) != (v46 & 1))
    {
      goto LABEL_57;
    }

LABEL_37:
    if ((v45 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v11 = a2;
  v12 = v74;
  v13 = *(v74 + 16);
  v14 = v2;
  if (v13)
  {
    v15 = 0;
    v16 = v12 + 32;
    v17 = _swiftEmptyArrayStorage;
    while (v15 < *(v12 + 16))
    {
      sub_100026180(v16, &v77);
      sub_100063C28(&v77, &v72);
      sub_100024F7C(&v77);
      if (v73)
      {
        sub_1000249A8(&v72, &v74);
        sub_1000249A8(&v74, &v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1000645D8(0, *(v17 + 2) + 1, 1, v17);
        }

        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        if (v19 >= v18 >> 1)
        {
          v17 = sub_1000645D8((v18 > 1), v19 + 1, 1, v17);
        }

        *(v17 + 2) = v19 + 1;
        sub_1000249A8(&v72, &v17[32 * v19 + 32]);
      }

      else
      {
        sub_1000272A4(&v72);
      }

      ++v15;
      v16 += 32;
      if (v13 == v15)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_54;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_48:

  v11[3] = v10;
  *v11 = v17;
  return result;
}

void *sub_1000643FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100022F18(a5, a6);
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

char *sub_1000645D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100022F18(&qword_1000B94E0, &qword_10008DF88);
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

uint64_t sub_1000646E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_100024C08(a3, v26 - v11, &qword_1000B82B8, &qword_10008C6C0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002624C(v12, &qword_1000B82B8, &qword_10008C6C0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002624C(a3, &qword_1000B82B8, &qword_10008C6C0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_1000649E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100022F18(&qword_1000B9548, &unk_10008DFF0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v6;
  }

  while (!v4);
  while (1)
  {
    v12 = __clz(__rbit64(v4)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100024C08(*(a1 + 56) + 40 * v12, &v25, &qword_1000B8E20, &qword_10008D4C0);

    sub_100022F18(&qword_1000B8E20, &qword_10008D4C0);
    sub_10003B7FC(0, v16);
    if (!swift_dynamicCast())
    {
      break;
    }

    v4 &= v4 - 1;
    v17 = sub_100037A08(v15, v14);
    if (v18)
    {
      v7 = (v1[6] + 16 * v17);
      *v7 = v15;
      v7[1] = v14;
      v8 = v17;

      v9 = v1[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v24;

      v6 = v11;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_22;
      }

      *(v1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      v19 = (v1[6] + 16 * v17);
      *v19 = v15;
      v19[1] = v14;
      *(v1[7] + 8 * v17) = v24;
      v20 = v1[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_23;
      }

      v1[2] = v22;
      v6 = v11;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v6;
  }
}

unint64_t sub_100064C5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100022F18(&qword_1000B8090, &unk_10008C570);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100034FBC(*(a1 + 48) + 40 * v12, v27);
        sub_100026180(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100034FBC(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100026180(v25 + 8, v20);
        sub_10002624C(v24, &qword_1000B9558, qword_10008E040);
        v21 = v18;
        sub_1000249A8(v20, v22);
        v13 = v21;
        sub_1000249A8(v22, v23);
        sub_1000249A8(v23, &v21);
        result = sub_100037A08(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100024F7C(v10);
          result = sub_1000249A8(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1000249A8(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_10002624C(v24, &qword_1000B9558, qword_10008E040);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id ParentalControlsPushHandler.init()(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___FAParentalControlsPushHandler_parentalControlsOperation] = [objc_allocWithZone(type metadata accessor for FAParentalControlsOperation(0 a2))];
  v3 = [objc_allocWithZone(FAAgeRangeController) init];
  *&v2[OBJC_IVAR___FAParentalControlsPushHandler_ageRangeController] = v3;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ParentalControlsPushHandler(v3, v4);
  return objc_msgSendSuper2(&v6, "init");
}

Swift::Bool __swiftcall ParentalControlsPushHandler.shouldProcess(_:)(FAPushMessage_optional *a1)
{
  if (a1)
  {
    v1 = [(FAPushMessage_optional *)a1 event];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == 0xD000000000000016 && 0x8000000100089260 == v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    LOBYTE(a1) = v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return a1;
}

Swift::Void __swiftcall ParentalControlsPushHandler.process(_:)(FAPushMessage_optional *a1)
{
  v59 = type metadata accessor for Logger();
  v3 = *(v59 - 8);
  __chkstk_darwin(v59, v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v57 - v9;
  if (!a1)
  {
    goto LABEL_78;
  }

  v11 = [(FAPushMessage_optional *)a1 payload];
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_100064C5C(v12);

  if (v13)
  {

    v14 = [(FAPushMessage_optional *)a1 setForDSID];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = HIBYTE(v18) & 0xF;
      v20 = v16 & 0xFFFFFFFFFFFFLL;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v21 = HIBYTE(v18) & 0xF;
      }

      else
      {
        v21 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        if ((v18 & 0x1000000000000000) != 0)
        {
          v61 = 0;
          v24 = sub_100066C20(v16, v18, 10);
          v42 = v56;
LABEL_66:

          if ((v42 & 1) == 0)
          {
            v53 = type metadata accessor for TaskPriority();
            (*(*(v53 - 8) + 56))(v10, 1, 1, v53);
            v54 = swift_allocObject();
            v54[2] = 0;
            v54[3] = 0;
            v54[4] = v1;
            v54[5] = v24;
            v55 = v1;
            sub_1000646E8(0, 0, v10, &unk_10008DFB0, v54);

            return;
          }

          goto LABEL_67;
        }

        if ((v18 & 0x2000000000000000) != 0)
        {
          v60[0] = v16;
          v60[1] = v18 & 0xFFFFFFFFFFFFFFLL;
          if (v16 == 43)
          {
            if (v19)
            {
              if (--v19)
              {
                v24 = 0;
                v34 = v60 + 1;
                while (1)
                {
                  v35 = *v34 - 48;
                  if (v35 > 9)
                  {
                    break;
                  }

                  v36 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    break;
                  }

                  v24 = v36 + v35;
                  if (__OFADD__(v36, v35))
                  {
                    break;
                  }

                  ++v34;
                  if (!--v19)
                  {
                    goto LABEL_65;
                  }
                }
              }

              goto LABEL_64;
            }

            goto LABEL_77;
          }

          if (v16 != 45)
          {
            if (v19)
            {
              v24 = 0;
              v39 = v60;
              while (1)
              {
                v40 = *v39 - 48;
                if (v40 > 9)
                {
                  break;
                }

                v41 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v41 + v40;
                if (__OFADD__(v41, v40))
                {
                  break;
                }

                v39 = (v39 + 1);
                if (!--v19)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }

          if (v19)
          {
            if (--v19)
            {
              v24 = 0;
              v28 = v60 + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v30 - v29;
                if (__OFSUB__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v19)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }
        }

        else
        {
          if ((v16 & 0x1000000000000000) != 0)
          {
            v22 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v22 = _StringObject.sharedUTF8.getter();
          }

          v23 = *v22;
          if (v23 == 43)
          {
            if (v20 >= 1)
            {
              v19 = v20 - 1;
              if (v20 != 1)
              {
                v24 = 0;
                if (v22)
                {
                  v31 = v22 + 1;
                  while (1)
                  {
                    v32 = *v31 - 48;
                    if (v32 > 9)
                    {
                      goto LABEL_64;
                    }

                    v33 = 10 * v24;
                    if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                    {
                      goto LABEL_64;
                    }

                    v24 = v33 + v32;
                    if (__OFADD__(v33, v32))
                    {
                      goto LABEL_64;
                    }

                    ++v31;
                    if (!--v19)
                    {
                      goto LABEL_65;
                    }
                  }
                }

                goto LABEL_56;
              }

              goto LABEL_64;
            }

            goto LABEL_76;
          }

          if (v23 != 45)
          {
            if (v20)
            {
              v24 = 0;
              if (v22)
              {
                while (1)
                {
                  v37 = *v22 - 48;
                  if (v37 > 9)
                  {
                    goto LABEL_64;
                  }

                  v38 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v24 = v38 + v37;
                  if (__OFADD__(v38, v37))
                  {
                    goto LABEL_64;
                  }

                  ++v22;
                  if (!--v20)
                  {
                    goto LABEL_56;
                  }
                }
              }

              goto LABEL_56;
            }

LABEL_64:
            v24 = 0;
            LOBYTE(v19) = 1;
            goto LABEL_65;
          }

          if (v20 >= 1)
          {
            v19 = v20 - 1;
            if (v20 != 1)
            {
              v24 = 0;
              if (v22)
              {
                v25 = v22 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    goto LABEL_64;
                  }

                  v27 = 10 * v24;
                  if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v24 = v27 - v26;
                  if (__OFSUB__(v27, v26))
                  {
                    goto LABEL_64;
                  }

                  ++v25;
                  if (!--v19)
                  {
                    goto LABEL_65;
                  }
                }
              }

LABEL_56:
              LOBYTE(v19) = 0;
LABEL_65:
              v61 = v19;
              v42 = v19;
              goto LABEL_66;
            }

            goto LABEL_64;
          }

          __break(1u);
        }

        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        return;
      }
    }
  }

LABEL_67:
  static FamilyLogger.daemon.getter();
  v43 = a1;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v60[0] = v47;
    *v46 = 136315138;
    v48 = [(FAPushMessage_optional *)v43 payload];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v6;

    v49 = Dictionary.description.getter();
    v51 = v50;

    v52 = sub_1000373D4(v49, v51, v60);

    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v44, v45, "Failed to process parental controls push with payload: %s", v46, 0xCu);
    sub_100024F7C(v47);

    (*(v3 + 8))(v58, v59);
  }

  else
  {

    (*(v3 + 8))(v6, v59);
  }
}

uint64_t sub_10006582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = type metadata accessor for Logger();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000658F8, 0, 0);
}

uint64_t sub_1000658F8(uint64_t a1)
{
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying to update parental controls on receive of push", v4, 2u);
  }

  v5 = v1[27];
  v6 = v1[24];
  v7 = v1[25];
  v8 = v1[23];

  v9 = *(v7 + 8);
  v1[28] = v9;
  v9(v5, v6);
  v10 = [objc_allocWithZone(NSNumber) initWithInteger:v8];
  v1[29] = v10;
  v11 = swift_task_alloc();
  v1[30] = v11;
  *v11 = v1;
  v11[1] = sub_100065A68;

  return sub_10006DFAC(v10);
}

uint64_t sub_100065A68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_10006642C;
  }

  else
  {

    v4 = sub_100065B84;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100065B84()
{
  v1 = v0[31];
  if (v1)
  {
    v2 = v1;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v3 = sub_100023D48(_swiftEmptyArrayStorage);

  v4 = sub_100073364(v3);
  v0[33] = v4;

  result = [(objc_class *)v4 integerValue];
  v0[34] = result;
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = [objc_allocWithZone(NSNumber) initWithInteger:v0[23]];
  v0[35] = v6;
  v7 = swift_task_alloc();
  v0[36] = v7;
  *v7 = v0;
  v7[1] = sub_100065D00;

  return sub_100067850(v6);
}

uint64_t sub_100065D00(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 296) = a1;
  *(v4 + 304) = a2;
  *(v4 + 312) = v2;

  if (v2)
  {
    v5 = sub_10006608C;
  }

  else
  {

    v5 = sub_100065E20;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100065E20()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = v1;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v3 = sub_100023D48(_swiftEmptyArrayStorage);

  v4 = *(v0 + 248);
  sub_100073B2C(v3);
  v6 = v5;

  if (v4)
  {
    v7 = *(v0 + 248);
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v8 = sub_100023D48(_swiftEmptyArrayStorage);

  v9 = *(v0 + 272);
  v10 = *(v0 + 176);
  v11 = sub_100073748(v8);
  *(v0 + 320) = v11;

  v12 = *(v10 + OBJC_IVAR___FAParentalControlsPushHandler_ageRangeController);
  v13 = String._bridgeToObjectiveC()();
  *(v0 + 328) = v13;

  v14 = [objc_allocWithZone(NSNumber) initWithDouble:v6];
  *(v0 + 336) = v14;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100066288;
  v15 = swift_continuation_init();
  *(v0 + 136) = sub_100022F18(&qword_1000B9550, &unk_10008E020);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100066824;
  *(v0 + 104) = &unk_1000A91B8;
  *(v0 + 112) = v15;
  [v12 saveAgeRangeGlobalState:v9 forAltDSID:v13 cacheDuration:v14 privacyVersion:v11 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10006608C()
{
  v19 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);

  static FamilyLogger.daemon.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v16 = *(v0 + 208);
    v17 = *(v0 + 224);
    v5 = *(v0 + 192);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1000373D4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to process parental controls push with error: %s", v6, 0xCu);
    sub_100024F7C(v7);

    v17(v16, v5);
  }

  else
  {
    v11 = *(v0 + 224);
    v12 = *(v0 + 208);
    v13 = *(v0 + 192);

    v11(v12, v13);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100066288()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_100066618;
  }

  else
  {
    v2 = sub_100066398;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100066398()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10006642C()
{
  v17 = v0;

  static FamilyLogger.daemon.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v14 = *(v0 + 208);
    v15 = *(v0 + 224);
    v3 = *(v0 + 192);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000373D4(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to process parental controls push with error: %s", v4, 0xCu);
    sub_100024F7C(v5);

    v15(v14, v3);
  }

  else
  {
    v9 = *(v0 + 224);
    v10 = *(v0 + 208);
    v11 = *(v0 + 192);

    v9(v10, v11);
  }

  v12 = *(v0 + 8);

  return v12();
}