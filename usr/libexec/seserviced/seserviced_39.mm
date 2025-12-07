uint64_t sub_10034F940()
{
  type metadata accessor for AlishaRKE(0);
  swift_allocObject();
  result = sub_10034F980();
  qword_10051B820 = result;
  return result;
}

uint64_t sub_10034F980()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_notificationsToBeSuppressed) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_passiveEntryState) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_peersAvailableToSubscribe) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_rkeOEMProprietaryDataMaxLength) = 64;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_rkeTimeoutDefaultMilliseconds) = 5000;
  *(v0 + OBJC_IVAR____TtC10seserviced9AlishaRKE_currentExecutionIdentifier) = 0;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_100357FA8;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004D16A8;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_10034FB20()
{
  v105 = sub_100068FC4(&qword_10050BC88, &qword_100417120);
  __chkstk_darwin(v105);
  v104 = &v99 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v103 = &v99 - v3;
  v111 = sub_100068FC4(&qword_10050BC90, &qword_100417128);
  __chkstk_darwin(v111);
  v110 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v109 = &v99 - v6;
  v7 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v101 = v0;
  v8 = *(v0 + v7);
  if (v8 >> 62)
  {
    goto LABEL_80;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = _swiftEmptyArrayStorage;
    if (i)
    {
      *&v119 = _swiftEmptyArrayStorage;

      sub_10019F4C4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_82;
      }

      v11 = 0;
      v113 = 0;
      v10 = v119;
      v112 = v8 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v112 + 16))
          {
            goto LABEL_79;
          }

          v13 = *(v8 + 8 * v11 + 32);
        }

        v117[0] = v13;
        v14 = v113;
        sub_100356F30(v117, v118);
        v113 = v14;

        v15 = *&v118[0];
        *&v119 = v10;
        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          sub_10019F4C4((v16 > 1), v17 + 1, 1);
          v10 = v119;
        }

        v10[2] = v17 + 1;
        v10[v17 + 4] = v15;
        ++v11;
        if (v12 == i)
        {

          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_67;
    }

    v113 = 0;
LABEL_16:
    v120 = sub_100068FC4(&unk_100503EC0, &unk_100417130);
    *&v119 = v10;
    sub_100075D50(&v119, v118);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117[0] = _swiftEmptyDictionarySingleton;
    sub_100315178(v118, 0xD000000000000012, 0x800000010046FB90, isUniquelyReferenced_nonNull_native);
    v100 = v117[0];
    v8 = OBJC_IVAR____TtC10seserviced9AlishaRKE_passiveEntryState;
    v19 = v101;
    swift_beginAccess();
    v20 = *(v19 + v8);
    v21 = *(v20 + 16);
    v22 = _swiftEmptyArrayStorage;
    if (!v21)
    {
      break;
    }

    *&v119 = _swiftEmptyArrayStorage;

    sub_10019FB50(0, v21, 0);
    v22 = v119;
    v23 = v20 + 64;
    v24 = _HashTable.startBucket.getter();
    v25 = 0;
    v26 = *(v20 + 36);
    v102 = v20 + 72;
    v106 = v21;
    v108 = v20 + 64;
    v107 = v26;
    while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << *(v20 + 32))
    {
      v29 = v24 >> 6;
      v8 = 1 << v24;
      if ((*(v23 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
      {
        goto LABEL_68;
      }

      if (v26 != *(v20 + 36))
      {
        goto LABEL_69;
      }

      v112 = v25;
      v30 = *(v20 + 48);
      v31 = type metadata accessor for UUID();
      v32 = *(v31 - 8);
      v33 = v109;
      (*(v32 + 16))(v109, v30 + *(v32 + 72) * v24, v31);
      LOBYTE(v30) = *(*(v20 + 56) + v24);
      v34 = v110;
      (*(v32 + 32))(v110, v33, v31);
      *(v34 + *(v111 + 48)) = v30;
      v35 = UUID.uuidString.getter();
      v37 = v36;
      LOBYTE(v118[0]) = v30;
      v38 = String.init<A>(describing:)();
      v40 = v39;
      sub_100075768(v34, &qword_10050BC90, &qword_100417128);
      *&v119 = v22;
      v42 = v22[2];
      v41 = v22[3];
      v43 = v22;
      if (v42 >= v41 >> 1)
      {
        v99 = v35;
        sub_10019FB50((v41 > 1), v42 + 1, 1);
        v35 = v99;
        v43 = v119;
      }

      v43[2] = v42 + 1;
      v44 = &v43[4 * v42];
      v44[4] = v35;
      v44[5] = v37;
      v44[6] = v38;
      v44[7] = v40;
      v27 = 1 << *(v20 + 32);
      if (v24 >= v27)
      {
        goto LABEL_70;
      }

      v23 = v108;
      v45 = *(v108 + 8 * v29);
      if ((v45 & v8) == 0)
      {
        goto LABEL_71;
      }

      v22 = v43;
      LODWORD(v26) = v107;
      if (v107 != *(v20 + 36))
      {
        goto LABEL_72;
      }

      v46 = v45 & (-2 << (v24 & 0x3F));
      if (v46)
      {
        v27 = __clz(__rbit64(v46)) | v24 & 0x7FFFFFFFFFFFFFC0;
        v28 = v112;
      }

      else
      {
        v8 = v29 << 6;
        v47 = v29 + 1;
        v48 = (v102 + 8 * v29);
        while (v47 < (v27 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v8 += 64;
          ++v47;
          if (v50)
          {
            sub_1000937D4(v24, v107, 0);
            v27 = __clz(__rbit64(v49)) + v8;
            goto LABEL_35;
          }
        }

        sub_1000937D4(v24, v107, 0);
LABEL_35:
        v28 = v112;
      }

      v25 = v28 + 1;
      v24 = v27;
      if (v25 == v106)
      {

        goto LABEL_37;
      }
    }

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
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    ;
  }

LABEL_37:
  if (v22[2])
  {
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v51 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v51 = _swiftEmptyDictionarySingleton;
  }

  *&v119 = v51;

  v53 = v113;
  sub_100357BF8(v52, 1, &v119);
  if (v53)
  {
    goto LABEL_82;
  }

  v54 = v119;
  v120 = sub_100068FC4(&qword_100502600, &unk_100417140);
  *&v119 = v54;
  sub_100075D50(&v119, v118);
  v55 = v100;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v116[0] = v55;
  sub_100315178(v118, 0xD000000000000011, 0x800000010046FB50, v56);
  v108 = v116[0];
  v57 = OBJC_IVAR____TtC10seserviced9AlishaRKE_notificationsToBeSuppressed;
  v58 = v101;
  swift_beginAccess();
  v59 = *(v58 + v57);
  v8 = *(v59 + 16);
  v60 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v107 = 0;
    *&v119 = _swiftEmptyArrayStorage;

    sub_10019FB30(0, v8, 0);
    v60 = v119;
    v61 = v59 + 64;
    v62 = _HashTable.startBucket.getter();
    v63 = 0;
    v64 = *(v59 + 36);
    v109 = (v59 + 72);
    v110 = v8;
    v112 = v59 + 64;
    v111 = v64;
    while ((v62 & 0x8000000000000000) == 0 && v62 < 1 << *(v59 + 32))
    {
      v66 = v62 >> 6;
      if ((*(v61 + 8 * (v62 >> 6)) & (1 << v62)) == 0)
      {
        goto LABEL_74;
      }

      if (v64 != *(v59 + 36))
      {
        goto LABEL_75;
      }

      v113 = v63;
      v67 = *(v59 + 48);
      v68 = type metadata accessor for UUID();
      v69 = *(v68 - 8);
      v70 = v103;
      (*(v69 + 16))(v103, v67 + *(v69 + 72) * v62, v68);
      v71 = v59;
      v72 = *(*(v59 + 56) + 2 * v62);
      v73 = v104;
      (*(v69 + 32))(v104, v70, v68);
      *(v73 + *(v105 + 48)) = v72;
      v74 = UUID.uuidString.getter();
      v76 = v75;
      sub_100075768(v73, &qword_10050BC88, &qword_100417120);
      *&v119 = v60;
      v8 = v60[2];
      v77 = v60[3];
      v78 = v60;
      if (v8 >= v77 >> 1)
      {
        sub_10019FB30((v77 > 1), v8 + 1, 1);
        v78 = v119;
      }

      v78[2] = v8 + 1;
      v79 = &v78[3 * v8];
      v79[4] = v74;
      v79[5] = v76;
      *(v79 + 24) = v72;
      v65 = 1 << *(v71 + 32);
      if (v62 >= v65)
      {
        goto LABEL_76;
      }

      v59 = v71;
      v61 = v112;
      v80 = *(v112 + 8 * v66);
      if ((v80 & (1 << v62)) == 0)
      {
        goto LABEL_77;
      }

      v60 = v78;
      LODWORD(v64) = v111;
      if (v111 != *(v59 + 36))
      {
        goto LABEL_78;
      }

      v81 = v80 & (-2 << (v62 & 0x3F));
      if (v81)
      {
        v65 = __clz(__rbit64(v81)) | v62 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v82 = v66 << 6;
        v83 = v66 + 1;
        v84 = &v109[8 * v66];
        while (v83 < (v65 + 63) >> 6)
        {
          v86 = *v84++;
          v85 = v86;
          v82 += 64;
          ++v83;
          if (v86)
          {
            sub_1000937D4(v62, v111, 0);
            v65 = __clz(__rbit64(v85)) + v82;
            goto LABEL_44;
          }
        }

        sub_1000937D4(v62, v111, 0);
      }

LABEL_44:
      v63 = v113 + 1;
      v62 = v65;
      v8 = v110;
      if ((v113 + 1) == v110)
      {

        v53 = v107;
        goto LABEL_61;
      }
    }

    goto LABEL_73;
  }

LABEL_61:
  if (v60[2])
  {
    sub_100068FC4(&unk_10050AA60, &qword_1004151F8);
    v87 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v87 = _swiftEmptyDictionarySingleton;
  }

  *&v119 = v87;

  sub_10035787C(v88, 1, &v119);
  if (!v53)
  {

    v89 = v119;
    v120 = sub_100068FC4(&qword_10050BC98, &unk_100417150);
    *&v119 = v89;
    sub_100075D50(&v119, v118);
    v90 = v108;
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v115[0] = v90;
    sub_100315178(v118, 0xD00000000000001BLL, 0x800000010046FB30, v91);
    v92 = v115[0];
    swift_beginAccess();

    v94 = sub_1003485C0(v93);

    v120 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    *&v119 = v94;
    sub_100075D50(&v119, v118);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v92;
    sub_100315178(v118, 0xD000000000000019, 0x800000010046FB70, v95);
    sub_1001950D4(v114);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v97 = sub_100015DA0("alisharke.state", isa);

    return v97;
  }

LABEL_82:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1003507F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v7 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v6 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v6 >> 60 != 15)
  {
    if (a3 >> 60 != 15)
    {
      v8 = a1;
      sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
      sub_10006A2BC(v7, v6);
      sub_100069E2C(a2, a3);
      v9 = sub_10008FB4C(v7, v6, a2, a3);
      sub_10006A2D0(a2, a3);
      sub_10006A2D0(v7, v6);
      sub_10006A2D0(v7, v6);
      if (v9)
      {
        return *(v8 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
      }

      return 0;
    }

LABEL_7:
    sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
    sub_100069E2C(a2, a3);
    sub_10006A2D0(v7, v6);
    sub_10006A2D0(a2, a3);
    return 0;
  }

  if (a3 >> 60 != 15)
  {
    goto LABEL_7;
  }

  v8 = a1;
  sub_10006A2BC(*(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier), v6);
  sub_100069E2C(a2, a3);
  sub_10006A2D0(v7, v6);
  return *(v8 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
}

uint64_t sub_100350958(void *a1, uint64_t a2, unint64_t a3)
{
  if ([a1 endPointType] != 1)
  {
    return 0;
  }

  v6 = [a1 publicKeyIdentifier];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = sub_10008FB4C(v7, v9, a2, a3);
  sub_10006A178(v7, v9);
  if (!v10)
  {
    return 0;
  }

  result = [a1 bleUUID];
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_100350A24(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    _StringGuts.grow(_:)(54);
    v8._object = 0x8000000100470070;
    v8._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v8);
    sub_100288788(a3, a4);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v9 = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x6F6974636E756620;
    v13._object = 0xEA0000000000206ELL;
    String.append(_:)(v13);
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x206E6F6974636120;
    v15._object = 0xE800000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    sub_100350C40(v7, 5, 0, 0xE000000000000000, 0x80000007uLL);
  }

  return result;
}

void sub_100350C40(uint64_t a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v75 = a2;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v14 = qword_10051B7F0;
    *v13 = qword_10051B7F0;
    (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
    v15 = v14;
    LOBYTE(v14) = _dispatchPreconditionTest(_:)();
    v16 = *(v11 + 8);
    v11 += 8;
    v16(v13, v10);
    if (v14)
    {
      v78 = a3;
      v17 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
      swift_beginAccess();
      v77 = v5;
      v13 = *(v5 + v17);
      v84 = _swiftEmptyArrayStorage;
      v76 = v17;
      if (!(v13 >> 62))
      {
        v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    v19 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier;
    v10 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier;

    if (!v18)
    {
      break;
    }

    v73 = a4;
    v74 = a5;
    a4 = 0;
    v79 = 0;
    v80 = v19;
    v81 = (a1 + v10);
    v82 = v13 & 0xC000000000000001;
    a5 = v13 & 0xFFFFFFFFFFFFFF8;
    while (v82)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a3 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
LABEL_72:
        __break(1u);
LABEL_73:
        v51 = v84;
        a5 = v74;
        a4 = v73;
        goto LABEL_75;
      }

LABEL_14:
      if (*(v10 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) != *(a1 + v19) || *(v10 + 16) != *(a1 + 16))
      {
        goto LABEL_9;
      }

      v20 = *(v10 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
      v11 = *(v10 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
      v21 = *v81;
      v22 = v81[1];
      v23 = v11 >> 62;
      v24 = v22 >> 62;
      if (v11 >> 62 == 3)
      {
        if (v20)
        {
          v25 = 0;
        }

        else
        {
          v25 = v11 == 0xC000000000000000;
        }

        v26 = 0;
        v27 = v25 && v22 >> 62 == 3;
        if (v27 && !v21 && v22 == 0xC000000000000000)
        {
LABEL_51:

          v19 = v80;
          goto LABEL_10;
        }

LABEL_38:
        if (v24 <= 1)
        {
          goto LABEL_39;
        }

        goto LABEL_44;
      }

      if (v23 <= 1)
      {
        if (!v23)
        {
          v26 = BYTE6(v11);
          if (v24 <= 1)
          {
            goto LABEL_39;
          }

          goto LABEL_44;
        }

        LODWORD(v26) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_87;
        }

        v26 = v26;
        goto LABEL_38;
      }

      if (v23 == 2)
      {
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        v30 = __OFSUB__(v28, v29);
        v26 = v28 - v29;
        if (v30)
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
        }

        goto LABEL_38;
      }

      v26 = 0;
      if (v24 <= 1)
      {
LABEL_39:
        if (v24)
        {
          LODWORD(v31) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_82;
          }

          v31 = v31;
        }

        else
        {
          v31 = BYTE6(v22);
        }

        goto LABEL_46;
      }

LABEL_44:
      if (v24 != 2)
      {
        if (!v26)
        {
          goto LABEL_51;
        }

LABEL_8:
        v19 = v80;
        goto LABEL_9;
      }

      v33 = *(v21 + 16);
      v32 = *(v21 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_83;
      }

LABEL_46:
      if (v26 != v31)
      {
        goto LABEL_8;
      }

      if (v26 < 1)
      {
        goto LABEL_51;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v35 = *(v20 + 16);
          v34 = *(v20 + 24);
          v71 = v35;
          v72 = v21;
          v70 = v34;
          v36 = __DataStorage._bytes.getter();
          if (v36)
          {
            v69 = v36;
            v37 = __DataStorage._offset.getter();
            v38 = v71;
            if (__OFSUB__(v71, v37))
            {
              goto LABEL_90;
            }

            v39 = v71 - v37 + v69;
          }

          else
          {
            v39 = 0;
            v38 = v71;
          }

          if (__OFSUB__(v70, v38))
          {
            goto LABEL_89;
          }

          v5 = (v11 & 0x3FFFFFFFFFFFFFFFLL);
          v11 = v39;
          v71 = v70 - v38;
          __DataStorage._length.getter();
          v48 = v11;
LABEL_68:
          v49 = v22;
          v50 = v79;
          sub_10019F024(v48, v72, v49, v85);
          v79 = v50;
          v19 = v80;
          if (v85[0])
          {
LABEL_69:

            goto LABEL_10;
          }

          goto LABEL_9;
        }

        memset(v85, 0, 14);
      }

      else
      {
        if (v23)
        {
          v40 = v20;
          v41 = v20 >> 32;
          v42 = v41 < v40;
          v43 = v41 - v40;
          if (v42)
          {
            goto LABEL_88;
          }

          v70 = v40;
          v71 = v43;
          v72 = v21;
          v44 = __DataStorage._bytes.getter();
          if (v44)
          {
            v69 = v44;
            v45 = __DataStorage._offset.getter();
            if (__OFSUB__(v70, v45))
            {
              goto LABEL_91;
            }

            v70 = v70 - v45 + v69;
          }

          else
          {
            v70 = 0;
          }

          v5 = (v11 & 0x3FFFFFFFFFFFFFFFLL);
          __DataStorage._length.getter();
          v48 = v70;
          goto LABEL_68;
        }

        v85[0] = *(v10 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
        LOWORD(v85[1]) = v11;
        BYTE2(v85[1]) = BYTE2(v11);
        BYTE3(v85[1]) = BYTE3(v11);
        BYTE4(v85[1]) = BYTE4(v11);
        BYTE5(v85[1]) = BYTE5(v11);
      }

      v46 = v22;
      v47 = v79;
      sub_10019F024(v85, v21, v46, &v83);
      v79 = v47;
      v19 = v80;
      if (v83)
      {
        goto LABEL_69;
      }

LABEL_9:
      v5 = &v84;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = v84[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_10:
      ++a4;
      if (a3 == v18)
      {
        goto LABEL_73;
      }
    }

    if (a4 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v13 + 8 * a4 + 32);

      a3 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        goto LABEL_72;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    swift_once();
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_75:
  v52 = v19;

  *(v77 + v76) = v51;

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v85[0] = v56;
    *v55 = 136315138;
    v57 = v78;
    *(v55 + 4) = sub_1002FFA0C(v78, a4, v85);
    _os_log_impl(&_mh_execute_header, v53, v54, "%s", v55, 0xCu);
    sub_1000752F4(v56);
  }

  else
  {

    v57 = v78;
  }

  v58 = (a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
  v59 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
  if (v59)
  {
    v60 = v58[1];

    v59(v75 | 0x100u);
    sub_1000B2A4C(v59, v60);
    v61 = *v58;
    v62 = v58[1];
    *v58 = 0;
    v58[1] = 0;
    sub_1000B2A4C(v61, v62);
  }

  sub_100359E48(a1, v57, a4);
  v63 = objc_opt_self();
  v64 = *(a1 + v52);
  v65 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType);
  v66 = *(a1 + 16);
  v67 = String._bridgeToObjectiveC()();
  sub_10004D990(v63, 1, v64, v66, a5, v65, v67);
}

void sub_100351414(NSObject *a1, int a2, void (*a3)(uint64_t, char *), char *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v167 = a7;
  v165 = a6;
  v164 = a5;
  LODWORD(isa) = a2;
  v168 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v150 = &v147 - v14;
  __chkstk_darwin(v15);
  v151 = &v147 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v21 - 8);
  v152 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v166 = &v147 - v24;
  v160 = type metadata accessor for SHA256();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for SHA256Digest();
  v162 = *(v163 - 1);
  __chkstk_darwin(v163);
  v161 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v28 = *(&v27->isa + a3);
  v156 = v9;
  v157 = v10;
  v149 = v12;
  v170 = a3;
  v155 = v17;
  v154 = v18;
  v153 = v20;
  v171 = a4;
  if (v28 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v29)
  {
    v30 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v172 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = (v30 + 1);
        if (__OFADD__(v30, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_57;
        }

        v172 = *(v28 + 8 * v30 + 32);

        v27 = (v30 + 1);
        if (__OFADD__(v30, 1))
        {
          goto LABEL_13;
        }
      }

      a3 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer;
      v20 = v172;
      if (static UUID.== infix(_:_:)())
      {
        break;
      }

      ++v30;
      if (v27 == v29)
      {
        goto LABEL_14;
      }
    }

    v148 = a3;

    if (isa)
    {
      v178 = 0;
      v179 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v178 = 0xD000000000000011;
      v179 = 0x800000010046FF50;
      LOBYTE(v182) = v168;
      sub_100075400();
      v38._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v38);

      sub_100350C40(v172, 2, v178, v179, 0x80000002uLL);

      return;
    }

    v39 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state;
    v40 = v172;
    if (v172[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state] != 2)
    {
      v178 = 0;
      v179 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);
      v46._countAndFlagsBits = 0xD00000000000001ELL;
      v46._object = 0x800000010046FF10;
      String.append(_:)(v46);
      v182 = sub_100288788(*(v40 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier), *(v40 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8));
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v47 = BidirectionalCollection<>.joined(separator:)();
      v49 = v48;

      v50._countAndFlagsBits = v47;
      v50._object = v49;
      String.append(_:)(v50);

      v51._countAndFlagsBits = 0x74617473206E6920;
      v51._object = 0xEA00000000002065;
      String.append(_:)(v51);
      LOBYTE(v182) = *(v40 + v39);
      _print_unlocked<A, B>(_:_:)();
      sub_100350C40(v40, 2, v178, v179, 0x80000001uLL);

      return;
    }

    v182 = Data.subdata(in:)();
    v183 = v41;
    LOWORD(v176) = bswap32(*(v40 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier)) >> 16;
    v180 = &type metadata for UnsafeRawBufferPointer;
    v181 = &protocol witness table for UnsafeRawBufferPointer;
    v178 = &v176;
    v179 = &v176 + 2;
    sub_1000752B0(&v178, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v178);
    LOBYTE(v176) = *(v40 + 16);
    v180 = &type metadata for UnsafeRawBufferPointer;
    v181 = &protocol witness table for UnsafeRawBufferPointer;
    v178 = &v176;
    v179 = &v176 + 1;
    sub_1000752B0(&v178, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(&v178);
    v165 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
    if (*(v167 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) >= 0x300u)
    {
      if (*(v40 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1) == 1)
      {
        v42 = 0x800000010046FF70;
        v43 = v40;
        v44 = 0xD00000000000001CLL;
        v45 = 2147483649;
        goto LABEL_38;
      }

      LOBYTE(v176) = *(v40 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier);
      v180 = &type metadata for UnsafeRawBufferPointer;
      v181 = &protocol witness table for UnsafeRawBufferPointer;
      v178 = &v176;
      v179 = &v176 + 1;
      sub_1000752B0(&v178, &type metadata for UnsafeRawBufferPointer);
      Data._Representation.append(contentsOf:)();
      sub_1000752F4(&v178);
    }

    v164 = v39;
    v52 = *(v40 + 24);
    v53 = *(v40 + 32);
    sub_100069E2C(v52, v53);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v52, v53);
    v54 = *(v40 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
    v55 = *(v40 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
    sub_100069E2C(v54, v55);
    v56.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v54, v55);
    v58 = v182;
    v57 = v183;
    sub_10035A294(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v59 = v158;
    v60 = v160;
    dispatch thunk of HashFunction.init()();
    sub_100069E2C(v58, v57);
    sub_100357FC4(v58, v57, v59);
    sub_10006A178(v58, v57);
    v61 = v161;
    dispatch thunk of HashFunction.finalize()();
    (*(v159 + 8))(v59, v60);
    v62 = v163;
    v180 = v163;
    v181 = sub_10035A294(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v63 = sub_1000B9634(&v178);
    v64 = v162;
    (*(v162 + 16))(v63, v61, v62);
    sub_1000752B0(&v178, v180);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v64 + 8))(v61, v62);
    v65 = v176;
    v66 = v177;
    sub_1000752F4(&v178);
    v67.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v65, v66);
    v68 = 0;
    v69 = *(v40 + 48);
    if (v69 >> 60 != 15)
    {
      v70 = *(v40 + 40);
      sub_100069E2C(v70, *(v40 + 48));
      v68 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A2D0(v70, v69);
    }

    v71 = isa;
    v72 = sub_10004851C(v168, isa, v56.super.isa, v67.super.isa, v68, 0);

    if (*(v40 + 48) >> 60 != 15)
    {
      v73 = *&v171[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier];
      v74 = *&v171[OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8];
      v75 = *&v171[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier];
      v76 = *&v171[OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8];
      sub_10006A2BC(v73, v74);
      sub_10006A2BC(v75, v76);
      sub_1003375E0(0xD000000000000042, 0x800000010046FFC0, v73, v74, v75, v76, 0);
      sub_10006A2D0(v75, v76);
      sub_10006A2D0(v73, v74);
    }

    if (!v72)
    {
      v44 = 0xD000000000000027;
      v42 = 0x800000010046FF90;
      v43 = v40;
      v45 = 2147483651;
LABEL_38:
      sub_100350C40(v43, 2, v44, v42, v45);

      goto LABEL_64;
    }

    isa = 0;
    v77 = [v72 signedData];
    v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    v176 = v78;
    v177 = v80;
    v81 = [v72 signature];
    v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;

    v85 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v82, v84);
    v86 = objc_opt_self();
    v87 = [v86 TLVWithTag:158 value:v85];

    if (v87)
    {
      v171 = v72;
      v88 = [v87 asData];

      if (v88)
      {
        v89 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        Data.append(_:)();
        sub_10006A178(v89, v91);
        v92 = v176;
        v93 = v177;
        sub_100069E2C(v176, v177);
        v94 = Data._bridgeToObjectiveC()().super.isa;
        sub_10006A178(v92, v93);
        v95 = [v86 TLVWithTag:32557 value:v94];

        if (v95)
        {
          v96 = [v95 asData];

          if (v96)
          {
            v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v98;

            v174 = v97;
            v175 = v99;
            if (*(v167 + v165) < 0x300u)
            {
              goto LABEL_42;
            }

            if (v172[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1] == 1)
            {
              sub_100350C40(v172, 2, 0xD00000000000001CLL, 0x800000010046FF70, 0x80000003uLL);

              sub_10006A178(v92, v93);
              v100 = v97;
              v101 = v99;
              goto LABEL_63;
            }

            v102 = [v86 TLVWithTag:132 unsignedChar:v172[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier]];
            if (v102)
            {
              v103 = v102;
              v104 = [v102 asData];

              if (v104)
              {
                v105 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v107 = v106;

                Data.append(_:)();
                sub_10006A178(v105, v107);
LABEL_42:
                v108 = v148;
                if (qword_100501B60 != -1)
                {
                  swift_once();
                  v108 = v148;
                }

                v167 = qword_10051B5A0;
                v109 = *(v108 + v172);
                v170 = v174;
                v168 = v175;
                v110 = v157;
                v111 = v157[2];
                v112 = v166;
                v20 = v156;
                (v111)(v166, &v172[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier], v156);
                v110[7](v112, 0, 1, v20);
                if (qword_100501D90 != -1)
                {
                  swift_once();
                }

                v113 = qword_10051B7F0;
                v114 = v153;
                *v153 = qword_10051B7F0;
                v115 = v154;
                v116 = v155;
                (*(v154 + 104))(v114, enum case for DispatchPredicate.onQueue(_:), v155);
                v117 = v113;
                v118 = _dispatchPreconditionTest(_:)();
                (*(v115 + 8))(v114, v116);
                if ((v118 & 1) == 0)
                {
                  __break(1u);
                  goto LABEL_67;
                }

                v119 = v152;
                sub_1000756F8(v166, v152);
                if ((v110[6])(v119, 1, v20) == 1)
                {
                  sub_100075768(v119, &unk_10050BE80, &unk_10040B360);
                  goto LABEL_51;
                }

                v28 = v151;
                (v110[4])(v151, v119, v20);
                v120 = v110;
                v121 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
                swift_beginAccess();
                v122 = v150;
                (v111)(v150, v109 + v121, v20);
                v123 = static UUID.== infix(_:_:)();
                v126 = v120[1];
                v124 = v120 + 1;
                v125 = v126;
                v126(v122, v20);
                if (v123)
                {
                  v125(v28, v20);
LABEL_51:
                  v110 = isa;
                  v114 = sub_100239160(5, 21, v170, v168);
                  v118 = v127;
                  v111 = v172;
                  v20 = v164;
                  if (qword_100501960 == -1)
                  {
LABEL_52:
                    sub_1000E71A0(v114, v118, v109);
                    sub_10006A178(v114, v118);
                    sub_100075768(v166, &unk_10050BE80, &unk_10040B360);
                    if (v110)
                    {
                    }

                    goto LABEL_59;
                  }

LABEL_67:
                  swift_once();
                  goto LABEL_52;
                }

                v170 = v125;
                v157 = v124;
                a3 = v149;
                (v111)(v149, v28, v20);

                v27 = Logger.logObject.getter();
                v128 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v27, v128))
                {
                  v129 = swift_slowAlloc();
                  v168 = v27;
                  v130 = a3;
                  v131 = v129;
                  isa = swift_slowAlloc();
                  v173 = isa;
                  *v131 = 136315394;
                  v165 = sub_10035A294(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  LODWORD(v167) = v128;
                  v132 = dispatch thunk of CustomStringConvertible.description.getter();
                  v134 = v133;
                  v135 = v170;
                  v170(v130, v20);
                  v136 = sub_1002FFA0C(v132, v134, &v173);

                  *(v131 + 4) = v136;
                  *(v131 + 12) = 2080;
                  v137 = v109 + v121;
                  v138 = v150;
                  (v111)(v150, v137, v20);
                  v139 = dispatch thunk of CustomStringConvertible.description.getter();
                  v141 = v140;
                  v135(v138, v20);
                  v142 = sub_1002FFA0C(v139, v141, &v173);

                  *(v131 + 14) = v142;
                  v143 = v168;
                  _os_log_impl(&_mh_execute_header, v168, v167, "Connection identifier has changed %s %s", v131, 0x16u);
                  swift_arrayDestroy();

                  v28 = v151;

LABEL_58:
                  v111 = v172;
                  v135(v28, v20);
                  sub_100075768(v166, &unk_10050BE80, &unk_10040B360);
                  v20 = v164;
LABEL_59:
                  v20[v111] = 3;
                  v144 = *&v111[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer];
                  if (v144)
                  {
                    v145 = *&v111[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec];
                    v146 = v144;
                    sub_1003AE618(v146, v145);

                    sub_10006A178(v176, v177);
                  }

                  else
                  {
                    sub_10006A178(v176, v177);
                  }

                  v100 = v174;
                  v101 = v175;
LABEL_63:
                  sub_10006A178(v100, v101);
LABEL_64:
                  sub_10006A178(v182, v183);
                  return;
                }

LABEL_57:

                v135 = v170;
                v170(a3, v20);
                goto LABEL_58;
              }

              goto LABEL_73;
            }

LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            return;
          }

LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_70;
  }

LABEL_14:

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v178 = v34;
    *v33 = 136315138;
    v35 = UUID.uuidString.getter();
    v37 = sub_1002FFA0C(v35, v36, &v178);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to retrieve RKE request in progress for %s", v33, 0xCu);
    sub_1000752F4(v34);
  }
}

void sub_100352A0C(void **a1, uint64_t a2, char *a3, char **a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [v13 tag];
  if (v14 <= 32625)
  {
    if (v14 != 24440)
    {
      if (v14 != 32625)
      {
LABEL_21:
        v36 = v13;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 67109120;
          *(v39 + 4) = [v36 tag];

          _os_log_impl(&_mh_execute_header, v37, v38, "Ignoring unknown event %u", v39, 8u);
        }

        else
        {
        }

        return;
      }

      v19 = [v13 children];
      if (v19)
      {
        v20 = v19;
        sub_10009393C(0, &qword_100502418, SESTLV_ptr);
        v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100352ED8(v21, a3);
        goto LABEL_18;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v31 = [v13 value];
    if (v31)
    {
      v32 = v31;
      v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      sub_100349188(v33, v35, a4);
      sub_10006A178(v33, v35);
      return;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v14 == 32626)
  {
    v40 = v4;
    v22 = [v13 children];
    if (v22)
    {
      v23 = v22;
      sub_10009393C(0, &qword_100502418, SESTLV_ptr);
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
      sub_10034A0DC(v24, *&a3[OBJC_IVAR____TtC10seserviced10AlishaPeer_version], a3);

      if (*&a3[v25] <= 0x2FFu)
      {
        v26 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
        v27 = *(v9 + 16);
        v27(v12, a4 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v8);
        swift_beginAccess();
        sub_1000C5158(0x10000, v12);
        swift_endAccess();
        v27(v12, a4 + v26, v8);
        swift_beginAccess();
        sub_1000C5310(3, v12);
        swift_endAccess();
      }

      return;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v14 == 32629)
  {
    v28 = [v13 children];
    if (v28)
    {
      v29 = v28;
      sub_10009393C(0, &qword_100502418, SESTLV_ptr);
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1003544C8(v30, a3);
      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14 != 32633)
  {
    goto LABEL_21;
  }

  v15 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
  if (*&a3[OBJC_IVAR____TtC10seserviced10AlishaPeer_version] >= 0x300u)
  {
    v16 = [v13 children];
    if (v16)
    {
      v17 = v16;
      sub_10009393C(0, &qword_100502418, SESTLV_ptr);
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10034ADB0(v18, *&a3[v15], a3);
LABEL_18:

      return;
    }

    goto LABEL_28;
  }
}

void sub_100352ED8(unint64_t a1, char *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_34;
  }

LABEL_2:
  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 13))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 1))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_36:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
LABEL_37:
      v153 = 0;
      LODWORD(v152) = 0;
      v154 = 0;
      LODWORD(v155) = 0;
      LODWORD(v158) = 1;
      LODWORD(v156) = 1;
      v159 = 1;
      LODWORD(v157) = 1;
      goto LABEL_38;
    }

    goto LABEL_5;
  }

  v149 = v5;
  v150 = v4;
  v151 = v7;
  v161 = a2;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_37;
  }

LABEL_5:
  LODWORD(v155) = 0;
  v154 = 0;
  LODWORD(v152) = 0;
  v153 = 0;
  v9 = 0;
  v8 = 0;
  LODWORD(v157) = 1;
  v14 = &selRef_mockFleetIntermediateCert;
  v159 = 1;
  LODWORD(v156) = 1;
  LODWORD(v158) = 1;
  do
  {
LABEL_6:
    v7 = v9;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v15 = *(a1 + 8 * v7 + 32);
      }

      a2 = v15;
      v9 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        swift_once();
        goto LABEL_2;
      }

      v16 = [v15 v14[490]];
      if (v16 > 129)
      {
        break;
      }

      if (v16 == 128)
      {
        v27 = [a2 value];
        if (!v27)
        {
          goto LABEL_207;
        }

        v28 = v27;
        v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = sub_100090214(v4, v30, 0, 0, 0);
        v159 = 0;
        v154 = v31;
        sub_10006A178(v4, v30);
LABEL_28:
        v14 = &selRef_mockFleetIntermediateCert;

        if (v9 == v11)
        {
          goto LABEL_38;
        }

        goto LABEL_6;
      }

      if (v16 == 129)
      {
        v22 = [a2 value];
        if (!v22)
        {
          goto LABEL_206;
        }

        v23 = v22;
        v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v25;

        v26 = sub_1000939AC(v24, v4, 0, 0, 0);
        LODWORD(v156) = 0;
        LODWORD(v152) = v26;
        goto LABEL_28;
      }

LABEL_7:

      ++v7;
      if (v9 == v11)
      {
        goto LABEL_38;
      }
    }

    if (v16 == 130)
    {
      v32 = [a2 value];
      if (!v32)
      {
        goto LABEL_205;
      }

      v33 = v32;
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v35;

      v36 = sub_1000939AC(v34, v4, 0, 0, 0);
      LODWORD(v158) = 0;
      v153 = v36;
      goto LABEL_28;
    }

    if (v16 != 132)
    {
      goto LABEL_7;
    }

    v17 = [a2 value];
    if (!v17)
    {
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
      return;
    }

    v18 = v17;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v20;

    v21 = sub_1000939AC(v19, v4, 0, 0, 0);
    LODWORD(v157) = 0;
    LODWORD(v155) = v21;

    v14 = &selRef_mockFleetIntermediateCert;
  }

  while (v9 != v11);
LABEL_38:
  v37 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
  v38 = v161;
  if (*&v161[OBJC_IVAR____TtC10seserviced10AlishaPeer_version] >= 0x300u)
  {
    v44 = v160;
    if (v157)
    {
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_56;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Ignoring invalid execution identifier";
LABEL_55:
      _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);

      goto LABEL_56;
    }

    if ((v158 & 1) == 0)
    {
      if (v153 != 4)
      {
        goto LABEL_73;
      }

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_56;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Ignoring execution status pending";
      goto LABEL_55;
    }

LABEL_53:
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_56;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Ignoring invalid execution status";
    goto LABEL_55;
  }

  v39 = v160;
  if ((v159 | v156))
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Ignoring invalid function and/or action identifiers";
      goto LABEL_55;
    }

LABEL_56:

    return;
  }

  if (v158)
  {
    goto LABEL_53;
  }

  if ((v154 - 3) == 65534 || (v154 - 3) == 0xFFFF)
  {
    if (v152 == 81)
    {

      v45 = v39;
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v166[0] = v78;
        *v77 = 136315138;

        v79 = UUID.uuidString.getter();
        v81 = v80;

        v82 = sub_1002FFA0C(v79, v81, v166);

        *(v77 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v75, v76, "Vehicle unlocked using passive entry for %s", v77, 0xCu);
        sub_1000752F4(v78);
      }

      v83 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      v55 = OBJC_IVAR____TtC10seserviced9AlishaRKE_passiveEntryState;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v165[0] = *(v45 + v55);
      *(v45 + v55) = 0x8000000000000000;
      v57 = &v38[v83];
      v58 = 2;
      goto LABEL_97;
    }

    if (v152 == 80)
    {

      v45 = v39;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v166[0] = v49;
        *v48 = 136315138;

        v50 = UUID.uuidString.getter();
        v52 = v51;

        v53 = sub_1002FFA0C(v50, v52, v166);

        *(v48 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v46, v47, "Vehicle locked using passive entry for %s", v48, 0xCu);
        sub_1000752F4(v49);
      }

      v54 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      v55 = OBJC_IVAR____TtC10seserviced9AlishaRKE_passiveEntryState;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v165[0] = *(v45 + v55);
      *(v45 + v55) = 0x8000000000000000;
      v57 = &v38[v54];
      v58 = 1;
LABEL_97:
      sub_100314CF0(v58, v57, isUniquelyReferenced_nonNull_native);
      *(v45 + v55) = v165[0];
      swift_endAccess();
      return;
    }
  }

  v59 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v60 = *(v39 + v59);
  v148 = v37;
  if (v60 >> 62)
  {
    goto LABEL_196;
  }

  v37 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {

    if (!v37)
    {
      goto LABEL_87;
    }

    v61 = 0;
    v44 = v60 & 0xFFFFFFFFFFFFFF8;
LABEL_64:
    if ((v60 & 0xC000000000000001) == 0)
    {
      if (v61 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        v37 = _CocoaArrayWrapper.endIndex.getter();
        continue;
      }

      v62 = *(v60 + 8 * v61 + 32);

      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_72;
      }

LABEL_67:
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {

        ++v61;
        if (v63 == v37)
        {
          goto LABEL_87;
        }

        goto LABEL_64;
      }

      v72 = v160;
      if (*(v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) == v154)
      {
        v73 = *(v62 + 16);
        v74 = &v169;
        goto LABEL_100;
      }

LABEL_88:
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "Ignoring execution status for a request which we didn't start", v71, 2u);
      }

      goto LABEL_90;
    }

    break;
  }

  v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v63 = v61 + 1;
  if (!__OFADD__(v61, 1))
  {
    goto LABEL_67;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  v64 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v60 = *(v44 + v64);
  v148 = v37;
  if (v60 >> 62)
  {
    v65 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v65 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v65)
  {
LABEL_87:

    goto LABEL_88;
  }

  v66 = 0;
  while (1)
  {
    if ((v60 & 0xC000000000000001) != 0)
    {
      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v67 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v66 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_194;
      }

      v62 = *(v60 + 8 * v66 + 32);

      v67 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    v68 = (v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier);
    if ((*(v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1) & 1) == 0 && *v68 == v155)
    {
      break;
    }

    ++v66;
    if (v67 == v65)
    {
      goto LABEL_87;
    }
  }

  v72 = v160;
  if (v68[1])
  {
    goto LABEL_88;
  }

  v73 = *v68;
  v74 = &v170;
LABEL_100:
  if (v73 != *(v74 - 64))
  {
    goto LABEL_88;
  }

  v84 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer;
  v85 = *(v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
  if (v85)
  {
    sub_1003AE754(v85);
  }

  if (v153 != 1)
  {
    v86 = (v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
    v87 = *(v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
    v88 = v153;
    if (v87)
    {
      v89 = v86[1];

      v87(v88);
      sub_1000B2A4C(v87, v89);
      v90 = *v86;
      v91 = v86[1];
      *v86 = 0;
      v86[1] = 0;
      sub_1000B2A4C(v90, v91);
    }

    sub_10035A00C(v62, v88);
    v60 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
    swift_beginAccess();
    v92 = *(v72 + v60);
    v163 = _swiftEmptyArrayStorage;
    if (v92 >> 62)
    {
      goto LABEL_200;
    }

    v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_110:
    v160 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier;
    v94 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier;

    if (!v93)
    {
      v124 = _swiftEmptyArrayStorage;
LABEL_185:

      *(v72 + v60) = v124;

      v133 = objc_opt_self();
      v134 = *(v62 + v160);
      v135 = *(v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType);
      v136 = *(v62 + 16);
      v137 = String._bridgeToObjectiveC()();
      v138 = v153;
      sub_10004D990(v133, 1, v134, v136, v153, v135, v137);

      if (*&v161[v148] < 0x300u && !v138 && (v159 & 1) == 0)
      {
        v139 = v154;
        if ((v154 - 1) < 2u)
        {
          v140 = v151;
          (*(v149 + 16))(v151, &v161[OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier], v150);
          swift_beginAccess();
          sub_1000C5158(v139, v140);
          swift_endAccess();
        }
      }

      goto LABEL_91;
    }

    v155 = v60;
    v95 = 0;
    v156 = (v62 + v94);
    v157 = v92 & 0xFFFFFFFFFFFFFF8;
    v158 = v92 & 0xC000000000000001;
    v96 = v93;
    while (1)
    {
      if (v158)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v97 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (v95 >= *(v157 + 16))
        {
          goto LABEL_195;
        }

        v60 = *(v92 + 8 * v95 + 32);

        v97 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
LABEL_180:
          __break(1u);
LABEL_181:
          v124 = v163;
          v60 = v155;
          goto LABEL_185;
        }
      }

      if (*(v60 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) != *(v62 + v160) || *(v60 + 16) != *(v62 + 16))
      {
        goto LABEL_154;
      }

      v98 = *(v60 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
      v99 = *(v60 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
      v100 = *v156;
      v101 = v156[1];
      v102 = v99 >> 62;
      v103 = v101 >> 62;
      if (v99 >> 62 == 3)
      {
        if (v98)
        {
          v104 = 0;
        }

        else
        {
          v104 = v99 == 0xC000000000000000;
        }

        v105 = 0;
        v106 = v104 && v101 >> 62 == 3;
        if (v106 && !v100 && v101 == 0xC000000000000000)
        {
LABEL_159:

          goto LABEL_157;
        }
      }

      else if (v102 > 1)
      {
        if (v102 == 2)
        {
          v108 = *(v98 + 16);
          v107 = *(v98 + 24);
          v109 = __OFSUB__(v107, v108);
          v105 = v107 - v108;
          if (v109)
          {
            __break(1u);
LABEL_201:
            __break(1u);
          }
        }

        else
        {
          v105 = 0;
        }
      }

      else if (v102)
      {
        LODWORD(v105) = HIDWORD(v98) - v98;
        if (__OFSUB__(HIDWORD(v98), v98))
        {
          goto LABEL_201;
        }

        v105 = v105;
      }

      else
      {
        v105 = BYTE6(v99);
      }

      if (v103 > 1)
      {
        if (v103 != 2)
        {
          if (!v105)
          {
            goto LABEL_159;
          }

LABEL_154:
          v113 = v72;
          goto LABEL_155;
        }

        v112 = *(v100 + 16);
        v111 = *(v100 + 24);
        v109 = __OFSUB__(v111, v112);
        v110 = v111 - v112;
        if (v109)
        {
          goto LABEL_199;
        }
      }

      else if (v103)
      {
        LODWORD(v110) = HIDWORD(v100) - v100;
        if (__OFSUB__(HIDWORD(v100), v100))
        {
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          v93 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_110;
        }

        v110 = v110;
      }

      else
      {
        v110 = BYTE6(v101);
      }

      if (v105 != v110)
      {
        goto LABEL_154;
      }

      if (v105 < 1)
      {
        goto LABEL_159;
      }

      if (v102 > 1)
      {
        if (v102 != 2)
        {
          v113 = v72;
          memset(v164, 0, 14);
LABEL_169:
          sub_10019F024(v164, v100, v101, &v162);
          if (v162)
          {
            goto LABEL_177;
          }

          goto LABEL_155;
        }

        v147 = *v156;
        v152 = v101;
        v113 = v72;
        v115 = *(v98 + 16);
        v114 = *(v98 + 24);
        v146 = v115;
        v145 = v114;
        v116 = __DataStorage._bytes.getter();
        if (v116)
        {
          v144 = v116;
          v117 = __DataStorage._offset.getter();
          v118 = v146;
          if (__OFSUB__(v146, v117))
          {
            goto LABEL_208;
          }

          v144 += v146 - v117;
        }

        else
        {
          v144 = 0;
          v118 = v146;
        }

        v146 = v145 - v118;
        if (__OFSUB__(v145, v118))
        {
          goto LABEL_203;
        }

        __DataStorage._length.getter();
        v123 = &v167;
      }

      else
      {
        if (!v102)
        {
          v113 = v72;
          v164[0] = *(v60 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
          LOWORD(v164[1]) = v99;
          BYTE2(v164[1]) = BYTE2(v99);
          BYTE3(v164[1]) = BYTE3(v99);
          BYTE4(v164[1]) = BYTE4(v99);
          BYTE5(v164[1]) = BYTE5(v99);
          goto LABEL_169;
        }

        v147 = *v156;
        v152 = v101;
        v119 = v98;
        v120 = v98 >> 32;
        v145 = v119;
        v146 = v120 - v119;
        if (v120 < v119)
        {
          __break(1u);
LABEL_203:
          __break(1u);
          goto LABEL_204;
        }

        v113 = v72;
        v121 = __DataStorage._bytes.getter();
        if (v121)
        {
          v144 = v121;
          v122 = __DataStorage._offset.getter();
          if (__OFSUB__(v145, v122))
          {
            goto LABEL_209;
          }

          v145 = v145 - v122 + v144;
        }

        else
        {
          v145 = 0;
        }

        __DataStorage._length.getter();
        v123 = &v168;
      }

      sub_10019F024(*(v123 - 32), v147, v152, v164);
      if (v164[0])
      {
LABEL_177:

        goto LABEL_156;
      }

LABEL_155:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_156:
      v72 = v113;
      v93 = v96;
LABEL_157:
      ++v95;
      if (v97 == v93)
      {
        goto LABEL_181;
      }
    }
  }

  if (*(v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType) == 1)
  {
    sub_100350C40(v62, 1, 0xD000000000000030, 0x800000010046FD10, 0x80000008uLL);
    goto LABEL_91;
  }

  swift_retain_n();
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v165[0] = v128;
    *v127 = 136315650;
    v164[0] = sub_100288788(*(v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier), *(v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8));
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v129 = BidirectionalCollection<>.joined(separator:)();
    v131 = v130;

    v132 = sub_1002FFA0C(v129, v131, v165);

    *(v127 + 4) = v132;
    *(v127 + 12) = 512;
    LOWORD(v132) = *(v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);

    *(v127 + 14) = v132;

    *(v127 + 16) = 256;
    LOBYTE(v132) = *(v62 + 16);

    *(v127 + 18) = v132;

    _os_log_impl(&_mh_execute_header, v125, v126, "Vehicle for key %s started execution of function %hu action %hhu", v127, 0x13u);
    sub_1000752F4(v128);
  }

  else
  {
  }

  v141 = *(v62 + v84);
  if (v141)
  {
    v142 = *(v62 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec);
    v69 = v141;
    sub_1003AE618(v69, v142);
LABEL_90:
  }

LABEL_91:
}

void sub_1003544C8(uint64_t a1, int64_t a2)
{
  v131 = type metadata accessor for UUID();
  v4 = *(v131 - 1);
  __chkstk_darwin(v131);
  v6 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v116 = &v114 - v8;
  __chkstk_darwin(v9);
  v117 = &v114 - v10;
  v11 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v11 - 8);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v114 - v15);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 1);
  __chkstk_darwin(v17);
  v20 = (&v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_117;
  }

LABEL_2:
  v21 = qword_10051B7F0;
  *v20 = qword_10051B7F0;
  v22 = *(v18 + 104);
  LODWORD(v125) = enum case for DispatchPredicate.onQueue(_:);
  v126 = v18 + 104;
  v124 = v22;
  v22(v20);
  v122 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  v24 = *(v18 + 8);
  v18 += 8;
  v127 = v20;
  v128 = v17;
  v123 = v24;
  v24(v20, v17);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_119:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_8;
  }

  v119 = v18;
  v140 = 0;
  v141 = 1;
  v139 = 256;
  v138 = 256;
  v137 = xmmword_1004098E0;
  v25 = v132;

  sub_1003598C4(a1, &v140, &v139, &v138, v25, &v137);
  v118 = 0;

  v18 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
  v26 = *(a2 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) >= 0x300u;
  v121 = v4;
  v115 = v6;
  v120 = v13;
  if (v26 && (v138 & 0x100) == 0)
  {
LABEL_19:
    v129 = v18;
    v18 = v138;
    a1 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
    v28 = v132;
    swift_beginAccess();
    v29 = *&v28[a1];
    v20 = v131;
    if (!(v29 >> 62))
    {
      v13 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_21;
    }

    goto LABEL_121;
  }

  a1 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  v27 = v132;
  swift_beginAccess();
  v23 = *&v27[a1];
  v20 = v131;
  if (v23 >> 62)
  {
    goto LABEL_119;
  }

  v13 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (!v13)
  {
    goto LABEL_35;
  }

  v129 = v18;
  v130 = v16;
  v6 = 0;
  v18 = v23 & 0xC000000000000001;
  v20 = (v23 & 0xFFFFFFFFFFFFFF8);
  v17 = &qword_10050B000;
  v16 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  do
  {
    if (v18)
    {
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v4 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        swift_once();
        goto LABEL_2;
      }

      a1 = *(v23 + 8 * v6 + 32);

      v4 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }
    }

    if (static UUID.== infix(_:_:)())
    {
LABEL_49:

      v42 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
      v16 = v130;
      v20 = v131;
      v18 = v129;

      if (v42)
      {
        sub_1003AE754(v42);
      }

      v70 = *(a2 + v18);
      v30 = v70 < 0x300;
      if (*(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state) == 4)
      {
        goto LABEL_72;
      }

      if (v70 >= 0x300)
      {
        if ((v138 & 0x100) == 0)
        {
          if ((*(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1) & 1) != 0 || *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier) != v138)
          {
            goto LABEL_103;
          }

LABEL_95:

          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v136[0] = v93;
            *v92 = 33555202;
            *(v92 + 4) = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
            *(v92 + 6) = 256;
            *(v92 + 8) = *(a1 + 16);

            *(v92 + 9) = 2080;
            swift_beginAccess();
            if (*(&v137 + 1) >> 60 == 15)
            {
              v94 = 0;
            }

            else
            {
              v94 = 0x7461642068746977;
            }

            if (*(&v137 + 1) >> 60 == 15)
            {
              v95 = 0xE000000000000000;
            }

            else
            {
              v95 = 0xE900000000000061;
            }

            v96 = sub_1002FFA0C(v94, v95, v136);

            *(v92 + 11) = v96;
            _os_log_impl(&_mh_execute_header, v90, v91, "Received confirmation request for function %hu action %hhu %s", v92, 0x13u);
            sub_1000752F4(v93);
          }

          else
          {
          }

          v97 = *(a1 + 56);
          if (v97)
          {
            v98 = *(a1 + 64);

            v99 = Logger.logObject.getter();
            v100 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              *v101 = 0;
              _os_log_impl(&_mh_execute_header, v99, v100, "Sending continuation request to client", v101, 2u);
            }

            v102 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
            v103 = *(a1 + 16);
            swift_beginAccess();
            v104 = v137;
            v105 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
            v106 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
            sub_10006A2BC(v137, *(&v137 + 1));
            sub_100069E2C(v105, v106);
            v97(v102, v103, v104, *(&v104 + 1), v105, v106);
            sub_10006A178(v105, v106);
            sub_10006A2D0(v104, *(&v104 + 1));
            v107 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
            if (v107)
            {
              v108 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec);
              v109 = v107;
              sub_1003AE618(v109, v108);
              sub_1000B2A4C(v97, v98);
            }

            else
            {
              sub_1000B2A4C(v97, v98);
            }
          }

          else
          {
            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              *v112 = 0;
              _os_log_impl(&_mh_execute_header, v110, v111, "Automatically sending an event to continue the enduring request", v112, 2u);
            }

            v113 = v118;
            sub_10034E460(a1, 0, 0xF000000000000000);
            if (v113)
            {
            }
          }

LABEL_85:

LABEL_92:
          sub_10006A2D0(v137, *(&v137 + 1));
          return;
        }
      }

      else if ((v141 & 1) == 0 && (v139 & 0x100) == 0)
      {
        if (*(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) != v140 || *(a1 + 16) != v139)
        {
LABEL_103:
          sub_100350C40(a1, 2, 0xD000000000000016, 0x800000010046FDF0, 0x80000006uLL);
LABEL_72:

          v31 = 0;
          goto LABEL_36;
        }

        goto LABEL_95;
      }

      sub_100350C40(a1, 2, 0xD000000000000025, 0x800000010046FDC0, 0x80000005uLL);
      goto LABEL_85;
    }

    ++v6;
  }

  while (v4 != v13);
LABEL_33:
  v16 = v130;
  v20 = v131;
  while (1)
  {
    v18 = v129;
LABEL_35:

    a1 = 0;
    v30 = *(a2 + v18) < 0x300u;
    v31 = 1;
LABEL_36:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Sending an event to stop the enduring RKE execution", v34, 2u);
    }

    if (v30)
    {
      if ((v141 & 1) != 0 || (v139 & 0x100) != 0)
      {
LABEL_48:

        goto LABEL_92;
      }
    }

    else if ((v138 & 0x100) != 0)
    {
      goto LABEL_48;
    }

    v35 = *(a2 + v18);
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    if (v35 >= 0x300)
    {
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_100409E40;
      if ((v138 & 0x100) != 0)
      {
        goto LABEL_125;
      }

      v44 = v43;
      v45 = [objc_opt_self() TLVWithTag:132 unsignedChar:v138];
      if (!v45)
      {
        goto LABEL_127;
      }

      *(v44 + 32) = v45;
    }

    else
    {
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_10040DA10;
      if (v141)
      {
        goto LABEL_124;
      }

      v37 = v36;
      v38 = bswap32(v140) >> 16;
      v39 = objc_opt_self();
      v40 = [v39 TLVWithTag:128 unsignedShort:v38];
      if (!v40)
      {
        goto LABEL_126;
      }

      *(v37 + 32) = v40;
      if ((v139 & 0x100) != 0)
      {
        goto LABEL_128;
      }

      v41 = [v39 TLVWithTag:129 unsignedChar:v139];
      if (!v41)
      {
        goto LABEL_129;
      }

      *(v37 + 40) = v41;
    }

    v133 = sub_1002B3B94(&off_1004C39E8);
    v134 = v46;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v48 = [objc_opt_self() TLVWithTag:32631 children:isa];

    if (!v48)
    {
      break;
    }

    v49 = [v48 asData];

    if (!v49)
    {
      goto LABEL_123;
    }

    v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    Data.append(_:)();
    sub_10006A178(v50, v52);
    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v129 = qword_10051B5A0;
    v131 = v134;
    v132 = v133;
    v18 = v121;
    v53 = v120;
    v4 = v31;
    if (v31)
    {
      v54 = 1;
    }

    else
    {
      (*(v121 + 16))(v16, a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier, v20);
      v54 = 0;
    }

    (*(v18 + 56))(v16, v54, 1, v20);
    v29 = v20;
    v20 = v127;
    v55 = v122;
    *v127 = v122;
    v56 = v128;
    v124(v20, v125, v128);
    v57 = v55;
    LOBYTE(v55) = _dispatchPreconditionTest(_:)();
    v123(v20, v56);
    if (v55)
    {
      sub_1000756F8(v16, v53);
      if ((*(v18 + 48))(v53, 1, v29) == 1)
      {
        sub_100075768(v53, &unk_10050BE80, &unk_10040B360);
        v58 = v4;
        goto LABEL_66;
      }

      LODWORD(v128) = v4;
      v130 = v16;
      v59 = v117;
      (*(v18 + 32))(v117, v53, v29);
      v60 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
      swift_beginAccess();
      v61 = v29;
      v62 = *(v18 + 16);
      v127 = v60;
      v63 = v116;
      v62(v116, a2 + v60, v61);
      v64 = static UUID.== infix(_:_:)();
      v65 = *(v18 + 8);
      v65(v63, v61);
      if (v64)
      {
        v65(v59, v61);
        v16 = v130;
        v58 = v128;
LABEL_66:
        v66 = sub_100239160(3, 17, v132, v131);
        v68 = v67;
        if (qword_100501960 != -1)
        {
          swift_once();
        }

        v69 = v118;
        sub_1000E71A0(v66, v68, a2);
        if (v69)
        {
          sub_10006A178(v66, v68);
          sub_100075768(v16, &unk_10050BE80, &unk_10040B360);

          if (v58)
          {
LABEL_91:
            sub_10006A178(v133, v134);
            goto LABEL_92;
          }
        }

        else
        {
          sub_10006A178(v66, v68);
          sub_100075768(v16, &unk_10050BE80, &unk_10040B360);
          if (v58)
          {
            goto LABEL_91;
          }
        }
      }

      else
      {
        v71 = v115;
        v131 = v62;
        v62(v115, v59, v61);

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v132 = v65;
          v75 = v74;
          v129 = swift_slowAlloc();
          v135 = v129;
          *v75 = 136315394;
          sub_10035A294(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          LODWORD(v126) = v73;
          v125 = v72;
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          v78 = v77;
          (v132)(v71, v61);
          v79 = sub_1002FFA0C(v76, v78, &v135);

          *(v75 + 4) = v79;
          *(v75 + 12) = 2080;
          v80 = v127 + a2;
          v81 = v116;
          (v131)(v116, v80, v61);
          v82 = dispatch thunk of CustomStringConvertible.description.getter();
          v84 = v83;
          (v132)(v81, v61);
          v85 = sub_1002FFA0C(v82, v84, &v135);

          *(v75 + 14) = v85;
          v86 = v125;
          _os_log_impl(&_mh_execute_header, v125, v126, "Connection identifier has changed %s %s", v75, 0x16u);
          swift_arrayDestroy();

          v65 = v132;
          v59 = v117;
        }

        else
        {

          v65(v71, v61);
        }

        v65(v59, v61);
        sub_100075768(v130, &unk_10050BE80, &unk_10040B360);
        if (v128)
        {
          goto LABEL_91;
        }
      }

      v87 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
      if (v87)
      {
        v88 = *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec);
        v89 = v87;
        sub_1003AE618(v89, v88);
      }

      goto LABEL_91;
    }

    __break(1u);
LABEL_121:
    v13 = _CocoaArrayWrapper.endIndex.getter();
LABEL_21:

    if (v13)
    {
      v130 = v16;
      v6 = 0;
      v20 = (v29 & 0xC000000000000001);
      v17 = (v29 & 0xFFFFFFFFFFFFFF8);
      v16 = &unk_10051B000;
      while (1)
      {
        if (v20)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v6 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_116;
          }

          a1 = *(v29 + 8 * v6 + 32);

          v4 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        if ((*(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier + 1) & 1) == 0 && *(a1 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier) == v18)
        {
          goto LABEL_49;
        }

        ++v6;
        if (v4 == v13)
        {
          goto LABEL_33;
        }
      }
    }
  }

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
}

double sub_100355784(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v60 = a2;
  v61 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v57 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501C40 != -1)
  {
    swift_once();
  }

  v58 = qword_10051B6C8;
  sub_1002A86D4(a1, a4);
  v59 = a4;
  v14 = (a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v15 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v15 >> 60 == 15)
  {
    v62 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v62, v16, "Failed to retrieve key identifier", v17, 2u);
    }

    v18 = v62;

    return result;
  }

  v54 = v12;
  v55 = v10;
  __chkstk_darwin(*v14);
  *(&v49 - 2) = v20;
  *(&v49 - 1) = v15;
  v56 = v20;
  sub_100069E2C(v20, v15);
  if (qword_1005019E8 != -1)
  {
    v21 = swift_once();
  }

  __chkstk_darwin(v21);
  *(&v49 - 2) = sub_1000B3C64;
  *(&v49 - 1) = &v49 - 4;
  v23 = *(v22 + 24);
  __chkstk_darwin(v24);
  *(&v49 - 4) = sub_1000B3FFC;
  *(&v49 - 3) = v25;
  *(&v49 - 2) = v26;
  os_unfair_lock_lock(v23 + 8);
  sub_10035CA80(&v23[4], aBlock);
  os_unfair_lock_unlock(v23 + 8);
  v27 = aBlock[0];
  if (aBlock[0])
  {
    v28 = [aBlock[0] supportedRKEFunctions];
    v29 = _swiftEmptyArrayStorage;
    v52 = v8;
    if (!v28)
    {
      v34 = _swiftEmptyArrayStorage;
      goto LABEL_30;
    }

    v30 = v28;
    v51 = v7;
    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (v31)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v31 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_15:
        v49 = v27;
        v50 = v15;
        v53 = v11;
        aBlock[0] = _swiftEmptyArrayStorage;
        v32 = aBlock;
        sub_10019F554(0, v31 & ~(v31 >> 63), 0);
        if (v31 < 0)
        {
          __break(1u);
LABEL_38:
          swift_once();
LABEL_36:
          v44 = swift_allocObject();
          v44[2] = v27;
          v44[3] = v32;
          v44[4] = v62;
          aBlock[4] = sub_10035A288;
          aBlock[5] = v44;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100080830;
          aBlock[3] = &unk_1004D1720;
          v45 = _Block_copy(aBlock);
          v46 = v27;

          v47 = v57;
          static DispatchQoS.unspecified.getter();
          v63 = v4;
          sub_10035A294(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
          sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
          v48 = v55;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          sub_10006A2D0(v56, v29);
          _Block_release(v45);

          (*(v52 + 8))(v48, v7);
          (*(v54 + 8))(v47, v53);

          return result;
        }

        v33 = 0;
        v34 = aBlock[0];
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v35 = *(v7 + 8 * v33 + 32);
          }

          v36 = v35;
          v37 = [v35 unsignedShortValue];

          aBlock[0] = v34;
          v39 = v34[2];
          v38 = v34[3];
          if (v39 >= v38 >> 1)
          {
            sub_10019F554((v38 > 1), v39 + 1, 1);
            v34 = aBlock[0];
          }

          ++v33;
          v34[2] = v39 + 1;
          *(v34 + v39 + 16) = v37;
        }

        while (v31 != v33);

        v15 = v50;
        v7 = v51;
        v11 = v53;
        v27 = v49;
LABEL_30:
        if (v61 <= 0x2FFu && (v60 & 1) != 0 && v34[2] || (v32 = sub_1002A91CC(v59), v43 = sub_10008C58C(v32, v34), , (v43 & 1) != 0))
        {

          sub_10006A2D0(v56, v15);
          return result;
        }

        v4 = _swiftEmptyArrayStorage;
        v53 = v11;
        v29 = v15;
        if (qword_100501D98 == -1)
        {
          goto LABEL_36;
        }

        goto LABEL_38;
      }
    }

    v34 = _swiftEmptyArrayStorage;
    v7 = v51;
    goto LABEL_30;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Failed to retrieve endpoint", v42, 2u);
  }

  sub_10006A2D0(v56, v15);

  return result;
}

void sub_100355F64(id *a1, uint64_t a2, char **a3)
{
  v4 = v3;
  v8 = type metadata accessor for Data.Iterator();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if ([*a1 tag] == 160)
  {
    v61 = a3;
    v14 = [v13 children];
    if (!v14)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v15 = v14;
    v64 = v13;
    v65 = a2;
    v62 = v12;
    v63 = v8;
    v66 = v9;
    sub_10009393C(0, &qword_100502418, SESTLV_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
LABEL_31:
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v71 = v4;
      if (v17)
      {
LABEL_5:
        LODWORD(v67) = 0;
        v18 = 0;
        v19 = 0;
        v69 = 0xF000000000000000;
        LODWORD(v70) = 1;
        v4 = &selRef_mockFleetIntermediateCert;
        while (2)
        {
          v68 = v18;
LABEL_7:
          v20 = v19;
          while (1)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v20 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }

              v21 = *(v16 + 8 * v20 + 32);
            }

            v22 = v21;
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

            v23 = [v21 v4[490]];
            if (v23 == 137)
            {
              break;
            }

            if (v23 == 128)
            {
              v24 = [v22 value];
              if (!v24)
              {
                goto LABEL_60;
              }

              v25 = v24;
              v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;

              v29 = v71;
              v30 = sub_100090214(v26, v28, 0, 0, 0);
              LODWORD(v70) = v29 != 0;
              if (v29)
              {
                sub_10006A178(v26, v28);

                LODWORD(v67) = 0;
                v71 = 0;
              }

              else
              {
                LODWORD(v67) = v30;
                v71 = 0;
                sub_10006A178(v26, v28);
              }

              v4 = &selRef_mockFleetIntermediateCert;
              if (v19 == v17)
              {
LABEL_28:
                v36 = v68;
                v35 = v69;
                goto LABEL_33;
              }

              goto LABEL_7;
            }

            ++v20;
            if (v19 == v17)
            {
              goto LABEL_28;
            }
          }

          v31 = [v22 value];
          if (v31)
          {
            v32 = v31;
            v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v35 = v34;

            v36 = v33;
            v4 = &selRef_mockFleetIntermediateCert;
          }

          else
          {
            v36 = 0;
            v35 = 0xF000000000000000;
          }

          sub_10006A2D0(v68, v69);

          v69 = v35;
          v18 = v36;
          if (v19 != v17)
          {
            continue;
          }

          goto LABEL_33;
        }
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v71 = v3;
      if (v17)
      {
        goto LABEL_5;
      }
    }

    v36 = 0;
    LODWORD(v67) = 0;
    LODWORD(v70) = 1;
    v35 = 0xF000000000000000;
LABEL_33:

    if ((v70 & 1) == 0 && v35 >> 60 != 15)
    {
      v37 = v35 >> 62;
      if ((v35 >> 62) > 1)
      {
        v38 = v62;
        v39 = v63;
        if (v37 != 2)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v38 = v62;
        v39 = v63;
        if (!v37)
        {
          goto LABEL_44;
        }
      }

      sub_100069E2C(v36, v35);
LABEL_44:
      sub_100069E2C(v36, v35);
      Data.Iterator.init(_:at:)();
      sub_10035A294(&qword_100509A50, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
      do
      {
        dispatch thunk of IteratorProtocol.next()();
        if ((v73 & 0x100) != 0)
        {
          sub_10006A2D0(v36, v35);
          (*(v66 + 8))(v38, v39);
          goto LABEL_56;
        }
      }

      while (!v73);
      (*(v66 + 8))(v38, v39);
      if (v67 == 1 || v67 == 2)
      {
        sub_10006A2D0(v36, v35);
      }

      else
      {
        v54 = v61;
        v55 = *v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v54 = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = sub_100130164(0, *(v55 + 2) + 1, 1, v55);
          *v54 = v55;
        }

        v58 = *(v55 + 2);
        v57 = *(v55 + 3);
        if (v58 >= v57 >> 1)
        {
          v60 = sub_100130164((v57 > 1), v58 + 1, 1, v55);
          *v61 = v60;
        }

        sub_10006A2D0(v36, v35);
        v59 = *v61;
        *(v59 + 2) = v58 + 1;
        *&v59[2 * v58 + 32] = v67;
      }

LABEL_56:
      v53 = v36;
      goto LABEL_57;
    }

    v40 = v64;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v41, v42))
    {

      sub_10006A2D0(v36, v35);
      return;
    }

    LODWORD(v68) = v42;
    v70 = v36;
    v43 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v73 = v67;
    v69 = v43;
    *v43 = 136315138;
    v44 = [v40 asData];

    if (v44)
    {
      v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v72 = sub_100288788(v45, v47);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v48 = BidirectionalCollection<>.joined(separator:)();
      v50 = v49;
      sub_10006A178(v45, v47);

      v51 = sub_1002FFA0C(v48, v50, &v73);

      v52 = v69;
      *(v69 + 1) = v51;
      _os_log_impl(&_mh_execute_header, v41, v68, "Failed to retrieve function identifier and supported action identifier user flows %s", v52, 0xCu);
      sub_1000752F4(v67);

      v53 = v70;
LABEL_57:
      sub_10006A2D0(v53, v35);
      return;
    }

LABEL_61:
    __break(1u);
  }
}

void sub_10035667C(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v12 = [a1 publicKeyIdentifier];
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  aBlock = sub_100288788(v13, v15);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();
  sub_10006A178(v13, v15);

  v16 = String._bridgeToObjectiveC()();

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v37 = sub_10035A314;
  v38 = v17;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000A409C;
  v36 = &unk_1004D1770;
  v18 = _Block_copy(&aBlock);

  v19 = SESEndPointUpdateWithBlock();
  _Block_release(v18);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  v22 = v27;
  v21 = v28;
  v20[2] = v19;
  v20[3] = v22;
  v20[4] = v21;
  v37 = sub_10035A364;
  v38 = v20;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100080830;
  v36 = &unk_1004D17C0;
  v23 = _Block_copy(&aBlock);
  v24 = v19;

  v25 = v21;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10035A294(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v31 + 8))(v7, v5);
  (*(v29 + 8))(v11, v30);
}

void sub_100356B24(void *a1, uint64_t a2)
{
  sub_10034D004(a2);
  sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setSupportedRKEFunctions:isa];
}

uint64_t sub_100356BB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = &selRef_mockFleetIntermediateCert;
  if (a1)
  {
    swift_errorRetain();
    v5 = a3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v8 = 136315394;
      v32 = v7;
      v9 = [v5 publicKeyIdentifier];
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      sub_100288788(v10, v12);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      v4 = &selRef_mockFleetIntermediateCert;
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v13 = BidirectionalCollection<>.joined(separator:)();
      v15 = v14;
      sub_10006A178(v10, v12);

      v16 = sub_1002FFA0C(v13, v15, &v33);

      *(v8 + 4) = v16;
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_1002FFA0C(v17, v18, &v33);

      *(v8 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v6, v32, "Failed to update supported RKE functions for %s %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Endpoint updated with supported RKE functions", v22, 2u);
    }
  }

  v23 = [a3 appletIdentifier];
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = [a3 v4[91]];
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  sub_1003375E0(0xD000000000000042, 0x80000001004612F0, v24, v26, v28, v30, 0);
  sub_10006A178(v28, v30);
  return sub_10006A178(v24, v26);
}

uint64_t sub_100356F30@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040F420;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000010046BB80;
  *(inited + 48) = *(v2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
  *(inited + 72) = &type metadata for UInt16;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x800000010046FC40;
  *(inited + 96) = *(v2 + 16);
  *(inited + 120) = &type metadata for UInt8;
  strcpy((inited + 128), "keyIdentifier");
  *(inited + 142) = -4864;
  sub_100288788(*(v2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier), *(v2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8));
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  v4 = BidirectionalCollection<>.joined(separator:)();
  v6 = v5;

  *(inited + 144) = v4;
  *(inited + 152) = v6;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x8000000100465F50;
  sub_100288788(*(v2 + 24), *(v2 + 32));
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  *(inited + 192) = v7;
  *(inited + 200) = v9;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 1919247728;
  *(inited + 232) = 0xE400000000000000;
  *(inited + 240) = UUID.uuidString.getter();
  *(inited + 248) = v10;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0x5474736575716572;
  *(inited + 280) = 0xEB00000000657079;
  *(inited + 288) = String.init<A>(describing:)();
  *(inited + 296) = v11;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x6574617473;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 336) = String.init<A>(describing:)();
  *(inited + 344) = v12;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0x5374756F656D6974;
  *(inited + 376) = 0xEA00000000006365;
  v13 = *(v2 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec);
  *(inited + 408) = &type metadata for Double;
  *(inited + 384) = v13;
  v14 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  result = swift_arrayDestroy();
  *a2 = v14;
  return result;
}

uint64_t sub_10035727C()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));
  sub_10006A2D0(*(v0 + 40), *(v0 + 48));
  sub_1000B2A4C(*(v0 + 56), *(v0 + 64));
  v1 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000B2A4C(*(v0 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion), *(v0 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion + 8));
  sub_10006A178(*(v0 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier), *(v0 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8));

  return v0;
}

uint64_t sub_100357350()
{
  sub_10035727C();

  return swift_deallocClassInstance();
}

unint64_t *sub_1003573B4@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1003573CC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced9AlishaRKE_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1003574D0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003575B8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_100357720()
{
  result = qword_10050BC68;
  if (!qword_10050BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050BC68);
  }

  return result;
}

unint64_t sub_100357778()
{
  result = qword_10050BC70;
  if (!qword_10050BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050BC70);
  }

  return result;
}

unint64_t sub_1003577D0()
{
  result = qword_10050BC78;
  if (!qword_10050BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050BC78);
  }

  return result;
}

unint64_t sub_100357828()
{
  result = qword_10050BC80;
  if (!qword_10050BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050BC80);
  }

  return result;
}

uint64_t sub_10035787C(uint64_t a1, char a2, void *a3)
{
  v38 = *(a1 + 16);
  if (!v38)
  {
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOWORD(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = sub_10008C908(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10031048C(v15, v5 & 1);
    v10 = sub_10008C908(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_100314674();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + 2 * v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v36._object = 0x8000000100466020;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v38 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v24 = *v5;
      v25 = *a3;

      v26 = sub_10008C908(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_10031048C(v30, 1);
        v26 = sub_10008C908(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + 2 * v26) = v24;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v32[2] = v35;
      v5 += 12;
      if (v38 == v8)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100357BF8(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10008C908(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10031072C(v15, v4 & 1);
    v10 = sub_10008C908(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_1003147DC();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v6;
  v21[1] = v5;
  v22 = (v20[7] + 16 * v10);
  *v22 = v7;
  v22[1] = v8;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x8000000100466020;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v24;
  if (v40 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v25 = *(v4 - 1);
      v8 = *v4;
      v26 = *a3;

      v27 = sub_10008C908(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_10031072C(v31, 1);
        v27 = sub_10008C908(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      v35 = (v33[7] + 16 * v27);
      *v35 = v25;
      v35[1] = v8;
      v36 = v33[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v37;
      v4 += 4;
      if (v40 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

double sub_100357FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100357FC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_10035A294(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1003581A4(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1003581A4(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_10035A294(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1003581A4(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_10035A294(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100358284(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100358384(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100358484(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v19 = *(v18 + 8);
      v20 = *(v18 + 32);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 32) = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 40;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_10035860C(uint64_t a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_10034B1D0(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

void sub_100358688(unint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t *a5, uint64_t a6, _BYTE *a7)
{
  v8 = v7;
  if (a1 >> 62)
  {
LABEL_60:
    v68 = a6;
    v69 = _CocoaArrayWrapper.endIndex.getter();
    a6 = v68;
    v11 = v69;
    if (!v69)
    {
      return;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  v12 = 0;
  v75 = a6;
  v78 = v11;
  v71 = a7;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v13 = *(a1 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v16 = [v13 tag];
    if (v16 <= 149)
    {
      if (v16 == 128)
      {
        v32 = [v14 value];
        if (!v32)
        {
          goto LABEL_68;
        }

        v33 = v32;
        v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37 = v8;
        v38 = sub_100090214(v34, v36, 0, 0, 0);
        if (v8)
        {
          sub_10006A178(v34, v36);

          v39 = 0;
        }

        else
        {
          v49 = v38;
          sub_10006A178(v34, v36);
          v39 = v49;
        }

        v8 = 0;
        *a2 = v39;
        *(a2 + 2) = v37 != 0;
        v11 = v78;
      }

      else if (v16 == 131)
      {
        v17 = [v14 value];
        if (!v17)
        {
          goto LABEL_67;
        }

        v18 = v17;
        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = v8;
        v23 = sub_1000939AC(v19, v21, 0, 0, 0);
        if (v8)
        {

          v23 = 0;
        }

        v8 = 0;
        v11 = v78;
        *a3 = v23;
        a3[1] = v22 != 0;
      }

      goto LABEL_5;
    }

    if (v16 == 150)
    {
      if (v75 > 0x2FF)
      {
        v40 = [v14 value];
        if (!v40)
        {
          goto LABEL_69;
        }

        v41 = v40;
        v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = v8;
        v46 = sub_1000939AC(v42, v44, 0, 0, 0);
        if (v8)
        {

          v46 = 0;
        }

        v8 = 0;
        v11 = v78;
        *a7 = v46;
        a7[1] = v45 != 0;
      }

      goto LABEL_5;
    }

    if (v16 != 192)
    {
      goto LABEL_5;
    }

    v24 = [v14 value];
    if (!v24)
    {
      goto LABEL_66;
    }

    v25 = v24;
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = v28;
    v30 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v30 != 2)
      {
        sub_10006A178(v26, v28);
        v11 = v78;
LABEL_43:
        v60 = [v14 value];
        if (v60)
        {
          v61 = v60;
          v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;

          v11 = v78;
        }

        else
        {
          v62 = 0;
          v64 = 0xF000000000000000;
        }

        v65 = *a5;
        v66 = a5[1];
        *a5 = v62;
        a5[1] = v64;
        sub_10006A2D0(v65, v66);
        goto LABEL_5;
      }

      v48 = *(v26 + 16);
      v47 = *(v26 + 24);
      sub_10006A178(v26, v29);
      v31 = v47 - v48;
      if (__OFSUB__(v47, v48))
      {
        goto LABEL_63;
      }

      goto LABEL_31;
    }

    if (v30)
    {
      break;
    }

    sub_10006A178(v26, v28);
    v31 = BYTE6(v28);
LABEL_31:
    v11 = v78;
    if (v31 < 65)
    {
      goto LABEL_43;
    }

LABEL_37:
    v50 = v14;
    v14 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v51))
    {
      v72 = v51;
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      v73 = v50;
      v53 = [v50 value];
      if (!v53)
      {
        goto LABEL_70;
      }

      v54 = v53;
      v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = v57 >> 62;
      if ((v57 >> 62) > 1)
      {
        if (v58 == 2)
        {
          v67 = *(v55 + 16);
          v70 = *(v55 + 24);
          sub_10006A178(v55, v57);
          v59 = v70 - v67;
          if (__OFSUB__(v70, v67))
          {
            goto LABEL_65;
          }
        }

        else
        {
          sub_10006A178(v55, v57);
          v59 = 0;
        }
      }

      else if (v58)
      {
        sub_10006A178(v55, v57);
        LODWORD(v59) = HIDWORD(v55) - v55;
        if (__OFSUB__(HIDWORD(v55), v55))
        {
          goto LABEL_64;
        }

        v59 = v59;
      }

      else
      {
        sub_10006A178(v55, v57);
        v59 = BYTE6(v57);
      }

      v11 = v78;
      *(v52 + 4) = v59;

      _os_log_impl(&_mh_execute_header, v14, v72, "Ignoring proprietary data too large %ld bytes", v52, 0xCu);

      a7 = v71;
    }

    else
    {

      v14 = v50;
    }

LABEL_5:

    ++v12;
    if (v15 == v11)
    {
      return;
    }
  }

  sub_10006A178(v26, v28);
  v11 = v78;
  if (!__OFSUB__(HIDWORD(v26), v26))
  {
    if (HIDWORD(v26) - v26 < 65)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

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
LABEL_70:

  __break(1u);
}

uint64_t sub_100358C38(uint64_t a1, unsigned int a2, int a3, uint64_t a4, unint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v87 = a6;
  LODWORD(v82) = a3;
  v88 = a2;
  v84 = type metadata accessor for UUID();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v79 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v21 = qword_10051B7F0;
  *v20 = qword_10051B7F0;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_109:
    swift_once();
LABEL_10:
    v32 = v88;
    sub_1002A821C(v88, a1, v16);
    sub_1002A8AE0(a4, a5, a1, v16);
    if (a1 == 16)
    {
      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      sub_1002353D0(v32 == 1, v16);
    }

    return 1;
  }

  if (!*(a7 + 16) || (v23 = sub_10008CA34(a1), (v24 & 1) == 0))
  {
    v16 = v87;
    if (qword_100501C40 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_109;
  }

  v25 = *(*(a7 + 56) + v23);
  v26 = v87;
  if (*(a8 + 16) && (v27 = sub_10008CA34(a1), (v28 & 1) != 0))
  {
    v29 = (*(a8 + 56) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    sub_100069E2C(*v29, v31);
  }

  else
  {
    v30 = 0;
    v31 = 0xF000000000000000;
  }

  if (v25 == v88)
  {
    if (v31 >> 60 == 15)
    {
      if (a5 >> 60 == 15)
      {
        sub_10006A2BC(a4, a5);
LABEL_47:
        sub_10006A2D0(v30, v31);
        return 0;
      }

      goto LABEL_20;
    }

    if (a5 >> 60 == 15)
    {
LABEL_20:
      sub_10006A2BC(v30, v31);
      sub_10006A2BC(a4, a5);
      sub_10006A2D0(v30, v31);
      sub_10006A2D0(a4, a5);
      goto LABEL_21;
    }

    sub_10006A2BC(v30, v31);
    sub_10006A2BC(a4, a5);
    v48 = sub_10008FB4C(v30, v31, a4, a5);
    sub_10006A2D0(a4, a5);
    sub_10006A2D0(v30, v31);
    if (v48)
    {
      goto LABEL_47;
    }
  }

LABEL_21:
  v81 = v30;
  if (qword_100501C40 != -1)
  {
    swift_once();
  }

  sub_1002A821C(v88, a1, v26);
  sub_1002A8AE0(a4, a5, a1, v26);
  type metadata accessor for AlishaPeer(0);
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    sub_10006A2D0(v81, v31);
    return 1;
  }

  v34 = v33;
  v37 = *(a7 + 16) && (v35 = sub_10008CA34(16), (v36 & 1) != 0) && *(*(a7 + 56) + v35) == 1;
  v38 = v81;
  if (*(v34 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) < 0x300u)
  {
    if ((a1 - 1) <= 1u)
    {
      v82 = v31;
      v39 = v34;
      v79 = *(*(v34 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 65);
      if (v79)
      {
        v80 = v37;
        v40 = v34;
        v41 = *(v86 + 16);

        v42 = v84;
      }

      else
      {
        v41 = *(v86 + 16);
        v40 = v39;
        v41(v16, v39 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v84);
        v50 = OBJC_IVAR____TtC10seserviced9AlishaRKE_notificationsToBeSuppressed;
        v51 = v85;
        swift_beginAccess();
        v52 = *(v51 + v50);
        v53 = *(v52 + 16);

        if (v53 && (v54 = sub_10008C808(v16), (v55 & 1) != 0))
        {
          v56 = *(*(v52 + 56) + 2 * v54);
          swift_endAccess();
          v57 = v16;
          v58 = v84;
          (*(v86 + 8))(v57, v84);
          v59 = v56 == a1;
          v42 = v58;
          v60 = v59;
          v80 = v60 | v37;
        }

        else
        {
          v80 = v37;
          swift_endAccess();
          v42 = v84;
          (*(v86 + 8))(v16, v84);
        }
      }

      v64 = v83;
      v41(v83, v40 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v42);
      v65 = OBJC_IVAR____TtC10seserviced9AlishaRKE_passiveEntryState;
      v66 = v85;
      swift_beginAccess();
      v67 = *(v66 + v65);
      v68 = *(v67 + 16);

      if (v68)
      {
        v69 = sub_10008C808(v64);
        v31 = v82;
        if (v70)
        {
          v71 = *(*(v67 + 56) + v69);
        }

        else
        {
          v71 = 0;
        }
      }

      else
      {
        v71 = 0;
        v31 = v82;
      }

      v34 = v40;
      swift_endAccess();
      (*(v86 + 8))(v64, v42);
      if (v88 > 3u || v88 == 1)
      {
LABEL_70:
        if (v25 <= 3 && v25 != 1)
        {
          if (v80)
          {
            goto LABEL_76;
          }

          v72 = v79;
          if (v71 == 2)
          {
            v72 = 0;
          }

          if (v72)
          {
LABEL_76:

LABEL_95:
            if (qword_100501B60 != -1)
            {
              swift_once();
            }

            v78 = 0;
LABEL_103:
            sub_100235820(v78, v34);
            goto LABEL_104;
          }

          v74 = *(v40 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
          v75 = *(v40 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
          v76 = *(v40 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
          v77 = *(v40 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
          sub_10006A2BC(v74, v75);
          sub_10006A2BC(v76, v77);

LABEL_93:
          sub_1003375E0(0xD00000000000003BLL, 0x800000010046FE30, v74, v75, v76, v77, 0);
          sub_10006A2D0(v76, v77);
          sub_10006A2D0(v74, v75);
          goto LABEL_95;
        }

LABEL_77:

LABEL_104:
        v38 = v81;
        goto LABEL_105;
      }

      if (v25 <= 3 && v25 != 1)
      {
        if (!v88 || v88 == 3 || v88 == 2)
        {
          goto LABEL_77;
        }

        goto LABEL_70;
      }

      if (v80)
      {
        goto LABEL_82;
      }

      v73 = v79;
      if (v71 == 1)
      {
        v73 = 0;
      }

      if (v73)
      {
LABEL_82:

LABEL_100:
        if (qword_100501B60 != -1)
        {
          swift_once();
        }

        v78 = 1;
        goto LABEL_103;
      }

      v43 = *(v40 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
      v44 = *(v40 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      v45 = *(v40 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v46 = *(v40 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      sub_10006A2BC(v43, v44);
      sub_10006A2BC(v45, v46);

      goto LABEL_99;
    }

    goto LABEL_42;
  }

  if (a1 != 3)
  {
LABEL_42:

    if (a1 == 16)
    {
      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      sub_1002353D0(v88 == 1, v34);
      v47 = v81;
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  if ((v82 & 0x100) == 0)
  {
    if (!v88)
    {
      goto LABEL_85;
    }

    if (v88 <= 0xAu && (v25 - 1) >= 0xAu)
    {
      if (v37 || v82 != 4 && v82 != 11)
      {

        goto LABEL_100;
      }

      v43 = *(v34 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
      v44 = *(v34 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
      v45 = *(v34 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
      v46 = *(v34 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);

      sub_10006A2BC(v43, v44);
      sub_10006A2BC(v45, v46);
LABEL_99:
      sub_1003375E0(0xD000000000000039, 0x800000010046FE70, v43, v44, v45, v46, 0);
      sub_10006A2D0(v45, v46);
      sub_10006A2D0(v43, v44);
      goto LABEL_100;
    }

    if (v88 >= 0xBu)
    {
LABEL_85:
      if (v25 && v25 <= 0xA)
      {
        if (v37 || v82 != 4 && v82 != 11)
        {

          goto LABEL_95;
        }

        v74 = *(v34 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier);
        v75 = *(v34 + OBJC_IVAR____TtC10seserviced4Peer_appletIdentifier + 8);
        v76 = *(v34 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
        v77 = *(v34 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);

        sub_10006A2BC(v74, v75);
        sub_10006A2BC(v76, v77);
        goto LABEL_93;
      }
    }

LABEL_105:
    v47 = v38;
LABEL_106:
    sub_10006A2D0(v47, v31);

    return 1;
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Missing source of change", v63, 2u);
  }

  sub_10006A2D0(v81, v31);

  return 0;
}

void sub_1003597C4(unint64_t a1, uint64_t a2, char **a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_100355F64(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1003598C4(unint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  if (a1 >> 62)
  {
LABEL_62:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  v11 = 0;
  v74 = v10;
  v68 = a6;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v14 = *(a1 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v17 = [v14 tag];
    if (v17 > 131)
    {
      break;
    }

    if (v17 == 128)
    {
      v32 = [v15 value];
      if (!v32)
      {
        goto LABEL_71;
      }

      v33 = v32;
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = v7;
      v38 = sub_100090214(v34, v36, 0, 0, 0);
      if (v7)
      {
        sub_10006A178(v34, v36);

        v39 = 0;
      }

      else
      {
        v48 = v38;
        sub_10006A178(v34, v36);
        v39 = v48;
      }

      v7 = 0;
      *a2 = v39;
      *(a2 + 2) = v37 != 0;
      goto LABEL_50;
    }

    if (v17 == 129)
    {
      v18 = [v15 value];
      if (!v18)
      {
        goto LABEL_70;
      }

      v19 = v18;
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v7;
      v24 = sub_1000939AC(v20, v22, 0, 0, 0);
      if (v7)
      {

        v24 = 0;
      }

      v7 = 0;
      v10 = v74;
      v12 = v23 != 0;
      v13 = a3;
LABEL_5:
      *v13 = v24;
      v13[1] = v12;
    }

LABEL_6:

    ++v11;
    if (v16 == v10)
    {
      return;
    }
  }

  if (v17 == 132)
  {
    v40 = [v15 value];
    if (!v40)
    {
      goto LABEL_69;
    }

    v41 = v40;
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = v7;
    v24 = sub_1000939AC(v42, v44, 0, 0, 0);
    if (v7)
    {

      v24 = 0;
    }

    v7 = 0;
    v13 = a4;
    v10 = v74;
    v12 = v45 != 0;
    goto LABEL_5;
  }

  if (v17 != 135)
  {
    goto LABEL_6;
  }

  v25 = [v15 value];
  if (!v25)
  {
    goto LABEL_68;
  }

  v26 = v25;
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = v29;
  v31 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v31 != 2)
    {
      sub_10006A178(v27, v29);
LABEL_45:
      v59 = [v15 value];
      if (v59)
      {
        v60 = v59;
        v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;
      }

      else
      {
        v61 = 0;
        v63 = 0xF000000000000000;
      }

      v64 = *a6;
      v65 = a6[1];
      *a6 = v61;
      a6[1] = v63;
      sub_10006A2D0(v64, v65);
LABEL_50:
      v10 = v74;
      goto LABEL_6;
    }

    v47 = *(v27 + 16);
    v46 = *(v27 + 24);
    sub_10006A178(v27, v30);
    if (__OFSUB__(v46, v47))
    {
      goto LABEL_65;
    }

    if (v46 - v47 < 65)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  if (!v31)
  {
    sub_10006A178(v27, v29);
    if (BYTE6(v29) < 0x41uLL)
    {
      goto LABEL_45;
    }

LABEL_39:
    v49 = v15;
    v15 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v15, v50))
    {

      v15 = v49;
      goto LABEL_50;
    }

    v69 = v50;
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    v70 = v49;
    v52 = [v49 value];
    if (!v52)
    {
      goto LABEL_72;
    }

    v53 = v52;
    v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = v56 >> 62;
    if ((v56 >> 62) > 1)
    {
      if (v57 == 2)
      {
        v66 = *(v54 + 16);
        v67 = *(v54 + 24);
        sub_10006A178(v54, v56);
        v58 = v67 - v66;
        if (__OFSUB__(v67, v66))
        {
          goto LABEL_67;
        }
      }

      else
      {
        sub_10006A178(v54, v56);
        v58 = 0;
      }
    }

    else if (v57)
    {
      sub_10006A178(v54, v56);
      LODWORD(v58) = HIDWORD(v54) - v54;
      if (__OFSUB__(HIDWORD(v54), v54))
      {
        goto LABEL_66;
      }

      v58 = v58;
    }

    else
    {
      sub_10006A178(v54, v56);
      v58 = BYTE6(v56);
    }

    v10 = v74;
    *(v51 + 4) = v58;

    _os_log_impl(&_mh_execute_header, v15, v69, "Ignoring arbitrary data too large %ld bytes", v51, 0xCu);

    a6 = v68;
    goto LABEL_6;
  }

  sub_10006A178(v27, v29);
  if (!__OFSUB__(HIDWORD(v27), v27))
  {
    if (HIDWORD(v27) - v27 < 65)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

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
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:

  __break(1u);
}

uint64_t sub_100359E48(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType))
  {
    v5 = *(result + 24);
    v6 = *(result + 32);
    v7 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
    v8 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
    v9 = result;
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409A40;
    strcpy((inited + 32), "rkeFunctionID");
    *(inited + 46) = -4864;
    *(inited + 48) = *(v9 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
    *(inited + 72) = &type metadata for UInt16;
    *(inited + 80) = 0x6F69746341656B72;
    *(inited + 88) = 0xEB0000000044496ELL;
    *(inited + 96) = *(v9 + 16);
    *(inited + 120) = &type metadata for UInt8;
    *(inited + 128) = 0x726F727265;
    *(inited + 168) = &type metadata for String;
    *(inited + 136) = 0xE500000000000000;
    *(inited + 144) = a2;
    *(inited + 152) = a3;

    v11 = sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    sub_1003375E0(0xD000000000000048, 0x800000010046FD50, v5, v6, v7, v8, v11);
  }

  return result;
}

uint64_t sub_10035A00C(uint64_t result, char a2)
{
  if (!*(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType))
  {
    v3 = *(result + 24);
    v4 = *(result + 32);
    v5 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
    v6 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
    v7 = result;
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409A40;
    strcpy((inited + 32), "rkeFunctionID");
    *(inited + 46) = -4864;
    *(inited + 48) = *(v7 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
    *(inited + 72) = &type metadata for UInt16;
    *(inited + 80) = 0x6F69746341656B72;
    *(inited + 88) = 0xEB0000000044496ELL;
    *(inited + 96) = *(v7 + 16);
    *(inited + 120) = &type metadata for UInt8;
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x800000010046FDA0;
    *(inited + 168) = &type metadata for UInt8;
    *(inited + 144) = a2;
    v9 = sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    sub_1003375E0(0xD000000000000048, 0x800000010046FD50, v3, v4, v5, v6, v9);
  }

  return result;
}

uint64_t sub_10035A1BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10035A20C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10034B1D0(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = v5;
  }
}

uint64_t sub_10035A240()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10035A294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10035A2DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10035A31C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10035A370()
{

  sub_10006A178(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10035A3D4(uint64_t result)
{
  if (!*(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType))
  {
    v1 = *(result + 24);
    v2 = *(result + 32);
    v3 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
    v4 = *(result + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
    v5 = result;
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    strcpy((inited + 32), "rkeFunctionID");
    *(inited + 46) = -4864;
    *(inited + 48) = *(v5 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);
    *(inited + 72) = &type metadata for UInt16;
    *(inited + 80) = 0x6F69746341656B72;
    *(inited + 88) = 0xEB0000000044496ELL;
    v7 = *(v5 + 16);
    *(inited + 120) = &type metadata for UInt8;
    *(inited + 96) = v7;
    v8 = sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    sub_1003375E0(0xD000000000000045, 0x8000000100470020, v1, v2, v3, v4, v8);
  }

  return result;
}

void sub_10035A558(unsigned int a1, int a2, char *a3, unint64_t a4, int a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void *a13, void (*a14)(Class, id), unint64_t a15)
{
  v249 = a8;
  v248 = a7;
  v258 = a6;
  LODWORD(v266) = a5;
  v270 = a4;
  v271 = a3;
  v261 = a2;
  v262 = a1;
  v15 = a15;
  v16 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v16 - 8);
  v239 = &v224 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v252 = &v224 - v19;
  v246 = type metadata accessor for Logger();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v254 = &v224 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v255 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v224 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v224 - v25;
  __chkstk_darwin(v27);
  v29 = &v224 - v28;
  __chkstk_darwin(v30);
  v259 = &v224 - v31;
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = (&v224 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = swift_allocObject();
  v267 = a14;
  *(v36 + 16) = a14;
  *(v36 + 24) = a15;
  v37 = qword_100501D90;
  swift_retain_n();
  if (v37 != -1)
  {
LABEL_165:
    swift_once();
  }

  v38 = qword_10051B7F0;
  *v35 = qword_10051B7F0;
  v39 = *(v33 + 104);
  v242 = enum case for DispatchPredicate.onQueue(_:);
  v243 = v33 + 104;
  v241 = v39;
  v39(v35);
  v253 = v38;
  v40 = _dispatchPreconditionTest(_:)();
  v42 = *(v33 + 8);
  v41 = v33 + 8;
  v244 = v35;
  v240 = v42;
  v42(v35, v32);
  if (v40)
  {
    v237 = v41;
    v238 = v32;
    v40 = swift_allocObject();
    v43 = v271;
    v44 = v270;
    *(v40 + 16) = v271;
    *(v40 + 24) = v44;
    sub_100069E2C(v43, v44);
    if (qword_100501D78 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v35 = a13;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_10035C978;
  *(v45 + 24) = v40;

  v32 = sub_1000CAAC4();

  v46 = sub_1000CA840(v32);
  if (!v46)
  {
LABEL_77:

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Vehicle is not connected", v75, 2u);
    }

    sub_1002E3370(264, v267);

    goto LABEL_161;
  }

  v47 = v46;
  v235 = a11;
  v234 = a10;
  v233 = a9;
  if (!v266)
  {
    type metadata accessor for AlishaPeer(0);
    v76 = swift_dynamicCastClass();
    if (v76)
    {
      if (*(v76 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version) >= 0x300u && v262 == 1)
      {

        if (v261)
        {
          v77 = 13;
        }

        else
        {
          v77 = 3;
        }

        sub_10035A558(3u, v77, v271, v270, 0, v258, v248, v249, v233, v234, v235, a12, a13, v267, v15);

        return;
      }
    }
  }

  v231 = a12;
  v228 = v23;
  v229 = v26;
  v230 = v29;
  v260 = v36;
  v48 = OBJC_IVAR____TtC10seserviced9AlishaRKE_requestsInProgress;
  swift_beginAccess();
  v232 = v48;
  v33 = *(a13 + v48);
  if (v33 >> 62)
  {
LABEL_170:
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v270;
  v257 = v35;
  v256 = v32;
  v236 = v21;
  v265 = v47;
  v247 = v15;

  v23 = v271;
  v47 = v33;
  if (!v29)
  {
    v33 = 0;
LABEL_88:

    v66 = swift_allocObject();
    *(v66 + 16) = v23;
    *(v66 + 24) = v36;
    sub_100069E2C(v23, v36);
    if (qword_1005019E8 != -1)
    {
LABEL_173:
      swift_once();
    }

    v78 = swift_allocObject();
    *(v78 + 16) = sub_10035C980;
    *(v78 + 24) = v66;

    v79 = sub_1000CAA04();

    v80 = sub_1000CA810(v79);
    v21 = v265;
    v15 = v256;
    v81 = v257;
    if (v80)
    {
      v82 = v80;
      v83 = [v80 readerInfo];
      if (v83)
      {
        v273 = v79;
        v84 = v83;
        v264 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        type metadata accessor for AlishaPeer(0);
        v87 = swift_dynamicCastClass();
        if (!v87)
        {

          v112 = Logger.logObject.getter();
          v113 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            *&aBlock = v115;
            *v114 = 136315138;

            v116 = UUID.uuidString.getter();
            v118 = v117;

            v119 = sub_1002FFA0C(v116, v118, &aBlock);

            *(v114 + 4) = v119;
            _os_log_impl(&_mh_execute_header, v112, v113, "Failed to cast Peer to AlishaPeer %s", v114, 0xCu);
            sub_1000752F4(v115);
          }

          sub_1002E3370(258, v267);

          return;
        }

        v88 = v87;
        v227 = v33;
        v89 = *(*(v87 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 88);
        if (*(v89 + 16))
        {
          v90 = sub_10008CA34(v262);
          v91 = v255;
          if (v92)
          {
            v93 = *(*(v89 + 56) + 8 * v90);
          }

          else
          {
            v93 = 5000.0;
          }
        }

        else
        {
          v93 = 5000.0;
          v91 = v255;
        }

        if ([v82 getEndpointUser] <= 1)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v120;
          v121 = objc_opt_self();
          v122 = String._bridgeToObjectiveC()();

          sub_10004D584(v121, v122);
        }

        v123 = *(v88 + OBJC_IVAR____TtC10seserviced10AlishaPeer_version);
        v263 = OBJC_IVAR____TtC10seserviced10AlishaPeer_version;
        if (v123 >= 0x300)
        {
          v124 = *(v81 + OBJC_IVAR____TtC10seserviced9AlishaRKE_currentExecutionIdentifier);
          v125 = *(v81 + OBJC_IVAR____TtC10seserviced9AlishaRKE_currentExecutionIdentifier);
          if (((v125 + 1) & 0x100) != 0)
          {
            v126 = 1;
          }

          else
          {
            v126 = v125 + 1;
          }

          *(v81 + OBJC_IVAR____TtC10seserviced9AlishaRKE_currentExecutionIdentifier) = v126;
        }

        else
        {
          v124 = 0;
        }

        v272 = v88;
        v269 = v86;
        v127 = v258;
        if (v258 > 0xFF)
        {
LABEL_176:
          __break(1u);
        }

        else
        {
          v225 = v123;
          v128 = v123 < 0x300;
          v250 = v82;
          v129 = [v82 appletIdentifier];
          v130 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v251 = v130;
          v132 = v131;
          v268 = v131;

          v133 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
          swift_beginAccess();
          v134 = *(v91 + 16);
          v226 = v133;
          (v134)(v259, v21 + v133, v236);
          type metadata accessor for AlishaRKE.RKERequest(0);
          v15 = swift_allocObject();
          v135 = (v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
          *v135 = 0;
          v135[1] = 0;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state) = 0;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer) = 0;
          v136 = (v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
          v137 = v271;
          v138 = v270;
          *v136 = v271;
          v136[1] = v138;
          *(v15 + 24) = v130;
          *(v15 + 32) = v132;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier) = v262;
          *(v15 + 16) = v261;
          v139 = (v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_executionIdentifier);
          v224 = v124;
          *v139 = v124;
          v139[1] = v128;
          v140 = v138;
          *(v15 + 17) = v127;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_requestType) = v266;
          v141 = v233;
          v142 = v234;
          *(v15 + 56) = v233;
          *(v15 + 64) = v142;
          v143 = v231;
          *(v15 + 40) = v235;
          *(v15 + 48) = v143;
          v144 = (v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_readerInformation);
          v145 = v269;
          *v144 = v264;
          v144[1] = v145;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_alishaPeer) = v272;
          v266 = v91 + 16;
          v267 = v134;
          (v134)(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier, v259, v236);
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec) = v93 / 1000.0;
          v146 = (v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_completion);
          v147 = v260;
          *v146 = sub_10035C960;
          v146[1] = v147;
          v264 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state;
          *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_state) = 0;

          sub_100069E2C(v137, v140);
          v21 = v251;

          sub_100069E2C(v21, v268);
          sub_100113B54(v141, v142);
          sub_10006A2BC(v235, v143);
          v148 = qword_100501DB0;

          if (v148 == -1)
          {
            goto LABEL_118;
          }
        }

        swift_once();
LABEL_118:
        v149 = v245;
        v150 = v246;
        (*(v245 + 16))(v254, qword_10051B820 + OBJC_IVAR____TtC10seserviced9AlishaRKE_logger, v246);

        v151 = Logger.logObject.getter();
        v152 = static os_log_type_t.info.getter();

        v153 = os_log_type_enabled(v151, v152);
        v154 = v257;
        v155 = v270;
        if (v153)
        {
          v156 = swift_slowAlloc();
          *v156 = 134217984;
          *(v156 + 4) = *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timeoutSec);
          _os_log_impl(&_mh_execute_header, v151, v152, "RKE request timer set to %f sec", v156, 0xCu);
          v155 = v270;
        }

        sub_10006A178(v21, v268);
        (*(v149 + 8))(v254, v150);
        v157 = v255;
        v158 = *(v255 + 8);
        v159 = v259;
        v268 = v255 + 8;
        v259 = v158;
        (v158)(v159, v236);
        v160 = swift_allocObject();
        swift_weakInit();
        v161 = swift_allocObject();
        *(v161 + 16) = v160;
        *(v161 + 24) = v154;
        v162 = v271;
        *(v161 + 32) = v271;
        *(v161 + 40) = v155;
        v163 = v154;
        v164 = v262;
        *(v161 + 48) = v262;
        *(v161 + 50) = v261;
        v165 = v155;
        v166 = objc_allocWithZone(SESTimer);
        v279 = sub_10035CA08;
        v280 = v161;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v277 = sub_100080830;
        v278 = &unk_1004D1928;
        v167 = _Block_copy(&aBlock);
        sub_100069E2C(v162, v165);
        v271 = v160;

        v168 = sub_1003AE50C(v166, v253, v167);
        _Block_release(v167);

        v169 = OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer;
        v170 = *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer);
        *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_timer) = v168;

        v171 = v232;
        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v163 + v171) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v163 + v171) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v270 = v169;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_100068FC4(&qword_100504060, &qword_10040B370);
        v172 = swift_allocObject();
        *(v172 + 16) = xmmword_10040DA10;
        v173 = objc_opt_self();
        v174 = [v173 TLVWithTag:128 unsignedShort:bswap32(v164) >> 16];
        v175 = v258;
        if (v174)
        {
          *(v172 + 32) = v174;
          v176 = [v173 TLVWithTag:129 unsignedChar:v261];
          if (v176)
          {
            *(v172 + 40) = v176;
            v274 = v172;
            if (*(v272 + v263) >= 0x300u)
            {
              if (v225 < 0x300)
              {
LABEL_184:

                __break(1u);
                goto LABEL_185;
              }

              if (![v173 TLVWithTag:132 unsignedChar:v224])
              {
LABEL_185:

                __break(1u);
                goto LABEL_186;
              }

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v274 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v274 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              if (v249 >> 60 != 15)
              {
                sub_100069E2C(v248, v249);
                isa = Data._bridgeToObjectiveC()().super.isa;
                v178 = [v173 TLVWithTag:136 value:isa];

                if (!v178)
                {
LABEL_187:

                  __break(1u);
                  goto LABEL_188;
                }

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v274 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v274 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                sub_10006A2D0(v248, v249);
              }

              if (![v173 TLVWithTag:193 unsignedChar:v175])
              {
LABEL_186:

                __break(1u);
                goto LABEL_187;
              }

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v274 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v274 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              if ((v175 - 1) <= 1u)
              {
                if (![v173 TLVWithTag:144 unsignedShort:4097])
                {
LABEL_188:

                  __break(1u);

                  __break(1u);
                  return;
                }

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v274 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v274 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }
            }

            *&aBlock = sub_1002B3B94(&off_1004C4FA8);
            *(&aBlock + 1) = v179;
            sub_10009393C(0, &qword_100502418, SESTLV_ptr);
            v180 = Array._bridgeToObjectiveC()().super.isa;
            v181 = [v173 TLVWithTag:32624 children:v180];

            if (v181)
            {
              v182 = [v181 asData];

              v183 = v244;
              if (v182)
              {

                v184 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v186 = v185;

                Data.append(_:)();
                sub_10006A178(v184, v186);
                if (qword_100501B60 != -1)
                {
                  swift_once();
                }

                v187 = qword_10051B5A0;
                v189 = *(&aBlock + 1);
                v188 = aBlock;
                v190 = v252;
                v191 = v236;
                (v267)(v252, v15 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_connectionIdentifier, v236);
                (*(v157 + 56))(v190, 0, 1, v191);
                v192 = v253;
                *v183 = v253;
                v193 = v238;
                v241(v183, v242, v238);
                v194 = v192;
                LOBYTE(v192) = _dispatchPreconditionTest(_:)();
                v240(v183, v193);
                if (v192)
                {
                  v195 = v239;
                  sub_1000756F8(v190, v239);
                  if ((*(v157 + 48))(v195, 1, v191) == 1)
                  {
                    sub_100075768(v195, &unk_10050BE80, &unk_10040B360);
                  }

                  else
                  {
                    v272 = v187;
                    v273 = v15;
                    v196 = v230;
                    (*(v157 + 32))(v230, v195, v191);
                    v197 = v265;
                    v198 = v229;
                    v199 = v267;
                    (v267)(v229, v265 + v226, v191);
                    v200 = static UUID.== infix(_:_:)();
                    v201 = v259;
                    (v259)(v198, v191);
                    if ((v200 & 1) == 0)
                    {
                      v207 = v228;
                      (v199)(v228, v196, v191);

                      v208 = Logger.logObject.getter();
                      v209 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v208, v209))
                      {
                        v210 = swift_slowAlloc();
                        v275 = swift_slowAlloc();
                        *v210 = 136315394;
                        sub_10035A294(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                        LODWORD(v272) = v209;
                        v211 = dispatch thunk of CustomStringConvertible.description.getter();
                        v213 = v212;
                        v214 = v207;
                        v215 = v259;
                        (v259)(v214, v191);
                        v216 = sub_1002FFA0C(v211, v213, &v275);

                        *(v210 + 4) = v216;
                        *(v210 + 12) = 2080;
                        v217 = v229;
                        (v267)(v229, v197 + v226, v191);
                        v218 = dispatch thunk of CustomStringConvertible.description.getter();
                        v220 = v219;
                        v215(v217, v191);
                        v221 = sub_1002FFA0C(v218, v220, &v275);

                        *(v210 + 14) = v221;
                        _os_log_impl(&_mh_execute_header, v208, v272, "Connection identifier has changed %s %s", v210, 0x16u);
                        swift_arrayDestroy();
                      }

                      else
                      {

                        v222 = v207;
                        v215 = v259;
                        (v259)(v222, v191);
                      }

                      v204 = v250;
                      v205 = &qword_10050B000;
                      v206 = v270;
                      v15 = v273;
                      v215(v230, v191);
                      sub_100075768(v252, &unk_10050BE80, &unk_10040B360);
                      v191 = v264;
LABEL_158:
                      *(v15 + v191) = 1;
                      v223 = *(v15 + v206);
                      if (v223)
                      {
                        sub_1003AE618(v223, *(v15 + v205[358]));
                      }

                      sub_10035A3D4(v15);

                      sub_10006A178(aBlock, *(&aBlock + 1));

                      goto LABEL_161;
                    }

                    v201(v196, v191);
                    v15 = v273;
                  }

                  v189 = sub_100239160(3, 17, v188, v189);
                  v183 = v202;
                  v203 = v227;
                  v191 = v264;
                  if (qword_100501960 == -1)
                  {
LABEL_152:
                    sub_1000E71A0(v189, v183, v265);

                    sub_10006A178(v189, v183);
                    sub_100075768(v252, &unk_10050BE80, &unk_10040B360);
                    v204 = v250;
                    v205 = &qword_10050B000;
                    v206 = v270;
                    if (v203)
                    {
                    }

                    goto LABEL_158;
                  }
                }

                else
                {
                  __break(1u);
                }

                swift_once();
                v203 = v227;
                goto LABEL_152;
              }

              goto LABEL_183;
            }

LABEL_182:

            __break(1u);
LABEL_183:

            __break(1u);
            goto LABEL_184;
          }
        }

        else
        {

          __break(1u);
        }

        __break(1u);
        goto LABEL_182;
      }
    }

    sub_100069E2C(v23, v36);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();
    sub_10006A178(v23, v36);
    if (os_log_type_enabled(v103, v104))
    {
      v105 = v36;
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *&aBlock = v107;
      *v106 = 136315138;
      v281 = sub_100288788(v23, v105);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v108 = BidirectionalCollection<>.joined(separator:)();
      v110 = v109;

      v111 = sub_1002FFA0C(v108, v110, &aBlock);

      *(v106 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v103, v104, "Failed to retrieve valid endpoint for key %s", v106, 0xCu);
      sub_1000752F4(v107);
    }

    sub_1002E3370(256, v267);

    goto LABEL_161;
  }

  v32 = v29;
  v15 = 0;
  v33 = 0;
  v272 = v47 & 0xFFFFFFFFFFFFFF8;
  v273 = v47 & 0xC000000000000001;
  if (v271)
  {
    v49 = 0;
  }

  else
  {
    v49 = v36 == 0xC000000000000000;
  }

  v50 = !v49;
  LODWORD(v269) = v50;
  v21 = v36 >> 62;
  v51 = __OFSUB__(HIDWORD(v271), v271);
  LODWORD(v264) = v51;
  v263 = HIDWORD(v271) - v271;
  v268 = BYTE6(v36);
  v251 = v47;
  v250 = v29;
  while (1)
  {
    if (v273)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v35 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }
    }

    else
    {
      if (v15 >= *(v272 + 16))
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }

      v29 = *(v47 + 8 * v15 + 32);

      v35 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_76;
      }
    }

    v52 = *&v29[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier];
    v26 = *&v29[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8];
    v53 = v26 >> 62;
    if (v26 >> 62 == 3)
    {
      break;
    }

    if (v53 > 1)
    {
      if (v53 != 2)
      {
        goto LABEL_47;
      }

      v59 = *(v52 + 16);
      v58 = *(v52 + 24);
      v60 = __OFSUB__(v58, v59);
      v57 = v58 - v59;
      if (v60)
      {
        __break(1u);
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      if (v21 <= 1)
      {
LABEL_44:
        v61 = v268;
        if (v21)
        {
          v61 = v263;
          if (v264)
          {
            goto LABEL_164;
          }
        }

        goto LABEL_50;
      }
    }

    else if (v53)
    {
      LODWORD(v57) = HIDWORD(v52) - v52;
      if (__OFSUB__(HIDWORD(v52), v52))
      {
        goto LABEL_169;
      }

      v57 = v57;
      if (v21 <= 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v57 = BYTE6(v26);
      if (v21 <= 1)
      {
        goto LABEL_44;
      }
    }

LABEL_48:
    if (v21 != 2)
    {
      if (!v57)
      {
        goto LABEL_95;
      }

LABEL_20:

      goto LABEL_21;
    }

    v63 = *(v23 + 2);
    v62 = *(v23 + 3);
    v60 = __OFSUB__(v62, v63);
    v61 = v62 - v63;
    if (v60)
    {
      goto LABEL_163;
    }

LABEL_50:
    if (v57 != v61)
    {
      goto LABEL_20;
    }

    if (v57 < 1)
    {
      goto LABEL_95;
    }

    if (v53 <= 1)
    {
      if (!v53)
      {
        *&aBlock = *&v29[OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier];
        WORD4(aBlock) = v26;
        BYTE10(aBlock) = BYTE2(v26);
        BYTE11(aBlock) = BYTE3(v26);
        BYTE12(aBlock) = BYTE4(v26);
        BYTE13(aBlock) = BYTE5(v26);
        goto LABEL_72;
      }

      v23 = 0;
      v33 = v52;
      v69 = v52 >> 32;
      v66 = v69 - v33;
      if (v69 < v33)
      {
        __break(1u);
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      v70 = __DataStorage._bytes.getter();
      if (v70)
      {
        v71 = __DataStorage._offset.getter();
        if (__OFSUB__(v33, v71))
        {
          goto LABEL_175;
        }

        v70 += v33 - v71;
      }

      __DataStorage._length.getter();
      v72 = v70;
      v36 = v270;
      v33 = 0;
      sub_10019F024(v72, v271, v270, &aBlock);

      v68 = aBlock;
      v23 = v271;
LABEL_69:
      v47 = v251;
      v32 = v250;
      if (v68)
      {
        goto LABEL_96;
      }

      goto LABEL_21;
    }

    if (v53 == 2)
    {
      v64 = *(v52 + 16);
      v23 = *(v52 + 24);
      v36 = __DataStorage._bytes.getter();
      if (v36)
      {
        v65 = __DataStorage._offset.getter();
        if (__OFSUB__(v64, v65))
        {
          __break(1u);
LABEL_175:
          __break(1u);
          goto LABEL_176;
        }

        v36 += v64 - v65;
      }

      v60 = __OFSUB__(v23, v64);
      v66 = &v23[-v64];
      if (v60)
      {
        goto LABEL_172;
      }

      __DataStorage._length.getter();
      v67 = v36;
      v23 = v271;
      v36 = v270;
      sub_10019F024(v67, v271, v270, &aBlock);

      v68 = aBlock;
      goto LABEL_69;
    }

    *(&aBlock + 6) = 0;
    *&aBlock = 0;
LABEL_72:
    sub_10019F024(&aBlock, v23, v36, &v281);

    if (v281)
    {
      goto LABEL_96;
    }

LABEL_21:
    ++v15;
    if (v35 == v32)
    {
      goto LABEL_88;
    }
  }

  if (v52)
  {
    v54 = 0;
  }

  else
  {
    v54 = v26 == 0xC000000000000000;
  }

  v56 = !v54 || v21 < 3;
  if ((v56 | v269))
  {
LABEL_47:
    v57 = 0;
    if (v21 <= 1)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

LABEL_95:

LABEL_96:

  sub_100069E2C(v23, v36);
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();
  sub_10006A178(v23, v36);
  if (os_log_type_enabled(v94, v95))
  {
    v96 = v36;
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *&aBlock = v98;
    *v97 = 136315138;
    v281 = sub_100288788(v23, v96);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v99 = BidirectionalCollection<>.joined(separator:)();
    v101 = v100;

    v102 = sub_1002FFA0C(v99, v101, &aBlock);

    *(v97 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v94, v95, "An action is already in progress for key %s", v97, 0xCu);
    sub_1000752F4(v98);
  }

  sub_1002E3370(260, v267);

LABEL_161:
}

uint64_t sub_10035C988()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10035C9C0()
{

  sub_10006A178(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 51, 7);
}

unint64_t sub_10035CA1C()
{
  result = qword_10050BCA0;
  if (!qword_10050BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050BCA0);
  }

  return result;
}

void sub_10035CAB8(uint64_t a1)
{
  if (SESInternalVariant())
  {
    v1 = objc_opt_self();
    v2 = String._bridgeToObjectiveC()();
    LODWORD(v1) = [v1 isFirstLaunchAfterBootForKey:v2];

    if (v1)
    {

      sub_10035CB54();
    }
  }
}

void sub_10035CB54()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v12 = MobileGestalt_get_current_device();
  if (v12)
  {
    v13 = v12;
    v14 = MobileGestalt_copy_buildVersion_obj();

    if (v14)
    {
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (qword_100501DB8 != -1)
      {
        swift_once();
      }

      v17 = sub_1000958E4(v8, qword_10050BCB0);
      swift_beginAccess();
      v18 = *(v9 + 16);
      v55 = v17;
      v18(v11, v17, v8);
      UserDefaultBacked.wrappedValue.getter();
      (*(v9 + 8))(v11, v8);
      v19 = v68;
      v64 = aBlock;
      v62 = sub_10035DAB8();
      if (qword_100501DC0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000958E4(v20, qword_10050BCC8);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();

      v23 = os_log_type_enabled(v21, v22);
      v54 = v4;
      v53 = v3;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        aBlock = v52;
        *v24 = 136315650;
        v25 = v16;
        v26 = v1;
        v27 = v0;
        if (v19)
        {
          v28 = v64;
        }

        else
        {
          v28 = 0x3E6C696E3CLL;
        }

        if (v19)
        {
          v29 = v19;
        }

        else
        {
          v29 = 0xE500000000000000;
        }

        v30 = sub_1002FFA0C(v28, v29, &aBlock);

        *(v24 + 4) = v30;
        v0 = v27;
        v1 = v26;
        v16 = v25;
        *(v24 + 12) = 2080;
        v31 = v63;
        *(v24 + 14) = sub_1002FFA0C(v63, v25, &aBlock);
        *(v24 + 22) = 1024;
        v32 = v62;
        *(v24 + 24) = v62 & 1;
        _os_log_impl(&_mh_execute_header, v21, v22, "lastCheckedVersion %s current %s tethered %{BOOL}d", v24, 0x1Cu);
        swift_arrayDestroy();

        if (v19)
        {
          goto LABEL_15;
        }
      }

      else
      {

        v31 = v63;
        v32 = v62;
        if (v19)
        {
LABEL_15:
          if (v64 == v31 && v19 == v16)
          {

LABEL_27:
            v65 = v31;
            v66 = v16;
            swift_beginAccess();
            UserDefaultBacked.wrappedValue.setter();
            swift_endAccess();
            v37 = objc_opt_self();
            v38 = String._bridgeToObjectiveC()();
            [v37 setFirstLaunchAfterBootDoneForKey:v38];

            return;
          }

          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v39 | v32))
          {
            goto LABEL_27;
          }

          goto LABEL_29;
        }
      }

      if (v32)
      {
        goto LABEL_27;
      }

LABEL_29:
      sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
      v40 = v31;
      v42 = v56;
      v41 = v57;
      v43 = v16;
      v44 = v58;
      (*(v57 + 104))(v56, enum case for DispatchQoS.QoSClass.default(_:), v58);
      v45 = static OS_dispatch_queue.global(qos:)();
      (*(v41 + 8))(v42, v44);
      v46 = swift_allocObject();
      v47 = v59;
      v46[2] = v59;
      v46[3] = v40;
      v46[4] = v43;
      v46[5] = v47;
      v71 = sub_10035DD04;
      v72 = v46;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v69 = sub_100080830;
      v70 = &unk_1004D1978;
      v48 = _Block_copy(&aBlock);
      v49 = v60;
      static DispatchQoS.unspecified.getter();
      v65 = _swiftEmptyArrayStorage;
      sub_1000BA7E0();
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
      v50 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v48);

      (*(v1 + 8))(v50, v0);
      (*(v61 + 8))(v49, v54);

      return;
    }

    if (qword_100501DC0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000958E4(v33, qword_10050BCC8);
    v64 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v64, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v64, v34, "MG buildVersion not available?", v35, 2u);
    }

    v36 = v64;
  }

  else
  {
    __break(1u);
  }
}

void sub_10035D424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
  v12 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v14 = objc_opt_self();

  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = sub_10035DD28;
  v16[4] = v13;
  aBlock[4] = sub_10019F2DC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BBFA0;
  aBlock[3] = &unk_1004D19F0;
  v17 = _Block_copy(aBlock);
  v18 = v12;

  sub_1003AF710(v14, v15, v17);
  _Block_release(v17);
}

void sub_10035D67C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_100501DC0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10050BCC8);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_1001A1EF0(a1, 1);
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_1002FFA0C(v10, v11, v19);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Failed to get SE %s", v8, 0xCu);
      sub_1000752F4(v9);
    }

    else
    {
    }
  }

  else
  {
    sub_10035E10C(a1, a2);
    if (qword_100501DB8 != -1)
    {
      swift_once();
    }

    v15 = sub_100068FC4(&qword_100504228, &unk_10040F470);
    sub_1000958E4(v15, qword_10050BCB0);
    v19[3] = a4;
    v19[4] = a5;
    swift_beginAccess();

    UserDefaultBacked.wrappedValue.setter();
    swift_endAccess();
    v16 = objc_opt_self();
    v17 = String._bridgeToObjectiveC()();
    [v16 setFirstLaunchAfterBootDoneForKey:v17];
  }
}

uint64_t sub_10035D904()
{
  v0 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  sub_1000B6A94(v0, qword_10050BCB0);
  sub_1000958E4(v0, qword_10050BCB0);
  sub_100068FC4(&qword_1005048A0, &qword_100409C80);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_10035DA40(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_10050BCC8);
  sub_1000958E4(v2, qword_10050BCC8);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10035DAB8()
{
  if (MSURetrievePreviousUpdateState())
  {
    if (qword_100501DC0 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_1000958E4(v0, qword_10050BCC8);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 67109120;
      swift_beginAccess();
      *(v3 + 4) = 1;
      _os_log_impl(&_mh_execute_header, v1, v2, "MSURetrievePreviousUpdateState %u", v3, 8u);
    }

    swift_beginAccess();
    return 0;
  }

  else
  {
    if (qword_100501DC0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_10050BCC8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to MSURetrievePreviousUpdateState", v8, 2u);
    }

    return 0;
  }
}

uint64_t sub_10035DCCC()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_10035DD10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10035DD38()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10035DD78(void *a1)
{
  v2 = sub_1002B3B94(&off_1004C5000);
  v4 = v3;
  v5 = sub_1002B3B94(&off_1004C5028);
  v7 = v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v29 = 0;
  v9 = sub_1003AF230(a1, isa, 1, &v29);

  if (!v9)
  {
    v25 = v29;
LABEL_9:
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10006A178(v2, v4);
    sub_10006A178(v5, v7);

    return;
  }

  v10 = v29;

  v11 = Data._bridgeToObjectiveC()().super.isa;
  v29 = 0;
  v12 = [a1 transceive:v11 error:&v29];

  v13 = v29;
  if (!v12)
  {
    v25 = v13;
    goto LABEL_9;
  }

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (qword_100501DC0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000958E4(v17, qword_10050BCC8);
  sub_100069E2C(v14, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  sub_10006A178(v14, v16);
  if (os_log_type_enabled(v18, v19))
  {
    v28 = v5;
    v20 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v20 = 136315138;
    sub_100288788(v14, v16);
    log = v18;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v21 = BidirectionalCollection<>.joined(separator:)();
    v23 = v22;

    v24 = sub_1002FFA0C(v21, v23, &v29);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, log, v19, "Dumped Slot Info : %s", v20, 0xCu);
    sub_1000752F4(v27);

    sub_10006A178(v2, v4);
    sub_10006A178(v28, v7);
    sub_10006A178(v14, v16);
  }

  else
  {
    sub_10006A178(v2, v4);
    sub_10006A178(v5, v7);

    sub_10006A178(v14, v16);
  }
}

void sub_10035E10C(char *a1, const char *a2)
{
  v2 = a1;
  v3 = sub_1003AF3C4(a1, a2);
  v4 = [v3 isProd];

  if (!v4)
  {
    return;
  }

  v6 = sub_1003AF3C4(v2, v5);
  v7 = [v6 chipId];

  v8 = sub_10035E7B0(v7);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [objc_opt_self() getLoggedEvents];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v57 = sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    goto LABEL_17;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_18:

LABEL_19:
    v31 = objc_opt_self();
    v32 = String._bridgeToObjectiveC()();
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *&v58[0] = 0x617453746E657645;
    *(&v58[0] + 1) = 0xEB00000000737574;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 0;
    sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v31 postCAEventFor:v32 eventInput:isa];

    v30 = 0;
LABEL_20:
    if (qword_100501DC0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000958E4(v35, qword_10050BCC8);
    v36 = v2;
    v37 = v9;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v54 = v9;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 134218498;
      v43 = sub_1003AF3C4(v36, v42);
      v44 = [v43 csn];

      *(v40 + 4) = v44;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v41 = v54;
      *(v40 + 22) = 1024;
      *(v40 + 24) = v30;
      v45 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "Got SE CSN %lu expected CSN %@, eventLogged: %{BOOL}d", v40, 0x1Cu);
      sub_100075768(v41, &unk_100503F70, &unk_10040B2E0);
    }

    else
    {

      v38 = v36;
    }

    v47 = sub_1003AF3C4(v36, v46);
    v48 = [v47 csn];

    if (((v48 >= [v37 unsignedIntegerValue]) & ~v30) == 0)
    {
      sub_10035DD78(v36);
      v49 = objc_opt_self();
      v50 = String._bridgeToObjectiveC()();
      v51 = String._bridgeToObjectiveC()();
      [v49 requestTapToRadar:v50 client:v51 fullArchive:1];
    }

    return;
  }

  while (1)
  {
    v52 = v2;
    v53 = v9;
    v55 = objc_opt_self();
    if (v13 < 1)
    {
      break;
    }

    v56 = v12 & 0xC000000000000001;
    v2 = "23SecureElementVersionTTR";
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v14 = 0;
    v9 = &v61;
    while (1)
    {
      v15 = v56 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v12 + 8 * v14 + 32);
      v16 = v15;
      v17 = String._bridgeToObjectiveC()();
      *&v58[0] = 0x617453746E657645;
      *(&v58[0] + 1) = 0xEB00000000737574;
      AnyHashable.init<A>(_:)();
      v62[8] = v57;
      v62[5] = v16;
      v18 = static _DictionaryStorage.allocate(capacity:)();
      v19 = v16;
      sub_10035E888(v62, v58);
      v20 = sub_10008CA7C(v58);
      if (v21)
      {
        break;
      }

      v18[(v20 >> 6) + 8] |= 1 << v20;
      v22 = v18[6] + 40 * v20;
      v23 = v58[0];
      v24 = v58[1];
      *(v22 + 32) = v59;
      *v22 = v23;
      *(v22 + 16) = v24;
      sub_100075D50(&v60, (v18[7] + 32 * v20));
      v25 = v18[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_16;
      }

      ++v14;
      v18[2] = v27;
      sub_100075768(v62, &qword_100502C48, &qword_10040B2D0);
      v28 = v12;
      v29 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v55 postCAEventFor:v17 eventInput:v29];

      v12 = v28;
      if (v13 == v14)
      {

        v30 = 1;
        v2 = v52;
        v9 = v53;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

_UNKNOWN **sub_10035E7B0(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 99)
  {
    if (a1 > 54)
    {
      if (a1 != 55)
      {
        if (a1 != 56)
        {
          goto LABEL_20;
        }

        v1 = &off_1004DCAC8;
        goto LABEL_19;
      }
    }

    else
    {
      if (a1 == 44)
      {
        v1 = &off_1004DCA98;
        goto LABEL_19;
      }

      if (a1 != 54)
      {
        goto LABEL_20;
      }
    }

    v1 = &off_1004DCAB0;
LABEL_19:
    v2 = v1;
    goto LABEL_20;
  }

  if (a1 <= 199)
  {
    if (a1 == 100)
    {
      v1 = &off_1004DCAE0;
    }

    else
    {
      if (a1 != 115)
      {
        goto LABEL_20;
      }

      v1 = &off_1004DCAF8;
    }

    goto LABEL_19;
  }

  if (a1 == 200 || a1 == 210)
  {
    v1 = &off_1004DCB10;
    goto LABEL_19;
  }

LABEL_20:

  return v1;
}

uint64_t sub_10035E888(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10035E904()
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v2 - 8);
  v4 = &v55 - v3;
  v5 = type metadata accessor for NSPersistentStore.StoreType();
  v68 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100068FC4(&unk_10050BEA0, &unk_10040F450);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for URL();
  __chkstk_darwin(v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + 120);
  if (v20)
  {
    v21 = *(v0 + 120);
  }

  else
  {
    v58 = v8;
    v59 = v7;
    v60 = v5;
    v61 = v19;
    v62 = v17;
    v55 = v4;
    v63 = v1;
    v56 = v0;
    if (qword_100501DD0 != -1)
    {
      v54 = v16;
      swift_once();
      v16 = v54;
    }

    v23 = v16;
    sub_1000958E4(v16, qword_10050BD20);
    v24 = objc_allocWithZone(NSManagedObjectModel);
    URL._bridgeToObjectiveC()(v25);
    v21 = v26;
    v27 = [v24 initWithContentsOfURL:v26];

    if (!v27)
    {
      sub_10009591C();
      swift_allocError();
      *v43 = 6;
      swift_willThrow();
      return v21;
    }

    v28 = v11;
    v66 = 0xD00000000000001BLL;
    v67 = 0x8000000100470340;
    v64 = qword_10050BD10;
    v65 = off_10050BD18;

    v64 = String.init<A>(_:)();
    v65 = v29;
    String.append<A>(contentsOf:)();
    v30 = v62;
    v31 = *(v62 + 56);
    v57 = v23;
    v31(v14, 1, 1, v23);
    (*(v9 + 104))(v28, enum case for URL.DirectoryHint.inferFromPath(_:), v58);
    v32 = v61;
    URL.init(filePath:directoryHint:relativeTo:)();
    v33 = [objc_allocWithZone(NSPersistentStoreCoordinator) initWithManagedObjectModel:v27];
    v34 = v59;
    static NSPersistentStore.StoreType.sqlite.getter();
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v36;
    AnyHashable.init<A>(_:)();
    v37 = sub_100156F48();
    v38.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    *(inited + 96) = v37;
    *(inited + 72) = v38;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v39;
    AnyHashable.init<A>(_:)();
    v40.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    *(inited + 168) = v37;
    *(inited + 144) = v40;
    sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    v21 = v33;
    v41 = v63;
    v42 = NSPersistentStoreCoordinator.addPersistentStore(type:configuration:at:options:)();
    if (v41)
    {

      (*(v68 + 8))(v34, v60);
      (*(v30 + 8))(v32, v57);
      return v21;
    }

    v45 = v42;

    (*(v68 + 8))(v34, v60);
    v46 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    [v46 setPersistentStoreCoordinator:v33];
    v47 = v56;
    v48 = *(v56 + 120);
    *(v56 + 120) = v46;
    v21 = v46;

    v49 = type metadata accessor for TaskPriority();
    v50 = v55;
    (*(*(v49 - 8) + 56))(v55, 1, 1, v49);
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = v51;
    v53 = sub_1001F9BE8(0, 0, v50, &unk_100417220, v52);

    (*(v30 + 8))(v32, v57);
    *(v47 + 112) = v53;

    v20 = 0;
  }

  v22 = v20;
  return v21;
}

uint64_t sub_10035F05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for CancellationError();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10035F178, 0, 0);
}

uint64_t sub_10035F178()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_10035F244;

  return sub_1003633BC(0xD02AB486CEDC0000, 0, 0, 0, 1);
}

uint64_t sub_10035F244()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[14] + 8))(v2[15], v2[13]);
  if (v0)
  {
    v3 = sub_10035F7E4;
  }

  else
  {
    v3 = sub_10035F3AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10035F3AC()
{
  v1 = v0[17];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v0[19] = v1;
    v0[8] = v1;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {

      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_1000958E4(v2, qword_10051B2C8);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Cleanup timer is cancelled, leaving MOC alive", v5, 2u);
      }

      v7 = v0[11];
      v6 = v0[12];
      v8 = v0[10];

      (*(v7 + 8))(v6, v8);
LABEL_23:

LABEL_24:

      v23 = v0[1];

      return v23();
    }

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000958E4(v16, qword_10051B2C8);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error %@ while scheduling cleanup task for MOC, cleanup MOC", v19, 0xCu);
      sub_100075768(v20, &unk_100503F70, &unk_10040B2E0);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[20] = Strong;
    if (!Strong)
    {
      goto LABEL_23;
    }

    v14 = Strong;
    v15 = sub_10035FBA8;
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_10051B2C8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Cleanup timer fired, cleaning up MOC", v12, 2u);
    }

    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    v0[18] = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = v13;
    v15 = sub_10035FB2C;
  }

  return _swift_task_switch(v15, v14, 0);
}

uint64_t sub_10035F7E4()
{
  v1 = v0[17];
  v0[8] = v1;
  v0[19] = v1;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10051B2C8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Cleanup timer is cancelled, leaving MOC alive", v5, 2u);
    }

    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];

    (*(v7 + 8))(v6, v8);
LABEL_15:

    v16 = v0[1];

    return v16();
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000958E4(v9, qword_10051B2C8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error %@ while scheduling cleanup task for MOC, cleanup MOC", v12, 0xCu);
    sub_100075768(v13, &unk_100503F70, &unk_10040B2E0);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {
    goto LABEL_15;
  }

  return _swift_task_switch(sub_10035FBA8, Strong, 0);
}

uint64_t sub_10035FB2C()
{
  sub_10035FC8C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10035FBA8()
{
  sub_10035FC8C();

  return _swift_task_switch(sub_10035FC18, 0, 0);
}

uint64_t sub_10035FC18()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10035FC8C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    if ([v1 hasChanges])
    {
      v2 = *(v0 + 120);
      if (v2)
      {
        v7 = 0;
        if ([v2 save:&v7])
        {
          v3 = v7;
        }

        else
        {
          v4 = v7;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v5 = *(v0 + 120);
          [v5 rollback];
        }
      }
    }
  }

  v6 = *(v0 + 120);
  *(v0 + 120) = 0;
}

uint64_t sub_10035FD78()
{
  if (*(v0 + 112))
  {

    Task.cancel()();
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10035FE18()
{
  sub_10035FD78();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10035FE68(void *a1@<X0>, void *a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v77 = a4;
  v81 = a5;
  v82 = a6;
  v83 = a3;
  v80 = a2;
  v76 = a7;
  v8 = type metadata accessor for StateInternal.Discriminant();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StateInternal();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecureElementCredentialEntity();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v79 = a1;
  v17 = [v16 initWithContext:a1];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v17 setUuid:isa];

  v19 = UUID._bridgeToObjectiveC()().super.isa;
  [v17 setProductConfigUUID:v19];

  v20 = String._bridgeToObjectiveC()();
  v80 = v17;
  [v17 setFriendlyName:v20];

  (*(v13 + 104))(v15, enum case for StateInternal.installationPending(_:), v12);
  StateInternal.discriminant.getter();
  (*(v13 + 8))(v15, v12);
  v21 = v11;
  v22 = StateInternal.Discriminant.rawValue.getter();
  (*(v9 + 8))(v11, v8);
  if (v22 < -32768)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v22 >= 0x8000)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v23 = v80;
  [v80 setState:v22];
  v84 = &_swiftEmptySetSingleton;
  v24 = objc_allocWithZone(NSFetchRequest);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 initWithEntityName:v25];

  v27 = type metadata accessor for SecureElementApplicationEntity();
  v28 = v78;
  v29 = NSManagedObjectContext.fetch<A>(_:)();
  if (v28)
  {

    goto LABEL_45;
  }

  v21 = v29;

  v77 = v27;
  v78 = 0;
  if (v21 >> 62)
  {
LABEL_39:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_7;
    }

LABEL_40:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_1000958E4(v68, qword_10051B2C8);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    v71 = os_log_type_enabled(v69, v70);
    v26 = v80;
    if (v71)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v85 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_1002FFA0C(0xD00000000000003FLL, 0x80000001004703E0, &v85);
      _os_log_impl(&_mh_execute_header, v69, v70, "%s: App entity should have been created when passing TCC check", v72, 0xCu);
      sub_1000752F4(v73);
    }

    sub_10009591C();
    swift_allocError();
    *v74 = 6;
    swift_willThrow();
    goto LABEL_45;
  }

  v30 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_40;
  }

LABEL_7:
  v31 = 0;
  v83 = v21 & 0xC000000000000001;
  while (1)
  {
    if (v83)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v31 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v32 = *(v21 + 8 * v31 + 32);
    }

    v33 = v32;
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v35 = [v32 identifier];
    if (!v35)
    {
      goto LABEL_8;
    }

    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (v37 == v81 && v39 == v82)
    {
      break;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      v43 = v81;
      v42 = v82;
      goto LABEL_22;
    }

LABEL_8:

    ++v31;
    if (v34 == v30)
    {
      goto LABEL_40;
    }
  }

  v43 = v81;
  v42 = v82;

LABEL_22:

  v44 = v33;
  sub_1000D7E70(&v85, v44);

  sub_1003639C0(&unk_10050BEC0, type metadata accessor for SecureElementApplicationEntity, &protocol conformance descriptor for NSObject);
  v45 = Set._bridgeToObjectiveC()().super.isa;

  v46 = v80;
  [v80 setOwnerApplications:v45];

  v47 = [objc_allocWithZone(NSSet) init];
  [v46 setUserApplications:v47];

  type metadata accessor for CredentialInternal();
  v26 = v46;

  v48 = sub_1000BC43C(v26, v43, v42);
  v49 = v79;
  if (v48)
  {
    v50 = v48;
    v85 = 0;
    if ([v79 save:&v85])
    {
      v51 = v85;
      [v49 refreshAllObjects];

      *v76 = v50;
      return;
    }

    v58 = v85;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_1000958E4(v59, qword_10051B2C8);
    swift_errorRetain();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v80 = v26;
      v85 = v63;
      *v62 = 136315394;
      *(v62 + 4) = sub_1002FFA0C(0xD00000000000003FLL, 0x80000001004703E0, &v85);
      *(v62 + 12) = 2080;
      swift_getErrorValue();
      v64 = Error.localizedDescription.getter();
      v66 = sub_1002FFA0C(v64, v65, &v85);

      *(v62 + 14) = v66;
      v49 = v79;
      _os_log_impl(&_mh_execute_header, v60, v61, "%s: CoreData error %s encountered while saving view context", v62, 0x16u);
      swift_arrayDestroy();
      v26 = v80;
    }

    [v49 reset];
    sub_10009591C();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();

    v26 = v50;
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_1000958E4(v52, qword_10051B2C8);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v85 = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_1002FFA0C(0xD00000000000003FLL, 0x80000001004703E0, &v85);
      _os_log_impl(&_mh_execute_header, v53, v54, "%s: Unable to create internal representation of credential", v55, 0xCu);
      sub_1000752F4(v56);
    }

    sub_10009591C();
    swift_allocError();
    *v57 = 6;
    swift_willThrow();
  }

LABEL_45:
}

void sub_10036088C(void *a1, uint64_t a2, void *a3)
{
  v57 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = String._bridgeToObjectiveC()();
  v14 = v12;
  v15 = a1;
  v16 = [v14 initWithEntityName:v13];

  type metadata accessor for SecureElementCredentialEntity();
  v17 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v3)
  {
    __chkstk_darwin(v18);
    v19 = v57;
    *(&v56 - 2) = v57;
    v20 = sub_10011F6D0(sub_100363A08, (&v56 - 4), v17);
    v56 = 0;

    if (v20)
    {
      [v15 deleteObject:v20];
      v58 = 0;
      if ([v15 save:&v58])
      {
        v21 = v6;
        v22 = v58;
        [v15 refreshAllObjects];
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000958E4(v23, qword_10051B2C8);
        v24 = v19;
        v25 = v5;
        (*(v6 + 16))(v11, v24, v5);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v58 = v29;
          *v28 = 136315138;
          v30 = UUID.uuidString.getter();
          v57 = v20;
          v32 = v31;
          (*(v21 + 8))(v11, v25);
          v33 = sub_1002FFA0C(v30, v32, &v58);

          *(v28 + 4) = v33;
          _os_log_impl(&_mh_execute_header, v26, v27, "Successfully deleted credential %s from persistent container", v28, 0xCu);
          sub_1000752F4(v29);
        }

        else
        {

          (*(v6 + 8))(v11, v25);
        }
      }

      else
      {
        v45 = v58;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_1000958E4(v46, qword_10051B2C8);
        swift_errorRetain();
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v49 = 136315394;
          *(v49 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x8000000100470240, &v58);
          *(v49 + 12) = 2080;
          swift_getErrorValue();
          v50 = Error.localizedDescription.getter();
          v52 = v15;
          v53 = sub_1002FFA0C(v50, v51, &v58);

          *(v49 + 14) = v53;
          v15 = v52;
          _os_log_impl(&_mh_execute_header, v47, v48, "%s: CoreData error %s encountered while saving view context", v49, 0x16u);
          swift_arrayDestroy();
        }

        [v15 reset];
        sub_10009591C();
        swift_allocError();
        *v54 = 0;
        swift_willThrow();
      }
    }

    else
    {
      v34 = v6;
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000958E4(v35, qword_10051B2C8);
      v36 = v19;
      v37 = v5;
      (*(v6 + 16))(v8, v36, v5);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v40 = 136315394;
        *(v40 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x8000000100470240, &v58);
        *(v40 + 12) = 2080;
        v41 = UUID.uuidString.getter();
        v43 = v42;
        (*(v34 + 8))(v8, v37);
        v44 = sub_1002FFA0C(v41, v43, &v58);

        *(v40 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "%s: Credential Info with %s does not exist or no access", v40, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v34 + 8))(v8, v5);
      }

      sub_10009591C();
      swift_allocError();
      *v55 = 1;
      swift_willThrow();
    }
  }
}

void sub_100361020(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  *&v120 = a5;
  v129 = a4;
  v130 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithEntityName:v13];

  type metadata accessor for SecureElementCredentialEntity();
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (v5)
  {
    goto LABEL_2;
  }

  v127 = v11;
  v128 = v9;
  v124 = a2;
  v126 = a1;
  v16 = v15;

  __chkstk_darwin(v17);
  v18 = v130;
  *(&v115 - 2) = v130;
  v19 = sub_10011F6D0(sub_1003639A0, (&v115 - 4), v16);

  if (!v19)
  {
    v35 = v18;
    if (qword_1005019D8 != -1)
    {
      goto LABEL_88;
    }

    goto LABEL_38;
  }

  v21 = v19;
  v133 = &_swiftEmptySetSingleton;
  v122 = v129[2];
  v116 = v19;
  if (!v122)
  {
    v72 = &_swiftEmptySetSingleton;
    v23 = 0;
    v25 = &stru_1004F5000;
    goto LABEL_45;
  }

  v22 = 0;
  v121 = v129 + 4;
  *&v118 = "alInfoModel.momd";
  *&v20 = 136315138;
  v119 = v20;
  *&v20 = 136315394;
  v117 = v20;
  v23 = 0;
  v24 = &NSInferMappingModelAutomaticallyOption_ptr;
  v25 = &stru_1004F5000;
  while (2)
  {
    v125 = v22;
    v30 = &v121[2 * v22];
    v31 = v30[1];
    v128 = *v30;
    v32 = objc_allocWithZone(v24[4]);
    v129 = v31;

    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 *&v25[109].align];

    v35 = type metadata accessor for SecureElementApplicationEntity();
    v36 = NSManagedObjectContext.fetch<A>(_:)();
    if (v23)
    {

      return;
    }

    v37 = v36;

    v127 = 0;
    v123 = v35;
    if (v37 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
      if (!v38)
      {
LABEL_33:

        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_1000958E4(v54, qword_10051B2C8);
        v8 = v129;

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();

        v57 = os_log_type_enabled(v55, v56);
        v23 = v127;
        v25 = &stru_1004F5000;
        if (v57)
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v132 = v59;
          *v58 = v119;
          *(v58 + 4) = sub_1002FFA0C(v128, v8, &v132);
          _os_log_impl(&_mh_execute_header, v55, v56, "Adding new app entity for appId %s -- This entity does not have bundleIdentifier field populated until the app's first launch", v58, 0xCu);
          sub_1000752F4(v59);
        }

        v60 = v125;
        v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v27 = [v26 initWithContext:v126];
        v28 = String._bridgeToObjectiveC()();

        [v27 setIdentifier:v28];

        [v27 setBundleIdentifier:0];
        v29 = v27;
        goto LABEL_7;
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
        goto LABEL_33;
      }
    }

    v39 = 0;
    v130 = (v37 & 0xC000000000000001);
    while (1)
    {
      if (v130)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_85;
        }

        v40 = *(v37 + 8 * v39 + 32);
      }

      v8 = v40;
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v42 = [v40 identifier];
      if (!v42)
      {
        goto LABEL_12;
      }

      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      if (v44 == v128 && v46 == v129)
      {
        break;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        goto LABEL_26;
      }

LABEL_12:

      ++v39;
      if (v41 == v38)
      {
        goto LABEL_33;
      }
    }

LABEL_26:

    v23 = v127;
    v25 = &stru_1004F5000;
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000958E4(v48, qword_10051B2C8);
    v49 = v129;

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v52 = v117;
      *(v52 + 4) = sub_1002FFA0C(0xD00000000000002CLL, v118 | 0x8000000000000000, &v132);
      *(v52 + 12) = 2080;
      v53 = sub_1002FFA0C(v128, v49, &v132);

      *(v52 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v50, v51, "%s :Using existing app entity for appId %s", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v60 = v125;
    v29 = v8;
LABEL_7:
    sub_1000D7E70(&v132, v29);

    v22 = v60 + 1;
    v24 = &NSInferMappingModelAutomaticallyOption_ptr;
    if (v22 != v122)
    {
      continue;
    }

    break;
  }

  v72 = v133;
  v21 = v116;
LABEL_45:
  v8 = type metadata accessor for SecureElementApplicationEntity();
  v74 = sub_1003639C0(&unk_10050BEC0, type metadata accessor for SecureElementApplicationEntity, &protocol conformance descriptor for NSObject);
  *&v117 = v72;
  v123 = v8;
  v115 = v74;
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v21 setOwnerApplications:isa];

  v132 = &_swiftEmptySetSingleton;
  v122 = *(v120 + 16);
  if (!v122)
  {
LABEL_81:

    v111 = Set._bridgeToObjectiveC()().super.isa;

    [v21 setUserApplications:v111];

    v131 = 0;
    v14 = v21;
    v112 = v126;
    if ([v126 save:&v131])
    {
      v113 = v131;
      [v112 refreshAllObjects];
    }

    else
    {
      v114 = v131;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

LABEL_2:

    return;
  }

  v77 = 0;
  v121 = (v120 + 32);
  *&v119 = "alInfoModel.momd";
  *&v76 = 136315138;
  v120 = v76;
  *&v76 = 136315394;
  v118 = v76;
  v78 = &NSInferMappingModelAutomaticallyOption_ptr;
  while (2)
  {
    v83 = &v121[2 * v77];
    v84 = v83[1];
    v128 = *v83;
    v85 = objc_allocWithZone(v78[4]);
    v129 = v84;

    v35 = String._bridgeToObjectiveC()();
    v86 = [v85 *&v25[109].align];

    v87 = NSManagedObjectContext.fetch<A>(_:)();
    if (v23)
    {

      return;
    }

    v88 = v87;

    v127 = 0;
    v125 = v77;
    if (!(v88 >> 62))
    {
      v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v89)
      {
        break;
      }

      goto LABEL_74;
    }

    v89 = _CocoaArrayWrapper.endIndex.getter();
    if (!v89)
    {
LABEL_74:

      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      sub_1000958E4(v105, qword_10051B2C8);
      v8 = v129;

      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();

      v108 = os_log_type_enabled(v106, v107);
      v23 = v127;
      v99 = v125;
      if (v108)
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v131 = v110;
        *v109 = v120;
        *(v109 + 4) = sub_1002FFA0C(v128, v8, &v131);
        _os_log_impl(&_mh_execute_header, v106, v107, "Adding new app entity for appId %s -- This entity does not have bundleIdentifier field populated until the app's first launch", v109, 0xCu);
        sub_1000752F4(v110);
      }

      v79 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v80 = [v79 initWithContext:v126];
      v81 = String._bridgeToObjectiveC()();

      [v80 setIdentifier:v81];

      [v80 setBundleIdentifier:0];
      v82 = v80;
LABEL_48:
      sub_1000D7E70(&v131, v82);

      v77 = v99 + 1;
      v78 = &NSInferMappingModelAutomaticallyOption_ptr;
      if (v77 == v122)
      {
        v21 = v116;
        goto LABEL_81;
      }

      continue;
    }

    break;
  }

  v90 = 0;
  v130 = (v88 & 0xC000000000000001);
  while (1)
  {
    if (v130)
    {
      v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v90 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v91 = *(v88 + 8 * v90 + 32);
    }

    v92 = v91;
    v8 = (v90 + 1);
    if (__OFADD__(v90, 1))
    {
      break;
    }

    v93 = [v91 identifier];
    if (v93)
    {
      v94 = v93;
      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v96;

      if (v95 == v128 && v97 == v129)
      {

        v25 = &stru_1004F5000;
LABEL_67:

        v23 = v127;
        v99 = v125;
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        sub_1000958E4(v100, qword_10051B2C8);
        v101 = v129;

        v102 = Logger.logObject.getter();
        v8 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v102, v8))
        {
          v103 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v131 = v130;
          *v103 = v118;
          *(v103 + 4) = sub_1002FFA0C(0xD00000000000002CLL, v119 | 0x8000000000000000, &v131);
          *(v103 + 12) = 2080;
          v104 = sub_1002FFA0C(v128, v101, &v131);

          *(v103 + 14) = v104;
          _os_log_impl(&_mh_execute_header, v102, v8, "%s: Using existing app entity for appId %s", v103, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v82 = v92;
        goto LABEL_48;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v25 = &stru_1004F5000;
      if (v35)
      {
        goto LABEL_67;
      }
    }

    ++v90;
    if (v8 == v89)
    {
      goto LABEL_74;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  swift_once();
LABEL_38:
  v61 = type metadata accessor for Logger();
  sub_1000958E4(v61, qword_10051B2C8);
  v62 = v127;
  v63 = v128;
  (*(v128 + 16))(v127, v35, v8);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    *v66 = 136315394;
    *(v66 + 4) = sub_1002FFA0C(0xD00000000000002CLL, 0x80000001004703B0, &v133);
    *(v66 + 12) = 2080;
    v67 = UUID.uuidString.getter();
    v68 = v62;
    v70 = v69;
    (*(v63 + 8))(v68, v8);
    v71 = sub_1002FFA0C(v67, v70, &v133);

    *(v66 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v64, v65, "%s: Credential Info with %s does not exist or no access", v66, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v63 + 8))(v62, v8);
  }

  sub_10009591C();
  swift_allocError();
  *v73 = 1;
  swift_willThrow();
}

uint64_t sub_100362020(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v10 - 8);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v32 - v17;
  v19 = *a1;
  (*(v5 + 16))(&v32 - v17, a2, v4, v16);
  v35 = v5;
  v20 = *(v5 + 56);
  v21 = 1;
  v20(v18, 0, 1, v4);
  v22 = [v19 uuid];
  if (v22)
  {
    v23 = v22;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0;
  }

  v20(v14, v21, 1, v4);
  v24 = *(v7 + 48);
  sub_1000756F8(v18, v9);
  sub_1000756F8(v14, &v9[v24]);
  v25 = *(v35 + 48);
  if (v25(v9, 1, v4) != 1)
  {
    v27 = v34;
    sub_1000756F8(v9, v34);
    if (v25(&v9[v24], 1, v4) != 1)
    {
      v28 = v35;
      v29 = v33;
      (*(v35 + 32))(v33, &v9[v24], v4);
      sub_1003639C0(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v28 + 8);
      v30(v29, v4);
      sub_100075768(v14, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
      v30(v34, v4);
      sub_100075768(v9, &unk_10050BE80, &unk_10040B360);
      return v26 & 1;
    }

    sub_100075768(v14, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
    (*(v35 + 8))(v27, v4);
    goto LABEL_8;
  }

  sub_100075768(v14, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
  if (v25(&v9[v24], 1, v4) != 1)
  {
LABEL_8:
    sub_100075768(v9, &qword_1005031D0, &unk_100413B20);
    v26 = 0;
    return v26 & 1;
  }

  sub_100075768(v9, &unk_10050BE80, &unk_10040B360);
  v26 = 1;
  return v26 & 1;
}

void sub_1003624AC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v51 = a4;
  v52 = a3;
  v6 = type metadata accessor for UUID();
  v50 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StateInternal.Discriminant();
  v49 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithEntityName:v13];

  type metadata accessor for SecureElementCredentialEntity();
  v15 = NSManagedObjectContext.fetch<A>(_:)();

  if (v4)
  {
    return;
  }

  v47 = v8;
  v48 = v9;
  v17 = v49;
  v18 = v50;
  v19 = v46;
  __chkstk_darwin(v16);
  v46[-2] = v52;
  v20 = sub_10011F6D0(sub_100363A08, &v46[-4], v15);
  v46[1] = 0;

  if (!v20)
  {
    v19 = v52;
    if (qword_1005019D8 == -1)
    {
LABEL_8:
      v23 = type metadata accessor for Logger();
      sub_1000958E4(v23, qword_10051B2C8);
      v24 = v18;
      v25 = *(v18 + 16);
      v26 = v47;
      v25(v47, v19, v6);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v29 = 136315394;
        *(v29 + 4) = sub_1002FFA0C(0xD00000000000001BLL, 0x8000000100470260, &v53);
        *(v29 + 12) = 2080;
        v30 = UUID.uuidString.getter();
        v31 = v26;
        v33 = v32;
        (*(v24 + 8))(v31, v6);
        v34 = sub_1002FFA0C(v30, v33, &v53);

        *(v29 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s: Credential Info with %s does not exist", v29, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v24 + 8))(v26, v6);
      }

      sub_10009591C();
      swift_allocError();
      *v45 = 1;
      swift_willThrow();
      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  StateInternal.discriminant.getter();
  v21 = StateInternal.Discriminant.rawValue.getter();
  (*(v17 + 8))(v11, v48);
  if (v21 < -32768)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v21 >= 0x8000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v20 setState:v21];
  v53 = 0;
  if ([a1 save:&v53])
  {
    v22 = v53;
    [a1 refreshAllObjects];
  }

  else
  {
    v35 = v20;
    v36 = v53;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000958E4(v37, qword_10051B2C8);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_1002FFA0C(0xD00000000000001BLL, 0x8000000100470260, &v53);
      *(v40 + 12) = 2080;
      swift_getErrorValue();
      v41 = Error.localizedDescription.getter();
      v43 = sub_1002FFA0C(v41, v42, &v53);

      *(v40 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s: CoreData error %s encountered while saving view context", v40, 0x16u);
      swift_arrayDestroy();
    }

    [a1 reset];
    sub_10009591C();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
  }
}

void *sub_100362B68(uint64_t a1, uint64_t a2)
{
  v5 = sub_10035E904();
  if (!v2)
  {
    v6 = v5;
    v45 = a1;
    v7 = objc_allocWithZone(NSFetchRequest);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 initWithEntityName:v8];

    sub_100068FC4(&unk_10050BE90, &qword_100417210);
    v20 = NSManagedObjectContext.fetch<A>(_:)();

    v49 = _swiftEmptyArrayStorage;
    v21 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      v23 = v45;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v45;
      if (v22)
      {
LABEL_10:
        v24 = 0;
        v47 = v20 & 0xC000000000000001;
        v11 = _swiftEmptyArrayStorage;
        v41 = a2;
        v42 = v20 & 0xFFFFFFFFFFFFFF8;
        v46 = v22;
        while (1)
        {
          v40 = v11;
          v25 = v24;
          while (1)
          {
            if (v47)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v24 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (v25 >= *(v21 + 16))
              {
                goto LABEL_36;
              }

              v26 = *(v20 + 8 * v25 + 32);
              swift_unknownObjectRetain();
              v24 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
LABEL_35:
                __break(1u);
LABEL_36:
                __break(1u);
                goto LABEL_37;
              }
            }

            type metadata accessor for SecureElementCredentialEntity();
            v27 = swift_dynamicCastClass();
            if (!v27)
            {
              if (qword_1005019D8 != -1)
              {
                swift_once();
              }

              v29 = type metadata accessor for Logger();
              sub_1000958E4(v29, qword_10051B2C8);
              swift_unknownObjectRetain();
              v30 = Logger.logObject.getter();
              v31 = static os_log_type_t.fault.getter();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v30, v31))
              {
                v32 = swift_slowAlloc();
                v44 = swift_slowAlloc();
                v48 = v44;
                *v32 = 136315138;
                v33 = [v26 description];
                log = v30;
                v34 = v20;
                v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v37 = v36;

                v38 = v35;
                v20 = v34;
                v39 = sub_1002FFA0C(v38, v37, &v48);
                a2 = v41;

                *(v32 + 4) = v39;
                v23 = v45;
                _os_log_impl(&_mh_execute_header, log, v31, "Credential %s failed downcast as Entity", v32, 0xCu);
                sub_1000752F4(v44);

                v21 = v42;

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v22 = v46;
              goto LABEL_13;
            }

            v28 = v27;
            type metadata accessor for CredentialInternal();
            if (a2)
            {
              break;
            }

            if (sub_1000BF55C(v28))
            {
              goto LABEL_30;
            }

LABEL_13:
            ++v25;
            if (v24 == v22)
            {
              v11 = v40;
              goto LABEL_40;
            }
          }

          if (!sub_1000BC43C(v28, v23, a2))
          {
            goto LABEL_13;
          }

LABEL_30:
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v23 = v45;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v11 = v49;
          v21 = v42;
          if (v24 == v22)
          {
LABEL_40:

            return v11;
          }
        }
      }
    }

    v11 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  if (qword_1005019D8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_1000958E4(v10, qword_10051B2C8);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1002FFA0C(0xD000000000000014, 0x8000000100470320, &v49);
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v11 = v16;
    v17 = sub_1002FFA0C(v15, v16, &v49);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: CoreData error %s encountered while fetching entity", v14, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();

  return v11;
}