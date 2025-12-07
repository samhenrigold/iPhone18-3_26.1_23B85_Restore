void sub_1001891DC(uint64_t a1, char *a2)
{
  v73 = a1;
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  *&v72 = *(v8 - 8);
  __chkstk_darwin(v8);
  v71 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v60 - v11;
  __chkstk_darwin(v13);
  v15 = v60 - v14;
  __chkstk_darwin(v16);
  v18 = v60 - v17;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v70 = v12;
    v66 = v7;
    v67 = v5;
    v68 = v4;
    v19 = objc_autoreleasePoolPush();
    v74[0] = a2;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for HMDeviceCloudRecord(0);
    sub_1001C4BB4(&unk_1002F9DF0, type metadata accessor for HMDeviceCloudRecord, &protocol conformance descriptor for HMDeviceCloudRecord);
    v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v2)
    {

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      v24 = v20;
      v25 = v21;
      v65 = a2;

      objc_autoreleasePoolPop(v19);
      v26.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000EF870(v24, v25);
      v69 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      if (qword_1002F7A60 != -1)
      {
        swift_once();
      }

      isa = v26.super.isa;
      v60[1] = 0;
      v27 = sub_1000EE91C(v8, qword_100300C40);
      v28 = v72;
      v29 = *(v72 + 16);
      v30 = v27;
      v64 = (v72 + 16);
      v63 = v29;
      (v29)(v15);
      URL.path.getter();
      v31 = v8;
      v33 = v28 + 8;
      v32 = *(v28 + 8);
      v32(v15, v31);
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v32(v18, v31);
      v60[2] = UUID.uuidString.getter();
      v61 = v30;
      v63(v18, v30, v31);
      v34 = objc_autoreleasePoolPush();
      URL.path.getter();
      URL.appendingPathComponent(_:)();

      URL.appendingPathComponent(_:)();

      v32(v15, v31);
      objc_autoreleasePoolPop(v34);
      v32(v18, v31);
      v75 = &type metadata for AudioAccessoryFeatures;
      v35 = sub_1000F1874();
      v76 = v35;
      isFeatureEnabled(_:)();
      sub_1000EF824(v74);
      v75 = &type metadata for AudioAccessoryFeatures;
      v76 = v35;
      isFeatureEnabled(_:)();
      sub_1000EF824(v74);
      v65 = *&v65[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
      v63(v15, v61, v31);
      v64 = objc_autoreleasePoolPush();
      URL.path.getter();
      v36 = v71;
      URL.appendingPathComponent(_:)();
      v37 = v70;

      URL.appendingPathComponent(_:)();
      v32(v36, v31);
      objc_autoreleasePoolPop(v64);
      v32(v15, v31);
      v73 = v33;
      v71 = v32;
      v32(v37, v31);
      (*(v72 + 32))(v37, v18, v31);
      v38 = v66;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL._bridgeToObjectiveC()(v39);
      v41 = v40;
      v42 = isa;
      [(objc_class *)isa writeToURL:v40 atomically:1];

      v43 = static os_log_type_t.default.getter();
      if (qword_1002F7AF0 != -1)
      {
        swift_once();
      }

      v44 = qword_100300E40;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v45 = swift_allocObject();
      v72 = xmmword_100226100;
      *(v45 + 16) = xmmword_100226100;
      sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_1000EE954();
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "Writing record to file: %@", 26, 2, v45);

      sub_1000EE870(&qword_1002F8900, &qword_100228398);
      inited = swift_initStackObject();
      *(inited + 16) = v72;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v50 = NSFileProtectionKey;
      v51 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v52 = sub_1000F97FC(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
      v53 = [objc_opt_self() defaultManager];
      sub_10018AA14(v52);

      type metadata accessor for FileAttributeKey(0);
      sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
      v54 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v55 = String._bridgeToObjectiveC()();

      v74[0] = 0;
      LOBYTE(v46) = [v53 setAttributes:v54 ofItemAtPath:v55 error:v74];

      if (v46)
      {
        v56 = v74[0];
        URL.setResourceValues(_:)();
        v57 = v67;

        (*(v57 + 8))(v38, v68);
      }

      else
      {
        v58 = v74[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v67 + 8))(v38, v68);
      }

      (v71)(v37, v31);
    }
  }

  else
  {
    v22 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v59 = v22;
      swift_once();
      v22 = v59;
    }

    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    sub_1001266E0();
    swift_allocError();
    *v23 = 0x8000000000000010;
    swift_willThrow();
  }
}

void sub_100189C2C(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v114 = a2;
  *&v113 = a1;
  v2 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v2);
  v109 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v8 - 8);
  v106 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v91 - v11;
  __chkstk_darwin(v13);
  v15 = &v91 - v14;
  v110 = type metadata accessor for URL();
  v112 = *(v110 - 8);
  __chkstk_darwin(v110);
  v103 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v107 = &v91 - v18;
  __chkstk_darwin(v19);
  v105 = &v91 - v20;
  __chkstk_darwin(v21);
  v23 = &v91 - v22;
  __chkstk_darwin(v24);
  v104 = &v91 - v25;
  __chkstk_darwin(v26);
  v108 = &v91 - v27;
  __chkstk_darwin(v28);
  v30 = &v91 - v29;
  __chkstk_darwin(v31);
  v33 = &v91 - v32;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v102 = v23;
    v96 = v7;
    v98 = v5;
    v97 = v4;
    v34 = objc_autoreleasePoolPush();
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1001C4BB4(&unk_1002F9D20, type metadata accessor for BTDeferredRecord, &unk_1002275C4);
    v35 = v111;
    v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v111 = v35;
    if (v35)
    {

      objc_autoreleasePoolPop(v34);
      return;
    }

    v40 = v36;
    v41 = v37;
    v91 = v12;
    v93 = v2;

    objc_autoreleasePoolPop(v34);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000EF870(v40, v41);
    URL.init(string:)();
    v42 = v112;
    v43 = *(v112 + 48);
    v44 = v110;
    v95 = v112 + 48;
    v94 = v43;
    if (v43(v15, 1, v110) == 1)
    {
      __break(1u);
    }

    else
    {
      v45 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
      v46 = *(v42 + 32);
      v101 = v42 + 32;
      v100 = v46;
      v46(v30, v15, v44);
      URL.path.getter();
      v49 = *(v42 + 8);
      v47 = v42 + 8;
      v48 = v49;
      v49(v30, v44);
      v99 = v45;
      URL.appendingPathComponent(_:)();

      if (qword_1002F79C8 != -1)
      {
        swift_once();
      }

      sub_1000F0254();

      v48(v33, v44);
      v112 = UUID.uuidString.getter();
      v50 = v91;
      URL.init(string:)();
      if (v94(v50, 1, v44) != 1)
      {
        v51 = v105;
        v100(v105, v50, v44);
        v52 = objc_autoreleasePoolPush();
        URL.path.getter();
        v53 = v108;
        URL.appendingPathComponent(_:)();

        URL.appendingPathComponent(_:)();

        v48(v53, v44);
        objc_autoreleasePoolPop(v52);
        v48(v51, v44);
        v54 = v109;
        sub_1001CC14C(v114, v109, type metadata accessor for BTDeferredRecord);
        v55 = v106;
        URL.init(string:)();
        if (v94(v55, 1, v44) != 1)
        {
          v56 = v103;
          v100(v103, v55, v44);
          v57 = *(v54 + 8);
          v58 = *(v54 + 16);
          URL.appendingPathComponent(_:)();
          v48(v56, v44);
          URL.path.getter();
          URL.appendingPathComponent(_:)();

          sub_1000F0254();

          v114 = v48;
          v48(v53, v44);
          v112 = v47;
          if (v57 == 0xD000000000000012 && 0x80000001002671C0 == v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v59 = v109;
            UUID.uuidString.getter();
          }

          else
          {
            v59 = v109;
          }

          v60 = v102;
          v61 = objc_autoreleasePoolPush();
          v62 = v107;
          URL.path.getter();
          v63 = v104;
          URL.appendingPathComponent(_:)();

          v64 = v108;
          URL.appendingPathComponent(_:)();

          v65 = v63;
          v66 = v110;
          v67 = v114;
          v114(v65, v110);
          objc_autoreleasePoolPop(v61);
          v67(v62, v66);
          v67(v60, v66);
          sub_1001CC1B4(v59, type metadata accessor for BTDeferredRecord);
          v100(v60, v64, v66);
          v68 = v96;
          URLResourceValues.init()();
          URLResourceValues.isExcludedFromBackup.setter();
          v69 = v60;
          URL._bridgeToObjectiveC()(v70);
          v72 = v71;
          [(objc_class *)isa writeToURL:v71 atomically:1];

          v73 = static os_log_type_t.default.getter();
          if (qword_1002F7AF0 != -1)
          {
            swift_once();
          }

          v74 = qword_100300E40;
          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v75 = swift_allocObject();
          v113 = xmmword_100226100;
          *(v75 + 16) = xmmword_100226100;
          sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          v78 = v77;
          *(v75 + 56) = &type metadata for String;
          *(v75 + 64) = sub_1000EE954();
          *(v75 + 32) = v76;
          *(v75 + 40) = v78;
          os_log(_:dso:log:_:_:)(v73, &_mh_execute_header, v74, "Writing record to file: %@", 26, 2, v75);

          sub_1000EE870(&qword_1002F8900, &qword_100228398);
          inited = swift_initStackObject();
          *(inited + 16) = v113;
          *(inited + 32) = NSFileProtectionKey;
          *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v80 = NSFileProtectionKey;
          v81 = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v82 = sub_1000F97FC(inited);
          swift_setDeallocating();
          sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
          v83 = [objc_opt_self() defaultManager];
          sub_10018AA14(v82);

          type metadata accessor for FileAttributeKey(0);
          sub_1001C4BB4(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
          v84 = Dictionary._bridgeToObjectiveC()().super.isa;

          URL.path.getter();
          v85 = String._bridgeToObjectiveC()();

          v115 = 0;
          LODWORD(v78) = [v83 setAttributes:v84 ofItemAtPath:v85 error:&v115];

          if (v78)
          {
            v86 = v115;
            URL.setResourceValues(_:)();
            v87 = v98;
            v88 = v114;

            v88(v69, v110);
            (*(v87 + 8))(v68, v97);
          }

          else
          {
            v89 = v115;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v114(v69, v66);
            (*(v98 + 8))(v68, v97);
          }

          return;
        }

LABEL_24:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v38 = static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    v90 = v38;
    swift_once();
    v38 = v90;
  }

  os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
  sub_1001266E0();
  swift_allocError();
  *v39 = 0x8000000000000010;
  swift_willThrow();
}

_OWORD *sub_10018AA14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000EE870(&unk_1002F9D40, &unk_100226FB0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    type metadata accessor for FileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1000FA7CC((v27 + 8), v25);
    sub_1000FA7CC(v25, v27);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v16 = Hasher._finalize()();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v6[v18 >> 6]) == 0)
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
        v23 = v6[v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~v6[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_1000FA7CC(v27, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10018ACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v19 = a2;
  v20 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = objc_autoreleasePoolPush();
  URL.path.getter();
  URL.appendingPathComponent(_:)();

  URL.appendingPathComponent(_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  objc_autoreleasePoolPop(v14);
  v16 = objc_autoreleasePoolPush();
  v23 = v13;
  v24 = v6;
  sub_1000EE870(v20, v21);
  OS_dispatch_queue.sync<A>(execute:)();
  v17 = v25;
  objc_autoreleasePoolPop(v16);
  v15(v13, v7);
  return v17;
}

uint64_t sub_10018AE70@<X0>(uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t, unint64_t)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v9 = a2(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  if ([objc_opt_self() isFirstUnlocked])
  {
    v13 = Data.init(contentsOf:options:)();
    if (v5)
    {

      return (*(v10 + 56))(a5, 1, 1, v9);
    }

    else
    {
      v17 = v13;
      v18 = v14;
      v23 = a5;
      v19 = objc_autoreleasePoolPush();
      a3(v17, v18);
      objc_autoreleasePoolPop(v19);
      sub_1000EF870(v17, v18);
      v20 = v23;
      sub_1001CC214(v12, v23, a4);
      return (*(v10 + 56))(v20, 0, 1, v9);
    }
  }

  else
  {
    v16 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      v21 = v16;
      swift_once();
      v16 = v21;
    }

    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_100300E40, "record call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
    return (*(v10 + 56))(a5, 1, 1, v9);
  }
}

void *sub_10018B20C(uint64_t a1)
{
  v2 = v1;
  v95 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  __chkstk_darwin(v95);
  v5 = &v71 - v4;
  v94 = type metadata accessor for DeviceRecord(0);
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v71 - v8;
  v9 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v71 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v71 - v16;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v96 = a1;
  URL.path.getter();
  v97 = v2;
  v91 = v23;
  URL.appendingPathComponent(_:isDirectory:)();

  v24 = objc_opt_self();

  v25 = [v24 defaultManager];
  v26 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v99 = v26;
  if (v26)
  {
    LODWORD(v103) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v27 = qword_100300E40;
    v88 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100226100;
    v29 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v90 = v22;
    v87 = v29;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    *(v28 + 56) = &type metadata for String;
    v86 = sub_1000EE954();
    *(v28 + 64) = v86;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v89 = v27;
    os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v27, "Enumerate: %@", 13, 2, v28);

    v103 = 0;
    v82 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v98 = (v13 + 56);
    v84 = (v13 + 48);
    v81 = (v13 + 32);
    v72 = v13;
    v83 = (v13 + 8);
    v80 = (v75 + 48);
    v76 = _swiftEmptyArrayStorage;
    v85 = xmmword_100226C80;
    v78 = v11;
    v77 = v19;
    v79 = v5;
    while (1)
    {
      if ([v99 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v104 = 0u;
        v105 = 0u;
      }

      v106[0] = v104;
      v106[1] = v105;
      if (!*(&v105 + 1))
      {
        break;
      }

      v33 = swift_dynamicCast();
      (*v98)(v11, v33 ^ 1u, 1, v12);
      if ((*v84)(v11, 1, v12) == 1)
      {
        goto LABEL_21;
      }

      (*v81)(v19, v11, v12);
      v34 = v92;
      URL.deletingPathExtension()();
      v35 = URL.lastPathComponent.getter();
      v37 = v36;
      v38 = *v83;
      (*v83)(v34, v12);
      v102 = objc_autoreleasePoolPush();
      URL.path.getter();
      v39 = v97;
      v40 = v93;
      URL.appendingPathComponent(_:)();

      v100 = v35;
      v101 = v37;
      URL.appendingPathComponent(_:)();
      v41 = v38;
      v38(v40, v12);
      objc_autoreleasePoolPop(v102);
      v42 = objc_autoreleasePoolPush();
      __chkstk_darwin(v42);
      *(&v71 - 2) = v34;
      *(&v71 - 1) = v39;
      v43 = v79;
      v44 = v103;
      OS_dispatch_queue.sync<A>(execute:)();
      v103 = v44;
      objc_autoreleasePoolPop(v42);
      v38(v34, v12);
      if ((*v80)(v43, 1, v94) == 1)
      {
        sub_1000EEE6C(v43, &qword_1002F8520, &unk_100227B60);
        v45 = static os_log_type_t.error.getter();
        v46 = swift_allocObject();
        *(v46 + 16) = v85;
        v47 = v86;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = v47;
        v48 = v101;
        *(v46 + 32) = v100;
        *(v46 + 40) = v48;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v46 + 96) = &type metadata for String;
        *(v46 + 104) = v47;
        *(v46 + 72) = v49;
        *(v46 + 80) = v50;
        os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v89, "Could not read item %@ for records at %@", 40, 2, v46);

        v51 = v77;
        v41(v77, v12);
        v11 = v78;
        v19 = v51;
      }

      else
      {
        v19 = v77;

        v52 = v73;
        sub_1001CC214(v43, v73, type metadata accessor for DeviceRecord);
        sub_1001CC14C(v52, v74, type metadata accessor for DeviceRecord);
        v53 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1001CF0CC(0, v53[2] + 1, 1, v53);
        }

        v11 = v78;
        v55 = v76[2];
        v54 = v76[3];
        if (v55 >= v54 >> 1)
        {
          v76 = sub_1001CF0CC((v54 > 1), v55 + 1, 1, v76);
        }

        sub_1001CC1B4(v73, type metadata accessor for DeviceRecord);
        v38(v19, v12);
        v56 = v76;
        v76[2] = v55 + 1;
        sub_1001CC214(v74, v56 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, type metadata accessor for DeviceRecord);
      }
    }

    sub_1000EEE6C(v106, &unk_1002F9C10, &qword_100228390);
    (*v98)(v11, 1, 1, v12);
LABEL_21:
    sub_1000EEE6C(v11, &unk_1002F7BA0, &unk_1002270E0);
    v64 = static os_log_type_t.debug.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = v85;
    v63 = v76;
    v66 = v76[2];
    *(v65 + 56) = &type metadata for Int;
    *(v65 + 64) = &protocol witness table for Int;
    *(v65 + 32) = v66;
    v22 = v90;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v86;
    *(v65 + 96) = &type metadata for String;
    *(v65 + 104) = v68;
    *(v65 + 72) = v67;
    *(v65 + 80) = v69;
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v89, "Found %i records at %@", 22, 2, v65);

    v13 = v72;
  }

  else
  {
    v57 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v58 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_1000EE954();
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Could not enumerate %@", 22, 2, v59);
    v63 = _swiftEmptyArrayStorage;
  }

  (*(v13 + 8))(v22, v12);
  return v63;
}

void *sub_10018BDC8(uint64_t a1)
{
  v2 = v1;
  v95 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  __chkstk_darwin(v95);
  v5 = &v71 - v4;
  v94 = type metadata accessor for DeviceSupportInformationRecord(0);
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v71 - v8;
  v9 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v71 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v71 - v16;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v96 = a1;
  URL.path.getter();
  v97 = v2;
  v91 = v23;
  URL.appendingPathComponent(_:isDirectory:)();

  v24 = objc_opt_self();

  v25 = [v24 defaultManager];
  v26 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v99 = v26;
  if (v26)
  {
    LODWORD(v103) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v27 = qword_100300E40;
    v88 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100226100;
    v29 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v90 = v22;
    v87 = v29;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    *(v28 + 56) = &type metadata for String;
    v86 = sub_1000EE954();
    *(v28 + 64) = v86;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v89 = v27;
    os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v27, "Enumerate: %@", 13, 2, v28);

    v103 = 0;
    v82 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v98 = (v13 + 56);
    v84 = (v13 + 48);
    v81 = (v13 + 32);
    v72 = v13;
    v83 = (v13 + 8);
    v80 = (v75 + 48);
    v76 = _swiftEmptyArrayStorage;
    v85 = xmmword_100226C80;
    v78 = v11;
    v77 = v19;
    v79 = v5;
    while (1)
    {
      if ([v99 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v104 = 0u;
        v105 = 0u;
      }

      v106[0] = v104;
      v106[1] = v105;
      if (!*(&v105 + 1))
      {
        break;
      }

      v33 = swift_dynamicCast();
      (*v98)(v11, v33 ^ 1u, 1, v12);
      if ((*v84)(v11, 1, v12) == 1)
      {
        goto LABEL_21;
      }

      (*v81)(v19, v11, v12);
      v34 = v92;
      URL.deletingPathExtension()();
      v35 = URL.lastPathComponent.getter();
      v37 = v36;
      v38 = *v83;
      (*v83)(v34, v12);
      v102 = objc_autoreleasePoolPush();
      URL.path.getter();
      v39 = v97;
      v40 = v93;
      URL.appendingPathComponent(_:)();

      v100 = v35;
      v101 = v37;
      URL.appendingPathComponent(_:)();
      v41 = v38;
      v38(v40, v12);
      objc_autoreleasePoolPop(v102);
      v42 = objc_autoreleasePoolPush();
      __chkstk_darwin(v42);
      *(&v71 - 2) = v34;
      *(&v71 - 1) = v39;
      v43 = v79;
      v44 = v103;
      OS_dispatch_queue.sync<A>(execute:)();
      v103 = v44;
      objc_autoreleasePoolPop(v42);
      v38(v34, v12);
      if ((*v80)(v43, 1, v94) == 1)
      {
        sub_1000EEE6C(v43, &qword_1002F8510, &unk_100227B50);
        v45 = static os_log_type_t.error.getter();
        v46 = swift_allocObject();
        *(v46 + 16) = v85;
        v47 = v86;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = v47;
        v48 = v101;
        *(v46 + 32) = v100;
        *(v46 + 40) = v48;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v46 + 96) = &type metadata for String;
        *(v46 + 104) = v47;
        *(v46 + 72) = v49;
        *(v46 + 80) = v50;
        os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v89, "Could not read item %@ for records at %@", 40, 2, v46);

        v51 = v77;
        v41(v77, v12);
        v11 = v78;
        v19 = v51;
      }

      else
      {
        v19 = v77;

        v52 = v73;
        sub_1001CC214(v43, v73, type metadata accessor for DeviceSupportInformationRecord);
        sub_1001CC14C(v52, v74, type metadata accessor for DeviceSupportInformationRecord);
        v53 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1001CF0F4(0, v53[2] + 1, 1, v53);
        }

        v11 = v78;
        v55 = v76[2];
        v54 = v76[3];
        if (v55 >= v54 >> 1)
        {
          v76 = sub_1001CF0F4((v54 > 1), v55 + 1, 1, v76);
        }

        sub_1001CC1B4(v73, type metadata accessor for DeviceSupportInformationRecord);
        v38(v19, v12);
        v56 = v76;
        v76[2] = v55 + 1;
        sub_1001CC214(v74, v56 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, type metadata accessor for DeviceSupportInformationRecord);
      }
    }

    sub_1000EEE6C(v106, &unk_1002F9C10, &qword_100228390);
    (*v98)(v11, 1, 1, v12);
LABEL_21:
    sub_1000EEE6C(v11, &unk_1002F7BA0, &unk_1002270E0);
    v64 = static os_log_type_t.debug.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = v85;
    v63 = v76;
    v66 = v76[2];
    *(v65 + 56) = &type metadata for Int;
    *(v65 + 64) = &protocol witness table for Int;
    *(v65 + 32) = v66;
    v22 = v90;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v86;
    *(v65 + 96) = &type metadata for String;
    *(v65 + 104) = v68;
    *(v65 + 72) = v67;
    *(v65 + 80) = v69;
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v89, "Found %i records at %@", 22, 2, v65);

    v13 = v72;
  }

  else
  {
    v57 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v58 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_1000EE954();
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Could not enumerate %@", 22, 2, v59);
    v63 = _swiftEmptyArrayStorage;
  }

  (*(v13 + 8))(v22, v12);
  return v63;
}

void *sub_10018C984(uint64_t a1)
{
  v2 = v1;
  v95 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v95);
  v5 = &v71 - v4;
  v94 = type metadata accessor for MagicPairingSettingsRecord(0);
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v71 - v8;
  v9 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v71 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v71 - v16;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v96 = a1;
  URL.path.getter();
  v97 = v2;
  v91 = v23;
  URL.appendingPathComponent(_:isDirectory:)();

  v24 = objc_opt_self();

  v25 = [v24 defaultManager];
  v26 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v99 = v26;
  if (v26)
  {
    LODWORD(v103) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v27 = qword_100300E40;
    v88 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100226100;
    v29 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v90 = v22;
    v87 = v29;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    *(v28 + 56) = &type metadata for String;
    v86 = sub_1000EE954();
    *(v28 + 64) = v86;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v89 = v27;
    os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v27, "Enumerate: %@", 13, 2, v28);

    v103 = 0;
    v82 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v98 = (v13 + 56);
    v84 = (v13 + 48);
    v81 = (v13 + 32);
    v72 = v13;
    v83 = (v13 + 8);
    v80 = (v75 + 48);
    v76 = _swiftEmptyArrayStorage;
    v85 = xmmword_100226C80;
    v78 = v11;
    v77 = v19;
    v79 = v5;
    while (1)
    {
      if ([v99 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v104 = 0u;
        v105 = 0u;
      }

      v106[0] = v104;
      v106[1] = v105;
      if (!*(&v105 + 1))
      {
        break;
      }

      v33 = swift_dynamicCast();
      (*v98)(v11, v33 ^ 1u, 1, v12);
      if ((*v84)(v11, 1, v12) == 1)
      {
        goto LABEL_21;
      }

      (*v81)(v19, v11, v12);
      v34 = v92;
      URL.deletingPathExtension()();
      v35 = URL.lastPathComponent.getter();
      v37 = v36;
      v38 = *v83;
      (*v83)(v34, v12);
      v102 = objc_autoreleasePoolPush();
      URL.path.getter();
      v39 = v97;
      v40 = v93;
      URL.appendingPathComponent(_:)();

      v100 = v35;
      v101 = v37;
      URL.appendingPathComponent(_:)();
      v41 = v38;
      v38(v40, v12);
      objc_autoreleasePoolPop(v102);
      v42 = objc_autoreleasePoolPush();
      __chkstk_darwin(v42);
      *(&v71 - 2) = v34;
      *(&v71 - 1) = v39;
      v43 = v79;
      v44 = v103;
      OS_dispatch_queue.sync<A>(execute:)();
      v103 = v44;
      objc_autoreleasePoolPop(v42);
      v38(v34, v12);
      if ((*v80)(v43, 1, v94) == 1)
      {
        sub_1000EEE6C(v43, &unk_1002F9C30, &qword_1002299A0);
        v45 = static os_log_type_t.error.getter();
        v46 = swift_allocObject();
        *(v46 + 16) = v85;
        v47 = v86;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = v47;
        v48 = v101;
        *(v46 + 32) = v100;
        *(v46 + 40) = v48;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v46 + 96) = &type metadata for String;
        *(v46 + 104) = v47;
        *(v46 + 72) = v49;
        *(v46 + 80) = v50;
        os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v89, "Could not read item %@ for records at %@", 40, 2, v46);

        v51 = v77;
        v41(v77, v12);
        v11 = v78;
        v19 = v51;
      }

      else
      {
        v19 = v77;

        v52 = v73;
        sub_1001CC214(v43, v73, type metadata accessor for MagicPairingSettingsRecord);
        sub_1001CC14C(v52, v74, type metadata accessor for MagicPairingSettingsRecord);
        v53 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1001CF11C(0, v53[2] + 1, 1, v53);
        }

        v11 = v78;
        v55 = v76[2];
        v54 = v76[3];
        if (v55 >= v54 >> 1)
        {
          v76 = sub_1001CF11C((v54 > 1), v55 + 1, 1, v76);
        }

        sub_1001CC1B4(v73, type metadata accessor for MagicPairingSettingsRecord);
        v38(v19, v12);
        v56 = v76;
        v76[2] = v55 + 1;
        sub_1001CC214(v74, v56 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, type metadata accessor for MagicPairingSettingsRecord);
      }
    }

    sub_1000EEE6C(v106, &unk_1002F9C10, &qword_100228390);
    (*v98)(v11, 1, 1, v12);
LABEL_21:
    sub_1000EEE6C(v11, &unk_1002F7BA0, &unk_1002270E0);
    v64 = static os_log_type_t.debug.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = v85;
    v63 = v76;
    v66 = v76[2];
    *(v65 + 56) = &type metadata for Int;
    *(v65 + 64) = &protocol witness table for Int;
    *(v65 + 32) = v66;
    v22 = v90;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v86;
    *(v65 + 96) = &type metadata for String;
    *(v65 + 104) = v68;
    *(v65 + 72) = v67;
    *(v65 + 80) = v69;
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v89, "Found %i records at %@", 22, 2, v65);

    v13 = v72;
  }

  else
  {
    v57 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v58 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_1000EE954();
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Could not enumerate %@", 22, 2, v59);
    v63 = _swiftEmptyArrayStorage;
  }

  (*(v13 + 8))(v22, v12);
  return v63;
}

void *sub_10018D540(uint64_t a1)
{
  v2 = v1;
  v95 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  __chkstk_darwin(v95);
  v5 = &v71 - v4;
  v94 = type metadata accessor for SoundProfileRecord(0);
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v71 - v8;
  v9 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v71 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v71 - v16;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v96 = a1;
  URL.path.getter();
  v97 = v2;
  v91 = v23;
  URL.appendingPathComponent(_:isDirectory:)();

  v24 = objc_opt_self();

  v25 = [v24 defaultManager];
  v26 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v99 = v26;
  if (v26)
  {
    LODWORD(v103) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v27 = qword_100300E40;
    v88 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100226100;
    v29 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v90 = v22;
    v87 = v29;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    *(v28 + 56) = &type metadata for String;
    v86 = sub_1000EE954();
    *(v28 + 64) = v86;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v89 = v27;
    os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v27, "Enumerate: %@", 13, 2, v28);

    v103 = 0;
    v82 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v98 = (v13 + 56);
    v84 = (v13 + 48);
    v81 = (v13 + 32);
    v72 = v13;
    v83 = (v13 + 8);
    v80 = (v75 + 48);
    v76 = _swiftEmptyArrayStorage;
    v85 = xmmword_100226C80;
    v78 = v11;
    v77 = v19;
    v79 = v5;
    while (1)
    {
      if ([v99 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v104 = 0u;
        v105 = 0u;
      }

      v106[0] = v104;
      v106[1] = v105;
      if (!*(&v105 + 1))
      {
        break;
      }

      v33 = swift_dynamicCast();
      (*v98)(v11, v33 ^ 1u, 1, v12);
      if ((*v84)(v11, 1, v12) == 1)
      {
        goto LABEL_21;
      }

      (*v81)(v19, v11, v12);
      v34 = v92;
      URL.deletingPathExtension()();
      v35 = URL.lastPathComponent.getter();
      v37 = v36;
      v38 = *v83;
      (*v83)(v34, v12);
      v102 = objc_autoreleasePoolPush();
      URL.path.getter();
      v39 = v97;
      v40 = v93;
      URL.appendingPathComponent(_:)();

      v100 = v35;
      v101 = v37;
      URL.appendingPathComponent(_:)();
      v41 = v38;
      v38(v40, v12);
      objc_autoreleasePoolPop(v102);
      v42 = objc_autoreleasePoolPush();
      __chkstk_darwin(v42);
      *(&v71 - 2) = v34;
      *(&v71 - 1) = v39;
      v43 = v79;
      v44 = v103;
      OS_dispatch_queue.sync<A>(execute:)();
      v103 = v44;
      objc_autoreleasePoolPop(v42);
      v38(v34, v12);
      if ((*v80)(v43, 1, v94) == 1)
      {
        sub_1000EEE6C(v43, &qword_1002F84F8, &unk_1002299F0);
        v45 = static os_log_type_t.error.getter();
        v46 = swift_allocObject();
        *(v46 + 16) = v85;
        v47 = v86;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = v47;
        v48 = v101;
        *(v46 + 32) = v100;
        *(v46 + 40) = v48;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v46 + 96) = &type metadata for String;
        *(v46 + 104) = v47;
        *(v46 + 72) = v49;
        *(v46 + 80) = v50;
        os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v89, "Could not read item %@ for records at %@", 40, 2, v46);

        v51 = v77;
        v41(v77, v12);
        v11 = v78;
        v19 = v51;
      }

      else
      {
        v19 = v77;

        v52 = v73;
        sub_1001CC214(v43, v73, type metadata accessor for SoundProfileRecord);
        sub_1001CC14C(v52, v74, type metadata accessor for SoundProfileRecord);
        v53 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1001CF144(0, v53[2] + 1, 1, v53);
        }

        v11 = v78;
        v55 = v76[2];
        v54 = v76[3];
        if (v55 >= v54 >> 1)
        {
          v76 = sub_1001CF144((v54 > 1), v55 + 1, 1, v76);
        }

        sub_1001CC1B4(v73, type metadata accessor for SoundProfileRecord);
        v38(v19, v12);
        v56 = v76;
        v76[2] = v55 + 1;
        sub_1001CC214(v74, v56 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, type metadata accessor for SoundProfileRecord);
      }
    }

    sub_1000EEE6C(v106, &unk_1002F9C10, &qword_100228390);
    (*v98)(v11, 1, 1, v12);
LABEL_21:
    sub_1000EEE6C(v11, &unk_1002F7BA0, &unk_1002270E0);
    v64 = static os_log_type_t.debug.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = v85;
    v63 = v76;
    v66 = v76[2];
    *(v65 + 56) = &type metadata for Int;
    *(v65 + 64) = &protocol witness table for Int;
    *(v65 + 32) = v66;
    v22 = v90;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v86;
    *(v65 + 96) = &type metadata for String;
    *(v65 + 104) = v68;
    *(v65 + 72) = v67;
    *(v65 + 80) = v69;
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v89, "Found %i records at %@", 22, 2, v65);

    v13 = v72;
  }

  else
  {
    v57 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v58 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_1000EE954();
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Could not enumerate %@", 22, 2, v59);
    v63 = _swiftEmptyArrayStorage;
  }

  (*(v13 + 8))(v22, v12);
  return v63;
}

void *sub_10018E14C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v88 = a3;
  v89 = a4;
  v87 = a2;
  v5 = v4;
  v7 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v69 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v84 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v69 - v14;
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  __chkstk_darwin(v18);
  v20 = &v69 - v19;
  v99 = _swiftEmptyArrayStorage;
  v21 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v85 = a1;
  URL.path.getter();
  v86 = v5;
  v82 = v21;
  URL.appendingPathComponent(_:isDirectory:)();

  v22 = objc_opt_self();

  v23 = [v22 defaultManager];
  v24 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v91 = v24;
  if (v24)
  {
    v25 = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v26 = qword_100300E40;
    v78 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100226100;
    v80 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    v79 = sub_1000EE954();
    *(v27 + 64) = v79;
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v81 = v26;
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Enumerate: %@", 13, 2, v27);

    v31 = 0;
    v75 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v90 = (v11 + 56);
    v76 = (v11 + 48);
    v74 = (v11 + 32);
    v69 = v11;
    v32 = (v11 + 8);
    v70 = _swiftEmptyArrayStorage;
    v77 = xmmword_100226C80;
    v73 = v20;
    v72 = v9;
    v71 = v17;
    v95 = v32;
    while (1)
    {
      if ([v91 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v96 = 0u;
        v97 = 0u;
      }

      v98[0] = v96;
      v98[1] = v97;
      if (!*(&v97 + 1))
      {
        break;
      }

      v33 = swift_dynamicCast();
      (*v90)(v9, v33 ^ 1u, 1, v10);
      if ((*v76)(v9, 1, v10) == 1)
      {
        goto LABEL_20;
      }

      (*v74)(v17, v9, v10);
      v34 = v83;
      URL.deletingPathExtension()();
      v35 = URL.lastPathComponent.getter();
      v37 = v36;
      v38 = *v32;
      (*v32)(v34, v10);
      v39 = objc_autoreleasePoolPush();
      v94 = v31;
      v40 = v39;
      URL.path.getter();
      v41 = v10;
      v42 = v86;
      v43 = v84;
      URL.appendingPathComponent(_:)();

      v92 = v35;
      v93 = v37;
      URL.appendingPathComponent(_:)();
      v38(v43, v41);
      objc_autoreleasePoolPop(v40);
      v44 = objc_autoreleasePoolPush();
      __chkstk_darwin(v44);
      *(&v69 - 2) = v34;
      *(&v69 - 1) = v42;
      v10 = v41;
      sub_1000EE870(v87, v88);
      v31 = v94;
      OS_dispatch_queue.sync<A>(execute:)();
      v45 = *&v98[0];
      v46 = v44;
      v32 = v95;
      objc_autoreleasePoolPop(v46);
      v38(v34, v41);
      if (v45)
      {
        v17 = v71;

        v54 = v45;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v20 = v73;
        if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v38(v17, v10);
        v70 = v99;
      }

      else
      {
        v47 = static os_log_type_t.error.getter();
        v48 = swift_allocObject();
        *(v48 + 16) = v77;
        v49 = v79;
        *(v48 + 56) = &type metadata for String;
        *(v48 + 64) = v49;
        v50 = v93;
        *(v48 + 32) = v92;
        *(v48 + 40) = v50;
        v20 = v73;
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v48 + 96) = &type metadata for String;
        *(v48 + 104) = v49;
        *(v48 + 72) = v51;
        *(v48 + 80) = v52;
        v53 = v47;
        v32 = v95;
        os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v81, "Could not read item %@ for records at %@", 40, 2, v48);

        v17 = v71;
        v38(v71, v10);
      }

      v9 = v72;
    }

    sub_1000EEE6C(v98, &unk_1002F9C10, &qword_100228390);
    (*v90)(v9, 1, 1, v10);
LABEL_20:
    sub_1000EEE6C(v9, &unk_1002F7BA0, &unk_1002270E0);
    v62 = static os_log_type_t.debug.getter();
    v63 = swift_allocObject();
    *(v63 + 16) = v77;
    v61 = v70;
    if (v70 >> 62)
    {
      v64 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v64 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v69;
    *(v63 + 56) = &type metadata for Int;
    *(v63 + 64) = &protocol witness table for Int;
    *(v63 + 32) = v64;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v79;
    *(v63 + 96) = &type metadata for String;
    *(v63 + 104) = v66;
    *(v63 + 72) = v65;
    *(v63 + 80) = v67;
    os_log(_:dso:log:_:_:)(v62, &_mh_execute_header, v81, "Found %i records at %@", 22, 2, v63);
  }

  else
  {
    v55 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v56 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = sub_1000EE954();
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v56, "Could not enumerate %@", 22, 2, v57);

    v61 = _swiftEmptyArrayStorage;
  }

  (*(v11 + 8))(v20, v10);
  return v61;
}

void *sub_10018EB0C(uint64_t a1)
{
  v2 = v1;
  v95 = sub_1000EE870(&qword_1002F9E68, &unk_100229AE0);
  __chkstk_darwin(v95);
  v5 = &v71 - v4;
  v94 = type metadata accessor for CloudCoordinatorConfiguration(0);
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v71 - v8;
  v9 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v71 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v71 - v16;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v96 = a1;
  URL.path.getter();
  v97 = v2;
  v91 = v23;
  URL.appendingPathComponent(_:isDirectory:)();

  v24 = objc_opt_self();

  v25 = [v24 defaultManager];
  v26 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v99 = v26;
  if (v26)
  {
    LODWORD(v103) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v27 = qword_100300E40;
    v88 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100226100;
    v29 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v90 = v22;
    v87 = v29;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    *(v28 + 56) = &type metadata for String;
    v86 = sub_1000EE954();
    *(v28 + 64) = v86;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v89 = v27;
    os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v27, "Enumerate: %@", 13, 2, v28);

    v103 = 0;
    v82 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v98 = (v13 + 56);
    v84 = (v13 + 48);
    v81 = (v13 + 32);
    v72 = v13;
    v83 = (v13 + 8);
    v80 = (v75 + 48);
    v76 = _swiftEmptyArrayStorage;
    v85 = xmmword_100226C80;
    v78 = v11;
    v77 = v19;
    v79 = v5;
    while (1)
    {
      if ([v99 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v104 = 0u;
        v105 = 0u;
      }

      v106[0] = v104;
      v106[1] = v105;
      if (!*(&v105 + 1))
      {
        break;
      }

      v33 = swift_dynamicCast();
      (*v98)(v11, v33 ^ 1u, 1, v12);
      if ((*v84)(v11, 1, v12) == 1)
      {
        goto LABEL_21;
      }

      (*v81)(v19, v11, v12);
      v34 = v92;
      URL.deletingPathExtension()();
      v35 = URL.lastPathComponent.getter();
      v37 = v36;
      v38 = *v83;
      (*v83)(v34, v12);
      v102 = objc_autoreleasePoolPush();
      URL.path.getter();
      v39 = v97;
      v40 = v93;
      URL.appendingPathComponent(_:)();

      v100 = v35;
      v101 = v37;
      URL.appendingPathComponent(_:)();
      v41 = v38;
      v38(v40, v12);
      objc_autoreleasePoolPop(v102);
      v42 = objc_autoreleasePoolPush();
      __chkstk_darwin(v42);
      *(&v71 - 2) = v34;
      *(&v71 - 1) = v39;
      v43 = v79;
      v44 = v103;
      OS_dispatch_queue.sync<A>(execute:)();
      v103 = v44;
      objc_autoreleasePoolPop(v42);
      v38(v34, v12);
      if ((*v80)(v43, 1, v94) == 1)
      {
        sub_1000EEE6C(v43, &qword_1002F9E68, &unk_100229AE0);
        v45 = static os_log_type_t.error.getter();
        v46 = swift_allocObject();
        *(v46 + 16) = v85;
        v47 = v86;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = v47;
        v48 = v101;
        *(v46 + 32) = v100;
        *(v46 + 40) = v48;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v46 + 96) = &type metadata for String;
        *(v46 + 104) = v47;
        *(v46 + 72) = v49;
        *(v46 + 80) = v50;
        os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v89, "Could not read item %@ for records at %@", 40, 2, v46);

        v51 = v77;
        v41(v77, v12);
        v11 = v78;
        v19 = v51;
      }

      else
      {
        v19 = v77;

        v52 = v73;
        sub_1001CC214(v43, v73, type metadata accessor for CloudCoordinatorConfiguration);
        sub_1001CC14C(v52, v74, type metadata accessor for CloudCoordinatorConfiguration);
        v53 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1001CF16C(0, v53[2] + 1, 1, v53);
        }

        v11 = v78;
        v55 = v76[2];
        v54 = v76[3];
        if (v55 >= v54 >> 1)
        {
          v76 = sub_1001CF16C((v54 > 1), v55 + 1, 1, v76);
        }

        sub_1001CC1B4(v73, type metadata accessor for CloudCoordinatorConfiguration);
        v38(v19, v12);
        v56 = v76;
        v76[2] = v55 + 1;
        sub_1001CC214(v74, v56 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, type metadata accessor for CloudCoordinatorConfiguration);
      }
    }

    sub_1000EEE6C(v106, &unk_1002F9C10, &qword_100228390);
    (*v98)(v11, 1, 1, v12);
LABEL_21:
    sub_1000EEE6C(v11, &unk_1002F7BA0, &unk_1002270E0);
    v64 = static os_log_type_t.debug.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = v85;
    v63 = v76;
    v66 = v76[2];
    *(v65 + 56) = &type metadata for Int;
    *(v65 + 64) = &protocol witness table for Int;
    *(v65 + 32) = v66;
    v22 = v90;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v86;
    *(v65 + 96) = &type metadata for String;
    *(v65 + 104) = v68;
    *(v65 + 72) = v67;
    *(v65 + 80) = v69;
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v89, "Found %i records at %@", 22, 2, v65);

    v13 = v72;
  }

  else
  {
    v57 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v58 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_1000EE954();
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Could not enumerate %@", 22, 2, v59);
    v63 = _swiftEmptyArrayStorage;
  }

  (*(v13 + 8))(v22, v12);
  return v63;
}

void *sub_10018F6C8(uint64_t a1)
{
  v2 = v1;
  v95 = sub_1000EE870(&qword_1002F8500, &qword_100227B38);
  __chkstk_darwin(v95);
  v5 = &v71 - v4;
  v94 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v71 - v8;
  v9 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v71 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v71 - v16;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v96 = a1;
  URL.path.getter();
  v97 = v2;
  v91 = v23;
  URL.appendingPathComponent(_:isDirectory:)();

  v24 = objc_opt_self();

  v25 = [v24 defaultManager];
  v26 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v99 = v26;
  if (v26)
  {
    LODWORD(v103) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v27 = qword_100300E40;
    v88 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100226100;
    v29 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v90 = v22;
    v87 = v29;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    *(v28 + 56) = &type metadata for String;
    v86 = sub_1000EE954();
    *(v28 + 64) = v86;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v89 = v27;
    os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v27, "Enumerate: %@", 13, 2, v28);

    v103 = 0;
    v82 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v98 = (v13 + 56);
    v84 = (v13 + 48);
    v81 = (v13 + 32);
    v72 = v13;
    v83 = (v13 + 8);
    v80 = (v75 + 48);
    v76 = _swiftEmptyArrayStorage;
    v85 = xmmword_100226C80;
    v78 = v11;
    v77 = v19;
    v79 = v5;
    while (1)
    {
      if ([v99 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v104 = 0u;
        v105 = 0u;
      }

      v106[0] = v104;
      v106[1] = v105;
      if (!*(&v105 + 1))
      {
        break;
      }

      v33 = swift_dynamicCast();
      (*v98)(v11, v33 ^ 1u, 1, v12);
      if ((*v84)(v11, 1, v12) == 1)
      {
        goto LABEL_21;
      }

      (*v81)(v19, v11, v12);
      v34 = v92;
      URL.deletingPathExtension()();
      v35 = URL.lastPathComponent.getter();
      v37 = v36;
      v38 = *v83;
      (*v83)(v34, v12);
      v102 = objc_autoreleasePoolPush();
      URL.path.getter();
      v39 = v97;
      v40 = v93;
      URL.appendingPathComponent(_:)();

      v100 = v35;
      v101 = v37;
      URL.appendingPathComponent(_:)();
      v41 = v38;
      v38(v40, v12);
      objc_autoreleasePoolPop(v102);
      v42 = objc_autoreleasePoolPush();
      __chkstk_darwin(v42);
      *(&v71 - 2) = v34;
      *(&v71 - 1) = v39;
      v43 = v79;
      v44 = v103;
      OS_dispatch_queue.sync<A>(execute:)();
      v103 = v44;
      objc_autoreleasePoolPop(v42);
      v38(v34, v12);
      if ((*v80)(v43, 1, v94) == 1)
      {
        sub_1000EEE6C(v43, &qword_1002F8500, &qword_100227B38);
        v45 = static os_log_type_t.error.getter();
        v46 = swift_allocObject();
        *(v46 + 16) = v85;
        v47 = v86;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = v47;
        v48 = v101;
        *(v46 + 32) = v100;
        *(v46 + 40) = v48;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v46 + 96) = &type metadata for String;
        *(v46 + 104) = v47;
        *(v46 + 72) = v49;
        *(v46 + 80) = v50;
        os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v89, "Could not read item %@ for records at %@", 40, 2, v46);

        v51 = v77;
        v41(v77, v12);
        v11 = v78;
        v19 = v51;
      }

      else
      {
        v19 = v77;

        v52 = v73;
        sub_1001CC214(v43, v73, type metadata accessor for LegacyAccountMagicKeysRecord);
        sub_1001CC14C(v52, v74, type metadata accessor for LegacyAccountMagicKeysRecord);
        v53 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1001CF2A0(0, v53[2] + 1, 1, v53);
        }

        v11 = v78;
        v55 = v76[2];
        v54 = v76[3];
        if (v55 >= v54 >> 1)
        {
          v76 = sub_1001CF2A0((v54 > 1), v55 + 1, 1, v76);
        }

        sub_1001CC1B4(v73, type metadata accessor for LegacyAccountMagicKeysRecord);
        v38(v19, v12);
        v56 = v76;
        v76[2] = v55 + 1;
        sub_1001CC214(v74, v56 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, type metadata accessor for LegacyAccountMagicKeysRecord);
      }
    }

    sub_1000EEE6C(v106, &unk_1002F9C10, &qword_100228390);
    (*v98)(v11, 1, 1, v12);
LABEL_21:
    sub_1000EEE6C(v11, &unk_1002F7BA0, &unk_1002270E0);
    v64 = static os_log_type_t.debug.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = v85;
    v63 = v76;
    v66 = v76[2];
    *(v65 + 56) = &type metadata for Int;
    *(v65 + 64) = &protocol witness table for Int;
    *(v65 + 32) = v66;
    v22 = v90;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v86;
    *(v65 + 96) = &type metadata for String;
    *(v65 + 104) = v68;
    *(v65 + 72) = v67;
    *(v65 + 80) = v69;
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v89, "Found %i records at %@", 22, 2, v65);

    v13 = v72;
  }

  else
  {
    v57 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v58 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_1000EE954();
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Could not enumerate %@", 22, 2, v59);
    v63 = _swiftEmptyArrayStorage;
  }

  (*(v13 + 8))(v22, v12);
  return v63;
}

void *sub_100190284(uint64_t a1)
{
  v2 = v1;
  v95 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  __chkstk_darwin(v95);
  v5 = &v71 - v4;
  v94 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v71 - v8;
  v9 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v71 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v71 - v16;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v96 = a1;
  URL.path.getter();
  v97 = v2;
  v91 = v23;
  URL.appendingPathComponent(_:isDirectory:)();

  v24 = objc_opt_self();

  v25 = [v24 defaultManager];
  v26 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v99 = v26;
  if (v26)
  {
    LODWORD(v103) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v27 = qword_100300E40;
    v88 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100226100;
    v29 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v90 = v22;
    v87 = v29;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    *(v28 + 56) = &type metadata for String;
    v86 = sub_1000EE954();
    *(v28 + 64) = v86;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v89 = v27;
    os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v27, "Enumerate: %@", 13, 2, v28);

    v103 = 0;
    v82 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v98 = (v13 + 56);
    v84 = (v13 + 48);
    v81 = (v13 + 32);
    v72 = v13;
    v83 = (v13 + 8);
    v80 = (v75 + 48);
    v76 = _swiftEmptyArrayStorage;
    v85 = xmmword_100226C80;
    v78 = v11;
    v77 = v19;
    v79 = v5;
    while (1)
    {
      if ([v99 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v104 = 0u;
        v105 = 0u;
      }

      v106[0] = v104;
      v106[1] = v105;
      if (!*(&v105 + 1))
      {
        break;
      }

      v33 = swift_dynamicCast();
      (*v98)(v11, v33 ^ 1u, 1, v12);
      if ((*v84)(v11, 1, v12) == 1)
      {
        goto LABEL_21;
      }

      (*v81)(v19, v11, v12);
      v34 = v92;
      URL.deletingPathExtension()();
      v35 = URL.lastPathComponent.getter();
      v37 = v36;
      v38 = *v83;
      (*v83)(v34, v12);
      v102 = objc_autoreleasePoolPush();
      URL.path.getter();
      v39 = v97;
      v40 = v93;
      URL.appendingPathComponent(_:)();

      v100 = v35;
      v101 = v37;
      URL.appendingPathComponent(_:)();
      v41 = v38;
      v38(v40, v12);
      objc_autoreleasePoolPop(v102);
      v42 = objc_autoreleasePoolPush();
      __chkstk_darwin(v42);
      *(&v71 - 2) = v34;
      *(&v71 - 1) = v39;
      v43 = v79;
      v44 = v103;
      OS_dispatch_queue.sync<A>(execute:)();
      v103 = v44;
      objc_autoreleasePoolPop(v42);
      v38(v34, v12);
      if ((*v80)(v43, 1, v94) == 1)
      {
        sub_1000EEE6C(v43, &qword_1002F9D90, &qword_100227B30);
        v45 = static os_log_type_t.error.getter();
        v46 = swift_allocObject();
        *(v46 + 16) = v85;
        v47 = v86;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = v47;
        v48 = v101;
        *(v46 + 32) = v100;
        *(v46 + 40) = v48;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v46 + 96) = &type metadata for String;
        *(v46 + 104) = v47;
        *(v46 + 72) = v49;
        *(v46 + 80) = v50;
        os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v89, "Could not read item %@ for records at %@", 40, 2, v46);

        v51 = v77;
        v41(v77, v12);
        v11 = v78;
        v19 = v51;
      }

      else
      {
        v19 = v77;

        v52 = v73;
        sub_1001CC214(v43, v73, type metadata accessor for LegacyMagicPairingSettingsRecords);
        sub_1001CC14C(v52, v74, type metadata accessor for LegacyMagicPairingSettingsRecords);
        v53 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1001CF2C8(0, v53[2] + 1, 1, v53);
        }

        v11 = v78;
        v55 = v76[2];
        v54 = v76[3];
        if (v55 >= v54 >> 1)
        {
          v76 = sub_1001CF2C8((v54 > 1), v55 + 1, 1, v76);
        }

        sub_1001CC1B4(v73, type metadata accessor for LegacyMagicPairingSettingsRecords);
        v38(v19, v12);
        v56 = v76;
        v76[2] = v55 + 1;
        sub_1001CC214(v74, v56 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, type metadata accessor for LegacyMagicPairingSettingsRecords);
      }
    }

    sub_1000EEE6C(v106, &unk_1002F9C10, &qword_100228390);
    (*v98)(v11, 1, 1, v12);
LABEL_21:
    sub_1000EEE6C(v11, &unk_1002F7BA0, &unk_1002270E0);
    v64 = static os_log_type_t.debug.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = v85;
    v63 = v76;
    v66 = v76[2];
    *(v65 + 56) = &type metadata for Int;
    *(v65 + 64) = &protocol witness table for Int;
    *(v65 + 32) = v66;
    v22 = v90;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v86;
    *(v65 + 96) = &type metadata for String;
    *(v65 + 104) = v68;
    *(v65 + 72) = v67;
    *(v65 + 80) = v69;
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v89, "Found %i records at %@", 22, 2, v65);

    v13 = v72;
  }

  else
  {
    v57 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v58 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_1000EE954();
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Could not enumerate %@", 22, 2, v59);
    v63 = _swiftEmptyArrayStorage;
  }

  (*(v13 + 8))(v22, v12);
  return v63;
}

void *sub_100190E40(uint64_t a1)
{
  v2 = v1;
  v95 = sub_1000EE870(&qword_1002F9E48, &qword_100229AC8);
  __chkstk_darwin(v95);
  v5 = &v71 - v4;
  v94 = type metadata accessor for BTDeferredRecord(0);
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v71 - v8;
  v9 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v71 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v92 = &v71 - v16;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v96 = a1;
  URL.path.getter();
  v97 = v2;
  v91 = v23;
  URL.appendingPathComponent(_:isDirectory:)();

  v24 = objc_opt_self();

  v25 = [v24 defaultManager];
  v26 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v99 = v26;
  if (v26)
  {
    LODWORD(v103) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v27 = qword_100300E40;
    v88 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100226100;
    v29 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v90 = v22;
    v87 = v29;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    *(v28 + 56) = &type metadata for String;
    v86 = sub_1000EE954();
    *(v28 + 64) = v86;
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v89 = v27;
    os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v27, "Enumerate: %@", 13, 2, v28);

    v103 = 0;
    v82 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue;
    v98 = (v13 + 56);
    v84 = (v13 + 48);
    v81 = (v13 + 32);
    v72 = v13;
    v83 = (v13 + 8);
    v80 = (v75 + 48);
    v76 = _swiftEmptyArrayStorage;
    v85 = xmmword_100226C80;
    v78 = v11;
    v77 = v19;
    v79 = v5;
    while (1)
    {
      if ([v99 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v104 = 0u;
        v105 = 0u;
      }

      v106[0] = v104;
      v106[1] = v105;
      if (!*(&v105 + 1))
      {
        break;
      }

      v33 = swift_dynamicCast();
      (*v98)(v11, v33 ^ 1u, 1, v12);
      if ((*v84)(v11, 1, v12) == 1)
      {
        goto LABEL_21;
      }

      (*v81)(v19, v11, v12);
      v34 = v92;
      URL.deletingPathExtension()();
      v35 = URL.lastPathComponent.getter();
      v37 = v36;
      v38 = *v83;
      (*v83)(v34, v12);
      v102 = objc_autoreleasePoolPush();
      URL.path.getter();
      v39 = v97;
      v40 = v93;
      URL.appendingPathComponent(_:)();

      v100 = v35;
      v101 = v37;
      URL.appendingPathComponent(_:)();
      v41 = v38;
      v38(v40, v12);
      objc_autoreleasePoolPop(v102);
      v42 = objc_autoreleasePoolPush();
      __chkstk_darwin(v42);
      *(&v71 - 2) = v34;
      *(&v71 - 1) = v39;
      v43 = v79;
      v44 = v103;
      OS_dispatch_queue.sync<A>(execute:)();
      v103 = v44;
      objc_autoreleasePoolPop(v42);
      v38(v34, v12);
      if ((*v80)(v43, 1, v94) == 1)
      {
        sub_1000EEE6C(v43, &qword_1002F9E48, &qword_100229AC8);
        v45 = static os_log_type_t.error.getter();
        v46 = swift_allocObject();
        *(v46 + 16) = v85;
        v47 = v86;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = v47;
        v48 = v101;
        *(v46 + 32) = v100;
        *(v46 + 40) = v48;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v46 + 96) = &type metadata for String;
        *(v46 + 104) = v47;
        *(v46 + 72) = v49;
        *(v46 + 80) = v50;
        os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v89, "Could not read item %@ for records at %@", 40, 2, v46);

        v51 = v77;
        v41(v77, v12);
        v11 = v78;
        v19 = v51;
      }

      else
      {
        v19 = v77;

        v52 = v73;
        sub_1001CC214(v43, v73, type metadata accessor for BTDeferredRecord);
        sub_1001CC14C(v52, v74, type metadata accessor for BTDeferredRecord);
        v53 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1001CF2F0(0, v53[2] + 1, 1, v53);
        }

        v11 = v78;
        v55 = v76[2];
        v54 = v76[3];
        if (v55 >= v54 >> 1)
        {
          v76 = sub_1001CF2F0((v54 > 1), v55 + 1, 1, v76);
        }

        sub_1001CC1B4(v73, type metadata accessor for BTDeferredRecord);
        v38(v19, v12);
        v56 = v76;
        v76[2] = v55 + 1;
        sub_1001CC214(v74, v56 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, type metadata accessor for BTDeferredRecord);
      }
    }

    sub_1000EEE6C(v106, &unk_1002F9C10, &qword_100228390);
    (*v98)(v11, 1, 1, v12);
LABEL_21:
    sub_1000EEE6C(v11, &unk_1002F7BA0, &unk_1002270E0);
    v64 = static os_log_type_t.debug.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = v85;
    v63 = v76;
    v66 = v76[2];
    *(v65 + 56) = &type metadata for Int;
    *(v65 + 64) = &protocol witness table for Int;
    *(v65 + 32) = v66;
    v22 = v90;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v86;
    *(v65 + 96) = &type metadata for String;
    *(v65 + 104) = v68;
    *(v65 + 72) = v67;
    *(v65 + 80) = v69;
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v89, "Found %i records at %@", 22, 2, v65);

    v13 = v72;
  }

  else
  {
    v57 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v58 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100226100;
    sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_1000EE954();
    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Could not enumerate %@", 22, 2, v59);
    v63 = _swiftEmptyArrayStorage;
  }

  (*(v13 + 8))(v22, v12);
  return v63;
}

unint64_t sub_1001919FC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_1000EE870(&unk_1002F9530, qword_1002294F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100226100;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = inited + 32;
    *(inited + 40) = v4;
    strcpy(v15, "Cloud Error: ");
    HIWORD(v15[1]) = -4864;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_1000EE870(&unk_1002F9530, qword_1002294F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100226100;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = inited + 32;
    *(inited + 40) = v3;
    _StringGuts.grow(_:)(17);

    v15[0] = 0x2074736973726550;
    v15[1] = 0xEF203A726F727245;
LABEL_5:
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v5._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v5);

    v6 = v15[0];
    v7 = v15[1];
    *(inited + 72) = &type metadata for String;
LABEL_22:
    *(inited + 48) = v6;
    goto LABEL_23;
  }

  v8 = __ROR8__(a1 ^ 0x8000000000000000, 3);
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 == 6)
      {
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v2 = inited + 32;
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v11;
        *(inited + 48) = 0x72724520656C6946;
        v7 = 0xEA0000000000726FLL;
        goto LABEL_23;
      }

      sub_1000EE870(&unk_1002F9530, qword_1002294F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = inited + 32;
      v7 = 0x8000000100271EF0;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD000000000000019;
    }

    else
    {
      if (v8 != 4)
      {
        sub_1000EE870(&unk_1002F9530, qword_1002294F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100226100;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v2 = inited + 32;
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v12;
        *(inited + 48) = 0x2064696C61766E49;
        v7 = 0xEE0064726F636572;
        goto LABEL_23;
      }

      sub_1000EE870(&unk_1002F9530, qword_1002294F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = inited + 32;
      v7 = 0x8000000100271F10;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD000000000000015;
    }

LABEL_21:
    *(inited + 40) = v10;
    goto LABEL_22;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      sub_1000EE870(&unk_1002F9530, qword_1002294F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = inited + 32;
      v7 = 0x8000000100271F60;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD00000000000002ELL;
    }

    else
    {
      sub_1000EE870(&unk_1002F9530, qword_1002294F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100226100;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = inited + 32;
      v7 = 0x8000000100271F30;
      *(inited + 72) = &type metadata for String;
      v6 = 0xD00000000000002BLL;
    }

    goto LABEL_21;
  }

  if (v8)
  {
    sub_1000EE870(&unk_1002F9530, qword_1002294F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100226100;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = inited + 32;
    v7 = 0x800000010026E030;
    *(inited + 72) = &type metadata for String;
    v6 = 0xD000000000000014;
    goto LABEL_21;
  }

  sub_1000EE870(&unk_1002F9530, qword_1002294F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100226100;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v9;
  *(inited + 48) = 0x206E776F6E6B6E55;
  v7 = 0xED0000726F727245;
LABEL_23:
  *(inited + 56) = v7;
  v13 = sub_1000F99F0(inited);
  swift_setDeallocating();
  sub_1000EEE6C(v2, &unk_1002F9EB0, &unk_100227D50);
  return v13;
}

uint64_t sub_100191F48(uint64_t a1)
{
  v2 = sub_1001CDF5C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100191F84(uint64_t a1)
{
  v2 = sub_1001CDF5C();

  return Error<>._code.getter(a1, v2);
}

void sub_100191FC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = objc_opt_self();
  if (([v5 isBuddyComplete] & 1) == 0)
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      v13 = v11;
      swift_once();
      v11 = v13;
    }

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_100300E38, "cloud account info call failed because in device is in buddy state", 66, 2, _swiftEmptyArrayStorage);
    goto LABEL_11;
  }

  if (([v5 isFirstUnlocked] & 1) == 0)
  {
    v12 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      v14 = v12;
      swift_once();
      v12 = v14;
    }

    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_100300E38, "cloud account info call failed because in device is in beforeFirstUnlock state", 78, 2, _swiftEmptyArrayStorage);
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v6 = [objc_allocWithZone(BTCloudAccountInfo) init];
  sub_100193560();
  v7 = type metadata accessor for CloudCoordinator(0);
  v8 = sub_10015A5B8(v7, &off_1002BE310);
  swift_unknownObjectRelease();
  [v6 setIsSignedIn:v8 & 1];
  swift_unknownObjectRetain();
  v9 = sub_10015A5A0(v7, &off_1002BE310);
  swift_unknownObjectRelease();
  [v6 setManateeAvailable:v9 & 1];
  v10 = objc_autoreleasePoolPush();
  sub_100192218(a1, v6);
  if (!v2)
  {
    objc_autoreleasePoolPop(v10);
LABEL_12:
    *a2 = v6;
    return;
  }

  objc_autoreleasePoolPop(v10);
  __break(1u);
}

void sub_100192218(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 56) aa_primaryAppleAccount];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 aa_personID];
    [a2 setAccountIdentifier:v5];

    v6 = [v4 appleID];
    [a2 setLoginID:v6];
  }

  else
  {
    v7 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v8 = v7;
      swift_once();
      v7 = v8;
    }

    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_100300E38, "Could Not Find Primary Account", 30, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100192340()
{
  v1 = type metadata accessor for URL();
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager;
  if (*(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager))
  {
    v7 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
  }

  else
  {
    (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_directoryURL, v3);
    type metadata accessor for RecordFileManager(0);
    swift_allocObject();
    v7 = sub_100123B00(v5);
    *(v0 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100192464@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F79E8 != -1)
    {
      swift_once();
    }

    v6 = sub_1000EE91C(v2, qword_100300B80);
    (*(v3 + 16))(v5, v6, v2);
    v7 = sub_10018F6C8(v5);

    (*(v3 + 8))(v5, v2);
    if (v7[2])
    {
      v8 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
      v9 = *(v8 - 8);
      sub_1001CC14C(v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), a1, type metadata accessor for LegacyAccountMagicKeysRecord);

      return (*(v9 + 56))(a1, 0, 1, v8);
    }

    else
    {

      v14 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }
  }

  else
  {
    v11 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v15 = v11;
      swift_once();
      v11 = v15;
    }

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_100300E38, "AccountMagicKeysRecord call failed because in device is in beforeFirstUnlock state", 82, 2, _swiftEmptyArrayStorage);
    v12 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_100192770@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v123 = type metadata accessor for CloudCoordinatorConfiguration(0);
  *&v118 = *(v123 - 8);
  __chkstk_darwin(v123);
  v110 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EE870(&qword_1002F9E68, &unk_100229AE0);
  __chkstk_darwin(v5 - 8);
  v120 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v108 - v8;
  v10 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v10 - 8);
  v126 = &v108 - v11;
  v124 = type metadata accessor for UUID();
  v12 = *(v124 - 8);
  __chkstk_darwin(v124);
  v117 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for URL();
  v14 = *(v125 - 8);
  __chkstk_darwin(v125);
  v112 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v114 = &v108 - v17;
  __chkstk_darwin(v18);
  v20 = &v108 - v19;
  v21 = objc_opt_self();
  v22 = [v21 mainBundle];
  v23 = [v22 infoDictionary];

  if (!v23)
  {
    v127._countAndFlagsBits = 0;
    v127._object = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v127._countAndFlagsBits = 0xD00000000000001DLL;
    v127._object = 0x8000000100271B00;
    v100 = [v21 mainBundle];
    v101 = [v100 description];
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v103;

    v105._countAndFlagsBits = v102;
    v105._object = v104;
    String.append(_:)(v105);

    v107 = 0;
    goto LABEL_38;
  }

  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v24 + 16) || (v25 = sub_1000F8C5C(0xD00000000000001ALL, 0x8000000100271B20), (v26 & 1) == 0) || (sub_100162534(*(v24 + 56) + 32 * v25, &v127), (swift_dynamicCast() & 1) == 0))
  {
LABEL_36:
    v127._countAndFlagsBits = 0;
    v127._object = 0xE000000000000000;
    _StringGuts.grow(_:)(63);
    v93._countAndFlagsBits = 0xD00000000000003DLL;
    v93._object = 0x8000000100271B40;
    String.append(_:)(v93);
    v94 = [v21 mainBundle];
    v95 = [v94 description];
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    v99._countAndFlagsBits = v96;
    v99._object = v98;
    String.append(_:)(v99);

    v107 = 0;
LABEL_38:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v27 = v130;
  v115 = v131;
  sub_1000EE870(&unk_1002F9E70, qword_100229840);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100226C80;
  v119 = 0x8000000100267220;
  *(v28 + 32) = 0xD00000000000001ELL;
  *(v28 + 40) = 0x8000000100267220;
  *(v28 + 48) = 0xD000000000000010;
  *(v28 + 56) = 0x8000000100267960;
  v128 = &type metadata for AudioAccessoryFeatures;
  v129 = sub_1000F1874();
  v29 = isFeatureEnabled(_:)();
  sub_1000EF824(&v127);
  v121 = a1;
  v122 = v9;
  v116 = v27;
  if (v29)
  {
    v28 = sub_1001CF194(1, 3, 1, v28);
    *(v28 + 16) = 3;
    *(v28 + 64) = 0xD000000000000012;
    *(v28 + 72) = 0x8000000100267AF0;
  }

  v21 = *(v2 + 48);
  v108 = *(v2 + 40);
  v30 = *(v14 + 16);
  v31 = v2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_directoryURL;
  v109 = v20;
  v111 = v2;
  v32 = v125;
  v113 = v30;
  (v30)(v20, v31, v125);

  v33 = v126;
  UUID.init(uuidString:)();
  v34 = v12;
  v35 = *(v12 + 48);
  v36 = v124;
  if (v35(v33, 1, v124) == 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  v37 = *(v34 + 32);
  v38 = v117;
  v37(v117, v33, v36);
  v39 = v121;
  v37(v121, v38, v36);
  v40 = v123;
  v41 = &v39[*(v123 + 20)];
  *v41 = v108;
  *(v41 + 1) = v21;
  v42 = &v39[v40[6]];
  v43 = v115;
  *v42 = v116;
  v42[1] = v43;
  (*(v14 + 32))(&v39[v40[7]], v109, v32);
  *&v39[v40[8]] = v28;
  sub_100192340();
  if (qword_1002F7A10 != -1)
  {
    swift_once();
  }

  v44 = sub_1000EE91C(v32, qword_100300C28);
  v45 = v114;
  (v113)(v114, v44, v32);
  v46 = sub_10018EB0C(v45);

  v121 = *(v14 + 8);
  v124 = v14 + 8;
  (v121)(v45, v32);
  v47 = v122;
  if (v46[2])
  {
    v48 = v118;
    sub_1001CC14C(v46 + ((*(v118 + 80) + 32) & ~*(v118 + 80)), v122, type metadata accessor for CloudCoordinatorConfiguration);
    v49 = 0;
    v50 = v123;
  }

  else
  {
    v49 = 1;
    v50 = v123;
    v48 = v118;
  }

  (*(v48 + 56))(v47, v49, 1, v50);
  v51 = *(v28 + 16);
  v53 = v119;
  v52 = v120;
  if (v51)
  {
    v126 = 0;
    v113 = (v48 + 48);
    v111 = CKCurrentUserDefaultName;
    v54 = (v28 + 40);
    v118 = xmmword_100226100;
    do
    {
      v56 = *(v54 - 1);
      v55 = *v54;
      v57 = v56 == 0xD00000000000001ELL && v53 == v55;
      if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_17;
      }

      sub_1000FAAFC(v122, v52, &qword_1002F9E68, &unk_100229AE0);
      v58 = v123;
      if ((*v113)(v52, 1, v123) == 1)
      {

        sub_1000EEE6C(v52, &qword_1002F9E68, &unk_100229AE0);
      }

      else
      {
        v59 = v110;
        v60 = sub_1001CC214(v52, v110, type metadata accessor for CloudCoordinatorConfiguration);
        v61 = *(v59 + *(v58 + 32));
        v127._countAndFlagsBits = v56;
        v127._object = v55;
        __chkstk_darwin(v60);
        v106 = &v127;

        v62 = v126;
        LOBYTE(v61) = sub_10017CE74(sub_1001CC27C, (&v108 - 4), v61);
        v126 = v62;
        sub_1001CC1B4(v59, type metadata accessor for CloudCoordinatorConfiguration);
        if (v61)
        {

          goto LABEL_16;
        }
      }

      v63 = static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      v64 = qword_100300E28;
      v116 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v65 = swift_allocObject();
      *(v65 + 16) = v118;
      *(v65 + 56) = &type metadata for String;
      v115 = sub_1000EE954();
      *(v65 + 64) = v115;
      *(v65 + 32) = v56;
      *(v65 + 40) = v55;

      v117 = v64;
      os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v64, "New zone added: %@", 18, 2, v65);

      sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      v69._countAndFlagsBits = v56;
      v69._object = v55;
      v70._countAndFlagsBits = v66;
      v70._object = v68;
      v71.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v69, v70).super.isa;
      v72 = v114;
      sub_10013A598();
      v73 = v112;
      URL.appendingPathComponent(_:isDirectory:)();
      v74 = v121;
      (v121)(v72, v125);
      v75._countAndFlagsBits = 0x65746176697250;
      v75._object = 0xE700000000000000;
      URL.appendPathComponent(_:)(v75);
      v76 = [(objc_class *)v71.super.isa ownerName];
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v80._countAndFlagsBits = v77;
      v80._object = v79;
      URL.appendPathComponent(_:)(v80);

      v81 = [(objc_class *)v71.super.isa zoneName];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v127._countAndFlagsBits = v82;
      v127._object = v84;
      v85 = v73;
      v86._countAndFlagsBits = 0x6E656B6F742ELL;
      v86._object = 0xE600000000000000;
      String.append(_:)(v86);
      URL.appendPathComponent(_:)(v127);

      v87 = sub_10013A930(v73);
      if (v87)
      {

        v88 = static os_log_type_t.error.getter();
        v89 = swift_allocObject();
        *(v89 + 16) = v118;
        v90 = v115;
        *(v89 + 56) = &type metadata for String;
        *(v89 + 64) = v90;
        *(v89 + 32) = v56;
        *(v89 + 40) = v55;
        os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v117, "Remove change token for zone: %@", 32, 2, v89);

        v91 = v126;
        sub_10013ABC4();
        if (v91)
        {

          (v121)(v85, v125);
          v126 = 0;
        }

        else
        {
          v126 = 0;
          (v121)(v85, v125);
        }

        v53 = v119;
        v52 = v120;
        goto LABEL_17;
      }

      (v74)(v73, v125);
LABEL_16:
      v53 = v119;
      v52 = v120;
LABEL_17:
      v54 += 2;
      --v51;
    }

    while (v51);
  }

  return sub_1000EEE6C(v122, &qword_1002F9E68, &unk_100229AE0);
}

uint64_t sub_100193560()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CloudCoordinatorConfiguration(0);
  __chkstk_darwin(v7 - 8);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v19 - v11;
  v13 = (v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
  if (*(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator))
  {
    v14 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
  }

  else
  {
    v20 = v0;
    sub_100192770(v19 - v11);
    sub_1001CC14C(v12, v9, type metadata accessor for CloudCoordinatorConfiguration);
    v15 = sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
    v19[2] = " in beforeFirstUnlock state";
    v19[3] = v15;
    (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    v19[1] = sub_1001C4BB4(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000EE870(&qword_1002F9710, &unk_100227B80);
    sub_1000FA0E0(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    type metadata accessor for CloudCoordinator(0);
    swift_allocObject();
    v17 = v20;
    swift_unknownObjectRetain();
    v14 = sub_10015F20C(v9, v17, &off_1002C0580, v16);

    sub_1001CC1B4(v12, type metadata accessor for CloudCoordinatorConfiguration);
    *v13 = v14;
    v13[1] = &off_1002BE310;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v14;
}

void *sub_10019391C()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v95 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v104 = &v95 - v4;
  __chkstk_darwin(v5);
  v105 = &v95 - v6;
  __chkstk_darwin(v7);
  v109 = &v95 - v8;
  __chkstk_darwin(v9);
  v112 = &v95 - v10;
  __chkstk_darwin(v11);
  v114 = &v95 - v12;
  __chkstk_darwin(v13);
  v116 = &v95 - v14;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v106 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v95 - v19;
  __chkstk_darwin(v21);
  v102 = &v95 - v22;
  __chkstk_darwin(v23);
  v103 = &v95 - v24;
  __chkstk_darwin(v25);
  v27 = &v95 - v26;
  __chkstk_darwin(v28);
  v30 = &v95 - v29;
  __chkstk_darwin(v31);
  v33 = &v95 - v32;
  __chkstk_darwin(v34);
  v36 = &v95 - v35;
  __chkstk_darwin(v37);
  v107 = &v95 - v38;
  __chkstk_darwin(v39);
  v108 = &v95 - v40;
  __chkstk_darwin(v41);
  v110 = &v95 - v42;
  __chkstk_darwin(v43);
  v111 = (&v95 - v44);
  __chkstk_darwin(v45);
  v47 = &v95 - v46;
  __chkstk_darwin(v48);
  v50 = &v95 - v49;
  if (([objc_opt_self() isFirstUnlocked] & 1) == 0)
  {
    v93 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v94 = v93;
      swift_once();
      v93 = v94;
    }

    v92 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v93, &_mh_execute_header, qword_100300E38, "deferredRecords call failed because in device is in beforeFirstUnlock state", 75, 2, _swiftEmptyArrayStorage);
    return v92;
  }

  v100 = v33;
  v101 = v36;
  v96 = v27;
  v97 = v30;
  v98 = v20;
  v99 = v2;
  v118 = _swiftEmptyArrayStorage;
  sub_100192340();
  v51 = v116;
  URL.init(string:)();
  v53 = (v16 + 6);
  v52 = v16[6];
  result = v52(v51, 1, v15);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v113 = v16[4];
  v113(v47, v51, v15);
  URL.appendingPathComponent(_:)();
  v57 = v16[1];
  v56 = (v16 + 1);
  v55 = v57;
  (v57)(v47, v15);
  v58 = sub_100190E40(v50);

  (v57)(v50, v15);
  sub_100194504(v58);
  v116 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager;

  v59 = v114;
  URL.init(string:)();
  result = v52(v59, 1, v15);
  v115 = v52;
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v60 = v110;
  v61 = v113;
  v113(v110, v59, v15);
  v62 = v111;
  URL.appendingPathComponent(_:)();
  (v55)(v60, v15);
  v63 = sub_100190E40(v62);

  v111 = v55;
  (v55)(v62, v15);
  sub_100194504(v63);

  v64 = v112;
  URL.init(string:)();
  v65 = v115;
  result = v115(v64, 1, v15);
  v114 = v53;
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v66 = v61;
  v67 = v107;
  v66(v107, v64, v15);
  v68 = v108;
  URL.appendingPathComponent(_:)();
  v69 = v111;
  v111(v67, v15);
  v70 = sub_100190E40(v68);

  v69(v68, v15);
  sub_100194504(v70);

  v71 = v109;
  URL.init(string:)();
  result = v65(v71, 1, v15);
  if (result == 1)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v72 = v100;
  v66(v100, v71, v15);
  v73 = v101;
  URL.appendingPathComponent(_:)();
  v74 = v111;
  v111(v72, v15);
  v75 = sub_100190E40(v73);

  v112 = v56;
  v74(v73, v15);
  sub_100194504(v75);
  v117[3] = &type metadata for AudioAccessoryFeatures;
  v117[4] = sub_1000F1874();
  v76 = isFeatureEnabled(_:)();
  sub_1000EF824(v117);
  if ((v76 & 1) == 0)
  {
    goto LABEL_10;
  }

  v77 = v74;

  v78 = v105;
  URL.init(string:)();
  result = v115(v78, 1, v15);
  if (result == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v79 = v96;
  v80 = v113;
  v113(v96, v78, v15);
  v81 = v97;
  URL.appendingPathComponent(_:)();
  v77(v79, v15);
  v82 = sub_100190E40(v81);

  v83 = v81;
  v74 = v77;
  v77(v83, v15);
  sub_100194504(v82);

  v84 = v104;
  URL.init(string:)();
  result = v115(v84, 1, v15);
  if (result != 1)
  {
    v85 = v102;
    v80(v102, v84, v15);
    v86 = v103;
    URL.appendingPathComponent(_:)();
    v74(v85, v15);
    v87 = sub_100190E40(v86);

    v74(v86, v15);
    sub_100194504(v87);
LABEL_10:

    v88 = v99;
    URL.init(string:)();
    result = v115(v88, 1, v15);
    if (result != 1)
    {
      v89 = v106;
      v113(v106, v88, v15);
      v90 = v98;
      URL.appendingPathComponent(_:)();
      v74(v89, v15);
      v91 = sub_100190E40(v90);

      v74(v90, v15);
      sub_100194504(v91);
      return v118;
    }

    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100194504(uint64_t result)
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

  v3 = sub_1001CF2F0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = type metadata accessor for BTDeferredRecord(0);
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

uint64_t sub_100194630@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7A70 != -1)
    {
      swift_once();
    }

    v6 = sub_1000EE91C(v2, qword_100300D60);
    (*(v3 + 16))(v5, v6, v2);
    v7 = sub_100190284(v5);

    (*(v3 + 8))(v5, v2);
    if (v7[2])
    {
      v8 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
      v9 = *(v8 - 8);
      sub_1001CC14C(v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), a1, type metadata accessor for LegacyMagicPairingSettingsRecords);

      return (*(v9 + 56))(a1, 0, 1, v8);
    }

    else
    {

      v14 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }
  }

  else
  {
    v11 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v15 = v11;
      swift_once();
      v11 = v15;
    }

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_100300E38, "Legacy magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 94, 2, _swiftEmptyArrayStorage);
    v12 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_10019493C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F79D8 != -1)
    {
      swift_once();
    }

    v6 = sub_1000EE91C(v2, qword_100300B50);
    (*(v3 + 16))(v5, v6, v2);
    v7 = sub_10018D540(v5);

    (*(v3 + 8))(v5, v2);
    v18 = v7;

    sub_1001C5AAC(&v18);

    v8 = v18;
    if (v18[2])
    {
      v9 = type metadata accessor for SoundProfileRecord(0);
      v10 = *(v9 - 8);
      sub_1001CC14C(v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), a1, type metadata accessor for SoundProfileRecord);

      return (*(v10 + 56))(a1, 0, 1, v9);
    }

    else
    {

      v15 = type metadata accessor for SoundProfileRecord(0);
      return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    }
  }

  else
  {
    v12 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v16 = v12;
      swift_once();
      v12 = v16;
    }

    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_100300E38, "Unable to read sound profile record because device is in beforeFirstUnlock state", 80, 2, _swiftEmptyArrayStorage);
    v13 = type metadata accessor for SoundProfileRecord(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

void *sub_100194C84()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[3] = &type metadata for AudioAccessoryFeatures;
  v11[4] = sub_1000F1874();
  v4 = isFeatureEnabled(_:)();
  sub_1000EF824(v11);
  if ((v4 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7AB8 != -1)
    {
      swift_once();
    }

    v5 = sub_1000EE91C(v0, qword_100300D88);
    (*(v1 + 16))(v3, v5, v0);
    v6 = sub_10018E14C(v3, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v7 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v9 = v7;
      swift_once();
      v7 = v9;
    }

    v6 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_100300E38, "aaDeviceRecords call failed because device is in beforeFirstUnlock state", 72, 2, _swiftEmptyArrayStorage);
  }

  return v6;
}

void *sub_100194EB4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[3] = &type metadata for AudioAccessoryFeatures;
  v11[4] = sub_1000F1874();
  v4 = isFeatureEnabled(_:)();
  sub_1000EF824(v11);
  if ((v4 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F79D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1000EE91C(v0, qword_100300B10);
    (*(v1 + 16))(v3, v5, v0);
    v6 = sub_10018E14C(v3, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v7 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      v9 = v7;
      swift_once();
      v7 = v9;
    }

    v6 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_100300E38, "aaProxCardsRecords call failed because device is in beforeFirstUnlock state", 75, 2, _swiftEmptyArrayStorage);
  }

  return v6;
}

uint64_t sub_1001950E4(uint64_t a1, uint64_t a2)
{
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notification();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = *(a2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1001CDDB8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C11B0;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  v18 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v5, v18);
  (*(v22 + 8))(v8, v23);
}

void sub_10019549C(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_1000F8E78(v15), (v6 & 1) == 0))
  {

    sub_1000FA8F4(v15);
LABEL_13:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_14;
  }

  sub_100162534(*(v4 + 56) + 32 * v5, &v16);
  sub_1000FA8F4(v15);

  if (!*(&v17 + 1))
  {
LABEL_14:
    sub_1000EEE6C(&v16, &unk_1002F9C10, &qword_100228390);
    return;
  }

  v7 = sub_1000FA784(0, &qword_1002F9E90, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v8 = v15[0];
    v9 = static os_log_type_t.debug.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v10 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100226100;
    *(v11 + 56) = v7;
    *(v11 + 64) = sub_1001CB38C(&qword_1002F9E98, &qword_1002F9E90, NSNumber_ptr);
    *(v11 + 32) = v8;
    v12 = v8;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Network changed: %@", 19, 2, v11);

    v13 = [v12 BOOLValue];
    v14 = *(a2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_networkUp);
    *(a2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_networkUp) = v13;
    if (v14 != 1)
    {
      if (v13)
      {
        sub_100195ABC();
      }
    }
  }
}

uint64_t sub_1001956D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001957C4(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    v7 = v2;
    swift_once();
    v2 = v7;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_100300E38, "Deinit Device Store", 19, 2, _swiftEmptyArrayStorage);
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v1];

  sub_1001630C8(v1 + 24);

  v4 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_directoryURL;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_100195930(uint64_t a1)
{
  sub_1001957C4(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceStore(uint64_t a1)
{
  result = qword_1002F9870;
  if (!qword_1002F9870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001959DC(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100195ABC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v13 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100226100;
  v15 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer);
  if (v15)
  {
    v16 = [v15 date];
    v39 = v8;
    v17 = v16;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = objc_opt_self();
    v38 = v11;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v20 = v13;
    v21 = v7;
    v22 = v1;
    v23 = v4;
    v24 = v12;
    v25 = [v18 localizedStringFromDate:isa dateStyle:2 timeStyle:2];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v12 = v24;
    v4 = v23;
    v1 = v22;
    v7 = v21;
    v13 = v20;
    (*(v9 + 8))(v38, v39);
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1000EE954();
  v29 = 0x8000000100271890;
  v30 = 0xD000000000000010;
  if (v28)
  {
    v30 = v26;
    v29 = v28;
  }

  *(v14 + 32) = v30;
  *(v14 + 40) = v29;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Device Store scheduleDeviceStoreDeferredActions to run at %@", 60, 2, v14);

  v31 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  v32 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001CC02C;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C0FF8;
  v33 = _Block_copy(aBlock);
  v34 = v31;

  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  v35 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v42 + 8))(v4, v35);
  (*(v40 + 8))(v7, v41);
}

void sub_100195FE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer;
    if (*(Strong + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer))
    {
    }

    else
    {
      v3 = Strong;
      v4 = static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        v11 = v4;
        swift_once();
        v4 = v11;
      }

      os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_100300E38, "Device Store checkin activity handler", 37, 2, _swiftEmptyArrayStorage);
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = objc_allocWithZone(BTXPCTimer);

      v7 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1001CC034;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147160;
      aBlock[3] = &unk_1002C1020;
      v8 = _Block_copy(aBlock);
      v9 = [v6 initWithName:v7 timeInterval:1 gracePeriod:705 priority:v8 options:300.0 block:60.0];

      _Block_release(v8);

      v10 = *(v3 + v2);
      *(v3 + v2) = v9;
    }
  }
}

uint64_t sub_1001961F0(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v22 = v8;
    v23 = v7;
    v24 = v4;
    v25 = v3;
    v13 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v14 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100226100;
    *(v15 + 56) = sub_1000FA784(0, &qword_1002F9E18, off_1002B5590);
    *(v15 + 64) = sub_1001CB38C(&unk_1002F9E20, &qword_1002F9E18, off_1002B5590);
    *(v15 + 32) = a1;
    v16 = a1;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Device Store scheduled activity handler timer fired: %@", 55, 2, v15);

    v17 = *(v12 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
    v18 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001CC03C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002C1048;
    v19 = _Block_copy(aBlock);
    v20 = v17;

    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    v21 = v25;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v24 + 8))(v6, v21);
    (*(v22 + 8))(v10, v23);
  }

  return result;
}

void sub_10019660C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001966F4();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer);

    [v2 invalidate];
  }

  swift_beginAccess();
  v3 = swift_weakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer);
    *(v3 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer) = 0;
  }
}

uint64_t sub_1001966F4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v12 = *(v4 - 8);
  v13 = v4;
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001CBC78;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C0DA0;
  v9 = _Block_copy(aBlock);
  v10 = v7;

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v12 + 8))(v6, v13);
}

char *sub_1001969E8(uint64_t a1)
{
  v1 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v303 - v2;
  v4 = type metadata accessor for SoundProfileRecord(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v307 = &v303 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = type metadata accessor for MagicPairingSettingsRecord(0);
  v358 = *(v333 - 8);
  __chkstk_darwin(v333);
  v339 = &v303 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v357 = &v303 - v9;
  v359 = type metadata accessor for DeviceSupportInformationRecord(0);
  v10 = *(v359 - 8);
  __chkstk_darwin(v359);
  v12 = &v303 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v360 = &v303 - v14;
  v15 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v15 - 8);
  v319 = &v303 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v311 = &v303 - v18;
  __chkstk_darwin(v19);
  v314 = &v303 - v20;
  __chkstk_darwin(v21);
  v322 = &v303 - v22;
  __chkstk_darwin(v23);
  v327 = &v303 - v24;
  __chkstk_darwin(v25);
  v330 = &v303 - v26;
  v361 = type metadata accessor for DeviceRecord(0);
  v351 = *(v361 - 8);
  __chkstk_darwin(v361);
  v28 = &v303 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v362 = &v303 - v30;
  v353 = type metadata accessor for URL();
  v323 = *(v353 - 8);
  __chkstk_darwin(v353);
  v318 = &v303 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v317 = &v303 - v33;
  __chkstk_darwin(v34);
  v310 = &v303 - v35;
  __chkstk_darwin(v36);
  v309 = &v303 - v37;
  __chkstk_darwin(v38);
  v313 = &v303 - v39;
  __chkstk_darwin(v40);
  v312 = &v303 - v41;
  __chkstk_darwin(v42);
  v321 = &v303 - v43;
  __chkstk_darwin(v44);
  v320 = &v303 - v45;
  __chkstk_darwin(v46);
  v326 = &v303 - v47;
  __chkstk_darwin(v48);
  v325 = &v303 - v49;
  __chkstk_darwin(v50);
  v329 = &v303 - v51;
  __chkstk_darwin(v52);
  v328 = &v303 - v53;
  __chkstk_darwin(v54);
  v344 = &v303 - v55;
  v332 = type metadata accessor for BTDeferredRecord(0);
  v342 = *(v332 - 8);
  v56 = *(v342 + 64);
  __chkstk_darwin(v332);
  v349 = &v303 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v347 = &v303 - v58;
  __chkstk_darwin(v59);
  v61 = &v303 - v60;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v63 = result;
  v352 = v56;
  v341 = v28;
  v355 = v10;
  v340 = v12;
  v304 = v5;
  v305 = v4;
  v306 = v3;
  v64 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    goto LABEL_185;
  }

  while (1)
  {
    v65 = qword_100300E38;
    v346 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v66 = swift_allocObject();
    v345 = xmmword_100226100;
    *(v66 + 16) = xmmword_100226100;
    v67 = sub_10019391C();
    v356 = v63;
    *(v66 + 56) = sub_1000EE870(&qword_1002F9E00, &qword_100229AA8);
    *(v66 + 64) = sub_1000FA0E0(&qword_1002F9E08, &qword_1002F9E00, &qword_100229AA8, &protocol conformance descriptor for [A]);
    *(v66 + 32) = v67;
    v354 = v65;
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v65, "Run to delete for deferred records: %@", 38, 2, v66);

    v68 = sub_10019391C();
    v69 = v68[2];
    v64 = v332;
    v70 = v349;
    if (v69)
    {
      v336 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator;
      v71 = *(v342 + 80);
      v331 = v68;
      v72 = v68 + ((v71 + 32) & ~v71);
      v350 = *(v342 + 72);
      v343 = v71;
      v338 = (v71 + 16) & ~v71;
      v337 = &v352[v338 + 7] & 0xFFFFFFFFFFFFFFF8;
      v348 = 0x80000001002671C0;
      v335 = "debugDescription";
      v334 = CKCurrentUserDefaultName;
      v73 = v355;
      while (1)
      {
        sub_1001CC14C(v72, v61, type metadata accessor for BTDeferredRecord);
        if (*v61)
        {
          break;
        }

        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v78)
        {
          goto LABEL_10;
        }

LABEL_6:
        sub_1001CC1B4(v61, type metadata accessor for BTDeferredRecord);
        v72 += v350;
        if (!--v69)
        {

          goto LABEL_16;
        }
      }

LABEL_10:
      v79 = static os_log_type_t.default.getter();
      v80 = swift_allocObject();
      *(v80 + 16) = v345;
      v352 = v69;
      v81 = v64;
      v82 = v347;
      sub_1001CC14C(v61, v347, type metadata accessor for BTDeferredRecord);
      v83 = v61;
      v84 = String.init<A>(describing:)();
      v86 = v85;
      *(v80 + 56) = &type metadata for String;
      *(v80 + 64) = sub_1000EE954();
      *(v80 + 32) = v84;
      *(v80 + 40) = v86;
      os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v354, "Delete deferred record: %@", 26, 2, v80);

      v87 = v356;
      v88 = sub_100193560();
      UUID.uuidString.getter();
      v89 = objc_allocWithZone(CKRecordID);
      v90 = String._bridgeToObjectiveC()();

      v91 = [v89 initWithRecordName:v90];

      sub_1001CC14C(v83, v82, type metadata accessor for BTDeferredRecord);
      v92 = v337;
      v93 = swift_allocObject();
      v94 = v82;
      v64 = v81;
      v69 = v352;
      sub_1001CC214(v94, v93 + v338, type metadata accessor for BTDeferredRecord);
      *(v93 + v92) = v87;
      v95 = swift_allocObject();
      *(v95 + 16) = v88;
      *(v95 + 24) = v91;
      *(v95 + 32) = sub_1001CBD04;
      *(v95 + 40) = v93;
      *(v95 + 48) = 0;
      v70 = v349;

      swift_unknownObjectRetain();
      v96 = v91;

      sub_100153CF4(sub_1001CE26C, v95);

      v73 = v355;
      swift_unknownObjectRelease();

      v61 = v83;

      if (*(v83 + 8) == 0xD000000000000012 && v348 == *(v83 + 16) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
        v74._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74._object = v75;
        v76._countAndFlagsBits = 0xD000000000000010;
        v76._object = (v335 | 0x8000000000000000);
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v76, v74).super.isa;
        swift_unknownObjectRetain();
        sub_100158CC4(&off_1002BBC88, isa, 0, 0, 0, 0);
        swift_unknownObjectRelease();

        sub_1001CB31C(&unk_1002BBCA8);
      }

      goto LABEL_6;
    }

    v73 = v355;
LABEL_16:
    v61 = sub_10019391C();
    v63 = v339;
    v97 = v351;
    v338 = *(v61 + 2);
    if (v338)
    {
      v352 = objc_opt_self();
      v98 = 0;
      v99 = 0;
      v337 = &v61[(*(v342 + 80) + 32) & ~*(v342 + 80)];
      v343 = (v323 + 16);
      v350 = (v323 + 8);
      v331 = 0x80000001002671E0;
      v336 = (v323 + 48);
      v334 = (v323 + 32);
      v308 = 0x800000010026EAC0;
      v316 = 0x8000000100267B10;
      v335 = v61;
LABEL_21:
      if (v98 >= *(v61 + 2))
      {
        goto LABEL_182;
      }

      sub_1001CC14C(v337 + *(v342 + 72) * v98, v70, type metadata accessor for BTDeferredRecord);
      if ([v352 isFirstUnlocked])
      {
        v348 = v99;
        sub_100192340();
        if (qword_1002F79C0 != -1)
        {
          swift_once();
        }

        v100 = v353;
        v101 = sub_1000EE91C(v353, qword_100300AF0);
        v102 = v344;
        (*v343)(v344, v101, v100);
        v103 = sub_10018B20C(v102);

        (*v350)(v102, v100);
        v99 = v348;
      }

      else
      {
        v104 = static os_log_type_t.error.getter();
        v103 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)(v104, &_mh_execute_header, v354, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage);
      }

      v105 = 0;
      v348 = v98 + 1;
      v106 = v103[2];
      while (1)
      {
        if (v106 == v105)
        {

          v73 = *(v70 + 8);
          v115 = v73 == 0x6552656369766544 && *(v70 + 16) == 0xEC00000064726F63;
          if (!v115 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v73 = v355;
            v97 = v351;
            goto LABEL_45;
          }

          v116 = static os_log_type_t.default.getter();
          v117 = swift_allocObject();
          *(v117 + 16) = v345;
          sub_1001CC14C(v70, v347, type metadata accessor for BTDeferredRecord);
          v118 = String.init<A>(describing:)();
          v120 = v119;
          *(v117 + 56) = &type metadata for String;
          *(v117 + 64) = sub_1000EE954();
          *(v117 + 32) = v118;
          *(v117 + 40) = v120;
          os_log(_:dso:log:_:_:)(v116, &_mh_execute_header, v354, "Remove deferred device record not found in cache anymore: %@", 60, 2, v117);

          v121 = sub_100192340();
          v122 = v70 + *(v64 + 28);
          v63 = *v122;
          v123 = *(v122 + 8);
          v124 = v330;
          URL.init(string:)();
          if ((*v336)(v124, 1, v353) != 1)
          {
            v125 = v329;
            v126 = v353;
            (*v334)(v329, v124, v353);
            v127 = v328;
            URL.appendingPathComponent(_:)();
            v128 = *v350;
            v129 = (*v350)(v125, v126);
            __chkstk_darwin(v129);
            *(&v303 - 4) = v121;
            *(&v303 - 3) = v63;
            *(&v303 - 2) = v123;
            *(&v303 - 1) = v127;
            goto LABEL_18;
          }

          __break(1u);
          goto LABEL_222;
        }

        v63 = v362;
        if (v105 >= v103[2])
        {
          break;
        }

        sub_1001CC14C(v103 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v105, v362, type metadata accessor for DeviceRecord);
        v107 = &v63[*(v361 + 24)];
        v108 = *v107;
        v109 = *(v107 + 1);
        v110 = (v70 + *(v64 + 28));
        if (v108 == *v110 && v109 == v110[1])
        {
          sub_1001CC1B4(v63, type metadata accessor for DeviceRecord);
LABEL_44:

LABEL_45:
          if ([v352 isFirstUnlocked])
          {
            sub_100192340();
            if (qword_1002F7A68 != -1)
            {
              swift_once();
            }

            v130 = v353;
            v131 = sub_1000EE91C(v353, qword_100300D48);
            v132 = v344;
            (*v343)(v344, v131, v130);
            v133 = sub_10018BDC8(v132);

            (*v350)(v132, v130);
          }

          else
          {
            v134 = static os_log_type_t.error.getter();
            v133 = _swiftEmptyArrayStorage;
            os_log(_:dso:log:_:_:)(v134, &_mh_execute_header, v354, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);
          }

          v135 = 0;
          v136 = v133[2];
          while (2)
          {
            if (v136 == v135)
            {

              v73 = *(v70 + 16);
              v145 = *(v70 + 8) == 0xD00000000000001ELL && v331 == v73;
              if (!v145 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                v97 = v351;
                goto LABEL_68;
              }

              v146 = static os_log_type_t.default.getter();
              v147 = swift_allocObject();
              *(v147 + 16) = v345;
              sub_1001CC14C(v70, v347, type metadata accessor for BTDeferredRecord);
              v148 = String.init<A>(describing:)();
              v150 = v149;
              *(v147 + 56) = &type metadata for String;
              *(v147 + 64) = sub_1000EE954();
              *(v147 + 32) = v148;
              *(v147 + 40) = v150;
              os_log(_:dso:log:_:_:)(v146, &_mh_execute_header, v354, "Remove deferred info record not found in cache anymore: %@", 58, 2, v147);

              v151 = sub_100192340();
              v152 = v70 + *(v64 + 28);
              v63 = *v152;
              v153 = *(v152 + 8);
              v154 = v327;
              URL.init(string:)();
              if ((*v336)(v154, 1, v353) != 1)
              {
                v155 = v326;
                v126 = v353;
                (*v334)(v326, v154, v353);
                v127 = v325;
                URL.appendingPathComponent(_:)();
                v128 = *v350;
                v156 = (*v350)(v155, v126);
                __chkstk_darwin(v156);
                *(&v303 - 4) = v151;
                *(&v303 - 3) = v63;
                *(&v303 - 2) = v153;
                *(&v303 - 1) = v127;
LABEL_18:
                OS_dispatch_queue.sync<A>(execute:)();

                v128(v127, v126);
                v73 = v355;
                v97 = v351;
                v64 = v332;
LABEL_19:
                v70 = v349;
                v61 = v335;
                goto LABEL_20;
              }

LABEL_222:
              __break(1u);
LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
LABEL_225:
              __break(1u);
LABEL_226:
              __break(1u);
LABEL_227:

              sub_1001CC1B4(v70, type metadata accessor for DeviceRecord);
              __break(1u);
LABEL_228:

              sub_1001CC1B4(v73, type metadata accessor for DeviceSupportInformationRecord);
              __break(1u);
LABEL_229:

              result = sub_1001CC1B4(v63, type metadata accessor for MagicPairingSettingsRecord);
              __break(1u);
              return result;
            }

            v63 = v360;
            if (v135 >= v133[2])
            {
              goto LABEL_177;
            }

            sub_1001CC14C(v133 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v135, v360, type metadata accessor for DeviceSupportInformationRecord);
            v137 = &v63[*(v359 + 24)];
            v138 = *v137;
            v139 = *(v137 + 1);
            v140 = (v70 + *(v64 + 28));
            if (v138 != *v140 || v139 != v140[1])
            {
              ++v135;
              v142 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v143 = v63;
              v144 = v142;
              sub_1001CC1B4(v143, type metadata accessor for DeviceSupportInformationRecord);
              if (v144)
              {
                goto LABEL_67;
              }

              continue;
            }

            break;
          }

          sub_1001CC1B4(v63, type metadata accessor for DeviceSupportInformationRecord);
LABEL_67:

LABEL_68:
          v157 = [v352 isFirstUnlocked];
          v158 = v333;
          if (v157)
          {
            sub_100192340();
            if (qword_1002F7A00 != -1)
            {
              swift_once();
            }

            v159 = v353;
            v160 = sub_1000EE91C(v353, qword_100300BA8);
            v161 = v344;
            (*v343)(v344, v160, v159);
            v162 = sub_10018C984(v161);

            (*v350)(v161, v159);
          }

          else
          {
            v163 = static os_log_type_t.error.getter();
            v162 = _swiftEmptyArrayStorage;
            os_log(_:dso:log:_:_:)(v163, &_mh_execute_header, v354, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
          }

          v164 = 0;
          v165 = v162[2];
          while (2)
          {
            if (v165 == v164)
            {

              v73 = *(v70 + 8);
              v174 = *(v70 + 16);
              v175 = v73 == 0x746553636967614DLL && v174 == 0xED000073676E6974;
              if (!v175 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                v97 = v351;
                goto LABEL_91;
              }

              v324 = v174;
              v176 = static os_log_type_t.default.getter();
              v177 = swift_allocObject();
              *(v177 + 16) = v345;
              sub_1001CC14C(v70, v347, type metadata accessor for BTDeferredRecord);
              v178 = String.init<A>(describing:)();
              v180 = v179;
              *(v177 + 56) = &type metadata for String;
              *(v177 + 64) = sub_1000EE954();
              *(v177 + 32) = v178;
              *(v177 + 40) = v180;
              os_log(_:dso:log:_:_:)(v176, &_mh_execute_header, v354, "Remove deferred magic record not found in cache anymore: %@", 59, 2, v177);

              v181 = sub_100192340();
              v182 = v70 + *(v64 + 28);
              v63 = *v182;
              v183 = *(v182 + 8);
              v184 = v322;
              URL.init(string:)();
              if ((*v336)(v184, 1, v353) == 1)
              {
                goto LABEL_223;
              }

              v185 = v321;
              v186 = v353;
              (*v334)(v321, v184, v353);
              v187 = v320;
              URL.appendingPathComponent(_:)();
              v324 = *v350;
              v188 = (v324)(v185, v186);
              __chkstk_darwin(v188);
              *(&v303 - 4) = v181;
              *(&v303 - 3) = v63;
              *(&v303 - 2) = v183;
              *(&v303 - 1) = v187;
              OS_dispatch_queue.sync<A>(execute:)();

              v189 = v187;
              v190 = v186;
              goto LABEL_119;
            }

            v63 = v357;
            if (v164 >= v162[2])
            {
              goto LABEL_178;
            }

            sub_1001CC14C(v162 + ((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v164, v357, type metadata accessor for MagicPairingSettingsRecord);
            v166 = &v63[*(v158 + 24)];
            v167 = *v166;
            v168 = *(v166 + 1);
            v169 = (v70 + *(v64 + 28));
            if (v167 != *v169 || v168 != v169[1])
            {
              ++v164;
              v171 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v172 = v63;
              v173 = v171;
              sub_1001CC1B4(v172, type metadata accessor for MagicPairingSettingsRecord);
              if (v173)
              {
                goto LABEL_90;
              }

              continue;
            }

            break;
          }

          sub_1001CC1B4(v63, type metadata accessor for MagicPairingSettingsRecord);
LABEL_90:

LABEL_91:
          v364 = &type metadata for AudioAccessoryFeatures;
          v191 = sub_1000F1874();
          v365 = v191;
          v192 = isFeatureEnabled(_:)();
          sub_1000EF824(&v363);
          if (v192)
          {
            v193 = sub_100194C84();
            __chkstk_darwin(v193);
            *(&v303 - 2) = v70;
            v194 = sub_10017CF20(sub_1001CBCDC, (&v303 - 4), v193);

            if ((v194 & 1) == 0)
            {
              v232 = *(v70 + 8);
              v233 = *(v70 + 16);
              if ((v232 != 0x6563697665444141 || v233 != 0xEE0064726F636552) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                v97 = v351;
                goto LABEL_93;
              }

              v315 = v233;
              v324 = v232;
              v234 = static os_log_type_t.default.getter();
              v235 = swift_allocObject();
              *(v235 + 16) = v345;
              sub_1001CC14C(v70, v347, type metadata accessor for BTDeferredRecord);
              v236 = String.init<A>(describing:)();
              v73 = v237;
              *(v235 + 56) = &type metadata for String;
              *(v235 + 64) = sub_1000EE954();
              *(v235 + 32) = v236;
              *(v235 + 40) = v73;
              os_log(_:dso:log:_:_:)(v234, &_mh_execute_header, v354, "Remove deferred AADeviceRecord not found in cache anymore: %@", 61, 2, v235);

              v238 = sub_100192340();
              v239 = v70 + *(v64 + 28);
              v63 = *v239;
              v240 = *(v239 + 8);
              v241 = v314;
              URL.init(string:)();
              if ((*v336)(v241, 1, v353) == 1)
              {
                goto LABEL_225;
              }

              v242 = v313;
              v209 = v353;
              (*v334)(v313, v241, v353);
              v210 = v312;
              URL.appendingPathComponent(_:)();
              v324 = *v350;
              v243 = (v324)(v242, v209);
              __chkstk_darwin(v243);
              *(&v303 - 4) = v238;
              *(&v303 - 3) = v63;
              *(&v303 - 2) = v240;
              *(&v303 - 1) = v210;
LABEL_117:
              OS_dispatch_queue.sync<A>(execute:)();

              v189 = v210;
LABEL_118:
              v190 = v209;
LABEL_119:
              v324(v189, v190);
              v73 = v355;
              v97 = v351;
              goto LABEL_19;
            }
          }

LABEL_93:
          v364 = &type metadata for AudioAccessoryFeatures;
          v365 = v191;
          v195 = isFeatureEnabled(_:)();
          sub_1000EF824(&v363);
          if (v195)
          {
            v196 = sub_100194EB4();
            __chkstk_darwin(v196);
            *(&v303 - 2) = v70;
            v197 = sub_10017CF20(sub_1001CBCB4, (&v303 - 4), v196);

            v73 = v355;
            if ((v197 & 1) == 0)
            {
              v198 = *(v70 + 8);
              v199 = *(v70 + 16);
              if (v198 == 0xD000000000000011 && v308 == v199 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v315 = v199;
                v324 = v198;
                v200 = static os_log_type_t.default.getter();
                v201 = swift_allocObject();
                *(v201 + 16) = v345;
                sub_1001CC14C(v70, v347, type metadata accessor for BTDeferredRecord);
                v202 = String.init<A>(describing:)();
                v73 = v203;
                *(v201 + 56) = &type metadata for String;
                *(v201 + 64) = sub_1000EE954();
                *(v201 + 32) = v202;
                *(v201 + 40) = v73;
                os_log(_:dso:log:_:_:)(v200, &_mh_execute_header, v354, "Remove deferred AAProxCardsRecord not found in cache anymore: %@", 64, 2, v201);

                v204 = sub_100192340();
                v205 = v70 + *(v64 + 28);
                v63 = *v205;
                v206 = *(v205 + 8);
                v207 = v311;
                URL.init(string:)();
                if ((*v336)(v207, 1, v353) == 1)
                {
                  goto LABEL_226;
                }

                v208 = v310;
                v209 = v353;
                (*v334)(v310, v207, v353);
                v210 = v309;
                URL.appendingPathComponent(_:)();
                v324 = *v350;
                v211 = (v324)(v208, v209);
                __chkstk_darwin(v211);
                *(&v303 - 4) = v204;
                *(&v303 - 3) = v63;
                *(&v303 - 2) = v206;
                *(&v303 - 1) = v210;
                goto LABEL_117;
              }

              v97 = v351;
            }
          }

          else
          {
            v73 = v355;
          }

          if ([v352 isFirstUnlocked])
          {
            sub_100192340();
            if (qword_1002F7A60 != -1)
            {
              swift_once();
            }

            v212 = v353;
            v213 = sub_1000EE91C(v353, qword_100300C40);
            v214 = v344;
            (*v343)(v344, v213, v212);
            v215 = sub_10018E14C(v214, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

            v216 = (*v350)(v214, v212);
          }

          else
          {
            v217 = static os_log_type_t.error.getter();
            v215 = _swiftEmptyArrayStorage;
            v216 = os_log(_:dso:log:_:_:)(v217, &_mh_execute_header, v354, "hmDeviceCloudRecords call failed because device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
          }

          __chkstk_darwin(v216);
          *(&v303 - 2) = v70;
          v218 = sub_10017CF20(sub_1001CBC80, (&v303 - 4), v215);

          if ((v218 & 1) == 0)
          {
            v219 = *(v70 + 8);
            v220 = *(v70 + 16);
            if (v219 == 0xD000000000000013 && v316 == v220 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v315 = v220;
              v324 = v219;
              v221 = static os_log_type_t.default.getter();
              v222 = swift_allocObject();
              *(v222 + 16) = v345;
              sub_1001CC14C(v70, v347, type metadata accessor for BTDeferredRecord);
              v223 = String.init<A>(describing:)();
              v73 = v224;
              *(v222 + 56) = &type metadata for String;
              *(v222 + 64) = sub_1000EE954();
              *(v222 + 32) = v223;
              *(v222 + 40) = v73;
              os_log(_:dso:log:_:_:)(v221, &_mh_execute_header, v354, "Remove deferred HMDeviceCloudRecord not found in cache anymore: %@", 66, 2, v222);

              v225 = sub_100192340();
              v226 = v70 + *(v64 + 28);
              v63 = *v226;
              v227 = *(v226 + 8);
              v228 = v319;
              URL.init(string:)();
              if ((*v336)(v228, 1, v353) == 1)
              {
                goto LABEL_224;
              }

              v229 = v318;
              v209 = v353;
              (*v334)(v318, v228, v353);
              v230 = v317;
              URL.appendingPathComponent(_:)();
              v324 = *v350;
              v231 = (v324)(v229, v209);
              __chkstk_darwin(v231);
              *(&v303 - 4) = v225;
              *(&v303 - 3) = v63;
              *(&v303 - 2) = v227;
              *(&v303 - 1) = v230;
              OS_dispatch_queue.sync<A>(execute:)();

              v189 = v230;
              goto LABEL_118;
            }

            v97 = v351;
          }

LABEL_20:
          sub_1001CC1B4(v70, type metadata accessor for BTDeferredRecord);
          v98 = v348;
          v63 = v339;
          if (v348 == v338)
          {

            goto LABEL_128;
          }

          goto LABEL_21;
        }

        ++v105;
        v112 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v113 = v63;
        v114 = v112;
        sub_1001CC1B4(v113, type metadata accessor for DeviceRecord);
        if (v114)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    v99 = 0;
LABEL_128:
    v362 = objc_opt_self();
    v244 = [v362 isFirstUnlocked];
    v61 = v356;
    if (v244)
    {
      sub_100192340();
      if (qword_1002F79C0 != -1)
      {
        swift_once();
      }

      v245 = v353;
      v246 = sub_1000EE91C(v353, qword_100300AF0);
      v247 = v323;
      v64 = v344;
      (*(v323 + 16))(v344, v246, v245);
      v248 = sub_10018B20C(v64);

      (*(v247 + 8))(v64, v245);
      v249 = v248[2];
      if (v249)
      {
LABEL_134:
        v251 = 0;
        while (v251 < v248[2])
        {
          v70 = v341;
          sub_1001CC14C(v248 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v251, v341, type metadata accessor for DeviceRecord);
          sub_10019A080(v70, v61);
          if (v99)
          {
            goto LABEL_227;
          }

          ++v251;
          sub_1001CC1B4(v70, type metadata accessor for DeviceRecord);
          v97 = v351;
          if (v249 == v251)
          {
            goto LABEL_138;
          }
        }

        goto LABEL_179;
      }
    }

    else
    {
      v250 = static os_log_type_t.error.getter();
      v248 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v250, &_mh_execute_header, v354, "deviceRecords call failed because in device is in beforeFirstUnlock state", 73, 2, _swiftEmptyArrayStorage);
      v249 = _swiftEmptyArrayStorage[2];
      if (v249)
      {
        goto LABEL_134;
      }
    }

LABEL_138:

    if ([v362 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A68 != -1)
      {
        swift_once();
      }

      v252 = v353;
      v253 = sub_1000EE91C(v353, qword_100300D48);
      v254 = v323;
      v64 = v344;
      (*(v323 + 16))(v344, v253, v252);
      v255 = sub_10018BDC8(v64);

      (*(v254 + 8))(v64, v252);
      v256 = v255[2];
      if (v256)
      {
LABEL_144:
        v258 = 0;
        while (v258 < v255[2])
        {
          v259 = v255 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v258;
          v73 = v340;
          sub_1001CC14C(v259, v340, type metadata accessor for DeviceSupportInformationRecord);
          sub_1001A0974(v73, v61);
          if (v99)
          {
            goto LABEL_228;
          }

          ++v258;
          sub_1001CC1B4(v73, type metadata accessor for DeviceSupportInformationRecord);
          v73 = v355;
          if (v256 == v258)
          {
            goto LABEL_148;
          }
        }

        goto LABEL_180;
      }
    }

    else
    {
      v257 = static os_log_type_t.error.getter();
      v255 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v257, &_mh_execute_header, v354, "deviceSupportInformationRecords call failed because in device is in beforeFirstUnlock state", 91, 2, _swiftEmptyArrayStorage);
      v256 = _swiftEmptyArrayStorage[2];
      if (v256)
      {
        goto LABEL_144;
      }
    }

LABEL_148:

    if ([v362 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v260 = v353;
      v261 = sub_1000EE91C(v353, qword_100300BA8);
      v262 = v323;
      v64 = v344;
      (*(v323 + 16))(v344, v261, v260);
      v263 = sub_10018C984(v64);

      (*(v262 + 8))(v64, v260);
      v264 = v263[2];
      if (v264)
      {
LABEL_154:
        v266 = 0;
        while (v266 < v263[2])
        {
          sub_1001CC14C(v263 + ((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v266, v63, type metadata accessor for MagicPairingSettingsRecord);
          sub_1001A0F08(v63, v61);
          if (v99)
          {
            goto LABEL_229;
          }

          ++v266;
          sub_1001CC1B4(v63, type metadata accessor for MagicPairingSettingsRecord);
          if (v264 == v266)
          {
            goto LABEL_158;
          }
        }

        goto LABEL_181;
      }
    }

    else
    {
      v265 = static os_log_type_t.error.getter();
      v263 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)(v265, &_mh_execute_header, v354, "magicPairingSettingsRecords call failed because in device is in beforeFirstUnlock state", 87, 2, _swiftEmptyArrayStorage);
      v264 = _swiftEmptyArrayStorage[2];
      if (v264)
      {
        goto LABEL_154;
      }
    }

LABEL_158:

    v63 = v306;
    sub_10019493C(v306);
    if ((*(v304 + 48))(v63, 1, v305) == 1)
    {
      sub_1000EEE6C(v63, &qword_1002F84F8, &unk_1002299F0);
    }

    else
    {
      v267 = v307;
      sub_1001CC214(v63, v307, type metadata accessor for SoundProfileRecord);
      v268 = objc_autoreleasePoolPush();
      v269 = sub_100169D38(*v267, *(v267 + 8));
      if (!v269)
      {
        v269 = sub_1000F82C4().super.isa;
      }

      v270 = v269;
      v363 = v269;
      sub_1000FD23C(&v363);
      objc_autoreleasePoolPop(v268);
      v271 = [v270 recordChangeTag];
      if (v271)
      {
        v272 = v271;

        sub_1001CC1B4(v267, type metadata accessor for SoundProfileRecord);
      }

      else
      {
        v273 = static os_log_type_t.default.getter();
        v64 = swift_allocObject();
        *(v64 + 16) = v345;
        v274 = sub_1000FAF14();
        v276 = v275;
        *(v64 + 56) = &type metadata for String;
        *(v64 + 64) = sub_1000EE954();
        *(v64 + 32) = v274;
        *(v64 + 40) = v276;
        os_log(_:dso:log:_:_:)(v273, &_mh_execute_header, v354, "Retry cloud upload for deferred sound profile record: %@", 56, 2, v64);

        sub_100193560();
        v277 = swift_allocObject();
        swift_weakInit();

        sub_100154534(v270, 0, sub_1001CBCA8, v277);

        swift_unknownObjectRelease();

        sub_1001CC1B4(v267, type metadata accessor for SoundProfileRecord);
      }
    }

    v364 = &type metadata for AudioAccessoryFeatures;
    v365 = sub_1000F1874();
    v278 = isFeatureEnabled(_:)();
    sub_1000EF824(&v363);
    if ((v278 & 1) == 0)
    {
      goto LABEL_201;
    }

    v279 = sub_100194C84();
    v280 = v279;
    if (!(v279 >> 62))
    {
      v281 = *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v281)
      {
        break;
      }

      goto LABEL_168;
    }

    v281 = _CocoaArrayWrapper.endIndex.getter();
    if (!v281)
    {
      break;
    }

LABEL_168:
    v282 = 0;
    while (1)
    {
      if ((v280 & 0xC000000000000001) != 0)
      {
        v283 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v282 >= *((v280 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_184;
        }

        v283 = *(v280 + 8 * v282 + 32);
      }

      v64 = v283;
      v284 = v282 + 1;
      if (__OFADD__(v282, 1))
      {
        break;
      }

      v363 = v283;
      sub_1001A29D4(&v363, v356);

      ++v282;
      if (v284 == v281)
      {
        goto LABEL_187;
      }
    }

LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    swift_once();
  }

LABEL_187:

  v285 = sub_100194EB4();
  v286 = v285;
  if (v285 >> 62)
  {
    goto LABEL_199;
  }

  for (i = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v288 = 0;
    while (1)
    {
      if ((v286 & 0xC000000000000001) != 0)
      {
        v289 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v288 >= *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_198;
        }

        v289 = *(v286 + 8 * v288 + 32);
      }

      v290 = v289;
      v291 = v288 + 1;
      if (__OFADD__(v288, 1))
      {
        break;
      }

      v363 = v289;
      sub_1001A2FB4(&v363, v356);

      ++v288;
      if (v291 == i)
      {
        goto LABEL_200;
      }
    }

    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    ;
  }

LABEL_200:

  v61 = v356;
LABEL_201:
  if ([v362 isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v292 = v353;
    v293 = sub_1000EE91C(v353, qword_100300C40);
    v294 = v323;
    v295 = v344;
    (*(v323 + 16))(v344, v293, v292);
    v296 = sub_10018E14C(v295, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

    (*(v294 + 8))(v295, v292);
  }

  else
  {
    v297 = static os_log_type_t.error.getter();
    v296 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)(v297, &_mh_execute_header, v354, "hmDeviceCloudRecords call failed because device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
  }

  if (v296 >> 62)
  {
    goto LABEL_218;
  }

  for (j = *((v296 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v299 = 0;
    while (1)
    {
      if ((v296 & 0xC000000000000001) != 0)
      {
        v300 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v299 >= *((v296 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_217;
        }

        v300 = *(v296 + 8 * v299 + 32);
      }

      v301 = v300;
      v302 = v299 + 1;
      if (__OFADD__(v299, 1))
      {
        break;
      }

      v363 = v300;
      sub_1001A3594(&v363, v61);

      ++v299;
      if (v302 == j)
      {
        goto LABEL_219;
      }
    }

    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    ;
  }

LABEL_219:
}

uint64_t sub_100199AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BTDeferredRecord(0);
  __chkstk_darwin(v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v7 - 8);
  v9 = v44 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v44 - v15;
  if (a1)
  {
    swift_errorRetain();
    v17 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v18 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100226C80;
    sub_1001CC14C(a2, v6, type metadata accessor for BTDeferredRecord);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    v23 = sub_1000EE954();
    *(v19 + 64) = v23;
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v45 = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v24 = String.init<A>(describing:)();
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v23;
    *(v19 + 72) = v24;
    *(v19 + 80) = v25;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Error removing deferred deleted record: %@ - error? - %@", 56, 2, v19);
  }

  else
  {
    v27 = sub_100192340();
    v28 = v4;
    v29 = v27;
    v44[1] = v28;
    v44[0] = UUID.uuidString.getter();
    v31 = v30;
    URL.init(string:)();
    result = (*(v11 + 48))(v9, 1, v10);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      URL.appendingPathComponent(_:)();
      v32 = *(v11 + 8);
      v33 = v32(v13, v10);
      __chkstk_darwin(v33);
      v34 = v44[0];
      v44[-4] = v29;
      v44[-3] = v34;
      v44[0] = a2;
      v44[-2] = v31;
      v44[-1] = v16;
      OS_dispatch_queue.sync<A>(execute:)();

      v32(v16, v10);
      v35 = static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v36 = qword_100300E38;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100226C80;
      sub_1001CC14C(v44[0], v6, type metadata accessor for BTDeferredRecord);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      *(v37 + 56) = &type metadata for String;
      v41 = sub_1000EE954();
      *(v37 + 64) = v41;
      *(v37 + 32) = v38;
      *(v37 + 40) = v40;
      v45 = 0;
      sub_1000EE870(&qword_1002F9E10, &qword_100229AB0);
      v42 = String.init<A>(describing:)();
      *(v37 + 96) = &type metadata for String;
      *(v37 + 104) = v41;
      *(v37 + 72) = v42;
      *(v37 + 80) = v43;
      os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v36, "Running remove deferred deleted record: %@ - error? - %@", 56, 2, v37);
    }
  }

  return result;
}

uint64_t sub_10019A004(void *a1, uint64_t a2, void *a3)
{
  v3 = (*a1 + *a3);
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + *(type metadata accessor for BTDeferredRecord(0) + 28));
  if (v4 == *v6 && v5 == v6[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10019A080(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v50 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  v18 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*a1, *(a1 + 8));
  if (!isa)
  {
    isa = sub_1000F8490().super.isa;
  }

  v20 = isa;
  v55 = isa;
  sub_1000EC524(&v55);
  objc_autoreleasePoolPop(v18);
  v21 = [v20 recordChangeTag];
  v54 = v20;
  if (!v21)
  {
    goto LABEL_13;
  }

  v51 = v8;

  v22 = type metadata accessor for DeviceRecord(0);
  (*(v10 + 16))(v17, a1 + *(v22 + 48), v9);
  v23 = [v20 modificationDate];
  if (v23)
  {
    v24 = v52;
    v25 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = *(v10 + 32);
    v27 = v17;
    v28 = v14;
    v29 = v51;
    v26(v51, v24, v9);
    (*(v10 + 56))(v29, 0, 1, v9);
    v30 = v28;
    v31 = v29;
    v14 = v28;
    v17 = v27;
    v26(v30, v31, v9);
  }

  else
  {
    v32 = *(v10 + 56);
    v32(v51, 1, 1, v9);
    v33 = [v20 creationDate];
    if (v33)
    {
      v50 = v32;
      v34 = v33;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = v5;
      v36 = *(v10 + 32);
      v36(v35, v52, v9);
      v50(v35, 0, 1, v9);
      v36(v14, v35, v9);
      v37 = *(v10 + 48);
    }

    else
    {
      v32(v5, 1, 1, v9);
      static Date.now.getter();
      v38 = v5;
      v37 = *(v10 + 48);
      if (v37(v38, 1, v9) != 1)
      {
        sub_1000EEE6C(v38, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v39 = v51;
    if (v37(v51, 1, v9) != 1)
    {
      sub_1000EEE6C(v39, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v40 = static Date.> infix(_:_:)();
  v41 = *(v10 + 8);
  v41(v14, v9);
  v41(v17, v9);
  v42 = v54;
  if (v40)
  {
LABEL_13:
    v43 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v44 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100226100;
    v46 = sub_1000EA6CC();
    v48 = v47;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_1000EE954();
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "Retry cloud upload for deferred record: %@", 42, 2, v45);

    sub_100193560();
    v49 = swift_allocObject();
    swift_weakInit();

    v42 = v54;
    sub_100154534(v54, 0, sub_1001CBF74, v49);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10019A610(void *a1, uint64_t a2, int a3)
{
  LODWORD(v792) = a3;
  *&v788 = a2;
  v5 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  __chkstk_darwin(v5 - 8);
  v734 = &v727[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v743 = &v727[-v8];
  __chkstk_darwin(v9);
  v735 = &v727[-v10];
  __chkstk_darwin(v11);
  v755 = &v727[-v12];
  v760 = type metadata accessor for LegacyMagicPairingSettingsRecords(0);
  v757 = *(v760 - 8);
  __chkstk_darwin(v760);
  v733 = &v727[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v738 = &v727[-v15];
  __chkstk_darwin(v16);
  v745 = &v727[-v17];
  __chkstk_darwin(v18);
  v20 = &v727[-v19];
  v21 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  __chkstk_darwin(v21 - 8);
  v779 = &v727[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v780 = &v727[-v24];
  v25 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  __chkstk_darwin(v25 - 8);
  v741 = &v727[-v26];
  v746 = type metadata accessor for MagicPairingSettingsRecord(0);
  v740 = *(v746 - 8);
  __chkstk_darwin(v746);
  v742 = &v727[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v744 = &v727[-v29];
  __chkstk_darwin(v30);
  v736 = &v727[-v31];
  __chkstk_darwin(v32);
  v737 = &v727[-v33];
  v34 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  __chkstk_darwin(v34 - 8);
  v747 = &v727[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v752 = &v727[-v37];
  v756 = type metadata accessor for DeviceSupportInformationRecord(0);
  v753 = *(v756 - 8);
  __chkstk_darwin(v756);
  v750 = &v727[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v739 = &v727[-v40];
  __chkstk_darwin(v41);
  v751 = &v727[-v42];
  __chkstk_darwin(v43);
  v748 = &v727[-v44];
  __chkstk_darwin(v45);
  v749 = &v727[-v46];
  v47 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  __chkstk_darwin(v47 - 8);
  v763 = &v727[-v48];
  v770 = type metadata accessor for DeviceRecord(0);
  v762 = *(v770 - 8);
  __chkstk_darwin(v770);
  v766 = &v727[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v50);
  v769 = &v727[-v51];
  __chkstk_darwin(v52);
  v758 = &v727[-v53];
  __chkstk_darwin(v54);
  v759 = &v727[-v55];
  v56 = type metadata accessor for Date();
  v791 = *(v56 - 8);
  __chkstk_darwin(v56);
  v58 = &v727[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v59);
  v61 = &v727[-v60];
  __chkstk_darwin(v62);
  v768 = &v727[-v63];
  __chkstk_darwin(v64);
  *&v786 = &v727[-v65];
  __chkstk_darwin(v66);
  v765 = &v727[-v67];
  __chkstk_darwin(v68);
  v778 = &v727[-v69];
  __chkstk_darwin(v70);
  v774 = &v727[-v71];
  __chkstk_darwin(v72);
  v787 = &v727[-v73];
  v74 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v74 - 8);
  v767 = &v727[-((v75 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v76);
  v776 = &v727[-v77];
  __chkstk_darwin(v78);
  v785 = &v727[-v79];
  __chkstk_darwin(v80);
  v783 = &v727[-v81];
  __chkstk_darwin(v82);
  v764 = &v727[-v83];
  __chkstk_darwin(v84);
  v773 = &v727[-v85];
  __chkstk_darwin(v86);
  v771 = &v727[-v87];
  __chkstk_darwin(v88);
  v772 = &v727[-v89];
  v90 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  __chkstk_darwin(v90 - 8);
  v782 = &v727[-v91];
  v92 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v92 - 8);
  v781 = &v727[-v93];
  v790 = type metadata accessor for UUID();
  v789 = *(v790 - 1);
  __chkstk_darwin(v790);
  v784 = &v727[-((v94 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v95);
  v777 = &v727[-v96];
  v97 = type metadata accessor for DispatchPredicate();
  v98 = *(v97 - 1);
  v99 = __chkstk_darwin(v97);
  v101 = &v727[-((v100 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v799 = v3;
  v102 = *(v3 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  *v101 = v102;
  (*(v98 + 104))(v101, enum case for DispatchPredicate.onQueue(_:), v97, v99);
  v103 = v102;
  v104 = _dispatchPreconditionTest(_:)();
  v106 = *(v98 + 8);
  v105 = v98 + 8;
  v106(v101, v97);
  if ((v104 & 1) == 0)
  {
    __break(1u);
    goto LABEL_245;
  }

  v107 = [a1 encryptedValues];
  v108 = String._bridgeToObjectiveC()();
  v109 = [v107 objectForKeyedSubscript:v108];
  swift_unknownObjectRelease();

  v793 = v56;
  v775 = v58;
  v754 = v20;
  if (v109 && (*&v805 = v109, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v111 = *(&v808 + 1);
    v110 = v808;
  }

  else
  {
    v112 = [a1 recordID];
    v113 = [v112 recordName];

    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v114;
  }

  sub_100193560();
  v115 = type metadata accessor for CloudCoordinator(0);
  v116 = sub_10015A5B8(v115, &off_1002BE310);
  swift_unknownObjectRelease();
  if ((v116 & 1) == 0)
  {
    LODWORD(v800) = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v127 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_100226C80;
    *(v128 + 56) = &type metadata for String;
    v129 = sub_1000EE954();
    *(v128 + 64) = v129;
    *(v128 + 32) = v110;
    *(v128 + 40) = v111;

    v130 = a1;
    v131 = [v130 description];
    v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v110;
    v135 = v134;

    *(v128 + 96) = &type metadata for String;
    *(v128 + 104) = v129;
    *(v128 + 72) = v132;
    *(v128 + 80) = v135;
    os_log(_:dso:log:_:_:)(v800, &_mh_execute_header, v127, "Skip processing cloud record - %@, we are no longer signed-into an iCloud Account: %@", 85, 2, v128);

    v136 = v799;
    v137 = v133;
    v138 = v111;
    goto LABEL_130;
  }

  v795 = v110;
  v117 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v797 = qword_100300E38;
  v796 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1002290E0;
  v119 = CKRecord.recordType.getter();
  v121 = v120;
  *(v118 + 56) = &type metadata for String;
  v798 = sub_1000EE954();
  *(v118 + 64) = v798;
  *(v118 + 32) = v119;
  *(v118 + 40) = v121;
  v122 = [a1 modifiedByDevice];
  v729 = v61;
  if (v122)
  {
    v123 = v122;
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;
  }

  else
  {
    v126 = 0xE200000000000000;
    v124 = 15932;
  }

  v139 = &type metadata for String;
  v140 = v798;
  *(v118 + 96) = &type metadata for String;
  *(v118 + 104) = v140;
  *(v118 + 72) = v124;
  *(v118 + 80) = v126;
  *(v118 + 136) = &type metadata for String;
  *(v118 + 144) = v140;
  *(v118 + 112) = v795;
  *(v118 + 120) = v111;

  v141 = a1;
  v142 = [v141 description];
  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v145 = v144;

  *(v118 + 176) = &type metadata for String;
  *(v118 + 184) = v140;
  *(v118 + 152) = v143;
  *(v118 + 160) = v145;
  *(v118 + 216) = &type metadata for Bool;
  *(v118 + 224) = &protocol witness table for Bool;
  LODWORD(v142) = v792 & 1;
  *(v118 + 192) = v142;
  os_log(_:dso:log:_:_:)(v117, &_mh_execute_header, v797, "CloudSync: Process updated cloud record (%@) modified by device: [%@] is [%@] %@, updateDelegate: %d", 100, 2, v118);

  v146 = IsAppleInternalBuild();
  v794 = v111;
  v728 = v142;
  if (v146)
  {
    v147 = static os_log_type_t.default.getter();
  }

  else
  {
    v147 = static os_log_type_t.debug.getter();
  }

  v732 = v147;
  v148 = swift_allocObject();
  v761 = xmmword_100226C80;
  *(v148 + 16) = xmmword_100226C80;
  v149 = [v141 recordID];
  v150 = [v149 recordName];

  v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v153 = v152;

  v154 = v798;
  *(v148 + 56) = &type metadata for String;
  *(v148 + 64) = v154;
  *(v148 + 32) = v151;
  *(v148 + 40) = v153;
  v800 = v141;
  v155 = [v141 encryptedValues];
  v156 = [v155 allKeys];
  swift_unknownObjectRelease();
  v157 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v158 = 0;
  v731 = 0;
  v159 = _swiftEmptyArrayStorage;
  *&v808 = _swiftEmptyArrayStorage;
  v160 = *(v157 + 16);
  v161 = v157 + 40;
  v730 = v157 + 40;
LABEL_19:
  v162 = (v161 + 16 * v158);
  while (1)
  {
    if (v160 == v158)
    {

      sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
      v165 = Array.description.getter();
      v167 = v166;

      v20 = &type metadata for String;
      v168 = v798;
      *(v148 + 96) = &type metadata for String;
      *(v148 + 104) = v168;
      *(v148 + 72) = v165;
      *(v148 + 80) = v167;
      os_log(_:dso:log:_:_:)(v732, &_mh_execute_header, v797, "Process CKRecord %@ - values: %@", 32, 2, v148);

      v810 = 0;
      v808 = 0u;
      v809 = 0u;
      v169 = v800;
      v170 = CKRecord.recordType.getter();
      v171 = v795;
      sub_1001BEBB4(v795, v794, v170, v172, &v802);

      if (v803)
      {
LABEL_27:
        sub_1000EEE6C(&v808, &qword_1002F9D98, &qword_100229A58);
        sub_1001CB640(&v802, &v805);
        sub_1001CB640(&v805, &v808);
        goto LABEL_40;
      }

      sub_1000EEE6C(&v802, &qword_1002F9D98, &qword_100229A58);
      v173 = v781;
      UUID.init(uuidString:)();
      v174 = v789;
      v175 = v790;
      if ((v789[6])(v173, 1, v790) == 1)
      {
        sub_1000EEE6C(v173, &qword_1002F8000, &unk_1002262C0);
        v176 = v782;
      }

      else
      {
        v177 = v777;
        (v174[4])(v777, v173, v175);
        v178 = CKRecord.recordType.getter();
        sub_1001BD42C(v177, v178, v179, &v802);

        (v789)[1](v177, v790);
        v176 = v782;
        if (v803)
        {
          goto LABEL_27;
        }

        sub_1000EEE6C(&v802, &qword_1002F9D98, &qword_100229A58);
      }

      if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x80000001002671C0 == v180)
      {
      }

      else
      {
        v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v181 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      sub_10019493C(v176);
      v182 = type metadata accessor for SoundProfileRecord(0);
      if ((*(*(v182 - 8) + 48))(v176, 1, v182) == 1)
      {
        sub_1000EEE6C(&v808, &qword_1002F9D98, &qword_100229A58);
        sub_1000EEE6C(v176, &qword_1002F84F8, &unk_1002299F0);
        v805 = 0u;
        v806 = 0u;
        v807 = 0;
      }

      else
      {
        *(&v806 + 1) = v182;
        v807 = sub_1001C4BB4(&unk_1002F9CA0, type metadata accessor for SoundProfileRecord, &unk_100227314);
        v183 = sub_100133584(&v805);
        sub_1001CC214(v176, v183, type metadata accessor for SoundProfileRecord);
        sub_1000EEE6C(&v808, &qword_1002F9D98, &qword_100229A58);
      }

      v808 = v805;
      v809 = v806;
      v810 = v807;
LABEL_40:
      sub_1000FAAFC(&v808, &v802, &qword_1002F9D98, &qword_100229A58);
      if (v803)
      {
        sub_1001CB640(&v802, &v805);
        if (IsAppleInternalBuild())
        {
          v184 = static os_log_type_t.default.getter();
        }

        else
        {
          v184 = static os_log_type_t.debug.getter();
        }

        v200 = v184;
        v201 = swift_allocObject();
        *(v201 + 16) = v761;
        v202 = *(&v806 + 1);
        v203 = v807;
        sub_1000EF78C(&v805, *(&v806 + 1));
        v204 = (*(v203 + 56))(v202, v203);
        v205 = [v204 recordID];

        v206 = [v205 recordName];
        v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v209 = v208;

        v210 = v798;
        *(v201 + 56) = &type metadata for String;
        *(v201 + 64) = v210;
        *(v201 + 32) = v207;
        *(v201 + 40) = v209;
        v211 = *(&v806 + 1);
        v212 = v807;
        sub_1000EF78C(&v805, *(&v806 + 1));
        v213 = (*(v212 + 56))(v211, v212);
        v214 = [v213 encryptedValues];

        v215 = [v214 allKeys];
        swift_unknownObjectRelease();
        v216 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        __chkstk_darwin(v217);
        *&v727[-16] = &v805;
        v218 = v731;
        sub_1001400F0(sub_1001CB658, &v727[-32], v216);
        v782 = v218;

        v219 = Array.description.getter();
        v221 = v220;

        *(v201 + 96) = &type metadata for String;
        *(v201 + 104) = v210;
        *(v201 + 72) = v219;
        *(v201 + 80) = v221;
        os_log(_:dso:log:_:_:)(v200, &_mh_execute_header, v797, "Cached CKRecord %@ - values: %@", 31, 2, v201);

        v222 = *(&v806 + 1);
        v223 = v807;
        sub_1000EF78C(&v805, *(&v806 + 1));
        v224 = v784;
        (*(*(v223 + 8) + 32))(v222);
        v225 = UUID.uuidString.getter();
        v227 = v226;
        (v789)[1](v224, v790);
        v228 = v800;
        v229 = [v800 recordID];
        v230 = [v229 recordName];

        v231 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v233 = v232;

        if (v225 == v231 && v227 == v233)
        {

          v234 = v793;
          v235 = v791;
          v139 = v786;
          v236 = v785;
        }

        else
        {
          v237 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v234 = v793;
          v235 = v791;
          v139 = v786;
          v236 = v785;
          if ((v237 & 1) == 0)
          {
            v263 = [v228 creationDate];
            if (v263)
            {
              v264 = v771;
              v265 = v263;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v266 = 0;
              v267 = v773;
              v268 = v772;
            }

            else
            {
              v266 = 1;
              v267 = v773;
              v268 = v772;
              v264 = v771;
            }

            v790 = *(v235 + 56);
            (v790)(v264, v266, 1, v234);
            sub_1000EED5C(v264, v268);
            v789 = *(v235 + 48);
            if ((v789)(v268, 1, v234))
            {
              sub_1000EEE6C(v268, &qword_1002F7EF0, &unk_100226C90);
              v322 = 0.0;
            }

            else
            {
              v323 = v787;
              (*(v235 + 16))(v787, v268, v234);
              sub_1000EEE6C(v268, &qword_1002F7EF0, &unk_100226C90);
              Date.timeIntervalSince1970.getter();
              v322 = v324;
              (*(v235 + 8))(v323, v234);
            }

            v325 = *(&v806 + 1);
            v326 = v807;
            sub_1000EF78C(&v805, *(&v806 + 1));
            v327 = (*(v326 + 56))(v325, v326);
            v328 = [v327 creationDate];

            if (v328)
            {
              v329 = v787;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v330 = *(v235 + 32);
              v330(v267, v329, v234);
              (v790)(v267, 0, 1, v234);
              v331 = v774;
              v330(v774, v267, v234);
            }

            else
            {
              (v790)(v267, 1, 1, v234);
              v332 = *(&v806 + 1);
              v333 = v807;
              sub_1000EF78C(&v805, *(&v806 + 1));
              v334 = *(v333 + 40);
              v335 = v333;
              v331 = v774;
              v334(v332, v335);
              if ((v789)(v267, 1, v234) != 1)
              {
                sub_1000EEE6C(v267, &qword_1002F7EF0, &unk_100226C90);
              }
            }

            Date.timeIntervalSince1970.getter();
            v337 = v336;
            v338 = *(v235 + 8);
            v338(v331, v234);
            v339 = [objc_allocWithZone(NSNumber) initWithDouble:v322 - v337];
            v340 = String._bridgeToObjectiveC()();
            sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
            v341 = swift_allocObject();
            v786 = xmmword_100226100;
            *(v341 + 16) = xmmword_100226100;
            *(v341 + 32) = 0xD000000000000016;
            *(v341 + 40) = 0x8000000100270340;
            *(v341 + 48) = v339;
            v342 = v339;
            sub_1000F9D9C(v341);
            swift_setDeallocating();
            sub_1000EEE6C(v341 + 32, &qword_1002F9380, &unk_100229A70);
            swift_deallocClassInstance();
            sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            CUMetricsLog();

            v344 = [v800 creationDate];
            if (v344)
            {
              v345 = v344;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v346 = *(&v806 + 1);
              v347 = v807;
              sub_1000EF78C(&v805, *(&v806 + 1));
              v348 = (*(v347 + 56))(v346, v347);
              v349 = [v348 creationDate];

              if (v349)
              {
                v350 = v787;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v351 = *(v791 + 32);
                v352 = v764;
                v353 = v793;
                v351(v764, v350, v793);
                (v790)(v352, 0, 1, v353);
                v354 = v765;
                v351(v765, v352, v353);
                v355 = v799;
              }

              else
              {
                v427 = v764;
                v428 = v793;
                (v790)(v764, 1, 1, v793);
                v429 = *(&v806 + 1);
                v430 = v807;
                sub_1000EF78C(&v805, *(&v806 + 1));
                v431 = *(v430 + 40);
                v354 = v765;
                v432 = v430;
                v353 = v428;
                v431(v429, v432);
                v433 = (v789)(v427, 1, v428);
                v355 = v799;
                if (v433 != 1)
                {
                  sub_1000EEE6C(v427, &qword_1002F7EF0, &unk_100226C90);
                }
              }

              v434 = v778;
              v435 = static Date.> infix(_:_:)();
              v338(v354, v353);
              v20 = &type metadata for String;
              if (v435)
              {
                v436 = static os_log_type_t.error.getter();
                v437 = swift_allocObject();
                *(v437 + 16) = v786;
                sub_1001CB674(&v805, &v802);
                sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
                v438 = String.init<A>(describing:)();
                v439 = v798;
                *(v437 + 56) = &type metadata for String;
                *(v437 + 64) = v439;
                *(v437 + 32) = v438;
                *(v437 + 40) = v440;
                os_log(_:dso:log:_:_:)(v436, &_mh_execute_header, v797, "Merge conflict while saving cloud update, local record is latest: %@", 68, 2, v437);

                sub_100195ABC();

                v338(v434, v353);
                sub_1000EEE6C(&v808, &qword_1002F9D98, &qword_100229A58);
                sub_1000EF824(&v805);
                v136 = v355;
                goto LABEL_168;
              }

              v338(v434, v353);

              v288 = v795;
LABEL_104:
              v356 = static os_log_type_t.default.getter();
              v357 = swift_allocObject();
              *(v357 + 16) = v761;
              v358 = v798;
              *(v357 + 56) = &type metadata for String;
              *(v357 + 64) = v358;
              *(v357 + 32) = v288;
              *(v357 + 40) = v794;

              v359 = v800;
              v360 = [v359 description];
              v361 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v363 = v362;

              *(v357 + 96) = &type metadata for String;
              *(v357 + 104) = v358;
              *(v357 + 72) = v361;
              *(v357 + 80) = v363;
              os_log(_:dso:log:_:_:)(v356, &_mh_execute_header, v797, "Updating cloud record[%@]: %@", 29, 2, v357);

              v365 = CKRecord.recordType.getter();
              v366 = v364;
              if (v365 == 0x654B72657473614DLL && v364 == 0xE900000000000079)
              {

                v199 = v795;
                goto LABEL_109;
              }

              v367 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v199 = v795;
              if (v367)
              {

LABEL_109:
                v271 = v800;
                v368 = v359;
                v369 = v780;
                v370 = v782;
                sub_1001003DC(v368, v780);
                if (!v370)
                {
                  sub_1001C3C4C(v369, v792 & 1);
                  sub_1001CC1B4(v369, type metadata accessor for LegacyAccountMagicKeysRecord);
                  v270 = v793;
LABEL_119:
                  sub_1000EF824(&v805);
                  goto LABEL_120;
                }

LABEL_118:
                v373 = static os_log_type_t.error.getter();
                v374 = swift_allocObject();
                *(v374 + 16) = xmmword_1002289A0;
                v375 = v798;
                *(v374 + 56) = &type metadata for String;
                *(v374 + 64) = v375;
                *(v374 + 32) = v199;
                *(v374 + 40) = v794;

                v376 = v359;
                v377 = [v376 description];
                v378 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v380 = v379;

                *(v374 + 96) = &type metadata for String;
                *(v374 + 104) = v375;
                *(v374 + 72) = v378;
                *(v374 + 80) = v380;
                *&v802 = v370;
                swift_errorRetain();
                sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
                v381 = String.init<A>(describing:)();
                *(v374 + 136) = &type metadata for String;
                *(v374 + 144) = v375;
                *(v374 + 112) = v381;
                *(v374 + 120) = v382;
                os_log(_:dso:log:_:_:)(v373, &_mh_execute_header, v797, "Error updating stale cloud record[%@] %@: %@", 44, 2, v374);

                v270 = v793;
                v271 = v800;
                goto LABEL_119;
              }

              v105 = v795;
              if (v365 == 0x6552656369766544 && v366 == 0xEC00000064726F63)
              {

                v58 = v769;
                goto LABEL_116;
              }

              v371 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v58 = v769;
              if (v371)
              {

LABEL_116:
                v372 = v359;
                v370 = v782;
                sub_1000EBA44(v372, v58);
                if (v370)
                {
LABEL_117:
                  v199 = v105;
                  goto LABEL_118;
                }

                v441 = v755;
                sub_100194630(v755);
                if ((*(v757 + 48))(v441, 1, v760) == 1)
                {
                  sub_1000EEE6C(v441, &qword_1002F9D90, &qword_100227B30);
                  v270 = v793;
                  v271 = v800;
LABEL_251:
                  sub_1001C232C(v58, v792 & 1);
                  v601 = type metadata accessor for DeviceRecord;
LABEL_252:
                  sub_1001CC1B4(v58, v601);
                  v199 = v105;
                  goto LABEL_119;
                }

                v491 = v754;
                sub_1001CC214(v441, v754, type metadata accessor for LegacyMagicPairingSettingsRecords);
                v492 = sub_10013B008();
                v493 = sub_10017D434(v492, v58, type metadata accessor for DeviceRecord);

                v270 = v793;
                v271 = v800;
                if (!v493)
                {
                  sub_1001CC1B4(v491, type metadata accessor for LegacyMagicPairingSettingsRecords);
                  goto LABEL_251;
                }

                v494 = [v493 name];
                if (v494)
                {
                  v495 = v494;
                  v496 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v498 = v497;

                  v499 = (v58 + *(v770 + 28));
                  if (v496 == *v499 && v498 == v499[1])
                  {

LABEL_206:
                    sub_1001CC1B4(v754, type metadata accessor for LegacyMagicPairingSettingsRecords);

                    goto LABEL_251;
                  }

                  v518 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v518)
                  {
                    goto LABEL_206;
                  }
                }

                v519 = v770;
                v520 = (v58 + *(v770 + 24));
                v521 = *v520;
                v522 = v520[1];
                v523 = objc_allocWithZone(BTCloudDevice);
                v785 = v521;
                v784 = v522;
                v524 = String._bridgeToObjectiveC()();
                v790 = [v523 initWithBluetoothAddress:v524];

                v525 = static os_log_type_t.default.getter();
                v526 = swift_allocObject();
                v786 = xmmword_1002289A0;
                *(v526 + 16) = xmmword_1002289A0;
                v527 = v798;
                *(v526 + 56) = &type metadata for String;
                *(v526 + 64) = v527;
                v528 = v794;
                *(v526 + 32) = v105;
                *(v526 + 40) = v528;

                v529 = v493;
                v530 = [v529 description];
                v531 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v533 = v532;

                *(v526 + 96) = &type metadata for String;
                *(v526 + 104) = v527;
                *(v526 + 72) = v531;
                *(v526 + 80) = v533;
                v534 = sub_1000EA6CC();
                *(v526 + 136) = &type metadata for String;
                *(v526 + 144) = v527;
                *(v526 + 112) = v534;
                *(v526 + 120) = v535;
                os_log(_:dso:log:_:_:)(v525, &_mh_execute_header, v797, "Consolidating device name record[%@]: %@ with %@", 48, 2, v526);
                v58 = v769;

                sub_1001C4BB4(&unk_1002F9DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v536 = dispatch thunk of static Comparable.< infix(_:_:)();
                v789 = v529;
                if ((v536 & 1) == 0)
                {
                  v576 = [v529 name];
                  [v790 setNickname:v576];

                  v577 = static os_log_type_t.default.getter();
                  v578 = swift_allocObject();
                  *(v578 + 16) = v786;
                  *(v578 + 56) = &type metadata for String;
                  *(v578 + 64) = v527;
                  v579 = v795;
                  *(v578 + 32) = v795;
                  *(v578 + 40) = v528;

                  v580 = [v529 name];
                  v105 = v579;
                  if (v580)
                  {
                    v581 = v580;
                    v582 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v584 = v583;
                  }

                  else
                  {
                    v582 = 0;
                    v584 = 0;
                  }

                  v271 = v800;
                  *&v802 = v582;
                  *(&v802 + 1) = v584;
                  sub_1000EE870(&qword_1002F94C0, qword_100227A98);
                  v595 = String.init<A>(describing:)();
                  v20 = &type metadata for String;
                  v596 = v798;
                  *(v578 + 96) = &type metadata for String;
                  *(v578 + 104) = v596;
                  *(v578 + 72) = v595;
                  *(v578 + 80) = v597;
                  v598 = (v58 + *(v770 + 28));
                  v600 = *v598;
                  v599 = v598[1];
                  *(v578 + 136) = &type metadata for String;
                  *(v578 + 144) = v596;
                  *(v578 + 112) = v600;
                  *(v578 + 120) = v599;

                  os_log(_:dso:log:_:_:)(v577, &_mh_execute_header, v797, "Replacing with latest name record[%@]: %@ with %@", 49, 2, v578);

                  v541 = v790;
                  goto LABEL_250;
                }

                v537 = (v58 + *(v519 + 40));
                v538 = *v537;
                v539 = v537[1];

                v540 = sub_10011EDEC(v538, v539);
                v105 = v795;
                v271 = v800;
                v20 = &type metadata for String;
                v541 = v790;
                if (v542)
                {
                  goto LABEL_250;
                }

                v543 = v540;
                v544 = [v789 name];
                if (!v544)
                {
                  goto LABEL_250;
                }

                v545 = v544;
                v546 = v271;
                v547 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v549 = v548;

                v550 = HIBYTE(v549) & 0xF;
                v551 = v547 & 0xFFFFFFFFFFFFLL;
                v271 = v546;
                v552 = (v549 & 0x2000000000000000) == 0;
                v58 = v769;
                v105 = v795;
                if (v552)
                {
                  v550 = v551;
                }

                if (!v550)
                {
                  goto LABEL_250;
                }

                v553 = [objc_opt_self() getProductNameFromProductID:v543];
                v554 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v555 = v58;
                v557 = v556;

                v558 = (v555 + *(v770 + 28));
                v559 = *v558;
                v560 = v558[1];
                if (v554 == *v558 && v557 == v560)
                {

                  v105 = v795;
                }

                else
                {
                  v648 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v105 = v795;
                  v58 = v769;
                  if ((v648 & 1) == 0)
                  {
LABEL_250:
                    sub_1000ECB0C(v541);

                    sub_1001CC1B4(v754, type metadata accessor for LegacyMagicPairingSettingsRecords);
                    v270 = v793;
                    goto LABEL_251;
                  }
                }

                v783 = v559;
                LODWORD(v782) = static os_log_type_t.default.getter();
                v649 = swift_allocObject();
                *(v649 + 16) = v786;
                v650 = v798;
                *(v649 + 56) = &type metadata for String;
                *(v649 + 64) = v650;
                *(v649 + 32) = v105;
                *(v649 + 40) = v794;

                v651 = v789;
                v652 = [v789 name];
                if (v652)
                {
                  v653 = v652;
                  v654 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v656 = v655;
                }

                else
                {
                  v654 = 0;
                  v656 = 0;
                }

                *&v802 = v654;
                *(&v802 + 1) = v656;
                sub_1000EE870(&qword_1002F94C0, qword_100227A98);
                v660 = String.init<A>(describing:)();
                v661 = v798;
                *(v649 + 96) = &type metadata for String;
                *(v649 + 104) = v661;
                *(v649 + 72) = v660;
                *(v649 + 80) = v662;
                *(v649 + 136) = &type metadata for String;
                *(v649 + 144) = v661;
                *(v649 + 112) = v783;
                *(v649 + 120) = v560;

                os_log(_:dso:log:_:_:)(v782, &_mh_execute_header, v797, "Replace default device name record[%@]: %@ with %@", 50, 2, v649);

                v663 = objc_allocWithZone(BTCloudDevice);
                v664 = String._bridgeToObjectiveC()();
                v665 = [v663 initWithBluetoothAddress:v664];

                v666 = [v651 name];
                [v665 setNickname:v666];

                v105 = v795;
                v271 = v800;
                v58 = v769;
                goto LABEL_250;
              }

              if (v365 == 0xD00000000000001ELL && 0x80000001002671E0 == v366 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                v446 = v359;
                v447 = v751;
                v370 = v782;
                sub_1001352B4(v446, v751);
                if (!v370)
                {
                  sub_1001CB674(&v805, &v802);
                  sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
                  v448 = v747;
                  v449 = v756;
                  v450 = swift_dynamicCast();
                  v451 = *(v753 + 56);
                  v199 = v105;
                  if (v450)
                  {
                    v451(v448, 0, 1, v449);
                    v452 = v739;
                    sub_1001CC214(v448, v739, type metadata accessor for DeviceSupportInformationRecord);
                    v453 = sub_100109B20();
                    sub_100136BD0(v453);

                    sub_1001CC1B4(v452, type metadata accessor for DeviceSupportInformationRecord);
                  }

                  else
                  {
                    v451(v448, 1, 1, v449);
                    sub_1000EEE6C(v448, &qword_1002F8510, &unk_100227B50);
                  }

                  v270 = v793;
                  v271 = v800;
                  sub_1001C27B8(v447, v792 & 1);
                  sub_1001CC1B4(v447, type metadata accessor for DeviceSupportInformationRecord);
                  goto LABEL_119;
                }

                goto LABEL_117;
              }

              v270 = v793;
              if (v365 == 0x746553636967614DLL && v366 == 0xED000073676E6974)
              {

                v101 = v745;
                v58 = v744;
                goto LABEL_197;
              }

              v508 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v101 = v745;
              v58 = v744;
              if (v508)
              {

LABEL_197:
                v104 = v359;
                v370 = v782;
                sub_100119610(v104, v58);
                if (v370)
                {
                  goto LABEL_117;
                }

                v97 = v735;
                sub_100194630(v735);
                if ((*(v757 + 48))(v97, 1, v760) == 1)
                {
                  sub_1000EEE6C(v97, &qword_1002F9D90, &qword_100227B30);
                  v270 = v793;
LABEL_283:
                  v271 = v800;
                  sub_1001C2C44(v58, v792 & 1);
                  v601 = type metadata accessor for MagicPairingSettingsRecord;
                  goto LABEL_252;
                }

LABEL_245:
                sub_1001CC214(v97, v101, type metadata accessor for LegacyMagicPairingSettingsRecords);
                v593 = sub_10013B008();
                v594 = sub_10017D434(v593, v58, type metadata accessor for MagicPairingSettingsRecord);

                v270 = v793;
                if (v594)
                {
                  sub_1001C4BB4(&unk_1002F9DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                  if (dispatch thunk of static Comparable.< infix(_:_:)())
                  {
                    sub_1001CC1B4(v101, type metadata accessor for LegacyMagicPairingSettingsRecords);

                    goto LABEL_283;
                  }

                  LODWORD(v790) = static os_log_type_t.default.getter();
                  v636 = swift_allocObject();
                  *(v636 + 16) = xmmword_1002289A0;
                  v637 = v798;
                  *(v636 + 56) = v20;
                  *(v636 + 64) = v637;
                  *(v636 + 32) = v105;
                  *(v636 + 40) = v794;

                  v638 = v104;
                  v639 = [v638 description];
                  v640 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v642 = v641;

                  *(v636 + 96) = v20;
                  *(v636 + 104) = v637;
                  *(v636 + 72) = v640;
                  *(v636 + 80) = v642;
                  v643 = v594;
                  v58 = v744;
                  v644 = [v643 description];
                  v645 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v647 = v646;

                  *(v636 + 136) = v20;
                  *(v636 + 144) = v637;
                  *(v636 + 112) = v645;
                  *(v636 + 120) = v647;
                  v270 = v793;
                  os_log(_:dso:log:_:_:)(v790, &_mh_execute_header, v797, "CloudSync: Consolidating record[%@]: %@ with %@", 47, 2, v636);

                  sub_10011BD3C(v643);

                  v630 = v745;
                }

                else
                {
                  v630 = v101;
                }

                sub_1001CC1B4(v630, type metadata accessor for LegacyMagicPairingSettingsRecords);
                goto LABEL_283;
              }

              if (v365 == 0xD000000000000012 && 0x80000001002671C0 == v366 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                sub_1001A1688(v359, v792 & 1);
                v271 = v800;
                v199 = v105;
                goto LABEL_119;
              }

              if (v365 == 0x6563697665444141 && v366 == 0xEE0064726F636552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                v803 = &type metadata for AudioAccessoryFeatures;
                v804 = sub_1000F1874();
                v624 = isFeatureEnabled(_:)();
                sub_1000EF824(&v802);
                if (v624)
                {
                  v625 = objc_allocWithZone(type metadata accessor for AADeviceRecord(0));
                  v626 = v359;
                  v370 = v782;
                  v627 = sub_100164730(v626);
                  if (!v370)
                  {
                    v628 = v627;
                    sub_1001C30D4(v627, v792 & 1);
LABEL_331:

                    v199 = v795;
LABEL_332:
                    v270 = v793;
                    v271 = v800;
                    goto LABEL_119;
                  }

                  goto LABEL_329;
                }
              }

              else
              {
                if ((v365 != 0xD000000000000011 || 0x800000010026EAC0 != v366) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  if (v365 == 0xD000000000000013 && 0x8000000100267B10 == v366)
                  {
                  }

                  else
                  {
                    v703 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v703 & 1) == 0)
                    {
                      v711 = static os_log_type_t.error.getter();
                      v712 = swift_allocObject();
                      *(v712 + 16) = v761;
                      v713 = v798;
                      *(v712 + 56) = &type metadata for String;
                      *(v712 + 64) = v713;
                      v199 = v795;
                      *(v712 + 32) = v795;
                      *(v712 + 40) = v794;

                      v714 = v359;
                      v715 = [v714 description];
                      v716 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v718 = v717;

                      *(v712 + 96) = &type metadata for String;
                      *(v712 + 104) = v713;
                      *(v712 + 72) = v716;
                      *(v712 + 80) = v718;
                      os_log(_:dso:log:_:_:)(v711, &_mh_execute_header, v797, "No valid record found[%@]: %@", 29, 2, v712);

                      goto LABEL_332;
                    }
                  }

                  goto LABEL_328;
                }
              }

              v803 = &type metadata for AudioAccessoryFeatures;
              v804 = sub_1000F1874();
              v667 = isFeatureEnabled(_:)();
              sub_1000EF824(&v802);
              if (v667)
              {
                v668 = objc_allocWithZone(type metadata accessor for AAProxCardsRecord(0));
                v669 = v359;
                v370 = v782;
                v670 = sub_1000F3E30(v669);
                if (!v370)
                {
                  v628 = v670;
                  sub_1001C34AC(v670, v792 & 1);
                  goto LABEL_331;
                }

LABEL_329:
                v199 = v795;
                goto LABEL_118;
              }

LABEL_328:
              v704 = objc_allocWithZone(type metadata accessor for HMDeviceCloudRecord(0));
              v705 = v359;
              v370 = v782;
              v706 = sub_100129F78(v705);
              if (!v370)
              {
                v628 = v706;
                sub_1001C387C(v706, v792 & 1);
                goto LABEL_331;
              }

              goto LABEL_329;
            }

            goto LABEL_102;
          }
        }

        v238 = [v228 modificationDate];
        if (v238)
        {
          v239 = v787;
          v240 = v238;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v241 = *(v235 + 32);
          v241(v236, v239, v234);
          v160 = *(v235 + 56);
          v160(v236, 0, 1, v234);
          v242 = v783;
          v241(v783, v236, v234);
          v160(v242, 0, 1, v234);
          v243 = *(v235 + 48);
          v244 = v243(v242, 1, v234);
        }

        else
        {
          v160 = *(v235 + 56);
          v259 = 1;
          v160(v236, 1, 1, v234);
          v260 = [v228 creationDate];
          v242 = v783;
          v261 = v776;
          if (v260)
          {
            v262 = v260;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v259 = 0;
          }

          v160(v261, v259, 1, v234);
          sub_1000EED5C(v261, v242);
          v243 = *(v235 + 48);
          if (v243(v236, 1, v234) != 1)
          {
            sub_1000EEE6C(v236, &qword_1002F7EF0, &unk_100226C90);
          }

          v244 = v243(v242, 1, v234);
        }

        v288 = v795;
        if (v244 == 1)
        {
          sub_1000EEE6C(v242, &qword_1002F7EF0, &unk_100226C90);
LABEL_103:
          v20 = &type metadata for String;
          goto LABEL_104;
        }

        v785 = v243;
        v289 = *(v235 + 32);
        v790 = (v235 + 32);
        v789 = v289;
        (v289)(v139, v242, v234);
        v290 = *(&v806 + 1);
        v291 = v807;
        sub_1000EF78C(&v805, *(&v806 + 1));
        v292 = v787;
        (*(v291 + 40))(v290, v291);
        LOBYTE(v290) = static Date.> infix(_:_:)();
        v293 = *(v235 + 8);
        v293(v292, v234);
        if (v290)
        {
          v792 = v293;
          v294 = static os_log_type_t.error.getter();
          v295 = swift_allocObject();
          v788 = xmmword_100226100;
          *(v295 + 16) = xmmword_100226100;
          sub_1001CB674(&v805, &v802);
          sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
          v296 = String.init<A>(describing:)();
          v297 = v798;
          *(v295 + 56) = &type metadata for String;
          *(v295 + 64) = v297;
          *(v295 + 32) = v296;
          *(v295 + 40) = v298;
          os_log(_:dso:log:_:_:)(v294, &_mh_execute_header, v797, "Merge conflict while saving cloud update, local record is already up to date: %@", 80, 2, v295);

          v300 = CKRecord.recordType.getter();
          v301 = v299;
          if (v300 == 0x6552656369766544 && v299 == 0xEC00000064726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v141 = v793;
            sub_1001CB674(&v805, &v802);
            v159 = v763;
            v302 = v770;
            v303 = swift_dynamicCast();
            v304 = *(v762 + 56);
            if ((v303 & 1) == 0)
            {
              v304(v159, 1, 1, v302);
              v425 = &qword_1002F8520;
              v426 = &unk_100227B60;
              goto LABEL_132;
            }

            v304(v159, 0, 1, v302);
            v305 = v159;
            v306 = v759;
            sub_1001CC214(v305, v759, type metadata accessor for DeviceRecord);
            v307 = v800;
            v308 = v758;
            v309 = v782;
            sub_1000EBA44(v307, v758);
            if (v309)
            {
              v310 = type metadata accessor for DeviceRecord;
LABEL_85:
              v311 = v310;
              v312 = v306;
LABEL_86:
              sub_1001CC1B4(v312, v311);
LABEL_87:
              LODWORD(v784) = static os_log_type_t.error.getter();
              v313 = swift_allocObject();
              *(v313 + 16) = xmmword_1002289A0;
              v314 = v798;
              *(v313 + 56) = &type metadata for String;
              *(v313 + 64) = v314;
              *(v313 + 32) = v795;
              *(v313 + 40) = v794;

              v315 = v800;
              v316 = [v315 description];
              v317 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v319 = v318;

              *(v313 + 96) = &type metadata for String;
              *(v313 + 104) = v314;
              *(v313 + 72) = v317;
              *(v313 + 80) = v319;
              *&v802 = v309;
              swift_errorRetain();
              sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
              v320 = String.init<A>(describing:)();
              *(v313 + 136) = &type metadata for String;
              *(v313 + 144) = v314;
              *(v313 + 112) = v320;
              *(v313 + 120) = v321;
              os_log(_:dso:log:_:_:)(v784, &_mh_execute_header, v797, "Error updating stale cloud record[%@] %@: %@", 44, 2, v313);

LABEL_88:
              v141 = v793;
              v139 = v786;
              goto LABEL_163;
            }

            v466 = v306;
            v467 = sub_100106284();
            sub_1000ECB0C(v467);

            sub_1001C232C(v308, 0);
            v468 = type metadata accessor for DeviceRecord;
LABEL_161:
            v469 = v468;
            sub_1001CC1B4(v308, v468);
            v470 = v466;
            goto LABEL_162;
          }

          v141 = v793;
          if (v300 == 0xD00000000000001ELL && 0x80000001002671E0 == v301 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_1001CB674(&v805, &v802);
            v159 = v752;
            v155 = v756;
            v442 = swift_dynamicCast();
            v162 = *(v753 + 56);
            if ((v442 & 1) == 0)
            {
              goto LABEL_175;
            }

            (v162)(v159, 0, 1, v155);
            v443 = v749;
            sub_1001CC214(v159, v749, type metadata accessor for DeviceSupportInformationRecord);
            v444 = v800;
            v445 = v748;
            v309 = v782;
            sub_1001352B4(v444, v748);
            if (v309)
            {
              v311 = type metadata accessor for DeviceSupportInformationRecord;
              v312 = v443;
              goto LABEL_86;
            }

            v507 = sub_100109B20();
            sub_100136BD0(v507);

            sub_1001C27B8(v445, 0);
            v469 = type metadata accessor for DeviceSupportInformationRecord;
            sub_1001CC1B4(v445, type metadata accessor for DeviceSupportInformationRecord);
            v470 = v443;
LABEL_162:
            sub_1001CC1B4(v470, v469);
            goto LABEL_163;
          }

          if (v300 == 0x746553636967614DLL && v301 == 0xED000073676E6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            sub_1001CB674(&v805, &v802);
            v159 = v741;
            v500 = v746;
            v501 = swift_dynamicCast();
            v502 = *(v740 + 56);
            if ((v501 & 1) == 0)
            {
              v502(v159, 1, 1, v500);
              v425 = &unk_1002F9C30;
              v426 = &qword_1002299A0;
              goto LABEL_132;
            }

            v502(v159, 0, 1, v500);
            v503 = v159;
            v306 = v737;
            sub_1001CC214(v503, v737, type metadata accessor for MagicPairingSettingsRecord);
            v504 = v800;
            v308 = v736;
            v309 = v782;
            sub_100119610(v504, v736);
            if (v309)
            {
              v310 = type metadata accessor for MagicPairingSettingsRecord;
              goto LABEL_85;
            }

            v466 = v306;
            v592 = sub_10010CFB8();
            sub_10011BD3C(v592);

            sub_1001C2C44(v308, 0);
            v468 = type metadata accessor for MagicPairingSettingsRecord;
            goto LABEL_161;
          }

          if (v300 == 0x6563697665444141 && v301 == 0xEE0064726F636552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v803 = &type metadata for AudioAccessoryFeatures;
            v804 = sub_1000F1874();
            v585 = isFeatureEnabled(_:)();
            sub_1000EF824(&v802);
            if (v585)
            {
              sub_1001CB674(&v805, &v802);
              v586 = type metadata accessor for AADeviceRecord(0);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_163;
              }

              v587 = v801;
              v588 = objc_allocWithZone(v586);
              v589 = v800;
              v309 = v782;
              v590 = sub_100164730(v589);
              if (!v309)
              {
                v591 = v590;
                sub_1001681DC(v587);
                sub_1001C30D4(v591, 0);

                goto LABEL_163;
              }

LABEL_317:

              goto LABEL_87;
            }
          }

          else
          {
            if ((v300 != 0xD000000000000011 || 0x800000010026EAC0 != v301) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              if (v300 == 0xD000000000000013 && 0x8000000100267B10 == v301)
              {

                v141 = v793;
                v139 = v786;
              }

              else
              {
                v693 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v141 = v793;
                v139 = v786;
                if ((v693 & 1) == 0)
                {
                  v698 = static os_log_type_t.error.getter();
                  v699 = swift_allocObject();
                  *(v699 + 16) = v761;
                  v700 = v798;
                  *(v699 + 56) = &type metadata for String;
                  *(v699 + 64) = v700;
                  *(v699 + 32) = v795;
                  *(v699 + 40) = v794;

                  v701 = CKRecord.recordType.getter();
                  *(v699 + 96) = &type metadata for String;
                  *(v699 + 104) = v700;
                  *(v699 + 72) = v701;
                  *(v699 + 80) = v702;
                  os_log(_:dso:log:_:_:)(v698, &_mh_execute_header, v797, "Skip updating this record[%@]: %@", 33, 2, v699);

                  goto LABEL_163;
                }
              }

              goto LABEL_315;
            }
          }

          v803 = &type metadata for AudioAccessoryFeatures;
          v804 = sub_1000F1874();
          v618 = isFeatureEnabled(_:)();
          sub_1000EF824(&v802);
          if (v618)
          {
            sub_1001CB674(&v805, &v802);
            v619 = type metadata accessor for AAProxCardsRecord(0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_163;
            }

            v587 = v801;
            v620 = objc_allocWithZone(v619);
            v621 = v800;
            v309 = v782;
            v622 = sub_1000F3E30(v621);
            if (v309)
            {
              goto LABEL_317;
            }

            v623 = v622;
            sub_1000F75E4(v587);
            sub_1001C34AC(v623, 0);
LABEL_319:

            goto LABEL_88;
          }

LABEL_315:
          sub_1001CB674(&v805, &v802);
          v694 = type metadata accessor for HMDeviceCloudRecord(0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_163;
          }

          v587 = v801;
          v695 = objc_allocWithZone(v694);
          v696 = v800;
          v309 = v782;
          v697 = sub_100129F78(v696);
          if (v309)
          {
            goto LABEL_317;
          }

          v623 = v697;
          sub_100130AB8(v587);
          sub_1001C387C(v623, 0);
          goto LABEL_319;
        }

        v293(v139, v234);
LABEL_102:
        v288 = v795;
        goto LABEL_103;
      }

      sub_1000EEE6C(&v802, &qword_1002F9D98, &qword_100229A58);
      v185 = static os_log_type_t.default.getter();
      v186 = swift_allocObject();
      *(v186 + 16) = xmmword_1002289D0;
      v187 = CKRecord.recordType.getter();
      v188 = v798;
      *(v186 + 56) = &type metadata for String;
      *(v186 + 64) = v188;
      *(v186 + 32) = v187;
      *(v186 + 40) = v189;
      *(v186 + 96) = &type metadata for String;
      *(v186 + 104) = v188;
      v190 = v794;
      *(v186 + 72) = v171;
      *(v186 + 80) = v190;

      v191 = v169;
      v192 = [v191 description];
      v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v195 = v194;

      *(v186 + 136) = &type metadata for String;
      *(v186 + 144) = v188;
      *(v186 + 112) = v193;
      *(v186 + 120) = v195;
      *(v186 + 176) = &type metadata for Bool;
      *(v186 + 184) = &protocol witness table for Bool;
      *(v186 + 152) = v728;
      os_log(_:dso:log:_:_:)(v185, &_mh_execute_header, v797, "Saving cloud record (%@) [%@]: %@, updateDelegate: %d", 53, 2, v186);

      v197 = CKRecord.recordType.getter();
      v198 = v196;
      if (v197 == 0x654B72657473614DLL && v196 == 0xE900000000000079)
      {

        v199 = v795;
LABEL_55:
        v246 = v191;
        v247 = v779;
        v248 = v731;
        sub_1001003DC(v246, v779);
        if (v248)
        {
LABEL_56:
          v249 = static os_log_type_t.error.getter();
          v250 = swift_allocObject();
          *(v250 + 16) = xmmword_1002289A0;
          v251 = v798;
          *(v250 + 56) = &type metadata for String;
          *(v250 + 64) = v251;
          *(v250 + 32) = v199;
          *(v250 + 40) = v794;

          v252 = v191;
          v253 = [v252 description];
          v254 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v256 = v255;

          *(v250 + 96) = &type metadata for String;
          *(v250 + 104) = v251;
          *(v250 + 72) = v254;
          *(v250 + 80) = v256;
          *&v805 = v248;
          swift_errorRetain();
          sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
          v257 = String.init<A>(describing:)();
          *(v250 + 136) = &type metadata for String;
          *(v250 + 144) = v251;
          *(v250 + 112) = v257;
          *(v250 + 120) = v258;
          os_log(_:dso:log:_:_:)(v249, &_mh_execute_header, v797, "Error local update cloud delete conflict record[%@] %@: %@", 58, 2, v250);

LABEL_63:
          v270 = v793;
          v271 = v800;
          goto LABEL_120;
        }

        sub_1001C3C4C(v247, v792 & 1);
        v269 = type metadata accessor for LegacyAccountMagicKeysRecord;
LABEL_62:
        sub_1001CC1B4(v247, v269);
        goto LABEL_63;
      }

      v245 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v199 = v795;
      if (v245)
      {

        goto LABEL_55;
      }

      if (v197 == 0x6552656369766544 && v198 == 0xEC00000064726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v272 = v191;
        v273 = v766;
        v248 = v731;
        sub_1000EBA44(v272, v766);
        if (v248)
        {
          goto LABEL_56;
        }

        v274 = (v273 + *(v770 + 24));
        if (*v274 == 0xD000000000000011 && 0x8000000100267AA0 == v274[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v275 = static os_log_type_t.error.getter();
          v276 = swift_allocObject();
          *(v276 + 16) = xmmword_1002289A0;
          v277 = v798;
          *(v276 + 56) = &type metadata for String;
          *(v276 + 64) = v277;
          v278 = v794;
          *(v276 + 32) = v199;
          *(v276 + 40) = v278;

          v279 = [v272 recordID];
          v280 = [v279 recordName];

          v281 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v283 = v282;

          *(v276 + 96) = &type metadata for String;
          *(v276 + 104) = v277;
          *(v276 + 72) = v281;
          *(v276 + 80) = v283;
          v284 = CKRecord.recordType.getter();
          *(v276 + 136) = &type metadata for String;
          *(v276 + 144) = v277;
          *(v276 + 112) = v284;
          *(v276 + 120) = v285;
          os_log(_:dso:log:_:_:)(v275, &_mh_execute_header, v797, "Dropping saving device record with invalid record identifier: %@: Record ID: %@, Record Type: %@", 96, 2, v276);

          sub_1000EEE6C(&v808, &qword_1002F9D98, &qword_100229A58);
          v286 = type metadata accessor for DeviceRecord;
          v287 = v766;
          goto LABEL_72;
        }

        v505 = v743;
        sub_100194630(v743);
        if ((*(v757 + 48))(v505, 1, v760) == 1)
        {
          sub_1000EEE6C(v505, &qword_1002F9D90, &qword_100227B30);
          v270 = v793;
LABEL_187:
          v271 = v800;
LABEL_256:
          v603 = v766;
          sub_1001C232C(v766, v792 & 1);
          sub_1001CC1B4(v603, type metadata accessor for DeviceRecord);
          goto LABEL_120;
        }

        v509 = v738;
        sub_1001CC214(v505, v738, type metadata accessor for LegacyMagicPairingSettingsRecords);
        v510 = sub_10013B008();
        v511 = sub_10017D434(v510, v766, type metadata accessor for DeviceRecord);

        v270 = v793;
        v271 = v800;
        if (!v511)
        {
          sub_1001CC1B4(v509, type metadata accessor for LegacyMagicPairingSettingsRecords);
          goto LABEL_256;
        }

        v512 = [v511 name];
        if (v512)
        {
          v513 = v512;
          v514 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v516 = v515;

          v517 = (v766 + *(v770 + 28));
          if (v514 == *v517 && v516 == v517[1])
          {

            v270 = v793;
            goto LABEL_255;
          }

          v602 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v270 = v793;
          if (v602)
          {
            goto LABEL_255;
          }
        }

        sub_1001C4BB4(&unk_1002F9DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
        {
          v604 = static os_log_type_t.default.getter();
          v605 = swift_allocObject();
          *(v605 + 16) = xmmword_1002289A0;
          v606 = v798;
          *(v605 + 56) = &type metadata for String;
          *(v605 + 64) = v606;
          *(v605 + 32) = v199;
          *(v605 + 40) = v794;

          v607 = v511;
          v608 = [v607 description];
          v609 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v611 = v610;

          *(v605 + 96) = &type metadata for String;
          *(v605 + 104) = v606;
          *(v605 + 72) = v609;
          *(v605 + 80) = v611;
          v199 = v795;
          v612 = sub_1000EA6CC();
          *(v605 + 136) = &type metadata for String;
          *(v605 + 144) = v606;
          *(v605 + 112) = v612;
          *(v605 + 120) = v613;
          os_log(_:dso:log:_:_:)(v604, &_mh_execute_header, v797, "Consolidating new device name record[%@]: %@ with %@", 52, 2, v605);
          v270 = v793;

          v614 = objc_allocWithZone(BTCloudDevice);
          v615 = String._bridgeToObjectiveC()();
          v616 = [v614 initWithBluetoothAddress:v615];

          v617 = [v607 name];
          [v616 setNickname:v617];

          sub_1000ECB0C(v616);
          sub_1001CC1B4(v738, type metadata accessor for LegacyMagicPairingSettingsRecords);
          goto LABEL_187;
        }

LABEL_255:
        sub_1001CC1B4(v509, type metadata accessor for LegacyMagicPairingSettingsRecords);

        v271 = v800;
        goto LABEL_256;
      }

      if (v197 == 0xD00000000000001ELL && 0x80000001002671E0 == v198 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v454 = v191;
        v247 = v750;
        v248 = v731;
        sub_1001352B4(v454, v750);
        if (v248)
        {
          goto LABEL_56;
        }

        v455 = (v247 + *(v756 + 24));
        if ((*v455 != 0xD000000000000011 || 0x8000000100267AA0 != v455[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          sub_1001C27B8(v247, v792 & 1);
          v269 = type metadata accessor for DeviceSupportInformationRecord;
          goto LABEL_62;
        }

        LODWORD(v800) = static os_log_type_t.error.getter();
        v456 = swift_allocObject();
        *(v456 + 16) = xmmword_1002289A0;
        v457 = v798;
        *(v456 + 56) = &type metadata for String;
        *(v456 + 64) = v457;
        v278 = v794;
        *(v456 + 32) = v199;
        *(v456 + 40) = v278;

        v458 = v247;
        v459 = [v454 recordID];
        v460 = [v459 recordName];

        v461 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v463 = v462;

        *(v456 + 96) = &type metadata for String;
        *(v456 + 104) = v457;
        *(v456 + 72) = v461;
        *(v456 + 80) = v463;
        v464 = CKRecord.recordType.getter();
        *(v456 + 136) = &type metadata for String;
        *(v456 + 144) = v457;
        *(v456 + 112) = v464;
        *(v456 + 120) = v465;
        os_log(_:dso:log:_:_:)(v800, &_mh_execute_header, v797, "Dropping saving device record with invalid record identifier: %@: Record ID: %@, Record Type: %@", 96, 2, v456);

        sub_1000EEE6C(&v808, &qword_1002F9D98, &qword_100229A58);
        v286 = type metadata accessor for DeviceSupportInformationRecord;
        v287 = v458;
LABEL_72:
        sub_1001CC1B4(v287, v286);
        v136 = v799;
        v137 = v199;
        v138 = v278;
        goto LABEL_130;
      }

      if (v197 == 0x746553636967614DLL && v198 == 0xED000073676E6974)
      {

        v270 = v793;
        v271 = v800;
        v506 = v742;
LABEL_218:
        v562 = v191;
        v248 = v731;
        sub_100119610(v562, v506);
        if (v248)
        {
          goto LABEL_56;
        }

        v563 = (v506 + *(v746 + 24));
        if (*v563 == 0xD000000000000011 && 0x8000000100267AA0 == v563[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          LODWORD(v800) = static os_log_type_t.error.getter();
          v564 = swift_allocObject();
          *(v564 + 16) = xmmword_1002289A0;
          v565 = v798;
          *(v564 + 56) = &type metadata for String;
          *(v564 + 64) = v565;
          v566 = v795;
          v567 = v794;
          *(v564 + 32) = v795;
          *(v564 + 40) = v567;

          v568 = [v562 recordID];
          v569 = v506;
          v570 = [v568 recordName];

          v571 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v573 = v572;

          *(v564 + 96) = &type metadata for String;
          *(v564 + 104) = v565;
          *(v564 + 72) = v571;
          *(v564 + 80) = v573;
          v574 = CKRecord.recordType.getter();
          *(v564 + 136) = &type metadata for String;
          *(v564 + 144) = v565;
          *(v564 + 112) = v574;
          *(v564 + 120) = v575;
          os_log(_:dso:log:_:_:)(v800, &_mh_execute_header, v797, "Dropping saving device record with invalid record identifier: %@: Record ID: %@, Record Type: %@", 96, 2, v564);

          sub_1000EEE6C(&v808, &qword_1002F9D98, &qword_100229A58);
          sub_1001CC1B4(v569, type metadata accessor for MagicPairingSettingsRecord);
          v136 = v799;
          v137 = v566;
          v138 = v567;
          goto LABEL_130;
        }

        v629 = v734;
        sub_100194630(v734);
        if ((*(v757 + 48))(v629, 1, v760) == 1)
        {
          sub_1000EEE6C(v629, &qword_1002F9D90, &qword_100227B30);
        }

        else
        {
          v657 = v733;
          sub_1001CC214(v629, v733, type metadata accessor for LegacyMagicPairingSettingsRecords);
          v658 = sub_10013B008();
          v659 = sub_10017D434(v658, v506, type metadata accessor for MagicPairingSettingsRecord);

          if (v659)
          {
            sub_1001C4BB4(&unk_1002F9DA8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
            if (dispatch thunk of static Comparable.< infix(_:_:)())
            {
              sub_1001CC1B4(v733, type metadata accessor for LegacyMagicPairingSettingsRecords);

              v270 = v793;
              v271 = v800;
              v506 = v742;
            }

            else
            {
              LODWORD(v790) = static os_log_type_t.default.getter();
              v675 = swift_allocObject();
              *(v675 + 16) = xmmword_1002289A0;
              v676 = v798;
              *(v675 + 56) = &type metadata for String;
              *(v675 + 64) = v676;
              *(v675 + 32) = v795;
              *(v675 + 40) = v794;

              v677 = v562;
              v678 = [v677 description];
              v679 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v681 = v680;

              *(v675 + 96) = &type metadata for String;
              *(v675 + 104) = v676;
              *(v675 + 72) = v679;
              *(v675 + 80) = v681;
              v682 = v659;
              v683 = [v682 description];
              v684 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v686 = v685;

              *(v675 + 136) = &type metadata for String;
              *(v675 + 144) = v676;
              *(v675 + 112) = v684;
              *(v675 + 120) = v686;
              os_log(_:dso:log:_:_:)(v790, &_mh_execute_header, v797, "Consolidating record[%@]: %@ with %@", 36, 2, v675);

              v506 = v742;
              sub_10011BD3C(v682);

              sub_1001CC1B4(v733, type metadata accessor for LegacyMagicPairingSettingsRecords);
              v270 = v793;
              v271 = v800;
            }
          }

          else
          {
            sub_1001CC1B4(v657, type metadata accessor for LegacyMagicPairingSettingsRecords);
          }
        }

        v687 = v792;
        sub_1001C2C44(v506, v792 & 1);
        if (v687)
        {
          v688 = static os_log_type_t.default.getter();
          v689 = swift_allocObject();
          *(v689 + 16) = xmmword_100226100;
          v690 = *v563;
          v691 = v563[1];
          v692 = v798;
          *(v689 + 56) = &type metadata for String;
          *(v689 + 64) = v692;
          *(v689 + 32) = v690;
          *(v689 + 40) = v691;
          swift_bridgeObjectRetain_n();
          os_log(_:dso:log:_:_:)(v688, &_mh_execute_header, v797, "Adding %@ to incomingPairedDevices", 34, 2, v689);

          swift_beginAccess();
          sub_1001C51E8(&v802, v690, v691);
          swift_endAccess();
        }

        sub_1001CC1B4(v506, type metadata accessor for MagicPairingSettingsRecord);
        v199 = v795;
LABEL_120:
        v383 = [v271 creationDate];
        if (v383)
        {
          v384 = v729;
          v385 = v383;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          if (v792)
          {
            v386 = [v271 modificationDate];
            if (v386)
            {
              v387 = v775;
              v388 = v386;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              sub_1001C4BB4(&unk_1002F9600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v389 = v729;
              if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
              {
                v792 = String._bridgeToObjectiveC()();
                sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
                v406 = swift_allocObject();
                *(v406 + 16) = xmmword_100229100;
                *(v406 + 32) = 0x726F727245;
                *(v406 + 40) = 0xE500000000000000;
                v407 = objc_allocWithZone(NSString);
                v408 = String._bridgeToObjectiveC()();
                v409 = [v407 initWithString:v408];

                *(v406 + 48) = v409;
                *(v406 + 56) = 0x6D69547473726946;
                *(v406 + 64) = 0xE900000000000065;
                *(v406 + 72) = [objc_allocWithZone(NSNumber) initWithBool:0];
                *(v406 + 80) = 0x795464726F636552;
                *(v406 + 88) = 0xEA00000000006570;
                CKRecord.recordType.getter();
                v410 = objc_allocWithZone(NSString);
                v411 = String._bridgeToObjectiveC()();

                v412 = [v410 initWithString:v411];

                *(v406 + 96) = v412;
                *(v406 + 104) = 0x73736563637553;
                *(v406 + 112) = 0xE700000000000000;
                *(v406 + 120) = [objc_allocWithZone(NSNumber) initWithBool:1];
                strcpy((v406 + 128), "SyncDuration");
                *(v406 + 141) = 0;
                *(v406 + 142) = -5120;
                Date.timeIntervalSince(_:)();
                *(v406 + 144) = [objc_allocWithZone(NSNumber) initWithDouble:v413];
                strcpy((v406 + 152), "UploadDuration");
                *(v406 + 167) = -18;
                *(v406 + 168) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
                strcpy((v406 + 176), "UserInitiated");
                *(v406 + 190) = -4864;
                v414 = objc_allocWithZone(NSNumber);
                v415 = v795;
                *(v406 + 192) = [v414 initWithBool:0];
                sub_1000F9D9C(v406);
                swift_setDeallocating();
                sub_1000EE870(&qword_1002F9380, &unk_100229A70);
                swift_arrayDestroy();
                swift_deallocClassInstance();
                sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
                v416 = Dictionary._bridgeToObjectiveC()().super.isa;

                v417 = v792;
                CUMetricsLog();

                v403 = *(v791 + 8);
                v418 = v387;
                v199 = v415;
                v404 = v793;
                v403(v418, v793);
                v405 = v389;
                goto LABEL_128;
              }

              (*(v791 + 8))(v387, v270);
            }

            v390 = v787;
            static Date.now.getter();
            v792 = String._bridgeToObjectiveC()();
            sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
            v391 = swift_allocObject();
            *(v391 + 16) = xmmword_100229100;
            *(v391 + 32) = 0x726F727245;
            *(v391 + 40) = 0xE500000000000000;
            v392 = objc_allocWithZone(NSString);
            v393 = String._bridgeToObjectiveC()();
            v394 = [v392 initWithString:v393];

            *(v391 + 48) = v394;
            *(v391 + 56) = 0x6D69547473726946;
            *(v391 + 64) = 0xE900000000000065;
            *(v391 + 72) = [objc_allocWithZone(NSNumber) initWithBool:1];
            *(v391 + 80) = 0x795464726F636552;
            *(v391 + 88) = 0xEA00000000006570;
            CKRecord.recordType.getter();
            v395 = objc_allocWithZone(NSString);
            v396 = String._bridgeToObjectiveC()();

            v397 = [v395 initWithString:v396];

            *(v391 + 96) = v397;
            *(v391 + 104) = 0x73736563637553;
            *(v391 + 112) = 0xE700000000000000;
            *(v391 + 120) = [objc_allocWithZone(NSNumber) initWithBool:1];
            strcpy((v391 + 128), "SyncDuration");
            *(v391 + 141) = 0;
            *(v391 + 142) = -5120;
            v398 = v729;
            Date.timeIntervalSince(_:)();
            *(v391 + 144) = [objc_allocWithZone(NSNumber) initWithDouble:v399];
            strcpy((v391 + 152), "UploadDuration");
            *(v391 + 167) = -18;
            *(v391 + 168) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
            strcpy((v391 + 176), "UserInitiated");
            *(v391 + 190) = -4864;
            v400 = objc_allocWithZone(NSNumber);
            v199 = v795;
            *(v391 + 192) = [v400 initWithBool:0];
            sub_1000F9D9C(v391);
            swift_setDeallocating();
            sub_1000EE870(&qword_1002F9380, &unk_100229A70);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
            v401 = Dictionary._bridgeToObjectiveC()().super.isa;

            v402 = v792;
            CUMetricsLog();

            v403 = *(v791 + 8);
            v404 = v793;
            v403(v390, v793);
            v405 = v398;
LABEL_128:
            v403(v405, v404);
            v20 = &type metadata for String;
            goto LABEL_129;
          }

          (*(v791 + 8))(v384, v270);
        }

LABEL_129:
        v419 = static os_log_type_t.default.getter();
        v420 = swift_allocObject();
        *(v420 + 16) = xmmword_100226100;
        sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
        v421 = Array.description.getter();
        v422 = v798;
        *(v420 + 56) = v20;
        *(v420 + 64) = v422;
        *(v420 + 32) = v421;
        *(v420 + 40) = v423;
        os_log(_:dso:log:_:_:)(v419, &_mh_execute_header, v797, "Dropping outdated records: %@", 29, 2, v420);

        sub_1000EEE6C(&v808, &qword_1002F9D98, &qword_100229A58);
        v136 = v799;
        v137 = v199;
        v138 = v794;
        goto LABEL_130;
      }

      v561 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v270 = v793;
      v271 = v800;
      v506 = v742;
      if (v561)
      {

        goto LABEL_218;
      }

      if (v197 == 0xD000000000000012 && 0x80000001002671C0 == v198 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_1001A1688(v191, v792 & 1);
        goto LABEL_120;
      }

      if (v197 == 0x6563697665444141 && v198 == 0xEE0064726F636552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        *(&v806 + 1) = &type metadata for AudioAccessoryFeatures;
        v807 = sub_1000F1874();
        v631 = isFeatureEnabled(_:)();
        sub_1000EF824(&v805);
        if (v631)
        {
          v632 = objc_allocWithZone(type metadata accessor for AADeviceRecord(0));
          v633 = v191;
          v248 = v731;
          v634 = sub_100164730(v633);
          if (!v248)
          {
            v635 = v634;
            sub_1001C30D4(v634, v792 & 1);
LABEL_337:

            v199 = v795;
LABEL_338:
            v270 = v793;
            v271 = v800;
            goto LABEL_120;
          }

          goto LABEL_335;
        }
      }

      else
      {
        if ((v197 != 0xD000000000000011 || 0x800000010026EAC0 != v198) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v197 == 0xD000000000000013 && 0x8000000100267B10 == v198)
          {
          }

          else
          {
            v707 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v707 & 1) == 0)
            {
              v719 = static os_log_type_t.error.getter();
              v720 = swift_allocObject();
              *(v720 + 16) = v761;
              v721 = v798;
              *(v720 + 56) = &type metadata for String;
              *(v720 + 64) = v721;
              v199 = v795;
              *(v720 + 32) = v795;
              *(v720 + 40) = v794;

              v722 = v191;
              v723 = [v722 description];
              v724 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v726 = v725;

              *(v720 + 96) = &type metadata for String;
              *(v720 + 104) = v721;
              *(v720 + 72) = v724;
              *(v720 + 80) = v726;
              os_log(_:dso:log:_:_:)(v719, &_mh_execute_header, v797, "No valid record found[%@]: %@", 29, 2, v720);

              goto LABEL_338;
            }
          }

          goto LABEL_334;
        }
      }

      *(&v806 + 1) = &type metadata for AudioAccessoryFeatures;
      v807 = sub_1000F1874();
      v671 = isFeatureEnabled(_:)();
      sub_1000EF824(&v805);
      if (v671)
      {
        v672 = objc_allocWithZone(type metadata accessor for AAProxCardsRecord(0));
        v673 = v191;
        v248 = v731;
        v674 = sub_1000F3E30(v673);
        if (!v248)
        {
          v635 = v674;
          sub_1001C34AC(v674, v792 & 1);
          goto LABEL_337;
        }

LABEL_335:
        v199 = v795;
        goto LABEL_56;
      }

LABEL_334:
      v708 = objc_allocWithZone(type metadata accessor for HMDeviceCloudRecord(0));
      v709 = v191;
      v248 = v731;
      v710 = sub_100129F78(v709);
      if (!v248)
      {
        v635 = v710;
        sub_1001C387C(v710, v792 & 1);
        goto LABEL_337;
      }

      goto LABEL_335;
    }

    if (v158 >= *(v157 + 16))
    {
      break;
    }

    ++v158;
    v163 = v162 + 2;
    v141 = *v162;

    v164 = [v800 encryptedValues];
    v139 = String._bridgeToObjectiveC()();
    v155 = [v164 objectForKeyedSubscript:v139];

    swift_unknownObjectRelease();
    v162 = v163;
    if (v155)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v141 = *((v808 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v141 >= *((v808 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v159 = v808;
      v161 = v730;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_175:
  (v162)(v159, 1, 1, v155);
  v425 = &qword_1002F8510;
  v426 = &unk_100227B50;
LABEL_132:
  sub_1000EEE6C(v159, v425, v426);
LABEL_163:
  sub_100195ABC();
  v471 = *(&v806 + 1);
  v472 = v807;
  sub_1000EF78C(&v805, *(&v806 + 1));
  v473 = (*(v472 + 56))(v471, v472);
  v474 = [v473 creationDate];

  if (v474)
  {
    v475 = v787;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v476 = v767;
    v477 = v789;
    (v789)(v767, v475, v141);
    v160(v476, 0, 1, v141);
    v478 = v768;
    (v477)(v768, v476, v141);
  }

  else
  {
    v479 = v767;
    v160(v767, 1, 1, v141);
    v480 = *(&v806 + 1);
    v481 = v807;
    sub_1000EF78C(&v805, *(&v806 + 1));
    v478 = v768;
    (*(v481 + 40))(v480, v481);
    if (v785(v479, 1, v141) != 1)
    {
      sub_1000EEE6C(v479, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  Date.timeIntervalSince1970.getter();
  v483 = v482;
  v484 = v792;
  (v792)(v478, v141);
  Date.timeIntervalSince1970.getter();
  v486 = [objc_allocWithZone(NSNumber) initWithDouble:v483 - v485];
  v487 = String._bridgeToObjectiveC()();
  sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
  v488 = swift_allocObject();
  *(v488 + 16) = v788;
  *(v488 + 32) = 0xD00000000000001ALL;
  *(v488 + 40) = 0x8000000100270580;
  *(v488 + 48) = v486;
  v489 = v486;
  sub_1000F9D9C(v488);
  swift_setDeallocating();
  sub_1000EEE6C(v488 + 32, &qword_1002F9380, &unk_100229A70);
  swift_deallocClassInstance();
  sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
  v490 = Dictionary._bridgeToObjectiveC()().super.isa;

  CUMetricsLog();

  v484(v139, v141);
  sub_1000EEE6C(&v808, &qword_1002F9D98, &qword_100229A58);
  sub_1000EF824(&v805);
  v136 = v799;
LABEL_168:
  v137 = v795;
  v138 = v794;
LABEL_130:
  sub_1001C1FE8(v136, v137, v138);
}

void sub_1001A0974(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v5 - 8);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v47 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = objc_autoreleasePoolPush();
  v52 = a1;
  sub_100135EE0(a1, &v53);
  v51 = v2;
  if (v2)
  {
    objc_autoreleasePoolPop(v19);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v19);
    v20 = v53;
    v21 = [(objc_class *)v53 recordChangeTag];
    if (!v21)
    {
      goto LABEL_12;
    }

    v49 = a2;

    v22 = type metadata accessor for DeviceSupportInformationRecord(0);
    (*(v10 + 16))(v18, v52 + *(v22 + 64), v9);
    v23 = [(objc_class *)v20 modificationDate];
    if (v23)
    {
      v24 = v23;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = *(v10 + 32);
      v26 = v50;
      v25(v50, v12, v9);
      (*(v10 + 56))(v26, 0, 1, v9);
      v25(v15, v26, v9);
    }

    else
    {
      v27 = *(v10 + 56);
      v28 = v50;
      v27(v50, 1, 1, v9);
      v29 = [(objc_class *)v20 creationDate];
      if (v29)
      {
        v47 = v27;
        v30 = v29;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = v48;
        v32 = v12;
        v33 = *(v10 + 32);
        v33(v48, v32, v9);
        v47(v31, 0, 1, v9);
        v34 = v31;
        v28 = v50;
        v33(v15, v34, v9);
        v35 = *(v10 + 48);
      }

      else
      {
        v36 = v48;
        v27(v48, 1, 1, v9);
        v37 = v36;
        static Date.now.getter();
        v35 = *(v10 + 48);
        if (v35(v37, 1, v9) != 1)
        {
          sub_1000EEE6C(v37, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      if (v35(v28, 1, v9) != 1)
      {
        sub_1000EEE6C(v28, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v38 = static Date.> infix(_:_:)();
    v39 = *(v10 + 8);
    v39(v15, v9);
    v39(v18, v9);
    if (v38)
    {
LABEL_12:
      v40 = static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v41 = qword_100300E38;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_100226100;
      v43 = sub_100133818();
      v45 = v44;
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_1000EE954();
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "Retry cloud upload for deferred info record: %@", 47, 2, v42);

      sub_100193560();
      v46 = swift_allocObject();
      swift_weakInit();

      sub_100154534(v20, 0, sub_1001CBF00, v46);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1001A0F08(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = type metadata accessor for MagicPairingSettingsRecord(0);
  __chkstk_darwin(v3);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v5 - 8);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = &v46 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  v19 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*(a1 + *(v3 + 20)), *(a1 + *(v3 + 20) + 8));
  if (!isa)
  {
    isa = sub_1000F8100().super.isa;
  }

  v21 = isa;
  v53 = isa;
  v52 = a1;
  sub_10011A7B0(&v53);
  objc_autoreleasePoolPop(v19);
  v22 = [v21 recordChangeTag];
  if (!v22)
  {
    goto LABEL_13;
  }

  (*(v10 + 16))(v18, v52 + *(v3 + 120), v9);
  v23 = [v21 modificationDate];
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *(v10 + 32);
    v26 = v51;
    v25(v51, v12, v9);
    (*(v10 + 56))(v26, 0, 1, v9);
    v25(v15, v26, v9);
  }

  else
  {
    v27 = *(v10 + 56);
    v27(v51, 1, 1, v9);
    v28 = [v21 creationDate];
    if (v28)
    {
      v47 = v27;
      v29 = v28;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = v48;
      v31 = v12;
      v32 = *(v10 + 32);
      v32(v48, v31, v9);
      v47(v30, 0, 1, v9);
      v32(v15, v30, v9);
      v33 = *(v10 + 48);
    }

    else
    {
      v34 = v48;
      v27(v48, 1, 1, v9);
      static Date.now.getter();
      v33 = *(v10 + 48);
      if (v33(v34, 1, v9) != 1)
      {
        sub_1000EEE6C(v34, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v35 = v51;
    if (v33(v51, 1, v9) != 1)
    {
      sub_1000EEE6C(v35, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v36 = static Date.> infix(_:_:)();
  v37 = *(v10 + 8);
  v37(v15, v9);
  v37(v18, v9);
  if (v36)
  {
LABEL_13:
    v38 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v39 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100226100;
    v41 = v49;
    sub_1001CC14C(v52, v49, type metadata accessor for MagicPairingSettingsRecord);
    v42 = sub_100116308();
    v44 = v43;
    sub_1001CC1B4(v41, type metadata accessor for MagicPairingSettingsRecord);
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_1000EE954();
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v39, "Retry cloud upload for deferred magic settings: %@", 50, 2, v40);

    sub_100193560();
    v45 = swift_allocObject();
    swift_weakInit();

    sub_100154534(v21, 0, sub_1001CBE8C, v45);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001A151C(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v6 = static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v7 = qword_100300E38;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100226100;
      v12 = a1;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v9 = String.init<A>(describing:)();
      v11 = v10;
      *(v8 + 56) = &type metadata for String;
      *(v8 + 64) = sub_1000EE954();
      *(v8 + 32) = v9;
      *(v8 + 40) = v11;
      os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Unable to save record on cloud with error: %@", 45, 2, v8, v12);
    }

    else
    {
      sub_1001A1688(a1, 0);
    }
  }

  return result;
}

void sub_1001A1688(void *a1, int a2)
{
  LODWORD(v126) = a2;
  v4 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v4 - 8);
  v134 = v113 - v5;
  v133 = type metadata accessor for BTDeferredRecord(0);
  v138 = *(v133 - 8);
  __chkstk_darwin(v133);
  v125 = v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v136 = (v113 - v8);
  __chkstk_darwin(v9);
  v129 = v113 - v10;
  v124 = type metadata accessor for DispatchWorkItemFlags();
  v123 = *(v124 - 1);
  __chkstk_darwin(v124);
  v121 = v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for DispatchQoS();
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SoundProfileRecord(0);
  __chkstk_darwin(v13 - 8);
  v128 = (v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for URL();
  v139 = *(v15 - 8);
  __chkstk_darwin(v15);
  v132 = v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v131 = v113 - v18;
  __chkstk_darwin(v19);
  v21 = v113 - v20;
  __chkstk_darwin(v22);
  v24 = v113 - v23;
  __chkstk_darwin(v25);
  v27 = v113 - v26;
  __chkstk_darwin(v28);
  v30 = v113 - v29;
  __chkstk_darwin(v31);
  v130 = v113 - v32;
  __chkstk_darwin(v33);
  v35 = v113 - v34;
  __chkstk_darwin(v36);
  v137 = v113 - v37;
  v38 = CKRecord.recordType.getter();
  v140 = 0x80000001002671C0;
  if (v38 == 0xD000000000000012 && 0x80000001002671C0 == v39)
  {
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v40 & 1) == 0)
    {
      return;
    }
  }

  v135 = v2;
  v41 = [a1 valueStore];
  sub_1000FA784(0, &unk_1002F9D60, CKRecordValueStore_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if (v142)
  {
    sub_1000EE870(&unk_1002F9D70, &qword_100229A40);
    sub_1000FA784(0, &qword_1002F8048, CKAsset_ptr);
    if (swift_dynamicCast())
    {
      v42 = v145;
      v43 = [v145 fileURL];
      if (v43)
      {
        v115 = v42;
        v44 = v43;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = *(v139 + 32);
        v117 = v139 + 32;
        v116 = v45;
        v45(v137, v35, v15);
        v46 = IsAppleInternalBuild();
        v127 = v15;
        if (v46 && (v47 = [objc_opt_self() standardUserDefaults], v48 = String._bridgeToObjectiveC()(), v49 = objc_msgSend(v47, "BOOLForKey:", v48), v47, v48, (v49 & 1) != 0))
        {
          if (qword_1002F79E0 != -1)
          {
            swift_once();
          }

          v50 = sub_1000EE91C(v15, qword_100300B68);
          v51 = v15;
          v52 = v139;
          v114 = *(v139 + 16);
          v114(v30, v50, v51);
          URL.path.getter();
          v118 = *(v52 + 8);
          v118(v30, v51);
          v53 = v135;
          v54 = v130;
          URL.appendingPathComponent(_:isDirectory:)();
        }

        else
        {
          v113[1] = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_directoryURL;
          if (qword_1002F79E0 != -1)
          {
            swift_once();
          }

          v55 = sub_1000EE91C(v15, qword_100300B68);
          v56 = v139;
          v114 = *(v139 + 16);
          v114(v24, v55, v127);
          v57 = [a1 recordID];
          v58 = [v57 recordName];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          URL.appendingPathComponent(_:)();

          v59 = v127;
          v60 = *(v56 + 8);
          v60(v24, v127);
          URL.appendingPathExtension(_:)();
          v60(v27, v59);
          URL.path.getter();
          v118 = v60;
          v60(v30, v59);
          v53 = v135;
          v54 = v130;
          URL.appendingPathComponent(_:)();
        }

        if (!IsAppleInternalBuild() || (v61 = [objc_opt_self() standardUserDefaults], v62 = String._bridgeToObjectiveC()(), v63 = objc_msgSend(v61, "BOOLForKey:", v62), v61, v62, (v63 & 1) == 0))
        {
          v64 = sub_100192340();
          __chkstk_darwin(v64);
          v65 = v137;
          v113[-2] = v54;
          v113[-1] = v65;
          OS_dispatch_queue.sync<A>(execute:)();
        }

        v114(v21, v54, v127);
        v66 = a1;
        v67 = v128;
        sub_1000FCD2C(v66, v21, v128);
        v68 = sub_100192340();
        __chkstk_darwin(v68);
        v113[-2] = v69;
        v113[-1] = v67;
        OS_dispatch_queue.sync<A>(execute:)();

        v75 = static os_log_type_t.default.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v76 = qword_100300E38;
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_100226100;
        v78 = sub_1000FAF14();
        v80 = v79;
        *(v77 + 56) = &type metadata for String;
        *(v77 + 64) = sub_1000EE954();
        *(v77 + 32) = v78;
        *(v77 + 40) = v80;
        os_log(_:dso:log:_:_:)(v75, &_mh_execute_header, v76, "Saving sound profile record: %@", 31, 2, v77);

        if (v126)
        {
          sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
          v81 = static OS_dispatch_queue.main.getter();
          v143 = sub_1001CE10C;
          v144 = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1001742E0;
          v142 = &unk_1002C0760;
          v82 = _Block_copy(aBlock);
          v83 = v119;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
          sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
          v84 = v121;
          v85 = v124;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v82);

          (v123[1])(v84, v85);
          (*(v120 + 8))(v83, v122);
        }

        v86 = sub_10019391C();
        v87 = v86;
        v88 = v129;
        if (v86[2])
        {
          v89 = v86[2];
          v90 = 0;
          v91 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v90 >= v87[2])
            {
              __break(1u);
              goto LABEL_53;
            }

            v92 = (*(v138 + 80) + 32) & ~*(v138 + 80);
            v93 = *(v138 + 72);
            sub_1001CC14C(v87 + v92 + v93 * v90, v88, type metadata accessor for BTDeferredRecord);
            v94 = *(v88 + 8) == 0xD000000000000012 && v140 == *(v88 + 16);
            if (v94 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              if (*v88 == 1)
              {

LABEL_40:
                sub_1001CC214(v88, v136, type metadata accessor for BTDeferredRecord);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                aBlock[0] = v91;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1001C4EBC(0, v91[2] + 1, 1);
                  v91 = aBlock[0];
                }

                v98 = v91[2];
                v97 = v91[3];
                if (v98 >= v97 >> 1)
                {
                  sub_1001C4EBC((v97 > 1), v98 + 1, 1);
                  v91 = aBlock[0];
                }

                v91[2] = v98 + 1;
                sub_1001CC214(v136, v91 + v92 + v98 * v93, type metadata accessor for BTDeferredRecord);
                v53 = v135;
                v88 = v129;
                goto LABEL_30;
              }

              v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v95)
              {
                goto LABEL_40;
              }
            }

            sub_1001CC1B4(v88, type metadata accessor for BTDeferredRecord);
LABEL_30:
            if (v89 == ++v90)
            {
              goto LABEL_46;
            }
          }
        }

        v91 = _swiftEmptyArrayStorage;
LABEL_46:

        v99 = v125;
        v100 = v127;
        v129 = v91[2];
        if (v129)
        {
          v101 = 0;
          v126 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager;
          v124 = (v139 + 48);
          v122 = v139 + 8;
          v123 = v91;
          while (v101 < v91[2])
          {
            sub_1001CC14C(v91 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v101, v99, type metadata accessor for BTDeferredRecord);
            v102 = *(v53 + v126);

            v103 = UUID.uuidString.getter();
            v105 = v104;
            v106 = v134;
            URL.init(string:)();
            if ((*v124)(v106, 1, v100) == 1)
            {
              __break(1u);
              return;
            }

            ++v101;
            v107 = v132;
            v116(v132, v106, v100);
            v108 = v131;
            URL.appendingPathComponent(_:)();
            v109 = v118;
            v110 = (v118)(v107, v127);
            v136 = v113;
            __chkstk_darwin(v110);
            v113[-4] = v102;
            v113[-3] = v103;
            v113[-2] = v105;
            v113[-1] = v108;
            OS_dispatch_queue.sync<A>(execute:)();

            sub_1001CC1B4(v99, type metadata accessor for BTDeferredRecord);

            v111 = v108;
            v100 = v127;
            v109(v111, v127);
            v53 = v135;
            v91 = v123;
            if (v129 == v101)
            {
              goto LABEL_51;
            }
          }

LABEL_53:
          __break(1u);
          swift_once();
          v70 = qword_100300E38;
          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v71 = swift_allocObject();
          *(v71 + 16) = xmmword_100226100;
          aBlock[0] = 0;
          swift_errorRetain();
          sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
          v72 = String.init<A>(describing:)();
          v74 = v73;
          *(v71 + 56) = &type metadata for String;
          *(v71 + 64) = sub_1000EE954();
          *(v71 + 32) = v72;
          *(v71 + 40) = v74;
          os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v70, "Unable to save sound profile record: %@", 39, 2, v71);
        }

        else
        {
LABEL_51:

          sub_1001CC1B4(v128, type metadata accessor for SoundProfileRecord);
          v112 = v118;
          v118(v130, v100);
          v112(v137, v100);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1000EEE6C(aBlock, &qword_1002F8058, &unk_100227110);
  }
}

void sub_1001A29D4(char **a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  v18 = *a1;
  v19 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v18[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata], *&v18[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F89F4().super.isa;
  }

  v57 = isa;
  v21 = isa;
  sub_1001675F4(&v57);
  objc_autoreleasePoolPop(v19);
  v22 = [v21 recordChangeTag];
  v58 = v21;
  if (!v22)
  {
    goto LABEL_13;
  }

  v54 = v8;

  v23 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_lastModifiedDate;
  swift_beginAccess();
  (*(v10 + 16))(v17, &v18[v23], v9);
  v24 = [v21 modificationDate];
  if (v24)
  {
    v25 = v55;
    v26 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v10 + 32);
    v28 = v17;
    v29 = v14;
    v30 = v54;
    v27(v54, v25, v9);
    (*(v10 + 56))(v30, 0, 1, v9);
    v31 = v29;
    v32 = v30;
    v14 = v29;
    v17 = v28;
    v27(v31, v32, v9);
  }

  else
  {
    v33 = *(v10 + 56);
    v33(v54, 1, 1, v9);
    v34 = [v21 creationDate];
    if (v34)
    {
      v53 = v33;
      v35 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = v5;
      v37 = *(v10 + 32);
      v37(v36, v55, v9);
      v53(v36, 0, 1, v9);
      v37(v14, v36, v9);
      v38 = *(v10 + 48);
    }

    else
    {
      v33(v5, 1, 1, v9);
      static Date.now.getter();
      v39 = v5;
      v38 = *(v10 + 48);
      if (v38(v39, 1, v9) != 1)
      {
        sub_1000EEE6C(v39, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v40 = v54;
    if (v38(v54, 1, v9) != 1)
    {
      sub_1000EEE6C(v40, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v41 = static Date.> infix(_:_:)();
  v42 = *(v10 + 8);
  v42(v14, v9);
  v42(v17, v9);
  v43 = v58;
  if (v41)
  {
LABEL_13:
    v44 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v45 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100226100;
    v47 = v18;
    v48 = [v47 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_1000EE954();
    *(v46 + 32) = v49;
    *(v46 + 40) = v51;
    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v45, "Retry cloud upload for deferred aaDeviceRecord: %@", 50, 2, v46);

    sub_100193560();
    v52 = swift_allocObject();
    swift_weakInit();

    v43 = v58;
    sub_100154534(v58, 0, sub_1001CBDA4, v52);
    swift_unknownObjectRelease();
  }
}

void sub_1001A2FB4(char **a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  v18 = *a1;
  v19 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v18[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v18[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F882C().super.isa;
  }

  v57 = isa;
  v21 = isa;
  sub_1000F6FF4(&v57);
  objc_autoreleasePoolPop(v19);
  v22 = [v21 recordChangeTag];
  v58 = v21;
  if (!v22)
  {
    goto LABEL_13;
  }

  v54 = v8;

  v23 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_lastModifiedDate;
  swift_beginAccess();
  (*(v10 + 16))(v17, &v18[v23], v9);
  v24 = [v21 modificationDate];
  if (v24)
  {
    v25 = v55;
    v26 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v10 + 32);
    v28 = v17;
    v29 = v14;
    v30 = v54;
    v27(v54, v25, v9);
    (*(v10 + 56))(v30, 0, 1, v9);
    v31 = v29;
    v32 = v30;
    v14 = v29;
    v17 = v28;
    v27(v31, v32, v9);
  }

  else
  {
    v33 = *(v10 + 56);
    v33(v54, 1, 1, v9);
    v34 = [v21 creationDate];
    if (v34)
    {
      v53 = v33;
      v35 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = v5;
      v37 = *(v10 + 32);
      v37(v36, v55, v9);
      v53(v36, 0, 1, v9);
      v37(v14, v36, v9);
      v38 = *(v10 + 48);
    }

    else
    {
      v33(v5, 1, 1, v9);
      static Date.now.getter();
      v39 = v5;
      v38 = *(v10 + 48);
      if (v38(v39, 1, v9) != 1)
      {
        sub_1000EEE6C(v39, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v40 = v54;
    if (v38(v54, 1, v9) != 1)
    {
      sub_1000EEE6C(v40, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v41 = static Date.> infix(_:_:)();
  v42 = *(v10 + 8);
  v42(v14, v9);
  v42(v17, v9);
  v43 = v58;
  if (v41)
  {
LABEL_13:
    v44 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v45 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100226100;
    v47 = v18;
    v48 = [v47 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_1000EE954();
    *(v46 + 32) = v49;
    *(v46 + 40) = v51;
    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v45, "Retry cloud upload for deferred aaProxCardsRecord: %@", 53, 2, v46);

    sub_100193560();
    v52 = swift_allocObject();
    swift_weakInit();

    v43 = v58;
    sub_100154534(v58, 0, sub_1001CBD30, v52);
    swift_unknownObjectRelease();
  }
}

void sub_1001A3594(char **a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  v18 = *a1;
  v19 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*&v18[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata], *&v18[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8]);
  if (!isa)
  {
    isa = sub_1000F8660().super.isa;
  }

  v57 = isa;
  v21 = isa;
  sub_10012F138(&v57);
  objc_autoreleasePoolPop(v19);
  v22 = [v21 recordChangeTag];
  v58 = v21;
  if (!v22)
  {
    goto LABEL_13;
  }

  v54 = v8;

  v23 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate;
  swift_beginAccess();
  (*(v10 + 16))(v17, &v18[v23], v9);
  v24 = [v21 modificationDate];
  if (v24)
  {
    v25 = v55;
    v26 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = *(v10 + 32);
    v28 = v17;
    v29 = v14;
    v30 = v54;
    v27(v54, v25, v9);
    (*(v10 + 56))(v30, 0, 1, v9);
    v31 = v29;
    v32 = v30;
    v14 = v29;
    v17 = v28;
    v27(v31, v32, v9);
  }

  else
  {
    v33 = *(v10 + 56);
    v33(v54, 1, 1, v9);
    v34 = [v21 creationDate];
    if (v34)
    {
      v53 = v33;
      v35 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = v5;
      v37 = *(v10 + 32);
      v37(v36, v55, v9);
      v53(v36, 0, 1, v9);
      v37(v14, v36, v9);
      v38 = *(v10 + 48);
    }

    else
    {
      v33(v5, 1, 1, v9);
      static Date.now.getter();
      v39 = v5;
      v38 = *(v10 + 48);
      if (v38(v39, 1, v9) != 1)
      {
        sub_1000EEE6C(v39, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v40 = v54;
    if (v38(v54, 1, v9) != 1)
    {
      sub_1000EEE6C(v40, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v41 = static Date.> infix(_:_:)();
  v42 = *(v10 + 8);
  v42(v14, v9);
  v42(v17, v9);
  v43 = v58;
  if (v41)
  {
LABEL_13:
    v44 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v45 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100226100;
    v47 = v18;
    v48 = [v47 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_1000EE954();
    *(v46 + 32) = v49;
    *(v46 + 40) = v51;
    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, v45, "Retry cloud upload for deferred HMDeviceCloudRecord: %@", 55, 2, v46);

    sub_100193560();
    v52 = swift_allocObject();
    swift_weakInit();

    v43 = v58;
    sub_100154534(v58, 0, sub_1001CBE18, v52);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001A3B74(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v26 = *(v14 - 8);
  v27 = v14;
  __chkstk_darwin(v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = v11;
    v18 = *(result + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
    v19 = result;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    v21 = a2 & 1;
    *(v20 + 24) = v21;
    *(v20 + 32) = v19;
    aBlock[4] = a5;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = a6;
    v22 = _Block_copy(aBlock);
    v23 = v18;
    sub_1001CB634(a1, v21);

    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v25 + 8))(v13, v10);
    (*(v26 + 8))(v16, v27);
  }

  return result;
}

uint64_t sub_1001A3E94(void *a1, char a2, uint64_t a3, const char *a4, uint64_t a5)
{
  if ((a2 & 1) == 0)
  {
    return sub_10019A610(a1, _swiftEmptyArrayStorage, 0);
  }

  v7 = static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v8 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, a4, a5, 2, v9);
}

uint64_t sub_1001A3FE0(void *a1)
{
  v2 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EE870(&qword_1002F8500, &qword_100227B38);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  sub_100192464(v21 - v10);
  LODWORD(v2) = (*(v3 + 48))(v11, 1, v2);
  sub_1000EEE6C(v11, &qword_1002F8500, &qword_100227B38);
  if (v2 == 1)
  {
    sub_1001003DC(a1, v5);
    v12 = sub_100192340();
    __chkstk_darwin(v12);
    v21[-2] = v13;
    v21[-1] = v5;
    OS_dispatch_queue.sync<A>(execute:)();

    return sub_1001CC1B4(v5, type metadata accessor for LegacyAccountMagicKeysRecord);
  }

  else
  {
    v15 = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v16 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100226100;
    sub_100192464(v8);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_1000EE954();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Account keys already set: %@", 28, 2, v17);
  }
}

uint64_t sub_1001A43D0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1000EE870(&qword_1002F8500, &qword_100227B38);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-v5];
  v7 = type metadata accessor for LegacyAccountMagicKeysRecord(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100192464(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000EEE6C(v6, &qword_1002F8500, &qword_100227B38);
  }

  sub_1001CC214(v6, v10, type metadata accessor for LegacyAccountMagicKeysRecord);
  v12 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    v19 = v12;
    swift_once();
    v12 = v19;
  }

  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_100300E38, "Deleting account magic keys", 27, 2, _swiftEmptyArrayStorage);
  v13 = sub_100192340();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  if (qword_1002F79E8 != -1)
  {
    swift_once();
  }

  v17 = sub_1000EE91C(v0, qword_100300B80);
  v18 = (*(v1 + 16))(v3, v17, v0);
  __chkstk_darwin(v18);
  *&v20[-32] = v13;
  *&v20[-24] = v14;
  *&v20[-16] = v16;
  *&v20[-8] = v3;
  OS_dispatch_queue.sync<A>(execute:)();

  sub_1001CC1B4(v10, type metadata accessor for LegacyAccountMagicKeysRecord);

  return (*(v1 + 8))(v3, v0);
}