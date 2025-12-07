uint64_t sub_10056A834(uint64_t a1)
{
  v33 = type metadata accessor for URLResourceValues();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v34 = v9;
  v8(v7, a1);
  if (qword_100973A60 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100983A80);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36[0] = v14;
    *v13 = 136315138;
    swift_beginAccess();
    v15 = URL.path.getter();
    v17 = sub_10000C4E4(v15, v16, v36);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Making AirDrop hash DB folder if doesn't exist: %s", v13, 0xCu);
    sub_10000C60C(v14);
  }

  v18 = [objc_opt_self() defaultManager];
  swift_beginAccess();
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  sub_10028088C(&qword_100978960, &unk_1007FBB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSFileProtectionKey;
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v23;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v24 = NSFileProtectionKey;
  v25 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  sub_100281848(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_1009746C0, &qword_1007F65A0);
  type metadata accessor for FileAttributeKey(0);
  sub_10000D494(&qword_100974750, type metadata accessor for FileAttributeKey, &unk_1007F74CC);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v35[0] = 0;
  v27 = [v18 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:isa error:v35];

  if (v27)
  {
    v28 = v35[0];
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    swift_beginAccess();
    URL.setResourceValues(_:)();
    swift_endAccess();
    (*(v32 + 8))(v3, v33);
  }

  else
  {
    v29 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v5 + 8))(v7, v34);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.stageAddEntries(_:)(Swift::OpaquePointer a1)
{
  if (*(v1 + 48) != 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 49))
  {
    v2 = 2;
LABEL_5:
    sub_10055A164();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
    return;
  }

  v4 = *(a1._rawValue + 2);
  if (v4)
  {
    sub_10028FBDC(0, v4, 0);
    v5 = (a1._rawValue + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];

      if (v9 >= v8 >> 1)
      {
        sub_10028FBDC((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v7;
      v10[5] = v6;
      v5 += 9;
      --v4;
    }

    while (v4);
  }

  swift_beginAccess();
  sub_10056AE98(_swiftEmptyArrayStorage);
  swift_endAccess();

  swift_beginAccess();

  sub_100403B10(v11);
  swift_endAccess();
}

uint64_t sub_10056AE98(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_10036DB18(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.stageDeleteEntriesForContact(withID:)(Swift::String withID)
{
  if (*(v1 + 48) != 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 49))
  {
    v2 = 2;
LABEL_5:
    sub_10055A164();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
    return;
  }

  object = withID._object;
  countAndFlagsBits = withID._countAndFlagsBits;
  v6 = v1;
  if (qword_100973A60 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100983A80);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10000C4E4(countAndFlagsBits, object, v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "CDB: Staging deletion of entries for contact id: %s", v10, 0xCu);
    sub_10000C60C(v11);
  }

  swift_beginAccess();

  v12 = sub_1005801A4((v6 + 32), countAndFlagsBits, object);

  v13 = *(*(v6 + 32) + 16);
  if (v13 < v12)
  {
    __break(1u);
  }

  else
  {
    sub_1005804C8(v12, v13, sub_10028EFE0, sub_1005803F4);
    swift_endAccess();
    swift_beginAccess();

    sub_10046DAAC(&v14, countAndFlagsBits, object);
    swift_endAccess();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.preparePersist()()
{
  v27 = type metadata accessor for URL();
  v1 = *(v27 - 8);
  v2 = __chkstk_darwin(v27);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v26 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - v9;
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = [objc_allocWithZone(CUKeyValueStoreWriter) init];
  v14 = *(v0 + 24);
  v28 = v0;
  *(v0 + 24) = v13;

  v15 = sub_1001F149C();
  if (!v15)
  {
    __break(1u);
  }

  v16 = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  URL.appendingPathComponent(_:)();
  v17 = *(v1 + 8);
  v18 = v7;
  v19 = v27;
  v17(v18, v27);
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v17(v4, v19);
  v17(v12, v19);
  URL.path.getter();
  v17(v10, v19);
  v20 = *(v28 + 24);
  if (v20)
  {
    v21 = v20;
    v22 = String._bridgeToObjectiveC()();

    v29 = 0;
    v23 = [v21 startAtPath:v22 error:&v29];

    if (v23)
    {
      v24 = v29;
    }

    else
    {
      v25 = v29;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.finishPersist()()
{
  v2 = v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v34 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = *(v2 + 24);
  if (v16)
  {
    v36 = 0;
    v17 = [v16 finishAndReturnError:&v36];
    v18 = v36;
    if (!v17)
    {
LABEL_8:
      v33 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v34 = v1;
    v35 = v13;
    v19 = *(v2 + 24);
    v20 = v36;
  }

  else
  {
    v34 = v1;
    v35 = v13;
    v19 = 0;
  }

  *(v2 + 24) = 0;

  [*(v2 + 16) close];
  sub_1000276B4(0, &qword_100973C78, NSData_ptr);
  v21 = objc_allocWithZone(CUKeyValueStoreReader);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [v21 initWithKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata];
  v24 = *(v2 + 16);
  *(v2 + 16) = v23;

  v25 = sub_1001F149C();
  if (v25)
  {
    v26 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:)();

    URL.appendingPathComponent(_:)();
    v27 = *(v4 + 8);
    v27(v10, v3);
    URL.appendingPathComponent(_:)();
    v28 = v35;
    URL.appendingPathExtension(_:)();
    v27(v7, v3);
    v27(v15, v3);
    URL.path.getter();
    v27(v28, v3);
    v29 = *(v2 + 16);
    v30 = String._bridgeToObjectiveC()();

    v36 = 0;
    v31 = [v29 openAtPath:v30 error:&v36];

    v18 = v36;
    if (v31)
    {
      v32 = v36;
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.persist()()
{
  if (*(v0 + 48) != 1)
  {
    sub_10055A164();
    swift_allocError();
    v4 = 1;
    goto LABEL_5;
  }

  v2 = v0;
  if (*(v0 + 49))
  {
    sub_10055A164();
    swift_allocError();
    v4 = 2;
LABEL_5:
    *v3 = v4;
    swift_willThrow();
    return;
  }

  v144 = v1;
  swift_beginAccess();
  v5 = *(*(v0 + 32) + 16);
  swift_beginAccess();
  v6 = *(*(v0 + 40) + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
    goto LABEL_88;
  }

  if (v8 < 0)
  {
    goto LABEL_89;
  }

  if (!v8)
  {
    if (qword_100973A60 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_100983A80);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "CDB: Nothing to persist.", v20, 2u);
    }

    goto LABEL_18;
  }

  if (qword_100973A60 != -1)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100983A80);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      v13 = *(*(v2 + 32) + 16);
      v14 = *(*(v2 + 40) + 16);
      v7 = __OFADD__(v13, v14);
      v15 = v13 + v14;
      if (v7)
      {
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (v15 < 0)
      {
        goto LABEL_92;
      }

      *(v12 + 4) = v15;
      v16 = v12;

      _os_log_impl(&_mh_execute_header, v10, v11, "CDB: Persist %lu changes.", v16, 0xCu);
    }

    else
    {
    }

    v122 = mach_absolute_time();
    v21 = swift_allocObject();
    *(v21 + 16) = &_swiftEmptyDictionarySingleton;
    v145 = v21 + 16;
    v22 = *(v2 + 32);
    v23 = _swiftEmptyArrayStorage;
    v123 = v2;
    v124 = v21;
    *(v2 + 32) = _swiftEmptyArrayStorage;
    v24 = *(v22 + 16);
    v130 = v22;
    if (v24)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10028FBDC(0, v24, 0);
      v23 = aBlock[0];
      v25 = (v22 + 40);
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        aBlock[0] = v23;
        v29 = v23[2];
        v28 = v23[3];

        if (v29 >= v28 >> 1)
        {
          sub_10028FBDC((v28 > 1), v29 + 1, 1);
          v23 = aBlock[0];
        }

        v23[2] = v29 + 1;
        v30 = &v23[2 * v29];
        v30[4] = v27;
        v30[5] = v26;
        v25 += 9;
        --v24;
      }

      while (v24);
      v31 = v124;
    }

    else
    {
      v31 = v21;
    }

    v32 = sub_100292D28(v23);

    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v34 = *(v2 + 16);
    sub_1000276B4(0, &qword_100973C78, NSData_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v36 = swift_allocObject();
    v36[2] = v2;
    v36[3] = v33;
    v36[4] = v32;
    v36[5] = v31;
    v153 = sub_1005805A0;
    v154 = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10032765C;
    v152 = &unk_1008E7910;
    v37 = _Block_copy(aBlock);

    v38 = v34;

    aBlock[0] = 0;
    v2 = [v38 enumerateKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata error:aBlock handler:v37];
    _Block_release(v37);

    v39 = aBlock[0];
    if ((v2 & 1) == 0)
    {
      v42 = aBlock[0];

      _convertNSErrorToError(_:)();

      swift_willThrow();

      return;
    }

    swift_beginAccess();
    v40 = v130;
    if (*(v33 + 16))
    {
      v41 = v39;
      swift_errorRetain();

      swift_willThrow();

      return;
    }

    *(v123 + 40) = _swiftEmptySetSingleton;
    v43 = v39;

    v125 = *(v130 + 16);
    if (v125)
    {
      break;
    }

LABEL_55:

    v89 = *(v123 + 24);
    if (!v89)
    {
      v18 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&_mh_execute_header, v18, v119, "Writer not prepared for persist operation", v120, 2u);
      }

LABEL_18:

      return;
    }

    swift_beginAccess();
    v90 = *v145;
    v91 = *v145 + 64;
    v92 = 1 << *(*v145 + 32);
    if (v92 < 64)
    {
      v93 = ~(-1 << v92);
    }

    else
    {
      v93 = -1;
    }

    v94 = v93 & *(v90 + 64);
    v2 = (v92 + 63) >> 6;
    v138 = v89;
    v129 = v90;

    v95 = 0;
    v126 = v2;
    v128 = v90 + 64;
LABEL_61:
    if (!v94)
    {
      while (1)
      {
        v96 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          goto LABEL_87;
        }

        if (v96 >= v2)
        {
          break;
        }

        v94 = *(v91 + 8 * v96);
        ++v95;
        if (v94)
        {
          goto LABEL_66;
        }
      }

      if (mach_absolute_time() >= v122)
      {
        v115 = UpTicksToMilliseconds();
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 134217984;
          *(v118 + 4) = v115;
          _os_log_impl(&_mh_execute_header, v116, v117, "CDB: Persist completed. Operation took %llu ms.", v118, 0xCu);
        }

        return;
      }

LABEL_93:
      __break(1u);
    }

    v96 = v95;
LABEL_66:
    v131 = v96;
    v134 = (v94 - 1) & v94;
    v97 = __clz(__rbit64(v94)) | (v96 << 6);
    v98 = (*(v129 + 48) + 16 * v97);
    v99 = *v98;
    v100 = v98[1];
    v101 = *(*(v129 + 56) + 8 * v97);
    v102 = v101 + 56;
    v103 = 1 << *(v101 + 32);
    if (v103 < 64)
    {
      v104 = ~(-1 << v103);
    }

    else
    {
      v104 = -1;
    }

    v105 = v104 & *(v101 + 56);
    v143 = v99;
    v146 = v100;
    sub_100294008(v99, v100);
    v2 = (v103 + 63) >> 6;
    v140 = v101;

    v106 = 0;
    if (v105)
    {
      while (1)
      {
        v107 = v106;
LABEL_74:
        v108 = (*(v140 + 48) + ((v107 << 10) | (16 * __clz(__rbit64(v105)))));
        v109 = *v108;
        v110 = v108[1];
        sub_100294008(*v108, v110);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v112 = Data._bridgeToObjectiveC()().super.isa;
        v147 = 0;
        v113 = [v138 addKey:isa value:v112 error:&v147];

        if (!v113)
        {
          break;
        }

        v105 &= v105 - 1;
        v114 = v147;
        sub_100026AC0(v109, v110);
        v106 = v107;
        if (!v105)
        {
          goto LABEL_71;
        }
      }

      v121 = v147;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_100026AC0(v109, v110);
      sub_100026AC0(v143, v146);

      return;
    }

LABEL_71:
    while (1)
    {
      v107 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        break;
      }

      if (v107 >= v2)
      {
        sub_100026AC0(v143, v146);

        v95 = v131;
        v94 = v134;
        v2 = v126;
        v91 = v128;
        goto LABEL_61;
      }

      v105 = *(v102 + 8 * v107);
      ++v106;
      if (v105)
      {
        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    swift_once();
  }

  v44 = 0;
  v45 = v130 + 56;
  while (1)
  {
    if (v44 >= *(v40 + 16))
    {
      goto LABEL_86;
    }

    v139 = v44;
    v48 = *(v45 - 8);
    v49 = *v45;
    v135 = *(v45 + 24);
    v141 = *(v45 + 8);
    v50 = *(v45 + 42);
    v132 = *(v45 + 40);
    v51 = *(v45 + 43);
    v52 = *(v45 - 24);
    v53 = *(v45 - 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v54 = sub_100016004(v52, v53);
    sub_10028088C(&unk_100987410, &unk_1007FB010);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    if (qword_100973A68 != -1)
    {
      v88 = inited;
      swift_once();
      inited = v88;
    }

    *(inited + 32) = byte_1009A0C88;
    aBlock[0] = v54;
    sub_10040367C(inited);
    v56 = aBlock[0];
    v57 = sub_100016004(v48, v49);
    aBlock[0] = v56;
    sub_10040367C(v57);
    v58 = aBlock[0];
    sub_10028088C(&qword_100975038, &qword_1007F83D8);
    v59 = swift_initStackObject();
    v59[1] = xmmword_1007FA7E0;
    v59[2] = v141;
    v59[3] = v135;
    v60 = sub_100568E38(v59, 8);
    swift_setDeallocating();
    if (v51)
    {

      v133 = 0;
      v136 = 0;
    }

    else
    {
      v61 = v132 | (v50 << 16);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1007F5670;
      *(v62 + 32) = BYTE2(v61);
      aBlock[0] = v62;

      sub_10040367C(v63);
      v133 = aBlock[0];
      v136 = sub_100568CF0(v61, 2uLL, v64, aBlock[0]);
    }

    v65 = sub_10028088C(&qword_100983A98, &qword_10080AF30);
    v152 = v65;
    v66 = sub_1005805AC();
    v153 = v66;
    aBlock[0] = v60;
    v67 = sub_10002CDC0(aBlock, v65);
    v68 = (*v67 + 32);
    v69 = *(*v67 + 16);
    swift_bridgeObjectRetain_n();
    sub_10057D698(v68, &v68[v69], &v147);
    if (v144)
    {
      break;
    }

    v70 = v147;
    v71 = v148;
    sub_10000C60C(aBlock);
    v152 = v65;
    v153 = v66;
    aBlock[0] = v58;
    v72 = sub_10002CDC0(aBlock, v65);
    v73 = (*v72 + 32);
    v74 = *(*v72 + 16);
    swift_bridgeObjectRetain_n();
    sub_10057D698(v73, &v73[v74], &v147);
    v144 = 0;

    v75 = v148;
    v142 = v147;
    sub_10000C60C(aBlock);
    swift_beginAccess();
    if (!*(*v145 + 16) || (sub_100011780(v70, v71, &Data.hash(into:), sub_100570EAC), (v76 & 1) == 0))
    {
      swift_endAccess();
      swift_beginAccess();
      sub_100294008(v70, v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v147 = *v145;
      *v145 = 0x8000000000000000;
      sub_10057BF04(_swiftEmptySetSingleton, v70, v71, isUniquelyReferenced_nonNull_native);
      sub_100026AC0(v70, v71);
      *v145 = v147;
    }

    swift_endAccess();
    swift_beginAccess();
    v2 = sub_10056CEA4(aBlock, v70, v71);
    if (*v78)
    {
      sub_100294008(v142, v75);
      sub_10046E8A8(&v149, v142, v75);
      (v2)(aBlock, 0);
      swift_endAccess();
      sub_100026AC0(v149, v150);
    }

    else
    {
      (v2)(aBlock, 0);
      swift_endAccess();
    }

    if (v136)
    {
      v79 = sub_10057EA7C(v136);
      v81 = v80;

      v82 = sub_10057EA7C(v133);
      v137 = v83;

      swift_beginAccess();
      v127 = v75;
      if (!*(*v145 + 16) || (sub_100011780(v79, v81, &Data.hash(into:), sub_100570EAC), (v84 & 1) == 0))
      {
        swift_endAccess();
        swift_beginAccess();
        sub_100294008(v79, v81);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v147 = *v145;
        *v145 = 0x8000000000000000;
        sub_10057BF04(_swiftEmptySetSingleton, v79, v81, v85);
        sub_100026AC0(v79, v81);
        *v145 = v147;
      }

      swift_endAccess();
      swift_beginAccess();
      v86 = sub_10056CEA4(aBlock, v79, v81);
      if (*v87)
      {
        v2 = v137;
        sub_100294008(v82, v137);
        sub_10046E8A8(&v149, v82, v137);
        (v86)(aBlock, 0);
        swift_endAccess();
        sub_100026AC0(v82, v137);
        sub_100026AC0(v79, v81);
        sub_100026AC0(v142, v127);
        sub_100026AC0(v70, v71);
        v46 = v149;
        v47 = v150;
      }

      else
      {
        (v86)(aBlock, 0);
        swift_endAccess();
        sub_100026AC0(v70, v71);
        sub_100026AC0(v142, v127);
        sub_100026AC0(v79, v81);
        v46 = v82;
        v47 = v137;
      }
    }

    else
    {
      sub_100026AC0(v70, v71);
      v46 = v142;
      v47 = v75;
    }

    sub_100026AC0(v46, v47);
    v44 = v139 + 1;
    v45 += 72;
    v40 = v130;
    if (v125 == v139 + 1)
    {
      goto LABEL_55;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_10056C8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v14 != 2)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v17 = v9[2];
    v16 = v9[3];
    v18 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (!v18)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = BYTE6(v11);
    goto LABEL_10;
  }

  LODWORD(v15) = HIDWORD(v9) - v9;
  if (__OFSUB__(HIDWORD(v9), v9))
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v15 = v15;
LABEL_10:
  v50 = v9;
  if (v15 == 2)
  {
    if (v14 == 2)
    {
      v24 = v9[2];
      v23 = v9[3];
      v21 = v23 - v24;
      if (!__OFSUB__(v23, v24))
      {
        v19 = v12;
        v20 = v13;
LABEL_21:
        v12 = sub_100294008(v9, v11);
        if (v21 == 2)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }

      goto LABEL_52;
    }

    if (v14 == 1)
    {
      if (!__OFSUB__(HIDWORD(v9), v9))
      {
        v19 = v12;
        v20 = v13;
        v21 = HIDWORD(v9) - v9;
        goto LABEL_21;
      }

      goto LABEL_50;
    }
  }

  else
  {
    if (v14 != 2)
    {
      if (v14 != 1)
      {
LABEL_30:
        v22 = BYTE6(v11);
        goto LABEL_31;
      }

      LODWORD(v22) = HIDWORD(v9) - v9;
      if (!__OFSUB__(HIDWORD(v9), v9))
      {
        v22 = v22;
        goto LABEL_31;
      }

      goto LABEL_51;
    }

    v29 = v9[2];
    v28 = v9[3];
    v18 = __OFSUB__(v28, v29);
    v22 = v28 - v29;
    if (!v18)
    {
LABEL_31:
      if (v22 == 32)
      {
        v30 = a4;
        v19 = v12;
        v20 = v13;
        v31 = sub_100580610(v12, v13);
        v33 = v32;
        v48 = a6;
        goto LABEL_39;
      }

      goto LABEL_53;
    }

    __break(1u);
  }

  v19 = v12;
  v20 = v13;
  if (BYTE6(v11) != 2)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_22:
  sub_1002F15B0(v9, v11);
  sub_100026AC0(v9, v11);
  Data._Representation.subscript.getter();
  v25 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v25 == 2)
    {
      v26 = *(v19 + 16);
      v27 = *(v19 + 24);
      goto LABEL_36;
    }

LABEL_54:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v25)
  {
    v26 = v19;
    v27 = v19 >> 32;
  }

  else
  {
    v26 = 0;
    v27 = BYTE6(v20);
  }

LABEL_36:
  if (v27 < 1 || v27 < v26)
  {
    goto LABEL_54;
  }

  v30 = a4;
  v48 = a6;
  v34 = Data._Representation.subscript.getter();
  v36 = v35;
  v31 = sub_100580610(v34, v35);
  v33 = v37;
  sub_100026AC0(v34, v36);
LABEL_39:

  swift_beginAccess();
  v38 = *(v30 + 40);

  v39 = sub_100569230(v31, v33, v38);

  v40 = sub_100569230(v31, v33, v48);

  if (v39 & 1) != 0 || (v40)
  {
    sub_100026AC0(v19, v20);
    v41 = v50;
    v42 = v11;
  }

  else
  {
    swift_beginAccess();
    if (!*(*(a7 + 16) + 16) || (sub_100011780(v50, v11, &Data.hash(into:), sub_100570EAC), (v44 & 1) == 0))
    {
      swift_endAccess();
      swift_beginAccess();
      sub_100294008(v50, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(a7 + 16);
      *(a7 + 16) = 0x8000000000000000;
      sub_10057BF04(_swiftEmptySetSingleton, v50, v11, isUniquelyReferenced_nonNull_native);
      sub_100026AC0(v50, v11);
      *(a7 + 16) = v52;
    }

    swift_endAccess();
    swift_beginAccess();
    v46 = sub_10056CEA4(v51, v50, v11);
    if (*v47)
    {
      sub_100294008(v19, v20);
      sub_10046E8A8(v53, v19, v20);
      (v46)(v51, 0);
      swift_endAccess();
      sub_100026AC0(v19, v20);
      sub_100026AC0(v50, v11);
      v41 = v53[0];
      v42 = v53[1];
    }

    else
    {
      (v46)(v51, 0);
      swift_endAccess();
      sub_100026AC0(v50, v11);
      v41 = v19;
      v42 = v20;
    }
  }

  return sub_100026AC0(v41, v42);
}

uint64_t (*sub_10056CE1C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10057D85C(v6, a2, a3);
  return sub_1005818A0;
}

uint64_t (*sub_10056CEA4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10057D908(v6, a2, a3);
  return sub_10056CF2C;
}

void sub_10056CF30(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.destroy()()
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v30 - v8;
  v10 = __chkstk_darwin(v7);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  if ((*(v0 + 49) & 1) == 0)
  {
    v31 = v11;
    *(v0 + 49) = 1;
    if (*(v0 + 48) == 1)
    {
      [*(v0 + 16) close];
    }

    if (qword_100973A60 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_100983A80);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "CDB: Destroy called", v17, 2u);
    }

    v30 = v1;

    v18 = sub_1001F149C();
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(fileURLWithPath:)();

      URL.appendingPathComponent(_:)();
      v20 = *(v3 + 8);
      v20(v9, v2);
      URL.appendingPathComponent(_:)();
      v21 = v31;
      URL.appendingPathExtension(_:)();
      v20(v6, v2);
      v20(v13, v2);
      URL.path.getter();
      v20(v21, v2);
      v22 = objc_opt_self();
      v23 = [v22 defaultManager];
      v24 = String._bridgeToObjectiveC()();
      LODWORD(v21) = [v23 fileExistsAtPath:v24];

      if (v21)
      {
        v25 = [v22 defaultManager];
        v26 = String._bridgeToObjectiveC()();

        v32 = 0;
        v27 = [v25 removeItemAtPath:v26 error:&v32];

        if (v27)
        {
          v28 = v32;
        }

        else
        {
          v29 = v32;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *SDAirDropHashStoreCDB.contact(forLongHash:)(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  if (*(v4 + 48) != 1)
  {
    sub_10055A164();
    swift_allocError();
    v8 = 1;
    goto LABEL_5;
  }

  if (*(v4 + 49))
  {
    sub_10055A164();
    swift_allocError();
    v8 = 2;
LABEL_5:
    *v7 = v8;
LABEL_6:
    swift_willThrow();
    return v6;
  }

  swift_beginAccess();
  v40 = v4;
  v10 = *(v4 + 32);
  v42 = v10;
  v43 = -*(v10 + 16);
  v11 = (v10 + 48);
  v12 = -1;
  while (v43 + v12 != -1)
  {
    if (++v12 >= *(v42 + 16))
    {
      __break(1u);
    }

    v48 = v11 + 9;
    v6 = *(v11 - 1);
    v41 = *(v11 - 2);
    v14 = v11[4];
    v13 = v11[5];
    v16 = v11[2];
    v15 = v11[3];
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    Hasher._combine(_:)(v15);
    Hasher._combine(_:)(v14);
    Hasher._combine(_:)(v13);
    v17 = Hasher._finalize()();
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1);
    Hasher._combine(_:)(a2);
    Hasher._combine(_:)(a3);
    Hasher._combine(_:)(a4);
    v18 = Hasher._finalize()();
    v11 = v48;
    if (v17 == v18)
    {

      return v41;
    }
  }

  v19 = *(v4 + 16);
  sub_10028088C(&qword_100975038, &qword_1007F83D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007FA7E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  v21 = v19;
  v22 = sub_100568E38(inited, 8);
  swift_setDeallocating();
  v23 = sub_10057EA7C(v22);
  v25 = v24;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v23, v25);
  sub_1000276B4(0, &qword_100973C78, NSData_ptr);
  v49[0] = 0;
  v27 = [v21 valueForKey:isa valueType:swift_getObjCClassFromMetadata() error:v49];

  if (v49[0])
  {
    v49[0];

    goto LABEL_6;
  }

  if (!v27)
  {
    return 0;
  }

  v28 = v27;
  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v6 = sub_100580610(v29, v31);
  v33 = v32;
  sub_100026AC0(v29, v31);
  if (v5)
  {
  }

  else
  {
    swift_beginAccess();
    v34 = *(v40 + 40);

    v35 = sub_100569230(v6, v33, v34);

    v36 = *(v40 + 32);
    v37 = (v36 + 40);
    v38 = *(v36 + 16) + 1;
    while (--v38)
    {
      if (*(v37 - 1) != v6 || *v37 != v33)
      {
        v37 += 9;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    if ((v35 & 1) == 0)
    {
      return v6;
    }

LABEL_28:

    return 0;
  }

  return v6;
}

uint64_t *SDAirDropHashStoreCDB.contacts(forLongHash:)(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  if (*(v4 + 48) != 1)
  {
    sub_10055A164();
    swift_allocError();
    v7 = 1;
    goto LABEL_5;
  }

  if (*(v4 + 49))
  {
    sub_10055A164();
    swift_allocError();
    v7 = 2;
LABEL_5:
    *v6 = v7;
    swift_willThrow();
    return v5;
  }

  v60 = swift_allocObject();
  *(v60 + 16) = _swiftEmptySetSingleton;
  swift_beginAccess();
  v59 = v4;
  v9 = *(*(v4 + 32) + 16);

  if (v9)
  {
    v11 = 0;
    v12 = v10 + 32;
    v61 = v10;
    v58 = v10 + 32;
    do
    {
      v13 = v12 + 72 * v11;
      v14 = v11;
      while (1)
      {
        if (v14 >= *(v10 + 16))
        {
          __break(1u);
        }

        v15 = *(v13 + 64);
        v16 = *(v13 + 48);
        v17 = *(v13 + 16);
        v73 = *(v13 + 32);
        v74 = v16;
        v18 = *v13;
        v75 = v15;
        v71 = v18;
        v72 = v17;
        v11 = v14 + 1;
        v19 = v73;
        v20 = v74;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v19);
        Hasher._combine(_:)(*(&v19 + 1));
        Hasher._combine(_:)(v20);
        Hasher._combine(_:)(*(&v20 + 1));
        v21 = Hasher._finalize()();
        Hasher.init(_seed:)();
        Hasher._combine(_:)(a1);
        Hasher._combine(_:)(a2);
        Hasher._combine(_:)(a3);
        Hasher._combine(_:)(a4);
        if (v21 == Hasher._finalize()())
        {
          break;
        }

        v13 += 72;
        ++v14;
        v10 = v61;
        if (v9 == v11)
        {
          goto LABEL_19;
        }
      }

      sub_10055A394(&v71, &aBlock);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10028FF34(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_10028FF34((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[9 * v23];
      *(v24 + 2) = v71;
      v25 = v72;
      v26 = v73;
      v27 = v74;
      *(v24 + 24) = v75;
      *(v24 + 4) = v26;
      *(v24 + 5) = v27;
      *(v24 + 3) = v25;
      v12 = v58;
      v10 = v61;
    }

    while (v9 - 1 != v14);
  }

LABEL_19:

  v28 = _swiftEmptyArrayStorage[2];
  if (v28)
  {
    sub_10028FF74(0, v28, 0);
    v29 = v28 - 1;
    v30 = 4;
    v31 = v60;
    while (1)
    {
      aBlock = *&_swiftEmptyArrayStorage[v30];
      v32 = *&_swiftEmptyArrayStorage[v30 + 2];
      v33 = *&_swiftEmptyArrayStorage[v30 + 4];
      v34 = *&_swiftEmptyArrayStorage[v30 + 6];
      v70 = _swiftEmptyArrayStorage[v30 + 8];
      v68 = v33;
      v69 = v34;
      v67 = v32;
      sub_10055A394(&aBlock, &v71);
      v36 = _swiftEmptyArrayStorage[2];
      v35 = _swiftEmptyArrayStorage[3];
      if (v36 >= v35 >> 1)
      {
        sub_10028FF74((v35 > 1), v36 + 1, 1);
      }

      v37 = aBlock;
      v38 = v67;
      _swiftEmptyArrayStorage[2] = v36 + 1;
      v39 = &_swiftEmptyArrayStorage[4 * v36];
      *(v39 + 2) = v37;
      *(v39 + 3) = v38;
      if (!v29)
      {
        break;
      }

      --v29;
      v30 += 9;
    }

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_26;
    }
  }

  else
  {

    v31 = v60;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_26:
      v40 = sub_100293120(_swiftEmptyArrayStorage);

      sub_1005696B4(v40);
      goto LABEL_29;
    }
  }

LABEL_29:
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v5 = (v41 + 16);
  sub_10028088C(&qword_100975038, &qword_1007F83D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007FA7E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  v43 = sub_100568E38(inited, 8);
  swift_setDeallocating();
  v44 = sub_10057EA7C(v43);
  v46 = v45;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v44, v46);
  v48 = *(v59 + 16);
  v49 = swift_allocObject();
  v49[2] = v59;
  v49[3] = v31;
  v49[4] = v41;
  *&v68 = sub_10058085C;
  *(&v68 + 1) = v49;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v67 = sub_10056E078;
  *(&v67 + 1) = &unk_1008E7988;
  v50 = _Block_copy(&aBlock);
  v51 = v48;
  v52 = isa;

  *&aBlock = 0;
  v53 = [v51 enumerateValuesForKey:v52 error:&aBlock handler:v50];
  _Block_release(v50);

  v54 = aBlock;
  if (v53)
  {
    swift_beginAccess();
    if (*v5)
    {
      swift_willThrow();
      v55 = v54;
      swift_errorRetain();
    }

    else
    {
      v57 = v54;

      swift_beginAccess();
      v5 = *(v31 + 16);
    }
  }

  else
  {
    v56 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10056DEB0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = sub_100580610(v6, v7);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_100026AC0(v6, v8);
  swift_beginAccess();
  v16 = *(a3 + 40);

  v17 = sub_100569230(v9, v11, v16);

  swift_beginAccess();
  v18 = *(a3 + 32);
  v19 = (v18 + 40);
  v20 = *(v18 + 16) + 1;
  while (--v20)
  {
    if (*(v19 - 1) != v9 || *v19 != v11)
    {
      v19 += 9;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  if (v17)
  {
LABEL_10:
  }

  swift_beginAccess();
  sub_10046FBBC(&v23, v9, v11, v15, v13);
  swift_endAccess();

  *a2 = 0;
  return result;
}

void sub_10056E078(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.contact(forMediumHash:)(DaemoniOSLibrary::SDHashStoreContact_optional *__return_ptr retstr, DaemoniOSLibrary::MediumHash forMediumHash)
{
  if (*(v3 + 48) != 1)
  {
    sub_10055A164();
    swift_allocError();
    v6 = 1;
    goto LABEL_5;
  }

  v4 = *(v3 + 49);
  if (v4)
  {
    sub_10055A164();
    swift_allocError();
    v6 = 2;
LABEL_5:
    *v5 = v6;
    swift_willThrow();
    return;
  }

  v7 = *&forMediumHash.shortHash.storage;
  v8 = sub_100568CF0(*&forMediumHash.shortHash.storage, 2uLL, v2, v4);
  v9 = sub_10057EA7C(v8);
  v11 = v10;

  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v9, v11);
  if ([*(v3 + 16) valueExistsForKey:v12.super.isa])
  {
    v13 = v7;
    v14 = HIWORD(v7);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = swift_allocObject();
    *(v16 + 1) = 0u;
    *(v16 + 2) = 0u;
    v17 = *(v3 + 16);
    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    *(v18 + 24) = v13;
    *(v18 + 26) = v14;
    *(v18 + 32) = v16;
    *(v18 + 40) = v15;
    aBlock[4] = sub_100580868;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10056E078;
    aBlock[3] = &unk_1008E7A00;
    v19 = _Block_copy(aBlock);
    v20 = v17;
    v21 = v12.super.isa;

    aBlock[0] = 0;
    v22 = [v20 enumerateValuesForKey:v21 error:aBlock handler:v19];
    _Block_release(v19);

    v23 = aBlock[0];
    if (v22)
    {
      swift_beginAccess();
      if (*(v15 + 16))
      {
        swift_willThrow();
        v24 = v23;
        swift_errorRetain();
      }

      else
      {
        v26 = v23;

        swift_beginAccess();
        sub_100580880(v16[2], v16[3], v16[4], v16[5]);
      }
    }

    else
    {
      v25 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
  }
}

uint64_t sub_10056E47C(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, void *a5)
{
  v6 = BYTE2(a4);
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  result = Data._Representation.subscript.getter();
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_28;
    }

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    if (v14 < 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v13)
    {
      v14 = v9 >> 32;
    }

    else
    {
      v14 = BYTE6(v11);
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    if (v14 < 1)
    {
      goto LABEL_28;
    }
  }

  if (v14 < v15)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v37 = result;
  v38 = v6;
  v35 = a5;
  v36 = a3;
  v39 = a2;
  v16 = Data._Representation.subscript.getter();
  v18 = v17;
  v19 = sub_100580610(v16, v17);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_100026AC0(v16, v18);
  sub_100026AC0(v9, v11);
  v26 = v25;
  if (v37 == v38)
  {
    swift_beginAccess();
    v27 = *(v36 + 40);

    v28 = sub_100569230(v19, v21, v27);

    swift_beginAccess();
    v29 = *(v36 + 32);
    v30 = (v29 + 40);
    v31 = *(v29 + 16) + 1;
    while (--v31)
    {
      if (*(v30 - 1) != v19 || *v30 != v21)
      {
        v30 += 9;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    if (v28)
    {
LABEL_26:
    }

    swift_beginAccess();
    v33 = v35[2];
    v34 = v35[3];
    v35[2] = v19;
    v35[3] = v21;
    v35[4] = v23;
    v35[5] = v26;
    result = sub_100581770(v33, v34);
    *v39 = 1;
  }

  else
  {
  }

  return result;
}

uint64_t SDAirDropHashStoreCDB.contacts(forMediumHash:)(int a1)
{
  if (*(v1 + 48) != 1)
  {
    sub_10055A164();
    swift_allocError();
    v3 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 49))
  {
    sub_10055A164();
    swift_allocError();
    v3 = 2;
LABEL_5:
    *v2 = v3;
    swift_willThrow();
    return v1;
  }

  v6 = BYTE2(a1);
  v56 = swift_allocObject();
  *(v56 + 16) = _swiftEmptySetSingleton;
  swift_beginAccess();
  v7 = *(v1 + 32);
  v8 = *(v7 + 16);

  v55 = v6;
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    v11 = v8 - 1;
    do
    {
      v12 = (v10 + 72 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= *(v7 + 16))
        {
          __break(1u);
        }

        v14 = v12[1];
        v15 = v12[2];
        v16 = v12[3];
        v62 = *(v12 + 16);
        v17 = *v12;
        v60 = v15;
        v61 = v16;
        aBlock = v17;
        v59 = v14;
        if ((v62 & 0x1000000) == 0 && v62 == a1 && v6 == (v62 | (BYTE2(v62) << 16)) >> 16)
        {
          break;
        }

        ++v13;
        v12 = (v12 + 72);
        if (v8 == v13)
        {
          goto LABEL_20;
        }
      }

      v52 = v11;
      v53 = v10;
      sub_10055A394(&aBlock, v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10028FF34(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = v52;
      v10 = v53;
      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_10028FF34((v18 > 1), v19 + 1, 1);
        v20 = v19 + 1;
        v11 = v52;
        v10 = v53;
        v6 = v55;
      }

      v9 = v13 + 1;
      _swiftEmptyArrayStorage[2] = v20;
      v21 = &_swiftEmptyArrayStorage[9 * v19];
      *(v21 + 2) = aBlock;
      v22 = v59;
      v23 = v60;
      v24 = v61;
      *(v21 + 24) = v62;
      *(v21 + 4) = v23;
      *(v21 + 5) = v24;
      *(v21 + 3) = v22;
    }

    while (v11 != v13);
  }

LABEL_20:

  v25 = _swiftEmptyArrayStorage[2];
  if (v25)
  {
    v54 = v1;
    sub_10028FF74(0, v25, 0);
    v26 = v25 - 1;
    for (i = 4; ; i += 9)
    {
      aBlock = *&_swiftEmptyArrayStorage[i];
      v28 = *&_swiftEmptyArrayStorage[i + 2];
      v29 = *&_swiftEmptyArrayStorage[i + 4];
      v30 = *&_swiftEmptyArrayStorage[i + 6];
      v62 = _swiftEmptyArrayStorage[i + 8];
      v60 = v29;
      v61 = v30;
      v59 = v28;
      sub_10055A394(&aBlock, v57);
      v32 = _swiftEmptyArrayStorage[2];
      v31 = _swiftEmptyArrayStorage[3];
      if (v32 >= v31 >> 1)
      {
        sub_10028FF74((v31 > 1), v32 + 1, 1);
        v1 = v54;
      }

      v33 = aBlock;
      v34 = v59;
      _swiftEmptyArrayStorage[2] = v32 + 1;
      v35 = &_swiftEmptyArrayStorage[4 * v32];
      *(v35 + 2) = v33;
      *(v35 + 3) = v34;
      if (!v26)
      {
        break;
      }

      --v26;
    }

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (_swiftEmptyArrayStorage[2])
    {
LABEL_27:
      v36 = sub_100293120(_swiftEmptyArrayStorage);

      sub_1005696B4(v36);
      goto LABEL_30;
    }
  }

LABEL_30:
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v39 = sub_100568CF0(a1, 2uLL, v38, v37 + 16);
  v40 = sub_10057EA7C(v39);
  v42 = v41;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v40, v42);
  v44 = *(v1 + 16);
  v45 = swift_allocObject();
  *(v45 + 16) = v1;
  *(v45 + 24) = a1;
  *(v45 + 26) = v55;
  *(v45 + 32) = v56;
  *(v45 + 40) = v37;
  *&v60 = sub_1005808C4;
  *(&v60 + 1) = v45;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v59 = sub_10056E078;
  *(&v59 + 1) = &unk_1008E7A50;
  v46 = _Block_copy(&aBlock);
  v47 = v44;
  v48 = isa;

  *&aBlock = 0;
  LODWORD(isa) = [v47 enumerateValuesForKey:v48 error:&aBlock handler:v46];
  _Block_release(v46);

  v1 = aBlock;
  if (isa)
  {
    swift_beginAccess();
    if (*(v37 + 16))
    {
      swift_willThrow();
      v49 = v1;
      swift_errorRetain();
    }

    else
    {
      v51 = v1;

      swift_beginAccess();
      v1 = *(v56 + 16);
    }
  }

  else
  {
    v50 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_10056ED20(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = BYTE2(a4);
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  result = Data._Representation.subscript.getter();
  v12 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_28;
    }

    v14 = *(v8 + 16);
    v13 = *(v8 + 24);
    if (v13 < 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v12)
    {
      v13 = v8 >> 32;
    }

    else
    {
      v13 = BYTE6(v10);
    }

    if (v12)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    if (v13 < 1)
    {
      goto LABEL_28;
    }
  }

  if (v13 < v14)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = v5;
  v32 = a3;
  v35 = a2;
  v15 = Data._Representation.subscript.getter();
  v17 = v16;
  v18 = sub_100580610(v15, v16);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_100026AC0(v15, v17);
  sub_100026AC0(v8, v10);
  v25 = v24;
  if (v33 == v34)
  {
    swift_beginAccess();
    v26 = *(v32 + 40);

    v27 = sub_100569230(v18, v20, v26);

    swift_beginAccess();
    v28 = *(v32 + 32);
    v29 = (v28 + 40);
    v30 = *(v28 + 16) + 1;
    while (--v30)
    {
      if (*(v29 - 1) != v18 || *v29 != v20)
      {
        v29 += 9;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    if (v27)
    {
LABEL_26:
    }

    swift_beginAccess();
    sub_10046FBBC(v36, v18, v20, v22, v25);
    swift_endAccess();

    *v35 = 0;
  }

  else
  {
  }

  return result;
}

uint64_t SDAirDropHashStoreCDB.contacts(forShortHash:)(int a1)
{
  if (*(v1 + 48) != 1)
  {
    sub_10055A164();
    swift_allocError();
    v3 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 49))
  {
    sub_10055A164();
    swift_allocError();
    v3 = 2;
LABEL_5:
    *v2 = v3;
    swift_willThrow();
    return v1;
  }

  v51 = swift_allocObject();
  *(v51 + 16) = _swiftEmptySetSingleton;
  swift_beginAccess();
  v6 = *(v1 + 32);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = v7 - 1;
    do
    {
      v10 = v6 + 32 + 72 * v8;
      v11 = v8;
      while (1)
      {
        if (v11 >= *(v6 + 16))
        {
          __break(1u);
        }

        v12 = *(v10 + 16);
        v13 = *(v10 + 32);
        v14 = *(v10 + 48);
        v57 = *(v10 + 64);
        v15 = *v10;
        v55 = v13;
        v56 = v14;
        aBlock = v15;
        v54 = v12;
        if ((v57 & 0x1000000) == 0 && v57 == a1)
        {
          break;
        }

        ++v11;
        v10 += 72;
        if (v7 == v11)
        {
          goto LABEL_19;
        }
      }

      v49 = v9;
      sub_10055A394(&aBlock, v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10028FF34(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_10028FF34((v16 > 1), v17 + 1, 1);
      }

      v8 = v11 + 1;
      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[9 * v17];
      *(v18 + 2) = aBlock;
      v19 = v54;
      v20 = v55;
      v21 = v56;
      *(v18 + 24) = v57;
      *(v18 + 4) = v20;
      *(v18 + 5) = v21;
      *(v18 + 3) = v19;
      v9 = v49;
    }

    while (v49 != v11);
  }

LABEL_19:

  v22 = _swiftEmptyArrayStorage[2];
  if (v22)
  {
    v50 = v1;
    sub_10028FF74(0, v22, 0);
    v23 = v22 - 1;
    for (i = 4; ; i += 9)
    {
      aBlock = *&_swiftEmptyArrayStorage[i];
      v25 = *&_swiftEmptyArrayStorage[i + 2];
      v26 = *&_swiftEmptyArrayStorage[i + 4];
      v27 = *&_swiftEmptyArrayStorage[i + 6];
      v57 = _swiftEmptyArrayStorage[i + 8];
      v55 = v26;
      v56 = v27;
      v54 = v25;
      sub_10055A394(&aBlock, v52);
      v29 = _swiftEmptyArrayStorage[2];
      v28 = _swiftEmptyArrayStorage[3];
      if (v29 >= v28 >> 1)
      {
        sub_10028FF74((v28 > 1), v29 + 1, 1);
        v1 = v50;
      }

      v30 = aBlock;
      v31 = v54;
      _swiftEmptyArrayStorage[2] = v29 + 1;
      v32 = &_swiftEmptyArrayStorage[4 * v29];
      *(v32 + 2) = v30;
      *(v32 + 3) = v31;
      if (!v23)
      {
        break;
      }

      --v23;
    }

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (_swiftEmptyArrayStorage[2])
    {
LABEL_26:
      v33 = sub_100293120(_swiftEmptyArrayStorage);

      sub_1005696B4(v33);
      goto LABEL_29;
    }
  }

LABEL_29:
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v36 = sub_100568CF0(a1, 2uLL, v35, v34 + 16);
  v37 = sub_10057EA7C(v36);
  v39 = v38;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v37, v39);
  v41 = *(v1 + 16);
  v42 = swift_allocObject();
  *(v42 + 16) = v1;
  *(v42 + 24) = a1;
  *(v42 + 32) = v51;
  *(v42 + 40) = v34;
  *&v55 = sub_100580944;
  *(&v55 + 1) = v42;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v54 = sub_10056E078;
  *(&v54 + 1) = &unk_1008E7AA0;
  v43 = _Block_copy(&aBlock);
  v44 = v41;
  v45 = isa;

  *&aBlock = 0;
  LODWORD(isa) = [v44 enumerateValuesForKey:v45 error:&aBlock handler:v43];
  _Block_release(v43);

  v1 = aBlock;
  if (isa)
  {
    swift_beginAccess();
    if (*(v34 + 16))
    {
      swift_willThrow();
      v46 = v1;
      swift_errorRetain();
    }

    else
    {
      v48 = v1;

      swift_beginAccess();
      v1 = *(v51 + 16);
    }
  }

  else
  {
    v47 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_10056F5B4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  result = Data._Representation.subscript.getter();
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_25;
    }

    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v12 < 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v11)
    {
      v12 = v7 >> 32;
    }

    else
    {
      v12 = BYTE6(v9);
    }

    if (v11)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    if (v12 < 1)
    {
      goto LABEL_25;
    }
  }

  if (v12 < v13)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v30 = a2;
  v14 = Data._Representation.subscript.getter();
  v16 = v15;
  v17 = sub_100580610(v14, v15);
  v19 = v18;
  v29 = v20;
  v22 = v21;
  sub_100026AC0(v14, v16);
  sub_100026AC0(v7, v9);
  swift_beginAccess();
  v23 = *(a3 + 40);

  v24 = sub_100569230(v17, v19, v23);

  swift_beginAccess();
  v25 = *(a3 + 32);
  v26 = (v25 + 40);
  v27 = *(v25 + 16) + 1;
  while (--v27)
  {
    if (*(v26 - 1) != v17 || *v26 != v19)
    {
      v26 += 9;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_22;
  }

  if (v24)
  {
LABEL_22:
  }

  swift_beginAccess();
  sub_10046FBBC(&v31, v17, v19, v29, v22);
  swift_endAccess();

  *v30 = 0;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SDAirDropHashStoreCDB.contains(shortHash:)(DaemoniOSLibrary::ShortHash shortHash)
{
  if (*(v1 + 48) != 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 49))
  {
    v2 = 2;
LABEL_5:
    sub_10055A164();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
    return v2 & 1;
  }

  v5 = *&shortHash;
  swift_beginAccess();
  v6 = *(v1 + 32);
  v7 = (v6 + 99);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7;
    v7 += 72;
    if ((*v9 & 1) == 0 && *(v9 - 3) == v5)
    {
      v2 = 1;
      return v2 & 1;
    }
  }

  v10 = *(v1 + 16);
  v11 = v5;
  v12 = v10;
  v15 = sub_100568CF0(v11, 2uLL, v13, v14);
  v16 = sub_10057EA7C(v15);
  v18 = v17;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v16, v18);
  v2 = [v12 valueExistsForKey:isa];

  return v2 & 1;
}

uint64_t SDAirDropHashStoreCDB.deinit()
{

  return v0;
}

uint64_t SDAirDropHashStoreCDB.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SDAirDropHashStoreCDB.dumpDB(atFileURL:)(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  v6 = *(v2 + 16);
  sub_1000276B4(0, &qword_100973C78, NSData_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v4;
  v8[4] = v5;
  aBlock[4] = sub_10058099C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10032765C;
  aBlock[3] = &unk_1008E7B18;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  aBlock[0] = 0;
  LODWORD(ObjCClassFromMetadata) = [v10 enumerateKeyType:ObjCClassFromMetadata valueType:ObjCClassFromMetadata error:aBlock handler:v9];
  _Block_release(v9);

  if (ObjCClassFromMetadata)
  {
    v11 = aBlock[0];
  }

  else
  {
    v12 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_beginAccess();
  v14 = *(v4 + 16);
  v13 = *(v4 + 24);
  swift_beginAccess();
  v16 = *(v5 + 16);
  v15 = *(v5 + 24);

  sub_1005809A8(a1, v14, v13, v16, v15);

  return 1;
}

void *sub_10056FEA0(Swift::UInt64 a1, Swift::UInt64 a2, Swift::UInt64 a3, Swift::UInt64 a4)
{
  result = SDAirDropHashStoreCDB.contact(forLongHash:)(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_10056FF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  result = sub_100580DAC(v6, v8, v9, v10);
  v14 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v14 != 2 || !__OFSUB__(v6[3], v6[2]))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  else if (!v14 || !__OFSUB__(HIDWORD(v6), v6))
  {
LABEL_8:
    v16._countAndFlagsBits = result;
    v16._object = v13;

    v15._countAndFlagsBits = 10;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);

    swift_beginAccess();
    String.append(_:)(v16);
    swift_endAccess();
    sub_100026AC0(v9, v11);
    sub_100026AC0(v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_100570178(uint64_t result, int a2, uint64_t (*a3)(_BYTE *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = __stack_chk_guard;
  if (result < 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v6 = a6;
  v9 = a5;
  v13 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    v14 = 0;
    if (v13 == 2)
    {
      v14 = *(a5 + 16);
    }
  }

  else
  {
    v11 = a5;
    if (v13)
    {
      v14 = a5;
    }

    else
    {
      v14 = 0;
    }
  }

  if (!result)
  {
    goto LABEL_18;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_25;
    }

    v11 = *(a5 + 16);
    if (v11 != *(a5 + 24))
    {
      goto LABEL_15;
    }

LABEL_18:
    if (v13 <= 1)
    {
      if (v13)
      {
        v16 = a5 >> 32;
        if (v14 != a5 >> 32)
        {
          goto LABEL_30;
        }

LABEL_28:
        if (a2)
        {
          sub_100026AC0(a5, a6);
          return _swiftEmptyArrayStorage;
        }

LABEL_30:
        if (v16 >= v14)
        {
          v7 = Data._Representation.subscript.getter();
          v10 = v17;
          sub_100026AC0(v9, v6);
          result = sub_10028EEAC(0, 1, 1, _swiftEmptyArrayStorage);
          v9 = *(result + 16);
          v11 = *(result + 24);
          v6 = v9 + 1;
          if (v9 < v11 >> 1)
          {
LABEL_32:
            *(result + 16) = v6;
            v18 = result + 16 * v9;
            *(v18 + 32) = v7;
            *(v18 + 40) = v10;
            return result;
          }

LABEL_87:
          result = sub_10028EEAC((v11 > 1), v6, 1, result);
          goto LABEL_32;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

LABEL_20:
      v16 = BYTE6(a6);
      if (v14 != BYTE6(a6))
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (v13 == 2)
    {
      v16 = *(a5 + 24);
      if (v14 != v16)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_25:
    v16 = 0;
    if (v14)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (!v13)
  {
    if ((a6 & 0xFF000000000000) != 0)
    {
      v15 = BYTE6(a6);
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  v11 = a5;
  if (a5 == a5 >> 32)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v13 == 2)
  {
    v15 = *(a5 + 24);
  }

  else
  {
    v15 = a5 >> 32;
  }

LABEL_34:
  v46 = a5;
  v42 = -v15;
  v43 = a5 >> 32;
  v19 = _swiftEmptyArrayStorage;
  v44 = BYTE6(a6);
  while (2)
  {
    if (v14 == v15)
    {
      v14 = v15;
      goto LABEL_70;
    }

    v38 = result;
    v40 = a2;
    if (v13 == 3)
    {
      __break(1u);
      return result;
    }

    v41 = v19;
    v45 = &v51[v14];
    v39 = v15;
LABEL_38:
    v20 = 0;
    v21 = v42 + v14;
    v47 = v14;
    while (1)
    {
      v22 = v14 + v20;
      if (v13 == 1)
      {
        v11 = v46;
        if (v22 < v46)
        {
          goto LABEL_81;
        }

        v11 = v43;
        if (v22 >= v43)
        {
          goto LABEL_81;
        }

        v24 = v8;
        v25 = __DataStorage._bytes.getter();
        if (!v25)
        {
          goto LABEL_91;
        }

        v10 = v25;
        v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        result = __DataStorage._offset.getter();
        v11 = v22 - result;
        if (__OFSUB__(v22, result))
        {
          goto LABEL_83;
        }

LABEL_53:
        v23 = *(v10 + v11);
        v8 = v24;
        v14 = v47;
        goto LABEL_54;
      }

      if (v13)
      {
        v11 = *(v9 + 16);
        if (v22 < v11)
        {
          goto LABEL_80;
        }

        v11 = *(v9 + 24);
        if (v22 >= v11)
        {
          goto LABEL_82;
        }

        v24 = v8;
        v26 = __DataStorage._bytes.getter();
        if (!v26)
        {
          goto LABEL_92;
        }

        v10 = v26;
        v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        result = __DataStorage._offset.getter();
        v11 = v22 - result;
        if (__OFSUB__(v22, result))
        {
          goto LABEL_84;
        }

        goto LABEL_53;
      }

      v11 = v44;
      if (v22 >= v44)
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
        goto LABEL_85;
      }

      v51[0] = v46;
      v51[1] = BYTE1(v9);
      v51[2] = BYTE2(v9);
      v51[3] = BYTE3(v9);
      v51[4] = BYTE4(v9);
      v51[5] = BYTE5(v9);
      v51[6] = BYTE6(v9);
      v51[7] = HIBYTE(v9);
      v52 = v6;
      v53 = BYTE2(v6);
      v54 = BYTE3(v6);
      v55 = BYTE4(v6);
      v56 = BYTE5(v6);
      v23 = v45[v20];
LABEL_54:
      v51[0] = v23;
      v7 = a4;
      result = a3(v51);
      if (v8)
      {
        sub_100026AC0(v9, v6);
      }

      if (result)
      {
        break;
      }

      ++v20;
      if (!(v21 + v20))
      {
        LOBYTE(a2) = v40;
        v19 = v41;
        v15 = v39;
        goto LABEL_70;
      }
    }

    if (v20 || (v40 & 1) == 0)
    {
      v27 = v41;
      if (v14 + v20 < v14)
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
      }

      v10 = 0;
      v48 = Data._Representation.subscript.getter();
      v29 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_10028EEAC(0, *(v41 + 2) + 1, 1, v41);
      }

      v31 = *(v27 + 2);
      v30 = *(v27 + 3);
      v32 = v27;
      v7 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v32 = sub_10028EEAC((v30 > 1), v31 + 1, 1, v32);
      }

      *(v32 + 2) = v7;
      v33 = &v32[16 * v31];
      v19 = v32;
      *(v33 + 4) = v48;
      *(v33 + 5) = v29;
      v14 += v20 + 1;
      result = v38;
      v15 = v39;
      a2 = v40;
      if (v7 == v38)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  ++v14;
  ++v45;
  v15 = v39;
  if (v14 != v39)
  {
    goto LABEL_38;
  }

  v14 = v39;
  LOBYTE(a2) = v40;
  v19 = v41;
LABEL_70:
  if (v14 == v15 && (a2 & 1) != 0)
  {
    sub_100026AC0(v9, v6);
    return v19;
  }

  if (v15 < v14)
  {
    __break(1u);
  }

  else
  {
    v7 = Data._Representation.subscript.getter();
    v10 = v34;
    sub_100026AC0(v9, v6);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_75;
    }
  }

  v19 = sub_10028EEAC(0, *(v19 + 2) + 1, 1, v19);
LABEL_75:
  result = v19;
  v36 = *(v19 + 2);
  v35 = *(v19 + 3);
  if (v36 >= v35 >> 1)
  {
    result = sub_10028EEAC((v35 > 1), v36 + 1, 1, v19);
  }

  *(result + 16) = v36 + 1;
  v37 = result + 16 * v36;
  *(v37 + 32) = v7;
  *(v37 + 40) = v10;
  return result;
}

unint64_t sub_100570754(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100570B34(a1, v4);
}

unint64_t sub_100570798(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_100570BFC(v1, v2);
}

unint64_t sub_100570804(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100570C68(a1, v4);
}

unint64_t sub_100570848(uint64_t a1)
{
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_10000D494(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10000D524(a1, v2, &type metadata accessor for SFAirDrop.TransferIdentifier, &qword_100983CA8, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
}

unint64_t sub_10057091C(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_100570D3C(a1, v2);
}

unint64_t sub_100570988(uint64_t a1)
{
  type metadata accessor for URL();
  sub_10000D494(&unk_100975170, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10000D524(a1, v2, &type metadata accessor for URL, &unk_10097F0F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_100570A5C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100570DA8(a1, v2);
}

unint64_t sub_100570AEC(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_100570BFC(v1, v2);
}

unint64_t sub_100570B34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100010684(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100285E74(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100570BFC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100570C68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100570D3C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100570DA8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100570EAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
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
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_100294008(v17, v16);
          sub_100330108(v45, v9, v8, &v44);
          sub_100026AC0(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_100294008(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v33 = __DataStorage._offset.getter();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_100294008(v17, v16);
        v31 = __DataStorage._bytes.getter();
        if (v31)
        {
          v32 = __DataStorage._offset.getter();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        __DataStorage._length.getter();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_100330108(v34, a1, a2, v45);
        sub_100026AC0(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_100294008(v17, v16);
      sub_100330108(v45, v9, v8, &v44);
      sub_100026AC0(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
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
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

uint64_t sub_1005712AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&qword_100974630, &unk_1007F6570);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1000106E0(v21, v31);
      }

      else
      {
        sub_10000C5B0(v21, v31);
        v22 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_10000D494(&qword_100975420, type metadata accessor for CFString, &unk_1007F7728);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1000106E0(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10057158C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&unk_1009744B0, &unk_1007F9630);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1000106E0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100010684(v23, &v36);
        sub_10000C5B0(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1000106E0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100571858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10028088C(&qword_1009762B8, &qword_1007F9428);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10000D494(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100571C34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&qword_100976188, &unk_10080AFA0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 48 * v20);
      if (v33)
      {
        sub_1002D6398(v24, v34);
      }

      else
      {
        sub_1002D63B0(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1002D6398(v34, (*(v7 + 56) + 48 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100571F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10028088C(&qword_100976190, &qword_1007F9310);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10000D494(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1005722E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10028088C(&qword_1009761F0, &qword_1007F9348);
  v44 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_10000D494(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1005726D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v56 = a3(0);
  v10 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v44 - v11;
  v12 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v57 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  sub_10028088C(a4, a5);
  v51 = v9;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v47 = (v22 + 16);
    v48 = v22;
    v45 = v5;
    v46 = v10 + 16;
    v49 = v15;
    v50 = v10;
    v52 = (v10 + 32);
    v53 = (v22 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v54 = *(v22 + 72);
      v32 = v31 + v54 * v30;
      if (v51)
      {
        (*v53)(v57, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 32))(v55, v33 + v34 * v30, v56);
      }

      else
      {
        (*v47)(v57, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 16))(v55, v35 + v34 * v30, v56);
      }

      sub_10000D494(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v53)((*(v17 + 48) + v54 * v26), v57, v12);
      result = (*v52)(*(v17 + 56) + v34 * v26, v55, v56);
      ++*(v17 + 16);
      v22 = v48;
      v15 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v15 + 32);
    v8 = v45;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
  return result;
}

Swift::Int sub_100572B88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&qword_100974970, &unk_1007F9750);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_100572E2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v49 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v46 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v48 = &v43 - v12;
  v13 = *v6;
  sub_10028088C(a4, a5);
  v47 = v10;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v44 = v6;
    v45 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v46 + 72);
      v34 = v29 + v33 * v28;
      if (v47)
      {
        sub_100581708(v34, v48, v49);
      }

      else
      {
        sub_1005816A0(v34, v48, v49);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = sub_100581708(v48, *(v15 + 56) + v33 * v23, v49);
      ++*(v15 + 16);
      v13 = v45;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

Swift::Int sub_10057316C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&qword_1009762D0, &unk_1007F9440);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10057342C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - v6;
  v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10028088C(&qword_100976478, &qword_1007F9748);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_10000D494(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1005738DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10028088C(&qword_1009762B0, &qword_1007F9420);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_100581708(v27 + v28 * v24, v47, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1005816A0(v29 + v28 * v24, v47, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
      }

      sub_10000D494(&qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_100581708(v47, *(v12 + 56) + v28 * v20, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100573D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10028088C(&qword_100976388, &qword_1007F9578);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_1000121F8((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_1002A9938(*(v9 + 56) + 40 * v23, v43);
      }

      sub_10000D494(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_1000121F8(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100574174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_10028088C(a3, a4);
  v42 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v46 = v12;
    v47 = v9;
    v38 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v39 = (v10 + 16);
    v40 = v10;
    v43 = (v10 + 32);
    v22 = result + 64;
    v41 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v45 = *(v10 + 72);
      v29 = v28 + v45 * v27;
      if (v42)
      {
        (*v43)(v46, v29, v47);
        v44 = *(*(v13 + 56) + 16 * v27);
      }

      else
      {
        (*v39)(v46, v29, v47);
        v44 = *(*(v13 + 56) + 16 * v27);
        swift_unknownObjectRetain();
      }

      sub_10000D494(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v10 = v40;
        v13 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v10 = v40;
      v13 = v41;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v43)(*(v15 + 48) + v45 * v23, v46, v47);
      *(*(v15 + 56) + 16 * v23) = v44;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v7 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v38;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_100574574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = type metadata accessor for SFNWInterfaceType();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10028088C(&unk_1009746E0, &unk_1007F65C0);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_10000D494(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_100574A44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&qword_100976398, &qword_1007F9588);
  v46 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v42 = v2;
    v43 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v44 = v5;
    v45 = v6;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v49 = *v25;
      v27 = (*(v5 + 56) + 48 * v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v32 = v27[4];
      v33 = v27[5];
      if ((v46 & 1) == 0)
      {

        sub_1002D80D0(v28, v29, v30, v31, v32, v33);
      }

      v48 = v32;
      v7 = v45;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v45 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v16 = v33;
        v15 = v31;
        v17 = v48;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v16 = v33;
      v15 = v31;
      v17 = v48;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v18 = (*(v45 + 48) + 16 * v14);
      *v18 = v49;
      v18[1] = v26;
      v19 = (*(v45 + 56) + 48 * v14);
      *v19 = v28;
      v19[1] = v29;
      v19[2] = v30;
      v19[3] = v15;
      v19[4] = v17;
      v19[5] = v16;
      ++*(v45 + 16);
      v5 = v44;
      v11 = v47;
    }

    v21 = v8;
    result = v43;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v23 = v43[v8];
      ++v21;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v43, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v43 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100574D60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&qword_1009745E0, &qword_1007F6540);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      *(*(v7 + 56) + v15) = v24;
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

Swift::Int sub_10057503C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&qword_1009763B0, &qword_1007F95A0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_1005752E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SDAuthenticationSessionMetadata(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10028088C(&qword_100976300, &unk_10080AFE0);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_100581708(v27 + v28 * v24, v47, type metadata accessor for SDAuthenticationSessionMetadata);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1005816A0(v29 + v28 * v24, v47, type metadata accessor for SDAuthenticationSessionMetadata);
      }

      sub_10000D494(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_100581708(v47, *(v12 + 56) + v28 * v20, type metadata accessor for SDAuthenticationSessionMetadata);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100575798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10028088C(&qword_100976330, &unk_1007F9500);
  v44 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_10000D494(&unk_100975170, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100575B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10028088C(&unk_100976450, &unk_1007F9720);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_10000D494(&unk_100975170, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_100575F40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10028088C(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_1005761E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - v6;
  v7 = *v2;
  sub_10028088C(&qword_1009763C8, &qword_1007F95B8);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
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

Swift::Int sub_100576568(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10028088C(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_100576818(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10028088C(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_100576AB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v42 - v11;
  v12 = *v5;
  sub_10028088C(a4, a5);
  v47 = v9;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

Swift::Int sub_100576E48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10028088C(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_1005770E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&qword_100976440, &qword_1007F9710);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = *(*(v5 + 56) + 8 * v20);
      v30 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_100294008(v30, *(*(v5 + 48) + 16 * v20 + 8));
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v16 = v30;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v16 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100577394(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10028088C(&unk_100976360, &unk_10080B040);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_10000D494(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_10057776C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10028088C(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_100577A04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&qword_100976318, &unk_1007F94F0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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

Swift::Int sub_100577CA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&qword_1009762F8, &unk_1007F94D0);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_100577F58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_10028088C(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_10000D494(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

Swift::Int sub_100578334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10028088C(&qword_100976338, &qword_1007F9510);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1005785C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10028088C(&qword_1009745C8, &qword_1007F6528);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        swift_unknownObjectRetain();
      }

      sub_10000D494(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

_OWORD *sub_1005789A0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100570754(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002CE198();
      goto LABEL_7;
    }

    sub_10057158C(v13, a3 & 1);
    v19 = sub_100570754(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100010684(a2, v21);
      return sub_10057CB84(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000C60C(v17);

  return sub_1000106E0(a1, v17);
}

void sub_100578B14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100570848(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002CE350();
      goto LABEL_7;
    }

    sub_100571858(v17, a3 & 1);
    v23 = sub_100570848(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10057D32C(v14, v11, a1, v20, &type metadata accessor for SFAirDrop.TransferIdentifier);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

void sub_100578D1C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1002CE38C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100571C34(v16, a4 & 1);
    v11 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * v11);
    sub_10000C60C(v22);

    sub_1002D6398(a1, v22);
  }

  else
  {
    sub_10057CC00(v11, a2, a3, a1, v21);
  }
}

void sub_100578EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  ObjectType = swift_getObjectType();
  sub_10057F3D8(a1, a3, v5, v4, ObjectType, a2, &qword_100976178, &qword_1007F92F8, sub_1002CE534);
}

uint64_t sub_100578F48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10000EBD4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002CE548();
      goto LABEL_7;
    }

    sub_100571F0C(v17, a3 & 1);
    v22 = sub_10000EBD4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10057CC70(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_100579114(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_10000EBD4(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1002CE7C8();
      goto LABEL_9;
    }

    sub_1005722E8(v18, a4 & 1);
    v21 = sub_10000EBD4(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_10057CD28(v15, v12, v23, a2, v24);
  }
}

void sub_1005792F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
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
      sub_1002CE7F0();
      goto LABEL_7;
    }

    sub_100576AB0(v15, a4 & 1, &type metadata accessor for SFClientIdentity, &unk_1009761C0, &unk_10080AFB0);
    v25 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for SFClientIdentity();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_10057D278(v12, a2, a3, a1, v18, &type metadata accessor for SFClientIdentity);
}

void sub_1005794F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
      sub_100581638(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1002CE818();
    goto LABEL_7;
  }

  sub_100572E2C(v15, a4 & 1, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation, &qword_1009746D0, &qword_1007F65B0, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
  v21 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_10057CDE8(v12, a2, a3, a1, v18, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
}

uint64_t sub_100579714(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100570848(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002CEA70();
      goto LABEL_7;
    }

    sub_1005726D0(v17, a3 & 1, &type metadata accessor for NWEndpoint, &unk_100976290, &unk_10080AFC0);
    v28 = sub_100570848(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10057CF94(v14, v11, a1, v20, &type metadata accessor for NWEndpoint);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for NWEndpoint();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_100579950(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100570848(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002CEAAC();
      goto LABEL_7;
    }

    sub_1005726D0(v17, a3 & 1, &type metadata accessor for SFAirDropReceive.Transfer, &qword_1009762A0, &qword_1007F65E0);
    v28 = sub_100570848(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10057CF94(v14, v11, a1, v20, &type metadata accessor for SFAirDropReceive.Transfer);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for SFAirDropReceive.Transfer();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_100579BB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_100576568(v22, a4 & 1, a6, a7);
      v17 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      a5();
      v17 = v25;
    }
  }

  v27 = *v11;
  if (v23)
  {
    v28 = v27[7];
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a2;
  v30[1] = a3;
  *(v27[7] + 8 * v17) = a1;
  v31 = v27[2];
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v32;
}

void sub_100579DF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
      sub_100581638(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1002CEC98();
    goto LABEL_7;
  }

  sub_100572E2C(v15, a4 & 1, type metadata accessor for SDAirDropDiscoveredEndpoint, &qword_1009763E8, &qword_1007F95D8, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v21 = sub_100011780(a2, a3, &String.hash(into:), sub_100011814);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_10057CDE8(v12, a2, a3, a1, v18, type metadata accessor for SDAirDropDiscoveredEndpoint, type metadata accessor for SDAirDropDiscoveredEndpoint);
}

void sub_10057A00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100011780(a3, a4, &String.hash(into:), sub_100011814);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10057316C(v18, a5 & 1);
      v13 = sub_100011780(a3, a4, &String.hash(into:), sub_100011814);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1002CEEF0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_10057A1E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100570848(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002CF068();
      goto LABEL_7;
    }

    sub_10057342C(v17, a3 & 1);
    v28 = sub_100570848(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10057CE94(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_10057A3F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100570848(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
      return sub_100581638(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1002CF3C4();
    goto LABEL_7;
  }

  sub_1005738DC(v17, a3 & 1);
  v24 = sub_100570848(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_10000CA78(v14, v11, a1, v20, &type metadata accessor for SFAirDrop.TransferIdentifier, type metadata accessor for SDAirDropLegacySessionLogger.Transfer, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
}

void sub_10057A604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = _s6RunnerCMa(0);
  sub_10057F3D8(a1, a3, v5, v4, v8, &off_1008DE048, &qword_100976448, &qword_1007F9718, sub_1002CF978);
}

uint64_t sub_10057A688(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100570848(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002CFC0C();
      goto LABEL_7;
    }

    sub_1005726D0(v17, a3 & 1, &type metadata accessor for SFAirDropSend.Transfer, &qword_100974718, &unk_1007F65F0);
    v28 = sub_100570848(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10057CF94(v14, v11, a1, v20, &type metadata accessor for SFAirDropSend.Transfer);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for SFAirDropSend.Transfer();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}