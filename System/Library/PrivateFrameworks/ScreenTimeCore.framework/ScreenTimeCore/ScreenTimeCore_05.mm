void sub_1000F4BA8(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1000A9618((a1 + 16), *(a1 + 40));
  v4 = sub_1000FE884(*v3);
  if (!v4)
  {
    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000A2B1C(v11, qword_1001E7070);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "local store is up to date with cloud store";
    goto LABEL_11;
  }

  v5 = v4;
  if (v4 == 1)
  {
    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000A2B1C(v6, qword_1001E7070);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "local store changes were exported to cloud store";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

LABEL_12:

    *a2 = 1;
    return;
  }

  if (qword_1001DF160 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000A2B1C(v12, qword_1001E7070);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  sub_1000F4EE8(v5);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = sub_1000A2E68(v17, v18, &v20);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "failed to synchronize stores: %s", v15, 0xCu);
    sub_1000A462C(v16);

    sub_1000F4EE8(v5);
  }

  else
  {

    sub_1000F4EE8(v5);
  }
}

NSString sub_1000F4EA8()
{
  result = String._bridgeToObjectiveC()();
  qword_1001E7040 = result;
  return result;
}

unint64_t sub_1000F4EE8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1000F4F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F4F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000F4F70()
{
  result = qword_1001E23C0;
  if (!qword_1001E23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E23C0);
  }

  return result;
}

uint64_t sub_1000F4FCC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000A53D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F501C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1000F5030(result);
  }

  return result;
}

unint64_t sub_1000F5038()
{
  result = qword_1001E23E0;
  if (!qword_1001E23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E23E0);
  }

  return result;
}

uint64_t sub_1000F508C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F50D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000F5130()
{
  result = qword_1001E23E8;
  if (!qword_1001E23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E23E8);
  }

  return result;
}

Swift::Int sub_1000F519C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1000F5200(uint64_t a1)
{
  if (*v1)
  {
    Hasher._combine(_:)(1uLL);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000F5258()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

BOOL sub_1000F52B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_1000A0F74(0, &qword_1001E2A18, NSObject_ptr);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  return !v2;
}

Swift::Int sub_1000F5328()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (!v3)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 2;
LABEL_5:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v1 | v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_1000F53C4(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 16) == 1)
  {
    v2 = 2;
LABEL_5:
    Hasher._combine(_:)(v2);

    String.hash(into:)();
    return;
  }

  if (*v1 == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_1000F545C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (!v3)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 2;
LABEL_5:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v1 | v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_1000F54F4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (v9)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v6 == 1)
  {
    if (v9 != 1)
    {
      return 0;
    }

LABEL_6:
    if (v4 != v7 || v5 != v8)
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  if (v4 | v5)
  {
    if (v9 != 2 || v7 != 1 || v8 != 0)
    {
      return 0;
    }
  }

  else if (v9 != 2 || (v8 | v7) != 0)
  {
    return 0;
  }

  return 1;
}

id sub_1000F5578()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [*(v0 + 16) newBackgroundContext];
    [v3 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v4 = String._bridgeToObjectiveC()();
    [v3 setTransactionAuthor:v4];

    v5 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_1000F5638(void *a1@<X1>, int a2@<W2>, char *a3@<X8>)
{
  LODWORD(v72) = a2;
  v74 = a3;
  v5 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  __chkstk_darwin(v5 - 8);
  v7 = &v59 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v59 - v17;
  __chkstk_darwin(v16);
  v20 = &v59 - v19;
  v21 = sub_1000F8ED8(a1);
  if (!v3)
  {
    v22 = v21;
    v68 = v15;
    v69 = v7;
    v65 = v12;
    v73 = v20;
    v67 = v18;
    if (v72)
    {
      v23 = sub_1000F91D8();
    }

    else
    {
      v23 = sub_1000F93E4(STiCloudOrganization_ptr, &qword_1001E2A20, 7);
    }

    v24 = v67;
    v25 = v23;
    v62 = 0;
    v26 = [objc_opt_self() fetchRequestMatchingBlueprintsForUser:v22 fromOrganization:v23 includeTombstones:1];
    v75 = 0;
    v27 = [v26 execute:&v75];
    v28 = v75;
    if (!v27)
    {
      v57 = v26;
      v58 = v75;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v29 = v27;
    sub_1000A0F74(0, &qword_1001E0240, STBlueprint_ptr);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v28;

    static Date.distantPast.getter();
    v32 = v30;
    v60 = v25;
    v61 = v22;
    v59 = v26;
    if (v30 >> 62)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
      v32 = v30;
      v34 = v9;
      if (v33)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v9;
      if (v33)
      {
LABEL_8:
        if (v33 < 1)
        {
          __break(1u);
        }

        v35 = 0;
        v70 = v32;
        v71 = v32 & 0xC000000000000001;
        v36 = (v34 + 32);
        v37 = (v34 + 8);
        v66 = (v34 + 56);
        v63 = (v34 + 48);
        v64 = (v34 + 16);
        v38 = v74;
        v72 = v33;
        do
        {
          if (v71)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v39 = *(v32 + 8 * v35 + 32);
          }

          v40 = v39;
          v41 = [v39 modificationDate];
          if (v41)
          {
            v42 = v41;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v43 = v73;
            (*v36)(v73, v24, v8);
          }

          else
          {
            v43 = v73;
            (*v64)(v73, v38, v8);
          }

          v44 = static Date.> infix(_:_:)();
          v45 = v43;
          v46 = v44;
          v47 = *v37;
          (*v37)(v45, v8);
          if (v46)
          {
            v48 = [v40 modificationDate];
            if (v48)
            {
              v49 = v65;
              v50 = v48;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v47(v74, v8);
              v51 = *v36;
              v52 = v69;
              v53 = v49;
              v38 = v74;
              (*v36)(v69, v53, v8);
              (*v66)(v52, 0, 1, v8);
              v54 = v68;
              v51(v68, v52, v8);
            }

            else
            {
              v55 = v69;
              (*v66)(v69, 1, 1, v8);
              v56 = v68;
              static Date.distantPast.getter();

              v54 = v56;
              v24 = v67;
              v47(v38, v8);
              if ((*v63)(v55, 1, v8) != 1)
              {
                sub_1000A5148(v69, &unk_1001E1830, &unk_100141720);
              }
            }

            (*v36)(v38, v54, v8);
          }

          else
          {
          }

          v32 = v70;
          ++v35;
        }

        while (v72 != v35);
      }
    }
  }
}

double sub_1000F5BFC@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1000F8ED8(a1);
  if (!v2)
  {
    v6 = v4;
    sub_1000F95E8(v4, v9);

    v7 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v7;
    *(a2 + 64) = *v10;
    *(a2 + 79) = *&v10[15];
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

void sub_1000F5C78(void *a1)
{
  sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    v5 = sub_1000F5578();
    __chkstk_darwin(v5);
    NSManagedObjectContext.performAndWait<A>(_:)();
    if (v1)
    {
    }

    else
    {

      v9[2] = v13;
      v9[3] = v14;
      *v10 = *v15;
      *&v10[15] = *&v15[15];
      v9[0] = v11;
      v9[1] = v12;
      sub_1000A0F74(0, &qword_1001E2A18, NSObject_ptr);
      v6 = v11;
      v7 = static NSObject.== infix(_:_:)();
      sub_1000F8EA8(v9);

      if ((v7 & 1) == 0)
      {
        v8 = a1;
      }
    }
  }
}

void sub_1000F5DFC(void *a1@<X1>, char *a2@<X8>, char a3@<W2>)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  __chkstk_darwin(v11 - 8);
  v13 = v20 - v12;
  v14 = sub_1000F8ED8(a1);
  if (!v3)
  {
    v15 = v14;
    v16 = sub_1000F98A8(v14, a3 & 1);
    v17 = [v16 modificationDate];
    if (v17)
    {
      v18 = v17;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = *(v8 + 32);
      v19(v13, v10, v7);
      (*(v8 + 56))(v13, 0, 1, v7);
      v19(a2, v13, v7);
    }

    else
    {
      (*(v8 + 56))(v13, 1, 1, v7);
      static Date.distantPast.getter();

      if ((*(v8 + 48))(v13, 1, v7) != 1)
      {
        sub_1000A5148(v13, &unk_1001E1830, &unk_100141720);
      }
    }
  }
}

id sub_1000F6040@<X0>(void *a1@<X1>, NSNumber *a2@<X8>)
{
  v5 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  result = sub_1000F8ED8(a1);
  if (!v2)
  {
    v15 = result;
    v26 = 0;
    sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
    v16.super.super.isa = NSNumber.init(integerLiteral:)([v15 passcodeEntryAttemptCount]).super.super.isa;
    v17 = [v15 passcodeEntryTimeoutEndDate];
    if (v17)
    {
      v18 = v17;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
    }

    else
    {
      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    }

    sub_1000F97C8(v11, v13);
    v25 = *(sub_1000A0F2C(&qword_1001E1F08, &qword_100142050) + 48);
    a2->super.super.isa = v16.super.super.isa;
    sub_1000F9838(v13, v8);
    type metadata accessor for Date();
    v20 = *(v19 - 8);
    isa = v16.super.super.isa;
    v22 = *(v20 + 48);
    if (v22(v8, 1, v19) == 1)
    {
      v23 = isa;
      Date.init()();

      sub_1000A5148(v13, &unk_1001E1830, &unk_100141720);
      result = v22(v8, 1, v19);
      if (result != 1)
      {
        return sub_1000A5148(v8, &unk_1001E1830, &unk_100141720);
      }
    }

    else
    {
      sub_1000A5148(v13, &unk_1001E1830, &unk_100141720);

      return (*(v20 + 32))(a2 + v25, v8, v19);
    }
  }

  return result;
}

void sub_1000F6358(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = sub_1000F8ED8(a2);
  if (!v3)
  {
    v6 = v5;
    v7 = [v5 localUserDeviceState];
    if (!v7)
    {

      *a3 = 1;
      return;
    }

    v8 = sub_1000F93E4(STScreenTimeSettings_ptr, &qword_1001E2A30, 0xD);
    v9 = v8;
    v10 = [v8 currentOrganization];
    if (v10)
    {

      v11 = [v9 currentOrganization];
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          *a3 = 1;
          return;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          *a3 = 0;
          return;
        }

        objc_opt_self();
      }

      type metadata accessor for DataStore.DataStoreError(0);
      sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
      swift_allocError();
      *v13 = 0xD000000000000010;
      v13[1] = 0x80000001001528A0;
    }

    else
    {
      type metadata accessor for DataStore.DataStoreError(0);
      sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
      swift_allocError();
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1000F65A4()
{
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent9DataStore____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);

  return swift_deallocClassInstance();
}

void sub_1000F6658(uint64_t a1)
{
  sub_1000AB584(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000F676C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F67A4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v244 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataStore.DataStoreError(0);
  __chkstk_darwin(v5);
  v7 = (&v244 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F8DC8(v0, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v129._countAndFlagsBits = 0xD000000000000031;
      v129._object = 0x8000000100152760;
      String.append(_:)(v129);
      v130 = [v8 description];
      v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v133 = v132;

      v134._countAndFlagsBits = v131;
      v134._object = v133;
      String.append(_:)(v134);

      v135._countAndFlagsBits = 46;
      v135._object = 0xE100000000000000;
      String.append(_:)(v135);
      v74 = v245;
      v75 = v246;
      v14 = [objc_opt_self() mainBundle];
      v238 = 0x80000001001527A0;
      v20 = 0xD00000000000001CLL;
      goto LABEL_47;
    case 2u:
      v112 = *v7;
      v111 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v245 = 0xD000000000000026;
      v246 = 0x8000000100152610;
      v113._countAndFlagsBits = v112;
      v113._object = v111;
      String.append(_:)(v113);

      v49 = v245;
      v50 = v246;
      v101 = 0x8000000100152640;
      v102 = [objc_opt_self() mainBundle];
      goto LABEL_50;
    case 3u:
      v121 = *v7;
      v120 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v122._countAndFlagsBits = 0xD000000000000038;
      v122._object = 0x80000001001525B0;
      String.append(_:)(v122);
      v123._countAndFlagsBits = v121;
      v123._object = v120;
      String.append(_:)(v123);

      v49 = v245;
      v50 = v246;
      v101 = 0x80000001001525F0;
      v42 = [objc_opt_self() mainBundle];
      v51 = 0xD000000000000014;
      goto LABEL_54;
    case 4u:
      v84 = *v7;
      v83 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);

      v245 = 0xD00000000000002FLL;
      v246 = 0x8000000100152180;
      v85._countAndFlagsBits = v84;
      v85._object = v83;
      String.append(_:)(v85);

      v49 = v245;
      v50 = v246;
      v86 = 0x80000001001521B0;
      v87 = [objc_opt_self() mainBundle];
      goto LABEL_36;
    case 5u:
      v148 = *v7;
      v147 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v245 = 0xD000000000000030;
      v246 = 0x8000000100152120;
      v149._countAndFlagsBits = v148;
      v149._object = v147;
      String.append(_:)(v149);

      v49 = v245;
      v50 = v246;
      v86 = 0x8000000100152160;
      v87 = [objc_opt_self() mainBundle];
LABEL_36:
      v42 = v87;
      v242 = v86;
      v51 = 0xD00000000000001ALL;
      goto LABEL_63;
    case 6u:
      v27 = *v7;
      v158 = v7[1];
      v159 = v7[2];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      v160._countAndFlagsBits = 0xD000000000000026;
      v160._object = 0x80000001001520D0;
      String.append(_:)(v160);
      v248 = v158;
      type metadata accessor for STBlueprintType(0);
      _print_unlocked<A, B>(_:_:)();
      v161._countAndFlagsBits = 0x20726F6620;
      v161._object = 0xE500000000000000;
      String.append(_:)(v161);
      v248 = v27;
      _print_unlocked<A, B>(_:_:)();
      v162._object = 0x8000000100152090;
      v162._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v162);
      v248 = v159;
      v163._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v163);

      v164 = v245;
      v165 = v246;
      v32 = [objc_opt_self() mainBundle];
      v243 = 0x8000000100152100;
      v166 = 0xD000000000000019;
      goto LABEL_60;
    case 7u:
      v124 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(71);
      v125._countAndFlagsBits = 0xD000000000000045;
      v125._object = 0x80000001001524B0;
      String.append(_:)(v125);
      v248 = v124;
      v126._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v126);

      v49 = v245;
      v50 = v246;
      v127 = 0x8000000100152500;
      v128 = [objc_opt_self() mainBundle];
      goto LABEL_39;
    case 8u:
      v176 = *v7;
      v175 = v7[1];
      v37 = v7[2];
      v177 = v7[3];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(114);
      v178._countAndFlagsBits = 0xD000000000000045;
      v178._object = 0x8000000100152040;
      String.append(_:)(v178);
      v248 = v37;
      type metadata accessor for STBlueprintConfigurationType(0);
      _print_unlocked<A, B>(_:_:)();
      v179._countAndFlagsBits = 0x756C6220726F6620;
      v179._object = 0xEF20746E69727065;
      String.append(_:)(v179);
      v180._countAndFlagsBits = v176;
      v180._object = v175;
      String.append(_:)(v180);

      v181._object = 0x8000000100152090;
      v181._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v181);
      v248 = v177;
      v182._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v182);

      v40 = v245;
      v41 = v246;
      v42 = [objc_opt_self() mainBundle];
      v241 = 0x80000001001520B0;
      v43 = 0xD00000000000001DLL;
      goto LABEL_44;
    case 9u:
      v94 = *v7;
      v95 = v7[1];
      v96 = v7[3];
      v97 = *(v7 + 16);
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(65);
      v248 = v245;
      v249 = v246;
      v98._countAndFlagsBits = 0xD000000000000025;
      v98._object = 0x8000000100152460;
      String.append(_:)(v98);
      v245 = v94;
      v246 = v95;
      v247 = v97;
      _print_unlocked<A, B>(_:_:)();
      sub_1000F8E2C(v94, v95, v97);
      v99._object = 0x8000000100152090;
      v99._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v99);
      v245 = v96;
      v100._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v100);

      v49 = v248;
      v50 = v249;
      v101 = 0x8000000100152490;
      v102 = [objc_opt_self() mainBundle];
      goto LABEL_50;
    case 0xAu:
      v172 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(72);
      v173._countAndFlagsBits = 0xD000000000000046;
      v173._object = 0x80000001001523E0;
      String.append(_:)(v173);
      v248 = v172;
      v174._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v174);

      v49 = v245;
      v50 = v246;
      v42 = [objc_opt_self() mainBundle];
      v242 = 0x8000000100152430;
      v51 = 0xD000000000000022;
      goto LABEL_63;
    case 0xBu:
      v80 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v81._countAndFlagsBits = 0xD00000000000003ELL;
      v81._object = 0x8000000100152380;
      String.append(_:)(v81);
      v248 = v80;
      v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v82);

      v49 = v245;
      v50 = v246;
      v42 = [objc_opt_self() mainBundle];
      v242 = 0x80000001001523C0;
      v51 = 0xD00000000000001BLL;
      goto LABEL_63;
    case 0xCu:
      v89 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v90._countAndFlagsBits = 0xD00000000000003CLL;
      v90._object = 0x8000000100152340;
      String.append(_:)(v90);
      v248 = v89;
      v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v91);

      v49 = v245;
      v50 = v246;
      v92 = 0x8000000100152320;
      v93 = [objc_opt_self() mainBundle];
      goto LABEL_62;
    case 0xDu:
      v155 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(71);
      v156._countAndFlagsBits = 0xD000000000000045;
      v156._object = 0x8000000100152530;
      String.append(_:)(v156);
      v248 = v155;
      v157._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v157);

      v49 = v245;
      v50 = v246;
      v127 = 0x8000000100152580;
      v128 = [objc_opt_self() mainBundle];
LABEL_39:
      v42 = v128;
      v242 = v127;
      v51 = 0xD000000000000021;
      goto LABEL_63;
    case 0xEu:
      v8 = *v7;
      v65 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v66._countAndFlagsBits = 0xD00000000000002ALL;
      v66._object = 0x80000001001522F0;
      String.append(_:)(v66);
      v67 = [v8 description];
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71._countAndFlagsBits = v68;
      v71._object = v70;
      String.append(_:)(v71);

      v72._object = 0x8000000100152090;
      v72._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v72);
      v248 = v65;
      v73._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v73);

      v74 = v245;
      v75 = v246;
      v76 = 0x8000000100152320;
      v77 = [objc_opt_self() mainBundle];
      goto LABEL_46;
    case 0xFu:
      v27 = *v7;
      v114 = v7[1];
      v115 = v7[2];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v116._countAndFlagsBits = 0xD00000000000002ALL;
      v116._object = 0x80000001001521D0;
      String.append(_:)(v116);
      v248 = v27;
      _print_unlocked<A, B>(_:_:)();
      v117._countAndFlagsBits = 0x20646E6120;
      v117._object = 0xE500000000000000;
      String.append(_:)(v117);
      v118._countAndFlagsBits = v114;
      v118._object = v115;
      String.append(_:)(v118);

      v119._countAndFlagsBits = 46;
      v119._object = 0xE100000000000000;
      String.append(_:)(v119);
      v30 = v245;
      v31 = v246;
      v32 = [objc_opt_self() mainBundle];
      v240 = 0x8000000100152200;
      v33 = 0xD00000000000001FLL;
      goto LABEL_69;
    case 0x10u:
      v27 = *v7;
      v60 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v61._countAndFlagsBits = 0xD000000000000023;
      v61._object = 0x80000001001522A0;
      String.append(_:)(v61);
      v248 = v27;
      _print_unlocked<A, B>(_:_:)();
      v62._object = 0x8000000100152090;
      v62._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v62);
      v248 = v60;
      v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v63);

      v30 = v245;
      v31 = v246;
      v54 = 0x80000001001522D0;
      v64 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0x11u:
      v142 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(72);
      v143._countAndFlagsBits = 0xD000000000000046;
      v143._object = 0x8000000100152220;
      String.append(_:)(v143);
      v248 = v142;
      v144._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v144);

      v49 = v245;
      v50 = v246;
      v42 = [objc_opt_self() mainBundle];
      v242 = 0x8000000100152270;
      v51 = 0xD000000000000020;
      goto LABEL_63;
    case 0x12u:
      v168 = *v7;
      v167 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v169._countAndFlagsBits = 0xD000000000000019;
      v169._object = 0x8000000100152000;
      String.append(_:)(v169);
      v170._countAndFlagsBits = v168;
      v170._object = v167;
      String.append(_:)(v170);

      v171._countAndFlagsBits = 0xD000000000000023;
      v171._object = 0x8000000100151FB0;
      String.append(_:)(v171);
      v49 = v245;
      v50 = v246;
      v101 = 0x8000000100152020;
      v42 = [objc_opt_self() mainBundle];
      v51 = 0xD000000000000013;
      goto LABEL_54;
    case 0x13u:
      v202 = *v7;
      v201 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v203._object = 0x8000000100151F90;
      v203._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v203);
      v204._countAndFlagsBits = v202;
      v204._object = v201;
      String.append(_:)(v204);

      v205._countAndFlagsBits = 0xD000000000000023;
      v205._object = 0x8000000100151FB0;
      String.append(_:)(v205);
      v49 = v245;
      v50 = v246;
      v42 = [objc_opt_self() mainBundle];
      v242 = 0x8000000100151FE0;
      v51 = 0xD00000000000001CLL;
      goto LABEL_63;
    case 0x14u:
      v37 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v145._countAndFlagsBits = 0x74207265626D654DLL;
      v145._object = 0xEF20666F20657079;
      String.append(_:)(v145);
      v248 = v37;
      type metadata accessor for STFamilyMemberType(0);
      _print_unlocked<A, B>(_:_:)();
      v146._countAndFlagsBits = 0x75736E7520736920;
      v146._object = 0xEF646574726F7070;
      String.append(_:)(v146);
      v40 = v245;
      v41 = v246;
      v42 = [objc_opt_self() mainBundle];
      v241 = 0xEF65707954726573;
      v43 = 0x5564696C61766E69;
      goto LABEL_44;
    case 0x15u:
      v151 = *v7;
      v150 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v245 = 0xD00000000000002CLL;
      v246 = 0x8000000100151D60;
      v152._countAndFlagsBits = v151;
      v152._object = v150;
      String.append(_:)(v152);

      v153._countAndFlagsBits = 46;
      v153._object = 0xE100000000000000;
      String.append(_:)(v153);
      v49 = v245;
      v50 = v246;
      v101 = 0x8000000100151D90;
      v154 = [objc_opt_self() mainBundle];
      goto LABEL_53;
    case 0x16u:
      v197 = *v7;
      v196 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v198._countAndFlagsBits = 0xD000000000000030;
      v198._object = 0x8000000100151D00;
      String.append(_:)(v198);
      v199._countAndFlagsBits = v197;
      v199._object = v196;
      String.append(_:)(v199);

      v200._countAndFlagsBits = 46;
      v200._object = 0xE100000000000000;
      String.append(_:)(v200);
      v49 = v245;
      v50 = v246;
      v101 = 0x8000000100151D40;
      v154 = [objc_opt_self() mainBundle];
LABEL_53:
      v42 = v154;
      v51 = 0xD000000000000011;
      goto LABEL_54;
    case 0x17u:
      v158 = *v7;
      v27 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);
      v206._countAndFlagsBits = 0xD00000000000001ELL;
      v206._object = 0x8000000100151CC0;
      String.append(_:)(v206);
      v248 = v158;
      type metadata accessor for STBlueprintType(0);
      _print_unlocked<A, B>(_:_:)();
      v207._countAndFlagsBits = 0x20726F6620;
      v207._object = 0xE500000000000000;
      String.append(_:)(v207);
      v248 = v27;
      _print_unlocked<A, B>(_:_:)();
      v208._countAndFlagsBits = 46;
      v208._object = 0xE100000000000000;
      String.append(_:)(v208);
      v164 = v245;
      v165 = v246;
      v32 = [objc_opt_self() mainBundle];
      v166 = 0xD000000000000010;
      v243 = 0x8000000100151CE0;
LABEL_60:
      v209._countAndFlagsBits = v164;
      v209._object = v165;
      v210._countAndFlagsBits = 0;
      v210._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v209, 0, v32, v210, *&v166)._countAndFlagsBits;

      goto LABEL_70;
    case 0x18u:
      v27 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      v109._countAndFlagsBits = 0xD000000000000020;
      v109._object = 0x8000000100151C70;
      String.append(_:)(v109);
      v248 = v27;
      _print_unlocked<A, B>(_:_:)();
      v110._countAndFlagsBits = 46;
      v110._object = 0xE100000000000000;
      String.append(_:)(v110);
      v30 = v245;
      v31 = v246;
      v54 = 0x8000000100151CA0;
      v64 = [objc_opt_self() mainBundle];
LABEL_24:
      v32 = v64;
      v33 = 0xD000000000000014;
      goto LABEL_68;
    case 0x19u:
      v37 = *v7;
      v103 = v7[1];
      v104 = v7[2];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v105._countAndFlagsBits = 0xD000000000000022;
      v105._object = 0x8000000100151C20;
      String.append(_:)(v105);
      v248 = v37;
      type metadata accessor for STBlueprintConfigurationType(0);
      _print_unlocked<A, B>(_:_:)();
      v106._countAndFlagsBits = 0x756C6220726F6620;
      v106._object = 0xEF20746E69727065;
      String.append(_:)(v106);
      v107._countAndFlagsBits = v103;
      v107._object = v104;
      String.append(_:)(v107);

      v108._countAndFlagsBits = 46;
      v108._object = 0xE100000000000000;
      String.append(_:)(v108);
      v40 = v245;
      v41 = v246;
      v42 = [objc_opt_self() mainBundle];
      v43 = 0xD000000000000014;
      v241 = 0x8000000100151C50;
      goto LABEL_44;
    case 0x1Au:
      v229 = *v7;
      v230 = v7[1];
      v27 = v7[2];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);
      v231._countAndFlagsBits = 0xD000000000000020;
      v231._object = 0x8000000100151B00;
      String.append(_:)(v231);
      v232._countAndFlagsBits = v229;
      v232._object = v230;
      String.append(_:)(v232);

      v233._countAndFlagsBits = 0x20726F6620;
      v233._object = 0xE500000000000000;
      String.append(_:)(v233);
      v248 = v27;
      _print_unlocked<A, B>(_:_:)();
      v234._countAndFlagsBits = 46;
      v234._object = 0xE100000000000000;
      String.append(_:)(v234);
      v30 = v245;
      v31 = v246;
      v54 = 0x8000000100151B30;
      v32 = [objc_opt_self() mainBundle];
      v33 = 0xD000000000000012;
      goto LABEL_68;
    case 0x1Bu:
      v27 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      v52._countAndFlagsBits = 0xD000000000000020;
      v52._object = 0x8000000100151AB0;
      String.append(_:)(v52);
      v248 = v27;
      _print_unlocked<A, B>(_:_:)();
      v53._countAndFlagsBits = 46;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      v30 = v245;
      v31 = v246;
      v54 = 0x8000000100151AE0;
      v32 = [objc_opt_self() mainBundle];
      v33 = 0xD000000000000015;
      goto LABEL_68;
    case 0x1Cu:
      v211 = *v7;
      v212 = v7[1];
      v214 = v7[2];
      v213 = v7[3];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v215._countAndFlagsBits = 0x7369206572656854;
      v215._object = 0xEC000000206F6E20;
      String.append(_:)(v215);
      v216._countAndFlagsBits = v211;
      v216._object = v212;
      String.append(_:)(v216);

      v217._countAndFlagsBits = 0x65687420726F6620;
      v217._object = 0xEE00206570797420;
      String.append(_:)(v217);
      v218._countAndFlagsBits = v214;
      v218._object = v213;
      String.append(_:)(v218);

      v219._object = 0x8000000100151A70;
      v219._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v219);
      v49 = v245;
      v50 = v246;
      v92 = 0x8000000100151A90;
      v93 = [objc_opt_self() mainBundle];
LABEL_62:
      v42 = v93;
      v242 = v92;
      v51 = 0xD000000000000019;
      goto LABEL_63;
    case 0x1Du:
      (*(v2 + 32))(v4, v7, v1);
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v245 = 0xD000000000000026;
      v246 = 0x8000000100151A40;
      sub_1000F8E44(&qword_1001E2A10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v222._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v222);

      v223._countAndFlagsBits = 46;
      v223._object = 0xE100000000000000;
      String.append(_:)(v223);
      v224 = v245;
      v225 = v246;
      v226 = [objc_opt_self() mainBundle];
      v250._object = 0xED00007463656A62;
      v250._countAndFlagsBits = 0x4F676E697373696DLL;
      v227._countAndFlagsBits = v224;
      v227._object = v225;
      v228._countAndFlagsBits = 0;
      v228._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v227, 0, v226, v228, v250)._countAndFlagsBits;

      (*(v2 + 8))(v4, v1);
      return countAndFlagsBits;
    case 0x1Eu:
      v8 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v245 = 0xD000000000000026;
      v246 = 0x80000001001519F0;
      v186 = [v8 description];
      v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v189 = v188;

      v190._countAndFlagsBits = v187;
      v190._object = v189;
      String.append(_:)(v190);

      v191._countAndFlagsBits = 46;
      v191._object = 0xE100000000000000;
      String.append(_:)(v191);
      v74 = v245;
      v75 = v246;
      v76 = 0x8000000100151A20;
      v77 = [objc_opt_self() mainBundle];
LABEL_46:
      v14 = v77;
      v238 = v76;
      v20 = 0xD000000000000019;
      goto LABEL_47;
    case 0x1Fu:
      v8 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v245 = 0xD00000000000001FLL;
      v246 = 0x80000001001519D0;
      v136 = [v8 description];
      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v139 = v138;

      v140._countAndFlagsBits = v137;
      v140._object = v139;
      String.append(_:)(v140);

      v141._countAndFlagsBits = 46;
      v141._object = 0xE100000000000000;
      String.append(_:)(v141);
      v74 = v245;
      v75 = v246;
      v14 = [objc_opt_self() mainBundle];
      v238 = 0xEC00000065676173;
      v20 = 0x55676E697373696DLL;
LABEL_47:
      v15 = v74;
      v16 = v75;
      v17.super.isa = v14;
      v18 = 0;
      v19 = 0xE000000000000000;
      goto LABEL_48;
    case 0x20u:
      v193 = *v7;
      v192 = v7[1];
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v245 = 0x203A656369766544;
      v246 = 0xE800000000000000;
      v194._countAndFlagsBits = v193;
      v194._object = v192;
      String.append(_:)(v194);

      v195._countAndFlagsBits = 0xD000000000000020;
      v195._object = 0x8000000100151980;
      String.append(_:)(v195);
      v49 = v245;
      v50 = v246;
      v101 = 0x80000001001519B0;
      v102 = [objc_opt_self() mainBundle];
LABEL_50:
      v42 = v102;
      v51 = 0xD000000000000016;
LABEL_54:
      v242 = v101;
      goto LABEL_63;
    case 0x21u:
      v27 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);
      v78._countAndFlagsBits = 0x203A72657355;
      v78._object = 0xE600000000000000;
      String.append(_:)(v78);
      v248 = v27;
      _print_unlocked<A, B>(_:_:)();
      v79._countAndFlagsBits = 0xD00000000000001FLL;
      v79._object = 0x8000000100151940;
      String.append(_:)(v79);
      v30 = v245;
      v31 = v246;
      v54 = 0x8000000100151960;
      v32 = [objc_opt_self() mainBundle];
      v33 = 0xD000000000000017;
LABEL_68:
      v240 = v54;
      goto LABEL_69;
    case 0x22u:
      v55 = *v7;
      v56 = v7[1];
      v57 = *(v7 + 16);
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v248 = v245;
      v249 = v246;
      v58._countAndFlagsBits = 0x203A656369766544;
      v58._object = 0xE800000000000000;
      String.append(_:)(v58);
      v245 = v55;
      v246 = v56;
      v247 = v57;
      _print_unlocked<A, B>(_:_:)();
      sub_1000F8E2C(v55, v56, v57);
      v59._countAndFlagsBits = 0xD000000000000013;
      v59._object = 0x8000000100151920;
      String.append(_:)(v59);
      v49 = v248;
      v50 = v249;
      v42 = [objc_opt_self() mainBundle];
      v242 = 0xE700000000000000;
      v51 = 0x65676173556F6ELL;
      goto LABEL_63;
    case 0x23u:
      v37 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      v38._countAndFlagsBits = 0xD000000000000042;
      v38._object = 0x80000001001518A0;
      String.append(_:)(v38);
      v248 = v37;
      type metadata accessor for STBlueprintConfigurationType(0);
      _print_unlocked<A, B>(_:_:)();
      v39._countAndFlagsBits = 46;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      v40 = v245;
      v41 = v246;
      v42 = [objc_opt_self() mainBundle];
      v241 = 0x80000001001518F0;
      v43 = 0xD00000000000002DLL;
LABEL_44:
      v183._countAndFlagsBits = v40;
      v183._object = v41;
      v184._countAndFlagsBits = 0;
      v184._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v183, 0, v42, v184, *&v43)._countAndFlagsBits;

      goto LABEL_64;
    case 0x24u:
      v44 = *v7;
      v45 = v7[1];
      v46 = *(v7 + 16);
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      v248 = v245;
      v249 = v246;
      v47._countAndFlagsBits = 0x206E776F6E6B6E55;
      v47._object = 0xEF20656369766564;
      String.append(_:)(v47);
      v245 = v44;
      v246 = v45;
      v247 = v46;
      _print_unlocked<A, B>(_:_:)();
      sub_1000F8E2C(v44, v45, v46);
      v48._countAndFlagsBits = 46;
      v48._object = 0xE100000000000000;
      String.append(_:)(v48);
      v49 = v248;
      v50 = v249;
      v42 = [objc_opt_self() mainBundle];
      v242 = 0xED00006563697665;
      v51 = 0x446E776F6E6B6E75;
LABEL_63:
      v220._countAndFlagsBits = v49;
      v220._object = v50;
      v221._countAndFlagsBits = 0;
      v221._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v220, 0, v42, v221, *&v51)._countAndFlagsBits;
LABEL_64:

      return countAndFlagsBits;
    case 0x25u:
      v27 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v28._countAndFlagsBits = 0x206E776F6E6B6E55;
      v28._object = 0xED00002072657375;
      String.append(_:)(v28);
      v248 = v27;
      _print_unlocked<A, B>(_:_:)();
      v29._countAndFlagsBits = 46;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v30 = v245;
      v31 = v246;
      v32 = [objc_opt_self() mainBundle];
      v240 = 0xEB00000000726573;
      v33 = 0x556E776F6E6B6E75;
LABEL_69:
      v235._countAndFlagsBits = v30;
      v235._object = v31;
      v236._countAndFlagsBits = 0;
      v236._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v235, 0, v32, v236, *&v33)._countAndFlagsBits;
LABEL_70:

      return countAndFlagsBits;
    case 0x26u:
      v21 = [objc_opt_self() mainBundle];
      v239 = 0x8000000100152810;
      v22 = 0xD000000000000046;
      v23 = 0x80000001001527C0;
      v24 = 0xD000000000000020;
      goto LABEL_74;
    case 0x27u:
      v25 = "invalidBlueprint";
      v21 = [objc_opt_self() mainBundle];
      v24 = 0xD000000000000011;
      v239 = 0x8000000100152740;
      v22 = 0xD00000000000001DLL;
      goto LABEL_73;
    case 0x28u:
      v25 = "invalidCoreDevice";
      v88 = 0x8000000100152700;
      v21 = [objc_opt_self() mainBundle];
      v24 = 0xD000000000000010;
      v22 = 0xD000000000000016;
      goto LABEL_33;
    case 0x29u:
      v25 = "invalidUserDeviceState";
      v88 = 0x80000001001526C0;
      v21 = [objc_opt_self() mainBundle];
      v24 = 0xD000000000000011;
      v22 = 0xD000000000000017;
LABEL_33:
      v239 = v88;
      goto LABEL_73;
    case 0x2Au:
      v25 = "invalidDeclarationType";
      v26 = 0x8000000100152680;
      v21 = [objc_opt_self() mainBundle];
      v24 = 0xD000000000000016;
      goto LABEL_58;
    case 0x2Bu:
      v25 = "localDeviceNameMissing";
      v26 = 0x8000000100151F70;
      v21 = [objc_opt_self() mainBundle];
      v24 = 0xD000000000000017;
LABEL_58:
      v239 = v26;
      v22 = 0xD00000000000001ELL;
      goto LABEL_73;
    case 0x2Cu:
      v25 = "localUserDeviceStateMissing";
      v21 = [objc_opt_self() mainBundle];
      v24 = 0xD000000000000016;
      v239 = 0x8000000100151F30;
      v22 = 0xD000000000000034;
      goto LABEL_73;
    case 0x2Du:
      v21 = [objc_opt_self() mainBundle];
      v239 = 0x8000000100151E60;
      v22 = 0xD000000000000050;
      v23 = 0x8000000100151E00;
      v24 = 0xD00000000000001CLL;
      goto LABEL_74;
    case 0x2Eu:
      v21 = [objc_opt_self() mainBundle];
      v239 = 0x8000000100151ED0;
      v22 = 0xD000000000000042;
      v23 = 0x8000000100151E80;
      v24 = 0xD00000000000001BLL;
      goto LABEL_74;
    case 0x2Fu:
      v21 = [objc_opt_self() mainBundle];
      v239 = 0x8000000100151DE0;
      v22 = 0xD000000000000020;
      v23 = 0x8000000100151DB0;
      v34.super.isa = v21;
      v35 = 0;
      v36 = 0xE000000000000000;
      v24 = 0xD000000000000018;
      goto LABEL_75;
    case 0x30u:
      v21 = [objc_opt_self() mainBundle];
      v239 = 0x8000000100151C00;
      v22 = 0xD00000000000004CLL;
      v23 = 0x8000000100151BB0;
      v24 = 0xD00000000000001ALL;
      goto LABEL_74;
    case 0x31u:
      v21 = [objc_opt_self() mainBundle];
      v239 = 0x8000000100151B90;
      v22 = 0xD000000000000038;
      v23 = 0x8000000100151B50;
      v24 = 0xD000000000000019;
      goto LABEL_74;
    case 0x32u:
      v21 = [objc_opt_self() mainBundle];
      v239 = 0x8000000100151880;
      v22 = 0xD000000000000020;
      v23 = 0x8000000100151850;
      v24 = 0xD00000000000001DLL;
      goto LABEL_74;
    case 0x33u:
      v25 = "$_managedObjectContext";
      v21 = [objc_opt_self() mainBundle];
      v24 = 0xD000000000000010;
      v239 = 0x8000000100151830;
      v22 = 0xD000000000000033;
LABEL_73:
      v23 = v25 | 0x8000000000000000;
LABEL_74:
      v34.super.isa = v21;
      v35 = 0;
      v36 = 0xE000000000000000;
LABEL_75:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v22, 0, v34, *&v35, *&v24)._countAndFlagsBits;

      break;
    default:
      v8 = *v7;
      v245 = 0;
      v246 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v9._countAndFlagsBits = 0xD000000000000035;
      v9._object = 0x8000000100152840;
      String.append(_:)(v9);
      v10._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.append(_:)(v10);

      v11._countAndFlagsBits = 46;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      v12 = v245;
      v13 = v246;
      v14 = [objc_opt_self() mainBundle];
      v238 = 0x8000000100152880;
      v15 = v12;
      v16 = v13;
      v17.super.isa = v14;
      v18 = 0;
      v19 = 0xE000000000000000;
      v20 = 0xD000000000000018;
LABEL_48:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, 0, v17, *&v18, *&v20)._countAndFlagsBits;

      break;
  }

  return countAndFlagsBits;
}

uint64_t sub_1000F8DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataStore.DataStoreError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F8E2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1000F8E44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000F8ED8(void *a1)
{
  v1 = a1;
  if (a1)
  {
    sub_1000A0F74(0, &qword_1001E0000, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v3 = static NSObject.== infix(_:_:)();

    if (v3)
    {
      type metadata accessor for DataStore.DataStoreError(0);
      sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
      swift_allocError();
      *v4 = v1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v5 = v1;
      return v1;
    }

    v6 = [objc_opt_self() fetchRequestForUsersWithDSID:v1];
  }

  else
  {
    v6 = [objc_opt_self() fetchRequestMatchingLocalUser];
  }

  v7 = v6;
  v18 = 0;
  v8 = [v7 execute:&v18];
  v9 = v18;
  if (!v8)
  {
    v1 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_18:

    return v1;
  }

  v10 = v8;
  sub_1000A0F74(0, &qword_1001E0A40, STCoreUser_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v9;

  if (v11 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 != 1)
  {
LABEL_15:

    type metadata accessor for DataStore.DataStoreError(0);
    sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
    swift_allocError();
    *v15 = v1;
    if (v13)
    {
      v15[1] = v13;
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = v1;
    goto LABEL_18;
  }

LABEL_9:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v14 = *(v11 + 32);
  }

  v1 = v14;

  return v1;
}

id sub_1000F91D8()
{
  v0 = [objc_opt_self() fetchRequest];
  v10 = 0;
  v1 = [v0 execute:&v10];
  v2 = v10;
  if (!v1)
  {
    v7 = v10;
    _convertNSErrorToError(_:)();

LABEL_13:
    swift_willThrow();

    return v2;
  }

  v3 = v1;
  sub_1000A0F74(0, &qword_1001E2A28, STFamilyOrganization_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v2;

  if (v4 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2 == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v2 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2 != 1)
  {
LABEL_10:

    type metadata accessor for DataStore.DataStoreError(0);
    sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
    swift_allocError();
    if (v2)
    {
      *v8 = v2;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v6 = *(v4 + 32);
  }

  v2 = v6;

  return v2;
}

id sub_1000F93E4(void *a1, unint64_t *a2, id a3)
{
  v6 = [objc_opt_self() fetchRequest];
  v16 = 0;
  v7 = [v6 execute:&v16];
  v8 = v16;
  if (!v7)
  {
    a3 = v16;
    _convertNSErrorToError(_:)();

LABEL_11:
    swift_willThrow();

    return a3;
  }

  v9 = v7;
  sub_1000A0F74(0, a2, a1);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v8;

  if (v10 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12 == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12 != 1)
  {
LABEL_10:

    type metadata accessor for DataStore.DataStoreError(0);
    sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
    swift_allocError();
    *v14 = v12;
    swift_storeEnumTagMultiPayload();
    goto LABEL_11;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v13 = *(v10 + 32);
  }

  a3 = v13;

  return a3;
}

id sub_1000F95E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = [a1 dsid];
  v4 = [a1 altDSID];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v7;
    v29 = v6;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v8 = [a1 appleID];
  if (v8)
  {
    v9 = v8;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v26 = 0;
    v11 = 0;
  }

  v12 = [a1 familyName];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 givenName];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [a1 familyMemberType];
  if (!v22)
  {
    v22 = STFamilyMemberTypeUnknown;
  }

  v23 = [a1 isParent];
  v24 = [a1 isFamilyOrganizer];
  result = [a1 isManaged];
  *a2 = v30;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28;
  *(a2 + 24) = v27;
  *(a2 + 32) = v11;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16;
  *(a2 + 56) = v19;
  *(a2 + 64) = v21;
  *(a2 + 72) = v22;
  *(a2 + 80) = v23;
  *(a2 + 81) = v24;
  *(a2 + 82) = result;
  return result;
}

uint64_t sub_1000F97C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F9838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000F98A8(id a1, char a2)
{
  if (a2)
  {
    result = [a1 familySettings];
    if (result)
    {
      return result;
    }

    type metadata accessor for DataStore.DataStoreError(0);
    sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
    swift_allocError();
    v5 = v4;
    v6 = [a1 localUserDeviceState];
    if (v6)
    {

      v7 = 0;
    }

    else
    {
      v7 = [a1 dsid];
    }

    *v5 = v7;
  }

  else
  {
    result = [a1 cloudSettings];
    if (result)
    {
      return result;
    }

    type metadata accessor for DataStore.DataStoreError(0);
    sub_1000F8E44(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
    swift_allocError();
    v9 = v8;
    v10 = [a1 localUserDeviceState];
    if (v10)
    {

      v11 = 0;
    }

    else
    {
      v11 = [a1 dsid];
    }

    *v9 = v11;
  }

  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

__n128 sub_1000F9A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000F9A98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 83))
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

uint64_t sub_1000F9AE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 83) = 1;
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

    *(result + 83) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F9B4C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000F9B68(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000F9B7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000F9BC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000F9C08(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000F9C3C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F9C8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1000F9CE0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1000F9D60(uint64_t a1)
{
  sub_1000FA4C0(319, &qword_1001E2AB8, type metadata accessor for STBlueprintType);
  if (v1 <= 0x3F)
  {
    sub_1000FA1C4();
    if (v2 <= 0x3F)
    {
      sub_1000FA21C();
      if (v3 <= 0x3F)
      {
        sub_1000FA24C();
        if (v4 <= 0x3F)
        {
          sub_1000FA2AC(319, &qword_1001E2AD8, type metadata accessor for STBlueprintType, &type metadata for DataStore.UserID, "userID type numberOfBlueprints ");
          if (v5 <= 0x3F)
          {
            sub_1000FA27C();
            if (v6 <= 0x3F)
            {
              sub_1000FA2AC(319, &qword_1001E2AE8, type metadata accessor for STBlueprintConfigurationType, &type metadata for String, "blueprintIdentifier type numberOfConfigurations ");
              if (v7 <= 0x3F)
              {
                sub_1000FA5AC(319, &qword_1001E2AF0, &type metadata for DataStore.DeviceID, &type metadata for Int, "deviceID numberOfDevices ");
                if (v8 <= 0x3F)
                {
                  sub_1000FA324();
                  if (v9 <= 0x3F)
                  {
                    sub_1000FA354();
                    if (v10 <= 0x3F)
                    {
                      sub_1000FA384();
                      if (v11 <= 0x3F)
                      {
                        sub_1000FA3B4(319);
                        if (v12 <= 0x3F)
                        {
                          sub_1000FA5AC(319, &qword_1001E2B18, &type metadata for DataStore.UserID, &type metadata for String, "userID deviceID ");
                          if (v13 <= 0x3F)
                          {
                            sub_1000FA5AC(319, &qword_1001E2B20, &type metadata for DataStore.UserID, &type metadata for Int, "userID numberOfUsers ");
                            if (v14 <= 0x3F)
                            {
                              sub_1000FA430();
                              if (v15 <= 0x3F)
                              {
                                sub_1000FA460();
                                if (v16 <= 0x3F)
                                {
                                  sub_1000FA490();
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1000FA4C0(319, &qword_1001E2B40, type metadata accessor for STFamilyMemberType);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1000FA50C(319, &qword_1001E2B48, type metadata accessor for STBlueprintType, &type metadata for DataStore.UserID, "type userID ");
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1000FA57C();
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1000FA50C(319, &qword_1001E2B58, type metadata accessor for STBlueprintConfigurationType, &type metadata for String, "type blueprintIdentifier ");
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1000FA5AC(319, &qword_1001E2B60, &type metadata for String, &type metadata for DataStore.UserID, "type userID ");
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1000FA5AC(319, &qword_1001E2B68, &type metadata for String, &type metadata for String, "key type ");
                                              if (v23 <= 0x3F)
                                              {
                                                sub_1000FA4C0(319, &qword_1001E2B70, &type metadata accessor for URL);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_1000FA604();
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_1000FA4C0(319, &unk_1001E2B80, type metadata accessor for STBlueprintConfigurationType);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000FA1C4()
{
  if (!qword_1001E2AC0)
  {
    v0 = sub_1000A0F74(0, &qword_1001E0028, NSPredicate_ptr);
    if (!v1)
    {
      atomic_store(v0, &qword_1001E2AC0);
    }
  }
}

void *sub_1000FA21C()
{
  result = qword_1001E2AC8;
  if (!qword_1001E2AC8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1001E2AC8);
  }

  return result;
}

void *sub_1000FA24C()
{
  result = qword_1001E2AD0;
  if (!qword_1001E2AD0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1001E2AD0);
  }

  return result;
}

void *sub_1000FA27C()
{
  result = qword_1001E2AE0;
  if (!qword_1001E2AE0)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1001E2AE0);
  }

  return result;
}

void sub_1000FA2AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void *sub_1000FA324()
{
  result = qword_1001E2AF8;
  if (!qword_1001E2AF8)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1001E2AF8);
  }

  return result;
}

void *sub_1000FA354()
{
  result = qword_1001E2B00;
  if (!qword_1001E2B00)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1001E2B00);
  }

  return result;
}

void *sub_1000FA384()
{
  result = qword_1001E2B08;
  if (!qword_1001E2B08)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1001E2B08);
  }

  return result;
}

void sub_1000FA3B4(uint64_t a1)
{
  if (!qword_1001E2B10)
  {
    sub_1000A0F74(255, &qword_1001E0028, NSPredicate_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001E2B10);
    }
  }
}

void *sub_1000FA430()
{
  result = qword_1001E2B28;
  if (!qword_1001E2B28)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1001E2B28);
  }

  return result;
}

void *sub_1000FA460()
{
  result = qword_1001E2B30;
  if (!qword_1001E2B30)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1001E2B30);
  }

  return result;
}

void *sub_1000FA490()
{
  result = qword_1001E2B38;
  if (!qword_1001E2B38)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1001E2B38);
  }

  return result;
}

void sub_1000FA4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void sub_1000FA50C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *sub_1000FA57C()
{
  result = qword_1001E2B50;
  if (!qword_1001E2B50)
  {
    result = &type metadata for DataStore.UserID;
    atomic_store(&type metadata for DataStore.UserID, &qword_1001E2B50);
  }

  return result;
}

void sub_1000FA5AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *sub_1000FA604()
{
  result = qword_1001E2B78;
  if (!qword_1001E2B78)
  {
    result = &type metadata for DataStore.DeviceID;
    atomic_store(&type metadata for DataStore.DeviceID, &qword_1001E2B78);
  }

  return result;
}

unint64_t sub_1000FA638()
{
  result = qword_1001E2BB0;
  if (!qword_1001E2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2BB0);
  }

  return result;
}

unint64_t sub_1000FA690()
{
  result = qword_1001E2BB8;
  if (!qword_1001E2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2BB8);
  }

  return result;
}

unint64_t sub_1000FA6E8(uint64_t a1)
{
  if (a1 < 0)
  {
    _StringGuts.grow(_:)(36);

    v3 = 0xD000000000000022;
  }

  else
  {
    _StringGuts.grow(_:)(34);

    v3 = 0xD000000000000020;
  }

  swift_getErrorValue();
  v1._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v1);

  return v3;
}

uint64_t sub_1000FA7E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000FA844(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

id sub_1000FA8C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(STDaemonPersistenceController) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FA934()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(STUserNotificationManager) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FA9A0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(STConcreteAskForTimeEventRelay) init];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAA0C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(STConcreteDeviceInformationPrimitives) init];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAA78()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(STConcreteAskForTimeConfigurationProvider) init];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAAE4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for STConcreteAskToManager()) init];
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAB50()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = sub_1000FA8C8();
    v4 = sub_1000FA934();
    v5 = sub_1000FA9A0();
    v6 = sub_1000FAA78();
    v7 = sub_1000FAAE4();
    v8 = [objc_allocWithZone(STAskForTimeManager) initWithPersistenceController:v3 userNotificationManager:v4 eventRelay:v5 askForTimeConfigurationProvider:v6 askToManager:v7];

    v9 = *(v0 + 64);
    *(v0 + 64) = v8;
    v2 = v8;

    v1 = 0;
  }

  v10 = v1;
  return v2;
}

uint64_t sub_1000FAC20()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72))
  {
    v7 = *(v0 + 72);
  }

  else
  {
    v8 = sub_1000FA8C8();
    v12 = sub_1000FAB50();
    v11[1] = sub_1000A0F74(0, &qword_1001E1A08, OS_dispatch_queue_ptr);
    (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
    static DispatchQoS.unspecified.getter();
    v13 = _swiftEmptyArrayStorage;
    sub_1000FDFE0();
    sub_1000A0F2C(&qword_1001E1A20, qword_1001431E0);
    sub_1000FE038();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v7 = sub_1000FE09C(v8, v9);

    *(v0 + 72) = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v7;
}

id sub_1000FAEA4()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = [objc_allocWithZone(STAccountNotifier) init];
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAF10()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v3 = [objc_opt_self() defaultCenter];
    v4 = *(v0 + 88);
    *(v0 + 88) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000FAF84()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    v3 = sub_1000FA8C8();
    v4 = sub_1000FAB50();
    v5 = sub_1000FAC20();
    v6 = sub_1000FAEA4();
    v7 = sub_1000FAA0C();
    v8 = [v7 screenTimeCapabilities];

    v9 = [objc_allocWithZone(STScreenTimeOrganizationController) initWithPersistenceController:v3 askForTimeManager:v4 mirroringMonitor:v5 accountNotifier:v6 capabilities:v8];
    swift_unknownObjectRelease();

    v10 = *(v0 + 96);
    *(v0 + 96) = v9;
    v2 = v9;

    v1 = 0;
  }

  v11 = v1;
  return v2;
}

uint64_t sub_1000FB074@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001E2F10, &unk_100143010);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionCoder;
  swift_beginAccess();
  sub_1000A95B0(v1 + v9, v8, &qword_1001E2F10, &unk_100143010);
  v10 = type metadata accessor for STExpressIntroduction.Internal.JSONCoder();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000A5148(v8, &qword_1001E2F10, &unk_100143010);
  STExpressIntroduction.Internal.JSONCoder.init()();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000FDF78(v6, v1 + v9, &qword_1001E2F10, &unk_100143010);
  return swift_endAccess();
}

uint64_t sub_1000FB278@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001E2F00, &qword_100143008);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4);
  v8 = &v15[-v7 - 8];
  v9 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionSettingsDefaultsDataSource;
  swift_beginAccess();
  sub_1000A95B0(v1 + v9, v8, &qword_1001E2F00, &qword_100143008);
  v10 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000A5148(v8, &qword_1001E2F00, &qword_100143008);
  v16[3] = type metadata accessor for STExpressIntroduction.Internal.JSONCoder();
  v16[4] = &protocol witness table for STExpressIntroduction.Internal.JSONCoder;
  v12 = sub_1000AC704(v16);
  sub_1000FB074(v12);
  sub_1000DEF80(v16, v15);
  STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource.init(coder:createAppGroupUserDefaults:)();
  sub_1000A462C(v16);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000FDF78(v6, v1 + v9, &qword_1001E2F00, &qword_100143008);
  return swift_endAccess();
}

id sub_1000FB4D0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    sub_1000FDF24();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1000FB590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001E2EF8, &unk_100142FF8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4);
  v8 = &v15[-v7 - 8];
  v9 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionReconcilingSettingsStore;
  swift_beginAccess();
  sub_1000A95B0(v1 + v9, v8, &qword_1001E2EF8, &unk_100142FF8);
  v10 = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000A5148(v8, &qword_1001E2EF8, &unk_100142FF8);
  v18[3] = type metadata accessor for STExpressIntroduction.Internal.STDatabase();
  v18[4] = &protocol witness table for STExpressIntroduction.Internal.STDatabase;
  v12 = sub_1000AC704(v18);
  sub_1000FBFB0(v12);
  v17[3] = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore();
  v17[4] = &protocol witness table for STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore;
  sub_1000AC704(v17);
  static STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore.shared.getter();
  sub_1000DEF80(v18, v16);
  sub_1000DEF80(v17, v15);
  STExpressIntroduction.Internal.ReconcilingSettingsStore.init(dataSource:userContextStore:fetchSignedInAppleAccountDSID:)();
  sub_1000A462C(v17);
  sub_1000A462C(v18);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000FDF78(v6, v1 + v9, &qword_1001E2EF8, &unk_100142FF8);
  return swift_endAccess();
}

void sub_1000FB824()
{
  v0 = [objc_allocWithZone(ACAccountStore) init];
  v1 = [v0 aa_primaryAppleAccount];

  if (v1)
  {
    v2 = [v1 aa_personID];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      v6 = HIBYTE(v5) & 0xF;
      v7 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v8 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v35 = 0;

          sub_1000FCF78(v3, v5, 10);
          swift_bridgeObjectRelease_n();
          return;
        }

        if ((v5 & 0x2000000000000000) != 0)
        {
          v34[0] = v3;
          v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v6)
            {
              if (--v6)
              {
                v23 = 0;
                v24 = v34 + 1;
                while (1)
                {
                  v25 = *v24 - 48;
                  if (v25 > 9)
                  {
                    break;
                  }

                  v26 = 10 * v23;
                  if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                  {
                    break;
                  }

                  v23 = v26 + v25;
                  if (__OFADD__(v26, v25))
                  {
                    break;
                  }

                  ++v24;
                  if (!--v6)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

            goto LABEL_72;
          }

          if (v3 != 45)
          {
            if (v6)
            {
              v30 = 0;
              v31 = v34;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                v33 = 10 * v30;
                if ((v30 * 10) >> 64 != (10 * v30) >> 63)
                {
                  break;
                }

                v30 = v33 + v32;
                if (__OFADD__(v33, v32))
                {
                  break;
                }

                ++v31;
                if (!--v6)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v6)
          {
            if (--v6)
            {
              v15 = 0;
              v16 = v34 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  break;
                }

                v15 = v18 - v17;
                if (__OFSUB__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v6)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v9 = _StringObject.sharedUTF8.getter();
          }

          v10 = *v9;
          if (v10 == 43)
          {
            if (v7 >= 1)
            {
              v6 = v7 - 1;
              if (v7 != 1)
              {
                v19 = 0;
                if (v9)
                {
                  v20 = v9 + 1;
                  while (1)
                  {
                    v21 = *v20 - 48;
                    if (v21 > 9)
                    {
                      goto LABEL_63;
                    }

                    v22 = 10 * v19;
                    if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v19 = v22 + v21;
                    if (__OFADD__(v22, v21))
                    {
                      goto LABEL_63;
                    }

                    ++v20;
                    if (!--v6)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_71;
          }

          if (v10 != 45)
          {
            if (v7)
            {
              v27 = 0;
              if (v9)
              {
                while (1)
                {
                  v28 = *v9 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_63;
                  }

                  v29 = 10 * v27;
                  if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v27 = v29 + v28;
                  if (__OFADD__(v29, v28))
                  {
                    goto LABEL_63;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            LOBYTE(v6) = 1;
            goto LABEL_64;
          }

          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              v11 = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v13 = *v12 - 48;
                  if (v13 > 9)
                  {
                    goto LABEL_63;
                  }

                  v14 = 10 * v11;
                  if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v11 = v14 - v13;
                  if (__OFSUB__(v14, v13))
                  {
                    goto LABEL_63;
                  }

                  ++v12;
                  if (!--v6)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v6) = 0;
LABEL_64:
              v35 = v6;

              return;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        return;
      }
    }
  }
}

id sub_1000FBBAC()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___agentServer;
  v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___agentServer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___agentServer);
  }

  else
  {
    v4 = sub_1000FBC10();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000FBC10()
{
  v0 = type metadata accessor for STExpressIntroduction.Internal.JSONCoder();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v20[-v5];
  v7 = type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v20[-v12];
  v23[3] = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore();
  v23[4] = &protocol witness table for STExpressIntroduction.Internal.ReconcilingSettingsStore;
  v14 = sub_1000AC704(v23);
  sub_1000FB590(v14);
  v22[3] = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource();
  v22[4] = &protocol witness table for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource;
  v15 = sub_1000AC704(v22);
  sub_1000FB278(v15);
  sub_1000DEF80(v23, v21);
  sub_1000DEF80(v22, v20);
  STExpressIntroduction.Internal.DefaultsSavingSettingsStore.init(internal:settingsDefaultsDataSource:)();
  sub_1000A462C(v22);
  sub_1000A462C(v23);
  sub_1000FB074(v6);
  (*(v1 + 16))(v4, v6, v0);
  (*(v8 + 16))(v11, v13, v7);
  v16 = sub_1000FDDA8(v4, v11);
  (*(v1 + 8))(v6, v0);
  v17 = sub_1000FAF84();
  v18 = [objc_allocWithZone(STAgentServer) initWithScreenTimeStateManager:v17 expressIntroductionServer:v16];

  (*(v8 + 8))(v13, v7);
  return v18;
}

char *sub_1000FBEC8()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___exceptionListenerDelegate;
  v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___exceptionListenerDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___exceptionListenerDelegate);
  }

  else
  {
    v4 = v0;
    v5 = sub_1000FA8C8();
    v6 = type metadata accessor for STExceptionServer();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_exceptionsListUpdateDelegate] = 0;
    *&v7[OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_fetchContext] = 0;
    *&v7[OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_fetchController] = 0;
    *&v7[OBJC_IVAR____TtC15ScreenTimeAgent17STExceptionServer_persistenceController] = v5;
    v14.receiver = v7;
    v14.super_class = v6;
    v8 = objc_msgSendSuper2(&v14, "init");
    v9 = objc_allocWithZone(type metadata accessor for STExceptionListener());
    v10 = sub_1000B8198(v8);
    v11 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_1000FBFB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001E2EE0, &qword_100142FF0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4);
  v8 = &v19[-v7 - 8];
  v9 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionDataSource;
  swift_beginAccess();
  sub_1000A95B0(v1 + v9, v8, &qword_1001E2EE0, &qword_100142FF0);
  v10 = type metadata accessor for STExpressIntroduction.Internal.STDatabase();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000A5148(v8, &qword_1001E2EE0, &qword_100142FF0);
  sub_1000FA8C8();
  v12 = *(v1 + 16);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 create];
  [objc_allocWithZone(STOrganizationSettingsRestrictionUtility) initWithPersistenceController:v14 restrictionPayloadUtility:v15];

  v16 = sub_1000FAF84();
  v20[3] = sub_1000A0F74(0, &qword_1001E2EE8, off_1001A1178);
  v20[4] = sub_1000FCE9C();
  v20[0] = v16;
  sub_1000DEF80(v20, v19);
  STExpressIntroduction.Internal.STDatabase.init(persistenceController:organizationSettingsRestrictionUtility:introductionModelService:)();
  sub_1000A462C(v20);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000FDF78(v6, v1 + v9, &qword_1001E2EE0, &qword_100142FF0);
  return swift_endAccess();
}

id *sub_1000FC270()
{
  swift_unknownObjectRelease();

  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionCoder, &qword_1001E2F10, &unk_100143010);
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionSettingsDefaultsDataSource, &qword_1001E2F00, &qword_100143008);
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionReconcilingSettingsStore, &qword_1001E2EF8, &unk_100142FF8);

  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionDataSource, &qword_1001E2EE0, &qword_100142FF0);
  return v0;
}

uint64_t sub_1000FC380()
{
  sub_1000FC270();

  return swift_deallocClassInstance();
}

uint64_t sub_1000FC3D8()
{
  *(v0 + 96) = 0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionCoder;
  v2 = type metadata accessor for STExpressIntroduction.Internal.JSONCoder();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionSettingsDefaultsDataSource;
  v4 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionReconcilingSettingsStore;
  v6 = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___agentServer) = 0;
  *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___exceptionListenerDelegate) = 0;
  v7 = OBJC_IVAR____TtC15ScreenTimeAgent25ConcreteDependencyFactory____lazy_storage___expressIntroductionDataSource;
  v8 = type metadata accessor for STExpressIntroduction.Internal.STDatabase();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  return v0;
}

uint64_t sub_1000FC544@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v1 = type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() sharedInstance];
  v10 = sub_1000FA8C8();
  v29 = sub_1000A0F2C(&qword_1001E2F20, &qword_100143028);
  v30 = &off_1001A7A80;
  v28[0] = v9;
  sub_1000DEF80(v28, &v25);
  _s16EligibilityStoreCMa();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_100004804(&v25, v11 + 24);
  v12 = v9;
  sub_1000A462C(v28);
  sub_1000FB590(v8);
  sub_1000FB278(v4);
  v29 = v5;
  v30 = &protocol witness table for STExpressIntroduction.Internal.ReconcilingSettingsStore;
  v13 = sub_1000AC704(v28);
  (*(v6 + 16))(v13, v8, v5);
  v26 = v1;
  v27 = &protocol witness table for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource;
  v14 = sub_1000AC704(&v25);
  (*(v2 + 16))(v14, v4, v1);
  sub_1000DEF80(v28, v24);
  sub_1000DEF80(&v25, v23);
  _s14SettingsMergerCMa();
  v15 = swift_allocObject();
  sub_100004804(v24, v15 + 16);
  sub_100004804(v23, v15 + 56);
  sub_1000A462C(v28);
  sub_1000A462C(&v25);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);

  v16 = sub_1000FAF10();
  v17 = sub_1000FDB9C(v11, v15, v16);

  v18 = _s19SettingsCoordinatorCMa();
  v19 = v22;
  v22[3] = v18;
  v19[4] = &off_1001A72F8;
  v20 = v19;

  *v20 = v17;
  return result;
}

uint64_t sub_1000FC884(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return _swift_task_switch(sub_1000FC8A8, 0, 0);
}

uint64_t sub_1000FC8A8()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1000FC9C8;
  v3 = swift_continuation_init();
  v0[17] = sub_1000A0F2C(&qword_1001E2F28, &unk_100143030);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100100C34;
  v0[13] = &unk_1001AB2C8;
  v0[14] = v3;
  [v1 enableRemoteManagementForDSID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000FC9C8(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000FCAD0(uint64_t a1, uint64_t a2)
{
  v3[18] = a1;
  v3[19] = a2;
  v3[20] = *v2;
  return _swift_task_switch(sub_1000FCAF8, 0, 0);
}

uint64_t sub_1000FCAF8()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1000FE880;
  v4 = swift_continuation_init();
  v0[17] = sub_1000A0F2C(&qword_1001E2F28, &unk_100143030);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100100C34;
  v0[13] = &unk_1001AB2A0;
  v0[14] = v4;
  [v1 applyIntroductionModel:v3 forDSID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t type metadata accessor for ConcreteDependencyFactory(uint64_t a1)
{
  result = qword_1001E2C18;
  if (!qword_1001E2C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FCC74(uint64_t a1)
{
  sub_1000FCE48(319, &qword_1001E2C28, &type metadata accessor for STExpressIntroduction.Internal.JSONCoder);
  if (v1 <= 0x3F)
  {
    sub_1000FCE48(319, &qword_1001E2C30, &type metadata accessor for STExpressIntroduction.Internal.UserDefaultsSettingsDefaultsDataSource);
    if (v2 <= 0x3F)
    {
      sub_1000FCE48(319, &qword_1001E2C38, &type metadata accessor for STExpressIntroduction.Internal.ReconcilingSettingsStore);
      if (v3 <= 0x3F)
      {
        sub_1000FCE48(319, &unk_1001E2C40, &type metadata accessor for STExpressIntroduction.Internal.STDatabase);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1000FCE48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1000FCE9C()
{
  result = qword_1001E2EF0;
  if (!qword_1001E2EF0)
  {
    sub_1000A0F74(255, &qword_1001E2EE8, off_1001A1178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2EF0);
  }

  return result;
}

void *sub_1000FCF04(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000A0F2C(&qword_1001DF7B0, &qword_100140120);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1000FCF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000FD504(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000FD504(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_1000FD584(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1000FD584(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1000FCF04(v9, 0), v12 = sub_1000FD6DC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000FD6DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000FD8FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000FD8FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000FD8FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1000FD978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s16EligibilityStoreCMa();
  v29[3] = v6;
  v29[4] = &off_1001A7A18;
  v29[0] = a1;
  v7 = _s14SettingsMergerCMa();
  v27 = v7;
  v28 = &off_1001A7248;
  v26[0] = a2;
  _s19SettingsCoordinatorCMa();
  v8 = swift_allocObject();
  v9 = sub_1000FE6EC(v29, v6);
  __chkstk_darwin(v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_1000FE6EC(v26, v27);
  __chkstk_darwin(v13);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  v24 = v6;
  v25 = &off_1001A7A18;
  v22 = &off_1001A7248;
  *&v23 = v17;
  v21 = v7;
  *&v20 = v18;
  swift_defaultActor_initialize();
  *(v8 + 200) = 0;
  *(v8 + 208) = 0;
  sub_100004804(&v23, v8 + 112);
  sub_100004804(&v20, v8 + 152);
  *(v8 + 192) = a3;
  sub_1000A462C(v26);
  sub_1000A462C(v29);
  return v8;
}

uint64_t sub_1000FDB9C(uint64_t a1, uint64_t a2, void *a3)
{
  v21[3] = _s16EligibilityStoreCMa();
  v21[4] = &off_1001A7A18;
  v21[0] = a1;
  v20[3] = _s14SettingsMergerCMa();
  v20[4] = &off_1001A7248;
  v20[0] = a2;
  sub_1000DEF80(v21, v19);
  sub_1000DEF80(v20, v18);
  v6 = sub_1000FE6EC(v19, v19[3]);
  __chkstk_darwin(v6);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = sub_1000FE6EC(v18, v18[3]);
  __chkstk_darwin(v10);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v8;
  v15 = *v12;

  v16 = sub_1000FD978(v14, v15, a3);
  sub_1000A462C(v18);
  sub_1000A462C(v19);
  sub_1000A462C(v21);
  sub_1000A462C(v20);
  return v16;
}

id sub_1000FDDA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STExpressIntroduction.Internal.JSONCoder();
  v14[3] = v4;
  v14[4] = &protocol witness table for STExpressIntroduction.Internal.JSONCoder;
  v5 = sub_1000AC704(v14);
  (*(*(v4 - 8) + 32))(v5, a1, v4);
  v6 = type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore();
  v13[3] = v6;
  v13[4] = &protocol witness table for STExpressIntroduction.Internal.DefaultsSavingSettingsStore;
  v7 = sub_1000AC704(v13);
  (*(*(v6 - 8) + 32))(v7, a2, v6);
  v8 = type metadata accessor for STExpressIntroductionServer(0);
  v9 = objc_allocWithZone(v8);
  Logger.init(subsystem:category:)();
  sub_1000DEF80(v14, v9 + OBJC_IVAR____TtC15ScreenTimeAgent27STExpressIntroductionServer_coder);
  sub_1000DEF80(v13, v9 + OBJC_IVAR____TtC15ScreenTimeAgent27STExpressIntroductionServer_settingsStore);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_1000A462C(v13);
  sub_1000A462C(v14);
  return v10;
}

unint64_t sub_1000FDF24()
{
  result = qword_1001E2F08;
  if (!qword_1001E2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2F08);
  }

  return result;
}

uint64_t sub_1000FDF78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000A0F2C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000FDFE0()
{
  result = qword_1001E1A18;
  if (!qword_1001E1A18)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1A18);
  }

  return result;
}

unint64_t sub_1000FE038()
{
  result = qword_1001E1A28;
  if (!qword_1001E1A28)
  {
    sub_1000A53D0(&qword_1001E1A20, qword_1001431E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1A28);
  }

  return result;
}

uint64_t sub_1000FE09C(void *a1, void *a2)
{
  if (qword_1001DF160 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000A2B1C(v4, qword_1001E7070);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "using mirroring with automatic scheduling", v7, 2u);
  }

  v8 = [objc_allocWithZone(STUnique) initWithPersistenceController:a1];
  v53[4] = &type metadata for ConcretePersistentStoreSynchronizer;
  v53[5] = &off_1001AB3A8;
  v53[0] = a1;
  v53[1] = v8;
  v47[3] = &type metadata for MirroringCloudStoreLoader;
  v47[4] = &off_1001ABD20;
  v47[0] = a1;
  v47[1] = a2;
  v49 = &type metadata for GenesisCloudMirroringImporter;
  v50 = &off_1001AB4A8;
  v48 = swift_allocObject();
  sub_1000FE634(v53, v48 + 16);
  type metadata accessor for DefaultsBackedCloudMirroringGenesisStateStore();
  v51 = swift_allocObject();
  v52 = &off_1001AB408;
  v9 = type metadata accessor for ConcreteStoreChangeSyncTrigger();
  v35[0] = v9;
  v10 = swift_allocObject();
  sub_1000A0F2C(&qword_1001E2F18, &qword_100143020);
  swift_allocObject();
  v11 = a1;
  v12 = a2;
  v13 = v8;
  *(v10 + 16) = PassthroughSubject.init()();
  v14 = type metadata accessor for ConcretePushServicePrimitives();
  swift_allocObject();
  v15 = sub_1000FEAD4();
  v37 = sub_1000FED04(v11, v12);
  v36 = [objc_allocWithZone(STConcretePrimitiveOSTransactionProvider) init];
  v38 = sub_1000FAF10();
  v46[4] = &off_1001AB3A8;
  v46[3] = &type metadata for ConcretePersistentStoreSynchronizer;
  v46[0] = v13;
  v44 = &type metadata for GenesisCloudStoreLoader;
  v45 = &off_1001AB810;
  *&v43 = swift_allocObject();
  sub_1000FE690(v47, v43 + 16);
  v42[3] = v14;
  v42[4] = &off_1001AB3B8;
  v42[0] = v15;
  v40 = v9;
  v41 = &off_1001AB3D0;
  v39[0] = v10;
  type metadata accessor for AutomaticCloudMirroringMonitor();
  v16 = swift_allocObject();
  v17 = sub_1000FE6EC(v46, &type metadata for ConcretePersistentStoreSynchronizer);
  v35[1] = v35;
  __chkstk_darwin(v17);
  v19 = (v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_1000FE6EC(v42, v14);
  __chkstk_darwin(v21);
  v23 = (v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = sub_1000FE6EC(v39, v40);
  __chkstk_darwin(v25);
  v27 = (v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v19;
  v30 = *v23;
  v31 = *v27;
  *(v16 + 40) = &type metadata for ConcretePersistentStoreSynchronizer;
  *(v16 + 48) = &off_1001AB3A8;
  *(v16 + 16) = v29;
  *(v16 + 120) = v14;
  *(v16 + 128) = &off_1001AB3B8;
  *(v16 + 96) = v30;
  *(v16 + 184) = v35[0];
  *(v16 + 192) = &off_1001AB3D0;
  *(v16 + 160) = v31;
  *(v16 + 200) = 0;
  *(v16 + 216) = 0;
  *(v16 + 224) = 0;
  *(v16 + 208) = 0;
  sub_100004804(&v43, v16 + 56);
  v32 = v37;
  *(v16 + 144) = v36;
  *(v16 + 152) = v32;
  *(v16 + 136) = v12;
  *(v16 + 232) = v38;
  v33 = v12;
  sub_1000A462C(v39);
  sub_1000A462C(v42);
  sub_1000A462C(v46);
  sub_1000FE73C(v47);
  sub_1000FE790(v53);
  return v16;
}

uint64_t sub_1000FE6EC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1000FE824()
{
  result = qword_1001E2F30;
  if (!qword_1001E2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2F30);
  }

  return result;
}

uint64_t sub_1000FE884(void *a1)
{
  v6 = 0;
  v5 = 0;
  if ([a1 migrateWithExportNeeded:&v6 error:&v5])
  {
    v1 = v6;
    v2 = v5;
  }

  else
  {
    v3 = v5;
    v1 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t type metadata accessor for UsageLimit(uint64_t a1)
{
  result = qword_1001E2F60;
  if (!qword_1001E2F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FE994()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(APSConnection);
  v3 = v1;
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 initWithEnvironmentName:v4 namedDelegatePort:v5 queue:v3];

  v7 = *(v0 + 24);
  *(v0 + 24) = v6;
}

uint64_t sub_1000FEA70()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000FEAD4()
{
  v7[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v7[0] - 8);
  __chkstk_darwin(v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_1000F489C();
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_1000FDFE0();
  sub_1000A0F2C(&qword_1001E1A20, qword_1001431E0);
  sub_1000FE038();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7[0]);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_1000FED04(void *a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_1000A0F2C(&qword_1001E2380, &qword_1001428C8);
  __chkstk_darwin(v5 - 8);
  v39 = &v35 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000A0F2C(&qword_1001E3290, &qword_100143250);
  v43 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = &v35 - v9;
  v11 = sub_1000A0F2C(&qword_1001E3298, &qword_100143258);
  v12 = *(v11 - 8);
  v41 = v11;
  v42 = v12;
  __chkstk_darwin(v11);
  v35 = &v35 - v13;
  v14 = type metadata accessor for NSNotificationCenter.Publisher();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000A0F2C(&qword_1001E32A0, &unk_100143260);
  v37 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v35 - v22;
  sub_1000FF34C(a1);
  v24 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_1000BABD4();
  Publisher.compactMap<A>(_:)();
  (*(v15 + 8))(v17, v14);
  v46 = *(v3 + 16);
  sub_1000A0F2C(&qword_1001E2F18, &qword_100143020);
  sub_1000F4FCC(&qword_1001E32A8, &qword_1001E2F18, &qword_100143020, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_1000F4FCC(&qword_1001E32B0, &qword_1001E32A0, &unk_100143260, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v25 = v10;
  Publisher.merge<A, B>(with:_:)();
  v26 = v36;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v46 = v38;
  v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v28 = v39;
  (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
  sub_1000A0F74(0, &qword_1001E1A08, OS_dispatch_queue_ptr);
  sub_1000F4FCC(&qword_1001E32B8, &qword_1001E3290, &qword_100143250, &protocol conformance descriptor for Publishers.Merge3<A, B, C>);
  sub_1000FFA00();
  v29 = v35;
  v30 = v40;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000A5148(v28, &qword_1001E2380, &qword_1001428C8);
  (*(v44 + 8))(v26, v45);
  (*(v43 + 8))(v25, v30);
  sub_1000F4FCC(&qword_1001E32C0, &qword_1001E3298, &qword_100143258, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v31 = v41;
  v32 = Publisher.eraseToAnyPublisher()();
  (*(v42 + 8))(v29, v31);
  v33 = *(v37 + 8);
  v33(v21, v18);
  v33(v23, v18);
  return v32;
}

uint64_t sub_1000FF34C(void *a1)
{
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 persistentContainer];
  v7 = [v6 persistentStoreCoordinator];

  v8 = [objc_opt_self() defaultCenter];
  v9 = v7;
  NSNotificationCenter.publisher(for:object:)();

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  sub_1000BABD4();
  v11 = v9;
  v12 = a1;
  Publisher.compactMap<A>(_:)();

  return (*(v3 + 8))(v5, v2);
}

void sub_1000FF51C(void *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v7 = Notification.userInfo.getter();
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v9 = sub_1000CBB00(&v24), (v10 & 1) == 0))
  {

    sub_1000C8034(&v24);
LABEL_11:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_12;
  }

  sub_1000A5078(*(v8 + 56) + 32 * v9, &v25);
  sub_1000C8034(&v24);

  if (!*(&v26 + 1))
  {
LABEL_12:
    sub_1000A5148(&v25, &qword_1001E03A0, qword_100140A70);
LABEL_13:
    v18 = 3;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v11 = String._bridgeToObjectiveC()();

  v12 = [a2 persistentStoreForIdentifier:v11];

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = [v12 configurationName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v16 != v17)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {

      v18 = 0;
      goto LABEL_14;
    }

    v20 = v12;
    v21 = [a3 localStore];
    if (v21)
    {
      v22 = v21;
      sub_1000A0F74(0, &qword_1001E3288, NSPersistentStore_ptr);
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        v18 = 0;
        goto LABEL_14;
      }
    }

    else
    {
    }

    goto LABEL_13;
  }

  v18 = 0;
LABEL_14:
  *a4 = v18;
}

void sub_1000FF798(char *a2@<X8>)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    *&v13[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v13[0] + 1) = v5;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16))
    {
      v6 = sub_1000CBB00(v12);
      if (v7)
      {
        sub_1000A5078(*(v4 + 56) + 32 * v6, v13);
        sub_1000C8034(v12);

        goto LABEL_7;
      }
    }

    sub_1000C8034(v12);
  }

  memset(v13, 0, sizeof(v13));
LABEL_7:
  sub_1000FFA68(v13, v12);
  if (!v12[3])
  {
    sub_1000A5148(v13, &qword_1001E03A0, qword_100140A70);
    v9 = v12;
LABEL_16:
    sub_1000A5148(v9, &qword_1001E03A0, qword_100140A70);
    goto LABEL_17;
  }

  sub_1000A0F74(0, &qword_1001E1840, NSPersistentCloudKitContainerEvent_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v9 = v13;
    goto LABEL_16;
  }

  v8 = v12[5];
  if (os_variant_has_internal_content())
  {
    sub_1000FFAD8(v8);
  }

  if ([v8 type] == 1 || !objc_msgSend(v8, "type"))
  {
    v11 = [v8 succeeded];

    sub_1000A5148(v13, &qword_1001E03A0, qword_100140A70);
    if (v11)
    {
      v10 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1000A5148(v13, &qword_1001E03A0, qword_100140A70);
  }

LABEL_17:
  v10 = 3;
LABEL_18:
  *a2 = v10;
}

unint64_t sub_1000FFA00()
{
  result = qword_1001E23A0;
  if (!qword_1001E23A0)
  {
    sub_1000A0F74(255, &qword_1001E1A08, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E23A0);
  }

  return result;
}

uint64_t sub_1000FFA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&qword_1001E03A0, qword_100140A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000FFAD8(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 type] == 1)
  {
    v6 = [objc_opt_self() defaultCenter];
    v7 = String._bridgeToObjectiveC()();
    sub_1000A0F2C(&qword_1001E0E50, qword_100143270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10013FFC0;
    v16 = 1701869940;
    v17 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0x74726F706D69;
    *(inited + 80) = 0xE600000000000000;
    v16 = 0x696669746E656469;
    v17 = 0xEA00000000007265;
    AnyHashable.init<A>(_:)();
    v9 = [a1 identifier];
  }

  else
  {
    if ([a1 type] != 2)
    {
      return;
    }

    v6 = [objc_opt_self() defaultCenter];
    v7 = String._bridgeToObjectiveC()();
    sub_1000A0F2C(&qword_1001E0E50, qword_100143270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10013FFC0;
    v16 = 1701869940;
    v17 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0x74726F707865;
    *(inited + 80) = 0xE600000000000000;
    v16 = 0x696669746E656469;
    v17 = 0xEA00000000007265;
    AnyHashable.init<A>(_:)();
    v9 = [a1 identifier];
  }

  v10 = v9;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v11;
  *(inited + 152) = v13;
  sub_10010DA40(inited);
  swift_setDeallocating();
  sub_1000A0F2C(&qword_1001E0E60, &qword_100141388);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 postNotificationName:v7 object:0 userInfo:isa];
}

__n128 sub_1000FFEC4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000FFED8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000FFF20(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000FFF7C()
{
  v12[0] = sub_1000A0F2C(&qword_1001E3378, &unk_100143520);
  v1 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v3 = v12 - v2;
  sub_1000FE634(v0, &v13);
  v4 = swift_allocObject();
  v5 = v14;
  v4[1] = v13;
  v4[2] = v5;
  v4[3] = v15;
  sub_1000A0F2C(&qword_1001E3380, &qword_100143900);
  swift_allocObject();
  v12[1] = Future.init(_:)();
  sub_1000FE634(v0, &v13);
  v6 = swift_allocObject();
  v7 = v14;
  v6[1] = v13;
  v6[2] = v7;
  v6[3] = v15;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100100758;
  *(v8 + 24) = v6;
  static Subscribers.Demand.unlimited.getter();
  sub_1000A0F2C(&qword_1001E3388, &qword_100143530);
  sub_1000F4FCC(&qword_1001E3390, &qword_1001E3380, &qword_100143900, &protocol conformance descriptor for Future<A, B>);
  sub_1000F4FCC(&qword_1001E3398, &qword_1001E3388, &qword_100143530, &protocol conformance descriptor for Result<A, B>.Publisher);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_1000F4FCC(&qword_1001E33A0, &qword_1001E3378, &unk_100143520, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v9 = v12[0];
  v10 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v9);
  return v10;
}

unint64_t sub_100100264(uint64_t a1)
{
  v1 = sub_1000A9618((a1 + 8), *(a1 + 32));
  v2 = sub_1000FE884(*v1);
  if (v2 >= 2)
  {
    v4 = v2;
    sub_1000A0F2C(&qword_1001E33A8, qword_100143538);
    Result.publisher.getter();
    return sub_1000F4EE8(v4);
  }

  else
  {
    sub_1000F4EE8(v2);
    sub_1000A0F2C(&qword_1001E33A8, qword_100143538);
    return Result.publisher.getter();
  }
}

void sub_10010031C(void (*a1)(void ***), uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;

  v8 = [v7 cloudStore];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100100788;
    *(v10 + 24) = v6;
    v11 = objc_allocWithZone(NSCloudKitMirroringImportRequest);
    v31 = sub_100100A70;
    v32 = v10;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1000D4878;
    v30 = &unk_1001AB580;
    v12 = _Block_copy(&aBlock);

    v13 = [v11 initWithOptions:0 completionBlock:v12];
    _Block_release(v12);
    sub_1000A0F2C(&unk_1001E0010, &qword_100140140);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10013FFF0;
    *(v14 + 32) = v9;
    sub_100100BB0();
    v15 = v13;
    v16 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setAffectedStores:isa];

    v25 = [objc_allocWithZone(NSError) initWithDomain:STErrorDomain code:6 userInfo:0];
    v26 = 1;
    v18 = swift_allocObject();
    *(v18 + 16) = &v25;
    *(v18 + 24) = v15;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100100BFC;
    *(v19 + 24) = v18;
    v31 = sub_100100C04;
    v32 = v19;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100100B4C;
    v30 = &unk_1001AB5F8;
    v20 = _Block_copy(&aBlock);
    v21 = v15;

    [v7 performBackgroundTaskAndWait:v20];
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (v26)
      {
        v23 = v25;
        aBlock = v25;
        LOBYTE(v28) = 1;
        swift_errorRetain();
        a1(&aBlock);

        sub_1000CD43C(v23, 1);
      }

      else
      {
      }

      sub_1000CD43C(v25, v26);
    }
  }

  else
  {

    v24 = [objc_allocWithZone(NSError) initWithDomain:STErrorDomain code:6 userInfo:0];
    aBlock = v24;
    LOBYTE(v28) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_100100718()
{
  sub_1000A462C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100100794(void *a1, uint64_t (*a2)(id, uint64_t))
{
  if ([a1 success])
  {
    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000A2B1C(v4, qword_1001E7070);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "genesis import completed successfully", v7, 2u);
    }

    return a2(0, 0);
  }

  else
  {
    v9 = [a1 error];
    if (!v9)
    {
      v9 = [objc_allocWithZone(NSError) initWithDomain:STErrorDomain code:6 userInfo:0];
    }

    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000A2B1C(v10, qword_1001E7070);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = sub_1000A2E68(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "genesis import completed with an error: %s", v13, 0xCu);
      sub_1000A462C(v14);
    }

    swift_errorRetain();
    a2(v9, 1);
  }
}

uint64_t sub_100100A78(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v5 = [a1 executeRequest:a3 error:&v11];
  if (v5)
  {
    v6 = v11;
  }

  else
  {
    v7 = v11;
    v3 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v8 = *a2;
  v9 = *(a2 + 8);
  *a2 = v3;
  *(a2 + 8) = v5 == 0;
  return sub_1000CD43C(v8, v9);
}

void sub_100100B4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_100100B98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100100BB0()
{
  result = qword_1001E3288;
  if (!qword_1001E3288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001E3288);
  }

  return result;
}

uint64_t sub_100100C34(uint64_t a1, void *a2)
{
  v3 = sub_1000A9618((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100100CE0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_100100D00, 0, 0);
}

uint64_t sub_100100D00()
{
  v1 = sub_10010248C(v0[18], 0, 1);
  v0[20] = v1;
  v2 = v1;
  v3 = *(v0[19] + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService_askForTimeService);
  v0[2] = v0;
  v0[3] = sub_100100E84;
  v4 = swift_continuation_init();
  v0[17] = sub_1000A0F2C(&qword_1001E2F28, &unk_100143030);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100100C34;
  v0[13] = &unk_1001AB670;
  v0[14] = v4;
  [v3 sendAskForTimeRequest:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100100E84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_100100FF8;
  }

  else
  {
    v2 = sub_100100F94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100100F94()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100100FF8(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1001011F4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000F1684;

  return sub_100100CE0(v5);
}

uint64_t sub_1001012B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = a3;
  v4[37] = v3;
  v4[34] = a1;
  v4[35] = a2;
  v5 = type metadata accessor for UUID();
  v4[38] = v5;
  v4[39] = *(v5 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return _swift_task_switch(sub_100101388, 0, 0);
}

uint64_t sub_100101388()
{
  v1 = sub_100102970(*(v0 + 280));
  *(v0 + 336) = v1;
  v2 = [v1 amountGranted];
  if (v2)
  {
    v3 = v2;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v4 = sub_10010248C(*(v0 + 288), 0, 1);
  *(v0 + 344) = v4;
  v6 = v4;
  v7 = *(v0 + 296);
  type metadata accessor for UserID();
  v8 = dispatch thunk of static UserID.local()();
  v9 = static NSObject.== infix(_:_:)();
  *(v0 + 376) = v9 & 1;

  v10 = *(v7 + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService_askForTimeService);
  if (v9)
  {
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_10010183C;
    v11 = swift_continuation_init();
    *(v0 + 264) = sub_1000A0F2C(&qword_1001E2F28, &unk_100143030);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100100C34;
    *(v0 + 232) = &unk_1001AB648;
    *(v0 + 240) = v11;
    [v10 approveExceptionForRequest:v6 completionHandler:v0 + 208];
    v12 = v0 + 80;
LABEL_9:

    return _swift_continuation_await(v12);
  }

  dispatch thunk of UserID.altDSID()();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v10 requestIdentifierFor:v13 request:*(v0 + 344)];

  v15 = *(v0 + 336);
  if (v14)
  {
    v16 = *(v0 + 320);
    v17 = *(v0 + 328);
    v19 = *(v0 + 304);
    v18 = *(v0 + 312);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v18 + 32))(v17, v16, v19);
    v20 = [v15 answer];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    *(v0 + 360) = isa;
    v22 = [v15 amountGranted];
    *(v0 + 368) = v22;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100101C5C;
    v23 = swift_continuation_init();
    *(v0 + 200) = sub_1000A0F2C(&qword_1001E34B8, &unk_100143580);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100101E74;
    *(v0 + 168) = &unk_1001AB620;
    *(v0 + 176) = v23;
    [v10 handleAnswer:v20 requestIdentifier:isa timeApproved:v22 completionHandler:?];
    v12 = v0 + 16;
    goto LABEL_9;
  }

  v24 = *(v0 + 344);
  if (*(v0 + 376) != 1)
  {
    v26 = type metadata accessor for AccessResponseError();
    sub_100102E74(&qword_1001E34B0, &type metadata accessor for AccessResponseError, &protocol conformance descriptor for AccessResponseError);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for AccessResponseError.requestRecordNotFound(_:), v26);
    swift_willThrow();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10010183C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_100101DEC;
  }

  else
  {
    v2 = sub_10010194C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010194C()
{
  v1 = *(*(v0 + 296) + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService_askForTimeService);
  v2 = [v1 requestIdentifierFor:0 request:*(v0 + 344)];
  if (v2)
  {
    v3 = *(v0 + 328);
    v4 = *(v0 + 336);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v7 = *(v0 + 304);
    v8 = v2;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 32))(v3, v5, v7);
    v9 = [v4 answer];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    *(v0 + 360) = isa;
    v11 = [v4 amountGranted];
    *(v0 + 368) = v11;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100101C5C;
    v12 = swift_continuation_init();
    *(v0 + 200) = sub_1000A0F2C(&qword_1001E34B8, &unk_100143580);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100101E74;
    *(v0 + 168) = &unk_1001AB620;
    *(v0 + 176) = v12;
    [v1 handleAnswer:v9 requestIdentifier:isa timeApproved:v11 completionHandler:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v13 = *(v0 + 336);
    v14 = *(v0 + 344);
    if (*(v0 + 376) != 1)
    {
      v16 = type metadata accessor for AccessResponseError();
      sub_100102E74(&qword_1001E34B0, &type metadata accessor for AccessResponseError, &protocol conformance descriptor for AccessResponseError);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, enum case for AccessResponseError.requestRecordNotFound(_:), v16);
      swift_willThrow();
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100101C5C()
{

  return _swift_task_switch(sub_100101D3C, 0, 0);
}

uint64_t sub_100101D3C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 360);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100101DEC(uint64_t a1)
{
  v2 = v1[43];
  v3 = v1[42];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_100101E74(uint64_t a1)
{
  v1 = *sub_1000A9618((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100102050(void *a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v9 = a1;
  v10 = a2;
  v11 = a3;

  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_100102140;

  return sub_1001012B8(v9, v10, v11);
}

uint64_t sub_100102140()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 48);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100102318()
{
  sub_1000ABF3C(v0 + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService____lazy_storage___logger);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessCompatibilityService(uint64_t a1)
{
  result = qword_1001E33E0;
  if (!qword_1001E33E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001023E0(uint64_t a1)
{
  sub_1000AB584(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_10010248C(uint64_t a1, uint64_t a2, int a3)
{
  v33 = type metadata accessor for Date();
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResourceType();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  AccessRequest.resource.getter();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for ResourceType.bundleIdentifier(_:))
  {
    v31 = a3;
    v30 = a2;
    v32 = v3;
    (*(v10 + 96))(v12, v9);
    v14 = [objc_opt_self() sharedCache];
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 appInfoForBundleIdentifier:v15];

    v17 = [v16 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 0;
  }

  else if (v13 == enum case for ResourceType.websiteUrl(_:))
  {
    v31 = a3;
    v30 = a2;
    v32 = v3;
    (*(v10 + 96))(v12, v9);

    v18 = 1;
  }

  else
  {
    if (v13 != enum case for ResourceType.categoryIdentifier(_:))
    {
      v27 = type metadata accessor for AccessRequestError();
      sub_100102E74(&qword_1001E34C0, &type metadata accessor for AccessRequestError, &protocol conformance descriptor for AccessRequestError);
      swift_allocError();
      (*(*(v27 - 8) + 104))(v28, enum case for AccessRequestError.invalidRequest(_:), v27);
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      return v9;
    }

    v31 = a3;
    v30 = a2;
    v32 = v3;
    (*(v10 + 96))(v12, v9);
    v19 = *v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = STCategoryNameWithIdentifier();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 2;
  }

  v21 = objc_allocWithZone(STAskForTimeRequest);
  v22 = String._bridgeToObjectiveC()();

  v9 = [v21 initWithUsageType:v18 requestedResourceIdentifier:v22];

  v23 = String._bridgeToObjectiveC()();

  [v9 setResourceDisplayName:v23];

  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v33);
  [v9 setTimeStamp:isa];

  if ((v31 & 1) == 0)
  {
    v25 = *&v30;
    v26 = Double._bridgeToObjectiveC()().super.super.isa;
    [v9 setTimeRequested:v26];

    [v9 setOneMoreMinute:v25 == 60.0];
  }

  return v9;
}

id sub_100102970(void *a1)
{
  v2 = type metadata accessor for Date();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ApprovalType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AnswerType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(STAskForTimeResponse) init];
  v28 = a1;
  AccessResponse.answerType.getter();
  v16 = (*(v12 + 88))(v14, v11);
  if (v16 == enum case for AnswerType.approved(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v5 + 32))(v10, v14, v4);
    [v15 setAnswer:0];
    (*(v5 + 16))(v8, v10, v4);
    v17 = (*(v5 + 88))(v8, v4);
    if (v17 == enum case for ApprovalType.duration(_:))
    {
      (*(v5 + 96))(v8, v4);
      isa = Double._bridgeToObjectiveC()().super.super.isa;
      [v15 setAmountGranted:isa];

LABEL_8:
      (*(v5 + 8))(v10, v4);
      goto LABEL_9;
    }

    if (v17 == enum case for ApprovalType.tillDate(_:))
    {
      [v15 setAmountGranted:0];
      goto LABEL_8;
    }

    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v27._countAndFlagsBits = 0xD000000000000021;
    v27._object = 0x8000000100152F50;
    String.append(_:)(v27);
    _print_unlocked<A, B>(_:_:)();
  }

  else
  {
    if (v16 == enum case for AnswerType.denied(_:))
    {
      [v15 setAnswer:1];
LABEL_9:
      v19 = v29;
      static Date.now.getter();
      v20 = Date._bridgeToObjectiveC()().super.isa;
      (*(v30 + 8))(v19, v31);
      [v15 setTimeStamp:v20];

      return v15;
    }

    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v32 = 0xD000000000000017;
    v33 = 0x8000000100152F30;
    v22 = [v28 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100102E74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100102EBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A5418;

  return sub_100102050(v2, v3, v4, v5, v6);
}

uint64_t sub_100102F84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_1001011F4(v2, v3, v4);
}

__n128 sub_100103048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100103064(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1001030AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100103114()
{
  v1 = sub_1000A0F2C(&qword_1001E34D8, &qword_100143638);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = v0[3];
  v6 = v0[4];
  sub_1000A9618(v0, v5);
  v16 = (*(v6 + 8))(v5, v6);
  sub_1000FE690(v0, v15);
  v7 = swift_allocObject();
  v8 = v15[3];
  v7[3] = v15[2];
  v7[4] = v8;
  v9 = v15[5];
  v7[5] = v15[4];
  v7[6] = v9;
  v10 = v15[1];
  v7[1] = v15[0];
  v7[2] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1001040AC;
  *(v11 + 24) = v7;
  static Subscribers.Demand.unlimited.getter();
  sub_1000A0F2C(&qword_1001E23C8, &qword_100143630);
  sub_1000F4FCC(&qword_1001E23D0, &qword_1001E23C8, &qword_100143630, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_1000F4FCC(&qword_1001E34E0, &qword_1001E34D8, &qword_100143638, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v12 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v4, v1);
  return v12;
}

uint64_t sub_10010338C(uint64_t a1)
{
  v2 = sub_1000A0F2C(&qword_1001E34E8, &qword_100143640);
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v28 - v3;
  v33 = sub_1000A0F2C(&qword_1001E34F0, &qword_100143648);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v28 - v5;
  v7 = sub_1000A0F2C(&qword_1001E34F8, &qword_100143650);
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v32 = sub_1000A0F2C(&qword_1001E3500, &qword_100143658);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v28 - v10;
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 BOOLForKey:v13];

  if (v14)
  {
    if (qword_1001DF160 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000A2B1C(v15, qword_1001E7070);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "genesis import has already occurred, skipping", v18, 2u);
    }

    Just.init(_:)();
    sub_1000F5038();
    Just.setFailureType<A>(to:)();
    (*(v29 + 8))(v4, v2);
    sub_1000F4FCC(&qword_1001E3528, &qword_1001E34F0, &qword_100143648, &protocol conformance descriptor for Result<A, B>.Publisher);
    v19 = v33;
    v20 = Publisher.eraseToAnyPublisher()();
    (*(v31 + 8))(v6, v19);
  }

  else
  {
    sub_1000A9618((a1 + 40), *(a1 + 64));
    v35 = sub_1000FFF7C();
    sub_1000FE690(a1, v34);
    v21 = swift_allocObject();
    v22 = v34[3];
    v21[3] = v34[2];
    v21[4] = v22;
    v23 = v34[5];
    v21[5] = v34[4];
    v21[6] = v23;
    v24 = v34[1];
    v21[1] = v34[0];
    v21[2] = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1001040E4;
    *(v25 + 24) = v21;
    sub_1000A0F2C(&qword_1001E3508, qword_100143660);
    sub_1000F4FCC(&qword_1001E3510, &qword_1001E3508, qword_100143660, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_1000A0F2C(&qword_1001E23C8, &qword_100143630);
    sub_1000F4FCC(&qword_1001E3518, &qword_1001E34F8, &qword_100143650, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000F4FCC(&qword_1001E23D0, &qword_1001E23C8, &qword_100143630, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.catch<A>(_:)();
    (*(v28 + 8))(v9, v7);
    sub_1000F4FCC(&qword_1001E3520, &qword_1001E3500, &qword_100143658, &protocol conformance descriptor for Publishers.Catch<A, B>);
    v26 = v32;
    v20 = Publisher.eraseToAnyPublisher()();
    (*(v30 + 8))(v11, v26);
  }

  return v20;
}

uint64_t sub_1001039D8@<X0>(uint64_t *a2@<X8>)
{
  v23 = sub_1000A0F2C(&qword_1001E34E8, &qword_100143640);
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - v4;
  v24 = sub_1000A0F2C(&qword_1001E34F0, &qword_100143648);
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v22 - v7;
  if (qword_1001DF160 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000A2B1C(v9, qword_1001E7070);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = sub_1000A2E68(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "dropping genesis import error: %s", v13, 0xCu);
    sub_1000A462C(v14);

    a2 = v22;
  }

  Just.init(_:)();
  sub_1000F5038();
  v18 = v23;
  Just.setFailureType<A>(to:)();
  (*(v3 + 8))(v5, v18);
  sub_1000F4FCC(&qword_1001E3528, &qword_1001E34F0, &qword_100143648, &protocol conformance descriptor for Result<A, B>.Publisher);
  v19 = v24;
  v20 = Publisher.eraseToAnyPublisher()();
  result = (*(v6 + 8))(v8, v19);
  *a2 = v20;
  return result;
}

void sub_100103D18(uint64_t a1, char a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v3 setBool:a2 & 1 forKey:v4];
}

uint64_t sub_100103DB8()
{
  v1 = sub_1000A0F2C(&qword_1001E34C8, &qword_100143628);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = v0[3];
  v6 = v0[4];
  sub_1000A9618(v0, v5);
  v16 = (*(v6 + 16))(v5, v6);
  sub_1000FE690(v0, v15);
  v7 = swift_allocObject();
  v8 = v15[3];
  v7[3] = v15[2];
  v7[4] = v8;
  v9 = v15[5];
  v7[5] = v15[4];
  v7[6] = v9;
  v10 = v15[1];
  v7[1] = v15[0];
  v7[2] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10010401C;
  *(v11 + 24) = v7;
  sub_1000A0F2C(&qword_1001E23C8, &qword_100143630);
  sub_1000F4FCC(&qword_1001E23D0, &qword_1001E23C8, &qword_100143630, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  sub_1000F4FCC(&qword_1001E34D0, &qword_1001E34C8, &qword_100143628, &protocol conformance descriptor for Publishers.Map<A, B>);
  v12 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v4, v1);
  return v12;
}

uint64_t sub_100104064()
{
  sub_1000A462C((v0 + 16));
  sub_1000A462C((v0 + 56));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001040B4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_100104238(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t *a10, unint64_t *a11, uint64_t (*a12)(void), uint64_t a13, uint64_t a14)
{
  LODWORD(v98) = a6;
  v15 = a3;
  v102 = a11;
  v105.opaque[0] = 0;
  v105.opaque[1] = 0;
  v101 = a1;
  v17 = sub_1000CEAB4(a1, a3, &_mh_execute_header);
  swift_beginAccess();
  p_isa = &v17->isa;
  os_activity_scope_enter(v17, &v105);
  swift_endAccess();
  v104 = a4;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Checking for first unlock.", v20, 2u);
  }

  v21 = MKBUserUnlockedSinceBoot();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  v24 = os_log_type_enabled(v22, v23);
  v100 = v15;
  v99 = a2;
  if (v21)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v107[0] = v26;
      *v25 = 136446210;
      v27 = StaticString.description.getter();
      v29 = sub_1000A2E68(v27, v28, v107);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v25, 0xCu);
      sub_1000A462C(v26);
    }

    v30 = 1;
  }

  else
  {
    if (v24)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v31, 2u);
    }

    v30 = 0;
  }

  sub_1000A0F2C(a9, a10);
  sub_10010A23C(v102, a9, a10);
  v32 = swift_allocError();
  *v33 = v30;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave(&v105);
  swift_endAccess();
  swift_unknownObjectRelease();
  v107[0] = v32;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(a9, a10);
  if (swift_dynamicCast() && (v106 & 1) == 0)
  {

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v53, 2u);
    }

    swift_allocError();
    *v54 = 0;
    swift_willThrow();
    goto LABEL_44;
  }

  v107[0] = v32;
  v34 = type metadata accessor for DataStore.DataStoreError(0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v36 = (v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v37 = *v36;
      v38 = *v36;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        p_isa = swift_slowAlloc();
        v106 = p_isa;
        *v41 = 136446466;
        v42 = StaticString.description.getter();
        v44 = sub_1000A2E68(v42, v43, &v106);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2114;
        sub_10010A07C();
        swift_allocError();
        *v45 = v37;
        swift_storeEnumTagMultiPayload();
        v46 = v38;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v47;
        v48 = v102;
        *v102 = v47;
        _os_log_impl(&_mh_execute_header, v39, v40, "DaemonActivity %{public}s failed with unknown user: %{public}@", v41, 0x16u);
        sub_1000A5148(v48, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(p_isa);
      }

      sub_10010A07C();
      swift_allocError();
      *v49 = v37;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v50 = type metadata accessor for Logger();
      (*(*(v50 - 8) + 8))(v104, v50);
    }

    sub_10010A020(v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v55 = a12;

  v107[0] = v32;
  swift_errorRetain();
  if (swift_dynamicCast() && (v106 & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v66 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v66 = swift_allocError();
      *v90 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      swift_errorRetain();
      v95 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 4) = v95;
      *v94 = v95;
      _os_log_impl(&_mh_execute_header, v91, v92, "The preflight error %@ did not result in a TTR", v93, 0xCu);
      sub_1000A5148(v94, &unk_1001E1820, &qword_100140020);
    }

    a12(v66);
    swift_willThrow();

LABEL_44:
    v96 = type metadata accessor for Logger();
    (*(*(v96 - 8) + 8))(v104, v96);
  }

  v107[0] = v32;
  __chkstk_darwin(v56);
  v57 = (v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v59 = *v57;
      v58 = v57[1];

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v106 = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_1000A2E68(v59, v58, &v106);
        _os_log_impl(&_mh_execute_header, v60, v61, "askForTime response handling did not find ask request identifier %s", v62, 0xCu);
        sub_1000A462C(v63);
      }

      sub_10010A07C();
      swift_allocError();
      *v64 = v59;
      v64[1] = v58;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v65 = type metadata accessor for Logger();
      (*(*(v65 - 8) + 8))(v104, v65);
    }

    sub_10010A020(v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  swift_errorRetain();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    p_isa = a12;
    v72 = v71;
    v107[0] = v71;
    *v69 = 136446466;
    v73 = StaticString.description.getter();
    v75 = sub_1000A2E68(v73, v74, v107);

    *(v69 + 4) = v75;
    *(v69 + 12) = 2114;
    swift_errorRetain();
    v76 = _swift_stdlib_bridgeErrorToNSError();
    *(v69 + 14) = v76;
    *v70 = v76;
    _os_log_impl(&_mh_execute_header, v67, v68, "DaemonActivity %{public}s failed with: %{public}@.", v69, 0x16u);
    sub_1000A5148(v70, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v72);
    v55 = p_isa;
  }

  if ((v98 & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v98 = a14;
    v77 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v102 = v97;
    __chkstk_darwin(v77 - 8);
    v79 = v97 - v78;
    v80 = type metadata accessor for TaskPriority();
    (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
    v81 = type metadata accessor for Logger();
    v97[1] = v97;
    v82 = *(v81 - 8);
    v83 = *(v82 + 64);
    __chkstk_darwin(v81);
    p_isa = v55;
    (*(v82 + 16))(v97 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), v104, v81);
    v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    *(v85 + 24) = 0;
    v55 = p_isa;
    (*(v82 + 32))(v85 + v84, v97 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0), v81);
    v86 = v85 + ((v84 + v83 + 7) & 0xFFFFFFFFFFFFFFF8);
    v87 = v99;
    *v86 = v101;
    *(v86 + 8) = v87;
    *(v86 + 16) = v100;
    *(v85 + ((v84 + v83 + 31) & 0xFFFFFFFFFFFFFFF8)) = v32;
    swift_errorRetain();
    sub_1000A2630(0, 0, v79, v98, v85);
  }

  (v55)(v32);
  swift_willThrow();

  v88 = type metadata accessor for Logger();
  return (*(*(v88 - 8) + 8))(v104, v88);
}

uint64_t sub_100105010@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC15ScreenTimeAgent12SetupService____lazy_storage___logger;
  swift_beginAccess();
  sub_1000BBA38(v1 + v9, v8);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000A5148(v8, &qword_1001DFDC0, &unk_1001405E0);
  Logger.init(subsystem:category:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1000BBAA8(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1001053AC(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  type metadata accessor for Logger();
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v6 = a1;

  return _swift_task_switch(sub_10010546C, 0, 0);
}

uint64_t sub_10010546C()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100105568;
  v2 = *(v0 + 32);

  return sub_10010FC5C("SetupService.currentConfiguration", 33, 2, v2, 0);
}

uint64_t sub_100105568(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_100105730;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_100105690;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100105690()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100105730()
{
  v1 = v0[5];
  v2 = v0[2];

  v3 = _convertErrorToNSError(_:)();

  (v1)[2](v1, 0, v3);

  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100105970(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  type metadata accessor for Logger();
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v6 = a1;

  return _swift_task_switch(sub_100105A30, 0, 0);
}

uint64_t sub_100105A30()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000E0908;
  v2 = *(v0 + 32);

  return sub_10010DB7C("SetupService.applyUpdatedConfiguration", 38, 2, v2, 0);
}

uint64_t sub_100105CB8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000BB794;

  return sub_100109BD0();
}

uint64_t sub_100105D88()
{
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent12SetupService____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SetupService(uint64_t a1)
{
  result = qword_1001E3560;
  if (!qword_1001E3560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100105E54()
{
  result = qword_1001E3640;
  if (!qword_1001E3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E3640);
  }

  return result;
}

uint64_t sub_100105EA8(void *a1)
{
  if (a1)
  {
    _StringGuts.grow(_:)(36);

    v2 = [a1 description];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    String.append(_:)(v6);

    v7 = [objc_opt_self() mainBundle];
    v14._object = 0xEE007265626D654DLL;
    v14._countAndFlagsBits = 0x796C696D61466F6ELL;
    v8._countAndFlagsBits = 0xD000000000000022;
    v8._object = 0x8000000100153090;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v14)._countAndFlagsBits;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v15._object = 0xEE00726F72724520;
    v15._countAndFlagsBits = 0x6C616E7265746E49;
    v11._object = 0x8000000100153070;
    v11._countAndFlagsBits = 0xD00000000000001BLL;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v7, v12, v15)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_100106070()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_100105CB8(v2, v3, v4);
}

uint64_t sub_100106124(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v90) = a5;
  v6 = a3;
  v95.opaque[0] = 0;
  v95.opaque[1] = 0;
  v9 = sub_1000CEAB4(a1, a3, &_mh_execute_header);
  swift_beginAccess();
  os_activity_scope_enter(v9, &v95);
  swift_endAccess();
  v94 = a4;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Checking for first unlock.", v12, 2u);
  }

  v13 = MKBUserUnlockedSinceBoot();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  v16 = os_log_type_enabled(v14, v15);
  v93 = v6;
  v91 = a1;
  v92 = a2;
  if (v13)
  {
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v97[0] = v18;
      *v17 = 136446210;
      v19 = StaticString.description.getter();
      v21 = sub_1000A2E68(v19, v20, v97);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v17, 0xCu);
      sub_1000A462C(v18);
    }

    v22 = 1;
  }

  else
  {
    if (v16)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v23, 2u);
    }

    v22 = 0;
  }

  sub_1000A0F2C(&qword_1001E3658, &qword_100143780);
  sub_10010A23C(&qword_1001E3660, &qword_1001E3658, &qword_100143780);
  v24 = swift_allocError();
  *v25 = v22;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave(&v95);
  swift_endAccess();
  swift_unknownObjectRelease();
  v97[0] = v24;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(&qword_1001E3658, &qword_100143780);
  if (swift_dynamicCast() && (v96 & 1) == 0)
  {

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v45, 2u);
    }

    swift_allocError();
    *v46 = 0;
    swift_willThrow();
    goto LABEL_44;
  }

  v97[0] = v24;
  v26 = type metadata accessor for DataStore.DataStoreError(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v28 = (&v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v29 = *v28;
      v30 = *v28;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v96 = v90;
        *v33 = 136446466;
        v34 = StaticString.description.getter();
        v36 = sub_1000A2E68(v34, v35, &v96);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2114;
        sub_10010A07C();
        swift_allocError();
        *v37 = v29;
        swift_storeEnumTagMultiPayload();
        v38 = v30;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v39;
        v40 = v89;
        *v89 = v39;
        _os_log_impl(&_mh_execute_header, v31, v32, "DaemonActivity %{public}s failed with unknown user: %{public}@", v33, 0x16u);
        sub_1000A5148(v40, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v90);
      }

      sub_10010A07C();
      swift_allocError();
      *v41 = v29;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v42 = type metadata accessor for Logger();
      (*(*(v42 - 8) + 8))(v94, v42);
      goto LABEL_45;
    }

    sub_10010A020(&v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v97[0] = v24;
  swift_errorRetain();
  if (swift_dynamicCast() && (v96 & 1) == 0)
  {

    if (!qword_1001E7008)
    {
      sub_1000D3FA4();
      swift_allocError();
      *v81 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      swift_errorRetain();
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 4) = v86;
      *v85 = v86;
      _os_log_impl(&_mh_execute_header, v82, v83, "The preflight error %@ did not result in a TTR", v84, 0xCu);
      sub_1000A5148(v85, &unk_1001E1820, &qword_100140020);
    }

    sub_100110B88();
    swift_willThrow();

LABEL_44:
    v87 = type metadata accessor for Logger();
    (*(*(v87 - 8) + 8))(v94, v87);
LABEL_45:

    return 0;
  }

  v97[0] = v24;
  __chkstk_darwin(v47);
  v48 = (&v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v50 = *v48;
      v49 = v48[1];

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v96 = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_1000A2E68(v50, v49, &v96);
        _os_log_impl(&_mh_execute_header, v51, v52, "askForTime response handling did not find ask request identifier %s", v53, 0xCu);
        sub_1000A462C(v54);
      }

      sub_10010A07C();
      swift_allocError();
      *v55 = v50;
      v55[1] = v49;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v56 = type metadata accessor for Logger();
      (*(*(v56 - 8) + 8))(v94, v56);
      goto LABEL_45;
    }

    sub_10010A020(v48);
  }

  swift_errorRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v97[0] = v61;
    *v59 = 136446466;
    v62 = StaticString.description.getter();
    v64 = sub_1000A2E68(v62, v63, v97);

    *(v59 + 4) = v64;
    *(v59 + 12) = 2114;
    swift_errorRetain();
    v65 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 14) = v65;
    *v60 = v65;
    _os_log_impl(&_mh_execute_header, v57, v58, "DaemonActivity %{public}s failed with: %{public}@.", v59, 0x16u);
    sub_1000A5148(v60, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v61);
  }

  if ((v90 & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v66 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v90 = &v89;
    __chkstk_darwin(v66 - 8);
    v68 = &v89 - v67;
    v69 = type metadata accessor for TaskPriority();
    (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
    v70 = type metadata accessor for Logger();
    v89 = &v89;
    v71 = *(v70 - 8);
    v72 = *(v71 + 64);
    __chkstk_darwin(v70);
    v73 = &v89 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v71 + 16))(v73, v94, v70);
    v74 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v75 = (v74 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v74 + v72 + 31) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = 0;
    (*(v71 + 32))(v77 + v74, v73, v70);
    v78 = v77 + v75;
    v79 = v92;
    *v78 = v91;
    *(v78 + 8) = v79;
    *(v78 + 16) = v93;
    *(v77 + v76) = v24;
    swift_errorRetain();
    sub_1000A2630(0, 0, v68, &unk_100143788, v77);
  }

  sub_100110B88();
  swift_willThrow();

  v80 = type metadata accessor for Logger();
  (*(*(v80 - 8) + 8))(v94, v80);
  return 0;
}

uint64_t sub_100106EE8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v90) = a5;
  v6 = a3;
  v95.opaque[0] = 0;
  v95.opaque[1] = 0;
  v9 = sub_1000CEAB4(a1, a3, &_mh_execute_header);
  swift_beginAccess();
  os_activity_scope_enter(v9, &v95);
  swift_endAccess();
  v94 = a4;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Checking for first unlock.", v12, 2u);
  }

  v13 = MKBUserUnlockedSinceBoot();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  v16 = os_log_type_enabled(v14, v15);
  v93 = v6;
  v91 = a1;
  v92 = a2;
  if (v13)
  {
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v97[0] = v18;
      *v17 = 136446210;
      v19 = StaticString.description.getter();
      v21 = sub_1000A2E68(v19, v20, v97);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v17, 0xCu);
      sub_1000A462C(v18);
    }

    v22 = 1;
  }

  else
  {
    if (v16)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v23, 2u);
    }

    v22 = 0;
  }

  sub_1000A0F2C(&qword_1001E3648, &unk_100143730);
  sub_10010A23C(&qword_1001E3650, &qword_1001E3648, &unk_100143730);
  v24 = swift_allocError();
  *v25 = v22;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave(&v95);
  swift_endAccess();
  swift_unknownObjectRelease();
  v97[0] = v24;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(&qword_1001E3648, &unk_100143730);
  if (swift_dynamicCast() && (v96 & 1) == 0)
  {

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v45, 2u);
    }

    swift_allocError();
    *v46 = 0;
    swift_willThrow();
    goto LABEL_44;
  }

  v97[0] = v24;
  v26 = type metadata accessor for DataStore.DataStoreError(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v28 = (&v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v29 = *v28;
      v30 = *v28;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v96 = v90;
        *v33 = 136446466;
        v34 = StaticString.description.getter();
        v36 = sub_1000A2E68(v34, v35, &v96);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2114;
        sub_10010A07C();
        swift_allocError();
        *v37 = v29;
        swift_storeEnumTagMultiPayload();
        v38 = v30;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v39;
        v40 = v89;
        *v89 = v39;
        _os_log_impl(&_mh_execute_header, v31, v32, "DaemonActivity %{public}s failed with unknown user: %{public}@", v33, 0x16u);
        sub_1000A5148(v40, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v90);
      }

      sub_10010A07C();
      swift_allocError();
      *v41 = v29;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v42 = type metadata accessor for Logger();
      (*(*(v42 - 8) + 8))(v94, v42);
    }

    sub_10010A020(&v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v97[0] = v24;
  swift_errorRetain();
  if (swift_dynamicCast() && (v96 & 1) == 0)
  {

    if (!qword_1001E7008)
    {
      sub_1000D3FA4();
      swift_allocError();
      *v82 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      swift_errorRetain();
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 4) = v87;
      *v86 = v87;
      _os_log_impl(&_mh_execute_header, v83, v84, "The preflight error %@ did not result in a TTR", v85, 0xCu);
      sub_1000A5148(v86, &unk_1001E1820, &qword_100140020);
    }

    sub_100110B88();
    swift_willThrow();

LABEL_44:
    v88 = type metadata accessor for Logger();
    (*(*(v88 - 8) + 8))(v94, v88);
  }

  v97[0] = v24;
  __chkstk_darwin(v47);
  v48 = (&v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v50 = *v48;
      v49 = v48[1];

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v96 = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_1000A2E68(v50, v49, &v96);
        _os_log_impl(&_mh_execute_header, v51, v52, "askForTime response handling did not find ask request identifier %s", v53, 0xCu);
        sub_1000A462C(v54);
      }

      sub_10010A07C();
      swift_allocError();
      *v55 = v50;
      v55[1] = v49;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v56 = type metadata accessor for Logger();
      (*(*(v56 - 8) + 8))(v94, v56);
    }

    sub_10010A020(v48);
  }

  swift_errorRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v97[0] = v61;
    *v59 = 136446466;
    v62 = StaticString.description.getter();
    v64 = sub_1000A2E68(v62, v63, v97);

    *(v59 + 4) = v64;
    *(v59 + 12) = 2114;
    swift_errorRetain();
    v65 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 14) = v65;
    *v60 = v65;
    _os_log_impl(&_mh_execute_header, v57, v58, "DaemonActivity %{public}s failed with: %{public}@.", v59, 0x16u);
    sub_1000A5148(v60, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v61);
  }

  if ((v90 & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v66 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v90 = &v89;
    __chkstk_darwin(v66 - 8);
    v68 = &v89 - v67;
    v69 = type metadata accessor for TaskPriority();
    (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
    v70 = type metadata accessor for Logger();
    v89 = &v89;
    v71 = *(v70 - 8);
    v72 = *(v71 + 64);
    __chkstk_darwin(v70);
    v73 = &v89 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v71 + 16))(v73, v94, v70);
    v74 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v75 = (v74 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v74 + v72 + 31) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = 0;
    (*(v71 + 32))(v77 + v74, v73, v70);
    v78 = v77 + v75;
    v79 = v92;
    *v78 = v91;
    *(v78 + 8) = v79;
    *(v78 + 16) = v93;
    *(v77 + v76) = v24;
    swift_errorRetain();
    sub_1000A2630(0, 0, v68, &unk_100143740, v77);
  }

  sub_100110B88();
  swift_willThrow();

  v80 = type metadata accessor for Logger();
  return (*(*(v80 - 8) + 8))(v94, v80);
}

uint64_t sub_100107DD0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, unint64_t *a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11)
{
  v101 = a8;
  LODWORD(v97) = a5;
  v14 = a3;
  v104.opaque[0] = 0;
  v104.opaque[1] = 0;
  v100 = a1;
  v16 = sub_1000CEAB4(a1, a3, &_mh_execute_header);
  swift_beginAccess();
  p_isa = &v16->isa;
  os_activity_scope_enter(v16, &v104);
  swift_endAccess();
  v103 = a4;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Checking for first unlock.", v19, 2u);
  }

  v20 = MKBUserUnlockedSinceBoot();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  v23 = os_log_type_enabled(v21, v22);
  v99 = v14;
  v98 = a2;
  if (v20)
  {
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v106[0] = v25;
      *v24 = 136446210;
      v26 = StaticString.description.getter();
      v28 = sub_1000A2E68(v26, v27, v106);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v24, 0xCu);
      sub_1000A462C(v25);
    }

    v29 = 1;
  }

  else
  {
    if (v23)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v30, 2u);
    }

    v29 = 0;
  }

  sub_1000A0F2C(a6, a7);
  sub_10010A23C(v101, a6, a7);
  v31 = swift_allocError();
  *v32 = v29;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave(&v104);
  swift_endAccess();
  swift_unknownObjectRelease();
  v106[0] = v31;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(a6, a7);
  if (swift_dynamicCast() && (v105 & 1) == 0)
  {

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v52, 2u);
    }

    swift_allocError();
    *v53 = 0;
    swift_willThrow();
    goto LABEL_44;
  }

  v106[0] = v31;
  v33 = type metadata accessor for DataStore.DataStoreError(0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v35 = (&v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v36 = *v35;
      v37 = *v35;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        p_isa = swift_slowAlloc();
        v105 = p_isa;
        *v40 = 136446466;
        v41 = StaticString.description.getter();
        v43 = sub_1000A2E68(v41, v42, &v105);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2114;
        sub_10010A07C();
        swift_allocError();
        *v44 = v36;
        swift_storeEnumTagMultiPayload();
        v45 = v37;
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v46;
        v47 = v101;
        *v101 = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "DaemonActivity %{public}s failed with unknown user: %{public}@", v40, 0x16u);
        sub_1000A5148(v47, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(p_isa);
      }

      sub_10010A07C();
      swift_allocError();
      *v48 = v36;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v49 = type metadata accessor for Logger();
      (*(*(v49 - 8) + 8))(v103, v49);
    }

    sub_10010A020(&v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v54 = a9;

  v106[0] = v31;
  swift_errorRetain();
  if (swift_dynamicCast() && (v105 & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v65 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v65 = swift_allocError();
      *v89 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138412290;
      swift_errorRetain();
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 4) = v94;
      *v93 = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "The preflight error %@ did not result in a TTR", v92, 0xCu);
      sub_1000A5148(v93, &unk_1001E1820, &qword_100140020);
    }

    a9(v65);
    swift_willThrow();

LABEL_44:
    v95 = type metadata accessor for Logger();
    (*(*(v95 - 8) + 8))(v103, v95);
  }

  v106[0] = v31;
  __chkstk_darwin(v55);
  v56 = (&v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v58 = *v56;
      v57 = v56[1];

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v105 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_1000A2E68(v58, v57, &v105);
        _os_log_impl(&_mh_execute_header, v59, v60, "askForTime response handling did not find ask request identifier %s", v61, 0xCu);
        sub_1000A462C(v62);
      }

      sub_10010A07C();
      swift_allocError();
      *v63 = v58;
      v63[1] = v57;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v64 = type metadata accessor for Logger();
      (*(*(v64 - 8) + 8))(v103, v64);
    }

    sub_10010A020(&v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  swift_errorRetain();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    p_isa = a9;
    v71 = v70;
    v106[0] = v70;
    *v68 = 136446466;
    v72 = StaticString.description.getter();
    v74 = sub_1000A2E68(v72, v73, v106);

    *(v68 + 4) = v74;
    *(v68 + 12) = 2114;
    swift_errorRetain();
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v68 + 14) = v75;
    *v69 = v75;
    _os_log_impl(&_mh_execute_header, v66, v67, "DaemonActivity %{public}s failed with: %{public}@.", v68, 0x16u);
    sub_1000A5148(v69, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v71);
    v54 = p_isa;
  }

  if ((v97 & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v97 = a11;
    v76 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v101 = &v96;
    __chkstk_darwin(v76 - 8);
    v78 = &v96 - v77;
    v79 = type metadata accessor for TaskPriority();
    (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
    v80 = type metadata accessor for Logger();
    v96 = &v96;
    v81 = *(v80 - 8);
    v82 = *(v81 + 64);
    __chkstk_darwin(v80);
    p_isa = v54;
    (*(v81 + 16))(&v96 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0), v103, v80);
    v83 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    v54 = p_isa;
    (*(v81 + 32))(v84 + v83, &v96 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0), v80);
    v85 = v84 + ((v83 + v82 + 7) & 0xFFFFFFFFFFFFFFF8);
    v86 = v98;
    *v85 = v100;
    *(v85 + 8) = v86;
    *(v85 + 16) = v99;
    *(v84 + ((v83 + v82 + 31) & 0xFFFFFFFFFFFFFFF8)) = v31;
    swift_errorRetain();
    sub_1000A2630(0, 0, v78, v97, v84);
  }

  (v54)(v31);
  swift_willThrow();

  v87 = type metadata accessor for Logger();
  return (*(*(v87 - 8) + 8))(v103, v87);
}

uint64_t sub_100108DF8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, unint64_t *a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11)
{
  v101 = a8;
  LODWORD(v97) = a5;
  v14 = a3;
  v104.opaque[0] = 0;
  v104.opaque[1] = 0;
  v100 = a1;
  v16 = sub_1000CEAB4(a1, a3, &_mh_execute_header);
  swift_beginAccess();
  p_isa = &v16->isa;
  os_activity_scope_enter(v16, &v104);
  swift_endAccess();
  v103 = a4;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Checking for first unlock.", v19, 2u);
  }

  v20 = MKBUserUnlockedSinceBoot();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  v23 = os_log_type_enabled(v21, v22);
  v99 = v14;
  v98 = a2;
  if (v20)
  {
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v106[0] = v25;
      *v24 = 136446210;
      v26 = StaticString.description.getter();
      v28 = sub_1000A2E68(v26, v27, v106);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v24, 0xCu);
      sub_1000A462C(v25);
    }

    v29 = 1;
  }

  else
  {
    if (v23)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v30, 2u);
    }

    v29 = 0;
  }

  sub_1000A0F2C(a6, a7);
  sub_10010A23C(v101, a6, a7);
  v31 = swift_allocError();
  *v32 = v29;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave(&v104);
  swift_endAccess();
  swift_unknownObjectRelease();
  v106[0] = v31;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(a6, a7);
  if (swift_dynamicCast() && (v105 & 1) == 0)
  {

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v52, 2u);
    }

    swift_allocError();
    *v53 = 0;
    swift_willThrow();
    goto LABEL_44;
  }

  v106[0] = v31;
  v33 = type metadata accessor for DataStore.DataStoreError(0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v35 = (&v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v36 = *v35;
      v37 = *v35;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        p_isa = swift_slowAlloc();
        v105 = p_isa;
        *v40 = 136446466;
        v41 = StaticString.description.getter();
        v43 = sub_1000A2E68(v41, v42, &v105);

        *(v40 + 4) = v43;
        *(v40 + 12) = 2114;
        sub_10010A07C();
        swift_allocError();
        *v44 = v36;
        swift_storeEnumTagMultiPayload();
        v45 = v37;
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v46;
        v47 = v101;
        *v101 = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "DaemonActivity %{public}s failed with unknown user: %{public}@", v40, 0x16u);
        sub_1000A5148(v47, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(p_isa);
      }

      sub_10010A07C();
      swift_allocError();
      *v48 = v36;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v49 = type metadata accessor for Logger();
      (*(*(v49 - 8) + 8))(v103, v49);
    }

    sub_10010A020(&v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v54 = a9;

  v106[0] = v31;
  swift_errorRetain();
  if (swift_dynamicCast() && (v105 & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v65 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v65 = swift_allocError();
      *v89 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v92 = 138412290;
      swift_errorRetain();
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 4) = v94;
      *v93 = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "The preflight error %@ did not result in a TTR", v92, 0xCu);
      sub_1000A5148(v93, &unk_1001E1820, &qword_100140020);
    }

    a9(v65);
    swift_willThrow();

LABEL_44:
    v95 = type metadata accessor for Logger();
    (*(*(v95 - 8) + 8))(v103, v95);
  }

  v106[0] = v31;
  __chkstk_darwin(v55);
  v56 = (&v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v58 = *v56;
      v57 = v56[1];

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v105 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_1000A2E68(v58, v57, &v105);
        _os_log_impl(&_mh_execute_header, v59, v60, "askForTime response handling did not find ask request identifier %s", v61, 0xCu);
        sub_1000A462C(v62);
      }

      sub_10010A07C();
      swift_allocError();
      *v63 = v58;
      v63[1] = v57;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v64 = type metadata accessor for Logger();
      (*(*(v64 - 8) + 8))(v103, v64);
    }

    sub_10010A020(&v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  swift_errorRetain();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    p_isa = a9;
    v71 = v70;
    v106[0] = v70;
    *v68 = 136446466;
    v72 = StaticString.description.getter();
    v74 = sub_1000A2E68(v72, v73, v106);

    *(v68 + 4) = v74;
    *(v68 + 12) = 2114;
    swift_errorRetain();
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v68 + 14) = v75;
    *v69 = v75;
    _os_log_impl(&_mh_execute_header, v66, v67, "DaemonActivity %{public}s failed with: %{public}@.", v68, 0x16u);
    sub_1000A5148(v69, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v71);
    v54 = p_isa;
  }

  if ((v97 & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v97 = a11;
    v76 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v101 = &v96;
    __chkstk_darwin(v76 - 8);
    v78 = &v96 - v77;
    v79 = type metadata accessor for TaskPriority();
    (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
    v80 = type metadata accessor for Logger();
    v96 = &v96;
    v81 = *(v80 - 8);
    v82 = *(v81 + 64);
    __chkstk_darwin(v80);
    p_isa = v54;
    (*(v81 + 16))(&v96 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0), v103, v80);
    v83 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    *(v84 + 24) = 0;
    v54 = p_isa;
    (*(v81 + 32))(v84 + v83, &v96 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0), v80);
    v85 = v84 + ((v83 + v82 + 7) & 0xFFFFFFFFFFFFFFF8);
    v86 = v98;
    *v85 = v100;
    *(v85 + 8) = v86;
    *(v85 + 16) = v99;
    *(v84 + ((v83 + v82 + 31) & 0xFFFFFFFFFFFFFFF8)) = v31;
    swift_errorRetain();
    sub_1000A2630(0, 0, v78, v97, v84);
  }

  (v54)(v31);
  swift_willThrow();

  v87 = type metadata accessor for Logger();
  return (*(*(v87 - 8) + 8))(v103, v87);
}

uint64_t sub_100109BD0()
{
  v1[6] = v0;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100109C9C, 0, 0);
}

uint64_t sub_100109C9C()
{
  v1 = *(v0 + 80);
  Logger.init(subsystem:category:)();
  sub_100106EE8("SetupService.promptForPasscodeFromUser", 38, 2, v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100109ECC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v1 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8));
  v14 = *(v10 + 16);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000A5418;

  return sub_1000C0AF8(a1, v8, v9, v1 + v6, v11, v12, v14, v13);
}

uint64_t sub_10010A020(uint64_t a1)
{
  v2 = type metadata accessor for DataStore.DataStoreError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10010A07C()
{
  result = qword_1001E2A08;
  if (!qword_1001E2A08)
  {
    type metadata accessor for DataStore.DataStoreError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E2A08);
  }

  return result;
}

uint64_t sub_10010A0D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_100105970(v2, v3, v4);
}

uint64_t sub_10010A188()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1001053AC(v2, v3, v4);
}

uint64_t sub_10010A23C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000A53D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10010A290()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10010A368(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v1 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8));
  v14 = *(v10 + 16);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000A4F84;

  return sub_1000C0AF8(a1, v8, v9, v1 + v6, v11, v12, v14, v13);
}

uint64_t sub_10010A50C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_1000B3894(v5, a2);
  sub_1000A2B1C(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010A584(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10010A5CC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10010A618(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_10010A658(void *a1, void *a2)
{
  v22 = sub_1000A0F2C(&qword_1001E36E8, &qword_1001438F0);
  v25 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - v4;
  v6 = sub_1000A0F2C(&qword_1001E36F0, &qword_1001438F8);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1000A0F2C(&qword_1001E3380, &qword_100143900);
  swift_allocObject();
  v11 = a1;
  v12 = a2;
  v26 = Future.init(_:)();
  sub_1000F4FCC(&qword_1001E3390, &qword_1001E3380, &qword_100143900, &protocol conformance descriptor for Future<A, B>);
  sub_1000F5038();
  Publisher.mapError<A>(_:)();

  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10010BCB0;
  *(v14 + 24) = v13;
  v15 = v11;
  v16 = v12;
  static Subscribers.Demand.unlimited.getter();
  sub_1000A0F2C(&qword_1001E36F8, &qword_100143908);
  sub_1000F4FCC(&qword_1001E3700, &qword_1001E36E8, &qword_1001438F0, &protocol conformance descriptor for Publishers.MapError<A, B>);
  sub_1000F4FCC(&qword_1001E3708, &qword_1001E36F8, &qword_100143908, &protocol conformance descriptor for Future<A, B>);
  v17 = v22;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v25 + 8))(v5, v17);
  sub_1000F4FCC(&qword_1001E3710, &qword_1001E36F0, &qword_1001438F8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v18 = v23;
  v19 = Publisher.eraseToAnyPublisher()();
  (*(v24 + 8))(v9, v18);
  return v19;
}

uint64_t sub_10010AA2C(void *a1, void *a2)
{
  v22 = sub_1000A0F2C(&qword_1001E36E8, &qword_1001438F0);
  v25 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - v4;
  v6 = sub_1000A0F2C(&qword_1001E36F0, &qword_1001438F8);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1000A0F2C(&qword_1001E3380, &qword_100143900);
  swift_allocObject();
  v11 = a1;
  v12 = a2;
  v26 = Future.init(_:)();
  sub_1000F4FCC(&qword_1001E3390, &qword_1001E3380, &qword_100143900, &protocol conformance descriptor for Future<A, B>);
  sub_1000F5038();
  Publisher.mapError<A>(_:)();

  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10010BADC;
  *(v14 + 24) = v13;
  v15 = v11;
  v16 = v12;
  static Subscribers.Demand.unlimited.getter();
  sub_1000A0F2C(&qword_1001E36F8, &qword_100143908);
  sub_1000F4FCC(&qword_1001E3700, &qword_1001E36E8, &qword_1001438F0, &protocol conformance descriptor for Publishers.MapError<A, B>);
  sub_1000F4FCC(&qword_1001E3708, &qword_1001E36F8, &qword_100143908, &protocol conformance descriptor for Future<A, B>);
  v17 = v22;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v25 + 8))(v5, v17);
  sub_1000F4FCC(&qword_1001E3710, &qword_1001E36F0, &qword_1001438F8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v18 = v23;
  v19 = Publisher.eraseToAnyPublisher()();
  (*(v24 + 8))(v9, v18);
  return v19;
}

uint64_t sub_10010AE00(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  sub_1000A0F2C(&qword_1001E36F8, &qword_100143908);
  swift_allocObject();
  v9 = a1;
  v10 = a2;
  return Future.init(_:)();
}

uint64_t sub_10010AE90(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = sub_10010BB54;
  *(v17 + 48) = v16;
  aBlock[4] = sub_10010BB58;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D48E0;
  aBlock[3] = &unk_1001ABE28;
  v18 = _Block_copy(aBlock);

  v19 = a3;
  a4;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10010BB80();
  sub_1000A0F2C(&qword_1001E19F0, qword_100143910);
  sub_1000F4FCC(&qword_1001E19F8, &qword_1001E19F0, qword_100143910, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

void sub_10010B17C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() persistentStoreDescriptionForConfigurationName:STPersistenceConfigurationNameCloud type:NSSQLiteStoreType];
  [v9 setShouldAddStoreAsynchronously:0];
  if (a1)
  {
    v10 = objc_allocWithZone(NSCloudKitMirroringDelegateOptions);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithContainerIdentifier:v11];

    [v12 setUseDeviceToDeviceEncryption:1];
    v13 = [objc_allocWithZone(CKContainerOptions) init];
    [v13 setUseZoneWidePCS:1];
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    [v12 setValue:v14 forKey:v15];

    [v12 setAutomaticallyScheduleImportAndExportOperations:1];
    v16 = String._bridgeToObjectiveC()();
    [v12 setApsConnectionMachServiceName:v16];

    v17 = [objc_allocWithZone(NSCloudKitMirroringDelegate) initWithOptions:v12];
    [v9 setOption:v17 forMirroringKey:NSPersistentStoreMirroringDelegateOptionKey];
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v20[4] = sub_10010BBD8;
  v20[5] = v18;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1000D4878;
  v20[3] = &unk_1001ABE78;
  v19 = _Block_copy(v20);

  [a2 loadPersistentStoreDescription:v9 completionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_10010B438(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10010BBE0;
  *(v7 + 24) = v6;
  v18 = sub_100100C04;
  v19 = v7;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100100B4C;
  v17 = &unk_1001ABEF0;
  v8 = _Block_copy(&v14);

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10010BC10;
  *(v10 + 24) = v9;
  v18 = sub_10010BC3C;
  v19 = v10;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10010B6B0;
  v17 = &unk_1001ABF68;
  v11 = _Block_copy(&v14);

  [a1 evaluateWithSuccess:v8 failure:v11];
  _Block_release(v8);
  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_10010B6B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_10010B6FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = sub_10010BD1C;
  v15[5] = v14;
  aBlock[4] = sub_10010BCA4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D48E0;
  aBlock[3] = &unk_1001ABFE0;
  v16 = _Block_copy(aBlock);

  v17 = a3;
  a4;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10010BB80();
  sub_1000A0F2C(&qword_1001E19F0, qword_100143910);
  sub_1000F4FCC(&qword_1001E19F8, &qword_1001E19F0, qword_100143910, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

uint64_t sub_10010B9E0(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v8 = 0;
  if ([a1 unloadCloudPersistentStoreWithError:&v8])
  {
    v4 = v8;
    return a3(0, 0);
  }

  else
  {
    v6 = v8;
    v7 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    a3(v7, 1);
  }
}

uint64_t sub_10010BB18@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_10010BB68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10010BB80()
{
  result = qword_1001E19E8;
  if (!qword_1001E19E8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E19E8);
  }

  return result;
}

uint64_t sub_10010BC64(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_10010BD30()
{
  v1 = 0x6C61756E616DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t sub_10010BD94()
{
  result = qword_1001E3718;
  if (!qword_1001E3718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E3718);
  }

  return result;
}

void sub_10010BDE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000A0F2C(&qword_1001E1100, &qword_100141708);
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_1000C6C8C(&v22, v24);
        sub_1000C6C8C(v24, v25);
        sub_1000C6C8C(v25, &v23);
        v16 = sub_1000CBA20(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_1000A462C(v10);
          sub_1000C6C8C(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1000C6C8C(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_10010C040(uint64_t a1)
{
  v2 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for CocoaError();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - v9;
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v22 = a1;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  if (swift_dynamicCast())
  {
    v21 = *(v4 + 8);
    v21(v12, v3);
    v22 = a1;
    swift_errorRetain();
    swift_dynamicCast();
    sub_10010EAA8(&qword_1001E3880, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v13 = Error.localizedDescription.getter();
    v15 = v14;
    sub_1000A0F2C(&qword_1001E3888, &qword_100143A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10013FFD0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v17;
    *(inited + 48) = v13;
    *(inited + 56) = v15;
    v18 = sub_10010D92C(inited);
    swift_setDeallocating();
    sub_1000A5148(inited + 32, &qword_1001E3890, &qword_100143AA0);
    sub_10010EAA8(&qword_1001E3898, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.code.getter();
    sub_10010BDE8(v18);

    _BridgedStoredNSError.init(_:userInfo:)();
    a1 = CocoaError._nsError.getter();
    v19 = v21;
    v21(v7, v3);
    v19(v10, v3);
  }

  else
  {
    swift_errorRetain();
  }

  return a1;
}

uint64_t sub_10010C380()
{
  v0 = objc_allocWithZone(type metadata accessor for ATQuestion.Topic());
  result = ATQuestion.Topic.init(rawValue:)();
  qword_1001E7088 = result;
  return result;
}

uint64_t sub_10010C55C(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  type metadata accessor for Logger();
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v6 = a1;

  return _swift_task_switch(sub_10010C61C, 0, 0);
}

uint64_t sub_10010C61C()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000E0EA4;
  v2 = *(v0 + 32);

  return sub_10010DB7C("AskService.approveException", 27, 2, v2, 0);
}

uint64_t sub_10010C8BC(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  type metadata accessor for Logger();
  v5[4] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[5] = v8;
  v5[6] = *(v8 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;

  return _swift_task_switch(sub_10010C9F4, 0, 0);
}

uint64_t sub_10010C9F4()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1000EB578;
  v2 = *(v0 + 32);

  return sub_10010DB7C("AskService.handleAnswer", 23, 2, v2, 0);
}

uint64_t sub_10010CC80(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for Logger();
  v4[3] = swift_task_alloc();
  v4[4] = _Block_copy(a3);

  return _swift_task_switch(sub_10010CD30, 0, 0);
}

uint64_t sub_10010CD30()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000BCE14;
  v2 = *(v0 + 24);

  return sub_10010DB7C("AskService.respondToAskForTimeRequest", 37, 2, v2, 0);
}

uint64_t sub_10010CFB8(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  type metadata accessor for Logger();
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v6 = a1;

  return _swift_task_switch(sub_10010D078, 0, 0);
}

uint64_t sub_10010D078()
{
  Logger.init(subsystem:category:)();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000E0908;
  v2 = *(v0 + 32);

  return sub_10010DB7C("AskService.sendAsk", 18, 2, v2, 0);
}

uint64_t sub_10010D174()
{
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent10AskService____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AskService(uint64_t a1)
{
  result = qword_1001E3750;
  if (!qword_1001E3750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010D23C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_10010CFB8(v2, v3, v4);
}

uint64_t sub_10010D2F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000A5418;

  return v6();
}

uint64_t sub_10010D3D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000A4F84;

  return v7();
}

uint64_t sub_10010D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000A95B0(a3, v23 - v10, &unk_1001DF9B0, &qword_100140000);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000A5148(v11, &unk_1001DF9B0, &qword_100140000);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000A5148(a3, &unk_1001DF9B0, &qword_100140000);

    return v21;
  }

LABEL_8:
  sub_1000A5148(a3, &unk_1001DF9B0, &qword_100140000);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10010D7BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A5418;

  return sub_1000A2BF4(a1, v4);
}

uint64_t sub_10010D874(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A4F84;

  return sub_1000A2BF4(a1, v4);
}

unint64_t sub_10010D92C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000A0F2C(&qword_1001E38A0, &qword_100143AA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000CBA20(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10010DA40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000A0F2C(&qword_1001E38B8, &qword_100143B28);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000A95B0(v4, v13, &qword_1001E0E60, &qword_100141388);
      result = sub_1000CBB00(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000C6C8C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_10010DB7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 163) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 162) = a3;
  *(v5 + 136) = a1;

  return _swift_task_switch(sub_10010DC18, 0, 0);
}

uint64_t sub_10010DC18()
{
  v89 = v0;
  *(v0 + 40) = 0;
  v1 = *(v0 + 136);
  *(v0 + 48) = 0;
  v2 = sub_1000CEAB4(v1, *(v0 + 162), &_mh_execute_header);
  swift_beginAccess();
  os_activity_scope_enter(v2, (v0 + 40));
  swift_endAccess();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Checking for first unlock.", v5, 2u);
  }

  v6 = MKBUserUnlockedSinceBoot();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  v9 = os_log_type_enabled(v7, v8);
  if (v6)
  {
    if (v9)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v88 = v11;
      *v10 = 136446210;
      v12 = StaticString.description.getter();
      v14 = sub_1000A2E68(v12, v13, &v88);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v10, 0xCu);
      sub_1000A462C(v11);
    }

    v15 = 1;
  }

  else
  {
    if (v9)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v16, 2u);
    }

    v15 = 0;
  }

  sub_1000A0F2C(&qword_1001E3648, &unk_100143730);
  sub_10010A23C(&qword_1001E3650, &qword_1001E3648, &unk_100143730);
  v17 = swift_allocError();
  *v18 = v15;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave((v0 + 40));
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v0 + 104) = v17;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(&qword_1001E3648, &unk_100143730);
  if (swift_dynamicCast() && (*(v0 + 160) & 1) == 0)
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v36, 2u);
    }

    v37 = *(v0 + 152);

    swift_allocError();
    *v38 = 0;
    swift_willThrow();
    v39 = type metadata accessor for Logger();
    (*(*(v39 - 8) + 8))(v37, v39);
    goto LABEL_44;
  }

  *(v0 + 112) = v17;
  type metadata accessor for DataStore.DataStoreError(0);
  v19 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {

      v20 = *v19;
      v21 = *v19;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v86 = v20;
        v24 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v88 = v84;
        *v24 = 136446466;
        v25 = StaticString.description.getter();
        v27 = sub_1000A2E68(v25, v26, &v88);

        *(v24 + 4) = v27;
        v20 = v86;
        *(v24 + 12) = 2114;
        sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
        swift_allocError();
        *v28 = v86;
        swift_storeEnumTagMultiPayload();
        v29 = v21;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v30;
        *v82 = v30;
        _os_log_impl(&_mh_execute_header, v22, v23, "DaemonActivity %{public}s failed with unknown user: %{public}@", v24, 0x16u);
        sub_1000A5148(v82, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v84);
      }

      v31 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
      swift_allocError();
      *v32 = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v33 = type metadata accessor for Logger();
      (*(*(v33 - 8) + 8))(v31, v33);

LABEL_44:

      goto LABEL_45;
    }

    sub_10010A020(v19);
  }

  *(v0 + 120) = v17;
  swift_errorRetain();
  if (swift_dynamicCast() && (*(v0 + 161) & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v50 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v50 = swift_allocError();
      *v72 = 0;
    }

    swift_errorRetain();
    swift_errorRetain();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      swift_errorRetain();
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v77;
      *v76 = v77;
      _os_log_impl(&_mh_execute_header, v73, v74, "The preflight error %@ did not result in a TTR.", v75, 0xCu);
      sub_1000A5148(v76, &unk_1001E1820, &qword_100140020);
    }

    v78 = *(v0 + 152);

    sub_10010C040(v50);
    swift_willThrow();

    v79 = type metadata accessor for Logger();
    (*(*(v79 - 8) + 8))(v78, v79);
    goto LABEL_44;
  }

  *(v0 + 128) = v17;
  v40 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {

      v42 = *v40;
      v41 = v40[1];

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v88 = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_1000A2E68(v42, v41, &v88);
        _os_log_impl(&_mh_execute_header, v43, v44, "askForTime response handling did not find ask request identifier %s", v45, 0xCu);
        sub_1000A462C(v46);
      }

      v47 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError, &unk_100142AB0);
      swift_allocError();
      *v48 = v42;
      v48[1] = v41;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v49 = type metadata accessor for Logger();
      (*(*(v49 - 8) + 8))(v47, v49);

      goto LABEL_44;
    }

    sub_10010A020(v40);
  }

  swift_errorRetain();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v88 = v55;
    *v53 = 136446466;
    v56 = StaticString.description.getter();
    v58 = sub_1000A2E68(v56, v57, &v88);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2114;
    swift_errorRetain();
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 14) = v59;
    *v54 = v59;
    _os_log_impl(&_mh_execute_header, v51, v52, "DaemonActivity %{public}s failed with: %{public}@.", v53, 0x16u);
    sub_1000A5148(v54, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v55);
  }

  if ((*(v0 + 163) & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v87 = *(v0 + 162);
    v60 = *(v0 + 152);
    v83 = *(v0 + 136);
    v85 = *(v0 + 144);
    sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
    v61 = swift_task_alloc();
    v62 = type metadata accessor for TaskPriority();
    (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
    v63 = type metadata accessor for Logger();
    v64 = *(v63 - 8);
    v65 = *(v64 + 64);
    v66 = swift_task_alloc();
    (*(v64 + 16))(v66, v60, v63);
    v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    (*(v64 + 32))(v68 + v67, v66, v63);
    v69 = v68 + ((v67 + v65 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v69 = v83;
    *(v69 + 8) = v85;
    *(v69 + 16) = v87;
    *(v68 + ((v67 + v65 + 31) & 0xFFFFFFFFFFFFFFF8)) = v17;

    swift_errorRetain();
    sub_1000A2630(0, 0, v61, &unk_100143740, v68);
  }

  v70 = *(v0 + 152);
  sub_10010C040(v17);
  swift_willThrow();

  v71 = type metadata accessor for Logger();
  (*(*(v71 - 8) + 8))(v70, v71);
LABEL_45:
  v80 = *(v0 + 8);

  return v80();
}