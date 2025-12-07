id sub_100001690(void *a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v85 = a5;
  v86 = a4;
  v93 = a3;
  type metadata accessor for Logger();
  sub_1000029A0();
  v94 = v8;
  v95 = v7;
  __chkstk_darwin(v7);
  sub_1000021D4();
  v98 = v9 - v10;
  __chkstk_darwin(v11);
  v84 = &v83 - v12;
  v91 = sub_1000068C0(&qword_100014A30, &qword_10000C068);
  sub_1000029C4();
  __chkstk_darwin(v13);
  v92 = &v83 - v14;
  v90 = type metadata accessor for URLResourceValues();
  sub_1000029A0();
  v89 = v15;
  __chkstk_darwin(v16);
  sub_1000029FC();
  v19 = v18 - v17;
  v20 = sub_1000068C0(&qword_100014A38, &qword_10000C070);
  v21 = sub_100008250(v20);
  __chkstk_darwin(v21);
  sub_1000021D4();
  v87 = v22 - v23;
  v25 = __chkstk_darwin(v24);
  v27 = &v83 - v26;
  __chkstk_darwin(v25);
  v88 = &v83 - v28;
  v29 = type metadata accessor for URL();
  sub_1000029A0();
  v96 = v30;
  __chkstk_darwin(v31);
  sub_1000021D4();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v37 = &v83 - v36;
  sub_100007E80(0, &qword_100014A40, CKDContainer_ptr);
  v38 = objc_opt_self();
  v99 = sub_100002110(a1, a2, [v38 sharedInternalUseContainers]);
  v39 = [v99 directoryContext];
  v40 = [v39 fileDownloadDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000068C0(&qword_100014A48, &qword_10000C078);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000BFC0;
  *(inited + 32) = NSURLVolumeURLKey;
  v42 = NSURLVolumeURLKey;
  sub_1000021E4(inited);
  v97 = v37;
  v43 = v100;
  URL.resourceValues(forKeys:)();
  if (v43)
  {

    v100 = 0;
    v44 = v29;
    v45 = v96;
LABEL_3:
    v46 = v98;
    CKLog.getter();
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      sub_10000818C();
      v49 = swift_slowAlloc();
      sub_100008160();
      v50 = swift_slowAlloc();
      v101 = v50;
      *v49 = 136315138;
      ErrorValue = swift_getErrorValue();
      v96 = v44;
      __chkstk_darwin(ErrorValue);
      sub_1000029FC();
      (*(v54 + 16))(v53 - v52);
      v55 = String.init<A>(describing:)();
      v57 = sub_100006AE4(v55, v56, &v101);

      *(v49 + 4) = v57;
      sub_100008240();
      _os_log_impl(v58, v59, v60, v61, v62, v63);
      sub_100007068(v50);
      sub_1000080B4();

      sub_1000080C4();

      (*(v94 + 8))(v98, v95);
      return (*(v45 + 8))(v97, v96);
    }

    (*(v94 + 8))(v46, v95);
    return (*(v45 + 8))(v97, v44);
  }

  v83 = v34;
  v100 = 0;

  v65 = v88;
  URLResourceValues.volume.getter();
  (*(v89 + 8))(v19, v90);
  v45 = v96;
  (*(v96 + 16))(v27, v93, v29);
  sub_100002978(v27, 0, 1, v29);
  v66 = v92;
  v67 = *(v91 + 48);
  sub_100007D98(v65, v92, &qword_100014A38, &qword_10000C070);
  sub_100007D98(v27, v66 + v67, &qword_100014A38, &qword_10000C070);
  v44 = v29;
  if (sub_1000029D4(v66, 1, v29) != 1)
  {
    v69 = v87;
    sub_100007D98(v66, v87, &qword_100014A38, &qword_10000C070);
    if (sub_1000029D4(v66 + v67, 1, v29) != 1)
    {
      v70 = v66 + v67;
      v71 = v83;
      (*(v45 + 32))(v83, v70, v29);
      sub_100007DF8(&qword_100014A50, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      LODWORD(v93) = dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = v66;
      v73 = *(v45 + 8);
      v73(v71, v29);
      sub_10000217C(v27, &qword_100014A38, &qword_10000C070);
      v73(v69, v29);
      sub_10000217C(v72, &qword_100014A38, &qword_10000C070);
      v68 = v99;
      if (v93)
      {
        goto LABEL_16;
      }

LABEL_14:
      sub_10000217C(v65, &qword_100014A38, &qword_10000C070);
      return (*(v45 + 8))(v97, v29);
    }

    sub_10000217C(v27, &qword_100014A38, &qword_10000C070);
    (*(v45 + 8))(v69, v29);
LABEL_13:
    sub_10000217C(v66, &qword_100014A30, &qword_10000C068);
    goto LABEL_14;
  }

  sub_10000217C(v27, &qword_100014A38, &qword_10000C070);
  if (sub_1000029D4(v66 + v67, 1, v29) != 1)
  {

    goto LABEL_13;
  }

  sub_10000217C(v66, &qword_100014A38, &qword_10000C070);
  v68 = v99;
LABEL_16:
  v101 = 0;
  if (![v68 setupAssetTransfers:&v101])
  {
    v78 = v101;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10000217C(v65, &qword_100014A38, &qword_10000C070);
    v100 = 0;
    goto LABEL_3;
  }

  v74 = v101;
  sub_10000217C(v65, &qword_100014A38, &qword_10000C070);
  v75 = [v68 MMCS];
  if (!v75)
  {
    v79 = v84;
    CKLog.getter();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "cache_purge: container.MMCS nil", v82, 2u);
      sub_1000080C4();
    }

    (*(v94 + 8))(v79, v95);
    return (*(v45 + 8))(v97, v44);
  }

  v76 = v75;
  result = [v75 assetCache];
  if (result)
  {
    v77 = result;
    v86();

    return (*(v45 + 8))(v97, v44);
  }

  __break(1u);
  return result;
}

id sub_100002110(void *a1, void *a2, void *a3)
{
  v6 = [swift_getObjCClassFromMetadata() containerWithAppContainerAccountTuple:a1 deviceContext:a2 sharedContainerTable:a3];

  return v6;
}

uint64_t sub_10000217C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000068C0(a2, a3);
  sub_1000029C4();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1000021E4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  sub_100007DF8(&qword_100014A58, type metadata accessor for URLResourceKey, &unk_10000C274);
  v2 = Set.init(minimumCapacity:)();
  v3 = 0;
  v6[1] = v2;
  v4 = *(a1 + 16);
  while (1)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    v5 = v3 + 1;
    sub_100002580(v6, *(a1 + 8 * v3 + 32));

    v3 = v5;
  }

  __break(1u);
}

void sub_1000022DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_100002328(void *a1, char a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  v8 = v2[6];
  v7 = v2[7];
  v9 = [a1 clearForced:a2 & 1];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 bytesCount];
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!__OFADD__(*v4, v11))
    {
      *v4 += v11;
      v12 = [v10 purgedBytesCount];
      if ((v12 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(*v3, v12))
        {
          *v3 += v12;
          v13 = [v10 purgeableBytesCount];
          if ((v13 & 0x8000000000000000) == 0)
          {
            if (!__OFADD__(*v6, v13))
            {
              *v6 += v13;
              v14 = [v10 filesCount];
              if ((v14 & 0x8000000000000000) == 0)
              {
                if (!__OFADD__(*v5, v14))
                {
                  *v5 += v14;
                  v15 = [v10 purgedFilesCount];
                  if ((v15 & 0x8000000000000000) == 0)
                  {
                    if (!__OFADD__(*v8, v15))
                    {
                      *v8 += v15;
                      v16 = [v10 purgeableFilesCount];

                      if ((v16 & 0x8000000000000000) == 0)
                      {
                        if (!__OFADD__(*v7, v16))
                        {
                          *v7 += v16;
                          return;
                        }

LABEL_27:
                        __break(1u);
                        return;
                      }

LABEL_26:
                      __break(1u);
                      goto LABEL_27;
                    }

LABEL_25:
                    __break(1u);
                    goto LABEL_26;
                  }

LABEL_24:
                  __break(1u);
                  goto LABEL_25;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_1000024A0(uint64_t a1)
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = *(v1 + ((*(v2 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = objc_autoreleasePoolPush();
  sub_100008198();
  sub_100001690(v5, v6, v7, v8, v3);

  __objc_autoreleasePoolPop(v4);
}

BOOL sub_100002580(void *a1, void *a2)
{
  v4 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v20;
      v16 = a2;
      sub_1000027A8(v16, v7, isUniquelyReferenced_nonNull_native);
      *v20 = v22;
      *a1 = v16;
      return v8 == 0;
    }

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {

      goto LABEL_12;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      break;
    }

    v5 = v7 + 1;
  }

LABEL_12:
  v17 = *(*(v4 + 48) + 8 * v7);
  *a1 = v17;
  v18 = v17;
  return v8 == 0;
}

void sub_100002724(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1000027A8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000071E0(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_10000760C(v7 + 1);
LABEL_10:
      v13 = *v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for URLResourceKey(0);
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {
          goto LABEL_19;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_20;
        }

        v14 = a2 + 1;
      }
    }

    result = sub_1000074BC();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

uint64_t sub_100002A24()
{
  sub_10000825C();

  return _swift_deallocObject(v1);
}

uint64_t sub_100002A58()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100002A98()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100002AD0()
{
  v1 = type metadata accessor for URL();
  sub_1000029A0();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_100002BB8(int a1)
{
  v1 = 1751607624;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 2)
  {
    v2 = 0x6D756964654DLL;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 7827276;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100002C1C()
{
  v1 = *&v0[OBJC_IVAR____TtC6cloudd13CKDMain_Swift_serialQueue];
  sub_10000825C();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100007E40;
  *(v3 + 24) = v2;
  v9[4] = sub_100007E58;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100002D78;
  v9[3] = &unk_100010C50;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100002DE8()
{
  sub_1000081A4();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_1000068C0(&qword_100014A08, &qword_10000C018);
  v18 = sub_100008250(v17);
  __chkstk_darwin(v18);
  v20 = &v23 - v19;
  v21 = type metadata accessor for TaskPriority();
  sub_100002978(v20, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v16;
  v22[5] = v14;
  v22[6] = v12;
  v22[7] = v10;
  v22[8] = v8;
  v22[9] = v6;
  v22[10] = v4;
  v22[11] = v2;
  v22[12] = v24;

  sub_100003844(0, 0, v20, &unk_10000C028, v22);

  sub_100002A0C();
}

uint64_t sub_100002F0C()
{
  sub_1000082DC();
  *(v0 + 72) = v11;
  *(v0 + 56) = v10;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 16) = v5;
  v6 = sub_1000068C0(&qword_100014A10, &qword_10000C048);
  sub_100008250(v6);
  *(v0 + 80) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v0 + 88) = v7;
  *(v0 + 96) = *(v7 - 8);
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();

  return (_swift_task_switch)(sub_100003024, 0, 0);
}

uint64_t sub_100003024()
{
  v50 = v0;
  v47 = v0[4];
  v1 = v0[2];
  v2 = v0[3];
  sub_1000068C0(&qword_100014A18, &qword_10000C050);
  v3 = (sub_1000068C0(&qword_100014A20, &qword_10000C058) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10000BFB0;
  v7 = (v6 + v5);
  v8 = (v7 + v3[14]);
  *v7 = 0x79636E65677275;
  v7[1] = 0xE700000000000000;
  *v8 = v1;
  v8[1] = v2;
  v9 = enum case for EventValue.string(_:);
  v10 = type metadata accessor for EventValue();
  sub_1000029C4();
  v12 = *(v11 + 104);
  (v12)(v8, v9, v10);
  v13 = (v7 + v4);
  v14 = v3[14];
  *v13 = 0x756F437365747962;
  v13[1] = 0xEA0000000000746ELL;
  *(v13 + v14) = v47;
  (v12)(v7 + v4 + v14, enum case for EventValue.int(_:), v10);
  sub_100008284();
  *v15 = 0xD000000000000010;
  v15[1] = v16;
  v17 = sub_1000080A0(v15);
  v12(v17);
  sub_100008284();
  *v18 = 0xD000000000000013;
  v18[1] = v19;
  v20 = sub_1000080A0(v18);
  v12(v20);
  v21 = (v7 + 4 * v4);
  *v21 = 0x756F4373656C6966;
  v21[1] = 0xEA0000000000746ELL;
  v22 = sub_1000080A0(v21);
  v12(v22);
  sub_100008284();
  *v23 = 0xD000000000000010;
  v23[1] = v24;
  v25 = sub_1000080A0(v23);
  v12(v25);
  sub_100008284();
  *v26 = 0xD000000000000013;
  v26[1] = v27;
  v28 = sub_1000080A0(v26);
  v12(v28);

  v29 = Dictionary.init(dictionaryLiteral:)();
  v0[15] = v29;
  CKLog.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[14];
  v35 = v0[11];
  v34 = v0[12];
  if (v32)
  {
    sub_10000818C();
    v48 = v33;
    v36 = swift_slowAlloc();
    sub_100008160();
    v37 = swift_slowAlloc();
    v49 = v37;
    *v36 = 136315138;
    v38 = Dictionary.description.getter();
    v40 = sub_100006AE4(v38, v39, &v49);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "reporting asset cache metrics %s", v36, 0xCu);
    sub_100007068(v37);
    sub_1000080C4();

    sub_1000080C4();

    v41 = *(v34 + 8);
    v41(v48, v35);
  }

  else
  {

    v41 = *(v34 + 8);
    v41(v33, v35);
  }

  v0[16] = v41;
  v42 = v0[10];
  type metadata accessor for Reporter();
  v43 = type metadata accessor for TransportConfiguration();
  sub_100002978(v42, 1, 1, v43);
  v44 = swift_task_alloc();
  v0[17] = v44;
  *v44 = v0;
  v44[1] = sub_100003514;
  v45 = v0[10];

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(0x51424A3241394B34, 0xEA00000000005832, 0xD000000000000010, 0x800000010000C5B0, v29, v45);
}

uint64_t sub_100003514()
{
  sub_1000082B0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = *v1;
  sub_100008150();
  *v6 = v5;
  *(v3 + 144) = v0;

  sub_10000217C(v4, &qword_100014A10, &qword_10000C048);

  if (!v0)
  {

    v7 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1000036C0, 0, 0);
}

uint64_t sub_1000036C0(uint64_t a1)
{
  CKLog.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    sub_10000818C();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    sub_100008240();
    _os_log_impl(v7, v8, v9, v10, v11, v12);
    sub_10000217C(v5, &qword_100014A28, &qword_10000C060);
    sub_1000080B4();

    sub_1000080C4();
  }

  else
  {
  }

  (*(v1 + 128))(*(v1 + 104), *(v1 + 88));

  sub_1000082D0();

  return v13();
}

uint64_t sub_100003844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000068C0(&qword_100014A08, &qword_10000C018);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100007D98(a3, v24 - v10, &qword_100014A08, &qword_10000C018);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_1000029D4(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10000217C(v11, &qword_100014A08, &qword_10000C018);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
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
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10000217C(a3, &qword_100014A08, &qword_10000C018);

      return v22;
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

  sub_10000217C(a3, &qword_100014A08, &qword_10000C018);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_100003B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000081A4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for URL();
  sub_1000029A0();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v15 = [objc_opt_self() defaultContext];
  v16 = [v15 metadataCache];
  (*(v11 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v9);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v11 + 32))(v18 + v17, v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v19 = (v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v6;
  v19[1] = v4;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1000024A0;
  *(v20 + 24) = v18;
  v23[4] = sub_100002780;
  v23[5] = v20;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_100002724;
  v23[3] = &unk_100010BD8;
  v21 = _Block_copy(v23);
  v22 = v15;

  [v16 enumerateKnownAppContainerAccountTuplesUsingBlock:v21];

  _Block_release(v21);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    sub_100002A0C();
  }
}

void sub_100003D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000081A4();
  v5 = v4;
  v7 = v6;
  v85 = v8;
  ObjectType = swift_getObjectType();
  type metadata accessor for Date();
  sub_1000029A0();
  v83 = v10;
  v84 = v9;
  __chkstk_darwin(v9);
  sub_1000029FC();
  v82 = v12 - v11;
  v13 = type metadata accessor for Logger();
  sub_1000029A0();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000021D4();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = &v78 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  sub_1000029A0();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_1000029FC();
  v29 = v28 - v27;
  v30 = *(v5 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_serialQueue);
  *(v28 - v27) = v30;
  (*(v25 + 104))(v28 - v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v29, v23);
  if (v30)
  {
    if (*(v5 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_systemAvailableForCacheDelete) == 1 && (v7 & 0xFFFFFFFE) == 2)
    {
      v92 = 0;
      v93 = 0;
      v90 = 0;
      v91 = 0;
      v88 = 0;
      v89 = 0;
      v33 = OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cachesByVolume;
      v34 = *(v5 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cachesByVolume);
      URL._bridgeToObjectiveC()(v35);
      v37 = v36;
      v38 = [v34 objectForKey:v36];

      v80 = v7;
      if (v38 && (v87 = v38, (sub_100008328(&v86, &v87, &type metadata for CKDMain_Swift.VolumeSizeCache, &type metadata for Swift.AnyObject) & 1) != 0))
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = v86;
        v91 = v86;
      }

      else
      {
        v79 = v33;
        CKLog.getter();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v43, v44))
        {
          sub_10000818C();
          v45 = swift_slowAlloc();
          sub_100008160();
          v46 = swift_slowAlloc();
          v87 = v46;
          *v45 = 136315138;
          v47 = sub_100002BB8(v7);
          v78 = v19;
          v49 = sub_100006AE4(v47, v48, &v87);
          v19 = v78;

          *(v45 + 4) = v49;
          v7 = v80;
          sub_100008240();
          _os_log_impl(v50, v51, v52, v53, v54, v55);
          sub_100007068(v46);
          sub_1000080C4();

          sub_1000080C4();
        }

        v56 = (*(v15 + 8))(v22, v13);
        __chkstk_darwin(v56);
        sub_1000080E8();
        sub_100003B28(v85, sub_100002498, v57);
        v58 = *(v5 + v79);
        v42 = v91;
        v87 = v91;
        v59 = v58;
        v60 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        URL._bridgeToObjectiveC()(v61);
        v63 = v62;
        v64 = v82;
        Date.init(timeIntervalSinceNow:)();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v83 + 8))(v64, v84);
        [v59 setObject:v60 forKey:v63 expirationDate:isa];
        swift_unknownObjectRelease();

        v41 = v92;
        v39 = v88;
        v40 = v89;
      }

      if (v41 > 0 || v42 > 0 || v40 > 0 || v39 >= 1)
      {
        sub_100002BB8(v7);
        sub_100002DE8();
      }

      CKLog.getter();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        sub_100008160();
        v72 = swift_slowAlloc();
        v87 = v72;
        *v71 = 134218242;
        *(v71 + 4) = v42;
        *(v71 + 12) = 2080;
        v73 = sub_100002BB8(v80);
        v75 = v19;
        v76 = v13;
        v77 = sub_100006AE4(v73, v74, &v87);

        *(v71 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v69, v70, "Found %lld purgeable bytes, urgency: %s", v71, 0x16u);
        sub_100007068(v72);
        sub_1000080C4();

        sub_1000080C4();

        (*(v15 + 8))(v75, v76);
      }

      else
      {

        (*(v15 + 8))(v19, v13);
      }
    }

    sub_100002A0C();
  }

  else
  {
    __break(1u);
  }
}

void sub_100004378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000081A4();
  v60 = v5;
  v58 = v6;
  v54 = v7;
  v9 = v8;
  v55 = v10;
  swift_getObjectType();
  type metadata accessor for Date();
  sub_1000029A0();
  v56 = v12;
  v57 = v11;
  __chkstk_darwin(v11);
  sub_1000029FC();
  v15 = v14 - v13;
  v61 = type metadata accessor for Logger();
  sub_1000029A0();
  __chkstk_darwin(v16);
  sub_1000021D4();
  v59 = v17 - v18;
  __chkstk_darwin(v19);
  v20 = type metadata accessor for DispatchPredicate();
  sub_1000029A0();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_1000029FC();
  v26 = v25 - v24;
  v27 = *(v4 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_serialQueue);
  *(v25 - v24) = v27;
  (*(v22 + 104))(v25 - v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v26, v20);
  if (v29)
  {
    if (*(v4 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_systemAvailableForCacheDelete) == 1 && (v9 & 0xFFFFFFFE) == 2)
    {
      CKLog.getter();
      v31 = v60;

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        sub_100008160();
        v34 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v34 = 134218498;
        *(v34 + 4) = v54;
        *(v34 + 12) = 2080;
        v35 = sub_100002BB8(v9);
        v37 = sub_100006AE4(v35, v36, &v63);

        *(v34 + 14) = v37;
        v31 = v60;
        *(v34 + 22) = 2080;
        *(v34 + 24) = sub_100006AE4(v58, v60, &v63);
        _os_log_impl(&_mh_execute_header, v32, v33, "Purging %lld bytes, urgency: %s, reason: %s", v34, 0x20u);
        sub_1000082A4();
        swift_arrayDestroy();
        sub_1000080C4();

        sub_1000080C4();

        v38 = sub_100008290();
      }

      else
      {

        v38 = sub_100008290();
      }

      v39 = (v32)(v38, v61);
      v63 = 0;
      __chkstk_darwin(v39);
      sub_1000080E8();
      sub_100003B28(v55, sub_100007A90, v40);
      v41 = *(v4 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cachesByVolume);
      memset(v62, 0, sizeof(v62));
      v42 = v41;
      v43 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      Date.init(timeIntervalSinceNow:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v56 + 8))(v15, v57);
      [v42 setObject:v43 forKey:v46 expirationDate:isa];
      swift_unknownObjectRelease();

      CKLog.getter();

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v62[0] = swift_slowAlloc();
        *v50 = 134218754;
        *(v50 + 4) = 0;
        *(v50 + 12) = 2048;
        *(v50 + 14) = 0;
        *(v50 + 22) = 2080;
        v51 = sub_100002BB8(v9);
        v53 = sub_100006AE4(v51, v52, v62);

        *(v50 + 24) = v53;
        *(v50 + 32) = 2080;
        *(v50 + 34) = sub_100006AE4(v58, v31, v62);
        _os_log_impl(&_mh_execute_header, v48, v49, "Purged %lld bytes, still have %lld purgeable bytes, urgency: %s, reason: %s", v50, 0x2Au);
        swift_arrayDestroy();
        sub_1000080C4();

        sub_1000080B4();

        (v32)(v59, v61);
      }

      else
      {

        (v32)(v59, v61);
      }
    }

    sub_100002A0C();
  }

  else
  {
    __break(1u);
  }
}

void sub_10000496C()
{
  v1 = objc_opt_self();
  v2 = [v1 currentProcess];
  v3 = [v2 processType];

  if (v3 > 1)
  {
    _StringGuts.grow(_:)(26);
    v15._object = 0x800000010000C490;
    v15._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v15);
    v16 = [v1 currentProcess];
    [v16 processType];

    type metadata accessor for CKDDaemonProcessType(0);
    _print_unlocked<A, B>(_:_:)();
    sub_100008308("Fatal error", v17, v18, 0, 0xE000000000000000, "cloudd/cloudd_main.swift");
    __break(1u);
  }

  else
  {

    sub_10000825C();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    sub_10000825C();
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    sub_10000825C();
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = v0;
    v8 = String._bridgeToObjectiveC()();

    v23 = sub_1000067B4;
    v24 = v4;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100005A40;
    v22 = &unk_100010A70;
    v9 = _Block_copy(&aBlock);

    v23 = sub_1000067CC;
    v24 = v5;
    aBlock = _NSConcreteStackBlock;
    sub_10000811C();
    v21 = v10;
    v22 = &unk_100010A98;
    v11 = _Block_copy(&aBlock);

    v23 = sub_100005570;
    v24 = 0;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100005AA8;
    v22 = &unk_100010AC0;
    v12 = _Block_copy(&aBlock);

    v23 = sub_1000067E4;
    v24 = v6;
    aBlock = _NSConcreteStackBlock;
    sub_10000811C();
    v21 = v13;
    v22 = &unk_100010AE8;
    v14 = _Block_copy(&aBlock);

    CacheDeleteRegisterInfoCallbacks();
    _Block_release(v14);
    _Block_release(v12);
    _Block_release(v11);
    _Block_release(v9);
  }
}

void sub_100004D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000081A4();
  v4 = v3;
  v22 = v5;
  type metadata accessor for Logger();
  sub_1000029A0();
  __chkstk_darwin(v6);
  sub_1000029FC();
  sub_100008268();
  sub_1000029A0();
  __chkstk_darwin(v7);
  sub_1000029FC();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v23 = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  CKLog.getter();
  v8 = v4;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    sub_10000818C();
    v11 = swift_slowAlloc();
    sub_100008160();
    v12 = swift_slowAlloc();
    v23 = v12;
    sub_1000081FC(4.8149e-34);
    v13 = String.init<A>(describing:)();
    v15 = sub_100006AE4(v13, v14, &v23);

    *(v11 + 4) = v15;
    sub_1000081BC(&_mh_execute_header, v16, v17, "Info dictionary passed to purgeable block has unexpected content: %s");
    sub_100007068(v12);
    sub_1000080C4();

    sub_1000080B4();
  }

  v18 = sub_100008230();
  v19(v18);
  sub_1000068C0(&qword_1000149F0, &qword_10000C000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000BFC0;
  sub_1000080D0(inited, "CACHE_DELETE_AMOUNT");
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  sub_100008198();
  Dictionary.init(dictionaryLiteral:)();
  sub_100008198();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *v22 = isa;
  sub_100002A0C();
}

uint64_t sub_1000050C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000070B4(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

void sub_100005118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000081A4();
  v4 = v3;
  v6 = v5;
  type metadata accessor for Logger();
  sub_1000029A0();
  __chkstk_darwin(v7);
  sub_1000029FC();
  sub_100008268();
  sub_1000029A0();
  __chkstk_darwin(v8);
  sub_1000029FC();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v23 = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  CKLog.getter();
  v9 = v4;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    sub_10000818C();
    v12 = swift_slowAlloc();
    sub_100008160();
    v13 = swift_slowAlloc();
    v23 = v13;
    sub_1000081FC(4.8149e-34);
    v14 = String.init<A>(describing:)();
    v16 = sub_100006AE4(v14, v15, &v23);

    *(v12 + 4) = v16;
    sub_1000081BC(&_mh_execute_header, v17, v18, "Info dictionary passed to purge block has unexpected content: %s");
    sub_100007068(v13);
    sub_1000080C4();

    sub_1000080B4();
  }

  v19 = sub_100008230();
  v20(v19);
  sub_1000068C0(&qword_1000149F0, &qword_10000C000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000BFC0;
  sub_1000080D0(inited, "CACHE_DELETE_AMOUNT");
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  sub_100008198();
  Dictionary.init(dictionaryLiteral:)();
  sub_100008198();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *v6 = isa;
  sub_100002A0C();
}

uint64_t sub_100005570()
{
  v0 = type metadata accessor for Logger();
  sub_1000029A0();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000029FC();
  v6 = v5 - v4;
  CKLog.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Purge cancel requested. Ignoring.", v9, 2u);
    sub_1000080C4();
  }

  return (*(v2 + 8))(v6, v0);
}

void sub_10000568C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000081A4();
  v4 = v3;
  v22 = v5;
  type metadata accessor for Logger();
  sub_1000029A0();
  __chkstk_darwin(v6);
  sub_1000029FC();
  sub_100008268();
  sub_1000029A0();
  __chkstk_darwin(v7);
  sub_1000029FC();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v23 = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  CKLog.getter();
  v8 = v4;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    sub_10000818C();
    v11 = swift_slowAlloc();
    sub_100008160();
    v12 = swift_slowAlloc();
    v23 = v12;
    sub_1000081FC(4.8149e-34);
    v13 = String.init<A>(describing:)();
    v15 = sub_100006AE4(v13, v14, &v23);

    *(v11 + 4) = v15;
    sub_1000081BC(&_mh_execute_header, v16, v17, "Info dictionary passed to periodic block has unexpected content: %s");
    sub_100007068(v12);
    sub_1000080C4();

    sub_1000080B4();
  }

  v18 = sub_100008230();
  v19(v18);
  sub_1000068C0(&qword_1000149F0, &qword_10000C000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000BFC0;
  sub_1000080D0(inited, "CACHE_DELETE_AMOUNT");
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  sub_100008198();
  Dictionary.init(dictionaryLiteral:)();
  sub_100008198();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *v22 = isa;
  sub_100002A0C();
}

uint64_t sub_100005A40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v7 = v5(a2, v6);

  return v7;
}

uint64_t sub_100005AA8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100005B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v5;
}

void sub_100005BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000081A4();
  v5 = v4;
  v6 = 0xD000000000000022;
  type metadata accessor for Logger();
  sub_1000029A0();
  __chkstk_darwin(v7);
  sub_1000029FC();
  v8 = type metadata accessor for XPCListener.InitializationOptions();
  v9 = sub_100008250(v8);
  __chkstk_darwin(v9);
  sub_1000029FC();
  v10 = objc_opt_self();
  v11 = [v10 currentProcess];
  v12 = [v11 processType];

  v13 = [v10 currentProcess];
  v14 = [v13 isSystemInstalledBinary];

  if (v12)
  {
    if (v12 == 2)
    {
      v17 = "com.apple.cloudassets.partlycloudd";
    }

    else
    {
      if (v12 != 1)
      {
        sub_100008308("Fatal error", v15, v16, 0xD000000000000012, 0x800000010000C3F0, "cloudd/cloudd_main.swift");
        __break(1u);
        return;
      }

      v17 = "com.apple.cloudasset.cloudd.system";
    }

    v18 = (v17 - 32);
  }

  else
  {
    v18 = "sset.cloudd.system";
    v6 = 0xD00000000000001BLL;
  }

  if ((v14 & 1) == 0)
  {
    sub_100005B34(0x67756265642ELL, 0xE600000000000000, v6, v18 | 0x8000000000000000);
  }

  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  *(v5 + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cloudAssetsServiceListener) = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();

  sub_100002A0C();
}

uint64_t sub_100005EB4(uint64_t a1)
{
  type metadata accessor for Dispatcher();
  static Dispatcher.shared.getter();
  Dispatcher.dispatchRequest(_:)();
}

void sub_100006004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000081A4();
  v5 = v4;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000029A0();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000029FC();
  v11 = v10 - v9;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000029C4();
  __chkstk_darwin(v12);
  sub_1000029FC();
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100008250(v13);
  __chkstk_darwin(v14);
  sub_1000029FC();
  v18 = OBJC_IVAR____TtC6cloudd13CKDMain_Swift_serialQueue;
  sub_100007E80(0, &qword_100014A68, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_100007DF8(&qword_100014A70, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000068C0(&qword_100014A78, &qword_10000C088);
  sub_100007EC0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *&v4[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[OBJC_IVAR____TtC6cloudd13CKDMain_Swift_systemAvailableForCacheDelete] = 0;
  v15 = &v4[OBJC_IVAR____TtC6cloudd13CKDMain_Swift_CACHE_DELETE_LISTENER];
  *v15 = 0xD00000000000001DLL;
  *(v15 + 1) = 0x800000010000C600;
  v16 = &v4[OBJC_IVAR____TtC6cloudd13CKDMain_Swift_CACHE_DELETE_SYSTEM_LISTENER];
  *v16 = 0xD000000000000024;
  *(v16 + 1) = 0x800000010000C620;
  *&v4[OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cloudAssetsServiceListener] = 0;
  v17 = OBJC_IVAR____TtC6cloudd13CKDMain_Swift_cachesByVolume;
  *&v5[v17] = [objc_allocWithZone(CKExpiringCache) init];
  v20.receiver = v5;
  v20.super_class = type metadata accessor for CKDMain_Swift();
  objc_msgSendSuper2(&v20, "init");
  sub_100002A0C();
}

id sub_1000062C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKDMain_Swift();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006390(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10000641C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hashValue.getter();

  return v1;
}

uint64_t sub_10000645C(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000064B8(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000653C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000065B8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100006638@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100008024(a2);
  *a1 = result;
  return result;
}

uint64_t sub_10000666C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000066B4@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000066E4(uint64_t a1)
{
  v2 = sub_100007DF8(&qword_100014A58, type metadata accessor for URLResourceKey, &unk_10000C274);
  v3 = sub_100007DF8(&qword_100014AB8, type metadata accessor for URLResourceKey, &unk_10000C1C8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000067FC(int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC6cloudd13CKDMain_Swift_serialQueue);
  sub_1000068C0(&qword_1000149E8, &qword_10000BFF8);
  OS_dispatch_queue.sync<A>(execute:)();

  return v6;
}

uint64_t sub_100006880(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000068C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006908(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100006A00;

  return v6(a1);
}

uint64_t sub_100006A00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1000082DC();
  sub_1000082B0();
  v9 = *v8;
  sub_100008150();
  *v10 = v9;

  sub_1000082D0();

  return v11();
}

unint64_t sub_100006AE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006BA8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1000079E0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100007068(v11);
  return v7;
}

unint64_t sub_100006BA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100006CA8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100006CA8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006CF4(a1, a2);
  sub_100006E0C(&off_1000109D0);
  return v3;
}

char *sub_100006CF4(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100006EF0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100006E0C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100006F60(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100006EF0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000068C0(&qword_100014A00, &qword_10000C010);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100006F60(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000068C0(&qword_100014A00, &qword_10000C010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100007068(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1000070B4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000712C(a1, a2, v4);
}

unint64_t sub_10000712C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000071E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000068C0(&qword_100014A60, &qword_10000C080);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v27 = v1;
  v28 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_100007458(0, (v26 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    v3 = v28;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100007458(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10000BFD0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

id sub_1000074BC()
{
  v1 = v0;
  sub_1000068C0(&qword_100014A60, &qword_10000C080);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10000760C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000068C0(&qword_100014A60, &qword_10000C080);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        v17 = v16;
        String.hash(into:)();
        v18 = Hasher._finalize()();

        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v5 + 48) + 8 * v22) = v17;
        ++*(v5 + 16);
        v3 = v28;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v27;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10000785C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000070B4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_1000068C0(&qword_1000149F8, &qword_10000C008);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_1000070B4(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100007998(v16, a2, a3, a1, v20);
  }
}

unint64_t sub_100007998(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1000079E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007B78;

  return sub_100002F0C();
}

uint64_t sub_100007B78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1000082DC();
  sub_1000082B0();
  v9 = *v8;
  sub_100008150();
  *v10 = v9;

  sub_1000082D0();

  return v11();
}

uint64_t sub_100007C58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000816C(v1);

  return v3(v2);
}

uint64_t sub_100007CF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000816C(v1);

  return v3(v2);
}

uint64_t sub_100007D98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000068C0(a3, a4);
  sub_1000029C4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100007DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007E80(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100007EC0()
{
  result = qword_100014A80;
  if (!qword_100014A80)
  {
    sub_100007F24(&qword_100014A78, &qword_10000C088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014A80);
  }

  return result;
}

uint64_t sub_100007F24(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

NSString sub_100008024(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t sub_1000080D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD000000000000013;
  *(result + 40) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t sub_100008130@<X0>(uint64_t a1@<X8>)
{

  return sub_1000050C8(0xD000000000000013, a1 | 0x8000000000000000, v1);
}

void sub_1000081BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000081DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_10000785C(v4, 0xD000000000000013, a3, a4);
}

id sub_1000081FC(float a1)
{
  *v1 = a1;
  *(v3 - 144) = v2;
  type metadata accessor for CFDictionary(0);

  return v2;
}

uint64_t sub_100008268()
{

  return type metadata accessor for URL();
}

uint64_t sub_1000082E8()
{

  return URL.init(fileURLWithPath:isDirectory:)();
}

uint64_t sub_100008308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)(a1, 11, 2, a4, a5, a6, 24, 2);
}

uint64_t sub_100008328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{

  return _swift_dynamicCast(a1, a2, a4 + 8, a3, 6);
}

void sub_100008394(id a1)
{
  qword_100014F70 = objc_alloc_init(CKDMain);

  _objc_release_x1();
}

void sub_1000085D4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = _os_activity_create(&_mh_execute_header, "com.apple.notifyd.matching", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(v3, &v6);
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
    if (string)
    {
      if (!strcasecmp("com.apple.Preferences.ResetPrivacyWarningsNotification", string))
      {
        v5 = +[CKDPrivacyManager sharedManager];
        [v5 resetPrivacySettingsWithCompletionHandler:&stru_100010DB8];
LABEL_10:

        goto LABEL_11;
      }

      if (!strcasecmp("com.apple.Preferences.ChangedRestrictionsEnabledStateNotification", string) || !strcasecmp("com.apple.managedconfiguration.effectivesettingschanged", string) || !strcasecmp("com.apple.ManagedConfiguration.profileListChanged", string))
      {
        v5 = +[CKDAccountNotifier sharedNotifier];
        [v5 postAccountChangedNotificationToClients];
        goto LABEL_10;
      }
    }
  }

LABEL_11:
  os_activity_scope_leave(&v6);
}

void sub_10000875C(id a1, NSError *a2)
{
  v2 = a2;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Finished resetting privacy settings with error: %@", &v4, 0xCu);
  }
}

void sub_100008854(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = _os_activity_create(&_mh_execute_header, "com.apple.distnoted.matching", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v3, &v10);
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
    v5 = xpc_dictionary_get_value(v2, "UserInfo");
    if (v5)
    {
      v6 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v6 = 0;
    }

    if (!strcmp(string, "com.apple.cdp.manatee-availability"))
    {
      v7 = +[CKDLogicalDeviceContext defaultContext];
      v8 = [v7 accountDataSecurityObserver];
      v9 = [v6 objectForKeyedSubscript:@"com.apple.cdp.manatee-state"];
      [v8 handleManateeStatusUpdateNotificationWithAvailability:v9];
    }
  }

  os_activity_scope_leave(&v10);
}

void sub_100008A54(id a1, NSString *a2, NSString *a3, int64_t a4, int64_t a5)
{
  v6 = a2;
  v7 = a3;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Notifying clients of authorization change", v10, 2u);
  }

  +[CKAccountInfo invalidateCachedAccountInfo];
  v9 = CKNotificationKey();
  notify_post([v9 UTF8String]);
}

void sub_100008B4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = CKGetGlobalQueue();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100008C9C;
    v6[3] = &unk_100010E40;
    v7 = v3;
    v8 = *(a1 + 32);
    dispatch_async(v4, v6);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "No background tasks need to be cleaned up.", buf, 2u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

intptr_t sub_100008C9C(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v7 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v17 = v6;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Cleaning up background tasks for configuration %@", buf, 0xCu);
        }

        v8 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v6];
        if (v8)
        {
          v9 = [NSURLSession sessionWithConfiguration:v8];
          [v9 invalidateAndCancel];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v3);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_100008E70(void *a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  switch(a4)
  {
    case 4:
      if (!a3)
      {
        break;
      }

      goto LABEL_10;
    case 3:
      if (!a3)
      {
        break;
      }

      if ([v9 isEqualToString:kCKPackageDirectoryName])
      {
        goto LABEL_15;
      }

LABEL_10:
      v11 = kCKFrameworkCachesDirectoryName;
      goto LABEL_11;
    case 1:
      if (a3 & 1) == 0 && (([v9 hasPrefix:a1[4]] & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", a1[5])))
      {
        goto LABEL_15;
      }

      v11 = a1[6];
LABEL_11:
      if (([v9 isEqualToString:v11] & 1) == 0)
      {
        break;
      }

LABEL_15:
      v12 = 1;
      goto LABEL_16;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

id sub_100009A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2 && a3)
  {
    return [v3 expungeDataForAccountID:a2];
  }

  else
  {
    return [v3 expungeOldData];
  }
}

id *sub_100009A24(id *result, uint64_t a2, int a3)
{
  if (a3)
  {
    return [result[4] expungeOperationInfoForDeletedAccountID:a2];
  }

  return result;
}

uint64_t start(uint64_t a1, uint64_t a2)
{
  signal(15, 0);
  v4 = dispatch_get_global_queue(25, 0);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);

  if (v5)
  {
    dispatch_source_set_event_handler(v5, &stru_100010F18);
    dispatch_activate(v5);
  }

  context = objc_autoreleasePoolPush();
  v6 = +[CKSignpost signpost];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 log];
    v9 = [v7 identifier];
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Launch", "", buf, 2u);
      }
    }
  }

  +[CKDXPCConnectionManager clouddStarted];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v59 = _os_activity_create(&_mh_execute_header, "cloudd_main", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v59, &state);
  setCKRunningInClientProcess();
  [CKDDaemonProcess deriveCurrentProcessWithArgC:a1 argv:a2];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v11 = ck_log_facility_ck;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = CKBuildVersion();
    v13 = CKProductName();
    v14 = getuid();
    *buf = 138412802;
    v63 = v12;
    v64 = 2112;
    v65 = v13;
    v66 = 1024;
    v67 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Welcome to cloudd, running on version %@ (%@). We are running as user %d. Enjoy your stay!", buf, 0x1Cu);
  }

  v15 = +[CKBehaviorOptions sharedOptions];
  v16 = [v15 isAppleInternalInstall];

  if (v16)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Device is an AppleInternal install", buf, 2u);
    }
  }

  v18 = +[CKBehaviorOptions sharedOptions];
  v19 = [v18 sandboxCloudD];

  if (v19)
  {
    v20 = +[CKDDaemonProcess currentProcess];
    v21 = [v20 processType];
    if (!v21 || (+[CKDDaemonProcess currentProcess](CKDDaemonProcess, "currentProcess"), v19 = objc_claimAutoreleasedReturnValue(), [v19 processType] == 1))
    {
      v23 = +[CKDDaemonProcess currentProcess];
      v24 = [v23 isSystemInstalledBinary];

      if (v21)
      {
      }

      if ((v24 & 1) == 0)
      {
        v25 = @"com.apple.cloudd.debug";
        goto LABEL_30;
      }
    }

    else
    {
    }

    v25 = @"com.apple.cloudd";
LABEL_30:
    if (CKIsRunningInSyncBubble())
    {
      v26 = +[CKDDaemonProcess currentProcess];
      v27 = [v26 processType] == 0;

      if (!v27)
      {
        v56 = +[NSAssertionHandler currentHandler];
        v57 = [NSString stringWithUTF8String:"void get_in_the_sandbox(void)"];
        v58 = +[CKDDaemonProcess currentProcess];
        [v56 handleFailureInFunction:v57 file:@"cloudd_main.m" lineNumber:98 description:{@"Didn't expect to run process type %ld in the sync bubble", objc_msgSend(v58, "processType")}];
      }

      v25 = [NSString stringWithFormat:@"com.apple.cloudd.%u", getuid()];
    }

    v28 = v25;
    [(__CFString *)v25 UTF8String];
    _set_user_dir_suffix();
    bzero(buf, 0x400uLL);
    confstr(65537, buf, 0x400uLL);

    goto LABEL_35;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v22 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "cloudd is not sandboxed", buf, 2u);
  }

LABEL_35:
  v29 = +[CKBehaviorOptions sharedOptions];
  v30 = [v29 CFNetworkLogging];

  if (v30)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v31 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Enabling CFNetwork diagnostics", buf, 2u);
    }

    setenv("CFNETWORK_DIAGNOSTICS", "2", 1);
  }

  if (CKIsRunningInSyncBubble())
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v32 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "cloudd is running in the sync bubble", buf, 2u);
    }
  }

  v33 = +[CKDDaemonProcess currentProcess];
  if (![v33 processType])
  {
    v34 = +[UMUserManager sharedManager];
    v35 = [v34 isSharedIPad];

    if (!v35)
    {
      goto LABEL_50;
    }

    v33 = +[UMUserManager sharedManager];
    v36 = +[CKDMain sharedMain];
    [v33 registerUserSyncStakeholder:v36 withMachServiceName:kCKUserManagerMachServiceName];
  }

LABEL_50:
  v37 = +[CKDMain sharedMain];
  if (v7)
  {
    v38 = [v7 log];
    v39 = [v7 identifier];
    if ((v39 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_EVENT, v39, "Launch", "Starting services", buf, 2u);
    }
  }

  v40 = +[CKDXPCConnectionManager sharedConnectionManager];
  [v40 activate];

  v41 = +[CKDMain sharedMain];
  v42 = [v41 swiftMain];
  [v42 startCloudAssetsService];

  if (objc_opt_respondsToSelector())
  {
    v43 = +[C2ReportMetrics useCloudTelemetryService];
  }

  else
  {
    v43 = _os_feature_enabled_impl();
  }

  if (v43)
  {
    v44 = +[CKDMain sharedMain];
    v45 = [v44 swiftMain];
    [v45 setupCloudTelemetryXpcServiceActivities];
  }

  if (v7)
  {
    v46 = [v7 log];
    v47 = [v7 identifier];
    if ((v47 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_EVENT, v47, "Launch", "Started services", buf, 2u);
    }
  }

  v48 = +[CKDDaemonProcess currentProcess];
  if ([v48 isSystemInstalledBinary])
  {
    v49 = +[CKDDaemonProcess currentProcess];
    v50 = [v49 processType] == 2;

    if (v50)
    {
      goto LABEL_69;
    }

    v48 = +[CKDMain sharedMain];
    v51 = [v48 swiftMain];
    [v51 registerWithCacheDelete];
  }

LABEL_69:
  if (v7)
  {
    v52 = [v7 log];
    v53 = [v7 identifier];
    if ((v53 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_END, v53, "Launch", "", buf, 2u);
    }
  }

  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(context);
  v54 = +[NSRunLoop mainRunLoop];
  [v54 run];

  return 0;
}

void sub_10000A4E8(id a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v1 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Received SIGTERM", v2, 2u);
  }
}