void sub_1003F3ED0()
{
  sub_100005EF4();
  v2 = v1;
  type metadata accessor for UUID();
  sub_100007FEC();
  v80 = v4;
  v81 = v3;
  __chkstk_darwin(v3);
  sub_10000E4F4();
  v5 = type metadata accessor for Date();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007BAC();
  v78 = v9 - v10;
  v12 = __chkstk_darwin(v11);
  v79 = &v77 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v77 - v15;
  __chkstk_darwin(v14);
  v18 = &v77 - v17;
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v19)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v2 pseudonym];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  sub_1003CE928(v22, v24, v20, &selRef_setPseudonym_);
  v25 = [v2 publicKey];
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  sub_1003F7A2C(v26, v28, v20);
  v29 = sub_1003F7B90(v2, &selRef_privateKey);
  if (v30 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v32 = v29;
    v33 = v30;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(v32, v33);
  }

  [v20 setPrivateKey:isa];

  v34 = [v2 creationDate];
  if (v34)
  {
    v35 = v34;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v18, v16, v5);
    Date.timeIntervalSince1970.getter();
    [v20 setCreationDateEpochTime:?];
    (*(v7 + 8))(v18, v5);
  }

  v36 = [v2 expirationDate];
  if (v36)
  {
    v37 = v36;
    v38 = v78;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = v79;
    (*(v7 + 32))(v79, v38, v5);
    Date.timeIntervalSince1970.getter();
    [v20 setPseudonymExpirationDateEpochTime:?];
    (*(v7 + 8))(v39, v5);
  }

  v40 = [v2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = UUID.uuidString.getter();
  v43 = v42;
  (*(v80 + 8))(v0, v81);
  sub_1003CE928(v41, v43, v20, &selRef_setGroupUUIDString_);
  [v20 setIsActivated:{objc_msgSend(v2, "isActivated")}];
  v44 = [v2 originator];
  v45 = [v44 identifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = [v2 originator];
  [v46 revision];

  v47 = objc_allocWithZone(type metadata accessor for GeneratorDescriptor());
  sub_100006844();
  v51 = sub_1003DFB90(v48, v49, v50);
  v52 = [objc_opt_self() generatorDescriptorWithCSDConversationLinkGeneratorDescriptor:v51];

  [v20 setGeneratorDescriptor:v52];
  v53 = [v2 originator];
  v54 = [v53 handle];

  v55 = objc_opt_self();
  v56 = [v55 handleWithTUHandle:v54];

  [v20 setOriginatorHandle:v56];
  v57 = sub_1003F7AAC(v2);
  if (v57)
  {
    v58 = v57;
    v77 = v2;
    if ((v57 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_1002E932C();
      Set.Iterator.init(_cocoa:)();
      v58 = v84;
      v59 = v85;
      v60 = v86;
      v61 = v87;
      v62 = v88;
    }

    else
    {
      v61 = 0;
      v63 = -1 << *(v57 + 32);
      v59 = v57 + 56;
      v60 = ~v63;
      v64 = -v63;
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      else
      {
        v65 = -1;
      }

      v62 = v65 & *(v57 + 56);
    }

    v81 = v60;
    v66 = (v60 + 64) >> 6;
    if (v58 < 0)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v67 = v61;
      v68 = v62;
      v69 = v61;
      if (!v62)
      {
        break;
      }

LABEL_21:
      v70 = (v68 - 1) & v68;
      v71 = *(*(v58 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v68)))));
      if (!v71)
      {
LABEL_27:
        v74 = sub_10000D6CC();
        sub_10031E890(v74);
        v2 = v77;
        goto LABEL_28;
      }

      while (1)
      {
        v73 = [v55 handleWithTUHandle:{v71, v77}];
        [v20 addInvitedHandles:v73];

        v61 = v69;
        v62 = v70;
        if ((v58 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_23:
        v72 = __CocoaSet.Iterator.next()();
        if (v72)
        {
          v82 = v72;
          sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
          swift_dynamicCast();
          v71 = v83;
          v69 = v61;
          v70 = v62;
          if (v83)
          {
            continue;
          }
        }

        goto LABEL_27;
      }
    }

    while (1)
    {
      v69 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v69 >= v66)
      {
        goto LABEL_27;
      }

      v68 = *(v59 + 8 * v69);
      ++v67;
      if (v68)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_28:
  sub_10039BD94(v2, &selRef_name);
  if (v75)
  {
    v76 = String._bridgeToObjectiveC()();
  }

  else
  {
    v76 = 0;
  }

  [v20 setLinkName:{v76, v77}];

  sub_100005EDC();
}

void sub_1003F463C(uint64_t *a1)
{
  v2 = [a1 links];
  if (v2)
  {
    v3 = v2;
    v13 = 0;
    sub_100006AF0(0, &unk_1006AA7F0, off_100616660);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA5E0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = sub_100005274();
    v8 = sub_10000777C();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, "ConversationLinkSync: Processing update, unable to convert descriptors -- dropping {update: %@}", v7, 0xCu);
    sub_100009A04(v8, &unk_1006A2630, &qword_10057CB40);
    sub_100008AE8();
    sub_10000E668();
  }

  sub_100006048();
}

void sub_1003F4A14()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for Date();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007BAC();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v80 - v10;
  v12 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v80 - v13;
  v15 = type metadata accessor for UUID();
  sub_100007FEC();
  v96 = v16;
  __chkstk_darwin(v17);
  sub_100007BAC();
  v20 = (v18 - v19);
  __chkstk_darwin(v21);
  v95 = &v80 - v22;
  v23 = sub_10039BD94(v1, &selRef_pseudonym);
  if (!v24)
  {
    goto LABEL_4;
  }

  v25 = v24;
  v94 = v23;
  v26 = sub_1003F7B90(v1, &selRef_publicKey);
  if (v27 >> 60 == 15)
  {
    goto LABEL_3;
  }

  v92 = v26;
  v93 = v27;
  v91 = v15;
  v28 = [v1 originatorHandle];
  if (!v28)
  {
    goto LABEL_43;
  }

  v29 = v28;
  v30 = [v28 tuHandle];

  v90 = v30;
  if (!v30)
  {
    sub_100290B6C(v92, v93);

    goto LABEL_4;
  }

  v88 = v20;
  v31 = [v1 generatorDescriptor];
  if (!v31)
  {
    goto LABEL_44;
  }

  v32 = v31;
  v33 = [v31 csdConversationLinkGeneratorDescriptor];

  v89 = v33;
  if (!v33)
  {

    sub_100290B6C(v92, v93);
LABEL_3:

LABEL_4:
    sub_100005EDC();
    return;
  }

  sub_10039BD94(v1, &selRef_groupUUIDString);
  if (v34)
  {
    UUID.init(uuidString:)();

    v35 = v91;
    if (sub_100015468(v14, 1, v91) == 1)
    {

      sub_100290B6C(v92, v93);

      sub_100009A04(v14, &unk_1006A3DD0, &unk_10057C9D0);
      goto LABEL_4;
    }

    (*(v96 + 32))(v95, v14, v35);
    v36 = sub_1003F7B90(v1, &selRef_privateKey);
    v85 = v37;
    v86 = v36;
    [v1 creationDateEpochTime];
    Date.init(timeIntervalSince1970:)();
    [v1 pseudonymExpirationDateEpochTime];
    Date.init(timeIntervalSince1970:)();
    v84 = [v1 isActivated];
    v38 = [v1 invitedHandles];
    v87 = v11;
    if (v38)
    {
      v39 = v38;
      v82 = v8;
      v97 = 0;
      sub_100006AF0(0, &qword_1006AA800, off_100616680);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      v40 = v97;
      if (v97)
      {
        v80 = v4;
        v81 = v2;
        v83 = _swiftEmptyArrayStorage;
        v97 = _swiftEmptyArrayStorage;
        v41 = sub_10000B6F4(v40);
        v42 = 0;
        while (1)
        {
          if (v41 == v42)
          {

            v83 = sub_1002F1FE8(v83);
            v4 = v80;
            v2 = v81;
            goto LABEL_30;
          }

          if ((v40 & 0xC000000000000001) != 0)
          {
            v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v43 = *(v40 + 8 * v42 + 32);
          }

          v44 = v43;
          v45 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          v46 = [v43 tuHandle];

          ++v42;
          if (v46)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v47 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v47 >> 1)
            {
              sub_10001AC68(v47);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            sub_10000F2EC();
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v83 = v97;
            v42 = v45;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v83 = 0;
LABEL_30:
      v8 = v82;
    }

    else
    {
      v83 = 0;
    }

    v82 = sub_10039BD94(v1, &selRef_linkName);
    v49 = v48;
    v50 = *&v89[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version];
    v51 = objc_allocWithZone(TUConversationLinkOriginator);

    v52 = v90;
    v53 = sub_100006B30();
    v90 = v54;
    v56 = sub_1003F7774(v53, v55, v50, v54);
    v57 = v88;
    (*(v96 + 16))(v88, v95, v91);
    v58 = objc_allocWithZone(TUMutableConversationLinkDescriptor);
    v59 = v56;
    v61 = v92;
    v60 = v93;
    sub_1002EAE60(v92, v93);
    v88 = v59;
    v62 = sub_1003F7684(v57, v59, v94, v25, v61, v60);
    v63 = v62;
    v64 = v85;
    if (v85 >> 60 == 15)
    {
      v60 = 0;
    }

    else
    {
      v65 = sub_10000A1F8();
      sub_100290AC4(v65, v66);
      sub_10000A1F8();
      Data._bridgeToObjectiveC()();
      v67 = sub_10000C870();
      v62 = sub_100290B6C(v67, v64);
    }

    v68 = v83;
    sub_10003EBA8(v62, "setPrivateKey:");

    v70 = v87;
    if (v68)
    {
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_1002E932C();
      v71.super.isa = Set._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v71.super.isa = 0;
    }

    sub_10003EBA8(v69, "setInvitedHandles:");

    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_10003EBA8(isa, "setCreationDate:");

    v73 = Date._bridgeToObjectiveC()().super.isa;
    sub_10003EBA8(v73, "setExpirationDate:");

    v74 = [v63 setActivated:v84];
    if (v49)
    {
      v75 = String._bridgeToObjectiveC()();
    }

    else
    {
      v75 = 0;
    }

    v76 = v90;
    sub_10003EBA8(v74, "setName:");

    v77 = sub_10000A1F8();
    sub_100290B6C(v77, v78);
    sub_100290B6C(v92, v93);

    v79 = *(v4 + 8);
    v79(v8, v2);
    v79(v70, v2);
    (*(v96 + 8))(v95, v91);
    goto LABEL_4;
  }

LABEL_45:
  __break(1u);
}

void sub_1003F519C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_38;
  }

  v4 = *(v2 + 88);
  v5 = (a1 + 40);
  v6 = _swiftEmptyArrayStorage;
  v7 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
  p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
  oslog = v4;
  do
  {
    v9 = *(v5 - 1);
    v10 = *v5;

    v11 = String._bridgeToObjectiveC()();
    v12 = [v4 v7[476]];

    if (v12)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000A698();
        sub_100017840();
        v6 = v26;
      }

      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_10001AC68(v13);
        sub_100017840();
        v6 = v27;
      }

      v6[2] = v14 + 1;
      v15 = &v6[2 * v14];
      v15[4] = v9;
      v15[5] = v10;
      v16 = String._bridgeToObjectiveC()();

      [v4 noteItem:v16];
    }

    else
    {
      if (p_inst_meths[356] != -1)
      {
        sub_10000854C();
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000075F0(v17, qword_1006BA5E0);

      v18 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v16))
      {
        v19 = sub_100005274();
        v20 = v6;
        v21 = p_inst_meths;
        v22 = sub_100005E84();
        v81 = v22;
        *v19 = 136315138;
        v23 = sub_10002741C(v9, v10, &v81);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v18, v16, "ConversationLinkSync: Excluding pseudonym from recover message as it is at rate limit {pseudonym: %s}", v19, 0xCu);
        sub_100009B7C(v22);
        v24 = v22;
        p_inst_meths = v21;
        v6 = v20;
        v7 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
        sub_100005F40(v24);
        v25 = v19;
        v4 = oslog;
        sub_100005F40(v25);
      }

      else
      {
      }
    }

    v5 += 2;
    --v3;
  }

  while (v3);
  if (v6[2])
  {
    v28 = [objc_allocWithZone(CSDMessagingLinkSyncRecoverMessage) init];
    if (v28)
    {
      sub_100006AF0(0, &qword_1006A9348, NSMutableArray_ptr);
      v29 = v28;
      v30 = sub_10000C870();
      sub_1002F3C28(v30);
      v31 = sub_1003EF6B0();
      [v16 setPseudonyms:v31];
    }

    v32 = [objc_allocWithZone(CSDMessagingLinkSyncMessage) init];
    v33 = v32;
    v34 = a2;
    if (v32)
    {
      [v32 setType:3];
      [v33 setRecoverMessage:v28];
      v35 = sub_1003F7B24(v33);
      v37 = v36;
    }

    else
    {
      [0 setRecoverMessage:v28];
      v35 = 0;
      v37 = 0xF000000000000000;
    }

    if (p_inst_meths[356] != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000AF9C(v45, qword_1006BA5E0);
    v46 = v28;

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v80 = v46;

    if (os_log_type_enabled(v47, v48))
    {
      v74 = v35;
      v75 = v37;
      oslogb = v33;
      v49 = sub_100007C08();
      v50 = sub_10000777C();
      v51 = sub_100005E84();
      v81 = v51;
      *v49 = 136315394;
      v52 = Set.description.getter();
      v54 = sub_10002741C(v52, v53, &v81);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2112;
      if (v28)
      {
        v55 = [v80 pseudonyms];
        v56 = v55;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      v37 = v75;
      *(v49 + 14) = v55;
      *v50 = v56;
      sub_10001C9AC(&_mh_execute_header, v47, v48, "ConversationLinkSync: Sending recover {to: %s, pseudonyms: %@}");
      sub_100009A04(v50, &unk_1006A2630, &qword_10057CB40);
      sub_1000079DC();
      sub_100009B7C(v51);
      sub_100006868();
      sub_10000E668();

      v34 = a2;
      v33 = oslogb;
      v35 = v74;
    }

    else
    {
    }

    if (v37 >> 60 == 15)
    {
      __break(1u);
      return;
    }

    v57 = sub_10000D6CC();
    sub_100290AC4(v57, v58);

    v59 = sub_10000D6CC();
    v61 = sub_1002E9B84(v59, v60, v34);
    v63 = v62;
    v64 = sub_10000D6CC();
    sub_100290B6C(v64, v65);

    osloga = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(osloga, v66))
    {
      sub_100007C08();
      v81 = sub_100007608();
      MEMORY[0] = 136315394;
      v67 = Set.description.getter();
      v69 = v68;
      sub_10002741C(v67, v68, &v81);

      sub_1000100C0();
      sub_10002741C(v61, v63, &v81);
      sub_10000C870();

      MEMORY[0xE] = v69;
      sub_10001C9AC(&_mh_execute_header, osloga, v66, "ConversationLinkSync: Sent recover {to: %s, idsIdentifier: %s}");
      swift_arrayDestroy();
      sub_100006868();
      sub_10000E668();

      sub_100290B6C(v35, v37);
      goto LABEL_37;
    }

    v70 = sub_10000D6CC();
    sub_100290B6C(v70, v71);
  }

  else
  {

    if (p_inst_meths[356] != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000075F0(v38, qword_1006BA5E0);

    osloga = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(osloga, v39))
    {
      v40 = sub_100005274();
      v41 = sub_100005E84();
      v81 = v41;
      *v40 = 136315138;
      v42 = Array.description.getter();
      v44 = sub_10002741C(v42, v43, &v81);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, osloga, v39, "ConversationLinkSync: No pseudonyms remain after rate limiting, not sending message {pseudonyms: %s}", v40, 0xCu);
      sub_100009B7C(v41);
      sub_10000E668();
      sub_100005F40(v40);
LABEL_37:

LABEL_38:
      sub_1000089B0();
      return;
    }
  }

  sub_1000089B0();
}

void sub_1003F5A84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, id a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_10000C16C();
  a34 = v36;
  a35 = v37;
  v38 = v35;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v43 pseudonyms];
  if (!v45 || (v46 = v45, a23 = 0, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v46, !a23))
  {
LABEL_22:
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_10000AF9C(v76, qword_1006BA5E0);

    v77 = v44;
    v122 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v122, v78))
    {
      v79 = sub_100007C08();
      v80 = sub_10000777C();
      v81 = sub_100005E84();
      a23 = v81;
      *v79 = 138412546;
      *(v79 + 4) = v77;
      *v80 = v77;
      *(v79 + 12) = 2080;
      v82 = v77;
      *(v79 + 14) = sub_10002741C(v42, v40, &a23);
      _os_log_impl(&_mh_execute_header, v122, v78, "ConversationLinkSync: No pseudonyms found in recover -- dropping {recover: %@, from: %s}", v79, 0x16u);
      sub_100009A04(v80, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v80);
      sub_100009B7C(v81);
      sub_100006868();
      sub_100005F40(v79);
LABEL_26:

LABEL_27:
      sub_100027EC0();
      return;
    }

    goto LABEL_41;
  }

  if (!a23[2])
  {

    goto LABEL_22;
  }

  v120 = a23;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_1000075F0(v47, qword_1006BA5E0);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v118 = v40;
  v119 = v38;
  v117 = v42;
  if (os_log_type_enabled(v48, v49))
  {
    v50 = sub_100007C08();
    v51 = swift_slowAlloc();
    a23 = v51;
    *v50 = 136315394;
    v52 = Array.description.getter();
    v54 = sub_10002741C(v52, v53, &a23);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_10002741C(v42, v40, &a23);
    _os_log_impl(&_mh_execute_header, v48, v49, "ConversationLinkSync: Processing recover, asked to check for links matching pseudonyms {pseudonyms: %s, from: %s}", v50, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v51);
    sub_100005F40(v50);
  }

  v55 = v120[2];
  if (v55)
  {
    v56 = *(v38 + 96);
    v57 = v120 + 5;
    v58 = _swiftEmptyArrayStorage;
    v121 = v56;
    do
    {
      v60 = *(v57 - 1);
      v59 = *v57;

      sub_10000F2EC();
      v61 = String._bridgeToObjectiveC()();
      v62 = [v56 underLimitForItem:v61];

      if (v62)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000A698();
          sub_100017840();
          v58 = v74;
        }

        v64 = v58[2];
        v63 = v58[3];
        if (v64 >= v63 >> 1)
        {
          sub_10001AC68(v63);
          sub_100017840();
          v58 = v75;
        }

        v58[2] = v64 + 1;
        v65 = &v58[2 * v64];
        v65[4] = v60;
        v65[5] = v59;
        sub_10000F2EC();
        v66 = String._bridgeToObjectiveC()();

        v56 = v121;
        [v121 noteItem:v66];
      }

      else
      {

        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = sub_100005274();
          v70 = sub_100005E84();
          a23 = v70;
          *v69 = 136315138;
          v71 = Array.description.getter();
          v73 = sub_10002741C(v71, v72, &a23);

          *(v69 + 4) = v73;
          v56 = v121;
          _os_log_impl(&_mh_execute_header, v67, v68, "ConversationLinkSync: Excluding pseudonym from recover response as it is at rate limit {pseudonym: %s}", v69, 0xCu);
          sub_100009B7C(v70);
          sub_100005F40(v70);
          sub_100005F40(v69);
        }
      }

      v57 += 2;
      --v55;
    }

    while (v55);
  }

  else
  {
    v58 = _swiftEmptyArrayStorage;
  }

  if (v58[2])
  {

    v83 = *sub_100009B14((v119 + 32), *(v119 + 56));

    v85 = sub_1002A3600(v84, v83);

    if (sub_10000B6F4(v85) >= 1)
    {

      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = sub_100007C08();
        a23 = swift_slowAlloc();
        *v88 = 136315394;
        sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
        v89 = Array.description.getter();
        v91 = sub_10002741C(v89, v90, &a23);

        *(v88 + 4) = v91;
        *(v88 + 12) = 2080;

        v92 = Array.description.getter();

        v93 = sub_100008DB8();
        sub_10002741C(v93, v94, v95);
        sub_10000C870();

        *(v88 + 14) = v92;
        sub_100017EF8(&_mh_execute_header, v96, v97, "ConversationLinkSync: Found link descriptors for pseudonyms specified in recover -- sending update {linkDescriptors: %s, pseudonyms: %s}");
        swift_arrayDestroy();
        sub_10000E668();
        sub_1000079DC();
      }

      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057D690;
      *(inited + 32) = v117;
      *(inited + 40) = v118;

      sub_10039B534();
      sub_1003F38A0(v85, v99);

      goto LABEL_27;
    }

    v122 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v122, v108))
    {
      v109 = sub_100005274();
      v110 = sub_100005E84();
      a23 = v110;
      *v109 = 136315138;

      v111 = Array.description.getter();
      v113 = v112;

      v114 = sub_10002741C(v111, v113, &a23);

      *(v109 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v122, v108, "ConversationLinkSync: Did not find link descriptors for pseudonyms -- nothing to send in response {pseudonyms: %s}", v109, 0xCu);
      sub_100009B7C(v110);
      sub_10000E668();
      v107 = v109;
      goto LABEL_38;
    }
  }

  else
  {

    v122 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v122, v100))
    {
      v101 = sub_100005274();
      v102 = sub_100005E84();
      a23 = v102;
      *v101 = 136315138;
      v103 = Array.description.getter();
      v105 = v104;

      v106 = sub_10002741C(v103, v105, &a23);

      *(v101 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v122, v100, "ConversationLinkSync: No pseudonyms remain after rate limiting, not sending recover response {pseudonyms: %s}", v101, 0xCu);
      sub_100009B7C(v102);
      sub_10000E668();
      v107 = v101;
LABEL_38:
      sub_100005F40(v107);

      goto LABEL_26;
    }
  }

LABEL_41:
  sub_100027EC0();
}

void sub_1003F6320()
{
  swift_allocObject();
  swift_weakInit();
  sub_1000114F8();
  v3[1] = 1107296256;
  v3[2] = sub_100026924;
  v3[3] = &unk_10062E6E0;
  v1 = _Block_copy(v3);

  v2 = os_state_add_handler();
  _Block_release(v1);
  *(v0 + 128) = v2;
}

uint64_t sub_1003F63E0(uint64_t a1)
{
  result = sub_1003F68CC(a1);
  v2 = 0;
  v4 = result + 64;
  v3 = *(result + 64);
  v62 = result;
  v5 = 1 << *(result + 32);
  v89 = 0;
  v90 = 0xE000000000000000;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;
  v9 = &type metadata for Any;
  v67 = v8;
  v63 = result + 64;
  if ((v6 & v3) == 0)
  {
LABEL_6:
    while (1)
    {
      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        v68 = v2;
        v70 = 0;
        v85 = 0u;
        v86 = 0u;
        v84 = 0;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v10);
      ++v2;
      if (v7)
      {
        v68 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  while (1)
  {
    v68 = v2;
    v10 = v2;
LABEL_10:
    v70 = (v7 - 1) & v7;
    v11 = __clz(__rbit64(v7)) | (v10 << 6);
    v12 = (*(v62 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100006A94(*(v62 + 56) + 32 * v11, &v78);
    v84._countAndFlagsBits = v14;
    v84._object = v13;
    sub_10003EBF0(&v78, &v85);

LABEL_11:
    v87 = v84;
    v88[0] = v85;
    v88[1] = v86;
    object = v84._object;
    if (!v84._object)
    {
      goto LABEL_43;
    }

    countAndFlagsBits = v87._countAndFlagsBits;
    sub_10003EBF0(v88, &v81);
    v84._countAndFlagsBits = countAndFlagsBits;
    v84._object = object;
    v17._countAndFlagsBits = 2618;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    String.append(_:)(v84);

    sub_100006A94(&v81, &v84);
    v18 = sub_10026D814(&qword_1006AA7C8, &qword_100586610);
    if (sub_10000BC10(v18, v19, v20, v21, v22, v23, v24, v25, v61, v62, v63, v64, v65, v66, v67, v68, v70, v72, v73, v74, v75, *(&v75 + 1), v76, v77, v78._countAndFlagsBits, v78._object, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, v83, v84._countAndFlagsBits))
    {
      v26 = *(v78._countAndFlagsBits + 16);
      if (v26)
      {
        v27 = 32;
        do
        {
          v84._countAndFlagsBits = 2105376;
          v84._object = 0xE300000000000000;

          v28 = Array.description.getter();
          v30 = v29;

          v31._countAndFlagsBits = v28;
          v31._object = v30;
          String.append(_:)(v31);

          sub_1003F7F04();
          String.append(_:)(v84);

          v27 += 8;
          --v26;
        }

        while (v26);

        v8 = v67;
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    sub_100006A94(&v81, &v84);
    v32 = sub_10026D814(&qword_1006AA7C0, &unk_100586600);
    if (!sub_10000BC10(v32, v33, v34, v35, v36, v37, v38, v39, v61, v62, v63, v64, v65, v66, v67, v69, v71, v72, v73, v74, v75, *(&v75 + 1), v76, v77, v78._countAndFlagsBits, v78._object, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, v83, v84._countAndFlagsBits))
    {
      v78._countAndFlagsBits = 2105376;
      v78._object = 0xE300000000000000;
      sub_100006A94(&v81, &v84);
      v60._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v60);

      sub_1003F7F04();
      String.append(_:)(v78);
      goto LABEL_38;
    }

    result = v78._countAndFlagsBits;
    v65 = *(v78._countAndFlagsBits + 16);
    if (v65)
    {
      break;
    }

LABEL_38:

LABEL_39:
    result = sub_100009B7C(&v81);
    v2 = v69;
    v7 = v71;
    if (!v71)
    {
      goto LABEL_6;
    }
  }

  v40 = 0;
  v66 = v78._countAndFlagsBits + 32;
  v64 = v78._countAndFlagsBits;
  while (1)
  {
    if (v40 >= *(result + 16))
    {
      goto LABEL_45;
    }

    v41 = *(v66 + 8 * v40);
    v72 = v40 + 1;

    sub_1003F7F04();
    v42 = 0;
    v43 = 1 << *(v41 + 32);
    v44 = v43 < 64 ? ~(-1 << v43) : -1;
    v45 = v44 & *(v41 + 64);
    v46 = (v43 + 63) >> 6;
    if (!v45)
    {
      break;
    }

    while (1)
    {
      v47 = v42;
LABEL_30:
      v48 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v49 = v48 | (v47 << 6);
      v50 = (*(v41 + 48) + 16 * v49);
      v52 = *v50;
      v51 = v50[1];
      sub_100006A94(*(v41 + 56) + 32 * v49, &v75);
      v78._countAndFlagsBits = v52;
      v78._object = v51;
      sub_10003EBF0(&v75, &v79);

LABEL_31:
      v84 = v78;
      v85 = v79;
      v86 = v80;
      v53 = v78._object;
      if (!v78._object)
      {
        break;
      }

      v54 = v9;
      v55 = v84._countAndFlagsBits;
      sub_10003EBF0(&v85, &v78);
      v73 = 2105376;
      v74 = 0xE300000000000000;
      v56._countAndFlagsBits = v55;
      v9 = v54;
      v56._object = v53;
      String.append(_:)(v56);

      v57._countAndFlagsBits = 540949792;
      v57._object = 0xE400000000000000;
      String.append(_:)(v57);
      sub_100006A94(&v78, &v75);
      v58._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v58);

      sub_1003F7F04();
      v59._countAndFlagsBits = 2105376;
      v59._object = 0xE300000000000000;
      String.append(_:)(v59);

      sub_100009B7C(&v78);
      if (!v45)
      {
        goto LABEL_26;
      }
    }

    result = v64;
    v40 = v72;
    v4 = v63;
    v8 = v67;
    if (v72 == v65)
    {
      goto LABEL_38;
    }
  }

LABEL_26:
  while (1)
  {
    v47 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v47 >= v46)
    {
      v45 = 0;
      v79 = 0u;
      v80 = 0u;
      v78 = 0;
      goto LABEL_31;
    }

    v45 = *(v41 + 64 + 8 * v47);
    ++v42;
    if (v45)
    {
      v42 = v47;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_43:

  return v89;
}

uint64_t sub_1003F68CC(char a1)
{
  Dictionary.init(dictionaryLiteral:)();
  v97 = v1;
  v2 = sub_100009B14((v1 + 32), *(v1 + 56));
  v3 = sub_1002A226C(*v2);
  v103 = sub_10000B6F4(v3);
  if (v103)
  {
    v4 = 0;
    v101 = v3 & 0xC000000000000001;
    v5 = _swiftEmptyDictionarySingleton;
    v98 = v3 & 0xFFFFFFFFFFFFFF8;
    v99 = v3;
    while (1)
    {
      if (v101)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v98 + 16))
        {
          goto LABEL_56;
        }

        v6 = *(v3 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v105 = (v4 + 1);
      v9 = *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier];
      v8 = *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier + 8];
      v10 = *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108[0] = v5;
      v12 = sub_10000F2EC();
      sub_100005208(v12, v13);
      sub_10004A10C();
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        goto LABEL_54;
      }

      v19 = v14;
      v20 = v15;
      sub_10026D814(&unk_1006A6F30, &qword_100582708);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18))
      {
        v21 = sub_10000F2EC();
        v23 = sub_100005208(v21, v22);
        if ((v20 & 1) != (v24 & 1))
        {
LABEL_61:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v19 = v23;
      }

      if (v20)
      {

        v5 = v108[0];
        *(*(v108[0] + 7) + 8 * v19) = v10;
      }

      else
      {
        v5 = v108[0];
        sub_1000163C8(v108[0] + 8 * (v19 >> 6));
        v25 = (*(v108[0] + 6) + 16 * v19);
        *v25 = v9;
        v25[1] = v8;
        *(v5[7] + 8 * v19) = v10;

        v26 = v5[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_55;
        }

        v5[2] = v28;
      }

      ++v4;
      v3 = v99;
      if (v105 == v103)
      {
        goto LABEL_17;
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
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

LABEL_17:

  v29 = sub_10026D814(&qword_1006AA7B0, &qword_1005865F0);
  sub_10004A028();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003DE1C(v30);
  sub_1004330F4();
  v108[1] = v31;
  sub_10004A028();
  swift_isUniquelyReferenced_nonNull_native();
  sub_100040430();
  v109 = &type metadata for Int;
  v108[0] = sub_100433470();
  sub_10004A028();
  swift_isUniquelyReferenced_nonNull_native();
  sub_100040430();
  v32 = sub_100009B14((v97 + 32), *(v97 + 56));
  v33 = sub_1002A2FCC(*v32);
  v109 = v29;
  v108[0] = v33;
  sub_10004A028();
  swift_isUniquelyReferenced_nonNull_native();
  sub_100040430();
  v34 = v107;
  sub_100009AB0(v97 + 32, v108);
  sub_10026D814(&qword_1006AA7B8, &qword_1005865F8);
  v94 = v29;
  if (swift_dynamicCast())
  {
    v108[0] = 0;
    v35 = [v110[0] conversationLinkDescriptorsWithPredicate:0 limit:0 offset:0 error:v108];
    v36 = v108[0];
    if (v35)
    {
      v37 = v35;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v36;

      v40 = sub_10000B6F4(v38);
      if (v40)
      {
        if (v40 < 1)
        {
          goto LABEL_60;
        }

        v41 = 0;
        v100 = v38 & 0xC000000000000001;
        v42 = _swiftEmptyDictionarySingleton;
        v43 = _swiftEmptyArrayStorage;
        v96 = v40;
        do
        {
          if (v100)
          {
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v44 = *(v38 + 8 * v41 + 32);
          }

          v45 = v44;
          v106 = v44;
          sub_10026D814(&unk_1006A39A0, &unk_10057D700);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10057E830;
          *(inited + 32) = 0x796E6F6475657370;
          *(inited + 40) = 0xE90000000000006DLL;
          v47 = [v45 pseudonym];
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          *(inited + 48) = v48;
          *(inited + 56) = v50;
          *(inited + 72) = &type metadata for String;
          *(inited + 80) = 0xD000000000000012;
          *(inited + 88) = 0x8000000100574FC0;
          v51 = [v106 originator];
          v52 = [v51 revision];

          *(inited + 96) = v52;
          *(inited + 120) = &type metadata for Int;
          *(inited + 128) = 0xD000000000000014;
          *(inited + 136) = 0x8000000100574FE0;
          v53 = [v106 originator];
          v54 = [v53 identifier];

          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          *(inited + 168) = &type metadata for String;
          *(inited + 144) = v55;
          *(inited + 152) = v57;
          v58 = Dictionary.init(dictionaryLiteral:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10000A698();
            sub_100470348();
            v43 = v89;
          }

          v60 = v43[2];
          v59 = v43[3];
          if (v60 >= v59 >> 1)
          {
            sub_10001AC68(v59);
            sub_100470348();
            v43 = v90;
          }

          v43[2] = v60 + 1;
          v43[v60 + 4] = v58;
          v61 = [v106 originator];
          v62 = [v61 identifier];

          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v64;

          v104 = v43;
          if (v42[2] && (v66 = sub_100005208(v63, v65), (v67 & 1) != 0))
          {
            v68 = *(v42[7] + 8 * v66);
          }

          else
          {
            v68 = 0;
          }

          v69 = [v106 originator];
          v70 = [v69 identifier];

          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          v74 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            goto LABEL_57;
          }

          v102 = v41;
          v75 = v38;
          v76 = swift_isUniquelyReferenced_nonNull_native();
          v108[0] = v42;
          sub_100005208(v71, v73);
          sub_10004A10C();
          v81 = v79 + v80;
          if (__OFADD__(v79, v80))
          {
            goto LABEL_58;
          }

          v82 = v77;
          v83 = v78;
          sub_10026D814(&unk_1006A6F30, &qword_100582708);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v76, v81))
          {
            v84 = sub_100005208(v71, v73);
            if ((v83 & 1) != (v85 & 1))
            {
              goto LABEL_61;
            }

            v82 = v84;
          }

          v38 = v75;
          v42 = v108[0];
          if (v83)
          {
            *(*(v108[0] + 7) + 8 * v82) = v74;
          }

          else
          {
            sub_1000163C8(v108[0] + 8 * (v82 >> 6));
            v86 = (v42[6] + 16 * v82);
            *v86 = v71;
            v86[1] = v73;
            *(v42[7] + 8 * v82) = v74;
            v87 = v42[2];
            v27 = __OFADD__(v87, 1);
            v88 = v87 + 1;
            if (v27)
            {
              goto LABEL_59;
            }

            v42[2] = v88;
          }

          ++v41;
          v43 = v104;
        }

        while (v96 != v102 + 1);
        swift_unknownObjectRelease();

        goto LABEL_48;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v91 = v108[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    v42 = _swiftEmptyDictionarySingleton;
    v43 = _swiftEmptyArrayStorage;
LABEL_48:
    v34 = v107;
    goto LABEL_49;
  }

  v42 = _swiftEmptyDictionarySingleton;
  v43 = _swiftEmptyArrayStorage;
LABEL_49:
  if (a1)
  {
    v109 = sub_10026D814(&qword_1006AA7C0, &unk_100586600);
    v108[0] = v43;
    sub_10004A028();
    swift_isUniquelyReferenced_nonNull_native();
    v107 = v34;
    sub_100040430();
  }

  else
  {
  }

  v109 = v94;
  v108[0] = v42;
  sub_10004A028();
  v92 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003DE1C(v92);
  return v107;
}

void sub_1003F72B4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1002B8CE8();
  if (v6)
  {
    sub_1002B9008(v6, v7);
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000075F0(v8, qword_1006BA5E0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_100005274();
      v12 = sub_100005E84();
      v19 = v12;
      *v11 = 136315138;
      v13 = Set.description.getter();
      v15 = sub_10002741C(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "ConversationLinkSync: devices changed making sure we send a check in to them as well {deviceDestinations: %s}", v11, 0xCu);
      sub_100009B7C(v12);
      sub_1000079DC();
      sub_100005F40(v11);
    }

    sub_1002B7C2C(a2, 1, 2u, sub_1003F74B8, v3);
    sub_100006048();
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service) hasActiveAccounts];
    sub_100006048();

    sub_1003F28CC(v17);
  }
}

uint64_t sub_1003F74C0()
{
  _StringGuts.grow(_:)(181);
  sub_10000C4D0();
  String.append(_:)(v0);
  v1._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v1);

  sub_10000C4D0();
  String.append(_:)(v2);
  v3._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v3);

  sub_10000C4D0();
  v4._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v4);
  type metadata accessor for GeneratorDescriptor();
  v5._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v5);

  sub_10000C4D0();
  v6._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v7);

  sub_10000C4D0();
  String.append(_:)(v8);
  v9._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0;
}

id sub_1003F7684(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_10000FB2C();
  v13 = String._bridgeToObjectiveC()();

  v14 = Data._bridgeToObjectiveC()().super.isa;
  v15 = [v7 initWithGroupUUID:isa originator:a2 pseudonym:v13 publicKey:v14];

  sub_100049B14(a5, a6);
  type metadata accessor for UUID();
  sub_100008070();
  (*(v16 + 8))(a1);
  return v15;
}

id sub_1003F7774(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithIdentifier:v7 revision:a3 handle:a4];

  return v8;
}

unint64_t sub_1003F77E8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = _swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_10026D814(&unk_1006AC0A0, &qword_100586618);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_100285FC4(v6, &v15, &unk_1006AA7E0, &unk_100586620);
    v7 = v15;
    v8 = v16;
    result = sub_1003F793C(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_10003EBF0(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1003F793C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100006110(a1, a2, v4);
}

void sub_1003F79B4(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1003A7258(0x20000000000001);
  }
}

void sub_1003F7A2C(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100049B14(a1, a2);
  [a3 setPublicKey:isa];
}

uint64_t sub_1003F7AAC(void *a1)
{
  v1 = [a1 invitedHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_1002E932C();
  sub_100006B30();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003F7B24(void *a1)
{
  v2 = [a1 data];

  if (v2)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100006B30();
}

uint64_t sub_1003F7B90(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100006B30();
}

char *sub_1003F7BEC(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = a1;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
    return sub_1003B4734(v4, __dst, a4);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_1003B4734(v4, __dst, a4);
}

uint64_t sub_1003F7CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1003F7CEC(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1003F7CFC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1003F7D60()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1003F7DB8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003F7DDC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 9))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F7E38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1003F7E98(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

void sub_1003F7F04()
{
  v1 = 10;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1003F7F1C()
{
  v1 = OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___supportsConversationOneToOneModeEnabled;
  v2 = *(v0 + OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___supportsConversationOneToOneModeEnabled);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1003F7F60(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1003F7F60(uint64_t a1)
{
  result = [*(a1 + OBJC_IVAR___CSDFaceTimeInviteDemuxer_featureFlags) conversationOneToOneModeEnabled];
  if (result)
  {
    v2 = objc_opt_self();
    result = [v2 sharedInstance];
    if (result)
    {
      v3 = result;
      v4 = [result multiwaySupported];

      if (v4)
      {
        v5 = [v2 sharedInstance];
        if (v5)
        {
          v6 = v5;
          v7 = [v5 multiwayBlocked];

          return v7 ^ 1;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1003F8028()
{
  v1 = (v0 + OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___pushTokenForSelf);
  v2 = *(v0 + OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___pushTokenForSelf);
  v3 = *(v0 + OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___pushTokenForSelf + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v4 = sub_1003F80B8();
    v5 = *v1;
    v6 = v1[1];
    *v1 = v4;
    v1[1] = v7;

    sub_1003FC4A4(v5, v6);
  }

  sub_1003FC4B8(v2, v3);
  return v4;
}

id sub_1003F80B8()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result pushToken];

    if (v2)
    {
      return sub_1003E09D0(v2, &selRef___imHexString);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003F813C()
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_100007FDC();
  v3 = v2 - v1;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  sub_100007FDC();
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100007FDC();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10001000C(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  v6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (TUSimulatedModeEnabled())
  {
    v7 = [objc_allocWithZone(TUSimulatedIDSIDQueryController) init];
LABEL_4:
    swift_getObjectType();
    v9 = objc_allocWithZone(TUFeatureFlags);
    swift_unknownObjectRetain();
    v10 = [v9 init];
    v11 = [objc_allocWithZone(type metadata accessor for SharedConversationServerBag()) init];
    v12 = sub_1003FC528(v6, v7, v10, v11);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return v12;
  }

  result = [objc_opt_self() sharedInstance];
  v7 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void sub_1003F8494(void *a1, int a2, uint64_t a3, uint64_t a4, char *a5, const void *a6)
{
  v79 = a2;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v82 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10057D690;
  _Block_copy(a6);
  v17 = [a1 value];
  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  v18 = sub_1003E09D0(v17, &selRef_IDSFormattedDestinationID);
  if (v19)
  {
    *(v16 + 32) = v18;
    *(v16 + 40) = v19;
    v20 = sub_1003F7F1C();
    v84 = v15;
    v85 = a6;
    if ((v20 & 1) != 0 && [*&a5[OBJC_IVAR___CSDFaceTimeInviteDemuxer_serverBag] isModernGFTEnabled])
    {
      v72 = a5;
      v75 = v11;
      v21 = sub_100006AF0(0, &qword_1006A2BA0, IDSURI_ptr);

      v22 = sub_1003F8E78();
      if (qword_1006A0AA0 != -1)
      {
        swift_once();
      }

      v74 = v12;
      v23 = qword_1006BA380;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v24 = swift_allocObject();
      v25 = v24;
      *(v24 + 16) = xmmword_10057D6A0;
      if (v22)
      {
        v89 = v21;
        v90 = sub_1003FC43C();
        *&aBlock = v22;
        sub_10002F0C8(&aBlock, (v25 + 4));
        v26 = v22;
      }

      else
      {
        *(v24 + 56) = &type metadata for String;
        v26 = 0;
        *(v24 + 64) = sub_100009D88();
        v25[4] = 0;
        v25[5] = 0xE000000000000000;
      }

      v25[12] = &type metadata for String;
      v25[13] = sub_100009D88();
      v25[9] = a3;
      v25[10] = a4;

      v73 = v26;
      v41 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("set fromIDURI: %@, fromID: %@", 29, 2, &_mh_execute_header, v23, v41, v25);

      v42 = swift_allocObject();
      *(v42 + 16) = _swiftEmptyArrayStorage;
      v76 = swift_allocObject();
      *(v76 + 16) = _swiftEmptyArrayStorage;
      v77 = swift_allocObject();
      *(v77 + 16) = _swiftEmptyArrayStorage;
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      v44 = dispatch_group_create();
      dispatch_group_enter(v44);
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;
      v48 = swift_allocObject();
      v78 = v42;
      v48[2] = v42;
      v48[3] = v43;
      v48[4] = v44;

      v49 = v44;
      v50 = v22;
      v51 = v22;
      v52 = v72;
      sub_1003F8EEC(v16, v45, v47, v50, sub_1003FC358, v48);

      dispatch_group_enter(v49);
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
      v56 = swift_allocObject();
      v56[2] = v76;
      v56[3] = v43;
      v56[4] = v49;

      v57 = v49;

      sub_1003F8EEC(v16, v53, v55, v51, sub_1003FC384, v56);

      dispatch_group_enter(v57);
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;
      v61 = swift_allocObject();
      v62 = v77;
      v61[2] = v77;
      v61[3] = v43;
      v61[4] = v57;

      v71 = v57;

      sub_1003F8EEC(v16, v58, v60, v51, sub_1003FC3F8, v61);

      v70 = *&v52[OBJC_IVAR___CSDFaceTimeInviteDemuxer_queue];
      v63 = swift_allocObject();
      *(v63 + 16) = v78;
      *(v63 + 24) = v52;
      *(v63 + 32) = v79 & 1;
      *(v63 + 40) = v76;
      *(v63 + 48) = v62;
      *(v63 + 56) = v43;
      *(v63 + 64) = sub_1003FBBC4;
      *(v63 + 72) = v84;
      v90 = sub_1003FC424;
      v91 = v63;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v88 = sub_100004CEC;
      v89 = &unk_10062EA90;
      v64 = _Block_copy(&aBlock);

      v65 = v52;

      v66 = v80;
      static DispatchQoS.unspecified.getter();
      v86 = _swiftEmptyArrayStorage;
      sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
      v67 = v82;
      v68 = v75;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v69 = v71;
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v64);

      (*(v74 + 8))(v67, v68);
      (*(v81 + 8))(v66, v83);

      v40 = v85;
    }

    else
    {
      if (qword_1006A0AA0 != -1)
      {
        swift_once();
      }

      v27 = qword_1006BA380;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10057D6A0;
      LOBYTE(aBlock) = a5[OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___supportsConversationOneToOneModeEnabled] & 1;
      v29 = a5;
      v30 = String.init<A>(reflecting:)();
      v32 = v31;
      *(v28 + 56) = &type metadata for String;
      v33 = sub_100009D88();
      *(v28 + 64) = v33;
      *(v28 + 32) = v30;
      *(v28 + 40) = v32;
      LOBYTE(aBlock) = [*&v29[OBJC_IVAR___CSDFaceTimeInviteDemuxer_serverBag] isModernGFTEnabled];
      v34 = String.init<A>(reflecting:)();
      *(v28 + 96) = &type metadata for String;
      *(v28 + 104) = v33;
      *(v28 + 72) = v34;
      *(v28 + 80) = v35;
      v36 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("supportsConversationOneToOneModeEnabled: %@, serverBag.isModernGFTEnabled: %@", 77, 2, &_mh_execute_header, v27, v36, v28);

      isa = Array._bridgeToObjectiveC()().super.isa;
      v38 = Array._bridgeToObjectiveC()().super.isa;
      v39 = Array._bridgeToObjectiveC()().super.isa;
      v40 = v85;
      (*(v85 + 2))(v85, isa, v38, v39, 0);
    }

    _Block_release(v40);
  }

  else
  {
    _Block_release(a6);
    __break(1u);
  }
}

id sub_1003F8E78()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithUnprefixedURI:v1];

  return v2;
}

void sub_1003F8EEC(uint64_t a1, void **a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v10 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D6A0;

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v12 = String.init<A>(reflecting:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100009D88();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  aBlock = a2;
  v33 = a3;

  v16 = String.init<A>(reflecting:)();
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;
  v18 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("endpointsForDestinationIDs: %@, service: %@", 43, 2, &_mh_execute_header, v10, v18, v11);

  v19 = *&v6[OBJC_IVAR___CSDFaceTimeInviteDemuxer_idsQueryController];
  swift_unknownObjectRetain();
  sub_1002F3C28(a1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = String._bridgeToObjectiveC()();
  v27 = TUBundleIdentifierCallServicesDaemon;
  v28 = *&v6[OBJC_IVAR___CSDFaceTimeInviteDemuxer_queue];
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = v6;
  v22[6] = a5;
  v22[7] = a6;
  v22[8] = a1;
  v36 = sub_1003FC4CC;
  v37 = v22;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100005438;
  v35 = &unk_10062EAE0;
  v23 = _Block_copy(&aBlock);
  v24 = a4;
  v25 = v6;

  v26 = v27;

  [v19 currentIDStatusForDestinations:isa service:v21 preferredFromID:v24 listenerID:v26 queue:v28 completionBlock:v23];
  _Block_release(v23);
  swift_unknownObjectRelease();
}

void sub_1003F91C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, const char *a6, uint64_t a7)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v13 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057D690;
  *(v14 + 56) = sub_10026D814(&unk_1006AA8A0, &unk_1005866E8);
  *(v14 + 64) = sub_10001000C(&unk_1006AA8B0, &unk_1006AA8A0, &unk_1005866E8, &protocol conformance descriptor for [A]);
  *(v14 + 32) = a1;

  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)(a6, a7, 2, &_mh_execute_header, v13, v15, v14);

  swift_beginAccess();
  *(a3 + 16) = a1;

  swift_beginAccess();
  *(a4 + 16) = a2;
  dispatch_group_leave(a5);
}

uint64_t sub_1003F9364(uint64_t *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v140) = a3;
  v11 = 0;
  v159 = 0;
  swift_beginAccess();
  v128 = a1;
  isa = a1[2];
  v151 = _swiftEmptyArrayStorage;
  v152 = _swiftEmptyArrayStorage;
  v144 = (isa & 0xC000000000000001);
  v145 = sub_10000B6F4(isa);
  v141 = IDSRegistrationPropertySupportsModernGFT;
  v139 = IDSRegistrationPropertyIsGreenTea;

  v13 = 0;
  v130 = 0;
  v133 = 0;
  v137 = 0;
  v138 = 0;
LABEL_2:
  while (2)
  {
    for (i = v13; ; ++i)
    {
      if (v145 == i)
      {
        goto LABEL_34;
      }

      if (v144)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_135;
        }

        v15 = *(isa + 8 * i + 32);
      }

      v16 = v15;
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
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
LABEL_143:
        __break(1u);
LABEL_144:
        swift_beginAccess();
        if (*(a6 + 16) != 5)
        {
          swift_beginAccess();
          v98 = sub_10000B6F4(v8[2]);
          swift_beginAccess();
          result = sub_10000B6F4(*(a4 + 16));
          v31 = __OFADD__(v98, result);
          v99 = v98 + result;
          if (v31)
          {
LABEL_169:
            __break(1u);
          }

          else
          {
            swift_beginAccess();
            result = sub_10000B6F4(*(a5 + 16));
            if (!__OFADD__(v99, result))
            {
              if (v99 + result)
              {
                goto LABEL_148;
              }

              sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
              v120 = static OS_os_log.default.getter();
              v121 = static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)("No destinations returned for any endpoint", 41, 2, &_mh_execute_header, v120, v121, _swiftEmptyArrayStorage);

              v95 = 4;
LABEL_149:
              swift_beginAccess();
              *(a6 + 16) = v95;
              goto LABEL_150;
            }
          }

          __break(1u);
          return result;
        }

LABEL_148:
        v95 = 3;
        goto LABEL_149;
      }

      v17 = [v15 pushToken];
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100049B14(v18, v20);
      v22 = [v16 URI];
      v8 = [v22 prefixedURI];

      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }

      v23 = IDSCopyIDForTokenWithID();

      if (!v23)
      {

        v31 = __OFADD__(v138++, 1);
        if (v31)
        {
          goto LABEL_158;
        }

        goto LABEL_2;
      }

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v24;

      v25 = [v16 capabilities];
      v26 = [v25 valueForCapability:v141];

      if (v26 != 1)
      {

        v31 = __OFADD__(v137++, 1);
        if (v31)
        {
          goto LABEL_159;
        }

        goto LABEL_2;
      }

      v27 = sub_1003F8028();
      if (v28)
      {
        v156 = v9;
        v157 = v8;
        v154 = v27;
        v155 = v28;
        sub_10001E364();
        v29 = StringProtocol.contains<A>(_:)();

        if (v29)
        {

          v31 = __OFADD__(v133++, 1);
          if (!v31)
          {
            goto LABEL_2;
          }

LABEL_165:
          __break(1u);
LABEL_166:
          swift_once();
LABEL_154:
          v149 = v11[112];
          v143 = static os_log_type_t.error.getter();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_10057D6A0;
          swift_beginAccess();

          sub_10026D814(&unk_1006AA8A0, &unk_1005866E8);
          v104 = String.init<A>(reflecting:)();
          v106 = v105;
          *(v103 + 56) = &type metadata for String;
          v107 = sub_100009D88();
          *(v103 + 64) = v107;
          *(v103 + 32) = v104;
          *(v103 + 40) = v106;
          swift_beginAccess();

          v108 = String.init<A>(reflecting:)();
          *(v103 + 96) = &type metadata for String;
          *(v103 + 104) = v107;
          v8 = v128;
          *(v103 + 72) = v108;
          *(v103 + 80) = v109;
          os_log(_:dso:log:type:_:)("all of the gftOneToOneEndpoints did not show up in the modernFTDestinations. gftOneToOneEndpoints: %@ modernFTEndpoints: %@", 123, 2, &_mh_execute_header, v149, v143, v103);

          v9 = v127;
          i = a2;
          goto LABEL_155;
        }
      }

      else
      {
      }

      if ((v140 & 1) == 0)
      {
        v30 = [v16 capabilities];
        v8 = [v30 valueForCapability:v139];

        if (v8 == 1)
        {
          break;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v151 = v152;
    }

    v31 = __OFADD__(v130++, 1);
    if (!v31)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_34:

  v159 = v138;
  v8 = v151;
  v32 = sub_10000B6F4(v151);
  v33 = 0;
  v146 = v151 & 0xC000000000000001;
  v13 = v151 & 0xFFFFFFFFFFFFFF8;
  v144 = _swiftEmptyArrayStorage;
  while (v32 != v33)
  {
    if (v146)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v33 >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_137;
      }

      v34 = *(v151 + 8 * v33 + 32);
    }

    v8 = v34;
    i = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_136;
    }

    v35 = [v34 pushToken];
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100049B14(v36, v38);
    v39 = [v8 URI];
    v40 = [v39 prefixedURI];

    if (!v40)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = String._bridgeToObjectiveC()();
    }

    v9 = IDSCopyIDForTokenWithID();

    if (v9)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      isa = v42;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100017840();
        v144 = v45;
      }

      v43 = v144[2];
      v8 = (v43 + 1);
      if (v43 >= v144[3] >> 1)
      {
        sub_100017840();
        v144 = v46;
      }

      v144[2] = v8;
      v44 = &v144[2 * v43];
      v44[4] = v41;
      v44[5] = isa;
      v33 = i;
    }

    else
    {

      ++v33;
    }
  }

  v47 = 0;
  v158 = 0;
  i = _swiftEmptyArrayStorage;
  while (v32 != v47)
  {
    if (v146)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v47 >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_139;
      }

      v48 = *(v151 + 8 * v47 + 32);
    }

    v8 = v48;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_138;
    }

    v154 = v48;
    sub_1003FA698(&v154, &v159, &v158, &v156);

    isa = v157;
    if (v157)
    {
      v49 = v156;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100017840();
        i = v51;
      }

      v9 = *(i + 16);
      v8 = (v9 + 1);
      if (v9 >= *(i + 24) >> 1)
      {
        sub_100017840();
        i = v52;
      }

      *(i + 16) = v8;
      v50 = i + 16 * v9;
      *(v50 + 32) = v49;
      *(v50 + 40) = isa;
    }

    ++v47;
  }

  v127 = i;

  swift_beginAccess();
  isa = *(a4 + 16);
  v147 = sub_10000B6F4(isa);
  LODWORD(v141) = isa & 0xFFFFFFF8;

  v13 = 0;
  v136 = 0;
  v132 = 0;
  v138 = 0;
  v151 = _swiftEmptyArrayStorage;
LABEL_65:
  while (2)
  {
    for (i = v13; ; ++i)
    {
      if (v147 == i)
      {
        goto LABEL_94;
      }

      if ((isa & 0xC000000000000001) != 0)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_141;
        }

        v53 = *(isa + 8 * i + 32);
      }

      v54 = v53;
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_140;
      }

      v55 = [v53 pushToken];
      v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100049B14(v56, v58);
      v60 = [v54 URI];
      v8 = [v60 prefixedURI];

      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }

      v61 = IDSCopyIDForTokenWithID();

      if (!v61)
      {

        v31 = __OFADD__(v136++, 1);
        if (v31)
        {
          goto LABEL_162;
        }

        goto LABEL_65;
      }

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v62;

      v154 = v9;
      v155 = v8;
      __chkstk_darwin(v63);
      if (sub_100013094())
      {

        v31 = __OFADD__(v138++, 1);
        if (!v31)
        {
          goto LABEL_65;
        }

        __break(1u);
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }

      v64 = sub_1003F8028();
      if (v65)
      {
        break;
      }

LABEL_79:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100017840();
        v151 = v69;
      }

      v67 = *(v151 + 16);
      if (v67 >= *(v151 + 24) >> 1)
      {
        sub_100017840();
        v151 = v70;
      }

      *(v151 + 16) = v67 + 1;
      v68 = v151 + 16 * v67;
      *(v68 + 32) = v9;
      *(v68 + 40) = v8;
    }

    v154 = v9;
    v155 = v8;
    v152 = v64;
    v153 = v65;
    sub_10001E364();
    v66 = StringProtocol.contains<A>(_:)();

    if ((v66 & 1) == 0)
    {
      goto LABEL_79;
    }

    v31 = __OFADD__(v132++, 1);
    if (!v31)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_94:

  swift_beginAccess();
  v71 = *(a5 + 16);
  v148 = sub_10000B6F4(v71);
  v140 = v71 & 0xFFFFFFFFFFFFFF8;
  v141 = v71 & 0xC000000000000001;
  v142 = v71;

  v13 = 0;
  v129 = 0;
  v139 = 0;
  v135 = 0;
  isa = _swiftEmptyArrayStorage;
LABEL_95:
  while (2)
  {
    for (i = v13; ; ++i)
    {
      if (v148 == i)
      {
        goto LABEL_125;
      }

      if (v141)
      {
        v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(v140 + 16))
        {
          goto LABEL_143;
        }

        v72 = *(v142 + 8 * i + 32);
      }

      v73 = v72;
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_142;
      }

      v74 = [v72 pushToken];
      v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100049B14(v75, v77);
      v79 = [v73 URI];
      v8 = [v79 prefixedURI];

      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }

      v9 = IDSCopyIDForTokenWithID();

      if (!v9)
      {

        v31 = __OFADD__(v135++, 1);
        if (v31)
        {
          goto LABEL_164;
        }

        goto LABEL_95;
      }

      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v81;

      v152 = v80;
      v153 = v8;
      __chkstk_darwin(v82);
      v9 = &v152;
      v83 = sub_100013094();
      if (v83)
      {
        break;
      }

      v152 = v80;
      v153 = v8;
      __chkstk_darwin(v83);
      if (sub_100013094())
      {
        break;
      }

      sub_1003F8028();
      if (v84)
      {
        v9 = v84;
        v152 = v80;
        v153 = v8;
        sub_10001E364();
        v85 = StringProtocol.contains<A>(_:)();

        if (v85)
        {

          v31 = __OFADD__(v129++, 1);
          if (!v31)
          {
            goto LABEL_95;
          }

          __break(1u);
LABEL_125:

          i = v144[2];
          v9 = v127;
          v8 = v128;
          if (!i && !*(v151 + 16) && !*(isa + 16))
          {
            v91 = v133 + v132;
            if (__OFADD__(v133, v132))
            {
              __break(1u);
            }

            else
            {
              v31 = __OFADD__(v91, v129);
              v92 = v91 + v129;
              if (!v31)
              {
                if (v92)
                {
                  sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
                  v93 = static OS_os_log.default.getter();
                  v94 = static os_log_type_t.default.getter();
                  os_log(_:dso:log:type:_:)("FaceTimeInviteDemuxer: no destinations because we were calling ourselves", 72, 2, &_mh_execute_header, v93, v94, _swiftEmptyArrayStorage);

                  v95 = 1;
                  goto LABEL_149;
                }

                if (v130)
                {
                  sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
                  v96 = static OS_os_log.default.getter();
                  v97 = static os_log_type_t.default.getter();
                  v95 = 2;
                  os_log(_:dso:log:type:_:)("FaceTimeInviteDemuxer: no destinations because we removed green tea devices", 75, 2, &_mh_execute_header, v96, v97, _swiftEmptyArrayStorage);

                  goto LABEL_149;
                }

                goto LABEL_144;
              }
            }

            __break(1u);
            goto LABEL_169;
          }

LABEL_150:
          swift_beginAccess();
          v100 = sub_10000B6F4(v8[2]);
          v101 = v138 + v139;
          if (__OFADD__(v138, v139))
          {
            goto LABEL_160;
          }

          v13 = v158;
          v31 = __OFADD__(v101, v158);
          v102 = v101 + v158;
          if (v31)
          {
            goto LABEL_161;
          }

          v11 = &unk_1006BA000;
          if (v100 != v102)
          {
            a2 = i;
            if (qword_1006A0AA0 == -1)
            {
              goto LABEL_154;
            }

            goto LABEL_166;
          }

LABEL_155:
          if (qword_1006A0AA0 != -1)
          {
            goto LABEL_163;
          }

          goto LABEL_156;
        }
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100017840();
        isa = v88;
      }

      v86 = *(isa + 16);
      if (v86 >= *(isa + 24) >> 1)
      {
        sub_100017840();
        isa = v89;
      }

      *(isa + 16) = v86 + 1;
      v87 = isa + 16 * v86;
      *(v87 + 32) = v80;
      *(v87 + 40) = v8;
    }

    v31 = __OFADD__(v139++, 1);
    if (!v31)
    {
      continue;
    }

    break;
  }

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
  swift_once();
LABEL_156:
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1005866B0;
  swift_beginAccess();
  v111 = sub_10000B6F4(v8[2]);
  *(v110 + 56) = &type metadata for Int;
  *(v110 + 64) = &protocol witness table for Int;
  *(v110 + 32) = v111;
  swift_beginAccess();
  v112 = sub_10000B6F4(*(a4 + 16));
  *(v110 + 96) = &type metadata for Int;
  *(v110 + 104) = &protocol witness table for Int;
  *(v110 + 72) = v112;
  swift_beginAccess();
  v113 = sub_10000B6F4(*(a5 + 16));
  *(v110 + 136) = &type metadata for Int;
  *(v110 + 144) = &protocol witness table for Int;
  *(v110 + 112) = v113;
  *(v110 + 176) = &type metadata for Int;
  *(v110 + 184) = &protocol witness table for Int;
  *(v110 + 152) = i;
  v114 = *(v151 + 16);
  *(v110 + 216) = &type metadata for Int;
  *(v110 + 224) = &protocol witness table for Int;
  *(v110 + 192) = v114;
  v115 = *(isa + 16);
  *(v110 + 256) = &type metadata for Int;
  *(v110 + 264) = &protocol witness table for Int;
  *(v110 + 232) = v115;
  v116 = *(v9 + 16);
  *(v110 + 296) = &type metadata for Int;
  *(v110 + 304) = &protocol witness table for Int;
  *(v110 + 272) = v116;
  *(v110 + 336) = &type metadata for Int;
  *(v110 + 344) = &protocol witness table for Int;
  *(v110 + 312) = v137;
  *(v110 + 376) = &type metadata for Int;
  *(v110 + 384) = &protocol witness table for Int;
  *(v110 + 352) = v133;
  *(v110 + 416) = &type metadata for Int;
  *(v110 + 424) = &protocol witness table for Int;
  *(v110 + 392) = v130;
  v117 = v159;
  *(v110 + 456) = &type metadata for Int;
  *(v110 + 464) = &protocol witness table for Int;
  *(v110 + 432) = v117;
  *(v110 + 496) = &type metadata for Int;
  *(v110 + 504) = &protocol witness table for Int;
  *(v110 + 472) = v138;
  *(v110 + 536) = &type metadata for Int;
  *(v110 + 544) = &protocol witness table for Int;
  *(v110 + 512) = v132;
  *(v110 + 576) = &type metadata for Int;
  *(v110 + 584) = &protocol witness table for Int;
  *(v110 + 552) = v136;
  *(v110 + 616) = &type metadata for Int;
  *(v110 + 624) = &protocol witness table for Int;
  *(v110 + 592) = v135;
  *(v110 + 656) = &type metadata for Int;
  *(v110 + 664) = &protocol witness table for Int;
  *(v110 + 632) = v139;
  *(v110 + 696) = &type metadata for Int;
  *(v110 + 704) = &protocol witness table for Int;
  *(v110 + 672) = v129;
  *(v110 + 736) = &type metadata for Int;
  *(v110 + 744) = &protocol witness table for Int;
  *(v110 + 712) = v13;
  v118 = a6;
  swift_beginAccess();
  v119 = *(a6 + 16);
  *(v110 + 776) = &type metadata for Int;
  *(v110 + 784) = &protocol witness table for Int;
  *(v110 + 752) = v119;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("allGFTOneToOneEndpoints.count=%ld allModernFTEndpoints.count=%ld allIMAVFTEndpoints.count=%ld gftOneToOneDestinations.count=%ld modernFTDestinations.count=%ld imavDestinations.count=%ld screenSharingRemoteControlDestinations.count=%ld removedNonUPlusOneTokens: %d removedSelfDestinations: %d removedGreenTeaDestinations: %d noGFTParticipantDestination: %d removedGFTDestinations: %d removedSelfModernDestinations: %d noModernParticipantDestination: %d noIMAVParticipantDestination: %d removedGFTOrModernDestination: %d removedSelfIMAVDestinations: %d removedNonScreenSharingRemoteControlDestinations: %d subError: %d", v122, a8, a7, a6, v127, v128, v129, v130, a5, v132, v133, a4, v135, v136, v137, v138, v139, v140, v141);

  sub_100414368(isa);
  swift_beginAccess();
  v125(v151, v144, v9, *(v118 + 16));
}

void sub_1003FA698(id *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 pushToken];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100049B14(v9, v11);
  v13 = [v7 URI];
  v14 = [v13 prefixedURI];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v15 = IDSCopyIDForTokenWithID();

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v7 capabilities];
    v20 = [v19 valueForCapability:IDSRegistrationPropertySupportsSSRC];

    if (v20 == 1)
    {
      *a4 = v16;
      a4[1] = v18;
      return;
    }

    if (!__OFADD__(*a3, 1))
    {
      ++*a3;
      goto LABEL_10;
    }
  }

  else
  {
    if (!__OFADD__(*a2, 1))
    {
      ++*a2;
LABEL_10:
      *a4 = 0;
      a4[1] = 0;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1003FA8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = Array._bridgeToObjectiveC()().super.isa;
  v9 = Array._bridgeToObjectiveC()().super.isa;
  (*(a5 + 16))(a5, isa, v8, v9, a4);
}

void sub_1003FA9C8(char *a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_25;
  }

LABEL_2:
  v12 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057E830;
  v14 = sub_100291118(a1);
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100009D88();
  *(v13 + 64) = v17;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *&__src[0] = a2;
  *(&__src[0] + 1) = a3;

  v18 = String.init<A>(reflecting:)();
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v17;
  *(v13 + 72) = v18;
  *(v13 + 80) = v19;
  v51 = a4;
  v20 = sub_100291614(a4);
  *(v13 + 136) = &type metadata for String;
  *(v13 + 144) = v17;
  *(v13 + 112) = v20;
  *(v13 + 120) = v21;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Current IDStatus results: %@ service: %@, fromIDURI: %@", 55, 2, &_mh_execute_header, v12, v22, v13);

  if (!a1)
  {
    goto LABEL_23;
  }

  v47 = a5;
  v23 = sub_1003FBBCC(a1);
  a1 = v23;
  v24 = v23 + 64;
  v25 = 1 << v23[32];
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  a4 = v26 & *(v23 + 8);
  v27 = (v25 + 63) >> 6;

  v28 = 0;
  for (i = _swiftEmptyArrayStorage; a4; a4 &= a4 - 1)
  {
LABEL_10:
    a5 = __clz(__rbit64(a4)) | (v28 << 6);
    sub_100006724(*(a1 + 6) + 40 * a5, __src);
    sub_100006A94(*(a1 + 7) + 32 * a5, &__src[2] + 8);
    memcpy(__dst, __src, 0x48uLL);
    v55 = __src[0];
    v56 = __src[1];
    v57 = *&__src[2];
    sub_100009B7C(&__dst[2] + 1);
    if (*(&v56 + 1))
    {
      __dst[0] = v55;
      __dst[1] = v56;
      *&__dst[2] = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1004707C0(0, i[2] + 1, 1, i);
        i = v35;
      }

      a5 = i[2];
      v31 = i[3];
      if (a5 >= v31 >> 1)
      {
        sub_1004707C0(v31 > 1, a5 + 1, 1, i);
        i = v36;
      }

      i[2] = a5 + 1;
      v32 = &i[5 * a5];
      v33 = __dst[0];
      v34 = __dst[1];
      v32[8] = *&__dst[2];
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
    }

    else
    {
      sub_1000099A4(&v55, &unk_1006AA8C0, qword_1005866F8);
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_2;
    }

    if (v30 >= v27)
    {
      break;
    }

    a4 = *&v24[8 * v30];
    ++v28;
    if (a4)
    {
      v28 = v30;
      goto LABEL_10;
    }
  }

  v37 = sub_100422C0C(i);

  a5 = v47;
  if (v37)
  {
    if (*(v37 + 16))
    {
      sub_1003FAE80(v37, a2, a3, v51, a6, a7);

      return;
    }
  }

LABEL_23:
  v38 = *(a5 + OBJC_IVAR___CSDFaceTimeInviteDemuxer_idsQueryController);
  swift_unknownObjectRetain();
  sub_1002F3C28(a8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v40 = String._bridgeToObjectiveC()();
  v41 = TUBundleIdentifierCallServicesDaemon;
  v49 = *(a5 + OBJC_IVAR___CSDFaceTimeInviteDemuxer_queue);
  v42 = swift_allocObject();
  v42[2] = a2;
  v42[3] = a3;
  v42[4] = v51;
  v42[5] = a6;
  v42[6] = a7;
  v42[7] = a5;
  *&__src[2] = sub_1003FC4E0;
  *(&__src[2] + 1) = v42;
  *&__src[0] = _NSConcreteStackBlock;
  *(&__src[0] + 1) = 1107296256;
  *&__src[1] = sub_100005438;
  *(&__src[1] + 1) = &unk_10062EB30;
  v43 = _Block_copy(__src);
  v44 = v51;

  v45 = a5;

  v46 = v41;

  [v38 requiredIDStatusForDestinations:isa service:v40 preferredFromID:v44 listenerID:v46 queue:v49 completionBlock:v43];
  _Block_release(v43);
  swift_unknownObjectRelease();
}

void sub_1003FAE80(uint64_t a1, void **a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v10 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D6A0;

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v12 = String.init<A>(reflecting:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100009D88();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  aBlock = a2;
  v32 = a3;

  v16 = String.init<A>(reflecting:)();
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;
  v18 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Querying currentRemoteDevices %@ service: %@", 44, 2, &_mh_execute_header, v10, v18, v11);

  v19 = *(v6 + OBJC_IVAR___CSDFaceTimeInviteDemuxer_idsQueryController);
  swift_unknownObjectRetain();
  sub_1002F3C28(a1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = String._bridgeToObjectiveC()();
  v22 = TUBundleIdentifierCallServicesDaemon;
  v27 = *(v6 + OBJC_IVAR___CSDFaceTimeInviteDemuxer_queue);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = a5;
  v23[7] = a6;
  v35 = sub_1003FC4F8;
  v36 = v23;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100005438;
  v34 = &unk_10062EB80;
  v24 = _Block_copy(&aBlock);
  v25 = a4;

  v26 = v22;

  [v19 currentRemoteDevicesForDestinations:isa service:v21 preferredFromID:v25 listenerID:v26 queue:v27 completionBlock:v24];
  _Block_release(v24);
  swift_unknownObjectRelease();
}

uint64_t sub_1003FB150(_BYTE *a1, void **a2, uint64_t a3, _OWORD *i, unint64_t a5, uint64_t a6)
{
  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_28;
  }

LABEL_2:
  v11 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057E830;
  v13 = sub_100291118(a1);
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v45 = a1;
  v16 = sub_100009D88();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *&__src[0] = a2;
  *(&__src[0] + 1) = a3;

  v17 = String.init<A>(reflecting:)();
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 72) = v17;
  *(v12 + 80) = v18;
  v19 = sub_100291614(i);
  *(v12 + 136) = &type metadata for String;
  *(v12 + 144) = v16;
  *(v12 + 112) = v19;
  *(v12 + 120) = v20;
  v21 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Required IDStatus results: %@ service: %@ fromID: %@", 52, 2, &_mh_execute_header, v11, v21, v12);

  if (!v45)
  {
    goto LABEL_24;
  }

  v41 = a2;
  v42 = a3;
  v43 = i;
  v44 = a5;
  v22 = sub_1003FBBCC(v45);
  v23 = v22;
  a1 = v22 + 64;
  v24 = 1 << v22[32];
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 8);
  v27 = (v24 + 63) >> 6;

  a2 = 0;
  v28 = _swiftEmptyArrayStorage;
  a3 = 40;
  for (i = __src; v26; v26 &= v26 - 1)
  {
LABEL_10:
    v30 = __clz(__rbit64(v26)) | (a2 << 6);
    sub_100006724(*(v23 + 6) + 40 * v30, __src);
    sub_100006A94(*(v23 + 7) + 32 * v30, &__src[2] + 8);
    memcpy(__dst, __src, 0x48uLL);
    v48 = __src[0];
    v49 = __src[1];
    v50 = *&__src[2];
    sub_100009B7C(&__dst[2] + 1);
    if (*(&v49 + 1))
    {
      __dst[0] = v48;
      __dst[1] = v49;
      *&__dst[2] = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1004707C0(0, v28[2] + 1, 1, v28);
        v28 = v35;
      }

      a5 = v28[2];
      v31 = v28[3];
      if (a5 >= v31 >> 1)
      {
        sub_1004707C0(v31 > 1, a5 + 1, 1, v28);
        v28 = v36;
      }

      v28[2] = a5 + 1;
      v32 = &v28[5 * a5];
      v33 = __dst[0];
      v34 = __dst[1];
      v32[8] = *&__dst[2];
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
    }

    else
    {
      sub_1000099A4(&v48, &unk_1006AA8C0, qword_1005866F8);
    }
  }

  while (1)
  {
    v29 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_2;
    }

    if (v29 >= v27)
    {
      break;
    }

    v26 = *&a1[8 * v29];
    a2 = (a2 + 1);
    if (v26)
    {
      a2 = v29;
      goto LABEL_10;
    }
  }

  v37 = sub_100422C0C(v28);

  a5 = v44;
  if (v37)
  {
    if (*(v37 + 16))
    {
      sub_1003FAE80(v37, v41, v42, v43, v44, a6);
    }
  }

  v39 = *(sub_1003FBD30(v45) + 2);

  if (v39)
  {
LABEL_24:
    v40 = 5;
  }

  else
  {
    v40 = 0;
  }

  return (a5)(_swiftEmptyArrayStorage, v40);
}

uint64_t sub_1003FB4F4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5, void (*a6)(uint64_t, void))
{
  if (qword_1006A0AA0 != -1)
  {
LABEL_66:
    swift_once();
  }

  v10 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057CA70;
  v12 = sub_100291118(a1);
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100009D88();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v63[0] = a2;

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v16 = String.init<A>(reflecting:)();
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;
  v63[0] = a3;
  v63[1] = a4;

  v18 = String.init<A>(reflecting:)();
  *(v11 + 136) = &type metadata for String;
  *(v11 + 144) = v15;
  *(v11 + 112) = v18;
  *(v11 + 120) = v19;
  v20 = sub_100291614(a5);
  *(v11 + 176) = &type metadata for String;
  *(v11 + 184) = v15;
  *(v11 + 152) = v20;
  *(v11 + 160) = v21;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Current remote device results: %@ for destinationIDs: %@, service: %@, fromIDURI: %@", 84, 2, &_mh_execute_header, v10, v22, v11);

  v23 = 0;
  v24 = a2[2];
  v25 = a2 + 5;
  v58 = _swiftEmptyArrayStorage;
  a2 = &unk_1006A2D10;
  a4 = &protocol witness table for String;
  a5 = v25;
LABEL_3:
  v26 = &v25[2 * v23];
  while (v24 != v23)
  {
    if (v23 >= v24)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    a3 = (v23 + 1);
    if (__OFADD__(v23, 1))
    {
      goto LABEL_58;
    }

    if (!a1)
    {
      goto LABEL_15;
    }

    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    if (!*(a1 + 16) || (v27 = sub_1000067D4(), (v28 & 1) == 0))
    {

      sub_100006780(v63);
LABEL_15:
      v64 = 0u;
      v65 = 0u;
LABEL_16:
      sub_1000099A4(&v64, &unk_1006A2D10, &unk_10057D940);
      goto LABEL_17;
    }

    sub_100006A94(*(a1 + 56) + 32 * v27, &v64);

    sub_100006780(v63);
    if (!*(&v65 + 1))
    {
      goto LABEL_16;
    }

    sub_10026D814(&unk_1006AA8A0, &unk_1005866E8);
    if (swift_dynamicCast())
    {
      v29 = v66;
      if (v66)
      {
        v30 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004708EC();
          v30 = v33;
        }

        v32 = v30[2];
        v58 = v30;
        if (v32 >= v30[3] >> 1)
        {
          sub_1004708EC();
          v58 = v34;
        }

        v58[2] = v32 + 1;
        v58[v32 + 4] = v29;
        v23 = a3;
        v25 = a5;
        goto LABEL_3;
      }
    }

LABEL_17:
    v23 = (v23 + 1);
    v26 += 2;
  }

  v35 = 0;
  v36 = _swiftEmptyArrayStorage;
  a4 = v58;
  v60 = v58[2];
  a2 = &unk_1005866E8;
  while (v35 != v60)
  {
    if (v35 >= a4[2])
    {
      goto LABEL_59;
    }

    a3 = a2;
    v37 = v58[v35 + 4];
    a2 = (v37 >> 62);
    if (v37 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v36 >> 62;
    if (v36 >> 62)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v40 + v38;
    if (__OFADD__(v40, v38))
    {
      goto LABEL_60;
    }

    a5 = v38;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v39)
      {
LABEL_36:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_37:
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v41 = v36 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_38;
    }

    if (v39)
    {
      goto LABEL_36;
    }

    v41 = v36 & 0xFFFFFFFFFFFFFF8;
    if (a1 > *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_37;
    }

LABEL_38:
    ++v35;
    v42 = *(v41 + 16);
    v43 = (*(v41 + 24) >> 1) - v42;
    v44 = v41 + 8 * v42;
    v61 = v41;
    if (a2)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
      if (!v46)
      {
        goto LABEL_52;
      }

      a1 = v46;
      v47 = _CocoaArrayWrapper.endIndex.getter();
      if (v43 < v47)
      {
        goto LABEL_64;
      }

      if (a1 < 1)
      {
        goto LABEL_65;
      }

      v45 = v47;
      v59 = v35;
      v48 = v44 + 32;
      a2 = a3;
      sub_10001000C(qword_1006AA8D8, &unk_1006AA8A0, a3, &protocol conformance descriptor for [A]);
      v49 = 0;
      do
      {
        sub_10026D814(&unk_1006AA8A0, a2);
        v50 = sub_100024CFC(v63, v49, v37);
        v52 = *v51;
        v50(v63, 0);
        *(v48 + 8 * v49) = v52;
        a2 = a3;
        ++v49;
      }

      while (a1 != v49);
      a4 = v58;
      v35 = v59;
LABEL_48:

      if (v45 < a5)
      {
        goto LABEL_61;
      }

      if (v45 > 0)
      {
        v53 = *(v61 + 16);
        v54 = __OFADD__(v53, v45);
        v55 = v53 + v45;
        if (v54)
        {
          goto LABEL_62;
        }

        *(v61 + 16) = v55;
      }
    }

    else
    {
      a2 = (v37 & 0xFFFFFFFFFFFFFF8);
      v45 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
        if (v43 < v45)
        {
          goto LABEL_63;
        }

        sub_100006AF0(0, &qword_1006AA8D0, IDSEndpoint_ptr);
        swift_arrayInitWithCopy();
        a2 = a3;
        goto LABEL_48;
      }

LABEL_52:

      a2 = a3;
      if (a5 > 0)
      {
        goto LABEL_61;
      }
    }
  }

  a6(v36, 0);
}

void *sub_1003FBBCC(_BYTE *a1)
{
  v2 = a1;
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1003FC2D4(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = &v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v4, v5);
  sub_1003FC078(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void *sub_1003FBD30(_BYTE *a1)
{
  v2 = a1;
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1003FC25C(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = &v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v4, v5);
  sub_1003FBE94(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_1003FBE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
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
    sub_100006724(*(a3 + 48) + 40 * v13, v22);
    sub_100006A94(*(a3 + 56) + 32 * v13, v21);
    sub_100006724(v22, __src);
    sub_100006A94(v21, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    if (swift_dynamicCast())
    {
      v14 = v23;
      sub_100006780(__dst);
      sub_100009B7C(v21);
      sub_100006780(v22);
      if (v14 == 2)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v18++, 1))
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_100006780(__dst);
      sub_100009B7C(v21);
      sub_100006780(v22);
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
      sub_1003850B4(a1, a2, v18, a3);
      return;
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
LABEL_19:
  __break(1u);
}

void sub_1003FC078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
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
    sub_100006724(*(a3 + 48) + 40 * v13, v22);
    sub_100006A94(*(a3 + 56) + 32 * v13, v21);
    sub_100006724(v22, __src);
    sub_100006A94(v21, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    if (swift_dynamicCast())
    {
      v14 = v23;
      sub_100006780(__dst);
      sub_100009B7C(v21);
      sub_100006780(v22);
      if (v14 == 1)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v18++, 1))
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_100006780(__dst);
      sub_100009B7C(v21);
      sub_100006780(v22);
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
      sub_1003850B4(a1, a2, v18, a3);
      return;
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
LABEL_19:
  __break(1u);
}

void *sub_1003FC25C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1003FBE94(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_1003FC2D4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1003FC078(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1003FC3B0()
{

  return _swift_deallocObject(v0);
}

unint64_t sub_1003FC43C()
{
  result = qword_1006AA890;
  if (!qword_1006AA890)
  {
    sub_100006AF0(255, &qword_1006A2BA0, IDSURI_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AA890);
  }

  return result;
}

uint64_t sub_1003FC4A4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_1003FC4B8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

id sub_1003FC528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FaceTimeInviteDemuxer();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___supportsConversationOneToOneModeEnabled] = 2;
  *&v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___pushTokenForSelf] = xmmword_10057F880;
  *&v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer_queue] = a1;
  *&v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer_idsQueryController] = a2;
  *&v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer_featureFlags] = a3;
  *&v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer_serverBag] = a4;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_1003FC614(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003FC6C0()
{
  v55 = *v0;
  v1 = v55;
  v2 = *(v55 + 80);
  v3 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1000083C0();
  v57 = v4;
  __chkstk_darwin(v5);
  v59 = v53 - v6;
  sub_1000083C0();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007BAC();
  v54 = v10 - v11;
  __chkstk_darwin(v12);
  v58 = v53 - v13;
  sub_1000083C0();
  v15 = v14;
  v62 = v14;
  __chkstk_darwin(v16);
  sub_100007BAC();
  v56 = (v17 - v18);
  v20 = __chkstk_darwin(v19);
  v60 = v53 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v53 - v23;
  __chkstk_darwin(v22);
  v63 = v53 - v25;
  v26 = *(v0 + *(v1 + 128));
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 objectForKey:v27];

  if (v28)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(&v64, v65);
  }

  else
  {
    memset(v65, 0, 32);
  }

  sub_10026D814(&unk_1006A2D10, &unk_10057D940);
  v29 = v63;
  v30 = swift_dynamicCast();
  sub_10000AF74(v29, v30 ^ 1u, 1, v2);
  v31 = v62;
  v32 = *(v62 + 16);
  v32(v24, v29, v3);
  sub_10000A7C0(v24);
  if (v40)
  {
    v33 = *(v31 + 8);
    v33(v24, v3);
LABEL_16:
    v42 = 1;
    goto LABEL_17;
  }

  v34 = v58;
  v53[0] = *(v8 + 32);
  v53[1] = v15;
  (v53[0])(v58, v24, v2);
  v35 = *(*v0 + 120);
  v36 = v60;
  (*(v8 + 16))(v60, v34, v2);
  sub_10000AF74(v36, 0, 1, v2);
  v37 = v0 + v35;
  v38 = *(TupleTypeMetadata2 + 48);
  v39 = v59;
  v32(v59, v37, v3);
  v32((v39 + v38), v36, v3);
  sub_10000A7C0(v39);
  if (!v40)
  {
    v43 = v8;
    v44 = v56;
    v32(v56, v39, v3);
    sub_10000A7C0(v39 + v38);
    if (!v45)
    {
      v48 = v54;
      (v53[0])(v54, v39 + v38, v2);
      v49 = v44;
      v50 = v39;
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v43 + 8);
      v52(v48, v2);
      v33 = *(v62 + 8);
      v33(v60, v3);
      v52(v34, v2);
      v52(v49, v2);
      v33(v50, v3);
      v42 = v51 ^ 1;
      goto LABEL_17;
    }

    v33 = *(v62 + 8);
    v33(v60, v3);
    v46 = *(v43 + 8);
    v46(v34, v2);
    v46(v44, v2);
    v39 = v59;
    v41 = v57;
    goto LABEL_15;
  }

  v33 = *(v62 + 8);
  v33(v36, v3);
  (*(v8 + 8))(v34, v2);
  sub_10000A7C0(v39 + v38);
  v41 = v57;
  if (!v40)
  {
LABEL_15:
    (*(v41 + 8))(v39, TupleTypeMetadata2);
    goto LABEL_16;
  }

  v33(v39, v3);
  v42 = 0;
LABEL_17:
  v33(v63, v3);
  return v42 & 1;
}

void sub_1003FCCD0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  type metadata accessor for Optional();
  sub_1000083C0();
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  v6 = *(v0 + *(v1 + 128));
  (*(v7 + 16))(&v10 - v4, v0 + *(v1 + 120));
  v8 = 0;
  if (sub_100015468(v5, 1, v2) != 1)
  {
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(*(v2 - 8) + 8))(v5, v2);
  }

  v9 = String._bridgeToObjectiveC()();
  [v6 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

uint64_t sub_1003FCE58()
{

  return v0;
}

uint64_t *sub_1003FCE88()
{

  v1 = *(*v0 + 120);
  type metadata accessor for Optional();
  sub_1000080D0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1003FCF2C()
{
  sub_1003FCE88();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_1003FCFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a1;
  v8 = type metadata accessor for SHA256();
  sub_1000083C0();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SHA256Digest();
  sub_1000083C0();
  v63 = v15;
  v64 = v14;
  __chkstk_darwin(v14);
  sub_100007BAC();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  v22 = Data.init(contentsOf:options:)();
  v58 = a2;
  v59 = a4;
  v60 = a3;
  v61 = v4;
  v29 = v22;
  v31 = v30;
  sub_1003FD6D4(&qword_1006A3848, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100290AC4(v29, v31);
  sub_1003FD638(v29, v31, v13);
  v56 = v31;
  v57 = v29;
  sub_100049B14(v29, v31);
  dispatch thunk of HashFunction.finalize()();
  (*(v10 + 8))(v13, v8);
  v33 = v63;
  v32 = v64;
  (*(v63 + 16))(v18, v21, v64);
  sub_1003FD6D4(&unk_1006AAA60, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  dispatch thunk of Sequence.makeIterator()();
  v35 = v69;
  v34 = v70;
  v68 = v69[2];
  v36 = v32;
  v37 = v33;
  v38 = _swiftEmptyArrayStorage;
  if (v70 == v68)
  {
LABEL_6:
    (*(v37 + 8))(v21);

    v69 = v38;
    sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    sub_100296FEC();
    v39 = BidirectionalCollection<>.joined(separator:)();
    v41 = v40;
    sub_100049B14(v57, v56);
    type metadata accessor for URL();
    sub_1000080D0();
    (*(v42 + 8))(v60);

    return sub_1002E86B8(v62, v58, v39, v41, v59);
  }

  else
  {
    v66 = v69 + 4;
    v65 = xmmword_10057D690;
    v43 = v70;
    v44 = v21;
    v67 = v70;
    while ((v34 & 0x8000000000000000) == 0)
    {
      if (v43 >= v35[2])
      {
        goto LABEL_17;
      }

      v45 = v35;
      v46 = v36;
      v47 = *(v66 + v43);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v48 = swift_allocObject();
      *(v48 + 16) = v65;
      *(v48 + 56) = &type metadata for UInt8;
      *(v48 + 64) = &protocol witness table for UInt8;
      *(v48 + 32) = v47;
      v49 = String.init(format:_:)();
      v51 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100017840();
        v38 = v53;
      }

      v18 = v38[2];
      v29 = (v18 + 1);
      if (v18 >= v38[3] >> 1)
      {
        sub_100017840();
        v38 = v54;
      }

      ++v43;
      v38[2] = v29;
      v52 = &v38[2 * v18];
      v52[4] = v49;
      v52[5] = v51;
      v34 = v67;
      v36 = v46;
      v21 = v44;
      v35 = v45;
      if (v68 == v43)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    swift_once();
    v23 = type metadata accessor for Logger();
    sub_10000AF9C(v23, qword_1006BA5F8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "couldn't read contents of toneURL", v26, 2u);
    }

    type metadata accessor for URL();
    sub_1000080D0();
    (*(v27 + 8))(v18);
    type metadata accessor for FileChecksum(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1003FD584()
{
  v0 = sub_1003FCE58();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t type metadata accessor for FileChecksum(uint64_t a1)
{
  result = qword_1006AA988;
  if (!qword_1006AA988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003FD638(uint64_t result, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_11;
      }

      result = result;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(result + 24);
      result = *(result + 16);
      v6 = v5;
LABEL_9:
      result = sub_1003FD7F0(result, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 3uLL:
      result = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1003FD71C(result, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return result;
  }
}

uint64_t sub_1003FD6D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003FD71C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SHA256();
  sub_1003FD6D4(&qword_1006A3848, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1003FD7F0(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1003FD6D4(&qword_1006A3848, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1003FD8D0()
{
  ObjectType = swift_getObjectType();
  sub_100010554(OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor);
  *&v0[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer] = 0;
  v2 = OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for MicrophoneInjectionUtilities()) init];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1003FDA20(uint64_t a1)
{
  swift_getObjectType();
  v3 = a1 & 0x10000000000;
  v4 = &v1[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor];
  v5 = *&v1[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor] | ((*&v1[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor + 4] | (v1[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor + 6] << 16)) << 32);
  if ((v5 & 0xFF000000000000) != 0x3000000000000)
  {
    LOBYTE(v48) = v3 != 0;
    if (sub_10029CDE8(a1 & 0xFF00FFFFFFFFFFLL | ((v3 != 0) << 40), v5 & 0xFF000000000000 | (((v5 >> 40) & 1) << 40) | v5 & 0xFFFFFFFFFFLL))
    {
      if (qword_1006A0B30 != -1)
      {
        sub_100008720(&qword_1006A0B30);
      }

      v6 = type metadata accessor for Logger();
      sub_10000AF9C(v6, qword_1006BA610);
      oslog = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v48 = v9;
        *v8 = 136315394;
        v10 = String.init<A>(reflecting:)();
        v12 = sub_10002741C(v10, v11, &v48);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2080;
        v13 = String.init<A>(reflecting:)();
        v15 = sub_10002741C(v13, v14, &v48);

        *(v8 + 14) = v15;
        _os_log_impl(&_mh_execute_header, oslog, v7, "Asked to begin or update playback of disclosure, but new descriptor %s is equal to activeDescriptor%s so doing nothing", v8, 0x16u);
        swift_arrayDestroy();
        sub_100005F40(v9);
        sub_100005F40(v8);
      }

      else
      {
      }

      return;
    }
  }

  *(v4 + 6) = BYTE6(a1);
  *v4 = a1;
  *(v4 + 4) = (a1 & 0x1FFFFFFFFFFuLL) >> 32;
  if (!BYTE6(a1))
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720(&qword_1006A0B30);
    }

    v26 = type metadata accessor for Logger();
    sub_10000AF9C(v26, qword_1006BA610);
    v27 = v1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      swift_slowAlloc();
      v48 = sub_10000681C();
      *v4 = 136315138;
      v30 = v27;
      v31 = String.init<A>(reflecting:)();
      v33 = sub_10002741C(v31, v32, &v48);

      *(v4 + 4) = v33;
      sub_100005FCC(&_mh_execute_header, v34, v35, "Asked to begin playing call recording start disclosure %s");
      sub_10000AA88();
      sub_100005F40(v4);
    }

    v36 = &OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer;
    goto LABEL_24;
  }

  if (BYTE6(a1) != 1)
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720(&qword_1006A0B30);
    }

    v37 = type metadata accessor for Logger();
    sub_10000AF9C(v37, qword_1006BA610);
    v38 = v1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v39, v40))
    {
      swift_slowAlloc();
      v48 = sub_10000681C();
      *v4 = 136315138;
      v41 = v38;
      v42 = String.init<A>(reflecting:)();
      v44 = sub_10002741C(v42, v43, &v48);

      *(v4 + 4) = v44;
      sub_100005FCC(&_mh_execute_header, v45, v46, "Asked to begin playing call recording recurring disclosure %s");
      sub_10000AA88();
      sub_100005F40(v4);
    }

    v36 = &OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer;
LABEL_24:
    sub_1003FDFFC(v36);
    return;
  }

  if (qword_1006A0B30 != -1)
  {
    sub_100008720(&qword_1006A0B30);
  }

  v16 = type metadata accessor for Logger();
  sub_10000AF9C(v16, qword_1006BA610);
  v17 = v1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    swift_slowAlloc();
    v48 = sub_10000681C();
    *v4 = 136315138;
    v20 = v17;
    v21 = String.init<A>(reflecting:)();
    v23 = sub_10002741C(v21, v22, &v48);

    *(v4 + 4) = v23;
    sub_100005FCC(&_mh_execute_header, v24, v25, "Asked to begin playing call recording end disclosure %s");
    sub_10000AA88();
    sub_100005F40(v4);
  }

  sub_1003FDF54();
}

void sub_1003FDF54()
{
  sub_1003FE054();
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer);
  if (v1)
  {
    v2 = v1;
    if ([v2 isPlaying])
    {
      [v2 stop];
      [v2 setCurrentTime:0.0];
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer);
  v4 = v3;
  sub_1003FE2B0(v3);
}

void sub_1003FDFFC(void *a1)
{
  sub_1003FE054();
  v3 = *(v1 + *a1);
  v4 = v3;
  sub_1003FE2B0(v3);
}

void sub_1003FE054()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B30 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA610);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Creating recording disclosure audio players", v9, 2u);
  }

  type metadata accessor for DisclosureDataSource(0);
  sub_1002E82CC();
  v10 = sub_10044C474(v5, v1, 1.0);
  v11 = *(v3 + 8);
  v11(v5, v2);
  v12 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer);
  *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer) = v10;

  sub_1002E7C7C();
  v13 = sub_10044C474(v5, v1, 1.0);
  v11(v5, v2);
  v14 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer);
  *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer) = v13;

  URL.init(fileURLWithPath:)();
  v15 = sub_10044C474(v5, v1, 1.0);
  v11(v5, v2);
  v16 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer);
  *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer) = v15;
}

void sub_1003FE2B0(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = qword_1006A0B30;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AF9C(v6, qword_1006BA610);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Playing audio", v9, 2u);
    }

    v10 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
    v15 = v5;
    v11 = v10;
    sub_1003C4830(a1, 1u, 0, 1);

    [v15 play];
  }

  else
  {
    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000AF9C(v12, qword_1006BA610);
    v15 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v15, v13, "Audio player is nil, cannot play!", v14, 2u);
    }
  }
}

void sub_1003FE4C0(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor) | ((*(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor + 4) | (*(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor + 6) << 16)) << 32);
  if ((v3 & 0xFF000000000000) != 0x3000000000000)
  {
    v5 = HIWORD(v3);
    if (v5 == 2)
    {
      v22 = OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer;
      v23 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer);
      if (!v23)
      {
        return;
      }

      sub_1003FE870();
      v24 = a1;
      v25 = sub_100018324(v23);

      if ((v25 & 1) == 0)
      {
        return;
      }

      v26 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
      v27 = *(v2 + v22);
      v28 = v27;
      v29 = v26;
      sub_1003C4478(v27);

      v12 = [objc_opt_self() defaultCenter];
      if (qword_1006A0AE8 != -1)
      {
        v33 = v12;
        swift_once();
        v12 = v33;
      }

      v13 = &qword_1006BA4B8;
    }

    else if (v5 == 1)
    {
      v14 = OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer;
      v15 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer);
      if (!v15)
      {
        return;
      }

      sub_1003FE870();
      v16 = a1;
      v17 = sub_100018324(v15);

      if ((v17 & 1) == 0)
      {
        return;
      }

      v18 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
      v19 = *(v2 + v14);
      v20 = v19;
      v21 = v18;
      sub_1003C4478(v19);

      v12 = [objc_opt_self() defaultCenter];
      if (qword_1006A0AE0 != -1)
      {
        v32 = v12;
        swift_once();
        v12 = v32;
      }

      v13 = &qword_1006BA4B0;
    }

    else
    {
      if (v5)
      {
        return;
      }

      v6 = sub_100010B20(a1);
      v7 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Beep finished playing! Notifying system that start disclosure is over", 69, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);

      v8 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
      v9 = *(v2 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer);
      v10 = v9;
      v11 = v8;
      sub_1003C4478(v9);

      v12 = [objc_opt_self() defaultCenter];
      if (qword_1006A0AD8 != -1)
      {
        v31 = v12;
        swift_once();
        v12 = v31;
      }

      v13 = &qword_1006BA4A8;
    }

    v30 = v12;
    [v12 postNotificationName:*v13 object:0];
  }
}

unint64_t sub_1003FE870()
{
  result = qword_1006A9E90;
  if (!qword_1006A9E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A9E90);
  }

  return result;
}

uint64_t sub_1003FE8B4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC13callservicesd21ProtectedAppsObserver_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1003FE900()
{
  *&v0[OBJC_IVAR____TtC13callservicesd21ProtectedAppsObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProtectedAppsObserver();
  v1 = objc_msgSendSuper2(&v6, "init");
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [objc_msgSend(v2 "subjectMonitorRegistry")];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

void sub_1003FE9EC(uint64_t a1)
{
  v2 = sub_10000B6F4(a1);
  v3 = 0;
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v3;
    }

    else
    {

      ++v3;
    }
  }

  v6 = sub_10000B6F4(_swiftEmptyArrayStorage);
  if (v6)
  {
    v7 = v6;
    sub_100008804(v6);
    if (v7 < 0)
    {
      goto LABEL_31;
    }

    v8 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = _swiftEmptyArrayStorage[v8 + 4];
      }

      v10 = v9;
      v11 = [v9 bundleIdentifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_10039A2E0(v15 > 1, v16 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
    }

    while (v7 != v8);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10042898C();

    sub_100006048();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_100006048();
  }
}

id sub_1003FECE8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProtectedAppsObserver();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003FED74()
{
  sub_100005EF4();
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v6 = v5 - v4;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  sub_100007FDC();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_100007FDC();
  sub_1002A8914();
  static DispatchQoS.unspecified.getter();
  sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  objc_allocWithZone(v0);
  sub_1003FF268();
  sub_100005EDC();
}

void sub_1003FEFA8(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 500;
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  *(v1 + 50) = *(a1 + 26);
  v5 = *(a1 + 8);
  v23 = *a1;
  v6 = *(a1 + 32);

  sub_1003429D0(a1, v24);
  v7 = [v6 identifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v9;
  v22 = v8;

  v10 = sub_1002C89F0(v6);
  v12 = v11;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 41);
  v16 = *(a1 + 40);
  v17 = objc_allocWithZone(AFSiriIncomingCall);
  v18 = v14;

  v19 = sub_1004001C8(v23, v5, v22, v21, v10, v12, v13, v14, v15, v16);
  v20 = [objc_allocWithZone(AFSiriAnnounceIncomingCallRequest) initWithIncomingCall:v19];

  if (v20)
  {
    sub_1004002FC(a1);
    *(v2 + 72) = v20;
  }

  else
  {
    __break(1u);
  }
}

void sub_1003FF0F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100056350;
    v5[3] = &unk_10062ED40;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 performRequestWithCompletion:v4];
  _Block_release(v4);
}

uint64_t sub_1003FF1BC()
{
  v1 = *(v0 + 48);

  return v0;
}

uint64_t sub_1003FF20C()
{
  sub_1003FF1BC();

  return _swift_deallocClassInstance(v0, 80, 7);
}

void sub_1003FF268()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v32 = v8;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v30 = v14;
  v31 = v13;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = &v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor];
  *v18 = 0u;
  v18[1] = 0u;
  *(v18 + 26) = 0u;
  v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_isAvailable] = 0;
  v19 = OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_userConfiguration;
  *&v1[v19] = [objc_allocWithZone(TUUserConfiguration) init];
  *&v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue] = v5;
  *&v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_voiceOverObserver] = v3;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  v20 = v5;
  v29 = v3;
  v21 = objc_msgSendSuper2(&v34, "init");
  v22 = *&v21[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_userConfiguration];
  v23 = v21;
  [v22 addDelegate:v23 queue:v20];
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v33[4] = sub_100400350;
  v33[5] = v24;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 1107296256;
  sub_10000A600();
  v33[2] = v25;
  v33[3] = &unk_10062EE80;
  v26 = _Block_copy(v33);
  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v27, v28, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v32 + 8))(v12, v7);
  (*(v30 + 8))(v17, v31);

  sub_100005EDC();
}

void sub_1003FF5F8(uint64_t a1, int a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v11 = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (a1)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v17 = sub_100004778(v11);
  v18 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Call announcements are not available; user preference is set to Announce Calls -> Never.", 88, 2, &_mh_execute_header, v17, v18, _swiftEmptyArrayStorage);

  if (a2)
  {
LABEL_4:
    v12 = sub_100004778(v11);
    v13 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Call announcements are not available; Voice Over is active.", 59, 2, &_mh_execute_header, v12, v13, _swiftEmptyArrayStorage);
  }

LABEL_5:
  v14 = (a1 != 0) & (a2 ^ 1);
  *(v2 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_isAvailable) = v14;
  if (v14 == 1)
  {
    v15 = sub_100004778(v11);
    v16 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Call announcements are available; feature is enabled, eligible headphones are connected, and Voice Over is not active.", 118, 2, &_mh_execute_header, v15, v16, _swiftEmptyArrayStorage);
  }
}

void sub_1003FF818()
{
  sub_100005EF4();
  v2 = v1;
  v24 = *(v1 + 8);
  v25 = *v1;
  v3 = *(v1 + 24);
  v23 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 41);
  v7 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue);
  *(v12 - v11) = v14;
  (*(v9 + 104))(v12 - v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v7);
  if (v14)
  {
    if (v6)
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    v17 = v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor;
    v18 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor);
    v19 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor + 8);
    v20 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor + 16);
    v21 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor + 24);
    v22 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor + 32);
    *v17 = v25;
    *(v17 + 8) = v24;
    *(v17 + 16) = v23;
    *(v17 + 24) = v3;
    *(v17 + 32) = v4;
    *(v17 + 40) = v16 & 0xFFFE | v5 & 1;
    sub_10005081C(v18, v19, v20, v21, v22);
    type metadata accessor for SiriCallAnnouncementRequest();
    swift_allocObject();
    sub_1003429D0(v2, v26);
    sub_1003429D0(v2, v26);
    sub_1003FEFA8(v2);
    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003FF9C8(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1004002F0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062EDE0;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_1003FFCFC(void *a1)
{
  v1 = [a1 announceCalls];

  return sub_1003FFD2C(v1);
}

uint64_t sub_1003FFD2C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1004001C0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062ED90;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

id sub_1004001C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9, char a10)
{
  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  if (a6)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  if (a7)
  {
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  LOBYTE(v20) = a10 & 1;
  v18 = [v10 initWithCallUUID:v14 callProviderIdentifier:v15 callProviderBundleID:v16 callerContactIdentifiers:v17.super.isa handle:a8 isVideo:a9 & 1 isCallerIDBlocked:v20];

  return v18;
}

BOOL sub_100400358(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x10000000000) != 0)
  {
    return (a1 & 0x10000000000) != 0;
  }

  if ((a1 & 0x10000000000) != 0)
  {
    return 0;
  }

  if ((a2 & 0x100000000) == 0)
  {
    if ((a1 & 0x100000000) == 0)
    {
      return a1 == a2;
    }

    return 0;
  }

  return (a1 & 0x100000000) != 0;
}

uint64_t sub_10040038C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(a3 + 8))(a2, a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = v3;
  *(v19 + 40) = a1;
  aBlock[4] = sub_100400BB8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062F048;
  v20 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v22[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v9 + 8))(v12, v7);
  (*(v14 + 8))(v17, v22[0]);
}

uint64_t sub_100400614(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 5))
  {
    if ((*(a1 + 5) & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_3:
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v10 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (!v10)
      {
        goto LABEL_43;
      }

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v10)
    {
      goto LABEL_43;
    }

    v18 = *(a2 + 40);
    if (*(a1 + 40) == 1)
    {
      if (v18 == 1)
      {
LABEL_34:
        if (*(a1 + 50) != *(a2 + 50) || ((*(a1 + 51) ^ *(a2 + 51)) & 1) != 0 || ((*(a1 + 52) ^ *(a2 + 52)) & 1) != 0 || *(a1 + 64) != *(a2 + 64) || ((*(a1 + 54) ^ *(a2 + 54)) & 1) != 0 || ((*(a1 + 55) ^ *(a2 + 55)) & 1) != 0 || ((*(a1 + 58) ^ *(a2 + 58)) & 1) != 0 || ((*(a1 + 56) ^ *(a2 + 56)) & 1) != 0 || ((*(a1 + 53) ^ *(a2 + 53)) & 1) != 0)
        {
          goto LABEL_43;
        }

        v32 = *(a1 + 72);
        if (v32)
        {
          objc_opt_self();
          v32 = swift_dynamicCastObjCClass();
        }

        if (*(a2 + 72))
        {
          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (v33)
          {
            swift_unknownObjectRetain();
          }
        }

        else
        {
          v33 = 0;
        }

        if (v32)
        {
          if (!v33)
          {
            goto LABEL_43;
          }

          sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
          v34 = static NSObject.== infix(_:_:)();

          if ((v34 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (v33)
        {

          goto LABEL_43;
        }

        if (((*(a1 + 145) ^ *(a2 + 145)) & 1) == 0 && ((*(a1 + 57) ^ *(a2 + 57)) & 1) == 0)
        {
          v17 = *(a2 + 152);
          if (*(a1 + 152))
          {
            if (!*(a2 + 152))
            {
              return v17 & 1;
            }
          }

          else
          {
            if (*(a1 + 148) != *(a2 + 148))
            {
              v17 = 1;
            }

            if (v17)
            {
              goto LABEL_43;
            }
          }

          v17 = *(a1 + 153) ^ *(a2 + 153) ^ 1;
          return v17 & 1;
        }

LABEL_43:
        v17 = 0;
        return v17 & 1;
      }
    }

    else if (v18 != 1)
    {
      if ((sub_1003277B8(*(a1 + 24) & 0xFFFFFFFF00000001, *(a1 + 32), *(a1 + 40), *(a1 + 48) & 0x101, *(a2 + 24) & 0xFFFFFFFF00000001, *(a2 + 32), *(a2 + 40)) & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_34;
    }

    v19 = sub_10000EB74();
    sub_1002F145C(v19, v20, v21);
    v22 = sub_10000E828();
    sub_1002F145C(v22, v23, v24);
    v25 = sub_10000EB74();
    sub_1002F1470(v25, v26, v27);
    v28 = sub_10000E828();
    sub_1002F1470(v28, v29, v30);
    goto LABEL_43;
  }

  if (*(a1 + 5))
  {
    goto LABEL_43;
  }

  if (*(a2 + 4))
  {
    if ((*(a1 + 4) & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_3;
  }

  v17 = 0;
  if ((*(a1 + 4) & 1) == 0 && *a1 == *a2)
  {
    goto LABEL_3;
  }

  return v17 & 1;
}

void sub_1004009B8(void *a1, Swift::Bool a2)
{
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(a2).super.super.isa;
  [a1 handleAudioSessionActivationStateChangedTo:isa];
}

uint64_t getEnumTagSinglePayload for AudioInterruptionDescriptor.ProviderType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioInterruptionDescriptor.ProviderType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 6) = v3;
  return result;
}

uint64_t sub_100400A8C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 5) = v2;
  return result;
}

uint64_t sub_100400AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100400B38()
{
  v1 = [v0 queue];

  return v1;
}

id sub_100400BCC()
{
  ObjectType = swift_getObjectType();
  v2 = BlastDoorInstanceTypeKnownSender;
  v3 = type metadata accessor for MessagesBlastDoorInterface();
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v6 = MessagesBlastDoorInterface.init(with:)();
  v7 = &v0[OBJC_IVAR___CSDSecureImageTranscoder_blastDoor];
  v7[3] = v3;
  v7[4] = &off_10062F070;
  *v7 = v6;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100400C8C()
{
  sub_100006810();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v1[22] = sub_100005E9C();
  v4 = type metadata accessor for URL();
  v1[23] = v4;
  sub_100005EB4(v4);
  v1[24] = v5;
  v1[25] = *(v6 + 64);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100400DBC()
{
  v27 = v0;
  sub_1004018F8();
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC(&qword_1006A0AF8);
  }

  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[23];
  v4 = v0[24];
  v5 = type metadata accessor for Logger();
  v0[29] = sub_10000AF9C(v5, qword_1006BA568);
  v6 = *(v4 + 16);
  v0[30] = v6;
  v0[31] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  if (v9)
  {
    v11 = v0[26];
    v13 = v0[23];
    v12 = v0[24];
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = String.init<A>(reflecting:)();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_10002741C(v15, v17, &v26);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to generate preview of image after writing to URL: %s", v14, 0xCu);
    sub_100009B7C(v25);
    sub_100005F40(v25);
    sub_100005F40(v14);
  }

  else
  {
    v20 = v0[23];
    v21 = v0[24];

    v18 = *(v21 + 8);
    v18(v10, v20);
  }

  v0[32] = v18;
  Data.write(to:options:)();
  sub_100009B14((v0[21] + OBJC_IVAR___CSDSecureImageTranscoder_blastDoor), *(v0[21] + OBJC_IVAR___CSDSecureImageTranscoder_blastDoor + 24));
  v22 = swift_task_alloc();
  v0[33] = v22;
  *v22 = v0;
  v22[1] = sub_10040118C;
  sub_100011274();

  return sub_100402ED4();
}

uint64_t sub_10040118C()
{
  sub_100006810();
  v11 = *v1;
  v11[10] = v1;
  v11[11] = v2;
  v11[12] = v3;
  v11[13] = v0;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 272) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1004012C4()
{
  v1 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  *(v0 + 144) = 0;
  v5 = [v1 removeItemAtURL:v3 error:v0 + 144];

  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v8 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  (*(v0 + 256))(*(v0 + 224), *(v0 + 184));

  v11 = *(v0 + 8);

  return v11(v10, v9);
}

void sub_10040144C(uint64_t a1, uint64_t a2)
{
  if (!_TUIsInternalInstall())
  {
    v16 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    *(v2 + 120) = 0;
    v20 = [v16 removeItemAtURL:v18 error:v2 + 120];

    v14 = *(v2 + 120);
    if (!v20)
    {
LABEL_6:
      v15 = v14;
      _convertNSErrorToError(_:)();

      swift_willThrow();

LABEL_9:
      swift_willThrow();
      goto LABEL_12;
    }

LABEL_8:
    v21 = v14;
    goto LABEL_9;
  }

  v3 = [objc_opt_self() tu_defaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4 withDefault:0];

  if (v5)
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      sub_100005F40(v8);
    }

    v9 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    *(v2 + 136) = 0;
    v13 = [v9 removeItemAtURL:v11 error:v2 + 136];

    v14 = *(v2 + 136);
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v22 = objc_opt_self();
  v23 = String._bridgeToObjectiveC()();
  v24 = sub_1004038B8(v23, 0xD000000000000018, 0x8000000100575EF0, 0xD000000000000058, 0x8000000100575F10, 0x52206120656C6946, 0xEC00000072616461, 0x7373696D736944, 0xE700000000000000, 0, v22);

  if (!v24)
  {
    __break(1u);
    return;
  }

  v25 = *(v2 + 272);
  v26 = *(v2 + 240);
  v27 = *(v2 + 224);
  v28 = *(v2 + 208);
  v29 = *(v2 + 184);
  v30 = *(v2 + 192);
  v31 = *(v2 + 176);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10003EBF0((v2 + 48), (v2 + 16));
  sub_100006AF0(0, &unk_1006A6758, IMUserNotification_ptr);
  swift_dynamicCast();
  v32 = *(v2 + 128);
  [v32 setUsesNotificationCenter:0];
  v33 = type metadata accessor for TaskPriority();
  sub_10000AF74(v31, 1, 1, v33);
  v26(v28, v27, v29);
  v34 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 4) = v32;
  *(v35 + 5) = v25;
  (*(v30 + 32))(&v35[v34], v28, v29);
  v36 = v32;
  swift_errorRetain();
  sub_100463218();

  swift_willThrow();

LABEL_12:
  v37 = *(v2 + 224);
  sub_10000EB88();
  v38(v37);

  sub_100009EF4();

  v39();
}

uint64_t sub_1004018F8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100403538();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  URL.appendingPathComponent(_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100401A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[38] = a4;
  sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v6[41] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[42] = v7;
  v6[43] = *(v7 - 8);
  v6[44] = swift_task_alloc();
  v8 = type metadata accessor for URLComponents();
  v6[45] = v8;
  v6[46] = *(v8 - 8);
  v6[47] = swift_task_alloc();

  return _swift_task_switch(sub_100401C18, 0, 0);
}

uint64_t sub_100401C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[38];
  sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
  v14 = static IMUserNotificationCenter.shared.getter();
  v12[48] = v14;
  v12[2] = v12;
  v12[7] = v12 + 34;
  v12[3] = sub_100401D98;
  v15 = swift_continuation_init();
  v12[25] = sub_10026D814(&qword_1006AAE50, &qword_100586B38);
  v12[18] = _NSConcreteStackBlock;
  v12[19] = 1107296256;
  v12[20] = sub_100344674;
  v12[21] = &unk_10062F0D0;
  v12[22] = v15;
  [v14 addUserNotification:v13 listener:0 completionHandler:v12 + 18];

  return _swift_continuation_await(v12 + 2, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_100401D98()
{
  sub_100006810();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;
  sub_100007BBC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100401E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 384);
  v14 = *(v12 + 272);
  *(v12 + 392) = v14;

  if (!v14 || [v14 response])
  {
    v15 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    *(v12 + 280) = 0;
    v19 = [v15 removeItemAtURL:v17 error:v12 + 280];

    v20 = *(v12 + 280);
    if (v19)
    {
    }

    else
    {
      v21 = v20;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    goto LABEL_12;
  }

  _StringGuts.grow(_:)(46);

  v22 = [objc_opt_self() sharedInstance];
  if (!v22)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return _swift_continuation_await(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }

  v48 = *(v12 + 328);
  v49 = *(v12 + 336);
  v30 = *(v12 + 312);
  v31 = sub_100403AD0(v22);
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v31 = 0x6E776F6E6B6E55;
    v33 = 0xE700000000000000;
  }

  v34 = v33;
  String.append(_:)(*&v31);

  v35._countAndFlagsBits = 0xD000000000000025;
  v35._object = 0x8000000100575F70;
  String.append(_:)(v35);
  *(v12 + 288) = v30;
  swift_errorRetain();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  v36._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v36);

  URL.path(percentEncoded:)(1);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  sub_10026D814(&unk_1006A47B0, &unk_1005805E0);
  v37 = type metadata accessor for URLQueryItem();
  sub_100005EB4(v37);
  *(swift_allocObject() + 16) = xmmword_100586AA0;

  URLQueryItem.init(name:value:)();

  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();

  URLQueryItem.init(name:value:)();

  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  v38 = sub_100015468(v48, 1, v49);
  v39 = *(v12 + 328);
  if (v38 == 1)
  {
    (*(*(v12 + 368) + 8))(*(v12 + 376), *(v12 + 360));

    sub_1002E1320(v39);
LABEL_12:

    sub_100009EF4();
    sub_10000C638();

    __asm { BRAA            X1, X16 }
  }

  (*(*(v12 + 344) + 32))(*(v12 + 352), *(v12 + 328), *(v12 + 336));
  v22 = [objc_opt_self() defaultWorkspace];
  *(v12 + 400) = v22;
  if (!v22)
  {
    goto LABEL_20;
  }

  v42 = v22;

  URL._bridgeToObjectiveC()(v43);
  v45 = v44;
  *(v12 + 408) = v44;
  *(v12 + 80) = v12;
  *(v12 + 120) = v12 + 296;
  *(v12 + 88) = sub_1004025B4;
  v46 = swift_continuation_init();
  *(v12 + 264) = sub_10026D814(&qword_1006AAE58, &qword_100586B40);
  *(v12 + 208) = _NSConcreteStackBlock;
  *(v12 + 216) = 1107296256;
  *(v12 + 224) = sub_100402918;
  *(v12 + 232) = &unk_10062F0F8;
  *(v12 + 240) = v46;
  [v42 openURL:v45 configuration:0 completionHandler:v12 + 208];
  sub_10000C638();

  return _swift_continuation_await(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1004025B4()
{
  sub_100006810();
  *(*v0 + 416) = *(*v0 + 112);
  sub_100007BBC();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1004026E8()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v7 = *(v0 + 336);
  v8 = *(v0 + 344);

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);

  sub_100009EF4();

  return v9();
}

void sub_100402808(uint64_t a1)
{
  v3 = v1[49];
  v2 = v1[50];
  v5 = v1[46];
  v4 = v1[47];
  v7 = v1[44];
  v6 = v1[45];
  v8 = v1[42];
  v9 = v1[43];
  v12 = v1[51];
  swift_willThrow();

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);

  sub_100009EF4();
  sub_100011274();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100402918(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100009B14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_10046A8DC();
  }

  else
  {
    if (a2)
    {
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = 0;
    }

    return sub_10005F998(v5, v8);
  }
}

uint64_t sub_100402A54(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_100402B30;

  return sub_100400C8C();
}

uint64_t sub_100402B30(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *v3;
  sub_100008060();
  *v9 = v8;
  v10 = v7[2];
  v11 = *v3;
  *v9 = *v3;

  sub_100049B14(v7[4], v7[5]);
  if (v4)
  {
    v12 = _convertErrorToNSError(_:)();

    isa = 0;
    v14 = v12;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100049B14(a1, a2);
    v12 = 0;
    v14 = isa;
  }

  v15 = v8[3];
  (v15)[2](v15, isa, v12);

  _Block_release(v15);
  v16 = v11[1];

  return v16();
}

uint64_t sub_100402D3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100402DF0;

  return sub_100402A54(v2, v3, v4);
}

uint64_t sub_100402DF0()
{
  sub_100006810();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  sub_100009EF4();

  return v3();
}

uint64_t sub_100402ED4()
{
  sub_100006810();
  v1[3] = v2;
  v1[4] = v0;
  v3 = type metadata accessor for Image.Encoding();
  v1[5] = v3;
  sub_100005EB4(v3);
  v1[6] = v4;
  v1[7] = sub_100005E9C();
  sub_10026D814(&qword_1006AAE60, &qword_100586B48);
  v1[8] = sub_100005E9C();
  v5 = type metadata accessor for Image();
  v1[9] = v5;
  sub_100005EB4(v5);
  v1[10] = v6;
  v1[11] = sub_100005E9C();
  v7 = type metadata accessor for URL();
  v1[12] = v7;
  sub_100005EB4(v7);
  v1[13] = v8;
  v1[14] = sub_100005E9C();
  sub_100007BBC();

  return _swift_task_switch(v9, v10, v11);
}

void sub_100403044()
{
  v3 = dispatch thunk of MessagesBlastDoorInterface.generateImagePreview(for:maxPixelDimension:scale:)();
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC(&qword_1006A0AF8);
  }

  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[3];
  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA568);
  (*(v5 + 16))(v4, v7, v6);
  v9 = v3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[13];
  v14 = v0[14];
  v15 = v0[12];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48[0] = v47;
    *v16 = 136315394;
    sub_10039FAF0();
    v17 = v9;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v13 + 8))(v14, v15);
    v21 = v18;
    v9 = v17;
    v22 = sub_10002741C(v21, v20, v48);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v0[2] = v17;
    type metadata accessor for _ObjCPreviewImageWrapper();
    v23 = v17;
    v24 = String.init<A>(reflecting:)();
    v26 = sub_10002741C(v24, v25, v48);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v10, v11, "Generated preview from file: %s with result: %s", v16, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v47);
    sub_100005F40(v16);
  }

  else
  {

    (*(v13 + 8))(v14, v15);
  }

  v27 = dispatch thunk of _ObjCPreviewImageWrapper.image.getter();
  v28 = _ObjCImageWrapper.cgImage.getter();

  if (v28)
  {
    v30 = v0[7];
    v29 = v0[8];
    v32 = v0[5];
    v31 = v0[6];
    type metadata accessor for CGImage(0);
    v48[3] = v33;
    v48[4] = &protocol witness table for CGImageRef;
    v48[0] = v28;
    sub_10000AF74(v29, 1, 1, v32);
    v34 = v28;
    Image.init(provider:maxPixelDimension:enforcedEncoding:)();
    ATXEncodingConfiguration.init(preTwiddled:lzfseCompression:)();
    (*(v31 + 104))(v30, enum case for Image.Encoding.atx(_:), v32);
    Image.data(using:)();
    v39 = v0[10];
    v40 = v0[11];
    v46 = v0[9];
    v41 = v0[6];
    v42 = v0[7];
    v43 = v0[5];

    (*(v41 + 8))(v42, v43);
    (*(v39 + 8))(v40, v46);

    sub_10000C638();

    __asm { BRAA            X3, X16 }
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Recevied empty image result from BlastDoor", v37, 2u);
    sub_100005F40(v37);
  }

  sub_100403B40();
  swift_allocError();
  *v38 = 0;
  swift_willThrow();

  sub_100009EF4();
  sub_10000C638();

  __asm { BRAA            X1, X16 }
}

void sub_100403538()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:)();
  (*(v1 + 8))(v3, v0);
  v5 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v22 = 0;
  LODWORD(v3) = [v5 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v22];

  v9 = v22;
  if (v3)
  {

    v10 = v9;
  }

  else
  {
    v21[1] = v22;
    v11 = v22;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000AF9C(v13, qword_1006BA568);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v21[2] = v12;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v18 = String.init<A>(reflecting:)();
      v20 = sub_10002741C(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error creating temporary images directory: %s", v16, 0xCu);
      sub_100009B7C(v17);
    }

    else
    {
    }
  }
}

id sub_1004038B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = [a11 userNotificationWithIdentifier:a1 title:v12 message:v13 defaultButton:v14 alternateButton:v15 otherButton:a10];

  return v16;
}

uint64_t sub_1004039CC(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100402DF0;

  return sub_100401A94(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100403AD0(void *a1)
{
  v2 = [a1 productBuildVersion];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100403B40()
{
  result = qword_1006AAE68;
  if (!qword_1006AAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAE68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlastDoorError(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BlastDoorError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100403C38(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100403C68()
{
  v1 = OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController;
  if (!*(v0 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController))
  {
    v2 = [objc_allocWithZone(TUMomentsController) initWithQueue:*(v0 + OBJC_IVAR____TtC13callservicesd17RecordingProvider_queue)];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    if (v4)
    {
      [v4 addDelegate:v0];
    }
  }

  v5 = *(v0 + v1);
  v6 = v5;
  return v5;
}

id sub_100403D00(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13callservicesd17RecordingProvider_avcStopTimeout] = 0x4014000000000000;
  v3 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate + v1;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue] = 0;
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  *&v1[OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout] = 0;
  v4 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_currentlyEndingRecordingDueToUpdate;
  v5 = type metadata accessor for UUID();
  sub_10000AF74(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC13callservicesd17RecordingProvider_queue] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RecordingProvider(0);
  return objc_msgSendSuper2(&v7, "init");
}

void sub_100403DEC(void *a1)
{
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA640);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100005274();
    v7 = sub_100005E84();
    v23[0] = v7;
    *v6 = 136315138;
    v23[6] = v3;
    type metadata accessor for AudioCallRecordingSession(0);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, v23);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Prewarming recording %s", v6, 0xCu);
    sub_100009B7C(v7);
    sub_100009ED0();

    sub_100009ED0();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v18 = sub_100405FE4(v3, v13);

    v19 = sub_100403C68();
    if (v19)
    {
      v20 = v19;
      v23[4] = sub_100404164;
      v23[5] = 0;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      sub_100035BE0();
      v23[2] = v21;
      v23[3] = &unk_10062F648;
      v22 = _Block_copy(v23);
      [v20 prewarmMediaRequest:v18 completion:v22];

      _Block_release(v22);
      return;
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (sub_10000A648(v14))
    {
      sub_100017E10();
      v15 = swift_slowAlloc();
      sub_100008944(v15);
      sub_100008A90(&_mh_execute_header, v16, v17, "Recording session does not have a call! not able to prewarm recording");
      sub_100009ED0();
    }
  }
}

void sub_100404164(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006A0B40 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA640);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v7 = String.init<A>(reflecting:)();
      v9 = sub_10002741C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error prewarming call recording session %s", v5, 0xCu);
      sub_100009B7C(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_100404328(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = 1;
  }

  sub_10000AF74(v8, v11, 1, v10);

  v12 = a3;
  v9(v8, a3);

  return sub_100009A04(v8, &unk_1006A3DD0, &unk_10057C9D0);
}

void sub_100404438()
{
  sub_100005EF4();
  v3 = type metadata accessor for URL();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007BAC();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = v43 - v11;
  v13 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v14 = sub_100007BF0(v13);
  __chkstk_darwin(v14);
  sub_100007BAC();
  sub_100006998();
  __chkstk_darwin(v15);
  sub_100007A54();
  sub_10029FC2C();
  v16 = *(v1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController);
  *(v1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController) = 0;

  sub_10003A220(v0, v2, &unk_1006A52C0, &unk_10057D930);
  if (sub_100015468(v2, 1, v3) == 1)
  {
    sub_100009A04(v2, &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000075F0(v17, qword_1006BA640);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    v20 = sub_10000BAF0();
    if (os_log_type_enabled(v20, v21))
    {
      sub_100017E10();
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Directory URL doesn't exist for recording session! cannot clean up from prewarming", v22, 2u);
      sub_100009ED0();
    }

    goto LABEL_13;
  }

  (*(v5 + 32))(v12, v2, v3);
  URL.path.getter();
  v23 = objc_allocWithZone(CSDSandboxExtensionDirectory);
  v24 = sub_10040A024();
  v25 = [objc_opt_self() defaultManager];
  v26 = [v24 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v30 = *(v5 + 8);
  v30(v9, v3);
  v43[0] = 0;
  v31 = [v25 removeItemAtURL:v29 error:v43];

  if (v31)
  {
    v32 = v43[0];

    v30(v12, v3);
  }

  else
  {
    v33 = v43[0];
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v30(v12, v3);
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000075F0(v35, qword_1006BA640);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v36))
    {

LABEL_13:

      goto LABEL_14;
    }

    v37 = sub_100005274();
    v38 = sub_100005E84();
    v43[0] = v38;
    *v37 = 136315138;
    v42 = v34;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v39 = String.init<A>(reflecting:)();
    v41 = sub_10002741C(v39, v40, v43);

    *(v37 + 4) = v41;
    sub_100021FC8(&_mh_execute_header, v18, v36, "Issue deleting item while cleaning up from prewarm %s");
    sub_100009B7C(v38);
    sub_10000EA64();

    sub_100009ED0();
  }

LABEL_14:
  sub_100009A04(v0, &unk_1006A52C0, &unk_10057D930);
  sub_100005EDC();
}

void sub_100404928()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v47 = v13;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v18);
  sub_100006688();
  __chkstk_darwin(v19);
  sub_10000C4C4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v36 = sub_100405FE4(v4, v21);

    v37 = [v36 sandboxURL];
    v38 = [v37 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = type metadata accessor for URL();
    sub_10000AF74(v1, 0, 1, v39);
    v40 = OBJC_IVAR___CSDAudioCallRecordingSession_baseRecordingURL;
    swift_beginAccess();
    sub_1000432B0(v1, v4 + v40, &unk_1006A52C0, &unk_10057D930);
    swift_endAccess();
    v41 = v21;
    sub_1004051D8();

    v42 = sub_100403C68();
    if (v42)
    {
      v43 = v42;
      sub_100006890();
      v44 = swift_allocObject();
      *(v44 + 16) = v2;
      v52 = sub_10040A348;
      v53 = v44;
      v48 = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_100404328;
      v51 = &unk_10062F5D0;
      v45 = _Block_copy(&v48);
      v46 = v2;

      [v43 startMediaRequest:v36 completion:v45];

      _Block_release(v45);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000075F0(v22, qword_1006BA640);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = sub_10000BAF0();
    if (os_log_type_enabled(v25, v26))
    {
      sub_100017E10();
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Recording session does not have a call! not able to start recording", v27, 2u);
      sub_10000EA64();
    }

    v28 = *&v2[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
    if (v28)
    {
      sub_100006890();
      v29 = swift_allocObject();
      *(v29 + 16) = v2;
      v52 = sub_10040A338;
      v53 = v29;
      sub_100009FE4();
      v49 = 1107296256;
      sub_10000A600();
      v50 = v30;
      v51 = &unk_10062F530;
      v31 = _Block_copy(&v48);
      v32 = v2;
      v33 = v28;
      static DispatchQoS.unspecified.getter();
      sub_10000A438();
      sub_10000F108(v34, v35, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      sub_1000060D4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      sub_10040A5D8();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v31);

      (*(v7 + 8))(v11, v5);
      (*(v47 + 8))(v17, v12);
    }
  }

  sub_100005EDC();
}

uint64_t sub_100405058(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-1] - v3;
  v5 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();
  sub_10003A220(v5 + a1, v11, &qword_1006AAF50, &unk_100584CC0);
  if (!v12)
  {
    return sub_100009A04(v11, &qword_1006AAF50, &unk_100584CC0);
  }

  sub_100009AB0(v11, v10);
  sub_100009A04(v11, &qword_1006AAF50, &unk_100584CC0);
  sub_100009B14(v10, v10[3]);
  v6 = type metadata accessor for UUID();
  sub_10000AF74(v4, 1, 1, v6);
  sub_10040A22C();
  v7 = swift_allocError();
  sub_1003E801C(v4, v7);

  sub_100009A04(v4, &unk_1006A3DD0, &unk_10057C9D0);
  return sub_100009B7C(v10);
}

void sub_1004051D8()
{
  sub_100005EF4();
  v114 = v2;
  sub_10000691C();
  type metadata accessor for URL.DirectoryHint();
  sub_100007FEC();
  v108 = v4;
  v109 = v3;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v107 = (v6 - v5);
  sub_10000D414();
  v112 = type metadata accessor for URL();
  sub_100007FEC();
  v110 = v7;
  __chkstk_darwin(v8);
  sub_100007BAC();
  sub_100006998();
  __chkstk_darwin(v9);
  v106 = &v104 - v10;
  sub_100006838();
  __chkstk_darwin(v11);
  sub_10000C1C4();
  v116 = v12;
  sub_10000D414();
  v13 = type metadata accessor for Date();
  v14 = sub_100007BF0(v13);
  __chkstk_darwin(v14);
  sub_100007FDC();
  v15 = type metadata accessor for RecordingMetadata();
  sub_100007FEC();
  v113 = v16;
  __chkstk_darwin(v17);
  sub_100007FDC();
  v115 = v19 - v18;
  sub_100432E00(v0);
  v111 = v1;
  if (!v20)
  {
    v36 = [v0 localSenderIdentity];
    if (!v36 || (v37 = v36, v38 = [v36 handle], v37, !v38) || (sub_1004450C8(v38), !v39))
    {
      v40 = [v0 localSenderIdentity];
      if (v40 && (v41 = v40, v42 = [v40 handle], v41, v42))
      {
        v43 = [v42 value];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
      }
    }
  }

  v21 = [v0 handle];
  if (v21)
  {
    sub_1004450C8(v21);
    if (v22)
    {
      sub_1000089CC();
LABEL_7:
      v26 = [v114 localeIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static Date.now.getter();
      RecordingMetadata.init(locale:startTimeStamp:localHandle:remoteHandle:)();
      if (qword_1006A0B40 != -1)
      {
        sub_1000087BC();
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000AF9C(v27, qword_1006BA640);
      v28 = v0;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = sub_100005274();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        sub_100021FC8(&_mh_execute_header, v29, v30, "Writing metadata of call: %@");
        sub_100009A04(v32, &unk_1006A2630, &qword_10057CB40);
        sub_100009ED0();

        sub_100009ED0();
      }

      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      sub_10000F108(&qword_1006AAF80, &type metadata accessor for RecordingMetadata, &protocol conformance descriptor for RecordingMetadata);
      sub_100016FF8();
      v34 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v35 = v116;
      v105 = v15;
      v44 = v34;
      v46 = v45;

      v47 = [v114 sandboxURL];
      v48 = [v47 URL];

      v49 = v106;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(v118, "metadata.json");
      HIWORD(v118[0]) = -4864;
      v51 = v107;
      v50 = v108;
      v52 = v109;
      (*(v108 + 104))(v107, enum case for URL.DirectoryHint.inferFromPath(_:), v109);
      sub_10001E364();
      URL.appending<A>(component:directoryHint:)();
      (*(v50 + 8))(v51, v52);
      v53 = v110;
      v54 = v112;
      v108 = *(v110 + 8);
      (v108)(v49, v112);
      v107 = objc_opt_self();
      v55 = [v107 defaultManager];
      URL.relativePath.getter();
      String._bridgeToObjectiveC()();
      sub_100007738();
      v109 = v44;
      v114 = v46;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v57 = [v55 createFileAtPath:v35 contents:isa attributes:0];

      v58 = v54;
      v59 = v116;

      v60 = v111;
      (*(v53 + 16))(v111, v59, v54);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v64 = sub_100005E84();
        v117 = swift_slowAlloc();
        *v64 = 136315650;
        v65 = URL.relativePath.getter();
        v67 = v66;
        v68 = sub_100006C30();
        v69 = v108;
        (v108)(v68);
        v70 = sub_10002741C(v65, v67, &v117);

        *(v64 + 4) = v70;
        *(v64 + 12) = 2080;
        v71 = [v107 defaultManager];
        v72 = [v71 currentDirectoryPath];

        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        *&v118[0] = v73;
        *(&v118[0] + 1) = v75;
        v76 = String.init<A>(reflecting:)();
        sub_10002741C(v76, v77, &v117);
        sub_100007738();
        *(v64 + 14) = v72;
        *(v64 + 22) = 2080;
        LOBYTE(v118[0]) = v57;
        v78 = String.init<A>(reflecting:)();
        sub_10002741C(v78, v79, &v117);
        sub_100007738();
        *(v64 + 24) = v72;
        _os_log_impl(&_mh_execute_header, v61, v62, "Creating a directory of %s at %s, success: %s", v64, 0x20u);
        swift_arrayDestroy();
        sub_100009ED0();

        sub_100009ED0();

        sub_100049B14(v109, v114);

        v69(v116, v112);
      }

      else
      {
        sub_100049B14(v109, v114);

        v100 = v108;
        (v108)(v60, v58);
        v100(v59, v58);
      }

      sub_10001AC74();
      v101(v115, v105);
      goto LABEL_27;
    }
  }

  v23 = [v0 handle];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 value];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000089CC();

    goto LABEL_7;
  }

  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  sub_10000AF9C(v80, qword_1006BA640);
  v81 = v0;
  v116 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v116, v82))
  {
    v83 = sub_100005E84();
    *&v118[0] = swift_slowAlloc();
    *v83 = 136315650;
    v84 = sub_100432E00(v81);
    sub_10001E478(v84, v85);
    sub_1000089CC();

    v86 = sub_100006C30();
    v89 = sub_10002741C(v86, v87, v88);

    *(v83 + 4) = v89;
    *(v83 + 12) = 2080;
    v90 = [v81 localSenderIdentity];
    sub_10029159C(v90);
    sub_1000089CC();

    v91 = sub_100006C30();
    v94 = sub_10002741C(v91, v92, v93);

    *(v83 + 14) = v94;
    *(v83 + 22) = 2080;
    v95 = [v81 handle];
    v96 = sub_1002915B0(v95);
    v98 = v97;

    v99 = sub_10002741C(v96, v98, v118);

    *(v83 + 24) = v99;
    _os_log_impl(&_mh_execute_header, v116, v82, "Not writing metadata because one of these is nil local member handle value: %s local sender identity %s remote handle: %s", v83, 0x20u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();

LABEL_27:
    sub_100005EDC();
    return;
  }

  sub_100005EDC();
}

uint64_t sub_100405D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();
  sub_10003A220(v6 + a1, v10, &qword_1006AAF50, &unk_100584CC0);
  if (!v11)
  {
    return sub_100009A04(v10, &qword_1006AAF50, &unk_100584CC0);
  }

  sub_100009AB0(v10, v9);
  sub_100009A04(v10, &qword_1006AAF50, &unk_100584CC0);
  sub_100009B14(v9, v9[3]);
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  sub_1003E801C(a2, v7);

  return sub_100009B7C(v9);
}

uint64_t sub_100405E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-1] - v5;
  v7 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();
  sub_10003A220(v7 + a1, v12, &qword_1006AAF50, &unk_100584CC0);
  if (!v13)
  {
    return sub_100009A04(v12, &qword_1006AAF50, &unk_100584CC0);
  }

  sub_100009AB0(v12, v11);
  sub_100009A04(v12, &qword_1006AAF50, &unk_100584CC0);
  sub_100009B14(v11, v11[3]);
  v8 = type metadata accessor for UUID();
  sub_10000AF74(v6, 1, 1, v8);
  sub_1003E801C(v6, a2);
  sub_100009A04(v6, &unk_1006A3DD0, &unk_10057C9D0);
  return sub_100009B7C(v11);
}

_WORD *sub_100405FE4(uint64_t a1, void *a2)
{
  v53 = a2;
  sub_10000691C();
  type metadata accessor for Locale();
  sub_100007FEC();
  v56 = v5;
  v57 = v4;
  __chkstk_darwin(v4);
  sub_100007BAC();
  v54 = v6 - v7;
  sub_100006838();
  __chkstk_darwin(v8);
  sub_10000C1C4();
  v55 = v9;
  sub_10000D414();
  v10 = type metadata accessor for URL();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007BAC();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = &unk_1006A52C0;
  v21 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v22 = sub_100007BF0(v21);
  __chkstk_darwin(v22);
  sub_100007BAC();
  sub_100006998();
  __chkstk_darwin(v23);
  sub_100007A54();
  sub_10029FC2C();
  sub_10003A220(v2, v3, &unk_1006A52C0, &unk_10057D930);
  if (sub_100015468(v3, 1, v10) == 1)
  {
    sub_100009A04(v3, &unk_1006A52C0, &unk_10057D930);
    if (qword_1006A0B40 != -1)
    {
      sub_1000087BC();
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000AF9C(v24, qword_1006BA640);
    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v26 = sub_10000BAF0();
    if (os_log_type_enabled(v26, v27))
    {
      sub_100017E10();
      v20 = swift_slowAlloc();
      *v20 = 0;
      sub_1000079AC();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      sub_10000EA64();
    }

    sub_10040A22C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v19, v3, v10);
    URL.path.getter();
    v20 = v33;
    v34 = objc_allocWithZone(CSDSandboxExtensionDirectory);
    v35 = v58;
    v36 = sub_10040A024();
    if (!v35)
    {
      v38 = v36;
      sub_100006AF0(0, &qword_1006AAF60, TUSandboxExtendedURL_ptr);
      v58 = 0;
      v39 = [v38 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = sub_1004064CC(v16, 1);
      sub_100006AF0(0, &qword_1006AAF68, TUMomentsMediaRecordRequest_ptr);
      v41 = v53;
      v53 = v40;
      v49 = sub_100406570(v41, v53);
      v42 = v54;
      static Locale.current.getter();
      v52 = v12;
      v50 = v38;
      v43 = v55;
      LanguageManager.mappedASRLocale(for:useCase:)();
      v51 = v19;
      v44 = *(v56 + 8);
      v45 = v42;
      v46 = v57;
      v44(v45, v57);
      LanguageManager.languageIdentifier(for:)();
      v47 = v43;
      v20 = v49;
      v44(v47, v46);
      v48 = String._bridgeToObjectiveC()();

      [v20 setLocaleIdentifier:v48];

      (*(v52 + 8))(v51, v10);
      sub_100009A04(v2, &unk_1006A52C0, &unk_10057D930);
      return v20;
    }

    (*(v12 + 8))(v19, v10);
  }

  sub_100009A04(v2, &unk_1006A52C0, &unk_10057D930);
  return v20;
}

id sub_1004064CC(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6 withExtensionType:a2];

  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

id sub_100406570(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCall:a1 URL:a2];

  return v4;
}

void sub_1004065CC(void *a1)
{
  v4 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v98 = v5;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v97 = v8 - v7;
  sub_10000D414();
  v96 = type metadata accessor for DispatchTime();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007BAC();
  v93 = v12 - v13;
  sub_100006838();
  __chkstk_darwin(v14);
  sub_10000C1C4();
  v102 = v15;
  sub_10000D414();
  v16 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v94 = v17;
  __chkstk_darwin(v18);
  sub_100007FDC();
  v21 = v20 - v19;
  v22 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v22);
  sub_100006688();
  __chkstk_darwin(v23);
  v101 = &v90 - v24;
  sub_10000D414();
  v25 = type metadata accessor for UUID();
  sub_100007FEC();
  v104 = v26;
  __chkstk_darwin(v27);
  sub_100008DE4();
  v92 = v28;
  v91 = v29;
  __chkstk_darwin(v30);
  sub_100007A54();
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v100 = v1;
  v31 = type metadata accessor for Logger();
  sub_1000075F0(v31, qword_1006BA640);
  v32 = a1;
  v99 = v2;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  v35 = os_log_type_enabled(v33, v34);
  v95 = v10;
  if (v35)
  {
    v36 = sub_100005274();
    v90 = v4;
    v37 = v36;
    v38 = sub_100005E84();
    aBlock = v38;
    *v37 = 136315138;
    v112 = v32;
    type metadata accessor for AudioCallRecordingSession(0);
    v39 = v32;
    v40 = String.init<A>(reflecting:)();
    v42 = sub_10002741C(v40, v41, &aBlock);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "Asked to end recording for %s", v37, 0xCu);
    sub_100009B7C(v38);
    sub_100009ED0();

    v4 = v90;
    sub_100009ED0();
  }

  v43 = OBJC_IVAR___CSDAudioCallRecordingSession_currentMessageUUID;
  sub_100005298(v32 + OBJC_IVAR___CSDAudioCallRecordingSession_currentMessageUUID, &v112);
  v44 = v32 + v43;
  v45 = v101;
  sub_10003A220(v44, v101, &unk_1006A3DD0, &unk_10057C9D0);
  v46 = sub_100015468(v45, 1, v25);
  v47 = v104;
  v48 = v102;
  if (v46 == 1)
  {
    sub_100009A04(v45, &unk_1006A3DD0, &unk_10057C9D0);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (sub_10000A648(v50))
    {
      sub_100017E10();
      v51 = swift_slowAlloc();
      sub_100008944(v51);
      sub_100008A90(&_mh_execute_header, v52, v53, "No message UUID! Ending recording anyways");
      sub_100009ED0();
    }

    v54 = v103;
    v55 = *&v103[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
    if (v55)
    {
      sub_100006890();
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      v110 = sub_10040A280;
      v111 = v56;
      sub_1000173AC();
      v107 = 1107296256;
      sub_10000A600();
      v108 = v57;
      v109 = &unk_10062F440;
      v58 = _Block_copy(&aBlock);
      v59 = v54;
      v60 = v16;
      v61 = v55;
      v62 = v97;
      static DispatchQoS.unspecified.getter();
      v105 = _swiftEmptyArrayStorage;
      sub_10000A438();
      sub_10000F108(v63, v64, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      sub_10000FC84();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v58);

      sub_10003DC28();
      v65(v21, v60);
      (*(v98 + 8))(v62, v4);
    }
  }

  else
  {
    v66 = *(v104 + 32);
    v101 = v104 + 32;
    v99 = v66;
    v66(v100, v45, v25);
    sub_100006890();
    v67 = swift_allocObject();
    v68 = v103;
    *(v67 + 16) = v103;
    v110 = sub_10040A29C;
    v111 = v67;
    sub_1000173AC();
    v107 = 1107296256;
    v108 = sub_100004CEC;
    v109 = &unk_10062F490;
    _Block_copy(&aBlock);
    v105 = _swiftEmptyArrayStorage;
    sub_10000A438();
    sub_10000F108(v69, v70, &protocol conformance descriptor for DispatchWorkItemFlags);
    v71 = v68;
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_10000FC84();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v72 = DispatchWorkItem.init(flags:block:)();

    v73 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout;
    *&v71[OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout] = v72;

    v74 = *&v71[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
    if (v74)
    {
      v75 = v74;
      v76 = v93;
      static DispatchTime.now()();
      + infix(_:_:)();
      v77 = *(v95 + 8);
      v78 = v96;
      v77(v76, v96);
      if (!*&v71[v73])
      {
        __break(1u);
        return;
      }

      sub_100007764();
      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      v77(v48, v78);
    }

    v79 = sub_100403C68();
    v80 = v100;
    if (v79)
    {
      v81 = v79;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v83 = v92;
      (*(v47 + 16))(v92, v80, v25);
      v84 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v85 = (v91 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      v99(v86 + v84, v83, v25);
      *(v86 + v85) = v71;
      v110 = sub_10040A2A4;
      v111 = v86;
      sub_1000173AC();
      v107 = 1107296256;
      sub_100007DFC();
      v108 = v87;
      v109 = &unk_10062F4E0;
      v88 = _Block_copy(&aBlock);
      v89 = v71;

      [v81 endMediaRequestWithUUID:isa completion:v88];
      _Block_release(v88);
    }

    (*(v47 + 8))(v80, v25);
  }
}

uint64_t sub_100406E88()
{
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA640);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "timeout reached for ending recording", v3, 2u);
  }

  sub_10040A22C();
  swift_allocError();
  sub_100408FF8();
}

void sub_100406FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v47 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v46 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v42 - v9;
  __chkstk_darwin(v8);
  v12 = v42 - v11;
  if (qword_1006A0B40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000AF9C(v13, qword_1006BA640);
  v15 = *(v5 + 16);
  v43 = a2;
  v15(v12, a2, v4);
  swift_errorRetain();
  v42[1] = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  v18 = os_log_type_enabled(v16, v17);
  v44 = v5;
  v42[0] = v15;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v19 = 136315394;
    v15(v10, v12, v4);
    v20 = String.init<A>(reflecting:)();
    v22 = v21;
    v23 = *(v5 + 8);
    v23(v12, v4);
    v24 = sub_10002741C(v20, v22, &v48);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = sub_1002910C8(v47);
    v27 = sub_10002741C(v25, v26, &v48);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "Recording with message uuid %s ended with error %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = *(v5 + 8);
    v23(v12, v4);
  }

  v28 = v46;
  if (v47)
  {
    v29 = v23;
    (v42[0])(v46, v43, v4);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v28;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v33 = 138412546;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      *(v33 + 12) = 2080;
      sub_10000F108(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v4;
      v40 = v39;
      v29(v32, v38);
      v41 = sub_10002741C(v37, v40, &v48);

      *(v33 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "Error while peforming end media request %@ with UUID: %s", v33, 0x16u);
      sub_100009A04(v34, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v35);
    }

    else
    {

      v29(v28, v4);
    }

    swift_errorRetain();
    sub_100408FF8();
  }
}

void sub_1004074AC()
{
  sub_100005EF4();
  v206 = v0;
  sub_10000691C();
  v194 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v193 = v1;
  __chkstk_darwin(v2);
  sub_100007FDC();
  v190 = v4 - v3;
  sub_10000D414();
  v192 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v191 = v5;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v189 = v8 - v7;
  sub_10000D414();
  v183 = type metadata accessor for Locale();
  sub_100007FEC();
  v182 = v9;
  __chkstk_darwin(v10);
  sub_100007BAC();
  v180 = v11 - v12;
  sub_100006838();
  __chkstk_darwin(v13);
  sub_10000C1C4();
  v181 = v14;
  sub_10000D414();
  v15 = type metadata accessor for URL();
  sub_100007FEC();
  v202 = v16;
  __chkstk_darwin(v17);
  sub_100007BAC();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  v24 = v179 - v23;
  __chkstk_darwin(v22);
  v26 = v179 - v25;
  v188 = type metadata accessor for URL.DirectoryHint();
  sub_100007FEC();
  v187 = v27;
  __chkstk_darwin(v28);
  sub_100007FDC();
  v186 = v30 - v29;
  v31 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v32 = sub_100007BF0(v31);
  __chkstk_darwin(v32);
  sub_100007BAC();
  v199 = (v33 - v34);
  sub_100006838();
  __chkstk_darwin(v35);
  v198 = v179 - v36;
  sub_100006838();
  __chkstk_darwin(v37);
  sub_10000C1C4();
  v205 = v38;
  v39 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v40 = sub_100007BF0(v39);
  __chkstk_darwin(v40);
  sub_100007BAC();
  v197 = (v41 - v42);
  sub_100006838();
  __chkstk_darwin(v43);
  sub_10000C1C4();
  v203 = v44;
  sub_10000D414();
  v45 = type metadata accessor for UUID();
  sub_100007FEC();
  v207 = v46;
  __chkstk_darwin(v47);
  sub_100008DE4();
  v196 = v48;
  v195 = v49;
  __chkstk_darwin(v50);
  v52 = v179 - v51;
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  v54 = sub_10000AF9C(v53, qword_1006BA640);
  v55 = v0;
  v204 = v54;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();

  v58 = os_log_type_enabled(v56, v57);
  v200 = v26;
  v201 = v15;
  v184 = v20;
  v185 = v24;
  if (v58)
  {
    v59 = sub_100005274();
    v60 = sub_100005E84();
    v209 = v60;
    *v59 = 136315138;
    v215 = v55;
    type metadata accessor for AudioCallRecordingSession(0);
    v61 = v55;
    v62 = String.init<A>(reflecting:)();
    v64 = v52;
    v65 = sub_10002741C(v62, v63, &v209);

    *(v59 + 4) = v65;
    v52 = v64;
    v67 = v205;
    v66 = v206;
    _os_log_impl(&_mh_execute_header, v56, v57, "Update tokens for %s", v59, 0xCu);
    sub_100009B7C(v60);
    sub_100009ED0();

    sub_10000EA64();
  }

  else
  {

    v67 = v205;
    v66 = v206;
  }

  v68 = v203;
  v69 = OBJC_IVAR___CSDAudioCallRecordingSession_currentMessageUUID;
  sub_100005298(&v55[OBJC_IVAR___CSDAudioCallRecordingSession_currentMessageUUID], &v215);
  sub_10003A220(&v55[v69], v68, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v68, 1, v45) != 1)
  {
    v75 = v55;
    v76 = *(v207 + 32);
    v76(v52, v68, v45);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v179[0] = Strong;
      v78 = v197;
      v79 = sub_100016FF8();
      v203 = v80;
      (v80)(v79);
      sub_10000AF74(v78, 0, 1, v45);
      v81 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_currentlyEndingRecordingDueToUpdate;
      swift_beginAccess();
      v82 = v78;
      v83 = v67;
      sub_1000432B0(v82, &v66[v81], &unk_1006A3DD0, &unk_10057C9D0);
      swift_endAccess();
      v84 = sub_100403C68();
      v85 = v52;
      v86 = v45;
      if (v84)
      {
        v87 = v84;
        v88 = v55;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v90 = v196;
        v203(v196, v85, v86);
        v91 = (*(v207 + 80) + 16) & ~*(v207 + 80);
        v92 = swift_allocObject();
        v76((v92 + v91), v90, v86);
        v213 = sub_10040A1A8;
        v214 = v92;
        sub_1000152E4();
        v210 = 1107296256;
        sub_100007DFC();
        v211 = v93;
        v212 = &unk_10062F3A0;
        v94 = _Block_copy(&v209);

        [v87 endMediaRequestWithUUID:isa completion:v94];
        _Block_release(v94);

        v75 = v88;
        v83 = v205;
      }

      v179[1] = v85;
      v203 = v86;
      v95 = v198;
      sub_10029FC2C();
      v96 = v201;
      if (sub_100015468(v95, 1, v201) == 1)
      {
        sub_100009A04(v95, &unk_1006A52C0, &unk_10057D930);
        sub_1000053AC();
        v98 = v202;
      }

      else
      {
        v208 = *(*&v75[OBJC_IVAR___CSDAudioCallRecordingSession_messageUUIDs] + 16);
        sub_10040A154();
        v209 = BinaryInteger.description.getter();
        v210 = v108;
        v109 = v187;
        v110 = v186;
        v111 = v188;
        (*(v187 + 104))(v186, enum case for URL.DirectoryHint.inferFromPath(_:), v188);
        sub_10001E364();
        URL.appending<A>(path:directoryHint:)();
        (*(v109 + 8))(v110, v111);

        v98 = v202;
        (*(v202 + 8))(v95, v96);
        sub_1000053AC();
      }

      v112 = v206;
      v113 = v199;
      sub_10000AF74(v83, v97, 1, v96);
      sub_10003A220(v83, v113, &unk_1006A52C0, &unk_10057D930);
      if (sub_100015468(v113, 1, v96) == 1)
      {
        sub_100009A04(v113, &unk_1006A52C0, &unk_10057D930);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.error.getter();
        if (sub_10000A648(v115))
        {
          sub_100017E10();
          v116 = swift_slowAlloc();
          sub_100008944(v116);
          sub_100008A90(&_mh_execute_header, v117, v118, "Unable to create a sandbox directory while updating recording tokens. Treating recording as ended");
          sub_100009ED0();
        }

        v119 = *&v112[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
        if (v119)
        {
          sub_100006890();
          v120 = swift_allocObject();
          *(v120 + 16) = v112;
          v213 = sub_10040A0F8;
          v214 = v120;
          sub_1000152E4();
          v210 = 1107296256;
          sub_10000A600();
          v211 = v121;
          v212 = &unk_10062F2B0;
          v122 = _Block_copy(&v209);
          v123 = v112;
          v124 = v119;
          v125 = v189;
          static DispatchQoS.unspecified.getter();
          v208 = _swiftEmptyArrayStorage;
          sub_10000A438();
          sub_10000F108(v126, v127, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
          sub_1000057D0();
          v128 = v190;
          v129 = v194;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          sub_10040A5D8();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v122);
          sub_1000186A0();

          sub_10003DC28();
          v131(v128, v129);
          sub_10003DC28();
          v132(v125, v192);
          sub_100009A04(v83, &unk_1006A52C0, &unk_10057D930);
          sub_10001AC74();
          v134(v86, v203);

          goto LABEL_35;
        }

        sub_1000186A0();

        v136 = v83;
      }

      else
      {
        v86 = v200;
        (*(v98 + 32))(v200, v113, v96);
        URL.path.getter();
        v133 = objc_allocWithZone(CSDSandboxExtensionDirectory);
        v137 = sub_10040A024();
        sub_100006AF0(0, &qword_1006AAF60, TUSandboxExtendedURL_ptr);
        v199 = v137;
        v138 = [v137 URL];
        v139 = v185;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v140 = sub_1004064CC(v139, 1);
        v141 = sub_100006AF0(0, &qword_1006AAF68, TUMomentsMediaRecordRequest_ptr);
        sub_1000186A0();
        v143 = v142;
        v144 = v140;
        v197 = v143;
        v198 = v144;
        v195 = v141;
        v145 = sub_100406570(v143, v144);
        v146 = v180;
        static Locale.current.getter();
        v147 = v181;
        LanguageManager.mappedASRLocale(for:useCase:)();
        v148 = *(v182 + 8);
        v149 = v146;
        v150 = v183;
        v148(v149, v183);
        LanguageManager.languageIdentifier(for:)();
        v148(v147, v150);
        v151 = String._bridgeToObjectiveC()();
        v152 = v202;

        [v145 setLocaleIdentifier:v151];

        v153 = *(v152 + 16);
        v154 = v184;
        v155 = sub_100016FF8();
        v153(v155);
        v156 = v145;
        v157 = Logger.logObject.getter();
        v158 = static os_log_type_t.info.getter();

        v159 = os_log_type_enabled(v157, v158);
        v196 = v156;
        if (v159)
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v208 = v156;
          v209 = v161;
          *v160 = 136315394;
          v162 = v156;
          v163 = String.init<A>(reflecting:)();
          v165 = sub_10002741C(v163, v164, &v209);

          *(v160 + 4) = v165;
          *(v160 + 12) = 2080;
          (v153)(v185, v154, v201);
          v166 = String.init<A>(reflecting:)();
          v86 = v167;
          v168 = *(v202 + 8);
          v168(v154, v201);
          v169 = sub_10002741C(v166, v86, &v209);
          sub_1000053AC();

          *(v160 + 14) = v169;
          _os_log_impl(&_mh_execute_header, v157, v158, "Starting media request for update tokens %s to directory %s", v160, 0x16u);
          swift_arrayDestroy();
          v96 = v201;
          sub_100009ED0();

          sub_100009ED0();

          v170 = v205;
        }

        else
        {

          v168 = *(v152 + 8);
          v168(v154, v96);
          v170 = v205;
          sub_1000053AC();
        }

        v171 = v206;
        v172 = sub_100403C68();
        if (v172)
        {
          v173 = v172;
          sub_100006890();
          v174 = swift_allocObject();
          *(v174 + 16) = v171;
          v213 = sub_10040A114;
          v214 = v174;
          sub_1000152E4();
          v210 = 1107296256;
          sub_100035BE0();
          v211 = v175;
          v212 = &unk_10062F350;
          v176 = _Block_copy(&v209);
          v177 = v171;

          v178 = v196;
          [v173 startMediaRequest:v196 completion:v176];
          _Block_release(v176);
        }

        else
        {
        }

        v168(v200, v96);
        v136 = v170;
      }

      sub_100009A04(v136, &unk_1006A52C0, &unk_10057D930);
      sub_10001AC74();
      v106 = v86;
      v107 = v203;
    }

    else
    {
      v99 = v45;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();
      if (sub_10000A648(v101))
      {
        sub_100017E10();
        v102 = swift_slowAlloc();
        sub_100008944(v102);
        sub_100008A90(&_mh_execute_header, v103, v104, "No current call for recording session, cannot update tokens");
        sub_100009ED0();
      }

      sub_10001AC74();
      v106 = v52;
      v107 = v99;
    }

    v105(v106, v107);
    goto LABEL_35;
  }

  sub_100009A04(v68, &unk_1006A3DD0, &unk_10057C9D0);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  if (sub_10000A648(v71))
  {
    sub_100017E10();
    v72 = swift_slowAlloc();
    sub_100008944(v72);
    sub_100008A90(&_mh_execute_header, v73, v74, "No current messageUUID, cannot update tokens");
    sub_100009ED0();
  }

LABEL_35:
  sub_100005EDC();
}

void sub_100408824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0B40 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA640);
    (*(v5 + 16))(v7, a2, v4);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v11 = 138412546;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      *(v11 + 12) = 2080;
      sub_10000F108(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v5 + 8))(v7, v4);
      v17 = sub_10002741C(v14, v16, &v19);

      *(v11 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error while peforming end media request (due to token update) %@ with UUID: %s", v11, 0x16u);
      sub_100009A04(v12, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v18);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

void sub_100408B1C()
{
  sub_100005EF4();
  v35 = v1;
  v36 = v2;
  v34[1] = v3;
  v5 = v4;
  v37 = v6;
  v8 = v7;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v39 = v9;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v38 = sub_100007CD8();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  sub_10000C4C4();
  v14 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v15 = sub_100005EB4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  v21 = v34 - v20;
  v22 = *&v5[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
  if (v22)
  {
    sub_10003A220(v8, v21, &unk_1006A3DD0, &unk_10057C9D0);
    v23 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v5;
    sub_100286068(v21, v25 + v23);
    *(v25 + v24) = v37;
    v41[4] = v35;
    v41[5] = v25;
    sub_100009FE4();
    v41[1] = 1107296256;
    sub_10000A600();
    v41[2] = v26;
    v41[3] = v36;
    v27 = _Block_copy(v41);
    v28 = v22;
    v29 = v5;
    swift_errorRetain();
    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_10000A438();
    sub_10000F108(v30, v31, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_10000F310();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100008AB0();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    v32 = sub_100007764();
    v33(v32);
    (*(v12 + 8))(v0, v38);
  }

  sub_100005EDC();
}

uint64_t sub_100408DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();
  sub_10003A220(v9 + a1, v15, &qword_1006AAF50, &unk_100584CC0);
  if (!v16)
  {
    return sub_100009A04(v15, &qword_1006AAF50, &unk_100584CC0);
  }

  sub_100009AB0(v15, v14);
  sub_100009A04(v15, &qword_1006AAF50, &unk_100584CC0);
  sub_100009B14(v14, v14[3]);
  v10 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_currentlyEndingRecordingDueToUpdate;
  swift_beginAccess();
  sub_10003A220(a1 + v10, v8, &unk_1006A3DD0, &unk_10057C9D0);
  if (a3)
  {
    v11 = _convertErrorToNSError(_:)();
  }

  else
  {
    v11 = 0;
  }

  sub_1003E7BBC(v8, a2, v11);

  sub_100009A04(v8, &unk_1006A3DD0, &unk_10057C9D0);
  return sub_100009B7C(v14);
}

uint64_t sub_100408FA0(uint64_t a1)
{
  sub_10040A22C();
  swift_allocError();
  sub_100408FF8();
}

void sub_100408FF8()
{
  sub_100005EF4();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_100007FDC();
  v3 = sub_100007CD8();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  sub_10000C4C4();
  v7 = *&v0[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
  if (v7)
  {
    sub_100006890();
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v17[4] = sub_10040A0F0;
    v17[5] = v8;
    sub_100009FE4();
    v17[1] = 1107296256;
    sub_10000A600();
    v17[2] = v9;
    v17[3] = &unk_10062F260;
    v10 = _Block_copy(v17);
    v11 = v7;
    v12 = v0;
    static DispatchQoS.unspecified.getter();
    sub_10000A438();
    sub_10000F108(v13, v14, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_10000F310();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100008AB0();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);

    v15 = sub_100007764();
    v16(v15);
    (*(v5 + 8))(v1, v3);
  }

  sub_100005EDC();
}

void sub_100409208(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-1] - v3;
  v5 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout;
  if (*(a1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider_endTimeout))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(a1 + v5) = 0;

  v6 = type metadata accessor for UUID();
  sub_10000AF74(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_currentlyEndingRecordingDueToUpdate;
  swift_beginAccess();
  sub_1000432B0(v4, a1 + v7, &unk_1006A3DD0, &unk_10057C9D0);
  swift_endAccess();
  v8 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  swift_beginAccess();
  sub_10003A220(v8 + a1, v12, &qword_1006AAF50, &unk_100584CC0);
  if (v13)
  {
    sub_100009AB0(v12, v11);
    sub_100009A04(v12, &qword_1006AAF50, &unk_100584CC0);
    sub_100009B14(v11, v11[3]);
    sub_10000AF74(v4, 1, 1, v6);
    sub_1003E856C();
    sub_100009A04(v4, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009B7C(v11);
  }

  else
  {
    sub_100009A04(v12, &qword_1006AAF50, &unk_100584CC0);
  }

  v9 = *(a1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController);
  *(a1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController) = 0;
}

id sub_100409444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordingProvider(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RecordingProvider(uint64_t a1)
{
  result = qword_1006AAED8;
  if (!qword_1006AAED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004095A8(uint64_t a1)
{
  type metadata accessor for LanguageManager();
  if (v1 <= 0x3F)
  {
    sub_100296D6C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004096A4()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v4);
  sub_100006688();
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = type metadata accessor for UUID();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007BAC();
  v56 = (v12 - v13);
  sub_100006838();
  __chkstk_darwin(v14);
  v58 = &v53 - v15;
  sub_100006838();
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000075F0(v19, qword_1006BA640);
  v20 = v3;
  v55 = v0;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v57 = v20;
  if (v23)
  {
    v24 = sub_100005274();
    v54 = v10;
    v25 = v24;
    v26 = sub_100005E84();
    v59 = v20;
    v60[0] = v26;
    *v25 = 136315138;
    sub_100006AF0(0, &qword_1006AAF58, TUMomentsRawVideoMessageDescriptor_ptr);
    v27 = v20;
    v28 = String.init<A>(reflecting:)();
    v30 = sub_10002741C(v28, v29, v60);

    *(v25 + 4) = v30;
    v1 = v0;
    sub_100021FC8(&_mh_execute_header, v21, v22, "Moments controller reported that recording is finished %s");
    sub_100009B7C(v26);
    sub_100009ED0();

    v10 = v54;
    sub_100009ED0();
  }

  v31 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_currentlyEndingRecordingDueToUpdate;
  sub_100005298(v1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider_currentlyEndingRecordingDueToUpdate, v60);
  sub_10003A220(v1 + v31, v7, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v7, 1, v8) == 1)
  {
    sub_100009A04(v7, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_11:
    sub_100408FF8();
    goto LABEL_14;
  }

  (*(v10 + 32))(v18, v7, v8);
  v32 = [v57 uuid];
  v33 = v58;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v32) = static UUID.== infix(_:_:)();
  v34 = *(v10 + 8);
  v34(v33, v8);
  if ((v32 & 1) == 0)
  {
    v34(v18, v8);
    goto LABEL_11;
  }

  v35 = *(v10 + 16);
  v36 = v56;
  v35(v56, v18, v8);
  v37 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v38 = sub_10000BAF0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = sub_100005274();
    v57 = v18;
    v41 = v40;
    v42 = sub_100005E84();
    v59 = v42;
    *v41 = 136315138;
    v35(v58, v36, v8);
    String.init<A>(reflecting:)();
    v34(v36, v8);
    v43 = sub_100006C30();
    v46 = sub_10002741C(v43, v44, v45);

    *(v41 + 4) = v46;
    sub_1000079AC();
    _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
    sub_100009B7C(v42);
    sub_100009ED0();

    sub_10000EA64();

    v52 = v57;
  }

  else
  {

    v34(v36, v8);
    v52 = v18;
  }

  v34(v52, v8);
LABEL_14:
  sub_100005EDC();
}

void sub_100409BB0()
{
  sub_100005EF4();
  v2 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v3);
  sub_100007FDC();
  v4 = sub_100007CD8();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  sub_10000C4C4();
  if (qword_1006A0B40 != -1)
  {
    sub_1000087BC();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000075F0(v8, qword_1006BA640);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = sub_10000BAF0();
  if (os_log_type_enabled(v11, v12))
  {
    sub_100017E10();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Moments controller server died, ending recording if necessary", v13, 2u);
    sub_100009ED0();
  }

  if (*&v2[OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController])
  {
    v14 = *&v2[OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegateQueue];
    if (v14)
    {
      sub_100006890();
      v15 = swift_allocObject();
      *(v15 + 16) = v2;
      v24[4] = sub_10040A5B4;
      v24[5] = v15;
      sub_100009FE4();
      v24[1] = 1107296256;
      sub_10000A600();
      v24[2] = v16;
      v24[3] = &unk_10062F210;
      v17 = _Block_copy(v24);
      v18 = v14;
      v19 = v2;
      static DispatchQoS.unspecified.getter();
      sub_10000A438();
      sub_10000F108(v20, v21, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      sub_10000F310();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      sub_100008AB0();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);

      v22 = sub_100007764();
      v23(v22);
      (*(v6 + 8))(v1, v4);
    }
  }

  sub_100005EDC();
}

void sub_100409E6C(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v2);
  sub_100006688();
  __chkstk_darwin(v3);
  v5 = &v10[-1] - v4;
  v6 = OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate;
  sub_100005298(OBJC_IVAR____TtC13callservicesd17RecordingProvider_delegate + a1, v11);
  sub_10003A220(v6 + a1, v12, &qword_1006AAF50, &unk_100584CC0);
  if (v13)
  {
    sub_100009AB0(v12, v10);
    sub_100009A04(v12, &qword_1006AAF50, &unk_100584CC0);
    sub_100009B14(v10, v10[3]);
    sub_10000691C();
    v7 = type metadata accessor for UUID();
    sub_10000AF74(v5, 1, 1, v7);
    sub_1003E856C();
    sub_100009A04(v5, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009B7C(v10);
  }

  else
  {
    sub_100009A04(v12, &qword_1006AAF50, &unk_100584CC0);
  }

  v8 = *(a1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController);
  *(a1 + OBJC_IVAR____TtC13callservicesd17RecordingProvider__momentsController) = 0;
}

id sub_10040A024()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithName:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_10040A154()
{
  result = qword_1006AAF70;
  if (!qword_1006AAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAF70);
  }

  return result;
}

void sub_10040A1A8(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_100007BF0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_100408824(a1, v5);
}

unint64_t sub_10040A22C()
{
  result = qword_1006AAF78;
  if (!qword_1006AAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAF78);
  }

  return result;
}

void sub_10040A2A4(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_100005EB4(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100406FA0(a1, v1 + v8, v9);
}

uint64_t sub_10040A388()
{
  v1 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = type metadata accessor for UUID();
  if (!sub_100015468(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10040A4AC(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100005EB4(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v8, v1 + v7, v9);
}

double sub_10040A5E8@<D0>(uint64_t a1@<X8>)
{
  v30 = 0uLL;
  v32 = 0uLL;
  v31 = _swiftEmptyDictionarySingleton;
  v2 = objc_opt_self();
  v3 = [v2 tu_defaults];
  v4 = sub_10000F848();
  v5 = [v3 stringForKey:v4];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *&v30 = v6;
    *(&v30 + 1) = v8;
  }

  v9 = [v2 tu_defaults];
  v10 = sub_100015304();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v24 = v28;
  v25 = v29;
  if (*(&v29 + 1))
  {
    sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
    if (swift_dynamicCast())
    {
      v12 = v27;
    }

    else
    {
      v12 = Dictionary.init(dictionaryLiteral:)();
    }

    v31 = v12;
  }

  else
  {
    sub_10004975C(&v24);
  }

  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA5F8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    swift_beginAccess();
    v24 = v30;
    v25 = __PAIR128__(v32, v31);
    v26 = *(&v32 + 1);

    v18 = String.init<A>(reflecting:)();
    v20 = sub_10002741C(v18, v19, &v27);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "initialized Defaults: %s", v16, 0xCu);
    sub_100009B7C(v17);
    sub_100005F40(v17);
    sub_100005F40(v16);
  }

  swift_beginAccess();
  sub_10040A914();
  swift_endAccess();
  v21 = v31;
  result = *&v30;
  v23 = v32;
  *a1 = v30;
  *(a1 + 16) = v21;
  *(a1 + 24) = v23;
  return result;
}

void sub_10040A914()
{
  v1 = type metadata accessor for SHA256();
  sub_100007FEC();
  v55 = v2;
  __chkstk_darwin(v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SHA256Digest();
  sub_100007FEC();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = type metadata accessor for URL();
  sub_100007FEC();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  v20 = Data.init(contentsOf:options:)();
  v50 = v0;
  v51 = v8;
  v25 = *(v16 + 8);
  v52 = v6;
  v26 = v20;
  v28 = v27;
  v25(v19, v14);
  sub_1003FD6D4(&qword_1006A3848, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100290AC4(v26, v28);
  sub_1003FD638(v26, v28, v5);
  v48 = v28;
  v49 = v26;
  sub_100049B14(v26, v28);
  dispatch thunk of HashFunction.finalize()();
  (v55[1])(v5, v1);
  v29 = v51;
  (*(v51 + 16))(v54, v13, v52);
  sub_1003FD6D4(&unk_1006AAA60, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  dispatch thunk of Sequence.makeIterator()();
  v30 = v57;
  v55 = v56;
  v31 = v56[2];
  v32 = _swiftEmptyArrayStorage;
  if (v57 == v31)
  {
LABEL_6:
    (*(v29 + 8))(v13, v52);

    v56 = v32;
    sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    sub_100296FEC();
    v33 = BidirectionalCollection<>.joined(separator:)();
    v35 = v34;
    sub_100049B14(v49, v48);

    v36 = v50;

    *(v36 + 24) = v33;
    *(v36 + 32) = v35;
  }

  else
  {
    v54 = (v55 + 4);
    v53 = xmmword_10057D690;
    v37 = v57;
    while ((v30 & 0x8000000000000000) == 0)
    {
      if (v37 >= v55[2])
      {
        goto LABEL_17;
      }

      v38 = v54[v37];
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v39 = swift_allocObject();
      *(v39 + 16) = v53;
      *(v39 + 56) = &type metadata for UInt8;
      *(v39 + 64) = &protocol witness table for UInt8;
      *(v39 + 32) = v38;
      v40 = String.init(format:_:)();
      v42 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100017840();
        v32 = v45;
      }

      v43 = v32[2];
      if (v43 >= v32[3] >> 1)
      {
        sub_100017840();
        v32 = v46;
      }

      ++v37;
      v32[2] = v43 + 1;
      v44 = &v32[2 * v43];
      v44[4] = v40;
      v44[5] = v42;
      if (v31 == v37)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    sub_1000080B0(&qword_1006A0B28);
    v21 = type metadata accessor for Logger();
    sub_10000AF9C(v21, qword_1006BA5F8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "couldn't read contents of toneURL", v24, 2u);
      sub_100005F40(v24);
    }
  }
}