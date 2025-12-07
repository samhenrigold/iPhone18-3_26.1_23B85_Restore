void sub_10018F8B8(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v58 = a2;
  v8 = type metadata accessor for DIPError.Code();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v57 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v52 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v52 - v18;
  __chkstk_darwin(v17);
  v21 = &v52 - v20;
  defaultLogger()();
  v60 = a3;
  v61 = a4;
  Logger.cryptoParam(_:)();
  v22 = *(v11 + 8);
  v64 = v10;
  v59 = v22;
  v22(v21, v10);
  if (a4 >> 60 == 15)
  {
    sub_10005A720();
    if (v4)
    {
      return;
    }

    v24 = a1;
    v25 = v23;
    v53 = v24;
LABEL_4:
    if (!v25)
    {
      goto LABEL_18;
    }

LABEL_10:
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "CredentialStorage+PayloadInsertion: Set the payload presentment key", v30, 2u);
    }

    v59(v16, v64);
    [v58 setPresentmentKey:v25];

    return;
  }

  sub_100009708(a3, a4);
  sub_10005A0A4(a3, a4);
  if (v4)
  {
    sub_10001C120(a3, a4);
    return;
  }

  v27 = a1;
  v25 = v26;
  v53 = v27;
  if (v26)
  {
    sub_10001C120(a3, a4);
    goto LABEL_10;
  }

  v31 = [objc_opt_self() standardUserDefaults];
  v32._object = 0x80000001001B9350;
  v32._countAndFlagsBits = 0xD000000000000027;
  v33 = NSUserDefaults.internalBool(forKey:)(v32);

  if (v33)
  {
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v52 = v34;
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v52, v35, "Allowing payload without matching presentment key due to user defaults setting", v36, 2u);
      v34 = v52;
    }

    v59(v19, v64);
    sub_10005A720();
    v25 = v37;
    sub_10001C120(a3, a4);
    goto LABEL_4;
  }

  sub_10001C120(a3, a4);
LABEL_18:
  v38 = [v53 options];
  v39 = v64;
  v40 = v59;
  if (!v38)
  {
    goto LABEL_23;
  }

  v41 = v38;
  v42 = [v38 presentmentAuthPolicy];

  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  if (v42)
  {
    object = 0xE000000000000000;
    v62 = 0;
    v63 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v44._countAndFlagsBits = 0xD00000000000003CLL;
    v44._object = 0x80000001001BD130;
    String.append(_:)(v44);
    if (a4 >> 60 == 15)
    {
      countAndFlagsBits = 0;
    }

    else
    {
      v50 = Data.base16EncodedString()();
      countAndFlagsBits = v50._countAndFlagsBits;
      object = v50._object;
    }

    v51 = object;
    String.append(_:)(*&countAndFlagsBits);

    (*(v54 + 104))(v56, enum case for DIPError.Code.idcsPayloadPresentmentKeyMismatch(_:), v55);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10018FF54(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
LABEL_23:
    v46 = v57;
    defaultLogger()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Skipping presentment key associated because credential auth policy is notRequired", v49, 2u);
    }

    v40(v46, v39);
  }
}

uint64_t sub_10018FF54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10018FF9C()
{

  return _swift_deallocObject(v0, 56, 7);
}

void *sub_100190010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10018E2EC(sub_100190078, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1001900AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CredentialKeyType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10019016C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CredentialKeyType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100190210(uint64_t a1)
{
  type metadata accessor for CredentialKeyType();
  if (v1 <= 0x3F)
  {
    sub_100060F00();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001902B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100190388(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v7 = sub_100004E70(&qword_100202498, &unk_1001AD910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100190434(uint64_t a1)
{
  sub_1001904F8(319, &unk_100203E38, type metadata accessor for DCCredentialPayloadProtectionPolicy);
  if (v1 <= 0x3F)
  {
    sub_1001904F8(319, &qword_100202A40, type metadata accessor for KeyLookupInfo);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001904F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10019057C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DIPError.Code();
  v2[2] = v5;
  v2[3] = *(v5 - 8);
  v2[4] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_100190680;

  return sub_100190C18(a1, a2, 1);
}

uint64_t sub_100190680(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_100190A98;
  }

  else
  {
    v4 = sub_100190794;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100190794()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];

    v8 = *(v6 + 104);
    v8(v5, enum case for DIPError.Code.idcsMissingPresentmentKey(_:), v7);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v8(v0[4], enum case for DIPError.Code.internalError(_:), v0[2]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[6] + 32);
  }

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100190A98()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.internalError(_:), v0[2]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100190C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[60] = a3;
  v4[61] = v3;
  v4[58] = a1;
  v4[59] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[62] = v5;
  v4[63] = *(v5 - 8);
  v4[64] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[65] = v6;
  v4[66] = *(v6 - 8);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[71] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  v4[72] = v7;
  v4[73] = *(v7 - 8);
  v4[74] = swift_task_alloc();

  return _swift_task_switch(sub_100190DE4, 0, 0);
}

uint64_t sub_100190DE4()
{
  v1 = v0[60];
  static IDCSSignposts.storageGeneratePresentmentKeys.getter();
  DIPSignpost.init(_:)();
  if (v1 < 1)
  {
    (*(v0[63] + 104))(v0[64], enum case for DIPError.Code.idcsInvalidArgument(_:), v0[62]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v0[73] + 8))(v0[74], v0[72]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[75] = *(v0[61] + 24);
    v2 = swift_task_alloc();
    v0[76] = v2;
    *v2 = v0;
    v2[1] = sub_100191090;

    return sub_100135A60();
  }
}

uint64_t sub_100191090()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_1001935BC;
  }

  else
  {
    v2 = sub_1001911A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001911A4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing progenitor key designations before generating new presentment keys", v4, 2u);
  }

  v5 = v1[70];
  v6 = v1[66];
  v7 = v1[65];

  v8 = *(v6 + 8);
  v1[78] = v8;
  v8(v5, v7);
  v9 = swift_task_alloc();
  v1[79] = v9;
  *v9 = v1;
  v9[1] = sub_1001912E8;

  return sub_10012E30C(0, 0xF000000000000000, 1);
}

uint64_t sub_1001912E8()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_100193764;
  }

  else
  {
    v2 = sub_1001913FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001913FC()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  v2._object = 0x80000001001BD9D0;
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "CredentialStorage foring presentment key generation failure", v6, 2u);
    }

    v7 = v0[78];
    v8 = v0[69];
    v9 = v0[65];
    v11 = v0[63];
    v10 = v0[64];
    v12 = v0[62];

    v7(v8, v9);
    (*(v11 + 104))(v10, enum case for DIPError.Code.internalError(_:), v12);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v0[73] + 8))(v0[74], v0[72]);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[60];
    v15 = v0[61];
    v18 = v0[58];
    v17 = v0[59];
    v0[81] = *(v15 + 120);
    v19 = swift_allocObject();
    v0[82] = v19;
    v19[2] = v15;
    v19[3] = v18;
    v19[4] = v17;
    v19[5] = v16;
    v20 = swift_allocObject();
    v0[83] = v20;
    *(v20 + 16) = &unk_1001AEE68;
    *(v20 + 24) = v19;

    v21 = swift_task_alloc();
    v0[84] = v21;
    v22 = sub_100004E70(&qword_100203E70, &qword_1001AEE80);
    *v21 = v0;
    v21[1] = sub_10019182C;

    return AsyncCoreDataContainer.write<A>(_:)(v0 + 50, &unk_1001AEE78, v20, v22);
  }
}

uint64_t sub_10019182C()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_100191BF4;
  }

  else
  {

    v2 = sub_100191954;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100191954()
{
  v1 = *(v0 + 488);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  *(v0 + 688) = *(v0 + 400);
  *(v0 + 696) = *(v0 + 408);
  *(v0 + 712) = *(v0 + 424);
  v4 = swift_allocObject();
  *(v0 + 720) = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_allocObject();
  *(v0 + 728) = v5;
  *(v5 + 16) = sub_10019B214;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  *(v0 + 736) = v6;
  v7 = sub_100004E70(&qword_100203E78, &qword_1001AEE88);
  *v6 = v0;
  v6[1] = sub_100191ACC;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 432, sub_1000DCAB0, v5, v7);
}

uint64_t sub_100191ACC()
{
  *(*v1 + 744) = v0;

  if (v0)
  {
    v2 = sub_10019295C;
  }

  else
  {

    v2 = sub_100191E0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100191BF4()
{

  (*(v0[63] + 104))(v0[64], enum case for DIPError.Code.internalError(_:), v0[62]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v0[73] + 8))(v0[74], v0[72]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100191E0C(uint64_t a1)
{
  v3 = v1[54];
  v2 = v1[55];
  v1[94] = v3;
  v1[95] = v2;
  v4 = v1[56];
  v5 = v1[57];
  v1[96] = v4;
  v1[97] = v5;
  if (v2)
  {
    sub_10016A1AC(v3, v2, v4, v5);
    sub_100009708(v4, v5);
    v6 = swift_task_alloc();
    v1[98] = v6;
    *v6 = v1;
    v6[1] = sub_1001927CC;

    return sub_100028458(v3, v2, v4, v5);
  }

  v60 = v1 + 35;
  v61 = v1[93];
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Skipping creation of progenitor key authorization because no key signing key exists", v10, 2u);
  }

  v11 = v1[78];
  v12 = v1[68];
  v13 = v1[65];

  v11(v12, v13);
  v1[39] = 0;
  *v60 = 0u;
  *(v1 + 37) = 0u;
  result = v1[86];
  v59 = *(result + 16);
  if (v59)
  {
    v14 = 0;
    v15 = (v1 + 2);
    v16 = (v1 + 45);
    v17 = result + 32;
    v57 = v1[86];
    v58 = (v1 + 2);
    v56 = (v1 + 45);
    v55 = v1;
    while (1)
    {
      if (v14 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v18 = *(v17 + 16);
      *v15 = *v17;
      *(v15 + 16) = v18;
      v19 = *(v17 + 32);
      v20 = *(v17 + 48);
      v21 = *(v17 + 64);
      *(v15 + 80) = *(v17 + 80);
      *(v15 + 48) = v20;
      *(v15 + 64) = v21;
      *(v15 + 32) = v19;
      sub_10019B234(v60, v16);
      v70 = v14;
      v69 = v17;
      if (v1[48])
      {
        v22 = *(v16 + 16);
        *(v1 + 20) = *v16;
        *(v1 + 21) = v22;
        v1[44] = *(v16 + 32);
        sub_10019B2A4(v15, (v1 + 24));
        v23 = sub_100143318();
        if (v61)
        {
          v51 = v1[89];
          v52 = v1[88];
          v53 = v1[87];
          sub_10016A118(v1[94], v1[95], v1[96], v1[97]);

          sub_1000092BC(v53, v52);

          sub_10019B360(v15);
          sub_100157C88((v1 + 40));
          sub_10019B2DC(v60);

          (*(v1[63] + 104))(v1[64], enum case for DIPError.Code.internalError(_:), v1[62]);
          swift_errorRetain();
          sub_10002688C(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          DIPSignpost.end(workflowID:isBackground:)(0, 2);
          (*(v1[73] + 8))(v1[74], v1[72]);

          v54 = v1[1];

          return v54();
        }

        v25 = v23;
        v26 = v24;
        sub_100157C88((v1 + 40));
        v61 = 0;
        v77 = v25;
        v71 = v26;
      }

      else
      {
        sub_10019B2A4(v15, (v1 + 13));
        sub_10019B2DC(v16);
        v77 = 0;
        v71 = 0xF000000000000000;
      }

      v66 = v1[88];
      v63 = v1[87];
      v27 = v1[78];
      v28 = v1[67];
      v29 = v1[65];
      v72 = v1[10];
      v73 = v1[11];
      v74 = v1[9];
      v75 = v1[8];
      v30 = v1[6];
      v31 = v1[4];
      v32 = v1[5];
      v76 = v1[7];
      defaultLogger()();
      *(swift_task_alloc() + 16) = v15;
      Logger.sensitive(_:)();

      v27(v28, v29);
      defaultLogger()();
      *(swift_task_alloc() + 16) = v15;
      Logger.sensitive(_:)();

      v27(v28, v29);
      defaultLogger()();
      v33 = swift_task_alloc();
      v33[2] = v15;
      v33[3] = v77;
      v33[4] = v71;
      Logger.sensitive(_:)();

      v27(v28, v29);
      sub_100009708(v31, v32);
      sub_100009708(v30, v76);
      sub_100009708(v75, v74);
      sub_100009708(v63, v66);
      sub_100009708(v72, v73);
      sub_100032EBC(v77, v71);
      v68 = String._bridgeToObjectiveC()();
      v67.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v65.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v62.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v34.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v35.super.isa = Data._bridgeToObjectiveC()().super.isa;
      if (v71 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001C120(v77, v71);
      }

      v1 = v55;
      v64 = v55[88];
      v37 = v55[87];
      [objc_allocWithZone(DCCredentialCryptoKey) initWithIdentifier:v68 publicKey:v67.super.isa publicKeyIdentifier:v65.super.isa publicKeyCOSEKey:v62.super.isa keyType:2 keyUsage:3 progenitorKeyAttestation:v34.super.isa casdAttestation:v35.super.isa keyAuthorization:isa kskAttestation:0];

      sub_1000092BC(v72, v73);
      sub_1000092BC(v37, v64);

      sub_1000092BC(v75, v74);
      sub_1000092BC(v30, v76);

      sub_1000092BC(v31, v32);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v14 = v70 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v58;
      sub_10019B360(v58);
      sub_10001C120(v77, v71);
      v17 = v69 + 88;
      v16 = v56;
      result = v57;
      if (v59 == v70 + 1)
      {
        v38 = v55[89];
        v39 = v55[88];
        v40 = v55[87];

        sub_1000092BC(v40, v39);
        goto LABEL_22;
      }
    }
  }

  v38 = v1[89];
  v41 = v1[88];
  v42 = v1[87];

  sub_1000092BC(v42, v41);
LABEL_22:

  v43 = v1[97];
  v44 = v1[96];
  v45 = v1[95];
  v46 = v1[94];
  v47 = v1[74];
  v48 = v1[73];
  v49 = v1[72];

  sub_10016A118(v46, v45, v44, v43);
  sub_10019B2DC(v60);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v48 + 8))(v47, v49);

  v50 = v1[1];

  return v50(_swiftEmptyArrayStorage);
}

uint64_t sub_1001927CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[99] = a1;
  v4[100] = v1;

  v5 = v3[97];
  v6 = v3[96];
  if (v1)
  {
    sub_10016A118(v4[94], v4[95], v6, v5);
    sub_1000092BC(v6, v5);

    v7 = sub_100193BF0;
  }

  else
  {
    sub_1000092BC(v6, v5);
    v7 = sub_100192B9C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10019295C()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[87];

  sub_1000092BC(v3, v2);

  (*(v0[63] + 104))(v0[64], enum case for DIPError.Code.internalError(_:), v0[62]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v0[73] + 8))(v0[74], v0[72]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100192B9C()
{
  v82 = v0;
  v61 = v0 + 35;
  v1 = v0[99];
  if (v1)
  {
    v2 = v0[100];
    v0[38] = &type metadata for KeySigningKeySignatureProvider;
    v0[39] = &off_1001F9920;
    v0[35] = v1;
    v3 = *(v1 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
    v4 = swift_task_alloc();
    *(v4 + 16) = sub_10016A174;
    *(v4 + 24) = v1;

    os_unfair_lock_lock(v3 + 4);
    sub_10001BF74(v81);
    os_unfair_lock_unlock(v3 + 4);
    if (v2)
    {
    }

    v13 = v81[0];
    sub_10016A118(v0[94], v0[95], v0[96], v0[97]);

    v6 = 0;
  }

  else
  {
    sub_10016A118(v0[94], v0[95], v0[96], v0[97]);
    v6 = v0[100];
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Skipping creation of progenitor key authorization because no key signing key exists", v9, 2u);
    }

    v10 = v0[78];
    v11 = v0[68];
    v12 = v0[65];

    v10(v11, v12);
    v13 = 0;
    v0[39] = 0;
    *v61 = 0u;
    *(v0 + 37) = 0u;
  }

  result = v0[86];
  v81[0] = _swiftEmptyArrayStorage;
  v60 = *(result + 16);
  if (v60)
  {
    v62 = v6;
    v14 = 0;
    v15 = (v0 + 2);
    v16 = (v0 + 45);
    v17 = result + 32;
    v58 = (v0 + 45);
    v59 = result;
    v56 = v0;
    v57 = (v0 + 2);
    while (1)
    {
      if (v14 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v18 = *(v17 + 16);
      *v15 = *v17;
      *(v15 + 16) = v18;
      v19 = *(v17 + 32);
      v20 = *(v17 + 48);
      v21 = *(v17 + 64);
      *(v15 + 80) = *(v17 + 80);
      *(v15 + 48) = v20;
      *(v15 + 64) = v21;
      *(v15 + 32) = v19;
      sub_10019B234(v61, v16);
      v72 = v14;
      v71 = v17;
      if (v0[48])
      {
        v22 = *(v16 + 16);
        *(v0 + 20) = *v16;
        *(v0 + 21) = v22;
        v0[44] = *(v16 + 32);
        sub_10019B2A4(v15, (v0 + 24));
        v23 = sub_100143318();
        if (v62)
        {
          v52 = v0[89];
          v53 = v0[88];
          v54 = v0[87];
          sub_10016A118(v0[94], v0[95], v0[96], v0[97]);

          sub_1000092BC(v54, v53);

          sub_10019B360(v15);
          sub_100157C88((v0 + 40));
          sub_10019B2DC(v61);

          (*(v0[63] + 104))(v0[64], enum case for DIPError.Code.internalError(_:), v0[62]);
          swift_errorRetain();
          sub_10002688C(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          DIPSignpost.end(workflowID:isBackground:)(0, 2);
          (*(v0[73] + 8))(v0[74], v0[72]);

          v55 = v0[1];

          return v55();
        }

        v25 = v23;
        v26 = v24;
        sub_100157C88((v0 + 40));
        v62 = 0;
        v27 = v25;
        v80 = v26;
      }

      else
      {
        sub_10019B2A4(v15, (v0 + 13));
        sub_10019B2DC(v16);
        v27 = 0;
        v80 = 0xF000000000000000;
      }

      v64 = v0[87];
      v66 = v0[88];
      v28 = v0[78];
      v29 = v0[67];
      v30 = v0[65];
      v73 = v0[11];
      v74 = v0[10];
      v75 = v0[9];
      v76 = v0[8];
      v77 = v0[7];
      v78 = v0[6];
      v31 = v0[4];
      v79 = v0[5];
      defaultLogger()();
      *(swift_task_alloc() + 16) = v15;
      Logger.sensitive(_:)();

      v28(v29, v30);
      defaultLogger()();
      *(swift_task_alloc() + 16) = v15;
      Logger.sensitive(_:)();

      v28(v29, v30);
      defaultLogger()();
      v32 = swift_task_alloc();
      v32[2] = v15;
      v32[3] = v27;
      v32[4] = v80;
      Logger.sensitive(_:)();

      v28(v29, v30);
      sub_100009708(v31, v79);
      sub_100009708(v78, v77);
      sub_100009708(v76, v75);
      sub_100009708(v64, v66);
      sub_100009708(v74, v73);
      sub_100032EBC(v27, v80);
      v70 = String._bridgeToObjectiveC()();
      v69.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v68.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v67.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v33.super.isa = Data._bridgeToObjectiveC()().super.isa;
      v34.super.isa = Data._bridgeToObjectiveC()().super.isa;
      if (v80 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001C120(v27, v80);
      }

      v0 = v56;
      if (v13)
      {

        v36.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v36.super.isa = 0;
      }

      v63 = v56[87];
      v65 = v56[88];
      [objc_allocWithZone(DCCredentialCryptoKey) initWithIdentifier:v70 publicKey:v69.super.isa publicKeyIdentifier:v68.super.isa publicKeyCOSEKey:v67.super.isa keyType:2 keyUsage:3 progenitorKeyAttestation:v33.super.isa casdAttestation:v34.super.isa keyAuthorization:isa kskAttestation:v36.super.isa];

      sub_1000092BC(v74, v73);
      sub_1000092BC(v63, v65);

      sub_1000092BC(v76, v75);
      sub_1000092BC(v78, v77);

      sub_1000092BC(v31, v79);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v81[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v14 = v72 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 = v57;
      sub_10019B360(v57);
      sub_10001C120(v27, v80);
      v37 = v81[0];
      v17 = v71 + 88;
      result = v59;
      v16 = v58;
      if (v60 == v72 + 1)
      {
        v38 = v56[89];
        v39 = v56[88];
        v40 = v56[87];

        sub_1000092BC(v40, v39);

        goto LABEL_28;
      }
    }
  }

  v41 = v0[89];
  v42 = v0[88];
  v43 = v0[87];

  sub_1000092BC(v43, v42);

  v37 = _swiftEmptyArrayStorage;
LABEL_28:
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[95];
  v47 = v0[94];
  v48 = v0[74];
  v49 = v0[73];
  v50 = v0[72];

  sub_10016A118(v47, v46, v45, v44);
  sub_10019B2DC(v61);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v49 + 8))(v48, v50);

  v51 = v0[1];

  return v51(v37);
}

uint64_t sub_1001935BC(uint64_t a1)
{
  v2 = v1[67];
  v3 = v1[66];
  v4 = v1[65];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v3 + 8))(v2, v4);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Refreshing progenitor key designations before generating new presentment keys", v7, 2u);
  }

  v8 = v1[70];
  v9 = v1[66];
  v10 = v1[65];

  v11 = *(v9 + 8);
  v1[78] = v11;
  v11(v8, v10);
  v12 = swift_task_alloc();
  v1[79] = v12;
  *v12 = v1;
  v12[1] = sub_1001912E8;

  return sub_10012E30C(0, 0xF000000000000000, 1);
}

uint64_t sub_100193764(uint64_t a1)
{
  v2 = v1[78];
  v3 = v1[67];
  v4 = v1[65];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v4);
  v5 = [objc_opt_self() standardUserDefaults];
  v6._countAndFlagsBits = 0xD00000000000002CLL;
  v6._object = 0x80000001001BD9D0;
  LOBYTE(v3) = NSUserDefaults.internalBool(forKey:)(v6);

  if (v3)
  {
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "CredentialStorage foring presentment key generation failure", v9, 2u);
    }

    v10 = v1[78];
    v11 = v1[69];
    v12 = v1[65];
    v14 = v1[63];
    v13 = v1[64];
    v15 = v1[62];

    v10(v11, v12);
    (*(v14 + 104))(v13, enum case for DIPError.Code.internalError(_:), v15);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v1[73] + 8))(v1[74], v1[72]);

    v16 = v1[1];

    return v16();
  }

  else
  {
    v19 = v1[60];
    v18 = v1[61];
    v21 = v1[58];
    v20 = v1[59];
    v1[81] = *(v18 + 120);
    v22 = swift_allocObject();
    v1[82] = v22;
    v22[2] = v18;
    v22[3] = v21;
    v22[4] = v20;
    v22[5] = v19;
    v23 = swift_allocObject();
    v1[83] = v23;
    *(v23 + 16) = &unk_1001AEE68;
    *(v23 + 24) = v22;

    v24 = swift_task_alloc();
    v1[84] = v24;
    v25 = sub_100004E70(&qword_100203E70, &qword_1001AEE80);
    *v24 = v1;
    v24[1] = sub_10019182C;

    return AsyncCoreDataContainer.write<A>(_:)(v1 + 50, &unk_1001AEE78, v23, v25);
  }
}

uint64_t sub_100193BF0()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[89];
  sub_1000092BC(v0[87], v0[88]);

  sub_10016A118(v4, v3, v2, v1);
  (*(v0[63] + 104))(v0[64], enum case for DIPError.Code.internalError(_:), v0[62]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v0[73] + 8))(v0[74], v0[72]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100193E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(sub_100193EF4, 0, 0);
}

uint64_t sub_100193EF4()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v1;

  sub_100009708(v3, v1);
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = sub_10019AFCC;
  *(v7 + 24) = v6;

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_100194054;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v8, sub_10001AAC8, v7, &type metadata for () + 8);
}

uint64_t sub_100194054()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100194178;
  }

  else
  {

    v2 = sub_100058874;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100194178()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100194314(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = type metadata accessor for DIPError.Code();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100194400, 0, 0);
}

uint64_t sub_100194400()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[10] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;

  sub_100009708(v4, v3);
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = sub_10019AF04;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  v0[12] = v7;
  v8 = sub_100004E70(&qword_100201580, &qword_1001AB980);
  *v7 = v0;
  v7[1] = sub_10019455C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_10019AF68, v6, v8);
}

uint64_t sub_10019455C()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001946C4, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_1001946C4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100194860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v6[9] = v10;
  v6[10] = *(v10 - 8);
  v6[11] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[12] = v11;
  v6[13] = *(v11 - 8);
  v6[14] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[15] = v12;
  *v12 = v6;
  v12[1] = sub_1001949D4;

  return sub_100195094(a4, a5, a2);
}

uint64_t sub_1001949D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;

  if (v3)
  {

    v7 = v6[1];

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_100194B34, 0, 0);
  }
}

uint64_t sub_100194B34(uint64_t a1)
{
  v33 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[13];
  v5 = v1[14];
  v7 = v1[12];
  if (v4)
  {
    v9 = v1[6];
    v8 = v1[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v32);
    _os_log_impl(&_mh_execute_header, v2, v3, "calling generateSESPresentmentKey for %s", v10, 0xCu);
    sub_100005090(v11);
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[17];
  v13 = v1[18];
  v14 = v1[16];
  v29 = v1[10];
  v15 = v1[8];
  v30 = v1[9];
  v31 = v1[11];
  v16 = v1[6];
  v17 = v1[7];
  v19 = v1[4];
  v18 = v1[5];
  v20 = swift_allocObject();
  v1[19] = v20;
  v20[2] = v18;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v19;
  v20[6] = v15;
  v20[7] = v14;
  v20[8] = v12;
  v20[9] = v13;

  sub_100009708(v14, v12);
  v21 = swift_allocObject();
  v1[20] = v21;
  *(v21 + 16) = sub_10019B3E8;
  *(v21 + 24) = v20;
  v22 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v23 = *(v29 + 104);
  v24 = v13;
  v23(v31, v22, v30);

  v25 = swift_task_alloc();
  v1[21] = v25;
  v26 = sub_100004E70(&qword_100203E88, &qword_1001AEEA0);
  *v25 = v1;
  v25[1] = sub_100194DF4;
  v27 = v1[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1 + 2, v27, sub_10001BF74, v21, v26);
}

uint64_t sub_100194DF4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v3 = sub_100195000;
  }

  else
  {
    v5 = v2[10];
    v4 = v2[11];
    v6 = v2[9];

    (*(v5 + 8))(v4, v6);
    v2[23] = v2[2];
    v3 = sub_100194F74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100194F74()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 24);
  v3 = *(v0 + 128);
  *v2 = *(v0 + 184);
  *(v2 + 8) = v3;
  *(v2 + 24) = v1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100195000()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];

  sub_1000092BC(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100195094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[38] = v7;
  v4[39] = *(v7 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[44] = swift_task_alloc();
  v8 = type metadata accessor for DIPSignpost();
  v4[45] = v8;
  v4[46] = *(v8 - 8);
  v4[47] = swift_task_alloc();

  return _swift_task_switch(sub_1001952D4, 0, 0);
}

uint64_t sub_1001952D4()
{
  v1 = *(v0 + 312);
  v14 = *(v0 + 304);
  v15 = *(v0 + 344);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  static IDCSSignposts.storagePrepareProgenitorKeyMetadata.getter();
  DIPSignpost.init(_:)();
  v6 = swift_allocObject();
  *(v0 + 384) = v6;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v2;
  *(v0 + 392) = *(v2 + 16);
  v7 = swift_allocObject();
  *(v0 + 400) = v7;
  *(v7 + 16) = sub_10019B458;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  *(v0 + 648) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v1 + 104);
  *(v0 + 408) = v9;
  *(v0 + 416) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;

  v9(v15, v8, v14);

  v10 = swift_task_alloc();
  *(v0 + 424) = v10;
  type metadata accessor for DCCredentialPresentmentAuthPolicy(0);
  *v10 = v0;
  v10[1] = sub_100195494;
  v12 = *(v0 + 344);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 192, v12, sub_10001BF74, v7, v11);
}

uint64_t sub_100195494()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    (*(v2[39] + 8))(v2[43], v2[38]);

    v3 = sub_100195CFC;
  }

  else
  {
    v4 = v2[43];
    v5 = v2[38];
    v6 = v2[39];

    v7 = *(v6 + 8);
    v2[55] = v7;
    v2[56] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v2[57] = v2[24];
    v3 = sub_100195624;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100195624(uint64_t a1)
{
  v46 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v44 = *(v1 + 296);
    v5 = *(v1 + 264);
    v4 = *(v1 + 272);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45[0] = v7;
    *v6 = 136446210;
    v8 = DCCredentialPresentmentAuthPolicyToString();
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10010150C(v9, v11, v45);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating presentment key for auth policy %{public}s", v6, 0xCu);
    sub_100005090(v7);

    v13 = *(v4 + 8);
    v13(v44, v5);
  }

  else
  {
    v14 = *(v1 + 296);
    v15 = *(v1 + 264);
    v16 = *(v1 + 272);

    v13 = *(v16 + 8);
    v13(v14, v15);
  }

  *(v1 + 464) = v13;
  v17 = *(v1 + 432);
  v18 = sub_10019B478(*(v1 + 456));
  if (v17)
  {
LABEL_5:
    v20 = *(v1 + 368);
    v19 = *(v1 + 376);
    v21 = *(v1 + 360);
    (*(*(v1 + 248) + 104))(*(v1 + 256), enum case for DIPError.Code.internalError(_:), *(v1 + 240));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v20 + 8))(v19, v21);

    v22 = *(v1 + 8);

    return v22();
  }

  if (v18)
  {
    v24 = *(v1 + 408);
    v25 = *(v1 + 648);
    v26 = *(v1 + 336);
    v27 = *(v1 + 304);
    v28 = *(v1 + 224);
    v29 = swift_allocObject();
    *(v1 + 472) = v29;
    *(v29 + 16) = sub_10019B6C4;
    *(v29 + 24) = v28;

    v24(v26, v25, v27);

    v30 = swift_task_alloc();
    *(v1 + 480) = v30;
    *v30 = v1;
    v30[1] = sub_100195F24;
    v31 = *(v1 + 336);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v1 + 652, v31, sub_10014142C, v29, &_s7VersionON);
  }

  else
  {
    if (*(v1 + 456) != 1)
    {
      v36 = *(v1 + 248);
      v35 = *(v1 + 256);
      v37 = *(v1 + 240);
      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(79);
      v38._countAndFlagsBits = 0xD00000000000004DLL;
      v38._object = 0x80000001001BDAF0;
      String.append(_:)(v38);
      v39 = DCCredentialPresentmentAuthPolicyToString();
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      (*(v36 + 104))(v35, enum case for DIPError.Code.idcsInvalidActionForPresentmentAuthPolicy(_:), v37);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      goto LABEL_5;
    }

    v32 = *(*(v1 + 232) + 24);
    *(v1 + 600) = v32;
    type metadata accessor for ACLFetcher();
    inited = swift_initStackObject();
    *(v1 + 608) = inited;
    *(inited + 16) = v32;
    type metadata accessor for AppleIDVManager();

    sub_1000215BC((inited + 24));
    v34 = swift_task_alloc();
    *(v1 + 616) = v34;
    *v34 = v1;
    v34[1] = sub_100197E10;

    return sub_100005D10(1);
  }
}

uint64_t sub_100195CFC()
{

  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100195F24()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    (*(v2 + 440))(*(v2 + 336), *(v2 + 304));

    v3 = sub_1001966C0;
  }

  else
  {
    v4 = *(v2 + 440);
    v5 = *(v2 + 336);
    v6 = *(v2 + 304);

    v4(v5, v6);
    *(v2 + 653) = *(v2 + 652);
    v3 = sub_100196098;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100196098(uint64_t a1)
{
  if (!*(v1 + 653))
  {
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "legacy key found, migrating to v2", v16, 2u);
    }

    v17 = *(v1 + 464);
    v40 = *(v1 + 408);
    v18 = *(v1 + 648);
    v19 = *(v1 + 328);
    v20 = *(v1 + 304);
    v21 = *(v1 + 288);
    v22 = *(v1 + 264);
    v23 = *(v1 + 224);

    v17(v21, v22);
    v24 = swift_allocObject();
    *(v1 + 496) = v24;
    *(v24 + 16) = sub_10019B6FC;
    *(v24 + 24) = v23;

    v40(v19, v18, v20);

    v25 = swift_task_alloc();
    *(v1 + 504) = v25;
    v9 = sub_10019B718();
    *v25 = v1;
    v25[1] = sub_1001968E8;
    v10 = *(v1 + 328);
    v11 = sub_10001BF74;
    v12 = v1 + 200;
    v13 = v24;
    goto LABEL_7;
  }

  if (*(v1 + 653) == 1)
  {
    v2 = *(v1 + 408);
    v3 = *(v1 + 648);
    v4 = *(v1 + 320);
    v5 = *(v1 + 304);
    v6 = *(v1 + 224);
    v7 = swift_allocObject();
    *(v1 + 576) = v7;
    *(v7 + 16) = sub_10019B6E0;
    *(v7 + 24) = v6;

    v2(v4, v3, v5);

    v8 = swift_task_alloc();
    *(v1 + 584) = v8;
    v9 = sub_100004E70(&qword_100203E90, &qword_1001AEEA8);
    *v8 = v1;
    v8[1] = sub_1001975AC;
    v10 = *(v1 + 320);
    v11 = sub_10001C0A8;
    v12 = v1 + 144;
    v13 = v7;
LABEL_7:

    return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v10, v11, v13, v9);
  }

  defaultLogger()();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Invalid key type", v28, 2u);
  }

  v29 = *(v1 + 464);
  v30 = *(v1 + 280);
  v31 = *(v1 + 256);
  v32 = *(v1 + 264);
  v33 = *(v1 + 240);
  v34 = *(v1 + 248);

  v29(v30, v32);
  (*(v34 + 104))(v31, enum case for DIPError.Code.idcsInvalidKeyVersion(_:), v33);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v35 = *(v1 + 368);
  v36 = *(v1 + 376);
  v39 = *(v1 + 360);
  (*(*(v1 + 248) + 104))(*(v1 + 256), enum case for DIPError.Code.internalError(_:), *(v1 + 240));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v35 + 8))(v36, v39);

  v37 = *(v1 + 8);

  return v37();
}

uint64_t sub_1001966C0()
{

  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001968E8()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    (*(v2 + 440))(*(v2 + 328), *(v2 + 304));

    v3 = sub_100196DA0;
  }

  else
  {
    v4 = *(v2 + 440);
    v5 = *(v2 + 328);
    v6 = *(v2 + 304);

    v4(v5, v6);
    *(v2 + 520) = *(v2 + 200);
    v3 = sub_100196A5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100196A5C()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = [v1 aclData];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = sub_1001326E0(v4, v6, [v1 aclType]);
  v9 = v8;
  v10 = v2;
  v0[66] = v7;
  v0[67] = v8;
  v11 = v0[65];
  sub_1000092BC(v4, v6);
  if (v10)
  {

    v12 = v0[46];
    v13 = v0[47];
    v19 = v0[45];
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v12 + 8))(v13, v19);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = [v11 aclType];
    v17 = swift_task_alloc();
    v0[68] = v17;
    *v17 = v0;
    v17[1] = sub_100196FC8;
    v18 = v0[28];

    return sub_10012F470(v7, v9, v16, v18, 0);
  }
}

uint64_t sub_100196DA0()
{

  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100196FC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[69] = a1;
  v4[70] = a2;
  v4[71] = v2;

  if (v2)
  {
    v5 = sub_1001983B0;
  }

  else
  {
    v5 = sub_1001970E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001970E4()
{
  if (v0[70] >> 60 == 15)
  {
    v1 = v0[67];
    v2 = v0[66];
    v19 = v0[65];
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.progenitorKeyAttestationUnavailable(_:), v0[30]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v2, v1);

LABEL_5:
    v9 = v0[46];
    v8 = v0[47];
    v10 = v0[45];
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v9 + 8))(v8, v10);

    v11 = v0[1];

    return v11();
  }

  v3 = v0[71];
  type metadata accessor for SecAccessControl(0);
  v4 = static SecAccessControlRef.fromData(_:)();
  if (v3)
  {
    v5 = v0[67];
    v6 = v0[66];
    v7 = v0[65];
    sub_10001C120(v0[69], v0[70]);
    sub_1000092BC(v6, v5);

    goto LABEL_5;
  }

  v13 = v4;
  v14 = v0[65];
  sub_1000092BC(v0[66], v0[67]);

  v20 = v0[69];
  v21 = v0[70];
  v16 = v0[46];
  v15 = v0[47];
  v17 = v0[45];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v16 + 8))(v15, v17);

  v18 = v0[1];

  return v18(v20, v21, v13);
}

uint64_t sub_1001975AC()
{
  v2 = *v1;
  v2[74] = v0;

  v3 = v2[55];
  v4 = v2[40];
  v5 = v2[38];
  if (v0)
  {
    v3(v2[40], v2[38]);

    v6 = sub_100197BE8;
  }

  else
  {

    v3(v4, v5);
    v6 = sub_100197770;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100197770()
{
  v1 = v0[74];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[22];
  v5 = v0[23];
  v6 = sub_10002DA84(v0[18], v0[19], v3, v2, v4, v5);
  if (v1)
  {
    sub_10001C120(v4, v5);
    sub_1000092BC(v3, v2);

    v12 = v0[46];
    v11 = v0[47];
    v13 = v0[45];
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v12 + 8))(v11, v13);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v7 = v6;

    v21 = sub_10002E3C4(v7);
    v22 = v8;
    type metadata accessor for AppleIDVManager();

    sub_1000215BC(v0 + 13);
    v9 = *(v7 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey);
    v10 = *(v7 + OBJC_IVAR____TtC7idcredd13ProgenitorKey_publicKey + 8);
    sub_100009708(v9, v10);
    v20 = sub_100009310(v9, v10);
    sub_10001C120(v4, v5);
    sub_1000092BC(v3, v2);
    sub_1000092BC(v9, v10);

    sub_100005090(v0 + 13);
    v17 = v0[46];
    v16 = v0[47];
    v18 = v0[45];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v17 + 8))(v16, v18);

    v19 = v0[1];

    return v19(v21, v22, v20);
  }
}

uint64_t sub_100197BE8()
{

  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100197E10(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[78] = a1;
  v4[79] = a2;
  v4[80] = v2;

  if (v2)
  {
    v5 = sub_1001985E4;
  }

  else
  {
    v6 = v4[76];

    swift_setDeallocating();
    sub_100005090((v6 + 24));
    v5 = sub_100197F48;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100197F48()
{
  if (v0[79] >> 60 == 15)
  {
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.idcsInvalidPresentmentAuthenticationPolicy(_:), v0[30]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_5:
    v6 = v0[46];
    v5 = v0[47];
    v7 = v0[45];
    (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v6 + 8))(v5, v7);

    v8 = v0[1];

    return v8();
  }

  v1 = v0[80];
  type metadata accessor for SecAccessControl(0);
  v2 = static SecAccessControlRef.fromData(_:)();
  v3 = v0[79];
  v4 = v0[78];
  if (v1)
  {
    sub_10001C120(v4, v3);
    goto LABEL_5;
  }

  sub_10001C120(v4, v3);
  v11 = v0[46];
  v10 = v0[47];
  v12 = v0[45];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13(0, 0xC000000000000000, v2);
}

uint64_t sub_1001983B0()
{
  v1 = v0[65];
  sub_1000092BC(v0[66], v0[67]);

  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001985E4()
{
  v1 = v0[76];

  swift_setDeallocating();
  sub_100005090((v1 + 24));
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];
  (*(v0[31] + 104))(v0[32], enum case for DIPError.Code.internalError(_:), v0[30]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

void sub_100198820(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char **a9@<X8>)
{
  v54 = a7;
  v59 = a6;
  v60 = a5;
  v51 = a9;
  v15 = type metadata accessor for Logger();
  v67 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = sub_10016A520(a2, a3);
  if (!v9)
  {
    v62 = v20;
    v55 = v18;
    v63 = v15;
    v58 = a1;
    if (v60 < 1)
    {
LABEL_25:
      __break(1u);
    }

    else
    {
      v61 = (v67 + 8);
      v56 = " encoded public key: ";
      v23 = _swiftEmptyArrayStorage;
      v24 = 1;
      *&v22 = 134218242;
      v52 = v22;
      v53 = a4;
      v57 = v21;
      while (1)
      {
        sub_100198D9C(v21, a8, a4, v65);
        v67 = v9;
        if (v9)
        {
          goto LABEL_22;
        }

        v25 = v62;
        defaultLogger()();
        sub_10019B2A4(v65, v64);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        sub_10019B360(v65);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v64[0] = v29;
          *v28 = v52;
          *(v28 + 4) = v24;
          *(v28 + 12) = 2080;
          v30 = v65[0];

          v31 = a8;
          v32 = sub_10010150C(v30, *(&v30 + 1), v64);

          *(v28 + 14) = v32;
          a8 = v31;
          _os_log_impl(&_mh_execute_header, v26, v27, "[%ld] created a new presentment key with identifier %s", v28, 0x16u);
          sub_100005090(v29);

          a4 = v53;

          v33 = *v61;
          (*v61)(v62, v63);
        }

        else
        {

          v33 = *v61;
          (*v61)(v25, v63);
        }

        sub_10019B2A4(v65, v64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100101360(0, *(v23 + 2) + 1, 1, v23);
        }

        v35 = *(v23 + 2);
        v34 = *(v23 + 3);
        if (v35 >= v34 >> 1)
        {
          v23 = sub_100101360((v34 > 1), v35 + 1, 1, v23);
        }

        *(v23 + 2) = v35 + 1;
        v36 = &v23[88 * v35];
        v37 = v65[1];
        *(v36 + 2) = v65[0];
        *(v36 + 3) = v37;
        v38 = v65[2];
        v39 = v65[3];
        v40 = v65[4];
        *(v36 + 14) = v66;
        *(v36 + 5) = v39;
        *(v36 + 6) = v40;
        *(v36 + 4) = v38;
        v41 = [objc_opt_self() standardUserDefaults];
        v42._object = (v56 | 0x8000000000000000);
        v42._countAndFlagsBits = 0xD00000000000002CLL;
        v43 = NSUserDefaults.internalBool(forKey:)(v42);

        if (v43)
        {
          v44 = v55;
          defaultLogger()();
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v45, v46, "Sleeping after generating presentment key due to user defaults setting", v47, 2u);
            v44 = v55;
          }

          v33(v44, v63);
          [objc_opt_self() sleepForTimeInterval:5.0];
        }

        sub_10019B360(v65);
        if (v60 == v24)
        {
          break;
        }

        v48 = __OFADD__(v24++, 1);
        v21 = v57;
        v9 = v67;
        if (v48)
        {
          __break(1u);
          goto LABEL_25;
        }
      }

      v49 = v67;
      sub_100050240();
      if (v49)
      {
LABEL_22:

        return;
      }

      *v51 = v23;
    }
  }
}

uint64_t sub_100198D9C@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v45 = a1;
  v46 = a3;
  v44 = a4;
  v6 = type metadata accessor for COSEKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v10 - 8);
  v47 = type metadata accessor for DIPSignpost();
  v11 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.storageGenerateSESPresentmentKey.getter();
  DIPSignpost.init(_:)();
  v14 = sub_10002B9DC(a2);
  if (v4)
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v11 + 8))(v13, v47);
  }

  else
  {
    v15 = v14;
    v16 = v46;
    v42 = v7;
    v43 = v9;
    v41 = v6;
    v17 = sub_10002C3F4(v14);
    v19 = v18;
    type metadata accessor for StoredCryptoKey();
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v16 + 16)];
    sub_10005F7F4(v15);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v20 setAttestation:isa];

    [v45 addCryptoKeysObject:v20];
    type metadata accessor for CBOREncoder();
    swift_allocObject();
    v46 = CBOREncoder.init()();
    v22 = v43;
    sub_10002551C(v43);
    v40 = v17;
    v45 = v19;
    sub_1000E08AC(&qword_100202BE8, &type metadata accessor for COSEKey, &protocol conformance descriptor for COSEKey);
    v23 = v41;
    v24 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v25 = *(v42 + 8);
    v42 = v24;
    v43 = v26;
    v25(v22, v23);

    v27 = *(v15 + 24);
    v46 = *(v15 + 16);
    v41 = v27;
    v28 = *(v15 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey);
    v39 = *(v15 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKey + 8);
    v29 = v39;
    v31 = *(v15 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier);
    v30 = *(v15 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_publicKeyIdentifier + 8);

    sub_100009708(v28, v29);
    sub_100009708(v31, v30);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    result = (*(v11 + 8))(v13, v47);
    v33 = v44;
    v34 = v41;
    *v44 = v46;
    v33[1] = v34;
    *&v35 = v28;
    *(&v35 + 1) = v39;
    *&v36 = v31;
    *(&v36 + 1) = v30;
    *(v33 + 1) = v35;
    *(v33 + 2) = v36;
    v37 = v43;
    v33[6] = v42;
    v33[7] = v37;
    v38 = v45;
    v33[8] = v40;
    v33[9] = v38;
    v33[10] = v15;
  }

  return result;
}

void sub_100199208(uint64_t a1@<X2>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = sub_10016A520(a1, a2);
  if (!v3)
  {
    v6 = v5;
    sub_100059DE4();
    if (v7 >> 62)
    {
      v20 = v7;
      v21 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v20;
      if (v21)
      {
        goto LABEL_4;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v8 = *(v7 + 32);
      }

      v9 = v8;

      v10 = [v9 identifier];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = [v9 publicKeyIdentifier];
        if (v15)
        {
          v16 = v15;
          v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          *a3 = v12;
          a3[1] = v14;
          a3[2] = v17;
          a3[3] = v19;
          return;
        }

        v6 = v9;
      }

      else
      {
      }

      goto LABEL_14;
    }

LABEL_14:

    *a3 = 0u;
    *(a3 + 1) = 0u;
  }
}

unint64_t sub_1001993B4(Swift::String *a1)
{
  _StringGuts.grow(_:)(33);

  String.append(_:)(*a1);
  v2._countAndFlagsBits = 0x2063696C62757020;
  v2._object = 0xED0000203A79656BLL;
  String.append(_:)(v2);
  v3 = Data.base16EncodedString()();
  String.append(_:)(v3);

  return 0xD000000000000010;
}

unint64_t sub_100199468(Swift::String *a1)
{
  _StringGuts.grow(_:)(41);

  String.append(_:)(*a1);
  v2._countAndFlagsBits = 0xD000000000000015;
  v2._object = 0x80000001001BDA70;
  String.append(_:)(v2);
  v3 = Data.base16EncodedString()();
  String.append(_:)(v3);

  return 0xD000000000000010;
}

unint64_t sub_10019951C(Swift::String *a1, uint64_t a2, unint64_t a3)
{
  _StringGuts.grow(_:)(36);

  String.append(_:)(*a1);
  v5._object = 0x80000001001BDA50;
  v5._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v5);
  if (a3 >> 60 == 15)
  {
    object = 0xE500000000000000;
    countAndFlagsBits = 0x3E6C696E3CLL;
  }

  else
  {
    v8 = Data.base16EncodedString()();
    countAndFlagsBits = v8._countAndFlagsBits;
    object = v8._object;
  }

  v9 = object;
  String.append(_:)(*&countAndFlagsBits);

  return 0xD000000000000010;
}

void sub_100199600(uint64_t a1@<X1>, void *a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = sub_10016A520(a1, a2);
  if (!v3)
  {
    v6 = v5;
    v7 = [v5 options];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 presentmentAuthPolicy];

      if ((v9 & 0x8000000000000000) == 0)
      {
LABEL_6:
        *a3 = v9;
        return;
      }

      __break(1u);
    }

    v9 = 0;
    goto LABEL_6;
  }
}

void sub_10019969C(char *a1@<X8>)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v1)
  {
    if (v7)
    {
      v8 = v7;
      v9 = [v7 version];

      if (v9 == 2)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      if (v9 == 1)
      {
        v10 = 0;
      }

      *a1 = v10;
    }

    else
    {
      (*(v4 + 104))(v6, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_1001998C8(void *a1@<X8>)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (!v1)
  {
    v8 = v7;
    if (v7)
    {
      v9 = [v7 encryptedACL];
      if (v9)
      {
        v10 = v9;
        v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = [v8 aclType];
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v15 = v14;
          type metadata accessor for AppleIDVManager();
          sub_1000215BC(v22);
          sub_100009278(v22, v23);
          v24 = dispatch thunk of AppleIDVManaging.recoverPersistedACLBlob(from:)();
          v17 = v16;
          v18 = objc_allocWithZone(DCCredentialAuthACL);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v20 = [v18 initWithData:isa type:v15];
          sub_1000092BC(v11, v13);

          sub_1000092BC(v24, v17);
          sub_100005090(v22);
          *a1 = v20;
        }
      }

      else
      {
        (*(v4 + 104))(v6, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      (*(v4 + 104))(v6, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_100199D00(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
  if (v1)
  {
    return;
  }

  if (!v7)
  {
    (*(v4 + 104))(v6, enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v3);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v25[1] = 0;
  v26 = v7;
  v8 = [v7 progenitorKey];
  if (!v8)
  {
LABEL_11:
    (*(v4 + 104))(v6, enum case for DIPError.Code.idcsMissingProgenitorKeyFromACL(_:), v3);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v9 = v8;
  v10 = [v8 identifier];
  if (!v10)
  {

    goto LABEL_11;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [v9 keyBlob];
  if (!v15)
  {

    goto LABEL_11;
  }

  v16 = v15;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *a1 = v12;
  a1[1] = v14;
  a1[2] = v17;
  a1[3] = v19;
  sub_100009708(v17, v19);
  v20 = [v9 publicKeyIdentifier];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    sub_1000092BC(v17, v19);
  }

  else
  {

    sub_1000092BC(v17, v19);
    v22 = 0;
    v24 = 0xF000000000000000;
  }

  a1[4] = v22;
  a1[5] = v24;
}

void sub_10019A120(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v95 = a6;
  v91 = a5;
  v9 = type metadata accessor for DIPError.Code();
  v90 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Logger();
  v89 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v73[-v16];
  v18 = v94;
  v19 = sub_10016A520(a3, a4);
  if (v18)
  {
    return;
  }

  v87 = v9;
  v88 = v11;
  v81 = a3;
  v82 = a4;
  v84 = v17;
  v20 = v19;
  sub_10005A084();
  v22 = v21;
  if (v21 >> 62)
  {
LABEL_84:
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v91;
  v79 = v15;
  v80 = a1;
  v83 = v20;
  v78 = v12;
  v85 = v18;
  if (!v23)
  {
LABEL_65:

    v52 = sub_10005947C();
    if (v52 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = v95;
    v55 = v87;
    v29 = v88;
    v20 = v90;

    if (v53 > 1)
    {
      (v20[13].isa)(v29, enum case for DIPError.Code.featureNotSupported(_:), v55);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v56 = sub_100032F08(v24, v54);
    type metadata accessor for StoredCryptoKey();
    v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v80 + 2)];
    sub_10005FBEC(v56);
    v33 = sub_10005947C();
    if (v33 >> 62)
    {
LABEL_87:
      v69 = v33;
      v70 = _CocoaArrayWrapper.endIndex.getter();
      v33 = v69;
      if (v70)
      {
        goto LABEL_70;
      }
    }

    else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_70:
      if ((v33 & 0xC000000000000001) != 0)
      {
        goto LABEL_97;
      }

      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v57 = *(v33 + 32);
        goto LABEL_89;
      }

      __break(1u);
      goto LABEL_99;
    }

    v57 = 0;
    goto LABEL_89;
  }

  v15 = 0;
  if (v91)
  {
    v25 = 0;
  }

  else
  {
    v25 = v95 == 0xC000000000000000;
  }

  v26 = !v25;
  v77 = v26;
  v86 = v95 >> 62;
  v75 = HIDWORD(v91) - v91;
  v93 = v22 & 0xFFFFFFFFFFFFFF8;
  v94 = v22 & 0xC000000000000001;
  v27 = __OFSUB__(HIDWORD(v91), v91);
  v74 = v27;
  v76 = BYTE6(v95);
  v92 = v95 >> 60;
  while (1)
  {
    if (v94)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v93 + 16))
      {
        goto LABEL_83;
      }

      v28 = *(v22 + 8 * v15 + 32);
    }

    v29 = v28;
    a1 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v30 = [v28 publicKeyIdentifier];
    if (!v30)
    {
      v20 = 0;
      v32 = 0xF000000000000000;
LABEL_26:
      sub_100009708(v24, v95);

      if (v92 > 0xE)
      {

        sub_10001C120(v20, v32);
        goto LABEL_79;
      }

LABEL_27:
      sub_10001C120(v20, v32);
      v34 = v24;
      v35 = v95;
LABEL_28:
      sub_10001C120(v34, v35);
      goto LABEL_29;
    }

    v12 = v30;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (v32 >> 60 == 15)
    {
      goto LABEL_26;
    }

    if (v92 > 0xE)
    {
      sub_100009708(v24, v95);

      goto LABEL_27;
    }

    v36 = v32 >> 62;
    v37 = v86;
    if (v32 >> 62 == 3)
    {
      if (v20)
      {
        v38 = 0;
      }

      else
      {
        v38 = v32 == 0xC000000000000000;
      }

      v40 = !v38 || v86 < 3;
      if (((v40 | v77) & 1) == 0)
      {
        sub_100009708(0, 0xC000000000000000);
        sub_100032EBC(0, 0xC000000000000000);

        sub_10001C120(0, 0xC000000000000000);
        sub_10001C120(0, 0xC000000000000000);
        v20 = 0;
        goto LABEL_77;
      }

      v41 = 0;
LABEL_56:
      v37 = v86;
      if (v86 <= 1)
      {
        goto LABEL_57;
      }

      goto LABEL_49;
    }

    if (!v36)
    {
      v41 = BYTE6(v32);
      if (v86 <= 1)
      {
        goto LABEL_57;
      }

      goto LABEL_49;
    }

    if (v36 != 1)
    {
      break;
    }

    LODWORD(v41) = HIDWORD(v20) - v20;
    if (__OFSUB__(HIDWORD(v20), v20))
    {
      goto LABEL_96;
    }

    v41 = v41;
    if (v86 <= 1)
    {
LABEL_57:
      v48 = v37;
      v45 = v76;
      if (v48)
      {
        v45 = v75;
        if (v74)
        {
          goto LABEL_86;
        }
      }

      goto LABEL_59;
    }

LABEL_49:
    if (v37 != 2)
    {
      if (!v41)
      {
        goto LABEL_75;
      }

LABEL_63:
      v12 = v95;
      sub_100009708(v24, v95);
      sub_100032EBC(v20, v32);

      sub_10001C120(v24, v12);
      sub_10001C120(v20, v32);
      v34 = v20;
      v35 = v32;
      goto LABEL_28;
    }

    v43 = *(v24 + 16);
    v42 = *(v24 + 24);
    v44 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v44)
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

LABEL_59:
    if (v41 != v45)
    {
      goto LABEL_63;
    }

    if (v41 < 1)
    {
LABEL_75:
      v58 = v95;
      sub_100009708(v24, v95);
      sub_100032EBC(v20, v32);

      sub_10001C120(v24, v58);
      sub_10001C120(v20, v32);
LABEL_77:
      sub_10001C120(v20, v32);
LABEL_78:

LABEL_79:
      v59 = v84;
      v60 = v82;
      defaultLogger()();
      v61 = v95;
      sub_100009708(v24, v95);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.info.getter();
      sub_1000092BC(v24, v61);

      v64 = os_log_type_enabled(v62, v63);
      v65 = v78;
      if (v64)
      {
        v66 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *v66 = 136315394;
        v67 = Data.base16EncodedString()();
        v68 = sub_10010150C(v67._countAndFlagsBits, v67._object, &v96);

        *(v66 + 4) = v68;
        *(v66 + 12) = 2080;
        *(v66 + 14) = sub_10010150C(v81, v60, &v96);
        _os_log_impl(&_mh_execute_header, v62, v63, "Public key identifier %s already present on credential %s; not adding again", v66, 0x16u);
        swift_arrayDestroy();

        (*(v89 + 8))(v84, v65);
      }

      else
      {

        (*(v89 + 8))(v59, v65);
      }

      return;
    }

    v49 = v24;
    v50 = v95;
    sub_100009708(v49, v95);
    sub_100032EBC(v20, v32);
    sub_100032EBC(v91, v50);
    v18 = v85;
    v12 = sub_100100288(v20, v32, v91, v50);
    v85 = v18;

    sub_10001C120(v20, v32);
    v51 = v50;
    v24 = v91;
    sub_10001C120(v91, v51);
    sub_10001C120(v20, v32);
    if (v12)
    {
      goto LABEL_78;
    }

LABEL_29:
    ++v15;
    if (a1 == v23)
    {
      goto LABEL_65;
    }
  }

  isa = v20[2].isa;
  v46 = v20[3].isa;
  v44 = __OFSUB__(v46, isa);
  v41 = v46 - isa;
  if (!v44)
  {
    goto LABEL_56;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_89:

  [v32 setPayload:v57];

  defaultLogger()();
  v20 = v83;
  v29 = Logger.logObject.getter();
  LOBYTE(v22) = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v22))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    v71 = sub_10005947C();
    if (!(v71 >> 62))
    {
      v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_92;
    }

LABEL_99:
    v72 = _CocoaArrayWrapper.endIndex.getter();
LABEL_92:

    *(v24 + 4) = v72;

    _os_log_impl(&_mh_execute_header, v29, v22, "CredentialStorage+PresentmentKey: credential.allPayloads.count %ld", v24, 0xCu);
  }

  else
  {

    v29 = v20;
  }

  (*(v89 + 8))(v79, v78);
  [v20 addCryptoKeysObject:v32];
  sub_100050240();
}

uint64_t sub_10019ABBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, char **a4@<X8>)
{
  v36 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if ((sub_1000A0DEC(42, 0xE100000000000000, v11) & 1) != 0 || (v12 = *(v11 + 16)) == 0)
  {
    v13 = _swiftEmptyArrayStorage;
  }

  else
  {
    v29 = v10;
    v30 = v8;
    v33 = v7;
    v31 = a4;
    v13 = sub_100101488(v12, 0);
    v32 = sub_10012261C(&v35, v13 + 4, v12, v11);
    v14 = v35;

    result = sub_1000BAE9C(v14);
    if (v32 != v12)
    {
      __break(1u);
      return result;
    }

    v8 = v30;
    a4 = v31;
    v7 = v33;
    v10 = v29;
  }

  v16 = a3;
  v17 = v34;
  v18 = sub_100055E94(v36, a3, v13);

  if (!v17)
  {
    if (!*(v18 + 2))
    {
      v34 = 0;

      defaultLogger()();
      v19 = v36;
      sub_100009708(v36, a3);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      sub_1000092BC(v19, v16);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v35 = v23;
        *v22 = 136315138;
        v24 = Data.base16EncodedString()();
        v33 = v7;
        v25 = v10;
        v26 = v8;
        v27 = sub_10010150C(v24._countAndFlagsBits, v24._object, &v35);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "No credentials found with public key identifier %s", v22, 0xCu);
        sub_100005090(v23);

        result = (*(v26 + 8))(v25, v33);
      }

      else
      {

        result = (*(v8 + 8))(v10, v7);
      }

      v18 = _swiftEmptyArrayStorage;
    }

    *a4 = v18;
  }

  return result;
}

uint64_t sub_10019AEC4()
{

  sub_1000092BC(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10019AF24@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10019AF84()
{

  sub_1000092BC(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10019AFF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10019B030(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000104D4;

  return sub_100194860(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10019B0F8(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000105C8;

  return sub_1000BACE0(a1, a2, v6);
}

uint64_t sub_10019B1C8(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10019B234(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100203E80, &qword_1001AEE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019B2DC(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100203E80, &qword_1001AEE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019B390()
{

  sub_1000092BC(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10019B410()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10019B478(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v7 = 0;
  }

  else if (a1 == 2)
  {
    v7 = 1;
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    v8 = v4;
    _StringGuts.grow(_:)(79);
    v9._countAndFlagsBits = 0xD00000000000004DLL;
    v9._object = 0x80000001001BDAF0;
    String.append(_:)(v9);
    v10 = DCCredentialPresentmentAuthPolicyToString();
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    (*(v3 + 104))(v6, enum case for DIPError.Code.idcsInvalidActionForPresentmentAuthPolicy(_:), v8);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v7 & 1;
}

unint64_t sub_10019B718()
{
  result = qword_100203E98;
  if (!qword_100203E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100203E98);
  }

  return result;
}

uint64_t sub_10019B774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10019B7BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10019B80C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10019B830(uint64_t a1, int a2)
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

uint64_t sub_10019B878(uint64_t result, int a2, int a3)
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

uint64_t sub_10019B8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  DIPError.Code.init(rawValue:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10008C18C(v5);
    return -5000;
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 88))(v10, v6);
  if (v14 == enum case for DIPError.Code.missingEntitlement(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for DIPError.Code.invalidStoredData(_:))
  {
    goto LABEL_7;
  }

  if (v14 == enum case for DIPError.Code.idcsUnauthorizedPartition(_:))
  {
LABEL_5:
    (*(v7 + 8))(v12, v6);
    return -5002;
  }

  if (v14 == enum case for DIPError.Code.idcsUnknownCredential(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5015;
  }

  if (v14 == enum case for DIPError.Code.idcsInvalidPayload(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5101;
  }

  if (v14 == enum case for DIPError.Code.idcsUnsupportedPayloadFormat(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5102;
  }

  if (v14 == enum case for DIPError.Code.idcsIncorrectCredentialState(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5200;
  }

  if (v14 == enum case for DIPError.Code.idcsMissingPayload(_:) || v14 == enum case for DIPError.Code.idcsMissingKeySigningKey(_:) || v14 == enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:) || v14 == enum case for DIPError.Code.idcsMissingPresentmentKey(_:) || v14 == enum case for DIPError.Code.idcsInvalidPublicKey(_:))
  {
LABEL_7:
    (*(v7 + 8))(v12, v6);
    return -5004;
  }

  else if (v14 == enum case for DIPError.Code.idcsInvalidCredentialStateTransition(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5201;
  }

  else if (v14 == enum case for DIPError.Code.idcsPublicKeyIdentifierAlreadyExists(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5016;
  }

  else if (v14 == enum case for DIPError.Code.idcsMisformattedIssuerAuthCerts(_:) || v14 == enum case for DIPError.Code.idcsUnknownIssuerAuthAlgorithm(_:) || v14 == enum case for DIPError.Code.idcsMisformattedIssuerAuthSignature(_:) || v14 == enum case for DIPError.Code.idcsInvalidIssuerAuthSignature(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5104;
  }

  else if (v14 == enum case for DIPError.Code.idcsPayloadRequiresAuth(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5017;
  }

  else if (v14 == enum case for DIPError.Code.idcsInvalidPayloadAuth(_:))
  {
    (*(v7 + 8))(v12, v6);
    return -5018;
  }

  else
  {
    if (v14 != enum case for DIPError.Code.idcsPayloadPresentmentKeyMismatch(_:))
    {
      v15 = *(v7 + 8);
      v15(v12, v6);
      v15(v10, v6);
      return -5000;
    }

    (*(v7 + 8))(v12, v6);
    return -5105;
  }
}

id sub_10019BFAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v96 = a1;
  v5 = type metadata accessor for Logger();
  v94 = *(v5 - 8);
  v95 = v5;
  __chkstk_darwin(v5);
  v93 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnyCodableDictionary();
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v83 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyCodableArray();
  v87 = *(v9 - 8);
  v88 = v9;
  __chkstk_darwin(v9);
  v86 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DateComponents();
  v89 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ISO23220.BirthDate();
  v90 = *(v14 - 8);
  v91 = v14;
  __chkstk_darwin(v14);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v92 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AnyCodable();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v23, a3, v20);
  v24 = (*(v21 + 88))(v23, v20);
  if (v24 == enum case for AnyCodable.BOOLean(_:))
  {
    (*(v21 + 96))(v23, v20);
    v25 = *v23;
    v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v27 = String._bridgeToObjectiveC()();

    v28 = [v26 initWithElementIdentifier:v27 BOOLValue:v25];

    (*(v21 + 8))(a3, v20);
    return v28;
  }

  v82 = a3;
  if (v24 == enum case for AnyCodable.integer(_:))
  {
    (*(v21 + 96))(v23, v20);
    v29 = *v23;
    v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v31 = String._bridgeToObjectiveC()();

    v28 = [v30 initWithElementIdentifier:v31 intValue:v29];

    (*(v21 + 8))(v82, v20);
    return v28;
  }

  v32 = v21;
  if (v24 != enum case for AnyCodable.unsignedInteger(_:) && v24 != enum case for AnyCodable.float(_:))
  {
    if (v24 == enum case for AnyCodable.double(_:))
    {
      (*(v21 + 96))(v23, v20);
      v33 = *v23;
      v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v35 = String._bridgeToObjectiveC()();

      v28 = [v34 initWithElementIdentifier:v35 doubleValue:v33];

LABEL_9:
      (*(v32 + 8))(v82, v20);
      return v28;
    }

    if (v24 == enum case for AnyCodable.date(_:))
    {
      v36 = *(v21 + 96);
      v37 = v20;
      v36(v23, v20);
      v38 = v92;
      (*(v92 + 32))(v19, v23, v17);
      v39 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v40 = String._bridgeToObjectiveC()();

      isa = Date._bridgeToObjectiveC()().super.isa;
      v28 = [v39 initWithElementIdentifier:v40 dateValue:isa];

      (*(v32 + 8))(v82, v37);
      (*(v38 + 8))(v19, v17);
      return v28;
    }

    if (v24 == enum case for AnyCodable.birthDate(_:))
    {
      v42 = *(v21 + 96);
      v81 = v20;
      v42(v23, v20);
      v43 = v90;
      v44 = v91;
      (*(v90 + 32))(v16, v23, v91);
      v45 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v46 = String._bridgeToObjectiveC()();

      ISO23220.BirthDate.dateComponents.getter();
      v47 = DateComponents._bridgeToObjectiveC()().super.isa;
      (*(v89 + 8))(v13, v11);
      v28 = [v45 initWithElementIdentifier:v46 birthDateValue:v47];

      (*(v32 + 8))(v82, v81);
      (*(v43 + 8))(v16, v44);
      return v28;
    }

    if (v24 == enum case for AnyCodable.string(_:))
    {
      (*(v21 + 96))(v23, v20);
      v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v49 = String._bridgeToObjectiveC()();

      v50 = String._bridgeToObjectiveC()();

      v28 = [v48 initWithElementIdentifier:v49 stringValue:v50];

      goto LABEL_9;
    }

    v51 = v20;
    if (v24 == enum case for AnyCodable.array(_:))
    {
      (*(v21 + 96))(v23, v20);
      v53 = v86;
      v52 = v87;
      v54 = v88;
      (*(v87 + 32))(v86, v23, v88);
      v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v56 = String._bridgeToObjectiveC()();

      v57 = AnyCodableArray.asNSArray()();
      sub_10019E22C(v57);

      v58 = Array._bridgeToObjectiveC()().super.isa;

      v28 = [v55 initWithElementIdentifier:v56 arrayValue:v58];

      (*(v21 + 8))(v82, v51);
      (*(v52 + 8))(v53, v54);
      return v28;
    }

    if (v24 == enum case for AnyCodable.dictionary(_:))
    {
      (*(v21 + 96))(v23, v20);
      v60 = v83;
      v59 = v84;
      v61 = v85;
      (*(v84 + 32))(v83, v23, v85);
      v62 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v63 = String._bridgeToObjectiveC()();

      v64 = AnyCodableDictionary.asNSDictionary()();
      sub_10019E3F8(v64);

      v65 = Dictionary._bridgeToObjectiveC()().super.isa;

      v28 = [v62 initWithElementIdentifier:v63 dictionaryValue:v65];

      (*(v32 + 8))(v82, v51);
      (*(v59 + 8))(v60, v61);
      return v28;
    }

    if (v24 != enum case for AnyCodable.integerKeyedDictionary(_:) && v24 == enum case for AnyCodable.data(_:))
    {
      (*(v21 + 96))(v23, v20);
      v66 = *v23;
      v67 = v23[1];
      v68 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v69 = String._bridgeToObjectiveC()();

      v70 = Data._bridgeToObjectiveC()().super.isa;
      v28 = [v68 initWithElementIdentifier:v69 dataValue:v70];
      sub_1000092BC(v66, v67);

      (*(v32 + 8))(v82, v20);
      return v28;
    }

    (*(v21 + 8))(v23, v20);
  }

  v71 = v93;
  defaultLogger()();

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v97 = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_10010150C(v96, a2, &v97);
    _os_log_impl(&_mh_execute_header, v72, v73, "Creating DCCredentialElement from unknown value type for element identifier %s", v74, 0xCu);
    sub_100005090(v75);
  }

  (*(v94 + 8))(v71, v95);
  v76 = v82;
  v77 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v78 = String._bridgeToObjectiveC()();

  v28 = [v77 initWithElementIdentifier:v78];

  (*(v32 + 8))(v76, v20);
  return v28;
}

void sub_10019CC78(uint64_t a1@<X8>)
{
  v2 = v1;
  v200 = a1;
  v196 = type metadata accessor for Logger();
  v184 = *(v196 - 8);
  v3 = __chkstk_darwin(v196);
  *&v188 = &v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v193 = (&v176 - v6);
  __chkstk_darwin(v5);
  v192 = &v176 - v7;
  v8 = sub_100004E70(&qword_100202988, &unk_1001AD140);
  v9 = __chkstk_darwin(v8 - 8);
  v185 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v198 = &v176 - v11;
  v199 = type metadata accessor for AnyCodable();
  v197 = *(v199 - 8);
  v12 = __chkstk_darwin(v199);
  v183 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v182 = &v176 - v15;
  v16 = __chkstk_darwin(v14);
  v195 = &v176 - v17;
  __chkstk_darwin(v16);
  v194 = &v176 - v18;
  v191 = type metadata accessor for ISO23220.BirthDate();
  *&v190 = *(v191 - 1);
  v19 = __chkstk_darwin(v191);
  v187 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v186 = &v176 - v21;
  v22 = sub_100004E70(&qword_100203D18, &qword_1001AEDF8);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v176 - v26;
  v28 = type metadata accessor for DateComponents();
  *&v189 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v31 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v176 - v32;
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v176 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = [v2 stringValue];
  if (v38)
  {
    v39 = v38;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = &type metadata for String;
LABEL_5:
    *(&v215 + 1) = v43;
    *&v214 = v40;
    *(&v214 + 1) = v42;
    goto LABEL_6;
  }

  v180 = v33;
  v181 = v35;
  v177 = v31;
  v178 = v25;
  v179 = v27;
  v44 = [v2 dataValue];
  if (v44)
  {
    v45 = v44;
    v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v46;

    v43 = &type metadata for Data;
    goto LABEL_5;
  }

  v47 = [v2 dateValue];
  if (v47)
  {
    v48 = v47;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    *(&v215 + 1) = v34;
    v49 = sub_10001A9A4(&v214);
    v50 = v181;
    (*(v181 + 16))(v49, v37, v34);
    AnyCodable.init(value:)();
    (*(v50 + 8))(v37, v34);
    return;
  }

  v51 = [v2 birthDateValue];
  if (v51)
  {
    v52 = v180;
    v53 = v51;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = v189;
    v55 = v28;
    (*(v189 + 16))(v177, v52, v28);
    v56 = v179;
    ISO23220.BirthDate.init(dateComponents:)();
    v57 = v178;
    sub_10019E780(v56, v178);
    v58 = v190;
    v59 = v191;
    v60 = (*(v190 + 48))(v57, 1, v191);
    v62 = v199;
    v61 = v200;
    if (v60 == 1)
    {
      sub_10000A0D4(v56, &qword_100203D18, &qword_1001AEDF8);
      (*(v54 + 8))(v52, v55);
      (*(v197 + 56))(v61, 1, 1, v62);
    }

    else
    {
      v68 = v57;
      v69 = v186;
      (*(v58 + 32))(v186, v68, v59);
      (*(v58 + 16))(v187, v69, v59);
      AnyCodable.init(value:)();
      (*(v58 + 8))(v69, v59);
      sub_10000A0D4(v56, &qword_100203D18, &qword_1001AEDF8);
      (*(v54 + 8))(v180, v55);
      (*(v197 + 56))(v61, 0, 1, v62);
    }

    return;
  }

  v63 = [v2 numberValue];
  v65 = v199;
  v64 = v200;
  if (v63)
  {
    v198 = v63;
    v66 = [v2 numericTypeHint];
    if (v66 == 3)
    {
      v102 = [v198 BOOLValue];
      *(&v215 + 1) = &type metadata for Bool;
      LOBYTE(v214) = v102;
    }

    else if (v66 == 2)
    {
      [v198 doubleValue];
      *(&v215 + 1) = &type metadata for Double;
      *&v214 = v101;
    }

    else
    {
      if (v66 != 1)
      {
        (*(v197 + 56))(v64, 1, 1, v65);
        v103 = v198;

        return;
      }

      v67 = [v198 integerValue];
      *(&v215 + 1) = &type metadata for Int;
      *&v214 = v67;
    }

    AnyCodable.init(value:)();

    return;
  }

  v70 = [v2 arrayValue];
  v176 = v2;
  if (v70)
  {
    v71 = v70;
    v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v74 = *(v72 + 16);
    v75 = v196;
    if (!v74)
    {
LABEL_82:

      *(&v215 + 1) = type metadata accessor for AnyCodableArray();
      sub_10001A9A4(&v214);
      AnyCodableArray.init(value:)();
      goto LABEL_6;
    }

    v76 = v72 + 32;
    v77 = v198;
    *&v190 = v197 + 48;
    *&v189 = v197 + 32;
    v187 = (v197 + 16);
    v185 = v72;
    v186 = (v197 + 8);
    v191 = (v184 + 1);
    v193 = _swiftEmptyArrayStorage;
    *&v73 = 136315138;
    v188 = v73;
    v78 = v192;
    while (1)
    {
      sub_10000B558(v76, &v206);
      if (swift_dynamicCast())
      {
        v214 = v209;
        v215 = v210;
        *&v216[0] = v211;
        *(&v210 + 1) = &type metadata for AnyHashable;
        *&v209 = swift_allocObject();
        sub_100112864(&v214, v209 + 16);
        AnyCodable.init(value:)();
        if ((*v190)(v77, 1, v65) != 1)
        {
          v93 = *v189;
          v94 = v194;
          (*v189)();
          (*v187)(v195, v94, v65);
          v95 = v193;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_100100FDC(0, v95[2] + 1, 1, v95);
          }

          v96 = v197;
          v98 = v95[2];
          v97 = v95[3];
          v193 = v95;
          if (v98 >= v97 >> 1)
          {
            v100 = sub_100100FDC((v97 > 1), v98 + 1, 1, v193);
            v96 = v197;
            v193 = v100;
          }

          (*(v96 + 8))(v194, v65);
          sub_1001128C0(&v214);
          v99 = v193;
          v193[2] = v98 + 1;
          v93(&v99[((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v98], v195, v65);
          goto LABEL_22;
        }

        sub_1001128C0(&v214);
        v79 = v77;
        v80 = &qword_100202988;
        v81 = &unk_1001AD140;
      }

      else
      {
        *&v211 = 0;
        v209 = 0u;
        v210 = 0u;
        v79 = &v209;
        v80 = &unk_100203EA0;
        v81 = &unk_1001AF1F8;
      }

      sub_10000A0D4(v79, v80, v81);
      defaultLogger()();
      v82 = v176;
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *&v214 = v86;
        *v85 = v188;
        v87 = [v82 elementIdentifier];
        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v89;

        v91 = v88;
        v65 = v199;
        v92 = sub_10010150C(v91, v90, &v214);

        *(v85 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v83, v84, "Cannot convert value in array %s to hashable", v85, 0xCu);
        sub_100005090(v86);
        v75 = v196;

        v78 = v192;
      }

      (*v191)(v78, v75);
LABEL_22:
      v76 += 32;
      --v74;
      v77 = v198;
      if (!v74)
      {
        goto LABEL_82;
      }
    }
  }

  v104 = [v2 dictionaryValue];
  v105 = v196;
  v106 = v184;
  if (!v104)
  {
    v175 = *(v197 + 56);

    v175(v64, 1, 1, v65);
    return;
  }

  v107 = v104;
  v108 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v187 = sub_10010D23C(_swiftEmptyArrayStorage);
  v110 = *(v108 + 64);
  v192 = (v108 + 64);
  v111 = 1 << *(v108 + 32);
  v112 = -1;
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  v113 = v112 & v110;
  v114 = (v111 + 63) >> 6;
  v194 = v108;
  v195 = (v106 + 1);
  v191 = (v197 + 48);
  v186 = (v197 + 32);
  v184 = (v197 + 16);
  v180 = (v197 + 40);
  v181 = v197 + 8;
  *&v109 = 136315138;
  v189 = v109;
  *&v109 = 136315394;
  v190 = v109;
  v115 = v188;
  v116 = v193;
  v117 = 0;
  if (!v113)
  {
LABEL_46:
    if (v114 <= (v117 + 1))
    {
      v119 = v117 + 1;
    }

    else
    {
      v119 = v114;
    }

    v120 = v119 - 1;
    while (1)
    {
      v118 = (v117 + 1);
      if (__OFADD__(v117, 1))
      {
        break;
      }

      if (v118 >= v114)
      {
        v113 = 0;
        v213 = 0;
        v211 = 0u;
        v212 = 0u;
        v209 = 0u;
        v210 = 0u;
        goto LABEL_54;
      }

      v113 = *&v192[8 * v118];
      ++v117;
      if (v113)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  while (1)
  {
    v118 = v117;
LABEL_53:
    v121 = __clz(__rbit64(v113));
    v113 &= v113 - 1;
    v122 = v121 | (v118 << 6);
    v123 = v194;
    sub_100112864(*(v194 + 6) + 40 * v122, &v206);
    sub_10000B558(*(v123 + 7) + 32 * v122, &v201);
    v209 = v206;
    v210 = v207;
    *&v211 = v208;
    sub_100009268(&v201, (&v211 + 8));
    v120 = v118;
LABEL_54:
    v216[0] = v211;
    v216[1] = v212;
    v217 = v213;
    v214 = v209;
    v215 = v210;
    if (!*(&v210 + 1))
    {
      break;
    }

    v209 = v214;
    v210 = v215;
    *&v211 = *&v216[0];
    sub_100009268((v216 + 8), v205);
    sub_100112864(&v209, &v206);
    if (swift_dynamicCast())
    {
      v198 = v120;
      v124 = v201;
      sub_10000B558(v205, &v204);
      if ((swift_dynamicCast() & 1) == 0)
      {

        v203 = 0;
        v201 = 0u;
        v202 = 0u;
        v126 = &v201;
        v127 = &unk_100203EA0;
        v128 = &unk_1001AF1F8;
        goto LABEL_62;
      }

      v206 = v201;
      v207 = v202;
      v208 = v203;
      *(&v202 + 1) = &type metadata for AnyHashable;
      *&v201 = swift_allocObject();
      sub_100112864(&v206, v201 + 16);
      v125 = v185;
      AnyCodable.init(value:)();
      if ((*v191)(v125, 1, v199) == 1)
      {
        sub_1001128C0(&v206);

        v126 = v125;
        v127 = &qword_100202988;
        v128 = &unk_1001AD140;
LABEL_62:
        sub_10000A0D4(v126, v127, v128);
        defaultLogger()();
        v143 = v176;
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          *&v206 = v147;
          *v146 = v189;
          v148 = [v143 elementIdentifier];
          v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v151 = v150;

          v152 = sub_10010150C(v149, v151, &v206);
          v115 = v188;

          *(v146 + 4) = v152;
          _os_log_impl(&_mh_execute_header, v144, v145, "Cannot convert value in dictionary %s to hashable", v146, 0xCu);
          sub_100005090(v147);
          v116 = v193;
        }

        v105 = v196;
        (*v195)(v116, v196);
        sub_100005090(v205);
        sub_1001128C0(&v209);
        v117 = v198;
        if (!v113)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v153 = *v186;
        v154 = v182;
        v155 = v125;
        v156 = v199;
        (*v186)(v182, v155, v199);
        (*v184)(v183, v154, v156);
        v157 = v187;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v201 = v157;
        v159 = sub_100099644(v124, *(&v124 + 1));
        v161 = *(v157 + 2);
        v162 = (v160 & 1) == 0;
        v163 = __OFADD__(v161, v162);
        v164 = v161 + v162;
        if (v163)
        {
          goto LABEL_88;
        }

        v165 = v160;
        if (*(v157 + 3) < v164)
        {
          sub_100108DE8(v164, isUniquelyReferenced_nonNull_native);
          v159 = sub_100099644(v124, *(&v124 + 1));
          if ((v165 & 1) != (v166 & 1))
          {
            goto LABEL_90;
          }

LABEL_75:
          v105 = v196;
          if ((v165 & 1) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_76;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_75;
        }

        v170 = v159;
        sub_10010A13C();
        v159 = v170;
        v105 = v196;
        if ((v165 & 1) == 0)
        {
LABEL_78:
          v171 = v201;
          *(v201 + 8 * (v159 >> 6) + 64) |= 1 << v159;
          *(*(v171 + 6) + 16 * v159) = v124;
          v172 = v199;
          v153(*(v171 + 7) + *(v197 + 72) * v159, v183, v199);
          (*(v197 + 8))(v182, v172);
          sub_1001128C0(&v206);
          sub_100005090(v205);
          sub_1001128C0(&v209);
          v173 = *(v171 + 2);
          v163 = __OFADD__(v173, 1);
          v174 = v173 + 1;
          if (v163)
          {
            goto LABEL_89;
          }

          v187 = v171;
          *(v171 + 2) = v174;
          goto LABEL_80;
        }

LABEL_76:
        v167 = v159;

        v187 = v201;
        v168 = *(v201 + 56) + *(v197 + 72) * v167;
        v169 = v199;
        (*(v197 + 40))(v168, v183, v199);
        (*(v197 + 8))(v182, v169);
        sub_1001128C0(&v206);
        sub_100005090(v205);
        sub_1001128C0(&v209);
LABEL_80:
        v116 = v193;
        v117 = v198;
        if (!v113)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      defaultLogger()();
      sub_100112864(&v209, &v206);
      v129 = v176;
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v198 = v120;
        v133 = v132;
        *&v201 = swift_slowAlloc();
        *v133 = v190;
        v134 = AnyHashable.description.getter();
        v136 = v135;
        sub_1001128C0(&v206);
        v137 = sub_10010150C(v134, v136, &v201);

        *(v133 + 4) = v137;
        *(v133 + 12) = 2080;
        v138 = [v129 elementIdentifier];
        v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v141 = v140;

        v142 = sub_10010150C(v139, v141, &v201);
        v115 = v188;

        *(v133 + 14) = v142;
        _os_log_impl(&_mh_execute_header, v130, v131, "Key %s in dictionary %s is not a string", v133, 0x16u);
        swift_arrayDestroy();
        v105 = v196;

        (*v195)(v115, v105);
        sub_100005090(v205);
        sub_1001128C0(&v209);
        v117 = v198;
      }

      else
      {

        sub_1001128C0(&v206);
        (*v195)(v115, v105);
        sub_100005090(v205);
        sub_1001128C0(&v209);
        v117 = v120;
      }

      v116 = v193;
      if (!v113)
      {
        goto LABEL_46;
      }
    }
  }

  *(&v215 + 1) = type metadata accessor for AnyCodableDictionary();
  sub_10001A9A4(&v214);
  AnyCodableDictionary.init(value:)();
LABEL_6:
  AnyCodable.init(value:)();
}

char *sub_10019E22C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10010A738(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10019E7F0();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10010A738((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100009268(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10019E7F0();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10010A738((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100009268(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_10019E3F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004E70(&qword_100203520, &qword_1001ADD90);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(a1 + 56) + 8 * v12);
    *&v32[0] = *v13;
    *(&v32[0] + 1) = v14;

    v15;
    swift_dynamicCast();
    sub_10019E7F0();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100009268(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100009268(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_100009268(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_10019E6B8()
{
  _StringGuts.grow(_:)(38);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD000000000000024;
}

uint64_t sub_10019E748()
{
  sub_100005090((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10019E780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100203D18, &qword_1001AEDF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10019E7F0()
{
  result = qword_100203EA8;
  if (!qword_100203EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100203EA8);
  }

  return result;
}

void sub_10019E83C(unint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v41 = *(v7 - 1);
  v42 = v7;
  __chkstk_darwin(v7);
  isa = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for COSEKey();
  v50 = *(v12 - 8);
  __chkstk_darwin(v12);
  v45 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  v46 = sub_100060CC0;
  v47 = a1;
  os_unfair_lock_lock(v14 + 4);
  sub_100032EEC(v15);
  if (v1)
  {
    os_unfair_lock_unlock(v14 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v14 + 4);
    if (v49 >> 60 == 15)
    {
      (*(v4 + 104))(v6, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return;
    }

    v39 = v12;
    v43 = v48;
    v44 = v49;
    __chkstk_darwin(v16);
    os_unfair_lock_lock(v14 + 4);
    sub_100034020(v17);
    os_unfair_lock_unlock(v14 + 4);
    if (v49 >> 60 == 15)
    {
      (*(v4 + 104))(v6, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
LABEL_8:
      sub_10001C120(v43, v44);
      return;
    }

    v37 = v48;
    v38 = v49;
    sub_100024590(v11);
    v18 = v50;
    v19 = v39;
    if ((*(v50 + 48))(v11, 1, v39) == 1)
    {
      sub_10000A0D4(v11, &qword_100201070, &unk_1001AD2D0);
      (*(v4 + 104))(v6, enum case for DIPError.Code.idcsCOSEKeyCreationFailed(_:), v3);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10001C120(v37, v38);
      goto LABEL_8;
    }

    (*(v18 + 32))(v45, v11, v19);
    type metadata accessor for CBOREncoder();
    swift_allocObject();
    CBOREncoder.init()();
    sub_1000E08AC(&qword_100202BE8, &type metadata accessor for COSEKey, &protocol conformance descriptor for COSEKey);
    v20 = dispatch thunk of CBOREncoder.encode<A>(_:)();
    v22 = v21;
    v23 = v20;

    __chkstk_darwin(v24);
    os_unfair_lock_lock(v14 + 4);
    sub_10016A190(&v48);
    os_unfair_lock_unlock(v14 + 4);
    v36 = v48;
    v25 = isa;
    v26 = defaultLogger()();
    __chkstk_darwin(v26);
    v35 = v23;
    Logger.sensitive(_:)();
    (v41)[1](v25, v42);
    v41 = objc_allocWithZone(DCCredentialCryptoKey);
    v27 = String._bridgeToObjectiveC()();
    v42 = v27;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v29 = v37;
    v28 = v38;
    v30 = Data._bridgeToObjectiveC()().super.isa;
    v31 = Data._bridgeToObjectiveC()().super.isa;
    v32 = Array._bridgeToObjectiveC()().super.isa;

    v33 = isa;
    [v41 initWithIdentifier:v27 publicKey:isa publicKeyIdentifier:v30 publicKeyCOSEKey:v31 keyType:0 keyUsage:0 attestation:v32];

    sub_1000092BC(v35, v22);
    sub_10001C120(v29, v28);

    sub_10001C120(v43, v44);
    (*(v50 + 8))(v45, v39);
  }
}

uint64_t sub_10019F170(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v60 - v7;
  v8 = type metadata accessor for String.Encoding();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v67 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v65 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v72 = &v60 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v60 - v21;
  __chkstk_darwin(v20);
  v24 = &v60 - v23;
  result = isInternalBuild()();
  if (result)
  {
    v63 = v6;
    v64 = v3;
    v26 = [objc_opt_self() defaultManager];
    v73._countAndFlagsBits = 0;
    v27 = [v26 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:&v73];

    countAndFlagsBits = v73._countAndFlagsBits;
    if (v27)
    {
      v62 = v2;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = countAndFlagsBits;

      URL.appendingPathComponent(_:isDirectory:)();
      v60 = v15;
      v61 = v10;
      v30 = *(v15 + 8);
      v30(v22, v14);
      v73._countAndFlagsBits = 0x2D64616F6C796170;
      v73._object = 0xE800000000000000;
      UUID.init()();
      v31 = UUID.uuidString.getter();
      v33 = v32;
      (*(v67 + 8))(v13, v11);
      v34._countAndFlagsBits = v31;
      v35 = v24;
      v34._object = v33;
      String.append(_:)(v34);

      URL.appendingPathComponent(_:)();

      v36 = v72;
      URL.appendingPathExtension(_:)();
      v37 = v61;
      v30(v22, v14);
      v73 = Data.base16EncodedString()();
      static String.Encoding.utf8.getter();
      sub_100021E18();
      StringProtocol.write(to:atomically:encoding:)();
      (v70[1])(v37, v71);

      v47 = v66;
      defaultLogger()();
      v48 = v65;
      (*(v60 + 16))(v65, v36, v14);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      v51 = os_log_type_enabled(v49, v50);
      v52 = v62;
      if (v51)
      {
        v53 = v48;
        v54 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v73._countAndFlagsBits = v70;
        *v54 = 136315138;
        v55 = URL.absoluteString.getter();
        v71 = v35;
        v57 = v56;
        v30(v53, v14);
        v58 = sub_10010150C(v55, v57, &v73._countAndFlagsBits);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v49, v50, "Saved ISO 18013 payload to %s", v54, 0xCu);
        sub_100005090(v70);

        (*(v64 + 8))(v66, v62);
        v30(v36, v14);
        v59 = v71;
      }

      else
      {

        v30(v48, v14);
        (*(v64 + 8))(v47, v52);
        v30(v36, v14);
        v59 = v35;
      }

      return (v30)(v59, v14);
    }

    else
    {
      v38 = v73._countAndFlagsBits;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v39 = v63;
      defaultLogger()();
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v73._countAndFlagsBits = v43;
        *v42 = 136315138;
        swift_getErrorValue();
        v44 = Error.localizedDescription.getter();
        v46 = sub_10010150C(v44, v45, &v73._countAndFlagsBits);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Failed to write ISO 18013 payload to disk: %s", v42, 0xCu);
        sub_100005090(v43);
      }

      else
      {
      }

      return (*(v64 + 8))(v39, v2);
    }
  }

  return result;
}

uint64_t sub_10019F998(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SESKeystore.KeyDesignation();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10019FB34, 0, 0);
}

uint64_t sub_10019FB34(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Clearing key designations in database", v4, 2u);
  }

  v5 = v1[15];
  v6 = v1[11];
  v7 = v1[12];

  v8 = *(v7 + 8);
  v1[16] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[17] = v9;
  *v9 = v1;
  v9[1] = sub_10019FC74;
  v10 = v1[2];

  return sub_1001A2F1C(0, &off_1001F41F0, v10);
}

uint64_t sub_10019FC74()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1001A0150;
  }

  else
  {
    v2 = sub_10019FD88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019FD88(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Clearing key designations in SE", v4, 2u);
  }

  v23 = v1[18];
  v5 = v1[16];
  v6 = v1[14];
  v7 = v1[11];
  v8 = v1[10];
  v9 = v1[7];
  v10 = v1[8];

  v5(v6, v7);
  v11 = *(v10 + 104);
  v11(v8, enum case for SESKeystore.KeyDesignation.progenitor(_:), v9);
  dispatch thunk of SESKeystore.clearKeyDesignation(_:)();
  v12 = *(v10 + 8);
  v12(v8, v9);
  if (v23)
  {
    (*(v1[5] + 104))(v1[6], enum case for DIPError.Code.internalError(_:), v1[4]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v15 = v1[1];
  }

  else
  {
    v13 = v1[9];
    v14 = v1[7];
    v11(v13, enum case for SESKeystore.KeyDesignation.progenitorThirdParty(_:), v14);
    dispatch thunk of SESKeystore.clearKeyDesignation(_:)();
    v12(v13, v14);
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Done clearing key designations", v19, 2u);
    }

    v20 = v1[16];
    v21 = v1[13];
    v22 = v1[11];

    v20(v21, v22);

    v15 = v1[1];
  }

  return v15();
}

uint64_t sub_1001A0150()
{
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.internalError(_:), v0[4]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001A02E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 496) = a4;
  *(v5 + 96) = a3;
  *(v5 + 104) = a5;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  sub_100004E70(&qword_100201488, &qword_1001ACFD0);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  v7 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyType();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v8 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyDesignationEventType();
  *(v5 + 192) = v8;
  *(v5 + 200) = *(v8 - 8);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v9 = type metadata accessor for SESKeystore.KeyDesignation();
  *(v5 + 232) = v9;
  *(v5 + 240) = *(v9 - 8);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  v10 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyDesignationFlow();
  *(v5 + 264) = v10;
  *(v5 + 272) = *(v10 - 8);
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v5 + 328) = v11;
  *(v5 + 336) = *(v11 - 8);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1001A0678, 0, 0);
}

uint64_t sub_1001A0678()
{
  sub_1001A2AC4();
  static SharedInternalDefaultsKeys.forceSEProgenitorKeyDesignationFailure.getter();
  v1 = static NSUserDefaults.globalInternalBool(forKey:)();

  if (v1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[42];
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Internal Setting Override forceSEProgenitorKeyDesignationFailure: Progenitor key will not be designated", v6, 2u);
    }

    (*(v5 + 8))(v0[49], v0[41]);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[50] = v9;
    *v9 = v0;
    v9[1] = sub_1001A0960;
    v10 = v0[10];

    return sub_1001A3360(0xD000000000000012, 0x80000001001B18B0, v10);
  }
}

uint64_t sub_1001A0960(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 408) = a1;
  *(v5 + 416) = a2;
  *(v5 + 497) = a3;
  *(v5 + 424) = v3;

  if (v3)
  {

    return _swift_task_switch(sub_1001A0C08, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v5 + 432) = v6;
    *v6 = v5;
    v6[1] = sub_1001A0AEC;
    v7 = *(v5 + 80);

    return sub_1001A3360(0xD00000000000001ELL, 0x80000001001B18D0, v7);
  }
}

uint64_t sub_1001A0AEC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 440) = a1;
  *(v5 + 448) = a2;
  *(v5 + 498) = a3;
  *(v5 + 456) = v3;

  if (v3)
  {
    v6 = sub_1001A21F4;
  }

  else
  {
    v6 = sub_1001A0E78;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001A0C08()
{
  (*(v0[17] + 104))(v0[18], enum case for DIPError.Code.internalError(_:), v0[16]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001A0E78(uint64_t a1)
{
  v2 = *(v1 + 497);
  if (v2 == 2)
  {
    v191 = *(v1 + 456);
    v3 = _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = *(v1 + 408);
    v4 = *(v1 + 416);
    v6 = *(v1 + 496);
    v7 = enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designation(_:);
    v8 = *(*(v1 + 272) + 104);
    v8(*(v1 + 320), enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designation(_:), *(v1 + 264));
    sub_100009708(v5, v4);
    if (v6 == 1 && (v2 & 1) != 0)
    {
      defaultLogger()();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v1 + 497);
      v14 = *(v1 + 408);
      v13 = *(v1 + 416);
      v15 = *(v1 + 384);
      v16 = *(v1 + 328);
      v17 = *(v1 + 336);
      v18 = *(v1 + 272);
      if (v11)
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Progenitor key is already designated", v19, 2u);
      }

      sub_1001A3830(v14, v13, v12);
      (*(v17 + 8))(v15, v16);
      v191 = *(v1 + 456);
      v3 = _swiftEmptyArrayStorage;
      (*(v18 + 8))(*(v1 + 320), *(v1 + 264));
    }

    else
    {
      v187 = v7;
      v192 = v8;
      defaultLogger()();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Designating progenitor key in SE", v22, 2u);
      }

      v178 = *(v1 + 456);
      v174 = *(v1 + 416);
      v163 = *(v1 + 408);
      v23 = *(v1 + 376);
      v24 = *(v1 + 328);
      v25 = *(v1 + 336);
      v27 = *(v1 + 312);
      v26 = *(v1 + 320);
      v28 = v20;
      v30 = *(v1 + 264);
      v29 = *(v1 + 272);
      v31 = *(v1 + 240);
      v142 = *(v1 + 256);
      v146 = *(v1 + 232);
      v139 = *(v1 + 496);
      v150 = *(v1 + 497);

      (*(v25 + 8))(v23, v24);
      v176 = *(v29 + 8);
      v176(v26, v30);
      if (v139)
      {
        v32 = enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designationKeyMismatch(_:);
      }

      else
      {
        v32 = v187;
      }

      v192(v27, v32, v30);
      (*(v29 + 32))(v26, v27, v30);
      (*(v31 + 104))(v142, enum case for SESKeystore.KeyDesignation.progenitor(_:), v146);
      sub_1001A3844(v163, v174, v150);
      dispatch thunk of SESKeystore.designateKey(_:designation:sessionHandoffToken:)();
      v33 = *(v1 + 497);
      v35 = *(v1 + 408);
      v34 = *(v1 + 416);
      if (v178)
      {
        v188 = *(v1 + 320);
        v168 = *(v1 + 288);
        v36 = *(v1 + 272);
        v164 = *(v1 + 264);
        v37 = *(v1 + 216);
        v38 = *(v1 + 192);
        v39 = *(v1 + 200);
        v40 = *(v1 + 160);
        v154 = *(v1 + 152);
        v158 = *(v1 + 176);
        v41 = *(v1 + 136);
        v193 = *(v1 + 128);
        v179 = *(v1 + 120);
        (*(*(v1 + 240) + 8))(*(v1 + 256), *(v1 + 232));
        sub_1001A3830(v35, v34, v33);
        (*(v39 + 104))(v37, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationFlow(_:), v38);
        (*(v40 + 104))(v158, enum case for IDCSAnalytics.SEProgenitorKeyType.progenitorKey(_:), v154);
        (*(v36 + 16))(v168, v188, v164);
        swift_getErrorValue();
        Error.dipErrorCode.getter();
        if ((*(v41 + 48))(v179, 1, v193) == 1)
        {
          sub_10008C18C(*(v1 + 120));
        }

        else
        {
          v109 = *(v1 + 128);
          v110 = *(v1 + 136);
          v111 = *(v1 + 120);
          DIPError.Code.rawValue.getter();
          (*(v110 + 8))(v111, v109);
        }

        v161 = *(v1 + 440);
        v166 = *(v1 + 448);
        v152 = *(v1 + 408);
        v156 = *(v1 + 416);
        v173 = *(v1 + 320);
        v112 = *(v1 + 288);
        v113 = *(v1 + 264);
        v141 = v113;
        v114 = *(v1 + 216);
        v115 = *(v1 + 200);
        v184 = *(v1 + 192);
        v116 = *(v1 + 176);
        v117 = *(v1 + 160);
        v118 = *(v1 + 136);
        v134 = *(v1 + 152);
        v136 = *(v1 + 144);
        v144 = *(v1 + 497);
        v148 = *(v1 + 498);
        type metadata accessor for IDCSAnalytics();
        static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
        v119 = v176;
        v176(v112, v113);
        (*(v117 + 8))(v116, v134);
        (*(v115 + 8))(v114, v184);
        v185 = enum case for DIPError.Code.internalError(_:);
        (*(v118 + 104))(v136);
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100008E7C();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        sub_1001A3830(v152, v156, v144);
        sub_1001A3830(v161, v166, v148);
        v120 = v152;
        v121 = v156;
        v122 = v144;
        goto LABEL_47;
      }

      (*(*(v1 + 240) + 8))(*(v1 + 256), *(v1 + 232));
      sub_1001A3830(v35, v34, v33);
      v3 = sub_100100418(0, 1, 1, _swiftEmptyArrayStorage);
      v43 = *(v3 + 2);
      v42 = *(v3 + 3);
      if (v43 >= v42 >> 1)
      {
        v3 = sub_100100418((v42 > 1), v43 + 1, 1, v3);
      }

      v180 = *(v1 + 408);
      v194 = *(v1 + 416);
      v44 = *(v1 + 224);
      v46 = *(v1 + 192);
      v45 = *(v1 + 200);
      v47 = *(v1 + 184);
      v49 = *(v1 + 152);
      v48 = *(v1 + 160);
      v169 = *(v1 + 497);
      *(v3 + 2) = v43 + 1;
      v50 = &v3[16 * v43];
      *(v50 + 4) = 0xD000000000000012;
      *(v50 + 5) = 0x80000001001B18B0;
      type metadata accessor for IDCSAnalytics();
      (*(v45 + 104))(v44, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationFlow(_:), v46);
      (*(v48 + 104))(v47, enum case for IDCSAnalytics.SEProgenitorKeyType.progenitorKey(_:), v49);
      static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
      sub_1001A3830(v180, v194, v169);
      (*(v48 + 8))(v47, v49);
      (*(v45 + 8))(v44, v46);
      v191 = 0;
      v176(*(v1 + 320), *(v1 + 264));
    }
  }

  v51 = *(v1 + 498);
  if (v51 == 2)
  {
LABEL_38:
    *(v1 + 464) = v3;
    defaultLogger()();
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&_mh_execute_header, v99, v100, "Setting key designations in the database", v101, 2u);
    }

    v102 = *(v1 + 352);
    v103 = *(v1 + 328);
    v104 = *(v1 + 336);

    v105 = *(v104 + 8);
    *(v1 + 472) = v105;
    v105(v102, v103);
    v106 = swift_task_alloc();
    *(v1 + 480) = v106;
    *v106 = v1;
    v106[1] = sub_1001A2470;
    v107 = *(v1 + 80);

    return sub_1001A2F1C(1, v3, v107);
  }

  v52 = *(v1 + 440);
  v53 = *(v1 + 448);
  v54 = *(v1 + 496);
  v55 = enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designation(_:);
  v56 = *(*(v1 + 272) + 104);
  v56(*(v1 + 304), enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designation(_:), *(v1 + 264));
  sub_100009708(v52, v53);
  if (v54 == 1 && (v51 & 1) != 0)
  {
    defaultLogger()();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v1 + 498);
    v62 = *(v1 + 440);
    v61 = *(v1 + 448);
    v63 = *(v1 + 368);
    v64 = *(v1 + 336);
    v195 = *(v1 + 328);
    v65 = *(v1 + 272);
    if (v59)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Progenitor third party key is already designated", v66, 2u);
    }

    sub_1001A3830(v62, v61, v60);
    (*(v64 + 8))(v63, v195);
    (*(v65 + 8))(*(v1 + 304), *(v1 + 264));
    goto LABEL_38;
  }

  v175 = v55;
  v181 = v56;
  v189 = v3;
  defaultLogger()();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "Designating progenitor third party key in SE", v69, 2u);
  }

  v170 = *(v1 + 448);
  v70 = *(v1 + 360);
  v71 = v67;
  v72 = *(v1 + 328);
  v73 = *(v1 + 336);
  v74 = *(v1 + 296);
  v75 = *(v1 + 304);
  v77 = *(v1 + 264);
  v76 = *(v1 + 272);
  v78 = *(v1 + 240);
  v140 = *(v1 + 248);
  v143 = *(v1 + 232);
  v159 = *(v1 + 440);
  v138 = *(v1 + 496);
  v147 = *(v1 + 498);

  (*(v73 + 8))(v70, v72);
  v79 = *(v76 + 8);
  v79(v75, v77);
  if (v138)
  {
    v80 = enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designationKeyMismatch(_:);
  }

  else
  {
    v80 = v175;
  }

  v181(v74, v80, v77);
  (*(v76 + 32))(v75, v74, v77);
  (*(v78 + 104))(v140, enum case for SESKeystore.KeyDesignation.progenitorThirdParty(_:), v143);
  sub_1001A3844(v159, v170, v147);
  dispatch thunk of SESKeystore.designateKey(_:designation:sessionHandoffToken:)();
  v81 = *(v1 + 498);
  v83 = *(v1 + 440);
  v82 = *(v1 + 448);
  v177 = v79;
  if (!v191)
  {
    (*(*(v1 + 240) + 8))(*(v1 + 248), *(v1 + 232));
    sub_1001A3830(v83, v82, v81);
    v3 = v189;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_100100418(0, *(v189 + 2) + 1, 1, v189);
    }

    v91 = *(v3 + 2);
    v90 = *(v3 + 3);
    if (v91 >= v90 >> 1)
    {
      v3 = sub_100100418((v90 > 1), v91 + 1, 1, v3);
    }

    v183 = *(v1 + 440);
    v190 = *(v1 + 448);
    v92 = *(v1 + 224);
    v94 = *(v1 + 192);
    v93 = *(v1 + 200);
    v95 = *(v1 + 184);
    v97 = *(v1 + 152);
    v96 = *(v1 + 160);
    v172 = *(v1 + 498);
    *(v3 + 2) = v91 + 1;
    v98 = &v3[16 * v91];
    *(v98 + 4) = 0xD00000000000001ELL;
    *(v98 + 5) = 0x80000001001B18D0;
    type metadata accessor for IDCSAnalytics();
    (*(v93 + 104))(v92, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationFlow(_:), v94);
    (*(v96 + 104))(v95, enum case for IDCSAnalytics.SEProgenitorKeyType.thirdPartyProgenitorKey(_:), v97);
    static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
    sub_1001A3830(v183, v190, v172);
    (*(v96 + 8))(v95, v97);
    (*(v93 + 8))(v92, v94);
    v177(*(v1 + 304), *(v1 + 264));
    goto LABEL_38;
  }

  v182 = *(v1 + 304);
  v84 = *(v1 + 272);
  v160 = *(v1 + 264);
  v165 = *(v1 + 280);
  v86 = *(v1 + 200);
  v85 = *(v1 + 208);
  v87 = *(v1 + 192);
  v88 = *(v1 + 160);
  v151 = *(v1 + 152);
  v155 = *(v1 + 168);
  v89 = *(v1 + 136);
  v196 = *(v1 + 128);
  v171 = *(v1 + 112);
  (*(*(v1 + 240) + 8))(*(v1 + 248), *(v1 + 232));
  sub_1001A3830(v83, v82, v81);

  (*(v86 + 104))(v85, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationFlow(_:), v87);
  (*(v88 + 104))(v155, enum case for IDCSAnalytics.SEProgenitorKeyType.thirdPartyProgenitorKey(_:), v151);
  (*(v84 + 16))(v165, v182, v160);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v89 + 48))(v171, 1, v196) == 1)
  {
    sub_10008C18C(*(v1 + 112));
  }

  else
  {
    v123 = *(v1 + 128);
    v124 = *(v1 + 136);
    v125 = *(v1 + 112);
    DIPError.Code.rawValue.getter();
    (*(v124 + 8))(v125, v123);
  }

  v153 = *(v1 + 440);
  v157 = *(v1 + 448);
  v162 = *(v1 + 408);
  v167 = *(v1 + 416);
  v173 = *(v1 + 304);
  v126 = *(v1 + 280);
  v127 = *(v1 + 264);
  v141 = v127;
  v129 = *(v1 + 200);
  v128 = *(v1 + 208);
  v186 = *(v1 + 192);
  v130 = *(v1 + 160);
  v131 = *(v1 + 168);
  v135 = *(v1 + 152);
  v137 = *(v1 + 144);
  v132 = *(v1 + 136);
  v145 = *(v1 + 498);
  v149 = *(v1 + 497);
  type metadata accessor for IDCSAnalytics();
  static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
  v119 = v177;
  v177(v126, v127);
  (*(v130 + 8))(v131, v135);
  (*(v129 + 8))(v128, v186);
  v185 = enum case for DIPError.Code.internalError(_:);
  (*(v132 + 104))(v137);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_1001A3830(v153, v157, v145);
  sub_1001A3830(v153, v157, v145);
  v120 = v162;
  v121 = v167;
  v122 = v149;
LABEL_47:
  sub_1001A3830(v120, v121, v122);
  v119(v173, v141);
  (*(*(v1 + 136) + 104))(*(v1 + 144), v185, *(v1 + 128));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v133 = *(v1 + 8);

  return v133();
}

uint64_t sub_1001A21F4()
{
  sub_1001A3830(*(v0 + 408), *(v0 + 416), *(v0 + 497));
  (*(*(v0 + 136) + 104))(*(v0 + 144), enum case for DIPError.Code.internalError(_:), *(v0 + 128));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A2470()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_1001A2824;
  }

  else
  {

    v2 = sub_1001A258C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A258C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 498);
  v7 = *(v1 + 440);
  v6 = *(v1 + 448);
  v8 = *(v1 + 497);
  v10 = *(v1 + 408);
  v9 = *(v1 + 416);
  if (v4)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done setting key designations", v11, 2u);

    sub_1001A3830(v7, v6, v5);
    sub_1001A3830(v10, v9, v8);
  }

  else
  {
    sub_1001A3830(v10, v9, v8);
    sub_1001A3830(v7, v6, v5);
  }

  (*(v1 + 472))(*(v1 + 344), *(v1 + 328));

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_1001A2824()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 498);
  sub_1001A3830(*(v0 + 408), *(v0 + 416), *(v0 + 497));
  sub_1001A3830(v2, v1, v3);

  (*(*(v0 + 136) + 104))(*(v0 + 144), enum case for DIPError.Code.internalError(_:), *(v0 + 128));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1001A2AC4()
{
  result = qword_100203EB0;
  if (!qword_100203EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100203EB0);
  }

  return result;
}

void sub_1001A2B10(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = sub_1000508BC(a1, a2);
  if (!v3)
  {
    if (!v14)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 2;
      return;
    }

    v34 = 0;
    v35 = v14;
    if ([v14 version] == 1)
    {
      defaultLogger()();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "v1 auth acls are not supported for key designation", v17, 2u);
      }

      (*(v8 + 8))(v11, v7);
    }

    else
    {
      v18 = [v35 progenitorKey];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 keyBlob];

        if (v20)
        {
          v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          v24 = v35;
          v25 = [v35 designationStatus];

          v26 = v25 == 1;
          *a3 = v21;
          *(a3 + 8) = v23;
LABEL_16:
          *(a3 + 16) = v26;
          return;
        }
      }

      defaultLogger()();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      v33 = v27;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_10010150C(a1, a2, &v36);
        v31 = v33;
        _os_log_impl(&_mh_execute_header, v33, v28, "Key with identifier %s doesn't have a key blob", v29, 0xCu);
        sub_100005090(v30);
      }

      else
      {
      }

      (*(v8 + 8))(v13, v7);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    v26 = 2;
    goto LABEL_16;
  }
}

id sub_1001A2E60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return sub_100050240();
  }

  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v9 = *i;

    v10 = sub_1000508BC(v8, v9);

    if (v4)
    {
      break;
    }

    if (v10)
    {
      [v10 setDesignationStatus:a3 & 1];
    }

    if (!--v5)
    {
      return sub_100050240();
    }
  }

  return result;
}

uint64_t sub_1001A2F1C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 88) = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1001A2FE0, 0, 0);
}

uint64_t sub_1001A2FE0()
{
  v1 = *(v0 + 40);
  v13 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 88);
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v5 & 1;
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = sub_1001A3898;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v1 + 104);

  v9(v13, v8, v2);

  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_1001A316C;
  v11 = *(v0 + 48);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_10001C0A8, v7, &type metadata for () + 8);
}

uint64_t sub_1001A316C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_1001A32F4;
  }

  else
  {
    v4 = v2[6];
    v7 = v2 + 4;
    v5 = v2[4];
    v6 = v7[1];

    (*(v6 + 8))(v4, v5);
    v3 = sub_100013AEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A32F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A3360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001A3424, 0, 0);
}

uint64_t sub_1001A3424()
{
  v1 = v0[9];
  v14 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_allocObject();
  v0[11] = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  v7 = swift_allocObject();
  v0[12] = v7;
  *(v7 + 16) = sub_1001A38F8;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v1 + 104);

  v9(v14, v8, v2);

  v10 = swift_task_alloc();
  v0[13] = v10;
  v11 = sub_100004E70(&qword_100203EB8, &qword_1001AF220);
  *v10 = v0;
  v10[1] = sub_1001A35BC;
  v12 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v12, sub_10001C0A8, v7, v11);
}

uint64_t sub_1001A35BC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = sub_1001A37C4;
  }

  else
  {
    v4 = v2[10];
    v7 = v2 + 8;
    v5 = v2[8];
    v6 = v7[1];

    (*(v6 + 8))(v4, v5);
    v3 = sub_1001A3744;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A3744()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);

  v4 = *(v0 + 8);

  return v4(v2, v1, v3);
}

uint64_t sub_1001A37C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A3830(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != 2)
  {
    return sub_1000092BC(result, a2);
  }

  return result;
}

uint64_t sub_1001A3844(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != 2)
  {
    return sub_100009708(result, a2);
  }

  return result;
}

uint64_t sub_1001A3858()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1001A38B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001A3918()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001A3950(uint64_t a1)
{
  v1[2] = a1;
  v3 = type metadata accessor for Logger();
  v1[3] = v3;
  v1[4] = *(v3 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyDesignationFlow();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyType();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v6 = type metadata accessor for IDCSAnalytics.SEProgenitorKeyDesignationEventType();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[20] = v7;
  *v7 = v1;
  v7[1] = sub_1001A3BAC;

  return sub_1001A3360(0xD000000000000012, 0x80000001001B18B0, a1);
}

uint64_t sub_1001A3BAC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 168) = a1;
  *(v5 + 176) = a2;
  *(v5 + 216) = a3;

  if (v3)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {

    return _swift_task_switch(sub_1001A3D74, 0, 0);
  }
}

uint64_t sub_1001A3D74(uint64_t a1)
{
  v2 = *(v1 + 216);
  if (v2 == 2)
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 64);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "progenitorKeyDesignationRequired - globalACLKeyInfo Key sync status check skipped due to missing ACL", v9, 2u);
    }

    v10 = *(v8 + 8);
    v10(v6, v7);
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      v23 = *(v1 + 144);
      v22 = *(v1 + 152);
      v25 = *(v1 + 128);
      v24 = *(v1 + 136);
      v27 = *(v1 + 112);
      v26 = *(v1 + 120);
      v28 = *(v1 + 96);
      v29 = *(v1 + 104);
      v30 = *(v1 + 88);
      type metadata accessor for IDCSAnalytics();
      (*(v23 + 104))(v22, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationCheckFlow(_:), v24);
      (*(v26 + 104))(v25, enum case for IDCSAnalytics.SEProgenitorKeyType.progenitorKey(_:), v27);
      (*(v28 + 104))(v29, enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designationKeyMismatch(_:), v30);
      static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
      (*(v28 + 8))(v29, v30);
      (*(v26 + 8))(v25, v27);
      (*(v23 + 8))(v22, v24);
      defaultLogger()();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v1 + 216);
      v36 = *(v1 + 168);
      v35 = *(v1 + 176);
      v37 = *(v1 + 80);
      v38 = *(v1 + 24);
      v39 = *(v1 + 32);
      if (v33)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "progenitorKeyDesignationRequired - Global progenitor key not designated", v40, 2u);

        sub_1001A3830(v36, v35, v34);
      }

      else
      {
        sub_1001A3830(*(v1 + 168), *(v1 + 176), *(v1 + 216));
      }

      v10 = *(v39 + 8);
      v10(v37, v38);
      v21 = 1;
      goto LABEL_14;
    }

    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "progenitorKeyDesignationRequired - Global progenitor key is synced. No action required.", v13, 2u);
    }

    v48 = *(v1 + 168);
    v49 = *(v1 + 176);
    v14 = *(v1 + 144);
    v50 = *(v1 + 152);
    v51 = *(v1 + 136);
    v15 = *(v1 + 120);
    v44 = *(v1 + 112);
    v45 = *(v1 + 128);
    v16 = *(v1 + 96);
    v46 = *(v1 + 104);
    v17 = *(v1 + 88);
    v18 = *(v1 + 72);
    v20 = *(v1 + 24);
    v19 = *(v1 + 32);
    v47 = *(v1 + 216);

    v10 = *(v19 + 8);
    v10(v18, v20);
    type metadata accessor for IDCSAnalytics();
    (*(v14 + 104))(v50, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationCheckFlow(_:), v51);
    (*(v15 + 104))(v45, enum case for IDCSAnalytics.SEProgenitorKeyType.progenitorKey(_:), v44);
    (*(v16 + 104))(v46, enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.noDesignationRequired(_:), v17);
    static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
    sub_1001A3830(v48, v49, v47);
    (*(v16 + 8))(v46, v17);
    (*(v15 + 8))(v45, v44);
    (*(v14 + 8))(v50, v51);
  }

  v21 = 0;
LABEL_14:
  *(v1 + 217) = v21;
  *(v1 + 184) = v10;
  v41 = swift_task_alloc();
  *(v1 + 192) = v41;
  *v41 = v1;
  v41[1] = sub_1001A4290;
  v42 = *(v1 + 16);

  return sub_1001A3360(0xD00000000000001ELL, 0x80000001001B18D0, v42);
}

uint64_t sub_1001A4290(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 200) = a1;
  *(v5 + 208) = a2;
  *(v5 + 218) = a3;

  if (v3)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {

    return _swift_task_switch(sub_1001A4458, 0, 0);
  }
}

uint64_t sub_1001A4458(uint64_t a1)
{
  v2 = *(v1 + 218);
  if (v2 == 2)
  {
    v3 = (v1 + 40);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "progenitorKeyDesignationRequired - thirdPartyACLKeyInfo Key sync status check skipped due to missing ACL", v6, 2u);
    }

    v45 = 0;
    v7 = (v1 + 184);
    v8 = (v1 + 24);
  }

  else if (v2)
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "progenitorKeyDesignationRequired - Third-party progenitor key is synced. No action required.", v11, 2u);
    }

    v3 = (v1 + 152);
    v12 = *(v1 + 152);
    v44 = *(v1 + 200);
    v46 = *(v1 + 208);
    v13 = *(v1 + 144);
    v8 = (v1 + 136);
    v36 = *(v1 + 136);
    v14 = *(v1 + 120);
    v37 = *(v1 + 112);
    v38 = *(v1 + 128);
    v39 = *(v1 + 104);
    v15 = *(v1 + 96);
    v40 = *(v1 + 88);
    v41 = *(v1 + 184);
    v16 = *(v1 + 48);
    v17 = *(v1 + 24);
    v43 = *(v1 + 218);

    v41(v16, v17);
    type metadata accessor for IDCSAnalytics();
    (*(v13 + 104))(v12, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationCheckFlow(_:), v36);
    (*(v14 + 104))(v38, enum case for IDCSAnalytics.SEProgenitorKeyType.thirdPartyProgenitorKey(_:), v37);
    (*(v15 + 104))(v39, enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.noDesignationRequired(_:), v40);
    static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
    sub_1001A3830(v44, v46, v43);
    (*(v15 + 8))(v39, v40);
    (*(v14 + 8))(v38, v37);
    v45 = 0;
    v7 = (v13 + 8);
  }

  else
  {
    v3 = (v1 + 56);
    v18 = *(v1 + 144);
    v19 = *(v1 + 152);
    v21 = *(v1 + 128);
    v20 = *(v1 + 136);
    v22 = *(v1 + 112);
    v23 = *(v1 + 120);
    v24 = *(v1 + 96);
    v25 = *(v1 + 104);
    v42 = *(v1 + 88);
    type metadata accessor for IDCSAnalytics();
    (*(v18 + 104))(v19, enum case for IDCSAnalytics.SEProgenitorKeyDesignationEventType.designationCheckFlow(_:), v20);
    (*(v23 + 104))(v21, enum case for IDCSAnalytics.SEProgenitorKeyType.thirdPartyProgenitorKey(_:), v22);
    (*(v24 + 104))(v25, enum case for IDCSAnalytics.SEProgenitorKeyDesignationFlow.designationKeyMismatch(_:), v42);
    static IDCSAnalytics.sendSEProgenitorKeyDesignationEvent(eventType:keyType:flow:success:errorCode:)();
    (*(v24 + 8))(v25, v42);
    (*(v23 + 8))(v21, v22);
    (*(v18 + 8))(v19, v20);
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v1 + 218);
    v31 = *(v1 + 200);
    v30 = *(v1 + 208);
    if (v28)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "progenitorKeyDesignationRequired - Third-party progenitor key not designated", v32, 2u);

      sub_1001A3830(v31, v30, v29);
    }

    else
    {
      sub_1001A3830(*(v1 + 200), *(v1 + 208), *(v1 + 218));
    }

    v7 = (v1 + 184);
    v8 = (v1 + 24);
    v45 = 1;
  }

  v33 = *(v1 + 217);
  (*v7)(*v3, *v8);

  v34 = *(v1 + 8);

  return v34((v45 | v33) & 1);
}

__n128 sub_1001A49D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001A49E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001A4A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001A4A90()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_100032EEC(v2);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_1001A4B2C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1001A4BEC, 0, 0);
}

uint64_t sub_1001A4BEC()
{
  v16 = v0;
  swift_defaultActor_initialize();
  if (qword_1001FFFD0 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100205C80 + 16);
  os_unfair_lock_lock((v1 + 72));
  sub_10002171C((v1 + 16), v15);
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  os_unfair_lock_unlock((v1 + 72));
  v6 = v15[0];
  v7 = v15[3];
  v8 = v15[4];
  v9 = v15[5];
  v10 = v15[6];
  sub_10000ED48(v15[1], v15[2]);
  sub_10000ED48(v7, v8);
  sub_10000ED48(v9, v10);
  type metadata accessor for IDCSAsyncDataContainer();
  v11 = swift_allocObject();
  *(v11 + 24) = v6;
  sub_100004E70(&qword_100203F88, &qword_1001AF3D8);
  swift_allocObject();

  *(v11 + 16) = AsyncCoreDataContainer.init(contextBuilder:)();
  *(v5 + 112) = v11;
  Logger.init(subsystem:category:)();
  setDefaultLogger(_:)();
  (*(v3 + 8))(v2, v4);
  v12 = *(v5 + 112);
  v0[6] = v12;
  swift_retain_n();
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_1001A4E74;

  return sub_100057918(v12, 0xD000000000000015, 0x80000001001BDF50, &off_1001F4360);
}

uint64_t sub_1001A4E74()
{

  return _swift_task_switch(sub_1001A4F90, 0, 0);
}

uint64_t sub_1001A4F90()
{
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(type metadata accessor for CredentialStoreListener());

  v1[15] = sub_100072D80(v3);
  v4 = objc_allocWithZone(type metadata accessor for PresentmentListener());

  v1[16] = sub_10008E18C(v5);
  objc_allocWithZone(type metadata accessor for BiometricStoreListener());

  v1[17] = sub_100061140(v6);

  return _swift_task_switch(sub_1001A5074, v1, 0);
}

uint64_t sub_1001A5074()
{

  sub_10000FE48(v1);

  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return v2(v3);
}

uint64_t sub_1001A50F8()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001A5188(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for Daemon();
  swift_allocObject();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001A5230;

  return sub_1001A4B2C();
}

uint64_t sub_1001A5230(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1001A5330, 0, 0);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_1001A53BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001A545C;

  return sub_1001A5528();
}

uint64_t sub_1001A5528()
{
  v0[3] = type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v0[5] = static MainActor.shared.getter();
  type metadata accessor for OSTransaction();
  v1 = swift_task_alloc();
  v0[6] = v1;
  v2 = type metadata accessor for Daemon();
  *v1 = v0;
  v1[1] = sub_1001A5644;

  return __s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(v0 + 2, 0xD000000000000028, 0x80000001001BDF70, &unk_1001AF3F0, 0, &type metadata for Never, v2, &protocol witness table for Never);
}

uint64_t sub_1001A5644()
{
  v2 = *v1;

  if (!v0)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v2 + 56) = v5;
    *(v2 + 64) = v4;

    return _swift_task_switch(sub_1001A5780, v5, v4);
  }

  return result;
}

uint64_t sub_1001A5780()
{
  v0[9] = v0[2];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1001A5818;

  return waitForTerminationSignal()();
}

uint64_t sub_1001A5818()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1001A5938, v3, v2);
}

uint64_t sub_1001A5938()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001A59D0, v1, v0);
}

uint64_t sub_1001A59D0()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::String __swiftcall Data.base16EncodedString()()
{
  v0 = Data.base16EncodedString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t AnyCodable.init(value:)()
{
  return AnyCodable.init(value:)();
}

{
  return AnyCodable.init(value:)();
}

{
  return AnyCodable.init(value:)();
}

uint64_t DigitalPresentmentResponseCryptor.encrypt(_:to:)()
{
  return DigitalPresentmentResponseCryptor.encrypt(_:to:)();
}

{
  return DigitalPresentmentResponseCryptor.encrypt(_:to:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::String_optional __swiftcall NSUserDefaults.internalString(forKey:)(Swift::String forKey)
{
  v1 = NSUserDefaults.internalString(forKey:)(forKey._countAndFlagsBits, forKey._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.commonName()()
{
  v0 = SecCertificateRef.commonName()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.organization()()
{
  v0 = SecCertificateRef.organization()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall SecCertificateRef.organizationalUnit()()
{
  v0 = SecCertificateRef.organizationalUnit()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}