uint64_t sub_1000778CC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15[-v10];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = a2[1];
    v16 = *a2;
    v17 = v12;
    v18 = *(a2 + 16);
    v13 = (*(a4 + 56))(v15, a3, a4);
    sub_10002B68C();
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    (*(v9 + 8))(v11, v8);
    v13(v15, 0);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t BonjourOffload.stopResolving(record:)(uint64_t a1, unint64_t a2, void (**a3)(unint64_t, char *))
{
  v97 = a1;
  sub_10005DC58(&unk_10058B750, &unk_100480AB0);
  __chkstk_darwin();
  v85 = &v79 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v88 = type metadata accessor for Optional();
  v87 = *(v88 - 8);
  __chkstk_darwin();
  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v79 - v10;
  v95 = v8;
  v94 = *(v8 - 8);
  __chkstk_darwin();
  v91 = &v79 - v11;
  v12 = type metadata accessor for Logger();
  v98 = *(v12 - 8);
  v99 = v12;
  __chkstk_darwin();
  v93 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = (&v79 - v14);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v79 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = __chkstk_darwin();
  v22 = &v79 - v21;
  (a3[8])(a2, a3, v20);
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v16 + 8))(v18, v15);
  }

  v82 = v19;
  v24 = *(v19 + 32);
  v89 = v22;
  v90 = AssociatedTypeWitness;
  v24(v22, v18, AssociatedTypeWitness);
  v101 = v3;
  v25 = a3[1];
  v26 = *(v25 + 1);
  v27 = v96;
  v84 = a2;
  v81 = v25;
  v80 = v26;
  v26(a2);
  v28 = v97;
  sub_10002B154(v97, &v108);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v31 = a3;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v33 = v3;
    v34 = v31;
    v35 = swift_slowAlloc();
    v107 = v35;
    *v32 = 136315138;
    sub_10002B154(&v108, v104);
    sub_10005DC58(&unk_100595FD0, &qword_100486B50);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    sub_100002A00(&v108);
    v39 = sub_100002320(v36, v38, &v107);

    *(v32 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "Stopping resolve for %s", v32, 0xCu);
    sub_100002A00(v35);
    v31 = v34;
    v3 = v33;

    v28 = v97;
  }

  else
  {

    sub_100002A00(&v108);
  }

  v40 = *(v98 + 8);
  v40(v27, v99);
  sub_10002B154(v28, &v108);
  sub_10005DC58(&unk_100595FD0, &qword_100486B50);
  if (!swift_dynamicCast())
  {
    v107 = v3;
    v51 = v93;
    v80(v84, v81);
    sub_10002B154(v28, &v108);
    sub_10002B154(v28, v104);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v52, v53))
    {

      sub_100002A00(&v108);
      v40(v51, v99);
      (*(v82 + 8))(v89, v90);
      return sub_100002A00(v104);
    }

    v54 = swift_slowAlloc();
    v55 = v51;
    v103 = swift_slowAlloc();
    *v54 = 136315394;
    sub_10002B154(&v108, &v101);
    v56 = String.init<A>(describing:)();
    v58 = v57;
    sub_100002A00(&v108);
    v59 = sub_100002320(v56, v58, &v103);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    v60 = v105;
    v61 = v106;
    sub_100029B34(v104, v105);
    LOBYTE(v60) = (*(v61 + 24))(v60, v61);
    v101 = 39;
    v102 = 0xE100000000000000;
    v62._countAndFlagsBits = sub_100177788(v60);
    String.append(_:)(v62);

    v63._countAndFlagsBits = 91;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    v100 = word_100480EAA[v60];
    v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v64);

    v65._countAndFlagsBits = 10077;
    v65._object = 0xE200000000000000;
    String.append(_:)(v65);
    v66 = v101;
    v67 = v102;
    sub_100002A00(v104);
    v68 = sub_100002320(v66, v67, &v103);

    *(v54 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v52, v53, "Cannot stop resolve for record: %s [%s]", v54, 0x16u);
    swift_arrayDestroy();

    v40(v55, v99);
    return (*(v82 + 8))(v89, v90);
  }

  v42 = v104[0];
  v41 = v104[1];
  v43 = v105;
  v98 = v104[2];
  v44 = v106;
  v45 = BYTE1(v106);
  v46 = v31[5];

  v97 = v3;
  v96 = v31;
  v99 = (v46)(v84, v31);
  v93 = v42;
  v108 = v42;
  v109 = v41;
  v47 = v98;
  v110 = v98;
  v111 = v43;
  LODWORD(v81) = v44;
  v112 = v44;
  LODWORD(v80) = v45;
  v113 = v45;
  sub_10002B68C();
  v48 = v92;
  v49 = v95;
  Dictionary.subscript.getter();

  v50 = v94;
  if ((*(v94 + 48))(v48, 1, v49) == 1)
  {
    (*(v82 + 8))(v89, v90);

    return (*(v87 + 8))(v48, v88);
  }

  v69 = v91;
  (*(v50 + 32))(v91, v48, v49);
  if (!(*(AssociatedConformanceWitness + 112))(v69, v90))
  {

LABEL_18:
    (*(v50 + 8))(v69, v49);
    return (*(v82 + 8))(v89, v90);
  }

  type metadata accessor for BonjourResolver(0);
  v70 = swift_dynamicCastClass();
  if (!v70)
  {

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v71 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_srv;
  v72 = v70;
  swift_beginAccess();
  v73 = v72 + v71;
  v74 = v85;
  sub_100012400(v73, v85, &unk_10058B750, &unk_100480AB0);
  v75 = type metadata accessor for DNSRecords.SRV(0);
  if ((*(*(v75 - 8) + 48))(v74, 1, v75) != 1)
  {

    swift_unknownObjectRelease();
    (*(v50 + 8))(v91, v49);
    (*(v82 + 8))(v89, v90);
    return sub_100016290(v74, &unk_10058B750, &unk_100480AB0);
  }

  sub_100016290(v74, &unk_10058B750, &unk_100480AB0);
  (*(AssociatedConformanceWitness + 120))(v91, v90);
  v108 = v93;
  v109 = v41;
  v110 = v47;
  v111 = v43;
  v112 = v81;
  v113 = v80;
  v76 = v96;
  v77 = v84;
  v99 = (v96[7])(v104, v84, v96);
  type metadata accessor for Dictionary();
  v78 = v83;
  Dictionary.removeValue(forKey:)();
  (*(v87 + 8))(v78, v88);
  v99(v104, 0);

  sub_10006BBB8(v77, v76);
  swift_unknownObjectRelease();
  (*(v50 + 8))(v91, v95);
  return (*(v82 + 8))(v89, v90);
}

Swift::Int sub_1000788C0()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100078920(uint64_t a1)
{
  v2 = *(v1 + 8);
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_100078964(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000789C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_1000840B4();
  return static NSObject.== infix(_:_:)() & ~(v2 ^ v3) & 1;
}

void sub_100078A80(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (sub_100178C7C(v5, v4, v6 | (*(a1 + 33) << 8), *(v1 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service), *(v1 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 8), *(v1 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 16) | (*(v1 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 17) << 8)))
  {
    v7 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_discoveredPeers;
    swift_beginAccess();
    v8 = *(v2 + v7);
    if (*(v8 + 16))
    {

      v9 = sub_10007CE78(a1);
      if (v10)
      {
        v11 = *(v8 + 56) + 16 * v9;
        v12 = *(v11 + 8);
        v13 = *v11;

        if ((v12 & 1) == 0)
        {
          v14 = [v13 serviceSpecificInfo];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 txtRecordData];

            if (v16)
            {
              v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v49 = v17;

              v53 = *a1;
              sub_1000836D4(&v53, &v51);

              sub_1000836D4(&v53, &v51);

              v18 = Logger.logObject.getter();
              v19 = static os_log_type_t.info.getter();
              sub_10008378C(&v53);

              if (os_log_type_enabled(v18, v19))
              {
                v20 = swift_slowAlloc();
                v47 = swift_slowAlloc();
                v52 = v47;
                *v20 = 136315138;
                v51 = v53;
                sub_1000836D4(&v53, &v50);
                v21._countAndFlagsBits = 46;
                v21._object = 0xE100000000000000;
                String.append(_:)(v21);
                v50._countAndFlagsBits = v5;
                v50._object = v4;

                v22._countAndFlagsBits = 24366;
                v22._object = 0xE200000000000000;
                String.append(_:)(v22);
                if (v6)
                {
                  v23 = 7365749;
                }

                else
                {
                  v23 = 7365492;
                }

                v24 = 0xE300000000000000;
                String.append(_:)(*&v23);

                v25._countAndFlagsBits = 46;
                v25._object = 0xE100000000000000;
                String.append(_:)(v25);
                v26._countAndFlagsBits = 0x6C61636F6CLL;
                v26._object = 0xE500000000000000;
                String.append(_:)(v26);
                String.append(_:)(v50);

                v27 = sub_100002320(v51._countAndFlagsBits, v51._object, &v52);

                *(v20 + 4) = v27;
                _os_log_impl(&_mh_execute_header, v18, v19, "Providing TXT record for %s", v20, 0xCu);
                sub_100002A00(v47);
              }

              v28 = *(v2 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_delegate);
              if (v28)
              {
                swift_unknownObjectRetain();
                v29 = sub_100171BB4(15);
                v31 = v30;
                isa = Data._bridgeToObjectiveC()().super.isa;
                sub_1000124C8(v29, v31);
                sub_10000AB0C(v48, v49);
                v33 = Data._bridgeToObjectiveC()().super.isa;
                sub_1000124C8(v48, v49);
                [v28 handleEventType:0 keyData:isa valueData:v33];

                swift_unknownObjectRelease();
                sub_1000124C8(v48, v49);
              }

              else
              {

                sub_1000124C8(v48, v49);
              }
            }
          }
        }

        v44 = sub_100078A1C(&v51);
        v46 = sub_1001A9554(&v50, a1);
        if (*v45)
        {
          *(v45 + 8) = 1;
        }

        (v46)(&v50, 0);
        (v44)(&v51, 0);
LABEL_24:

        return;
      }
    }

    v51 = *a1;

    sub_1000836D4(&v51, &v50);
    v13 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    sub_10008378C(&v51);

    if (os_log_type_enabled(v13, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v52 = v36;
      *v35 = 136315138;
      v50 = v51;
      sub_1000836D4(&v51, &v53);
      v37._countAndFlagsBits = 46;
      v37._object = 0xE100000000000000;
      String.append(_:)(v37);
      v53._countAndFlagsBits = v5;
      v53._object = v4;

      v38._countAndFlagsBits = 24366;
      v38._object = 0xE200000000000000;
      String.append(_:)(v38);
      if (v6)
      {
        v39 = 7365749;
      }

      else
      {
        v39 = 7365492;
      }

      v40 = 0xE300000000000000;
      String.append(_:)(*&v39);

      v41._countAndFlagsBits = 46;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      v42._countAndFlagsBits = 0x6C61636F6CLL;
      v42._object = 0xE500000000000000;
      String.append(_:)(v42);
      String.append(_:)(v53);

      v43 = sub_100002320(v50._countAndFlagsBits, v50._object, &v52);

      *(v35 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v13, v34, "Failed to query the TXT record for %s", v35, 0xCu);
      sub_100002A00(v36);
    }

    goto LABEL_24;
  }

  __break(1u);
}

BOOL sub_100079054(uint64_t a1)
{
  v2 = v1;
  v5 = *&v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service];
  v4 = *&v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 8];
  v6 = v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 16];
  result = sub_100178C7C(*(a1 + 16), *(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8), v5, v4, v6 | (v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 17] << 8));
  if (result)
  {
    v8 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_discoveredPeers;
    swift_beginAccess();
    v9 = *&v2[v8];
    if (*(v9 + 16))
    {

      v10 = sub_10007CE78(a1);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 16 * v10);

        return v12;
      }
    }

    v13 = *a1;
    v14 = *(a1 + 8);

    v15 = v2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_100002320(v13, v14, &v25);
      *(v18 + 12) = 2080;

      v19._countAndFlagsBits = 24366;
      v19._object = 0xE200000000000000;
      String.append(_:)(v19);
      if (v6)
      {
        v20 = 7365749;
      }

      else
      {
        v20 = 7365492;
      }

      v21 = 0xE300000000000000;
      String.append(_:)(*&v20);

      v22._countAndFlagsBits = 46;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v23._countAndFlagsBits = 0x6C61636F6CLL;
      v23._object = 0xE500000000000000;
      String.append(_:)(v23);
      v24 = sub_100002320(v5, v4, &v25);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to query the discovery result for %s from %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000792EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C04A4(0, v1, 0);
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = *(*(a1 + 56) + 16 * v4);
      v22 = [v8 publishID];
      v9 = [v8 publisherAddress];

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_1000C04A4((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v11];
      *(v12 + 32) = v22;
      v12[5] = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_10002BEB8(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_10002BEB8(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_100079590(void *a1)
{
  v2 = v1;
  v4 = [a1 serviceSpecificInfo];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 instanceName];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v11 = *(v2 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service);
      v10 = *(v2 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 8);
      v12 = *(v2 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 16);
      v13 = *(v2 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 17);
      *&v46 = v7;
      *(&v46 + 1) = v9;
      v47 = v11;
      v48 = v10;
      v49 = v12;
      v40 = v13;
      v50 = v13;
      v14 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_discoveredPeers;
      swift_beginAccess();
      v15 = a1;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v15;
      v43 = *(v2 + v14);
      *(v2 + v14) = 0x8000000000000000;
      sub_1000800E0(v15, 0, &v46, isUniquelyReferenced_nonNull_native);

      *(v2 + v14) = v43;
      swift_endAccess();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      v41 = v7;
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = v7;
        v22 = v20;
        v44 = v20;
        *&v45 = v21;
        *v19 = 136315138;
        *(&v45 + 1) = v9;
        swift_bridgeObjectRetain_n();

        v23._countAndFlagsBits = 46;
        v23._object = 0xE100000000000000;
        String.append(_:)(v23);

        v24._countAndFlagsBits = 24366;
        v24._object = 0xE200000000000000;
        String.append(_:)(v24);
        if (v12)
        {
          v25 = 7365749;
        }

        else
        {
          v25 = 7365492;
        }

        v26 = 0xE300000000000000;
        String.append(_:)(*&v25);

        v27._countAndFlagsBits = 46;
        v27._object = 0xE100000000000000;
        String.append(_:)(v27);
        v28._countAndFlagsBits = 0x6C61636F6CLL;
        v28._object = 0xE500000000000000;
        String.append(_:)(v28);
        v29._countAndFlagsBits = v11;
        v29._object = v10;
        String.append(_:)(v29);

        v30 = sub_100002320(v45, *(&v45 + 1), &v44);

        *(v19 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v17, v18, "Providing PTR record for %s", v19, 0xCu);
        sub_100002A00(v22);
      }

      v31 = *(v2 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_delegate);
      if (v31)
      {
        v45 = xmmword_100480A90;
        swift_unknownObjectRetain();
        sub_100179C20(v11, v10, &v45);
        if (v12)
        {
          v32 = 28;
        }

        else
        {
          v32 = 12;
        }

        sub_100179BC4(v32, &v45);
        sub_100179AB0(11, &v45, v40);
        v33 = v45;
        v34.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1000124C8(v33, *(&v33 + 1));
        v35 = sub_100178F78(v41, v9);
        if (v36 >> 60 == 15)
        {
          isa = 0;
        }

        else
        {
          v38 = v35;
          v39 = v36;
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100017554(v38, v39);
        }

        [v31 handleEventType:0 keyData:v34.super.isa valueData:isa];

        swift_unknownObjectRelease();
      }

      sub_100078A80(&v46);
    }
  }
}

void sub_100079A0C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_discoveredPeers;
  swift_beginAccess();
  v7 = a2;

  v9 = sub_100084100(v8, v5, v7);
  v11 = v10;
  v13 = v12;
  v14 = ~v12;

  if (v14)
  {
    sub_100074090(&v69, v9, v11, *(v3 + v6), &v71);
    v74 = v71;
    v75 = v72;
    v76 = v73;
    v15 = *(&v71 + 1);
    v68 = v71;
    v16 = *(&v72 + 1);
    v66 = v72;
    v67 = v73;
    v62 = HIBYTE(v73);

    sub_100074090(&v69, v9, v11, *(v3 + v6), &v71);

    countAndFlagsBits = v69._countAndFlagsBits;
    object_low = LOBYTE(v69._object);
    swift_beginAccess();
    v64 = v9;
    v65 = v11;
    sub_100081D08(v70, v9, v11, &v71);
    v19 = v70[0];
    swift_endAccess();

    v63 = countAndFlagsBits;
    if (object_low == 1)
    {
      v20 = [countAndFlagsBits serviceSpecificInfo];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 txtRecordData];

        if (v22)
        {
          v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v23;

          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v70[0] = v27;
            *v26 = 136315138;
            *&v71 = v68;
            *(&v71 + 1) = v15;
            swift_bridgeObjectRetain_n();

            v28._countAndFlagsBits = 46;
            v28._object = 0xE100000000000000;
            String.append(_:)(v28);
            v69._countAndFlagsBits = v66;
            v69._object = v16;

            v29._countAndFlagsBits = 24366;
            v29._object = 0xE200000000000000;
            String.append(_:)(v29);
            if (v67)
            {
              v30 = 7365749;
            }

            else
            {
              v30 = 7365492;
            }

            v31 = 0xE300000000000000;
            String.append(_:)(*&v30);

            v32._countAndFlagsBits = 46;
            v32._object = 0xE100000000000000;
            String.append(_:)(v32);
            v33._countAndFlagsBits = 0x6C61636F6CLL;
            v33._object = 0xE500000000000000;
            String.append(_:)(v33);
            String.append(_:)(v69);

            v34 = sub_100002320(v71, *(&v71 + 1), v70);

            *(v26 + 4) = v34;
            _os_log_impl(&_mh_execute_header, v24, v25, "Removing TXT for %s", v26, 0xCu);
            sub_100002A00(v27);
          }

          v35 = *(v3 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_delegate);
          if (v35)
          {
            swift_unknownObjectRetain();
            v36 = sub_100171BB4(15);
            v38 = v37;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_1000124C8(v36, v38);
            sub_10000AB0C(v60, v61);
            v40 = Data._bridgeToObjectiveC()().super.isa;
            sub_1000124C8(v60, v61);
            [v35 handleEventType:1 keyData:isa valueData:v40];

            swift_unknownObjectRelease();
            sub_1000124C8(v60, v61);
          }

          else
          {

            sub_1000124C8(v60, v61);
          }
        }
      }
    }

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v70[0] = v44;
      *v43 = 136315138;
      *&v71 = v68;
      *(&v71 + 1) = v15;
      swift_bridgeObjectRetain_n();

      v45._countAndFlagsBits = 46;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      v69._countAndFlagsBits = v66;
      v69._object = v16;

      v46._countAndFlagsBits = 24366;
      v46._object = 0xE200000000000000;
      String.append(_:)(v46);
      if (v67)
      {
        v47 = 7365749;
      }

      else
      {
        v47 = 7365492;
      }

      v48 = 0xE300000000000000;
      String.append(_:)(*&v47);

      v49._countAndFlagsBits = 46;
      v49._object = 0xE100000000000000;
      String.append(_:)(v49);
      v50._countAndFlagsBits = 0x6C61636F6CLL;
      v50._object = 0xE500000000000000;
      String.append(_:)(v50);
      String.append(_:)(v69);

      v51 = sub_100002320(v71, *(&v71 + 1), v70);

      *(v43 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "Removing PTR for %s", v43, 0xCu);
      sub_100002A00(v44);
    }

    v52 = *(v3 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_delegate);
    if (v52)
    {
      v71 = xmmword_100480A90;
      swift_unknownObjectRetain();
      sub_100179C20(v66, v16, &v71);
      if (v67)
      {
        v53 = 28;
      }

      else
      {
        v53 = 12;
      }

      sub_100179BC4(v53, &v71);
      sub_100179AB0(11, &v71, v62);
      v54 = v71;
      v55.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000124C8(v54, *(&v54 + 1));
      v56 = sub_100178F78(v68, v15);
      v58 = v57;

      if (v58 >> 60 == 15)
      {
        v59 = 0;
      }

      else
      {
        v59 = Data._bridgeToObjectiveC()().super.isa;
        sub_100017554(v56, v58);
      }

      [v52 handleEventType:1 keyData:v55.super.isa valueData:v59];
      sub_100085170(v64, v65, v13);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100085170(v64, v65, v13);
    }
  }
}

void sub_10007A1F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_delegate);
  if (v3)
  {
    swift_unknownObjectRetain();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v5 = Data._bridgeToObjectiveC()().super.isa;
    [v3 handleEventType:0 keyData:isa valueData:v5];

    swift_unknownObjectRelease();
  }
}

id sub_10007A29C(id result, unint64_t a2)
{
  if (result)
  {
    v4 = result;
    result = [result instanceName];
    if (result)
    {
      v5 = result;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v10 = *(v2 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service);
      v9 = *(v2 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 8);
      v11 = *(v2 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 16);
      v12 = *(v2 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_service + 17);
      *&v87 = v6;
      *(&v87 + 1) = v8;
      v88 = v10;
      v89 = v9;
      v90 = v11;
      v91 = v12;
      v13 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_discoveredPeers;
      swift_beginAccess();
      v14 = *(v2 + v13);
      if (!*(v14 + 16))
      {
      }

      v83 = v2;

      v15 = sub_10007CE78(&v87);
      if ((v16 & 1) == 0)
      {
      }

      v74 = v6;
      v75 = v10;
      v76 = v11;
      v78 = v13;
      v81 = v8;
      v82 = v9;
      v17 = HIWORD(a2);
      v18 = a2 >> 40;
      v19 = HIDWORD(a2);
      v20 = a2 >> 24;
      v21 = a2 >> 16;
      v22 = a2 >> 8;
      v23 = *(v14 + 56) + 16 * v15;
      v79 = *(v23 + 8);
      v24 = *v23;

      v25 = [v24 publisherAddress];
      v26 = WiFiMACAddress.wifiAddress.getter();

      LODWORD(v93) = v26;
      BYTE4(v93) = BYTE4(v26);
      BYTE5(v93) = BYTE5(v26);
      LOBYTE(v84) = v22;
      BYTE1(v84) = v21;
      BYTE2(v84) = v20;
      HIBYTE(v84) = v19;
      LOBYTE(v86) = v18;
      HIBYTE(v86) = v17;
      if (v26 != v84 || WORD2(v93) != v86)
      {
      }

      v28 = [v24 publishID];
      if (v28 != [v24 publishID])
      {
        goto LABEL_26;
      }

      v29 = [v24 serviceSpecificInfo];
      if (v29 && (v30 = v29, v31 = [v29 txtRecordData], v30, v31))
      {
        v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;
      }

      else
      {
        v72 = 0;
        v33 = 0xF000000000000000;
      }

      v34 = [v4 txtRecordData];
      if (v34)
      {
        v35 = v34;
        v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        if (v33 >> 60 == 15)
        {
          if (v38 >> 60 != 15)
          {
            goto LABEL_28;
          }

LABEL_23:

          return sub_100017554(v72, v33);
        }

        if (v38 >> 60 != 15)
        {
          sub_10005D67C(v72, v33);
          sub_10005D67C(v36, v38);
          v71 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v72, v33, v36, v38);
          sub_100017554(v36, v38);
          sub_100017554(v72, v33);
          sub_100017554(v36, v38);
          sub_100017554(v72, v33);
          if (!v71)
          {
LABEL_29:
            if (v79)
            {
              v39 = [v24 serviceSpecificInfo];
              if (v39 && (v40 = v39, v41 = [v39 txtRecordData], v40, v41))
              {
                v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v80 = v42;

                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();
                v43 = Logger.logObject.getter();
                v44 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v43, v44))
                {
                  v45 = swift_slowAlloc();
                  v46 = swift_slowAlloc();
                  *v45 = 136315138;
                  v92 = v46;
                  v93 = v74;
                  v94 = v81;
                  swift_bridgeObjectRetain_n();

                  v47._countAndFlagsBits = 46;
                  v47._object = 0xE100000000000000;
                  String.append(_:)(v47);

                  v48._countAndFlagsBits = 24366;
                  v48._object = 0xE200000000000000;
                  String.append(_:)(v48);
                  if (v76)
                  {
                    v49 = 7365749;
                  }

                  else
                  {
                    v49 = 7365492;
                  }

                  v50 = 0xE300000000000000;
                  String.append(_:)(*&v49);

                  v51._countAndFlagsBits = 46;
                  v51._object = 0xE100000000000000;
                  String.append(_:)(v51);
                  v52._countAndFlagsBits = 0x6C61636F6CLL;
                  v52._object = 0xE500000000000000;
                  String.append(_:)(v52);
                  v53._countAndFlagsBits = v75;
                  v53._object = v82;
                  String.append(_:)(v53);

                  v54 = sub_100002320(v93, v94, &v92);

                  *(v45 + 4) = v54;
                  _os_log_impl(&_mh_execute_header, v43, v44, "Removing TXT for %s", v45, 0xCu);
                  sub_100002A00(v46);
                }

                v55 = v83;
                v56 = *(v83 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_delegate);
                if (v56)
                {
                  swift_unknownObjectRetain();
                  v55 = v83;
                  v57 = sub_100171BB4(15);
                  v59 = v58;
                  isa = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000124C8(v57, v59);
                  sub_10000AB0C(v73, v80);
                  v60 = Data._bridgeToObjectiveC()().super.isa;
                  sub_1000124C8(v73, v80);
                  [v56 handleEventType:1 keyData:isa valueData:v60];

                  swift_unknownObjectRelease();
                  sub_1000124C8(v73, v80);

                  LOBYTE(v56) = 0;
                }

                else
                {

                  sub_1000124C8(v73, v80);
                }
              }

              else
              {
                v55 = v83;
                LOBYTE(v56) = 1;
              }
            }

            else
            {
              v55 = v83;
              LOBYTE(v56) = 0;
            }

            v61 = [v24 serviceSpecificInfo];
            if (v61)
            {
              v62 = v61;
              v63 = [v4 txtRecordData];
              if (v63)
              {
                v64 = v63;
                v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v67 = v66;

                v68.super.isa = Data._bridgeToObjectiveC()().super.isa;
                sub_1000124C8(v65, v67);
              }

              else
              {
                v68.super.isa = 0;
              }

              [v62 setTxtRecordData:v68.super.isa];
            }

            swift_beginAccess();

            v69 = v24;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v85 = *(v55 + v78);
            *(v55 + v78) = 0x8000000000000000;
            sub_1000800E0(v69, v56, &v87, isUniquelyReferenced_nonNull_native);

            *(v55 + v78) = v85;
            swift_endAccess();
            sub_100078A80(&v87);

            goto LABEL_48;
          }

LABEL_26:

LABEL_48:
        }
      }

      else
      {
        if (v33 >> 60 == 15)
        {
          goto LABEL_23;
        }

        v36 = 0;
        v38 = 0xF000000000000000;
      }

LABEL_28:
      sub_100017554(v72, v33);
      sub_100017554(v36, v38);
      goto LABEL_29;
    }
  }

  return result;
}

void sub_10007ABCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000124C8(v3, v4);
}

id sub_10007AC80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10007AD7C()
{
  v1 = *&v0[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 16];
  v48 = *&v0[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa];
  v49 = v1;
  v2 = *&v0[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 48];
  v50 = *&v0[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 32];
  v51 = v2;
  v3 = v49;
  if (v49)
  {
    v4 = *(&v48 + 1);
    v39 = BYTE8(v49);
    v40 = v48;
    v5 = *(&v50 + 1);
    v6 = v50;
    sub_100012400(&v48, &v43, &qword_10058BA48, &qword_100480D98);
    v7 = v0;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v37 = v5;
      v10 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v6;
      v41 = v35;
      *v10 = 136315138;
      v11 = &v7[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service];
      v12 = *&v7[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service];
      v13 = *&v7[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 8];
      v38 = v7;
      v15 = *&v7[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 16];
      v14 = *(v11 + 3);
      v16 = v4;
      v17 = v11[32];
      v43 = v12;
      v44 = v13;
      swift_bridgeObjectRetain_n();

      v18._countAndFlagsBits = 46;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v42._countAndFlagsBits = v15;
      v42._object = v14;

      v19._countAndFlagsBits = 24366;
      v19._object = 0xE200000000000000;
      String.append(_:)(v19);
      v20 = v17 == 0;
      v4 = v16;
      if (v20)
      {
        v21 = 7365492;
      }

      else
      {
        v21 = 7365749;
      }

      v22 = 0xE300000000000000;
      String.append(_:)(*&v21);

      v23._countAndFlagsBits = 46;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24._countAndFlagsBits = 0x6C61636F6CLL;
      v24._object = 0xE500000000000000;
      String.append(_:)(v24);
      String.append(_:)(v42);

      v7 = v38;

      v25 = sub_100002320(v43, v44, &v41);

      *(v10 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v8, v9, "Providing AAAA record for %s", v10, 0xCu);
      sub_100002A00(v35);
      v6 = v36;

      v5 = v37;
    }

    v26 = *&v7[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_delegate];
    if (v26)
    {
      v42 = xmmword_100480A90;
      swift_unknownObjectRetain();
      sub_100179C20(v4, v3, &v42._countAndFlagsBits);
      v27 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
      v46 = v27;
      v28 = sub_1000850C8();
      v47 = v28;
      LOBYTE(v43) = -64;
      LOBYTE(v41) = *sub_100029B34(&v43, v27);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_100002A00(&v43);
      v46 = v27;
      v47 = v28;
      LOBYTE(v43) = 17;
      LOBYTE(v41) = *sub_100029B34(&v43, v27);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_100002A00(&v43);
      sub_100179AB0(v40, &v42._countAndFlagsBits, v39);
      v29 = v42;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000124C8(v29._countAndFlagsBits, v29._object);
      v43 = v6;
      v44 = v5;
      v31 = sub_10004F3B0(&v43, &v45);
      v33 = v32;
      sub_100016290(&v48, &qword_10058BA48, &qword_100480D98);
      v34 = Data._bridgeToObjectiveC()().super.isa;
      sub_1000124C8(v31, v33);
      [v26 handleEventType:0 keyData:isa valueData:v34];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_100016290(&v48, &qword_10058BA48, &qword_100480D98);
    }

    v7[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_providedAAAA] = 1;
  }
}

uint64_t sub_10007B228()
{
  sub_10005DC58(&unk_10058B750, &unk_100480AB0);
  __chkstk_darwin();
  v2 = v20 - v1;
  v3 = type metadata accessor for DNSRecords.SRV(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_srv;
  swift_beginAccess();
  sub_100012400(v0 + v7, v2, &unk_10058B750, &unk_100480AB0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_100016290(v2, &unk_10058B750, &unk_100480AB0);
  }

  sub_100038F84(v2, v6, type metadata accessor for DNSRecords.SRV);
  v9 = *(v0 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_delegate);
  if (v9)
  {
    v10 = *(v6 + 1);
    v20[2] = *v6;
    v20[3] = v10;
    v21 = *(v6 + 16);
    swift_unknownObjectRetain();
    v11 = sub_100171BB4(32);
    v13 = v12;
    v14.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v11, v13);
    v15 = DNSRecords.SRV.valueData.getter();
    if (v16 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v18 = v15;
      v19 = v16;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100017554(v18, v19);
    }

    [v9 handleEventType:0 keyData:v14.super.isa valueData:isa];
    swift_unknownObjectRelease();
  }

  return sub_100083834(v6);
}

void sub_10007B524(uint64_t a1, void *a2)
{
  v84 = a1;
  sub_10005DC58(&unk_10058B750, &unk_100480AB0);
  __chkstk_darwin();
  v5 = &v72 - v4;
  v6 = type metadata accessor for DNSRecords.SRV(0);
  v83 = *(v6 - 1);
  __chkstk_darwin();
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BA40, &qword_100480D90);
  __chkstk_darwin();
  v10 = &v72 - v9;
  v11 = type metadata accessor for NWEndpoint.Port();
  v85 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v72 - v15;
  if (a2)
  {
    v17 = [a2 hostname];
    if (v17)
    {
      v18 = v17;
      v81 = v5;
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      [a2 servicePort];
      NWEndpoint.Port.init(rawValue:)();
      v21 = v85;
      if ((*(v85 + 48))(v10, 1, v11) == 1)
      {

        sub_100016290(v10, &qword_10058BA40, &qword_100480D90);
      }

      else
      {
        (*(v21 + 32))(v16, v10, v11);
        v22 = *(v21 + 16);
        v78 = v21 + 16;
        v77 = v22;
        v22(v13, v16, v11);
        v23 = v2;

        v24 = v23;
        v25 = Logger.logObject.getter();
        LODWORD(v23) = static os_log_type_t.info.getter();

        v76 = v23;
        v26 = os_log_type_enabled(v25, v23);
        v27 = v20;
        v80 = v24;
        if (v26)
        {
          v28 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *&v91 = v75;
          *v28 = 136315650;
          v30 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service];
          v29 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 8];
          v74 = v25;
          v73 = v20;
          v31 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 16];
          v32 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 24];
          LODWORD(v79) = v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 32];
          *&v86[0] = v30;
          *(&v86[0] + 1) = v29;
          swift_bridgeObjectRetain_n();

          v33._countAndFlagsBits = 46;
          v33._object = 0xE100000000000000;
          String.append(_:)(v33);
          v87._countAndFlagsBits = v31;
          v87._object = v32;

          v34._countAndFlagsBits = 24366;
          v34._object = 0xE200000000000000;
          String.append(_:)(v34);
          if (v79)
          {
            v35 = 7365749;
          }

          else
          {
            v35 = 7365492;
          }

          v36 = 0xE300000000000000;
          String.append(_:)(*&v35);

          v37._countAndFlagsBits = 46;
          v37._object = 0xE100000000000000;
          String.append(_:)(v37);
          v38._countAndFlagsBits = 0x6C61636F6CLL;
          v38._object = 0xE500000000000000;
          String.append(_:)(v38);
          String.append(_:)(v87);
          v27 = v73;

          v39 = sub_100002320(*&v86[0], *(&v86[0] + 1), &v91);

          *(v28 + 4) = v39;
          *(v28 + 12) = 2080;
          v40 = v82;
          *(v28 + 14) = sub_100002320(v82, v27, &v91);
          *(v28 + 22) = 512;
          v41 = NWEndpoint.Port.rawValue.getter();
          v79 = *(v85 + 8);
          v79(v13, v11);
          *(v28 + 24) = v41;
          v24 = v80;
          v42 = v74;
          _os_log_impl(&_mh_execute_header, v74, v76, "Providing SRV record for %s %s:%hu", v28, 0x1Au);
          swift_arrayDestroy();

          v43 = v81;
        }

        else
        {
          v79 = *(v21 + 8);
          v79(v13, v11);

          v43 = v81;
          v40 = v82;
        }

        v89 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 32];
        v44 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 16];
        v87 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service];
        v88 = v44;
        v90 = v87;
        v45 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 16];
        v92 = v89;
        v91 = v45;
        v77(&v8[v6[5]], v16, v11);
        *(v8 + 16) = v89;
        v46 = v88;
        *v8 = v87;
        *(v8 + 1) = v46;
        v47 = &v8[v6[6]];
        *v47 = v40;
        v47[1] = v27;
        *&v8[v6[7]] = 0;
        *&v8[v6[8]] = 0;
        v48 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_delegate];

        if (v48)
        {
          sub_1000836D4(&v90, v86);
          sub_100083730(&v91, v86);
          swift_unknownObjectRetain();
          v49 = sub_100171BB4(32);
          v51 = v50;
          v52.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_1000124C8(v49, v51);
          v53 = DNSRecords.SRV.valueData.getter();
          if (v54 >> 60 == 15)
          {
            isa = 0;
          }

          else
          {
            v56 = v53;
            v57 = v27;
            v58 = v54;
            isa = Data._bridgeToObjectiveC()().super.isa;
            v59 = v58;
            v27 = v57;
            v43 = v81;
            sub_100017554(v56, v59);
          }

          [v48 handleEventType:0 keyData:v52.super.isa valueData:isa];

          swift_unknownObjectRelease();
          v40 = v82;
        }

        else
        {
          sub_1000836D4(&v90, v86);
          sub_100083730(&v91, v86);
        }

        v60 = HIBYTE(v92);
        sub_100083B68(v8, v43);
        (*(v83 + 56))(v43, 0, 1, v6);
        v61 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_srv;
        v62 = v80;
        swift_beginAccess();
        sub_100083890(v43, &v62[v61]);
        swift_endAccess();
        v63 = WiFiMACAddress.wifiAddress.getter();
        v64 = WiFiAddress.ipv6LinkLocalAddress.getter(v63 & 0xFFFFFFFFFFFFLL);
        v65 = &v62[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa];
        v66 = *&v62[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa];
        v67 = *&v62[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 16];
        v68 = *&v62[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 48];
        v86[2] = *&v62[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 32];
        v86[3] = v68;
        v86[0] = v66;
        v86[1] = v67;
        *v65 = 27;
        *(v65 + 1) = v40;
        *(v65 + 2) = v27;
        v65[24] = v60;
        *(v65 + 4) = v64;
        *(v65 + 5) = v69;
        *(v65 + 6) = v70;
        *(v65 + 7) = v71;
        sub_100016290(v86, &qword_10058BA48, &qword_100480D98);
        sub_10007AD7C();
        v79(v16, v11);
        sub_100083834(v8);
      }
    }
  }
}

id sub_10007BDD0(char *a1)
{
  v2 = v1;
  v111 = a1;
  sub_10005DC58(&qword_10058BA40, &qword_100480D90);
  __chkstk_darwin();
  v104 = &v100[-v3];
  v115 = type metadata accessor for NWEndpoint.Port();
  v114 = *(v115 - 8);
  __chkstk_darwin();
  v112 = &v100[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v105 = &v100[-v5];
  sub_10005DC58(&unk_10058B750, &unk_100480AB0);
  __chkstk_darwin();
  v7 = &v100[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v100[-v8];
  v10 = type metadata accessor for DNSRecords.SRV(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v106 = &v100[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v100[-v13];
  __chkstk_darwin();
  v110 = &v100[-v15];
  __chkstk_darwin();
  v17 = &v100[-v16];
  v18 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_srv;
  swift_beginAccess();
  v108 = v18;
  v116 = v2;
  sub_100012400(&v2[v18], v9, &unk_10058B750, &unk_100480AB0);
  v109 = v11;
  v19 = *(v11 + 48);
  v113 = v10;
  if (v19(v9, 1, v10) == 1)
  {
    result = sub_100016290(v9, &unk_10058B750, &unk_100480AB0);
    v21 = v112;
    v22 = v115;
    v23 = v114;
  }

  else
  {
    v107 = v7;
    sub_100038F84(v9, v17, type metadata accessor for DNSRecords.SRV);
    sub_100083B68(v17, v110);
    sub_100083B68(v17, v14);
    v24 = v116;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v119._countAndFlagsBits = v102;
      *v27 = 136315650;
      v28 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service];
      v29 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 8];
      v101 = v26;
      v31 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 16];
      v30 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 24];
      v103 = v24;
      v32 = v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 32];
      *&v123 = v28;
      *(&v123 + 1) = v29;
      swift_bridgeObjectRetain_n();

      v33._countAndFlagsBits = 46;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      v120._countAndFlagsBits = v31;
      v120._object = v30;

      v34._countAndFlagsBits = 24366;
      v34._object = 0xE200000000000000;
      String.append(_:)(v34);
      if (v32)
      {
        v35 = 7365749;
      }

      else
      {
        v35 = 7365492;
      }

      v36 = 0xE300000000000000;
      String.append(_:)(*&v35);

      v37._countAndFlagsBits = 46;
      v37._object = 0xE100000000000000;
      String.append(_:)(v37);
      v38._countAndFlagsBits = 0x6C61636F6CLL;
      v38._object = 0xE500000000000000;
      String.append(_:)(v38);
      String.append(_:)(v120);

      v22 = v115;

      v39 = sub_100002320(v123, *(&v123 + 1), &v119._countAndFlagsBits);

      *(v27 + 4) = v39;
      *(v27 + 12) = 2080;
      v40 = v110;
      v41 = &v110[v113[6]];
      v42 = *v41;
      v43 = v41[1];

      sub_100083834(v40);
      v44 = sub_100002320(v42, v43, &v119._countAndFlagsBits);

      *(v27 + 14) = v44;
      *(v27 + 22) = 512;
      v24 = v103;
      LOWORD(v44) = NWEndpoint.Port.rawValue.getter();
      sub_100083834(v14);
      *(v27 + 24) = v44;
      _os_log_impl(&_mh_execute_header, v25, v101, "Removing SRV record for %s %s:%hu", v27, 0x1Au);
      swift_arrayDestroy();

      v21 = v112;
    }

    else
    {
      sub_100083834(v14);

      sub_100083834(v110);
      v21 = v112;
      v22 = v115;
    }

    v45 = *&v24[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_delegate];
    v23 = v114;
    if (v45)
    {
      v46 = *(v17 + 1);
      v123 = *v17;
      v124 = v46;
      v125 = *(v17 + 16);
      swift_unknownObjectRetain();
      v47 = sub_100171BB4(32);
      v49 = v48;
      v50.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000124C8(v47, v49);
      v51 = DNSRecords.SRV.valueData.getter();
      if (v52 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        v54 = v51;
        v55 = v52;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100017554(v54, v55);
      }

      [v45 handleEventType:1 keyData:v50.super.isa valueData:isa];

      swift_unknownObjectRelease();
    }

    v7 = v107;
    (*(v109 + 56))(v107, 1, 1, v113);
    v56 = v108;
    v57 = v116;
    swift_beginAccess();
    sub_100083890(v7, &v57[v56]);
    swift_endAccess();
    result = sub_100083834(v17);
  }

  v58 = v111;
  if (v111)
  {
    result = [v111 hostname];
    if (result)
    {
      v107 = v7;
      v59 = result;
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      [v58 servicePort];
      v62 = v104;
      NWEndpoint.Port.init(rawValue:)();
      if ((*(v23 + 48))(v62, 1, v22) == 1)
      {

        return sub_100016290(v62, &qword_10058BA40, &qword_100480D90);
      }

      else
      {
        v63 = v105;
        (*(v23 + 32))(v105, v62, v22);
        v64 = v116;
        v122 = *&v116[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 32];
        v65 = *&v116[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 16];
        v120 = *&v116[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service];
        v121 = v65;
        v128 = v120;
        v126 = v65;
        v127 = v122;
        v66 = v113;
        v67 = *(v23 + 16);
        v68 = v106;
        v67(&v106[v113[5]], v63, v22);
        *(v68 + 16) = v122;
        v69 = v121;
        *v68 = v120;
        *(v68 + 1) = v69;
        v70 = &v68[v66[6]];
        *v70 = v112;
        v70[1] = v61;
        *&v68[v66[7]] = 0;
        *&v68[v66[8]] = 0;
        v67(v21, v63, v22);
        swift_bridgeObjectRetain_n();
        v71 = v64;
        sub_1000836D4(&v128, &v119);
        sub_100083730(&v126, &v119);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();

        v74 = v21;
        if (os_log_type_enabled(v72, v73))
        {
          v111 = v71;
          v75 = v126;
          v76 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          *v76 = 136315650;
          v117 = v128;
          sub_1000836D4(&v128, &v119);
          sub_1000836D4(&v128, &v119);
          sub_100083730(&v126, &v119);
          v77._countAndFlagsBits = 46;
          v77._object = 0xE100000000000000;
          String.append(_:)(v77);
          v119 = v75;

          v78._countAndFlagsBits = 24366;
          v78._object = 0xE200000000000000;
          String.append(_:)(v78);
          if (v127)
          {
            v79 = 7365749;
          }

          else
          {
            v79 = 7365492;
          }

          v80 = 0xE300000000000000;
          String.append(_:)(*&v79);

          v81._countAndFlagsBits = 46;
          v81._object = 0xE100000000000000;
          String.append(_:)(v81);
          v82._countAndFlagsBits = 0x6C61636F6CLL;
          v82._object = 0xE500000000000000;
          String.append(_:)(v82);
          String.append(_:)(v119);

          sub_10008378C(&v128);
          sub_1000837E0(&v126);
          v83 = sub_100002320(v117._countAndFlagsBits, v117._object, &v118);

          *(v76 + 4) = v83;
          *(v76 + 12) = 2080;
          v84 = sub_100002320(v112, v61, &v118);

          *(v76 + 14) = v84;
          *(v76 + 22) = 512;
          LOWORD(v84) = NWEndpoint.Port.rawValue.getter();
          v85 = *(v114 + 8);
          v85(v74, v22);
          *(v76 + 24) = v84;
          v71 = v111;
          _os_log_impl(&_mh_execute_header, v72, v73, "Providing SRV record for %s %s:%hu", v76, 0x1Au);
          swift_arrayDestroy();
        }

        else
        {
          v85 = *(v23 + 8);
          v85(v74, v22);
        }

        v86 = *&v71[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_delegate];
        if (v86)
        {
          swift_unknownObjectRetain();
          v87 = sub_100171BB4(32);
          v89 = v88;
          v90.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_1000124C8(v87, v89);
          v91 = DNSRecords.SRV.valueData.getter();
          if (v92 >> 60 == 15)
          {
            v93 = 0;
          }

          else
          {
            v94 = v91;
            v95 = v92;
            v93 = Data._bridgeToObjectiveC()().super.isa;
            sub_100017554(v94, v95);
          }

          [v86 handleEventType:0 keyData:v90.super.isa valueData:v93];

          swift_unknownObjectRelease();
        }

        v85(v105, v115);
        v96 = v106;
        v97 = v107;
        sub_100083B68(v106, v107);
        (*(v109 + 56))(v97, 0, 1, v113);
        v98 = v108;
        v99 = v116;
        swift_beginAccess();
        sub_100083890(v97, &v99[v98]);
        swift_endAccess();
        return sub_100083834(v96);
      }
    }
  }

  return result;
}

unint64_t sub_10007CCC8(unsigned __int8 a1)
{
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_10002D0E4(a1, v2);
}

unint64_t sub_10007CD10(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xDD06050403020100 >> (8 * v1));
  v2 = Hasher._finalize()();

  return sub_10007D680(v1, v2);
}

unint64_t sub_10007CD94(unint64_t a1)
{
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(BYTE6(a1));
  v7 = Hasher._finalize()();

  return sub_10007D718(a1 & 0xFFFFFFFFFFFFFFLL, v7);
}

unint64_t sub_10007CE78(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  v2 = *(a1 + 33);
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v2);
  v3 = Hasher._finalize()();

  return sub_10007D82C(a1, v3);
}

unint64_t sub_10007CF70(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10007DA14(a1, v2);
}

unint64_t sub_10007CFD0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100085198(&qword_10058BAE8, type metadata accessor for CFString, byte_10047F128);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10007DBAC(a1, v2);
}

unint64_t sub_10007D084(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10007DCB8(v1, v2);
}

unint64_t sub_10007D1A4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_10007DECC(a1, a2, v4);
}

unint64_t sub_10007D238(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10007DFE4(a1 & 1, v2);
}

unint64_t sub_10007D2F8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100237A68(*(v1 + 40), a1);

  return sub_10007E148(v2, v3);
}

unint64_t sub_10007D33C(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10007E3C8(v1, v2);
}

unint64_t sub_10007D40C(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10007E568(a1 & 1, v2);
}

uint64_t sub_10007D4B0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

unint64_t sub_10007D54C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  return sub_10007EE78(a1, v6, a3);
}

unint64_t sub_10007D5E8(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_1001871FC(v4, v1);
  v2 = Hasher._finalize()();

  return sub_10007EF90(v1, v2);
}

unint64_t sub_10007D680(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = (0xDD06050403020100 >> (8 * a1));
    do
    {
      if ((0xDD06050403020100 >> (8 * *(*(v2 + 48) + result))) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10007D718(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = a1;
    v7 = ~v4;
    v8 = HIWORD(a1);
    v9 = a1 >> 40;
    v10 = HIDWORD(a1);
    v11 = a1 >> 24;
    v12 = a1 >> 16;
    v13 = a1 >> 8;
    do
    {
      v14 = (*(v2 + 48) - result + 8 * result);
      if (*v14 == v6)
      {
        LOBYTE(v16) = v13;
        BYTE1(v16) = v12;
        BYTE2(v16) = v11;
        HIBYTE(v16) = v10;
        LOBYTE(v17) = v9;
        HIBYTE(v17) = v8;
        if (*(v14 + 1) == v16 && *(v14 + 5) == v17)
        {
          break;
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10007D82C(__int128 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v15 = ~v3;
    v14 = *(a1 + 33);
    sub_10005E2E4();
    do
    {
      v6 = *(v17 + 48) + 40 * v4;
      v7 = *(v6 + 32);
      v8 = *(v6 + 33);

      if (StringProtocol.caseInsensitiveCompare<A>(_:)() || (v9 = *(a1 + 32), StringProtocol.caseInsensitiveCompare<A>(_:)()))
      {
      }

      else
      {
        if (v7)
        {
          v10 = 7365749;
        }

        else
        {
          v10 = 7365492;
        }

        if (v9)
        {
          v11 = 7365749;
        }

        else
        {
          v11 = 7365492;
        }

        if (v10 == v11)
        {

          swift_bridgeObjectRelease_n();
        }

        else
        {
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          swift_bridgeObjectRelease_n();
          if ((v12 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if (v8 == v14)
        {
          return v4;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v15;
    }

    while (((*(v16 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10007DA14(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v6 = __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10007DBAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100085198(&qword_10058BAE8, type metadata accessor for CFString, byte_10047F128);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

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

unint64_t sub_10007DCB8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xEA00000000007963;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 1818523489;
        }

        else
        {
          v8 = 0x7274736172666E69;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE400000000000000;
        }

        else
        {
          v9 = 0xEE00657275746375;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0x67616E614D6E616ELL;
        v9 = 0xED0000746E656D65;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x617461446E616ELL;
        }

        else
        {
          v8 = 0x6E6574614C776F6CLL;
        }

        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xEA00000000007963;
        }
      }

      if (v6 == 3)
      {
        v10 = 0x617461446E616ELL;
      }

      else
      {
        v10 = 0x6E6574614C776F6CLL;
      }

      if (v6 == 3)
      {
        v5 = 0xE700000000000000;
      }

      if (v6 == 2)
      {
        v10 = 0x67616E614D6E616ELL;
        v5 = 0xED0000746E656D65;
      }

      v11 = v6 ? 1818523489 : 0x7274736172666E69;
      v12 = v6 ? 0xE400000000000000 : 0xEE00657275746375;
      v13 = v6 <= 1 ? v11 : v10;
      v14 = v6 <= 1 ? v12 : v5;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xEA00000000007963;
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

unint64_t sub_10007DECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = String.lowercased()();
      v8 = String.lowercased()();
      if (v7._countAndFlagsBits == v8._countAndFlagsBits && v7._object == v8._object)
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_10007DFE4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x64657463656A6572;
    }

    else
    {
      v6 = 0x6553657669746361;
    }

    if (a1)
    {
      v7 = 0xEF65636976726553;
    }

    else
    {
      v7 = 0xED00006563697672;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x64657463656A6572 : 0x6553657669746361;
      v9 = *(*(v2 + 48) + v4) ? 0xEF65636976726553 : 0xED00006563697672;
      if (v8 == v6 && v9 == v7)
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

unint64_t sub_10007E148(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6172666E49796DLL;
          }

          else
          {
            v8 = 0x72666E4972656570;
          }

          if (v7 == 1)
          {
            v9 = 0xE700000000000000;
          }

          else
          {
            v9 = 0xE900000000000061;
          }
        }

        else
        {
          v9 = 0xE700000000000000;
          v8 = 0x65636976726573;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0xD000000000000011;
          v9 = 0x80000001004B5FF0;
        }

        else
        {
          v9 = 0xE800000000000000;
          v8 = 0x44495353656D6173;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x424453796DLL;
        }

        else
        {
          v8 = 0x42445372656570;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      v10 = 0xD000000000000011;
      if (v6 != 5)
      {
        v10 = 0x44495353656D6173;
      }

      v11 = 0xE800000000000000;
      if (v6 == 5)
      {
        v11 = 0x80000001004B5FF0;
      }

      v12 = 0x42445372656570;
      if (v6 == 3)
      {
        v12 = 0x424453796DLL;
      }

      v13 = 0xE500000000000000;
      if (v6 != 3)
      {
        v13 = 0xE700000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x72666E4972656570;
      if (v6 == 1)
      {
        v14 = 0x6172666E49796DLL;
      }

      v15 = 0xE900000000000061;
      if (v6 == 1)
      {
        v15 = 0xE700000000000000;
      }

      if (!v6)
      {
        v14 = 0x65636976726573;
        v15 = 0xE700000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
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

unint64_t sub_10007E3C8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x616974696E497369;
          v8 = 0xEB00000000726F74;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE800000000000000;
          v7 = 0x6E6F697461727564;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE700000000000000;
            if (v7 != 0x65636976726573)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x65636976726573;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x616974696E497369;
      }

      else
      {
        v10 = 0x6E6F697461727564;
      }

      if (v9 == 1)
      {
        v11 = 0xEB00000000726F74;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_10007E568(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6E6F73616572;
    }

    else
    {
      v6 = 0x65636976726573;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6E6F73616572 : 0x65636976726573;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
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

unint64_t sub_10007E6AC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0x73657479427874;
      v8 = 0xE700000000000000;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0x73657479427872;
          break;
        case 2:
          v7 = 0x7275446C61746F74;
          v8 = 0xED00006E6F697461;
          break;
        case 3:
          v7 = 0xD000000000000012;
          v8 = 0x80000001004B5790;
          break;
        case 4:
          v7 = 0xD000000000000012;
          v8 = 0x80000001004B57B0;
          break;
        case 5:
          v7 = 0xD000000000000011;
          v8 = 0x80000001004B57D0;
          break;
        case 6:
          v7 = 0x6565506C61746F74;
          v8 = 0xEE00746E756F4372;
          break;
        case 7:
          v7 = 0xD000000000000011;
          v8 = 0x80000001004B53D0;
          break;
        case 8:
          v7 = 0xD00000000000001DLL;
          v8 = 0x80000001004B5800;
          break;
        case 9:
          v7 = 0xD000000000000018;
          v8 = 0x80000001004B5820;
          break;
        case 0xA:
          v7 = 0x6C62616E45667370;
          v8 = 0xEF746E756F436465;
          break;
        case 0xB:
          v7 = 0x737265566C647761;
          v8 = 0xEB000000006E6F69;
          break;
        case 0xC:
          v7 = 0xD000000000000016;
          v8 = 0x80000001004B5400;
          break;
        case 0xD:
          v7 = 0xD000000000000010;
          v8 = 0x80000001004B5440;
          break;
        case 0xE:
          v7 = 0xD000000000000015;
          v8 = 0x80000001004B5850;
          break;
        case 0xF:
          v7 = 0xD000000000000010;
          v8 = 0x80000001004B54A0;
          break;
        case 0x10:
          v7 = 0xD000000000000015;
          v8 = 0x80000001004B5870;
          break;
        case 0x11:
          v7 = 0x6C507265646E6573;
          v8 = 0xEE006D726F667461;
          break;
        case 0x12:
          v7 = 0x676E697472617473;
          v8 = 0xEC00000049535352;
          break;
        case 0x13:
          v7 = 0x4D6F727465526E69;
          v8 = 0xEB0000000065646FLL;
          break;
        case 0x14:
          v7 = 0x7366446F54617363;
          v8 = 0xEF6C656E6E616843;
          break;
        case 0x15:
          v7 = 0xD000000000000011;
          v8 = 0x80000001004B58C0;
          break;
        case 0x16:
          v7 = 0x79786F7250736664;
          v8 = 0xEC00000065646F4DLL;
          break;
        case 0x17:
          v9 = 1718379891;
          goto LABEL_30;
        case 0x18:
          v9 = 1919247728;
LABEL_30:
          v7 = v9 | 0x4453734900000000;
          v8 = 0xE900000000000042;
          break;
        case 0x19:
          v7 = 0xD000000000000013;
          v8 = 0x80000001004B5900;
          break;
        case 0x1A:
          v7 = 0xD000000000000015;
          v8 = 0x80000001004B5920;
          break;
        case 0x1B:
          v7 = 0xD000000000000015;
          v8 = 0x80000001004B5940;
          break;
        case 0x1C:
          v7 = 0xD000000000000017;
          v8 = 0x80000001004B5620;
          break;
        case 0x1D:
          v7 = 0xD000000000000015;
          v8 = 0x80000001004B5960;
          break;
        default:
          break;
      }

      v10 = 0x73657479427874;
      v11 = 0xE700000000000000;
      switch(a1)
      {
        case 1:
          if (v7 == 0x73657479427872)
          {
            goto LABEL_91;
          }

          goto LABEL_92;
        case 2:
          v11 = 0xED00006E6F697461;
          if (v7 != 0x7275446C61746F74)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 3:
          v11 = 0x80000001004B5790;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 4:
          v11 = 0x80000001004B57B0;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 5:
          v11 = 0x80000001004B57D0;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 6:
          v15 = 0x6565506C61746F74;
          v16 = 0x746E756F4372;
          goto LABEL_71;
        case 7:
          v11 = 0x80000001004B53D0;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 8:
          v11 = 0x80000001004B5800;
          if (v7 != 0xD00000000000001DLL)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 9:
          v11 = 0x80000001004B5820;
          if (v7 != 0xD000000000000018)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 10:
          v11 = 0xEF746E756F436465;
          if (v7 != 0x6C62616E45667370)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 11:
          v12 = 0x737265566C647761;
          v13 = 7237481;
          goto LABEL_82;
        case 12:
          v11 = 0x80000001004B5400;
          if (v7 != 0xD000000000000016)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 13:
          v11 = 0x80000001004B5440;
          if (v7 != 0xD000000000000010)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 14:
          v11 = 0x80000001004B5850;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 15:
          v11 = 0x80000001004B54A0;
          if (v7 != 0xD000000000000010)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 16:
          v11 = 0x80000001004B5870;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 17:
          v15 = 0x6C507265646E6573;
          v16 = 0x6D726F667461;
LABEL_71:
          v11 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v7 != v15)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 18:
          v17 = 0x676E697472617473;
          v18 = 1230197586;
          goto LABEL_79;
        case 19:
          v12 = 0x4D6F727465526E69;
          v13 = 6644847;
LABEL_82:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v7 != v12)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 20:
          v11 = 0xEF6C656E6E616843;
          if (v7 != 0x7366446F54617363)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 21:
          v11 = 0x80000001004B58C0;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 22:
          v17 = 0x79786F7250736664;
          v18 = 1701080909;
LABEL_79:
          v11 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v7 != v17)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 23:
          v14 = 1718379891;
          goto LABEL_85;
        case 24:
          v14 = 1919247728;
LABEL_85:
          v11 = 0xE900000000000042;
          if (v7 != (v14 | 0x4453734900000000))
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 25:
          v11 = 0x80000001004B5900;
          if (v7 != 0xD000000000000013)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 26:
          v11 = 0x80000001004B5920;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 27:
          v11 = 0x80000001004B5940;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 28:
          v11 = 0x80000001004B5620;
          if (v7 != 0xD000000000000017)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 29:
          v10 = 0xD000000000000015;
          v11 = 0x80000001004B5960;
          goto LABEL_90;
        default:
LABEL_90:
          if (v7 != v10)
          {
            goto LABEL_92;
          }

LABEL_91:
          if (v8 == v11)
          {

            return v4;
          }

LABEL_92:
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_10007EE78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    while (1)
    {
      v9 = a3(*(*(v3 + 48) + v5));
      v11 = v10;
      if (v9 == a3(a1) && v11 == v12)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v5 = (v5 + 1) & v8;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_10007EF90(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v25 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v26 = a1;
    while (1)
    {
      v5 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v5 <= 3)
      {
        if (v5 == 2)
        {
          v8 = 0x6269726373627573;
        }

        else
        {
          v8 = 0xD000000000000016;
        }

        if (v5 == 2)
        {
          v9 = 0xEE00746E756F4365;
        }

        else
        {
          v9 = 0x80000001004B7050;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0x436873696C627570;
        }

        else
        {
          v10 = 0x664F7265626D756ELL;
        }

        if (v5)
        {
          v11 = 0xEC000000746E756FLL;
        }

        else
        {
          v11 = 0xEC00000073707041;
        }

        if (v5 <= 1)
        {
          v6 = v10;
        }

        else
        {
          v6 = v8;
        }

        if (v5 <= 1)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v5 == 4)
        {
          v6 = 0xD000000000000016;
        }

        else
        {
          v6 = 0xD000000000000011;
        }

        if (v5 == 4)
        {
          v7 = 0x80000001004B7070;
        }

        else
        {
          v7 = 0x80000001004B7090;
        }
      }

      else if (v5 == 6)
      {
        v6 = 0xD000000000000013;
        v7 = 0x80000001004B70B0;
      }

      else
      {
        v6 = 0xD00000000000001BLL;
        if (v5 == 7)
        {
          v7 = 0x80000001004B70D0;
        }

        else
        {
          v7 = 0x80000001004B70F0;
        }
      }

      v12 = 0xD00000000000001BLL;
      v13 = 0x80000001004B70F0;
      if (v26 == 7)
      {
        v13 = 0x80000001004B70D0;
      }

      if (v26 == 6)
      {
        v12 = 0xD000000000000013;
        v13 = 0x80000001004B70B0;
      }

      v14 = 0xD000000000000011;
      if (v26 == 4)
      {
        v14 = 0xD000000000000016;
      }

      v15 = 0x80000001004B7090;
      if (v26 == 4)
      {
        v15 = 0x80000001004B7070;
      }

      if (v26 <= 5)
      {
        v12 = v14;
        v13 = v15;
      }

      if (v26 == 2)
      {
        v16 = 0x6269726373627573;
      }

      else
      {
        v16 = 0xD000000000000016;
      }

      if (v26 == 2)
      {
        v17 = 0xEE00746E756F4365;
      }

      else
      {
        v17 = 0x80000001004B7050;
      }

      if (v26)
      {
        v18 = 0x436873696C627570;
      }

      else
      {
        v18 = 0x664F7265626D756ELL;
      }

      if (v26)
      {
        v19 = 0xEC000000746E756FLL;
      }

      else
      {
        v19 = 0xEC00000073707041;
      }

      if (v26 <= 1)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = v26 <= 3 ? v16 : v12;
      v21 = v26 <= 3 ? v17 : v13;
      if (v6 == v20 && v7 == v21)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        return v28;
      }

      v4 = (v28 + 1) & v24;
      if (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_10007F274(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      if (v6 > 5)
      {
        if (*(*(v23 + 48) + v4) > 8u)
        {
          if (v6 == 9)
          {
            v7 = 0xD00000000000001BLL;
            v8 = 0x80000001004B7130;
          }

          else
          {
            v7 = 0xD000000000000023;
            if (v6 == 10)
            {
              v8 = 0x80000001004B7150;
            }

            else
            {
              v8 = 0x80000001004B7180;
            }
          }
        }

        else if (v6 == 6)
        {
          v7 = 0xD00000000000001BLL;
          v8 = 0x80000001004B70D0;
        }

        else if (v6 == 7)
        {
          v7 = 0xD00000000000001BLL;
          v8 = 0x80000001004B70F0;
        }

        else
        {
          v7 = 0xD000000000000019;
          v8 = 0x80000001004B7110;
        }
      }

      else if (*(*(v23 + 48) + v4) > 2u)
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000016;
          v8 = 0x80000001004B7070;
        }

        else if (v6 == 4)
        {
          v7 = 0xD000000000000011;
          v8 = 0x80000001004B7090;
        }

        else
        {
          v7 = 0xD000000000000013;
          v8 = 0x80000001004B70B0;
        }
      }

      else if (*(*(v23 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x6269726373627573;
        }

        else
        {
          v7 = 0xD000000000000016;
        }

        if (v6 == 1)
        {
          v8 = 0xEE00746E756F4365;
        }

        else
        {
          v8 = 0x80000001004B7050;
        }
      }

      else
      {
        v7 = 0x436873696C627570;
        v8 = 0xEC000000746E756FLL;
      }

      v9 = 0xD000000000000023;
      v10 = 0x80000001004B7180;
      if (v5 == 10)
      {
        v10 = 0x80000001004B7150;
      }

      if (v5 == 9)
      {
        v9 = 0xD00000000000001BLL;
      }

      v11 = 0x80000001004B7110;
      if (v5 == 9)
      {
        v10 = 0x80000001004B7130;
      }

      v12 = 0xD000000000000019;
      if (v5 == 7)
      {
        v12 = 0xD00000000000001BLL;
        v11 = 0x80000001004B70F0;
      }

      if (v5 == 6)
      {
        v12 = 0xD00000000000001BLL;
        v11 = 0x80000001004B70D0;
      }

      if (v5 <= 8)
      {
        v9 = v12;
        v10 = v11;
      }

      v13 = 0xD000000000000011;
      if (v5 != 4)
      {
        v13 = 0xD000000000000013;
      }

      v14 = 0x80000001004B70B0;
      if (v5 == 4)
      {
        v14 = 0x80000001004B7090;
      }

      if (v5 == 3)
      {
        v13 = 0xD000000000000016;
        v14 = 0x80000001004B7070;
      }

      v15 = 0x6269726373627573;
      if (v5 != 1)
      {
        v15 = 0xD000000000000016;
      }

      v16 = 0xEE00746E756F4365;
      if (v5 != 1)
      {
        v16 = 0x80000001004B7050;
      }

      if (!v5)
      {
        v15 = 0x436873696C627570;
        v16 = 0xEC000000746E756FLL;
      }

      if (v5 <= 2)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = v5 <= 5 ? v13 : v9;
      v18 = v5 <= 5 ? v14 : v10;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

double sub_10007F624@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100010254(a1, a2, &String.hash(into:), sub_100010314);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100195788();
      v10 = v12;
    }

    sub_100085188((*(v10 + 56) + 32 * v8), a3);
    sub_100192928(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10007F6F0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10007CE78(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10019592C();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_100192AD8(v5, v7);
  *v2 = v7;
  return v8;
}

double sub_10007F798@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_10007CF70(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100196010();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CodingUserInfoKey();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_100085188((*(v9 + 56) + 32 * v7), a2);
    sub_100193024(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10007F874(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10007D084(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100196730();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 24 * v5);
  sub_1001932D8(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_10007F974(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000501E0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10019711C();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_1001936F8(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_10007FA08@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_10002A440(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for UUID();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_100038F84(v21 + *(v29 + 72) * v20, a6, a3);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_10007FBC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100010254(a1, a2, &String.hash(into:), sub_100010314);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100197404();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_100193530(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_10007FC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10007D1A4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100196B98();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for StorageEntry(0);
    v19 = *(v12 - 8);
    sub_100038F84(v11 + *(v19 + 72) * v8, a3, type metadata accessor for StorageEntry);
    sub_100193F64(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for StorageEntry(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

_OWORD *sub_10007FDF4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
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
      sub_100195788();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10018D424(v16, a4 & 1);
    v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100002A00(v22);

    return sub_100085188(a1, v22);
  }

  else
  {
    sub_1001A9754(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_10007FF94(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007CE78(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 < v14 || (a3 & 1) != 0)
  {
    sub_10018D6DC(v14, a3 & 1);
    v9 = sub_10007CE78(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return _objc_release_x1();
  }

  v17 = v9;
  sub_10019592C();
  v9 = v17;
LABEL_8:
  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v20 = a2[1];
    v25 = *a2;
    v23 = v20;
    v24 = *(a2 + 16);
    sub_1001A97C0(v9, a2, a1, v19);
    sub_1000836D4(&v25, v22);
    return sub_100083730(&v23, v22);
  }

  *(v19[7] + 8 * v9) = a1;

  return _objc_release_x1();
}

void sub_1000800E0(uint64_t a1, char a2, __int128 *a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10007CE78(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100195AC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10018DA48(v16, a4 & 1);
    v11 = sub_10007CE78(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;
    v23 = *v22;
    *v22 = a1;
    *(v22 + 8) = a2 & 1;
  }

  else
  {
    v24 = a3[1];
    v28 = *a3;
    v26 = v24;
    v27 = *(a3 + 16);
    sub_1001A9818(v11, a3, a1, a2 & 1, v21);
    sub_1000836D4(&v28, v25);
    sub_100083730(&v26, v25);
  }
}

_OWORD *sub_10008024C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10007CF70(a2);
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
      sub_100196010();
      goto LABEL_7;
    }

    sub_10018E3D0(v17, a3 & 1);
    v23 = sub_10007CF70(a2);
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
      return sub_1001A9878(v14, v11, a1, v20);
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
  v21 = (v20[7] + 32 * v14);
  sub_100002A00(v21);

  return sub_100085188(a1, v21);
}

unint64_t sub_100080424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10007D084(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_100196730();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10018EEA8(v18, a5 & 1);
    v13 = sub_10007D084(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3;
  }

  else
  {

    return sub_1001A9938(v13, a4, a1, a2, a3, v23);
  }
}

uint64_t sub_100080578(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1001968A8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10018F20C(v16, a4 & 1);
    v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_1001AC5AC();
  }
}

_OWORD *sub_100080710(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10007CFD0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100196A18();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10018F4B4(v13, a3 & 1);
    v8 = sub_10007CFD0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {
    sub_1001A9988(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_100080850(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000501E0(a3);
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
      sub_10019711C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100190288(v16, a4 & 1);
    v11 = sub_1000501E0(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_1001A9A9C(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_100080988(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10002A440(a2);
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
      v22 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
      return sub_1000851E0(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for NANPairedDeviceSharedAssociation);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_100196404();
    goto LABEL_7;
  }

  sub_10018EA08(v17, a3 & 1);
  v24 = sub_10002A440(a2);
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
  return sub_1001A9AE4(v14, v11, a1, v20);
}

uint64_t sub_100080B5C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10007CD10(a2);
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
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
      return sub_1000851E0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NANGenericServiceProtocol.Attribute);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_100195C70();
    goto LABEL_7;
  }

  sub_10018DDCC(v13, a3 & 1);
  v20 = sub_10007CD10(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1001A9BD4(v10, a2, a1, v16);
}

_OWORD *sub_100080CB0(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D238(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197964();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191118(v14, a3 & 1);
    v9 = sub_10007D238(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v9);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {

    return sub_1001AC5A4();
  }
}

_OWORD *sub_100080DDC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D2F8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197978();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1001913FC(v14, a3 & 1);
    v9 = sub_10007D2F8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v9);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {

    return sub_1001AC5A0();
  }
}

_OWORD *sub_100080F08(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D33C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_10019798C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191770(v14, a3 & 1);
    v9 = sub_10007D33C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v9);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {

    return sub_1001AC5A0();
  }
}

_OWORD *sub_100081034(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D40C(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1001979A0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191A60(v14, a3 & 1);
    v9 = sub_10007D40C(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v9);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {

    return sub_1001AC5A4();
  }
}

_OWORD *sub_100081160(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D54C(a2, sub_1001E0694, sub_1001E0694);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B20();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191D28(v14, a3 & 1);
    v9 = sub_10007D54C(a2, sub_1001E0694, sub_1001E0694);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v9);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {

    return sub_1001AC5A0();
  }
}

_OWORD *sub_1000812DC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D4B0(a2, sub_1001E1B50, sub_10007E6AC);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B34();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191D50(v14, a3 & 1);
    v9 = sub_10007D4B0(a2, sub_1001E1B50, sub_10007E6AC);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v9);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {

    return sub_1001AC5A0();
  }
}

_OWORD *sub_100081458(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D54C(a2, sub_1001E1F4C, sub_1001E1F4C);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B48();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191D78(v14, a3 & 1);
    v9 = sub_10007D54C(a2, sub_1001E1F4C, sub_1001E1F4C);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v9);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {

    return sub_1001AC5A0();
  }
}

_OWORD *sub_1000815D4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D54C(a2, sub_100219B9C, sub_100219B9C);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B5C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191DA0(v14, a3 & 1);
    v9 = sub_10007D54C(a2, sub_100219B9C, sub_100219B9C);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v9);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {

    return sub_1001AC5A0();
  }
}

uint64_t sub_100081750(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1001977F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100190E74(v16, a4 & 1);
    v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;

    return _objc_release_x1();
  }

  sub_1001AC5AC();
}

_OWORD *sub_1000818E4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D54C(a2, sub_10021C248, sub_10021C248);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B70();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191DC8(v14, a3 & 1);
    v9 = sub_10007D54C(a2, sub_10021C248, sub_10021C248);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v9);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {

    return sub_1001AC5A0();
  }
}

_OWORD *sub_100081A60(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D5E8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B84();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1001920A4(v14, a3 & 1);
    v9 = sub_10007D5E8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v9);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {

    return sub_1001AC5A0();
  }
}

_OWORD *sub_100081B8C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D4B0(a2, sub_10021DF14, sub_10007F274);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B98();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1001924A4(v14, a3 & 1);
    v9 = sub_10007D4B0(a2, sub_10021DF14, sub_10007F274);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    v19 = (*(*v4 + 56) + 32 * v9);
    sub_100002A00(v19);

    return sub_100085188(a1, v19);
  }

  else
  {

    return sub_1001AC5A0();
  }
}

void sub_100081D08(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100195AC4();
    *v5 = v11;
  }

  if (a2 < 0 || 1 << *(v11 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v11 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v11 + 36) == a3)
  {
    v12 = *(v11 + 48) + 40 * a2;
    v19 = *v12;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = *(v12 + 32);
    v16 = *(v12 + 33);
    v17 = *(v11 + 56) + 16 * a2;
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    *a1 = v18;
    *(a1 + 8) = v17;
    sub_100192D78(a2, v11);
    *v5 = v11;
    *a4 = v19;
    *(a4 + 16) = v13;
    *(a4 + 24) = v14;
    *(a4 + 32) = v15;
    *(a4 + 33) = v16;
    return;
  }

LABEL_10:
  __break(1u);
}

unint64_t sub_100081E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&unk_10059B110, &qword_100480EA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    while (1)
    {
      v19 = v1;
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v8 = v4[3];
      v9 = v4[4];
      v10 = v4[5];
      v11 = *(v4 + 2);
      v20 = *(v4 + 1);

      result = sub_100041DE8(v5 | (v6 << 8) | (v7 << 16) | (v8 << 24) | (v9 << 32) | (v10 << 40));
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 6 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v14[4] = v9;
      v14[5] = v10;
      v15 = (v3[7] + 16 * result);
      *v15 = v20;
      v15[1] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      v4 += 24;
      v1 = v19 - 1;
      if (v19 == 1)
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

unint64_t sub_100081F84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058BAA8, &qword_100480DF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 28)
    {
      v5 = *i;
      v6 = *(i + 4);
      v14 = *(i + 8);
      v7 = *(i + 24);
      result = sub_10007CCC8(*i);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 24 * result;
      *v10 = v6;
      *(v10 + 4) = v14;
      *(v10 + 20) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100082094(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058BAA0, &unk_100492270);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 32);
      v6 = *(i - 3);
      v7 = *(i - 4);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_10007CCC8(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v12 = v3[7] + 32 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
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

unint64_t sub_1000821A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058BAD8, &qword_100480E20);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012400(v4, &v11, &qword_10058BAE0, &qword_100480E28);
      v5 = v11;
      result = sub_10007CFD0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100085188(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1000822C8(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10005DC58(&qword_10058BAC8, &qword_100480E10);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012400(v9, v5, &qword_10058BAC0, &qword_100480E08);
      result = sub_10002A440(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
      result = sub_100038F84(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for NANPairedDeviceSharedAssociation);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000824E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&unk_10058BB60, &qword_100480E90);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100010254(v5, v6, &String.hash(into:), sub_100010314);
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

unint64_t sub_100082620(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BB50, &unk_100480E80);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10005DC58(&qword_10058BB58, &unk_100492320);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100012400(v9, v5, &qword_10058BB50, &unk_100480E80);
      v11 = *v5;
      result = sub_10007CD10(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
      result = sub_100038F84(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1000827F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_1005952E0, &unk_1004B1850);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012400(v4, &v13, &qword_10058BB40, &unk_100480E70);
      v5 = v13;
      v6 = v14;
      result = sub_100010254(v13, v14, &String.hash(into:), sub_100010314);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100085188(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100082950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&unk_10058BB30, &unk_100480E60);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10000AB0C(v7, v8);
      result = sub_100010254(v5, v6, &String.hash(into:), sub_100010314);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

unint64_t sub_100082AA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058BAF0, &qword_100480E30);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012400(v4, &v15, &qword_10058BAF8, &qword_100480E38);
      v5 = v15;
      v6 = v16;
      result = sub_100010254(v15, v16, &String.hash(into:), sub_100010314);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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

void *sub_100082BFC(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BB18, &qword_100480E48);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10005DC58(&qword_10058BB20, &qword_100480E50);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = *(v3 + 72);
  v25 = *(v2 + 48);
  v26 = v9;

  sub_100012400(a1 + v8, v5, &qword_10058BB18, &qword_100480E48);
  v10 = sub_10002A440(v5);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  v24 = type metadata accessor for UUID();
  v13 = *(v24 - 8);
  v14 = *(v13 + 32);
  v15 = *(v13 + 72);
  v16 = a1 + v26 + v8;
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v14(v7[6] + v15 * v12, v5, v24);
    result = memmove((v7[7] + 72 * v12), &v5[v25], 0x48uLL);
    v18 = v7[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v7[2] = v20;
    if (!--v6)
    {
      goto LABEL_8;
    }

    v21 = v16 + v26;
    sub_100012400(v16, v5, &qword_10058BB18, &qword_100480E48);
    v12 = sub_10002A440(v5);
    v16 = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100082E50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10005DC58(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100010254(v7, v8, &String.hash(into:), sub_100010314);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_100082F74(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BAB0, &qword_100480DF8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10005DC58(&qword_10058BAB8, &qword_100480E00);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012400(v9, v5, &qword_10058BAB0, &qword_100480DF8);
      result = sub_10007CD94(*v5 | (*(v5 + 2) << 16) | (*(v5 + 3) << 24));
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] - result + 8 * result;
      v15 = v5[2];
      v16 = *(v5 + 6);
      *v14 = *v5;
      *(v14 + 4) = v15;
      *(v14 + 6) = v16;
      v17 = v7[7];
      v18 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
      result = sub_100038F84(v5 + v8, v17 + *(*(v18 - 8) + 72) * v13, type metadata accessor for NANInternetSharingStatistics.Requester);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1000831D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_10005DC58(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
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

unint64_t sub_1000832AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058BA88, &qword_100480DD0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1000501E0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_10008338C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10005DC58(&qword_10058BA68, &unk_100480DB0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_100010254(v4, v5, &Character.hash(into:), sub_100010314);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 24;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = sub_100010254(v4, v17, &Character.hash(into:), sub_100010314);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1000835CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2)
  {

    sub_1000124C8(a6, a7);
  }
}

void sub_10008364C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_100083690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_100083834(uint64_t a1)
{
  v2 = type metadata accessor for DNSRecords.SRV(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100083890(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_10058B750, &unk_100480AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100083900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2)
  {

    sub_10000AB0C(a6, a7);
  }
}

uint64_t sub_100083B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DNSRecords.SRV(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100083C18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100083C60(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100083CC0(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100083D78(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_100083E58(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100083E58(uint64_t a1)
{
  if (!qword_10058B990)
  {
    type metadata accessor for DNSRecords.SRV(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10058B990);
    }
  }
}

void sub_100083EB8(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_100083E58(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for RadioResources.SymbolicChannel(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100083FC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10008400C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100084060()
{
  result = qword_10058BA30;
  if (!qword_10058BA30)
  {
    result = swift_getWitnessTable(byte_100480D18, &type metadata for BonjourBrowser.DiscoveredPeer, v0, v1);
    atomic_store(result, &qword_10058BA30);
  }

  return result;
}

unint64_t sub_1000840B4()
{
  result = qword_100599470;
  if (!qword_100599470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100599470);
  }

  return result;
}

uint64_t sub_100084100(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v6 = 1 << *(v3 + 32);
  if (result == v6)
  {
    return 0;
  }

  v29 = v3 + 72;
  v7 = *(v3 + 36);
  v30 = v4;
  v31 = v3;
  while ((result & 0x8000000000000000) == 0 && result < v6)
  {
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_23;
    }

    v33 = 1 << result;
    v34 = result >> 6;
    v47 = v7;
    v9 = *(v3 + 56);
    v10 = *(v3 + 48) + 40 * result;
    v12 = *v10;
    v11 = *(v10 + 8);
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    v15 = *(v10 + 32);
    v35 = *(v10 + 33);
    v16 = v9 + 16 * result;
    v17 = *v16;
    v18 = *(v16 + 8);
    v36 = result;
    v37[0] = v12;
    v37[1] = v11;
    v37[2] = v14;
    v37[3] = v13;
    v38 = v15;
    v39 = v35;
    v40 = v17;
    v41 = v18;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v19 = v17;
    sub_100016290(v37, &qword_10058BA60, &qword_100480DA8);
    v42[0] = v12;
    v42[1] = v11;
    v42[2] = v14;
    v42[3] = v13;
    v43 = v15;
    v44 = v35;
    v45 = v19;
    v46 = v18;
    if ([v19 publishID] == a2)
    {
      sub_1000840B4();
      v20 = [v19 publisherAddress];
      v21 = static NSObject.== infix(_:_:)();

      sub_100016290(v42, &qword_10058BA60, &qword_100480DA8);
      if (v21)
      {
        return v36;
      }
    }

    else
    {
      sub_100016290(v42, &qword_10058BA60, &qword_100480DA8);
    }

    v3 = v31;
    v8 = 1 << *(v31 + 32);
    result = v36;
    if (v36 >= v8)
    {
      goto LABEL_24;
    }

    v4 = v30;
    v22 = *(v30 + 8 * v34);
    if ((v22 & v33) == 0)
    {
      goto LABEL_25;
    }

    if (v47 != *(v31 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v36 & 0x3F));
    if (v23)
    {
      v8 = __clz(__rbit64(v23)) | v36 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v34 << 6;
      v25 = v34 + 1;
      v26 = (v29 + 8 * v34);
      while (v25 < (v8 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          sub_10002BEB8(v36, v47, 0);
          v8 = __clz(__rbit64(v27)) + v24;
          goto LABEL_5;
        }
      }

      sub_10002BEB8(v36, v47, 0);
    }

LABEL_5:
    v7 = *(v31 + 36);
    v6 = 1 << *(v31 + 32);
    result = v8;
    if (v8 == v6)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100084414()
{
  swift_beginAccess();

  sub_1000792EC(v0);
  v2 = v1;

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 40);
    while (v4 < *(v2 + 16))
    {
      ++v4;
      v6 = *(v5 - 8);
      v7 = *v5;
      sub_100079A0C(v6, v7);

      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1000844E4()
{
  v1 = v0;
  sub_10005DC58(&unk_10058B750, &unk_100480AB0);
  __chkstk_darwin();
  v105 = &v94[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v4 = &v94[-v3];
  v5 = type metadata accessor for DNSRecords.SRV(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v94[-v9];
  __chkstk_darwin();
  v12 = &v94[-v11];
  v13 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_srv;
  swift_beginAccess();
  v103 = v13;
  sub_100012400(&v1[v13], v4, &unk_10058B750, &unk_100480AB0);
  v104 = v6;
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100016290(v4, &unk_10058B750, &unk_100480AB0);
  }

  else
  {
    sub_100038F84(v4, v12, type metadata accessor for DNSRecords.SRV);
    sub_100083B68(v12, v10);
    sub_100083B68(v12, v8);
    v14 = v1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *&v116[0] = v100;
      *v17 = 136315650;
      v18 = &v14[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service];
      v99 = v16;
      v19 = *&v14[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service];
      v20 = *&v14[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 8];
      v102 = v5;
      v101 = v14;
      v22 = *&v14[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 16];
      v21 = *&v14[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 24];
      v23 = v18[32];
      *&v112 = v19;
      *(&v112 + 1) = v20;
      swift_bridgeObjectRetain_n();

      v98 = v15;
      v24._countAndFlagsBits = 46;
      v24._object = 0xE100000000000000;
      String.append(_:)(v24);
      v108._countAndFlagsBits = v22;
      v108._object = v21;

      v25._countAndFlagsBits = 24366;
      v25._object = 0xE200000000000000;
      String.append(_:)(v25);
      if (v23)
      {
        v26 = 7365749;
      }

      else
      {
        v26 = 7365492;
      }

      v27 = 0xE300000000000000;
      String.append(_:)(*&v26);

      v28._countAndFlagsBits = 46;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29._countAndFlagsBits = 0x6C61636F6CLL;
      v29._object = 0xE500000000000000;
      String.append(_:)(v29);
      String.append(_:)(v108);

      v5 = v102;

      v30 = sub_100002320(v112, *(&v112 + 1), v116);

      *(v17 + 4) = v30;
      *(v17 + 12) = 2080;
      v31 = &v10[*(v5 + 24)];
      v32 = *v31;
      v33 = v31[1];

      sub_100083834(v10);
      v34 = sub_100002320(v32, v33, v116);
      v14 = v101;

      *(v17 + 14) = v34;
      *(v17 + 22) = 512;
      LOWORD(v34) = NWEndpoint.Port.rawValue.getter();
      sub_100083834(v8);
      *(v17 + 24) = v34;
      v35 = v98;
      _os_log_impl(&_mh_execute_header, v98, v99, "Removing SRV for %s %s:%hu", v17, 0x1Au);
      swift_arrayDestroy();
    }

    else
    {
      sub_100083834(v8);

      sub_100083834(v10);
    }

    v36 = *&v14[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_delegate];
    if (v36)
    {
      v37 = *(v12 + 1);
      v116[0] = *v12;
      v116[1] = v37;
      v117 = *(v12 + 16);
      swift_unknownObjectRetain();
      v38 = sub_100171BB4(32);
      v40 = v39;
      v41.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000124C8(v38, v40);
      v42 = DNSRecords.SRV.valueData.getter();
      if (v43 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        v45 = v42;
        v46 = v5;
        v47 = v43;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v48 = v47;
        v5 = v46;
        sub_100017554(v45, v48);
      }

      [v36 handleEventType:1 keyData:v41.super.isa valueData:isa];
      swift_unknownObjectRelease();
    }

    sub_100083834(v12);
  }

  if (v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_providedAAAA] == 1)
  {
    v102 = v5;
    v49 = *&v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 16];
    v112 = *&v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa];
    v113 = v49;
    v50 = *&v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 48];
    v114 = *&v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 32];
    v115 = v50;
    v51 = v113;
    if (v113)
    {
      LODWORD(v100) = v112;
      v52 = *(&v112 + 1);
      v99 = BYTE8(v113);
      v53 = *(&v114 + 1);
      v101 = v114;
      v54 = v1;
      sub_100012400(&v112, &v108, &qword_10058BA48, &qword_100480D98);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v98 = v53;
        v58 = v57;
        v96 = v57;
        v97 = swift_slowAlloc();
        v106 = v97;
        *v58 = 136315138;
        v59 = *&v54[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 8];
        v60 = *&v54[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 16];
        v61 = *&v54[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 24];
        v62 = v52;
        v63 = v54[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service + 32];
        v108._countAndFlagsBits = *&v54[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_service];
        v108._object = v59;
        swift_bridgeObjectRetain_n();

        v95 = v56;
        v64._countAndFlagsBits = 46;
        v64._object = 0xE100000000000000;
        String.append(_:)(v64);
        v107._countAndFlagsBits = v60;
        v107._object = v61;

        v65._countAndFlagsBits = 24366;
        v65._object = 0xE200000000000000;
        String.append(_:)(v65);
        v66 = v63 == 0;
        v52 = v62;
        if (v66)
        {
          v67 = 7365492;
        }

        else
        {
          v67 = 7365749;
        }

        v68 = 0xE300000000000000;
        String.append(_:)(*&v67);

        v69._countAndFlagsBits = 46;
        v69._object = 0xE100000000000000;
        String.append(_:)(v69);
        v70._countAndFlagsBits = 0x6C61636F6CLL;
        v70._object = 0xE500000000000000;
        String.append(_:)(v70);
        String.append(_:)(v107);

        v71 = sub_100002320(v108._countAndFlagsBits, v108._object, &v106);

        v72 = v96;
        *(v96 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v55, v95, "Removing AAAA for %s", v72, 0xCu);
        sub_100002A00(v97);

        v53 = v98;
      }

      v73 = *&v54[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_delegate];
      if (v73)
      {
        v107 = xmmword_100480A90;
        swift_unknownObjectRetain();
        sub_100179C20(v52, v51, &v107._countAndFlagsBits);
        v5 = v102;
        v74 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
        v110 = v74;
        v75 = sub_1000850C8();
        v111 = v75;
        LOBYTE(v108._countAndFlagsBits) = -64;
        LOBYTE(v106) = *sub_100029B34(&v108, v74);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_100002A00(&v108);
        v110 = v74;
        v111 = v75;
        LOBYTE(v108._countAndFlagsBits) = 17;
        LOBYTE(v106) = *sub_100029B34(&v108, v74);
        Data._Representation.replaceSubrange(_:with:count:)();
        sub_100002A00(&v108);
        sub_100179AB0(v100, &v107._countAndFlagsBits, v99);
        v76 = v107;
        v77 = Data._bridgeToObjectiveC()().super.isa;
        sub_1000124C8(v76._countAndFlagsBits, v76._object);
        v108._object = v53;
        v108._countAndFlagsBits = v101;
        v78 = sub_10004F3B0(&v108, &v109);
        v80 = v79;
        sub_100016290(&v112, &qword_10058BA48, &qword_100480D98);
        v81 = Data._bridgeToObjectiveC()().super.isa;
        sub_1000124C8(v78, v80);
        [v73 handleEventType:1 keyData:v77 valueData:v81];

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      sub_100016290(&v112, &qword_10058BA48, &qword_100480D98);
    }

    v5 = v102;
  }

LABEL_26:
  v82 = &v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa];
  v83 = *&v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 16];
  v112 = *&v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa];
  v113 = v83;
  v84 = *&v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 48];
  v114 = *&v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_aaaa + 32];
  v115 = v84;
  *v82 = 0u;
  *(v82 + 1) = 0u;
  *(v82 + 2) = 0u;
  *(v82 + 3) = 0u;
  sub_100016290(&v112, &qword_10058BA48, &qword_100480D98);
  v85 = v105;
  (*(v104 + 56))(v105, 1, 1, v5);
  v86 = v103;
  swift_beginAccess();
  sub_100083890(v85, &v1[v86]);
  swift_endAccess();
  v87 = &v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_terminationHandler];
  v88 = *&v1[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_terminationHandler];
  if (v88)
  {
    v89 = v87[1];

    v88(v90);
    sub_100010520(v88, v89);
    v91 = *v87;
  }

  else
  {
    v91 = 0;
  }

  v92 = v87[1];
  *v87 = 0;
  v87[1] = 0;
  return sub_100010520(v91, v92);
}

unint64_t sub_1000850C8()
{
  result = qword_10058BA58;
  if (!qword_10058BA58)
  {
    v3 = sub_10005DD04(&qword_10058BA50, &qword_100480DA0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> CollectionOfOne<A>, v3, v0, v1);
    atomic_store(result, &qword_10058BA58);
  }

  return result;
}

void sub_10008512C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
  }
}

uint64_t sub_100085170(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10002BEB8(result, a2, a3 & 1);
  }

  return result;
}

_OWORD *sub_100085188(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100085198(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000851E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t OUI.hash(into:)(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = a2 >> 8;
  v4 = HIWORD(a2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100480F30;
  *(v5 + 32) = v2;
  *(v5 + 33) = v3;
  *(v5 + 34) = v4;
  v6 = sub_10002D874(v5);
  v8 = v7;

  Data.hash(into:)();

  return sub_1000124C8(v6, v8);
}

uint64_t OUI.description.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = HIWORD(a1);
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v33 = v4;
  v34 = v5;
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v8 = swift_allocObject();
  v35 = xmmword_100480F30;
  *(v8 + 16) = xmmword_100480F30;
  *(v8 + 32) = v1;
  *(v8 + 33) = v2;
  v9 = v3;
  *(v8 + 34) = v3;
  v10 = sub_10002D874(v8);
  v12 = v11;

  v13 = sub_10002D874(&off_100555E38);
  v15 = v14;
  v16 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v10, v12, v13, v14);
  sub_1000124C8(v13, v15);
  sub_1000124C8(v10, v12);
  if (v16)
  {
    return 0x696C6C4169466957;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v35;
  *(v18 + 32) = v1;
  *(v18 + 33) = v2;
  *(v18 + 34) = v9;
  v19 = sub_10002D874(v18);
  v21 = v20;

  sub_10000AB0C(v19, v21);
  v31 = v21;
  v32 = v19;
  Data.Iterator.init(_:at:)();
  sub_100085C04();
  v22 = v33;
  dispatch thunk of IteratorProtocol.next()();
  if (v39)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v23 = 0xE000000000000000;
    v35 = xmmword_100480F40;
    do
    {
      v24 = v38;
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v25 = swift_allocObject();
      *(v25 + 16) = v35;
      *(v25 + 56) = &type metadata for UInt8;
      *(v25 + 64) = &protocol witness table for UInt8;
      *(v25 + 32) = v24;
      v26 = String.init(format:_:)();
      v28 = v27;
      v36 = v17;
      v37 = v23;

      v29._countAndFlagsBits = v26;
      v29._object = v28;
      String.append(_:)(v29);

      v17 = v36;
      v23 = v37;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v39 != 1);
  }

  sub_1000124C8(v32, v31);
  (*(v34 + 8))(v7, v22);
  return v17;
}

Swift::Int OUI.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = HIWORD(a1);
  Hasher.init(_seed:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100480F30;
  *(v4 + 32) = v1;
  *(v4 + 33) = v2;
  *(v4 + 34) = v3;
  v5 = sub_10002D874(v4);
  v7 = v6;

  Data.hash(into:)();
  sub_1000124C8(v5, v7);
  return Hasher._finalize()();
}

Swift::Int sub_1000857B4()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100480F30;
  *(v3 + 32) = v1;
  *(v3 + 34) = v2;
  v4 = sub_10002D874(v3);
  v6 = v5;

  Data.hash(into:)();
  sub_1000124C8(v4, v6);
  return Hasher._finalize()();
}

uint64_t sub_100085864(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100480F30;
  *(v4 + 32) = v2;
  *(v4 + 34) = v3;
  v5 = sub_10002D874(v4);
  v7 = v6;

  Data.hash(into:)();

  return sub_1000124C8(v5, v7);
}

Swift::Int sub_100085908(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  Hasher.init(_seed:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100480F30;
  *(v4 + 32) = v2;
  *(v4 + 34) = v3;
  v5 = sub_10002D874(v4);
  v7 = v6;

  Data.hash(into:)();
  sub_1000124C8(v5, v7);
  return Hasher._finalize()();
}

uint64_t OUI.encode(to:)(void *a1, uint64_t a2)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v4, v5);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v4);
}

uint64_t sub_100085B00(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v1)
  {
    sub_100031694(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v3);
}

unint64_t sub_100085C04()
{
  result = qword_10058C7C0;
  if (!qword_10058C7C0)
  {
    v3 = type metadata accessor for Data.Iterator();
    result = swift_getWitnessTable(&protocol conformance descriptor for Data.Iterator, v3, v0, v1);
    atomic_store(result, &qword_10058C7C0);
  }

  return result;
}

unint64_t sub_100085C60()
{
  result = qword_10058BB78;
  if (!qword_10058BB78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OUI, &type metadata for OUI, v0, v1);
    atomic_store(result, &qword_10058BB78);
  }

  return result;
}

uint64_t sub_100085CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v14[1] = a1;
  v14[3] = a4;
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v5 = *(a2 - 8);
  __chkstk_darwin();
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v14 - v8;
  __chkstk_darwin();
  v11 = v14 - v10;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v9, a2);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  dispatch thunk of static BinaryInteger.~ prefix(_:)();
  dispatch thunk of static BinaryInteger.& infix(_:_:)();
  v12(v7, a2);
  v12(v9, a2);
  return (v12)(v11, a2);
}

uint64_t FixedWidthInteger.fourByteAligned.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *(a1 - 8);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  sub_100085CC4(v7, a1, a3);
  return (*(v5 + 8))(v7, a1);
}

uint64_t static FixedWidthInteger.random.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v23 - v9;
  v11 = *(a1 - 8);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v23 - v14;
  v16 = type metadata accessor for ClosedRange();
  v26 = *(v16 - 8);
  v27 = v16;
  __chkstk_darwin();
  v25 = &v23 - v17;
  dispatch thunk of static FixedWidthInteger.min.getter();
  v29 = a2;
  dispatch thunk of static FixedWidthInteger.max.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v19 = *(v11 + 32);
    v19(v10, v15, a1);
    v19(&v10[*(TupleTypeMetadata2 + 48)], v13, a1);
    (*(v6 + 16))(v8, v10, TupleTypeMetadata2);
    v20 = *(TupleTypeMetadata2 + 48);
    v21 = v25;
    v19(v25, v8, a1);
    v24 = *(v11 + 8);
    v24(&v8[v20], a1);
    (*(v6 + 32))(v8, v10, TupleTypeMetadata2);
    v22 = v27;
    v19(&v21[*(v27 + 36)], &v8[*(TupleTypeMetadata2 + 48)], a1);
    v24(v8, a1);
    static FixedWidthInteger.random(in:)();
    return (*(v26 + 8))(v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void FixedWidthInteger.init(bitOffsets:)(uint64_t a1)
{
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(a1 + 16))
    {
      v7 = v6 + 1;
      FixedWidthInteger.set(bitOffset:)(*(a1 + 32 + 8 * v6));
      v6 = v7;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

Swift::Void __swiftcall FixedWidthInteger.set(bitOffset:)(Swift::UInt bitOffset)
{
  v12 = bitOffset;
  v2 = v1;
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = v12;
  v9 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  if (v9 < 1 || v9 <= v8)
  {
    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v13 = v8;
    sub_10008674C();
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v10 = *(v3 + 8);
    v10(v5, v2);
    dispatch thunk of static BinaryInteger.|= infix(_:_:)();
    v10(v7, v2);
  }
}

unint64_t sub_10008674C()
{
  result = qword_10058BB80;
  if (!qword_10058BB80)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt, &type metadata for UInt, v0, v1);
    atomic_store(result, &qword_10058BB80);
  }

  return result;
}

Swift::Void __swiftcall FixedWidthInteger.clear(bitOffset:)(Swift::UInt bitOffset)
{
  v3 = v1;
  v15 = bitOffset;
  v14[1] = *(v2 + 8);
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v14 - v7;
  __chkstk_darwin();
  v10 = v14 - v9;
  v11 = v15;
  v12 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  if (v12 < 1 || v12 <= v11)
  {
    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v16 = v11;
    sub_10008674C();
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v13 = *(v4 + 8);
    v13(v6, v3);
    dispatch thunk of static BinaryInteger.~ prefix(_:)();
    v13(v8, v3);
    dispatch thunk of static BinaryInteger.&= infix(_:_:)();
    v13(v10, v3);
  }
}

unint64_t FixedWidthInteger.bytesRequiredToRepresentBitOffset.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v4 = *(a1 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v20 - v8;
  (*(v4 + 16))(&v20 - v8, v2, a1, v7);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_14;
  }

  v21 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v10 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v11 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v10)
  {
    if (v11 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v14 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v4 + 8))(v6, a1);
      if (v14)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      goto LABEL_13;
    }

LABEL_8:
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v12 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v4 + 8))(v6, a1);
    if (v12)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  if (v11 < 64)
  {
LABEL_13:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v16 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v15 & 1) == 0)
    {
      break;
    }

    if (v16 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v17 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v4 + 8))(v6, a1);
    if (v17)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v16 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v18 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (*(v4 + 8))(v9, a1);
  v19 = v18 + 7;
  if (__OFADD__(v18, 7))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v19 < 0)
  {
    v19 = v18 + 14;
  }

  return v19 & 0xFFFFFFFFFFFFFFF8;
}

unint64_t sub_100086E78()
{
  result = qword_100597CC0;
  if (!qword_100597CC0)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int, v0, v1);
    atomic_store(result, &qword_100597CC0);
  }

  return result;
}

uint64_t FixedWidthInteger.retryText.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v3 = *(a1 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v7 = 0x7972746572;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  v8 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v9 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v8 & 1) == 0)
  {
    v7 = 0x7972746572;
    if (v9 < 64)
    {
LABEL_3:
      if (dispatch thunk of BinaryInteger._lowWord.getter() != 1)
      {
LABEL_16:
        v13 = 0xE700000000000000;
        v7 = 0x73656972746572;
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_10:
    v17 = 1;
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v3 + 8))(v5, a1);
    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v9 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v12 = dispatch thunk of static Comparable.>= infix(_:_:)();
    (*(v3 + 8))(v5, a1);
    if ((v12 & 1) == 0 || dispatch thunk of BinaryInteger._lowWord.getter() != 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = 1;
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v3 + 8))(v5, a1);
    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v7 = 0x7972746572;
LABEL_15:
  v13 = 0xE500000000000000;
LABEL_17:
  v14._countAndFlagsBits = v7;
  v14._object = v13;
  String.append(_:)(v14);

  return v18;
}

uint64_t UnsafeMutablePointer<A>.set<A>(bit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42[3] = *(*(*(a4 + 8) + 24) + 16);
  v42[2] = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v42[1] = v42 - v7;
  v8 = *(a3 - 8);
  __chkstk_darwin();
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v42 - v11;
  v12 = __chkstk_darwin();
  v14 = v42 - v13;
  v15 = *(v8 + 16);
  v45 = a1;
  v15(v42 - v13, a1, a3, v12);
  v16 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v44 = a2;
  if ((v16 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_14;
  }

  v46 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v17 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v18 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v17)
  {
    if (v18 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v22 = v43;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v23 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v8 + 8))(v22, a3);
      if (v23)
      {
        goto LABEL_52;
      }

      goto LABEL_13;
    }

LABEL_8:
    sub_100086E78();
    v19 = v43;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v20 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v8 + 8))(v19, a3);
    if (v20)
    {
      goto LABEL_52;
    }

    goto LABEL_14;
  }

  if (v18 < 64)
  {
LABEL_13:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v25 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v24 & 1) == 0)
    {
      break;
    }

    if (v25 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_100086E78();
    v26 = v43;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v27 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v8 + 8))(v26, a3);
    if (v27)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v25 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v28 = dispatch thunk of BinaryInteger._lowWord.getter();
  v29 = *(v8 + 8);
  v29(v14, a3);
  (v15)(v10, v45, a3);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v46 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_36;
      }

LABEL_31:
      sub_100086E78();
      v32 = v43;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v33 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v29)(v32, a3);
      if (v33)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v30 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v31 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v30)
      {
        if (v31 > 64)
        {
          goto LABEL_31;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v34 = v43;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v35 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v29)(v34, a3);
        if (v35)
        {
          goto LABEL_53;
        }

LABEL_36:
        dispatch thunk of BinaryInteger._lowWord.getter();
      }

      else if (v31 < 64)
      {
        goto LABEL_36;
      }
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v36 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v37 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v36)
    {
      if (v37 < 65)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v37 >= 64)
    {
LABEL_40:
      sub_100086E78();
      v38 = v43;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v39 = dispatch thunk of static Comparable.< infix(_:_:)();
      v29(v38, a3);
      if ((v39 & 1) == 0)
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_42:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_47:
  v40 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v29)(v10, a3);
  v41 = v40 & 7;
  if (v40 <= 0)
  {
    v41 = -(-v40 & 7);
  }

  if ((v41 & 0x8000000000000000) == 0)
  {
    *(v44 + v28 / 8) |= 1 << v41;
    return result;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t UnsafeMutablePointer<A>.clear<A>(bit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42[3] = *(*(*(a4 + 8) + 24) + 16);
  v42[2] = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v42[1] = v42 - v7;
  v8 = *(a3 - 8);
  __chkstk_darwin();
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v42 - v11;
  v12 = __chkstk_darwin();
  v14 = v42 - v13;
  v15 = *(v8 + 16);
  v45 = a1;
  v15(v42 - v13, a1, a3, v12);
  v16 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v44 = a2;
  if ((v16 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_14;
  }

  v46 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v17 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v18 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v17)
  {
    if (v18 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v22 = v43;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v23 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v8 + 8))(v22, a3);
      if (v23)
      {
        goto LABEL_52;
      }

      goto LABEL_13;
    }

LABEL_8:
    sub_100086E78();
    v19 = v43;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v20 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v8 + 8))(v19, a3);
    if (v20)
    {
      goto LABEL_52;
    }

    goto LABEL_14;
  }

  if (v18 < 64)
  {
LABEL_13:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v25 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v24 & 1) == 0)
    {
      break;
    }

    if (v25 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_100086E78();
    v26 = v43;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v27 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v8 + 8))(v26, a3);
    if (v27)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v25 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v28 = dispatch thunk of BinaryInteger._lowWord.getter();
  v29 = *(v8 + 8);
  v29(v14, a3);
  (v15)(v10, v45, a3);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v46 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_36;
      }

LABEL_31:
      sub_100086E78();
      v32 = v43;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v33 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v29)(v32, a3);
      if (v33)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v30 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v31 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v30)
      {
        if (v31 > 64)
        {
          goto LABEL_31;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v34 = v43;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v35 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v29)(v34, a3);
        if (v35)
        {
          goto LABEL_53;
        }

LABEL_36:
        dispatch thunk of BinaryInteger._lowWord.getter();
      }

      else if (v31 < 64)
      {
        goto LABEL_36;
      }
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v36 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v37 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v36)
    {
      if (v37 < 65)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v37 >= 64)
    {
LABEL_40:
      sub_100086E78();
      v38 = v43;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v39 = dispatch thunk of static Comparable.< infix(_:_:)();
      v29(v38, a3);
      if ((v39 & 1) == 0)
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_42:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_47:
  v40 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v29)(v10, a3);
  v41 = v40 & 7;
  if (v40 <= 0)
  {
    v41 = -(-v40 & 7);
  }

  if ((v41 & 0x8000000000000000) == 0)
  {
    *(v44 + v28 / 8) &= (-1 << v41) - 1;
    return result;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t UnsafePointer<A>.contains<A>(bit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42[3] = *(*(*(a4 + 8) + 24) + 16);
  v42[1] = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v42[2] = v42 - v7;
  v8 = *(a3 - 8);
  __chkstk_darwin();
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v42 - v11;
  v12 = __chkstk_darwin();
  v14 = v42 - v13;
  v15 = *(v8 + 16);
  v45 = a1;
  v15(v42 - v13, a1, a3, v12);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v46 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v16 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v17 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v16)
    {
      if (v17 > 64)
      {
LABEL_8:
        sub_100086E78();
        v18 = v43;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v19 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v8 + 8))(v18, a3);
        if ((v19 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v21 = v43;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v22 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v8 + 8))(v21, a3);
      if (v22)
      {
        goto LABEL_53;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v17 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v24 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v23 & 1) == 0)
    {
      break;
    }

    if (v24 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_100086E78();
    v25 = v43;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v26 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v8 + 8))(v25, a3);
    if (v26)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v24 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v44 = a2;
  v27 = dispatch thunk of BinaryInteger._lowWord.getter();
  v28 = *(v8 + 8);
  v28(v14, a3);
  (v15)(v10, v45, a3);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v46 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
LABEL_36:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_37;
      }

LABEL_31:
      sub_100086E78();
      v31 = v43;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v32 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v28)(v31, a3);
      if (v32)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v29 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v30 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v29)
      {
        if (v30 > 64)
        {
          goto LABEL_31;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v33 = v43;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v34 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v28)(v33, a3);
        if ((v34 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_54:
        __break(1u);
        return result;
      }

      if (v30 < 64)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_37:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
    v35 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v36 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v35)
    {
      if (v36 < 65)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v36 >= 64)
    {
LABEL_40:
      sub_100086E78();
      v37 = v43;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v38 = dispatch thunk of static Comparable.< infix(_:_:)();
      v28(v37, a3);
      if ((v38 & 1) == 0)
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_42:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_47:
  v39 = dispatch thunk of BinaryInteger._lowWord.getter();
  v28(v10, a3);
  v40 = v39 & 7;
  if (v39 <= 0)
  {
    v40 = -(-v39 & 7);
  }

  if (v40 >= 0)
  {
    v41 = 1 << v40;
  }

  else
  {
    v41 = 0;
  }

  return (v41 & (*(v44 + v27 / 8) ^ 0xFF)) == 0;
}

uint64_t NANServiceConfiguration.description.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v16 = a1;
  swift_getMetatypeMetadata();
  v8 = String.init<A>(describing:)();
  v10 = v9;
  v16 = 0;
  v17 = 0xE000000000000000;
  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  (*(a2 + 56))(a1, a2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v12 = v16;
  v13 = v17;
  v16 = v8;
  v17 = v10;

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  return v16;
}

void NANService.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  (*(a3 + 64))(a2, a3, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  Hasher._combine(_:)(v11);
}

BOOL static NANService.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v17 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v17 - v11;
  v19 = *(a4 + 64);
  v19(a3, a4, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 40);
  LOBYTE(v18) = v14(AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = v18;
  v15 = *(v7 + 8);
  v15(v12, AssociatedTypeWitness);
  (v19)(v17, a4);
  LOBYTE(a4) = v14(AssociatedTypeWitness, AssociatedConformanceWitness);
  v15(v9, AssociatedTypeWitness);
  return v18 == a4;
}

uint64_t NANPeerServiceIdentifier.peerAddress.setter(uint64_t result)
{
  *(v1 + 1) = result;
  *(v1 + 3) = BYTE2(result);
  *(v1 + 4) = BYTE3(result);
  *(v1 + 5) = BYTE4(result);
  *(v1 + 6) = BYTE5(result);
  return result;
}

uint64_t NANPeerServiceIdentifier.description.getter(unint64_t a1)
{
  v5 = WiFiAddress.description.getter((a1 >> 8) & 0xFFFFFFFFFFFFLL);
  v1._countAndFlagsBits = 91;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 93;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return v5;
}

uint64_t sub_100088EF4()
{
  if (*v0)
  {
    return 0x7264644172656570;
  }

  else
  {
    return 0x65636E6174736E69;
  }
}

uint64_t sub_100088F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6174736E69 && a2 == 0xEA00000000004449;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7264644172656570 && a2 == 0xEB00000000737365)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100089024(uint64_t a1)
{
  v2 = sub_10008A43C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089060(uint64_t a1)
{
  v2 = sub_10008A43C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static NANPeerServiceIdentifier.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    return 0;
  }

  LOBYTE(v6) = BYTE1(a1);
  BYTE1(v6) = BYTE2(a1);
  BYTE2(v6) = BYTE3(a1);
  HIBYTE(v6) = BYTE4(a1);
  LOBYTE(v7) = BYTE5(a1);
  HIBYTE(v7) = BYTE6(a1);
  LOBYTE(v4) = BYTE1(a2);
  BYTE1(v4) = BYTE2(a2);
  BYTE2(v4) = BYTE3(a2);
  HIBYTE(v4) = BYTE4(a2);
  LOBYTE(v5) = BYTE5(a2);
  HIBYTE(v5) = BYTE6(a2);
  return v6 == v4 && v7 == v5;
}

uint64_t NANPeerServiceIdentifier.encode(to:)(void *a1, uint64_t a2)
{
  v5 = sub_10005DC58(&qword_10058BB88, &qword_100481090);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100029B34(a1, a1[3]);
  sub_10008A43C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[9] = BYTE1(a2);
    v10[10] = BYTE2(a2);
    v10[11] = BYTE3(a2);
    v10[12] = BYTE4(a2);
    v10[13] = BYTE5(a2);
    v10[14] = BYTE6(a2);
    v10[8] = 1;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NANPeerServiceIdentifier.hash(into:)(int a1, unint64_t a2)
{
  v2 = a2 >> 8;
  v3 = a2 >> 16;
  v4 = a2 >> 24;
  v5 = HIDWORD(a2);
  v6 = a2 >> 40;
  v7 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
}

Swift::Int NANPeerServiceIdentifier.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  v7 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

Swift::Int sub_10008947C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void sub_10008953C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

Swift::Int sub_1000895C8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

uint64_t sub_100089684()
{
  v5 = WiFiAddress.description.getter(*(v0 + 1) | (*(v0 + 3) << 16));
  v1._countAndFlagsBits = 91;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 93;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return v5;
}

unint64_t sub_100089714@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10008A594(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
    *(a1 + 3) = BYTE3(result);
    *(a1 + 4) = BYTE4(result);
    *(a1 + 5) = BYTE5(result);
    *(a1 + 6) = BYTE6(result);
  }

  return result;
}

BOOL sub_10008979C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 1) == *(a2 + 1) && *(a1 + 5) == *(a2 + 5);
}

BOOL static InternetSharingActivity.Role.__derived_enum_equals(_:_:)(__int16 a1, __int16 a2)
{
  if ((a1 & 0x100) == 0)
  {
    if ((a2 & 0x100) == 0)
    {
      return a1 == a2;
    }

    return 0;
  }

  return (a2 & 0x100) != 0;
}

void InternetSharingActivity.Role.hash(into:)(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    v2 = a2;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v2);
  }
}

Swift::Int InternetSharingActivity.Role.hashValue.getter(__int16 a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a1);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000898F4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void sub_100089960()
{
  if (v0[1])
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_1000899AC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v3)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

uint64_t sub_100089A14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = a1[1];
  result = a2[1];
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t InternetSharingActivity.init(role:active:)(__int16 a1, char a2)
{
  if (a2)
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFE00 | a1 & 0x100 | a1;
}

uint64_t static InternetSharingActivity.__derived_struct_equals(_:_:)(int a1, int a2)
{
  if ((a1 & 0x100) != 0)
  {
    if ((a2 & 0x100) == 0)
    {
      return 0;
    }

    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  result = 0;
  if ((a2 & 0x100) == 0 && a1 == a2)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return result;
}

void InternetSharingActivity.hash(into:)(uint64_t a1, int a2)
{
  if ((a2 & 0x100) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a2);
  }

  Hasher._combine(_:)(BYTE2(a2) & 1);
}

Swift::Int InternetSharingActivity.hashValue.getter(int a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a1);
  }

  Hasher._combine(_:)(BYTE2(a1) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100089B78()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100089BF8()
{
  v1 = v0[2];
  if (v0[1])
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    v2 = *v0;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v2);
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100089C58(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  if (v3)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v2);
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_100089CD4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2[1];
  if (a1[1])
  {
    if (!a2[1])
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return a1[2] ^ a2[2] ^ 1u;
}

BOOL MulticastServiceType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100555FA0, v2);

  return v3 != 0;
}

Swift::Int sub_100089D84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100089DF8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100089E4C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100555070, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t MulticastConfiguration.multicastAddress.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = WORD2(result);
  *(v1 + 6) = BYTE6(result) & 1;
  return result;
}

unint64_t MulticastConfiguration.init(apiMulticastConfiguration:)(void *a1)
{
  v2 = [a1 multicastAddress];
  if (v2)
  {
    v3 = WiFiMACAddress.wifiAddress.getter();

    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  v8 = v2 == 0;
  v5 = [a1 dynamicLinkRate];

  v6 = 0x100000000000000;
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | (v8 << 48) | v4;
}

void MulticastConfiguration.hash(into:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = a2 >> 40;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
    Hasher._combine(_:)(BYTE1(a2));
    Hasher._combine(_:)(BYTE2(a2));
    Hasher._combine(_:)(BYTE3(a2));
    Hasher._combine(_:)(BYTE4(a2));
  }

  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(HIBYTE(a2) & 1);
}

Swift::Int MulticastConfiguration.hashValue.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x1000000000000) != 0)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = a1 >> 40;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
    Hasher._combine(_:)(BYTE1(a1));
    Hasher._combine(_:)(BYTE2(a1));
    Hasher._combine(_:)(BYTE3(a1));
    Hasher._combine(_:)(BYTE4(a1));
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(HIBYTE(a1) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10008A208()
{
  v1 = 0x100000000000000;
  if (!*(v0 + 7))
  {
    v1 = 0;
  }

  return MulticastConfiguration.hashValue.getter(v1 | (*(v0 + 6) << 48) | *v0 | (*(v0 + 2) << 32));
}

void sub_10008A244()
{
  v1 = *(v0 + 7);
  if (*(v0 + 6))
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v3 = *(v0 + 2);
    v4 = *v0;
    v5 = *v0 | (*(v0 + 2) << 32);
    v6 = v5 >> 8;
    v7 = v5 >> 16;
    v8 = v5 >> 24;
    v2 = v3 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
    Hasher._combine(_:)(v6);
    Hasher._combine(_:)(v7);
    Hasher._combine(_:)(v8);
    Hasher._combine(_:)(v3);
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10008A2F4(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *v1;
  v4 = *(v1 + 6);
  v5 = *(v1 + 7);
  Hasher.init(_seed:)();
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v7 = v3 | (v2 << 32);
    v6 = BYTE5(v7);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v7);
    Hasher._combine(_:)(BYTE1(v7));
    Hasher._combine(_:)(BYTE2(v7));
    Hasher._combine(_:)(BYTE3(v7));
    Hasher._combine(_:)(BYTE4(v7));
  }

  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_10008A3D4(unsigned int *a1, unsigned int *a2)
{
  v2 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if (!*(a2 + 7))
  {
    v2 = 0;
  }

  return sub_10008A4E4(v3 | (*(a1 + 6) << 48) | *a1 | (*(a1 + 2) << 32), v2 | (*(a2 + 6) << 48) | *a2 | (*(a2 + 2) << 32));
}

unint64_t sub_10008A43C()
{
  result = qword_10058BB90;
  if (!qword_10058BB90)
  {
    result = swift_getWitnessTable(byte_10048160C, &type metadata for NANPeerServiceIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058BB90);
  }

  return result;
}

unint64_t sub_10008A490()
{
  result = qword_10058BB98;
  if (!qword_10058BB98)
  {
    result = swift_getWitnessTable("Q \n", &type metadata for WiFiAddress, v0, v1);
    atomic_store(result, &qword_10058BB98);
  }

  return result;
}

uint64_t sub_10008A4E4(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x1000000000000) != 0)
  {
    if ((a2 & 0x1000000000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((a2 & 0x1000000000000) != 0)
    {
      return 0;
    }

    LOBYTE(v5) = BYTE4(a1);
    HIBYTE(v5) = BYTE5(a1);
    LOBYTE(v4) = BYTE4(a2);
    HIBYTE(v4) = BYTE5(a2);
    if (a1 != a2 || v5 != v4)
    {
      return 0;
    }
  }

  return HIBYTE(a1) & 1 ^ ((a2 & 0x100000000000000) == 0);
}

unint64_t sub_10008A594(void *a1)
{
  v3 = sub_10005DC58(&qword_10058BBE8, &qword_100481660);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12[-v5];
  sub_100029B34(a1, a1[3]);
  sub_10008A43C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v14 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[8] = 1;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  v8 = v12[9];
  v9 = v12[10];
  v10 = v13;
  sub_100002A00(a1);
  return v7 | (v8 << 8) | (v9 << 16) | (v10 << 24);
}

unint64_t sub_10008A768()
{
  result = qword_10058BBA0;
  if (!qword_10058BBA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPeerServiceIdentifier, &type metadata for NANPeerServiceIdentifier, v0, v1);
    atomic_store(result, &qword_10058BBA0);
  }

  return result;
}

unint64_t sub_10008A7C0()
{
  result = qword_10058BBA8;
  if (!qword_10058BBA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InternetSharingActivity.Role, &type metadata for InternetSharingActivity.Role, v0, v1);
    atomic_store(result, &qword_10058BBA8);
  }

  return result;
}

unint64_t sub_10008A818()
{
  result = qword_10058BBB0;
  if (!qword_10058BBB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InternetSharingActivity, &type metadata for InternetSharingActivity, v0, v1);
    atomic_store(result, &qword_10058BBB0);
  }

  return result;
}

unint64_t sub_10008A870()
{
  result = qword_10058BBB8;
  if (!qword_10058BBB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MulticastServiceType, &type metadata for MulticastServiceType, v0, v1);
    atomic_store(result, &qword_10058BBB8);
  }

  return result;
}

unint64_t sub_10008A8C8()
{
  result = qword_10058BBC0;
  if (!qword_10058BBC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MulticastConfiguration, &type metadata for MulticastConfiguration, v0, v1);
    atomic_store(result, &qword_10058BBC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternetSharingActivity(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for InternetSharingActivity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANMapIDs(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for NANMapIDs(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_10008AB6C(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10008AB8C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for MulticastServiceType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}