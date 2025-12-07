uint64_t sub_1004F57A4(uint64_t a1)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Data.init(contentsOf:options:)();
  if (!v1)
  {
    v10 = v8;
    v11 = v9;
    v36 = v5;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    swift_weakInit();
    sub_100294008(v10, v11);
    v2 = sub_10031F2E0(v10, v11, sub_1004F66C0, v12, sub_1004F66C4, v13);

    v37 = 0;
    if (qword_100973998 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000C4AC(v15, qword_100981A10);
    v16 = v36;
    (*(v36 + 16))(v7, a1, v4);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34 = v18;
      v20 = v16;
      v21 = v19;
      v35 = swift_slowAlloc();
      v38 = v35;
      *v21 = 136315394;

      v33 = v17;
      sub_10031E940();
      v23 = v22;
      v25 = v24;

      v26 = sub_10000C4E4(v23, v25, &v38);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      sub_100010F40(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v20 + 8))(v7, v4);
      v30 = sub_10000C4E4(v27, v29, &v38);

      *(v21 + 14) = v30;
      v31 = v33;
      _os_log_impl(&_mh_execute_header, v33, v34, "Loaded LocalLTK %s from %s", v21, 0x16u);
      swift_arrayDestroy();

      sub_100026AC0(v10, v11);
    }

    else
    {
      sub_100026AC0(v10, v11);

      (*(v16 + 8))(v7, v4);
    }
  }

  return v2;
}

uint64_t sub_1004F5BA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v57 = a2;
  v8 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  if (a4)
  {
    v16 = v8 == 2;
  }

  else
  {
    v16 = (0x101020100uLL >> (8 * a3));
  }

  v17 = sub_100312270(v16, 1);
  if (!v4)
  {
    v19 = v17;
    v20 = v18;
    v55 = v10;
    sub_10030DE60();
    v56 = 0;
    v51 = v19;
    v53 = v20;
    v54 = a3;
    if (qword_100973998 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100981A10);
    v22 = v55;
    v23 = *(v55 + 16);
    v24 = v13;
    v49 = v15;
    v25 = v15;
    v26 = v9;
    v23(v13, v25, v9);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v22;
      v31 = swift_slowAlloc();
      v58[0] = v31;
      *v29 = 136315138;
      LODWORD(v50) = v28;
      v48 = UUID.uuidString.getter();
      v33 = v32;
      v34 = v30;
      v26 = v9;
      v52 = *(v34 + 8);
      v52(v24, v9);
      v35 = sub_10000C4E4(v48, v33, v58);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v50, "Generated local LTK, keybagID: %s", v29, 0xCu);
      sub_10000C60C(v31);
    }

    else
    {

      v52 = *(v22 + 8);
      v52(v24, v9);
    }

    v36 = v49;
    v58[0] = UUID.uuid.getter();
    v58[1] = v37;
    v38 = sub_1005698E0(v58, &v59);
    v50 = v39;
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    swift_weakInit();
    _s8LocalLTKCMa();
    v8 = swift_allocObject();
    *(v8 + 104) = &_swiftEmptyDictionarySingleton;
    sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v8 + 112) = v42;
    *(v8 + 120) = 1;
    v43 = v57;
    *(v8 + 16) = a1;
    *(v8 + 24) = v43;
    *(v8 + 32) = v54;
    *(v8 + 33) = a4 & 1;
    v44 = v53;
    *(v8 + 72) = v51;
    *(v8 + 80) = v44;
    v45 = v50;
    *(v8 + 88) = v38;
    *(v8 + 96) = v45;
    *(v8 + 40) = sub_1004F6640;
    *(v8 + 48) = v40;
    *(v8 + 56) = sub_1004F665C;
    *(v8 + 64) = v41;

    v46 = v56;
    sub_10031D088();
    v52(v36, v26);
    if (v46)
    {
    }
  }

  return v8;
}

uint64_t sub_1004F605C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v10 = *(Strong + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock), v11 = *(Strong + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock + 8), sub_1000387D0(v10, v11), , v10))
  {
    v10(a1, a2, a3);
    return sub_100015D04(v10, v11);
  }

  else
  {
    v13 = type metadata accessor for URL();
    return (*(*(v13 - 8) + 56))(a5, 1, 1, v13);
  }
}

uint64_t sub_1004F6164(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock);
    v4 = *(result + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock + 8);
    sub_1000387D0(v5, v4);

    if (v5)
    {
      v6 = v5(a1);
      sub_100015D04(v5, v4);
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004F6218()
{
  v1 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectory;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100015D04(*(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock), *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_cacheDirectoryBlock + 8));
  sub_100015D04(*(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock), *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_protectionClassBlock + 8));

  return swift_deallocClassInstance();
}

uint64_t _s13LTKCollectionCMa(uint64_t a1)
{
  result = qword_100981A70;
  if (!qword_100981A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004F6364(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_1004F643C()
{
  v19 = *(v0 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_label);
  v1 = OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_localLTKByID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      String.append(_:)(v18);

      return v19;
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v8 &= v8 - 1;

        sub_10031E940();
        v14 = v13;
        v16 = v15;

        v17._countAndFlagsBits = v14;
        v17._object = v16;
        String.append(_:)(v17);
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004F66C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004F681C, v5, 0);
}

void sub_1004F681C(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v1[5];
    v7 = v1[3];
    v8 = SFAirDropReceive.AskRequest.urlItems.getter();
    v9 = 0;
    v10 = v8 + 56;
    v11 = -1;
    v12 = -1 << *(v8 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v8 + 56);
    v14 = (63 - v12) >> 6;
    v23 = v8;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v1[6];
      v17 = v1[4];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v6 + 16))(v16, *(v23 + 48) + *(v6 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1003D9F30(&off_1008D6E48);
      (*(v6 + 8))(v16, v17);
      v20 = *(v7 + 24);
      *(v7 + 24) = v19;

      if (!*(v7 + 24))
      {

        sub_10032B298(&unk_1008D6E68);
        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        sub_10032B298(&unk_1008D6E68);

        v21 = 1;
        goto LABEL_15;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v21 = 0;
LABEL_15:

    v22 = v1[1];

    v22(v21);
  }
}

unint64_t sub_1004F6A2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004F76A0(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = URLComponents.scheme.getter();
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = sub_1004F7120(a1);
      v16 = v13 == v2[4] && v14 == v2[5];
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (v15)
        {
          v17 = 0xD00000000000001FLL;
        }

        else
        {
          v17 = 0xD000000000000019;
        }

LABEL_12:
        (*(v8 + 8))(v10, v7);
        return v17;
      }

      if (v13 == v2[6] && v14 == v2[7])
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if (v15)
      {
        v17 = 0xD00000000000001BLL;
      }

      else
      {
        v17 = 0xD000000000000015;
      }

      goto LABEL_12;
    }

LABEL_18:
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  sub_100005508(v6, &qword_1009803B8, &unk_100807F30);
  return 0;
}

uint64_t sub_1004F6CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 24);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1004F7120(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v4 - 8);
  v6 = v38 - v5;
  v7 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  __chkstk_darwin(v7 - 8);
  v9 = v38 - v8;
  v10 = type metadata accessor for URLComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100974F70, &unk_100804260);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100807E90;
  *(v14 + 32) = CNContactEmailAddressesKey;
  *(v14 + 40) = CNContactPhoneNumbersKey;
  v15 = CNContactEmailAddressesKey;
  v16 = CNContactPhoneNumbersKey;
  sub_1004F76A0(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    v17 = &qword_1009803B8;
    v18 = &unk_100807F30;
    v19 = v9;
LABEL_5:
    sub_100005508(v19, v17, v18);
    return 0;
  }

  v38[0] = a1;
  (*(v11 + 32))(v13, v9, v10);
  URLComponents.scheme.setter();
  URLComponents.url.getter();
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v6, 1, v20) == 1)
  {

    (*(v11 + 8))(v13, v10);
    v17 = &unk_100974E00;
    v18 = &qword_1007F8940;
    v19 = v6;
    goto LABEL_5;
  }

  v23 = URL.absoluteString.getter();
  v25 = v24;
  (*(v21 + 8))(v6, v20);
  v38[6] = v23;
  v38[7] = v25;
  v38[4] = 12079;
  v38[5] = 0xE200000000000000;
  v38[2] = 0;
  v38[3] = 0xE000000000000000;
  v36 = sub_10001229C();
  v37 = v36;
  v35[0] = &type metadata for String;
  v35[1] = v36;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v11 + 8))(v13, v10);

  SFAirDropReceive.AskRequest.contactIdentifier.getter();
  if (v26)
  {

    v27 = *(v2 + 16);
    if (!v27)
    {
      __break(1u);
      return result;
    }

    v28 = String._bridgeToObjectiveC()();

    sub_10028088C(&unk_10097A940, &unk_100807F40);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = [v27 contactsWithPhoneNumberOrEmail:v28 keys:isa];

    if (v30)
    {
      sub_100389A64();
      sub_1002D7FB0();
      v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v32);
      v36 = v38[0];
      sub_1002CC5FC(sub_1004F85C4, v35, v31);
      v34 = v33;

      if (v34)
      {

        return 1;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1004F75DC(void **a1)
{
  v1 = *a1;
  v2 = SFAirDropReceive.AskRequest.contactIdentifier.getter();
  v4 = v3;
  v5 = [v1 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v4)
  {
    if (v2 == v6 && v4 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1004F76A0(char *a1@<X8>)
{
  v42 = a1;
  v1 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v50 = type metadata accessor for URLComponents();
  v4 = *(v50 - 8);
  v5 = __chkstk_darwin(v50);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v39 - v7;
  v47 = type metadata accessor for URL();
  v8 = *(v47 - 8);
  __chkstk_darwin(v47);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = SFAirDropReceive.AskRequest.urlItems.getter();
  v12 = v11 + 56;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 56);
  v16 = (v13 + 63) >> 6;
  v45 = v8 + 8;
  v46 = v8 + 16;
  v44 = (v4 + 48);
  v41 = (v4 + 32);
  v49 = v11;

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v17;
    if (!v15)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v47;
    (*(v8 + 16))(v10, *(v49 + 48) + *(v8 + 72) * (v20 | (v17 << 6)), v47);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    (*(v8 + 8))(v10, v21);
    if ((*v44)(v3, 1, v50) == 1)
    {
      sub_100005508(v3, &qword_1009803B8, &unk_100807F30);
    }

    else
    {
      v22 = *v41;
      (*v41)(v40, v3, v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10028E7AC(0, v18[2] + 1, 1, v18);
      }

      v24 = v18[2];
      v23 = v18[3];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v39 = v24 + 1;
        v26 = v18;
        v27 = v24;
        v28 = sub_10028E7AC((v23 > 1), v24 + 1, 1, v26);
        v25 = v39;
        v24 = v27;
        v18 = v28;
      }

      v18[2] = v25;
      v22(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v40, v50);
    }
  }

  while (1)
  {
    v17 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v17);
    ++v19;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  v29 = v18[2];
  v30 = v50;
  v31 = v48;
  if (v29)
  {
    for (i = 0; v29 != i; ++i)
    {
      if (i >= v18[2])
      {
        goto LABEL_32;
      }

      (*(v4 + 16))(v31, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, v30);
      URLComponents.scheme.getter();
      if (v34)
      {
        v35 = String.lowercased()();

        v36 = v43;
        if (v35._countAndFlagsBits == *(v43 + 32) && v35._object == *(v43 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v35._countAndFlagsBits == *(v36 + 48) && v35._object == *(v36 + 56))
        {

          v31 = v48;
LABEL_29:
          v38 = v42;
          (*v41)(v42, v31, v30);
          v37 = 0;
          goto LABEL_30;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v31 = v48;
        if (v33)
        {

          goto LABEL_29;
        }
      }

      (*(v4 + 8))(v31, v30);
    }
  }

  v37 = 1;
  v38 = v42;
LABEL_30:
  (*(v4 + 56))(v38, v37, 1, v30);
}

uint64_t sub_1004F7BE4()
{

  return swift_deallocClassInstance();
}

double sub_1004F7C58@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerPhoneLinks();
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() sharedMonitor];
  result = 0.0;
  *(v2 + 24) = xmmword_100807EA0;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = 7103860;
  *(v2 + 56) = 0xE300000000000000;
  *a1 = v2;
  return result;
}

uint64_t sub_1004F7CD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1004F66C8(a1);
}

void sub_1004F7DE0(uint64_t a1, char a2)
{
  v3 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  if (v10 == 1)
  {
    v11 = SFAirDropReceive.AskRequest.urlItems.getter();
    sub_1002FB398(v11, v5);

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      URL._bridgeToObjectiveC()(v12);
      v14 = v13;
      v15 = [v13 formattedPhoneNumber];

      if (v15)
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        sub_1003D8D18(&off_1008D6AD8, a2 & 1);
        sub_100005508(&unk_1008D6AF8, &qword_100981D40, &unk_1007FA6C0);
        v19 = String._bridgeToObjectiveC()();
        v20 = SFLocalizedStringForKey();

        if (v20)
        {

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1007F5670;
          *(v21 + 56) = &type metadata for String;
          *(v21 + 64) = sub_100026764();
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
          static String.localizedStringWithFormat(_:_:)();

          (*(v7 + 8))(v9, v6);
          return;
        }

        goto LABEL_11;
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  v27 = xmmword_1007F5670;
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x494C5F454E4F4850;
  v23 = inited + 32;
  *(inited + 40) = 0xEA00000000004B4ELL;
  *(inited + 48) = v10;
  sub_1003D8D18(inited, a2 & 1);
  swift_setDeallocating();
  sub_100005508(v23, &qword_100981D40, &unk_1007FA6C0);
  v24 = String._bridgeToObjectiveC()();
  v25 = SFLocalizedStringForKey();

  if (v25)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v26 = swift_allocObject();
    *(v26 + 16) = v27;
    *(v26 + 56) = &type metadata for Int;
    *(v26 + 64) = &protocol witness table for Int;
    *(v26 + 32) = v10;
    static String.localizedStringWithFormat(_:_:)();

    return;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1004F8218()
{
  v0 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v0 - 8);
  v27 = &v26 - v1;
  v2 = type metadata accessor for URLComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10028088C(&qword_1009803B8, &unk_100807F30);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  sub_1004F76A0(&v26 - v9);
  v29 = v3;
  v11 = *(v3 + 48);
  v12 = v2;
  LODWORD(v2) = v11(v10, 1, v2);
  sub_100005508(v10, &qword_1009803B8, &unk_100807F30);
  result = 0;
  if (v2 != 1)
  {
    sub_1004F76A0(v8);
    if (v11(v8, 1, v12) == 1)
    {
      v14 = &qword_1009803B8;
      v15 = &unk_100807F30;
      v16 = v8;
LABEL_6:
      sub_100005508(v16, v14, v15);
      return 0;
    }

    v17 = v28;
    v18 = v29;
    (*(v29 + 32))(v28, v8, v12);
    URLComponents.scheme.setter();
    v19 = v27;
    URLComponents.url.getter();
    v20 = type metadata accessor for URL();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      (*(v18 + 8))(v17, v12);
      v14 = &unk_100974E00;
      v15 = &qword_1007F8940;
      v16 = v19;
      goto LABEL_6;
    }

    v22 = URL.absoluteString.getter();
    v24 = v23;
    (*(v21 + 8))(v19, v20);
    v34 = v22;
    v35 = v24;
    v32 = 12079;
    v33 = 0xE200000000000000;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_10001229C();
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    (*(v18 + 8))(v17, v12);

    return v25;
  }

  return result;
}

uint64_t sub_1004F85E4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981D48);
  v1 = sub_10000C4AC(v0, qword_100981D48);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004F86AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SFPlatform();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v2[16] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004F88BC, v7, 0);
}

uint64_t sub_1004F88BC(uint64_t a1)
{
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2 && (v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16), , !v3) && SFWalletAppAvailable())
  {
    v1[17] = objc_opt_self();
    type metadata accessor for MainActor();
    v1[18] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1004F89FC, v5, v4);
  }

  else
  {

    v6 = v1[1];

    return v6(0);
  }
}

uint64_t sub_1004F89FC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);

  *(v0 + 152) = [v1 canAddPasses];

  return _swift_task_switch(sub_1004F8A7C, v2, 0);
}

uint64_t sub_1004F8A7C()
{
  v52 = v0;
  v1 = *(v0 + 152);
  if ([objc_opt_self() isPassLibraryAvailable])
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
LABEL_18:
    v18 = 0;
  }

  else
  {
    v3 = SFAirDropReceive.AskRequest.files.getter();
    v4 = v3;
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = *(v0 + 112);
      v49 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      while (v6 < *(v4 + 16))
      {
        v8 = *(v0 + 120);
        v9 = *(v0 + 104);
        (*(v7 + 16))(v8, v49 + *(v7 + 72) * v6, v9);
        SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
        v10 = String._bridgeToObjectiveC()();

        SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
        (*(v7 + 8))(v8, v9);
        v11 = String._bridgeToObjectiveC()();

        v12 = [v11 pathExtension];

        if (!v12)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = String._bridgeToObjectiveC()();
        }

        v13 = SFIsPass();

        if ((v13 & 1) == 0)
        {

          goto LABEL_18;
        }

        if (v5 == ++v6)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      swift_once();
      v22 = *(v0 + 64);
      v21 = *(v0 + 72);
      v23 = *(v0 + 56);
      v24 = *(v0 + 16);
      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_100981D48);
      (*(v22 + 16))(v21, v24, v23);
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 64);
      v30 = *(v0 + 72);
      v31 = *(v0 + 56);
      if (v28)
      {
        v33 = *(v0 + 40);
        v32 = *(v0 + 48);
        v34 = *(v0 + 32);
        v48 = v27;
        v35 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = v50;
        *v35 = 136315394;
        v46 = v26;
        SFAirDropReceive.AskRequest.id.getter();
        sub_1004FABEC(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v31;
        v38 = v37;
        (*(v33 + 8))(v32, v34);
        (*(v29 + 8))(v30, v36);
        v39 = sub_10000C4E4(v45, v38, &v51);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2112;
        swift_errorRetain();
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v40;
        *v47 = v40;
        _os_log_impl(&_mh_execute_header, v46, v48, "Failed to get Wallet app for ask request %s: %@", v35, 0x16u);
        sub_100005508(v47, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v50);
      }

      else
      {

        (*(v29 + 8))(v30, v31);
      }
    }

    else
    {
LABEL_12:
      v15 = *(v0 + 88);
      v14 = *(v0 + 96);
      v16 = *(v0 + 80);

      static SFPlatform.macOS.getter();
      v17 = static SFPlatform.isPlatform(_:)();
      (*(v15 + 8))(v14, v16);
      if (v17)
      {
        v18 = 1;
        goto LABEL_21;
      }

      v19 = objc_allocWithZone(LSApplicationRecord);
      v20 = sub_10066F3F8(0xD000000000000012, 0x80000001007940B0, 1);
      v41 = *(v0 + 24);
      v42 = *(v41 + 16);
      *(v41 + 16) = v20;
    }

    v18 = *(*(v0 + 24) + 16) != 0;
  }

LABEL_21:

  v43 = *(v0 + 8);

  return v43(v18);
}

uint64_t sub_1004F8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v6 = sub_10028088C(&qword_10097A3B0, &unk_1007FD5B0);
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();
  sub_10028088C(&qword_10097A3B8, &qword_1007FE9C0);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v4[36] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004F91D8, v7, 0);
}

uint64_t sub_1004F91D8()
{
  *(v0 + 296) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 304) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004F92B0, v2, v1);
}

uint64_t sub_1004F92B0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);

  *(v0 + 336) = [v1 canAddPasses];

  return _swift_task_switch(sub_1004F9364, v2, 0);
}

uint64_t sub_1004F9364()
{
  v57 = v0;
  v1 = *(v0 + 336);
  if ([objc_opt_self() isPassLibraryAvailable])
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (qword_1009739A0 != -1)
    {
LABEL_40:
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100981D48);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Wallet not available. Abort", v6, 2u);
    }

    v7 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1004FABEC(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v7);
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 256);
    v55 = *(v0 + 248);
    v12 = *(v0 + 224);
    v13 = *(*(v0 + 192) + 16);
    v14 = 0;
    v49 = [objc_allocWithZone(PKPassLibrary) init];
    *(v0 + 312) = v49;
    v50 = v12;
    v15 = (v11 + 48);
    v52 = (v12 + 32);
    v53 = (v11 + 56);
    v51 = (v12 + 8);
    v54 = _swiftEmptyArrayStorage;
    *(v0 + 144) = _swiftEmptyArrayStorage;
    while (1)
    {
      *(v0 + 320) = v54;
      if (v14 == v13)
      {
        v16 = 1;
        v14 = v13;
      }

      else
      {
        if (v14 >= v13)
        {
          goto LABEL_38;
        }

        if (__OFADD__(v14, 1))
        {
          goto LABEL_39;
        }

        v17 = *(v0 + 264);
        v18 = *(v0 + 272);
        v19 = *(v0 + 216);
        v20 = *(v0 + 192) + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v14;
        v21 = *(v55 + 48);
        *v17 = v14;
        (*(v50 + 16))(&v17[v21], v20, v19);
        sub_10002C4E4(v17, v18, &qword_10097A3B0, &unk_1007FD5B0);
        v16 = 0;
        ++v14;
      }

      v22 = *(v0 + 272);
      v23 = *(v0 + 280);
      v24 = *(v0 + 248);
      (*v53)(v22, v16, 1, v24);
      sub_10002C4E4(v22, v23, &qword_10097A3B8, &qword_1007FE9C0);
      if ((*v15)(v23, 1, v24) == 1)
      {
        break;
      }

      v25 = *(v0 + 280);
      v26 = *v25;
      (*v52)(*(v0 + 240), &v25[*(v55 + 48)], *(v0 + 216));
      v34 = Data.init(contentsOf:options:)();
      v36 = v35;
      v37 = objc_allocWithZone(PKPass);
      sub_100294008(v34, v36);
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 160) = 0;
      v39 = [v37 initWithData:isa error:v0 + 160];

      v40 = *(v0 + 160);
      if (v39)
      {
        v41 = v40;
        sub_100026AC0(v34, v36);
        v42 = v39;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        sub_100026AC0(v34, v36);

        v54 = *(v0 + 144);
        v33 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
        v46 = v40;
        sub_100026AC0(v34, v36);
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100026AC0(v34, v36);
        if (qword_1009739A0 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000C4AC(v27, qword_100981D48);
        swift_errorRetain();
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          swift_errorRetain();
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 4) = v32;
          *v31 = v32;
          _os_log_impl(&_mh_execute_header, v28, v29, "Wallet pass add or initWithData failed: %@", v30, 0xCu);
          sub_100005508(v31, &qword_100975400, &qword_1007F65D0);

          v33 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {

          v33 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_37;
          }
        }
      }

      v43 = *(v0 + 240);
      v44 = *(v0 + 216);
      v45 = *(v0 + 176);
      v56[0] = v33 / (v13 + 1);
      v45(v56);
      (*v51)(v43, v44);
    }

    sub_1004FABA0();
    v47 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 328) = v47;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = sub_1004F9B78;
    v48 = swift_continuation_init();
    *(v0 + 136) = sub_10028088C(&qword_100981E48, &unk_100807FE0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1004FA190;
    *(v0 + 104) = &unk_1008E5858;
    *(v0 + 112) = v48;
    [v49 addPasses:v47 withCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1004F9B78()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_1004F9C98, v1, 0);
}

uint64_t sub_1004F9C98()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 320);
  if (!v1)
  {
    if (v2 >> 62)
    {
      v22 = *(v0 + 320);
      v3 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v22;
      if (v3)
      {
LABEL_5:
        v4 = __OFSUB__(v3, 1);
        v5 = v3 - 1;
        if (v4)
        {
          __break(1u);
        }

        else if ((v2 & 0xC000000000000001) == 0)
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v5 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v6 = *(*(v0 + 320) + 8 * v5 + 32);
            goto LABEL_10;
          }

          __break(1u);
        }

        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:

        v7 = [v6 passURL];

        if (v7)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v8 = 0;
        }

        else
        {
          v8 = 1;
        }

        v9 = *(v0 + 216);
        v10 = *(v0 + 224);
        v12 = *(v0 + 200);
        v11 = *(v0 + 208);
        (*(v10 + 56))(v12, v8, 1, v9);
        sub_10002C4E4(v12, v11, &unk_100974E00, &qword_1007F8940);
        if ((*(v10 + 48))(v11, 1, v9) != 1)
        {
          v13 = *(v0 + 312);
          v14 = *(v0 + 232);
          v16 = *(v0 + 216);
          v15 = *(v0 + 224);
          v17 = *(v0 + 168);
          v18 = *(v15 + 32);
          v18(v14, *(v0 + 208), v16);
          sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
          v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1007F5670;
          v18(v20 + v19, v14, v16);

          *v17 = v20;

          v21 = *(v0 + 8);
          goto LABEL_23;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_5;
      }
    }

    v23 = *(v0 + 216);
    v24 = *(v0 + 224);
    v25 = *(v0 + 208);

    (*(v24 + 56))(v25, 1, 1, v23);
LABEL_17:
    sub_100005508(*(v0 + 208), &unk_100974E00, &qword_1007F8940);
    goto LABEL_18;
  }

LABEL_18:
  if (qword_1009739A0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000C4AC(v26, qword_100981D48);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v27, v28, "Wallet pass add failed with status: %ld", v29, 0xCu);
  }

  v30 = *(v0 + 312);

  v31 = type metadata accessor for SFAirDropReceive.Failure();
  sub_1004FABEC(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v31);
  swift_willThrow();

  v21 = *(v0 + 8);
LABEL_23:

  return v21();
}

uint64_t sub_1004FA190(uint64_t a1, uint64_t a2)
{
  v3 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1004FA1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1004FA658@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerWalletItems();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1004FA690(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1004F86AC(a1);
}

uint64_t sub_1004FA72C(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

void sub_1004FA830(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v3 == 1 && (v4 = SFAirDropReceive.AskRequest.itemsDescription.getter(), v5))
  {
    v6 = v4;
    v7 = v5;
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 0x5449575F53534150;
    v9 = inited + 32;
    *(inited + 40) = 0xEF454C5449545F48;
    *(inited + 48) = 1;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v9, &qword_100981D40, &unk_1007FA6C0);
    v10 = String._bridgeToObjectiveC()();
    v11 = SFLocalizedStringForKey();

    if (v11)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1007F5670;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_100026764();
      *(v12 + 32) = v6;
      *(v12 + 40) = v7;
LABEL_7:
      static String.localizedStringWithFormat(_:_:)();

      return;
    }
  }

  else
  {
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_1007F5670;
    *(v13 + 32) = 1397965136;
    v14 = v13 + 32;
    *(v13 + 40) = 0xE400000000000000;
    *(v13 + 48) = v3;
    sub_1003D8D18(v13, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v14, &qword_100981D40, &unk_1007FA6C0);
    v15 = String._bridgeToObjectiveC()();
    v16 = SFLocalizedStringForKey();

    if (v16)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1007F5670;
      *(v17 + 56) = &type metadata for Int;
      *(v17 + 64) = &protocol witness table for Int;
      *(v17 + 32) = v3;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004FAAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100005C00;

  return sub_1004F8FB0(a1, a2, a3, v8);
}

unint64_t sub_1004FABA0()
{
  result = qword_100981E40;
  if (!qword_100981E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100981E40);
  }

  return result;
}

uint64_t sub_1004FABEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004FAC34()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981E50);
  v1 = sub_10000C4AC(v0, qword_100981E50);
  if (qword_100973718 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0990);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004FACFC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = sub_1004FC2CC(v2, *(v0 + 33));
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    if (*(v1 + 34) == 1)
    {
      [objc_opt_self() playAlertForType:12];
    }

    v31 = sub_1004FD2D0;
    v32 = v1;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1005CC610;
    v30 = &unk_1008E58D0;
    v7 = _Block_copy(&aBlock);

    [v5 setErrorHandler:v7];
    _Block_release(v7);
    v31 = sub_1004FB378;
    v32 = 0;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1005F14B8;
    v30 = &unk_1008E58F8;
    v8 = _Block_copy(&aBlock);
    [v5 setResponseHandler:v8];
    _Block_release(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v1;
    v31 = sub_1004FD2D8;
    v32 = v9;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1004FB720;
    v30 = &unk_1008E5948;
    v10 = _Block_copy(&aBlock);

    [v5 setDictionaryResponseHandler:v10];
    _Block_release(v10);
    v11 = *(v1 + 24);
    *(v1 + 24) = v5;
    v12 = v5;

    if (qword_1009739A8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100981E50);

    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v2;
      *v18 = v5;
      v18[1] = v2;
      v19 = v14;
      v20 = v2;
      _os_log_impl(&_mh_execute_header, v15, v16, "IncomingAirDropAlert: Presenting AirDrop alert: %@ for transfer %@.", v17, 0x16u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();
    }

    [v14 present];
  }

  else
  {
    if (qword_1009739A8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100981E50);

    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v2;
      *v24 = v2;
      v25 = v2;
      _os_log_impl(&_mh_execute_header, oslog, v22, "Failed to populate AirDrop alert for transfer %@.", v23, 0xCu);
      sub_100005508(v24, &qword_100975400, &qword_1007F65D0);
    }
  }
}

void sub_1004FB1CC(uint64_t a1, uint64_t a2)
{
  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100981E50);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_errorRetain();
    sub_10028088C(&unk_100985A40, &qword_1007FE740);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Alert error handler called with error: %s.", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v11 = [*(a2 + 16) cancelAction];
  if (v11)
  {
    v12 = v11;
    sub_1004FB7B0(v11);
  }
}

void sub_1004FB378(int a1)
{
  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100981E50);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Alert response handler called with: %d.", v4, 8u);
  }
}

void sub_1004FB478(uint64_t a1, uint64_t a2)
{
  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100981E50);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = Dictionary.description.getter();
      v11 = v10;
    }

    else
    {
      v11 = 0xE90000000000003ELL;
      v9 = 0x74636964206F6E3CLL;
    }

    v12 = sub_10000C4E4(v9, v11, v19);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Dictionary response handler called %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  if (a1)
  {
    v18 = SBSUserNotificationButtonDefinitionResponseIndexKey;
    v13 = SBSUserNotificationButtonDefinitionResponseIndexKey;
    sub_10028088C(&unk_100975620, &qword_1007F89E0);
    sub_100294298();
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v14 = sub_100570754(v19), (v15 & 1) != 0))
    {
      sub_10000C5B0(*(a1 + 56) + 32 * v14, v20);
      sub_100285E74(v19);
      if (swift_dynamicCast())
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_16;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v18 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(a2 + 8 * v18 + 32);
LABEL_16:
          v17 = v16;
          sub_1004FB7B0(v16);

          return;
        }

        __break(1u);
      }
    }

    else
    {
      sub_100285E74(v19);
    }
  }
}

uint64_t sub_1004FB720(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_1004FB7B0(void *a1)
{
  [a1 triggerAction];
  *(v1 + 32) = 1;
  v3 = [*(v1 + 16) cancelAction];
  if (v3 && (v4 = v3, sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr), v5 = a1, v6 = static NSObject.== infix(_:_:)(), v4, v5, (v6 & 1) != 0))
  {
    v7 = 2;
  }

  else
  {
    v7 = [a1 shouldUpdateUserResponse];
  }

  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100981E50);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = SFAirDropTransferUserResponseToString();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10000C4E4(v14, v16, &v19);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "User response is %s, dismissing alert.", v11, 0xCu);
    sub_10000C60C(v12);
  }

  return sub_1004FB9C8(v7);
}

uint64_t sub_1004FB9C8(uint64_t a1)
{
  v2 = v1;
  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100981E50);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v9 = [*(v2 + 16) identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10000C4E4(v10, v12, &v20);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Dismiss alert for transfer %s.", v7, 0xCu);
    sub_10000C60C(v8);
  }

  [*(v2 + 24) invalidate];
  v14 = *(v2 + 24);
  *(v2 + 24) = 0;

  v15 = *(v2 + 40);
  if (v15)
  {
    v16 = *(v2 + 48);

    v15(a1);
    sub_100015D04(v15, v16);
    v17 = *(v2 + 40);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v2 + 48);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;

  return sub_100015D04(v17, v18);
}

uint64_t sub_1004FBBC8()
{
  sub_100015D04(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1004FBC34(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  if (qword_1009739A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100981E50);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = [v11 identifier];
    v27 = a3;
    v16 = a4;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_10000C4E4(v17, v19, &v28);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    if (a2)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (a2)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = sub_10000C4E4(v21, v22, &v28);

    *(v14 + 14) = v23;
    a4 = v16;
    a3 = v27;
    _os_log_impl(&_mh_execute_header, v12, v13, "IncomingAirDropAlert created for transfer %s, playSound=%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  *(v5 + 16) = v11;
  *(v5 + 34) = a2 & 1;
  v24 = *(v5 + 40);
  v25 = *(v5 + 48);
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  sub_1000387D0(a3, a4);
  sub_100015D04(v24, v25);
  return v5;
}

void sub_1004FBE7C(int a1, id a2, char a3)
{
  if ([a2 transferState] == 6)
  {
    return;
  }

  v5 = [a2 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a2 metaData];
  v10 = [v9 previewImage];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005508(&v31, &unk_1009746F0, &qword_1007F90B0);
    v11 = [a2 metaData];
    v12 = [v11 contactIdentifier];

    if (v12)
    {

      goto LABEL_6;
    }

    if ((a3 & 1) == 0)
    {
LABEL_12:

      return;
    }
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    sub_100005508(&v31, &unk_1009746F0, &qword_1007F90B0);
    if ((a3 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_6:
  v13 = [objc_allocWithZone(NSExtensionItem) init];
  sub_10028088C(&qword_100985A60, &unk_100808040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *&v31 = 25705;
  *(&v31 + 1) = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v6;
  *(inited + 80) = v8;

  sub_10027FD18(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_1009832B0, &unk_1007F64D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 setUserInfo:isa];

  v16 = objc_opt_self();
  sub_10028088C(&qword_100974F70, &unk_100804260);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007FD580;
  *(v17 + 32) = v13;
  sub_1000276B4(0, &qword_100981FA8, NSExtensionItem_ptr);
  v18 = v13;
  v19 = Array._bridgeToObjectiveC()().super.isa;

  *&v31 = 0;
  v20 = [v16 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v31];

  v21 = v31;
  if (v20)
  {
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (SBUserNotificationExtensionIdentifierKey)
    {
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v32 + 1) = &type metadata for String;
      *&v31 = 0xD000000000000020;
      *(&v31 + 1) = 0x80000001007941F0;
      sub_1002AF99C(&v31, v25, v26);
      if (SBUserNotificationExtensionItemsKey)
      {

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
        *(&v32 + 1) = &type metadata for Data;
        *&v31 = v22;
        *(&v31 + 1) = v24;
        sub_100294008(v22, v24);
        sub_1002AF99C(&v31, v27, v29);

        sub_100026AC0(v22, v24);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v30 = v21;

    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1004FC2CC(void *a1, int a2)
{
  v99 = a2;
  v3 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v101 = &v97 - v7;
  v102 = type metadata accessor for URL();
  v104 = *(v102 - 8);
  __chkstk_darwin(v102);
  v97 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(SFUserAlert) init];
  v10 = [a1 possibleActions];
  sub_1000276B4(0, &qword_10097A3A8, SFAirDropAction_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = [a1 cancelAction];
  v110 = a1;
  v13 = [a1 contentsTitle];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  v14 = [v13 length];
  if (v14 >= 1000)
  {
    v15 = 1000;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v13 substringToIndex:v15];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v9 setTitle:v16];
  v17 = [v110 contentsDescription];
  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  v98 = v6;
  v18 = [v17 length];
  if (v18 >= 1000)
  {
    v19 = 1000;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v17 substringToIndex:v19];
  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  [v9 setMessage:v20];
  v100 = v9;
  [v9 setHasDefaultButton:0];
  v21 = _swiftEmptyArrayStorage;
  v116 = _swiftEmptyArrayStorage;
  v22 = [v110 needsAction];
  v23 = _swiftEmptyArrayStorage;
  v24 = v11;
  v109 = v11;
  v105 = v12;
  if (v22)
  {
    v106 = v11 >> 62;
    if (v11 >> 62)
    {
      goto LABEL_45;
    }

    v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      do
      {
        v26 = 0;
        v27 = v24 & 0xFFFFFFFFFFFFFF8;
        v107 = v24 & 0xFFFFFFFFFFFFFF8;
        v108 = v24 & 0xC000000000000001;
        if (v24 < 0)
        {
          v27 = v24;
        }

        v103 = v27;
        while (1)
        {
          if (v108)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v26 >= *(v107 + 16))
            {
              goto LABEL_44;
            }

            v28 = *(v24 + 8 * v26 + 32);
          }

          v29 = v28;
          v11 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (![v110 userResponse])
          {
            if (v106)
            {
              if (_CocoaArrayWrapper.endIndex.getter() == 1)
              {
LABEL_41:
                result = [v29 singleItemLocalizedTitle];
                if (!result)
                {
                  goto LABEL_92;
                }

                goto LABEL_30;
              }
            }

            else if (*(v107 + 16) == 1)
            {
              goto LABEL_41;
            }
          }

          result = [v29 localizedTitle];
          if (!result)
          {
            goto LABEL_91;
          }

LABEL_30:
          v31 = result;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v32 = objc_allocWithZone(SBSMutableUserNotificationButtonDefinition);
          v33 = String._bridgeToObjectiveC()();

          v34 = [v32 initWithTitle:v33];

          if (!v21[2])
          {
            [v34 setIsPreferredButton:1];
          }

          v35 = [v34 build];
          v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_10028E2FC(0, v21[2] + 1, 1, v21);
          }

          v38 = v21[2];
          v37 = v21[3];
          if (v38 >= v37 >> 1)
          {
            v21 = sub_10028E2FC((v37 > 1), v38 + 1, 1, v21);
          }

          v21[2] = v38 + 1;
          v21[v38 + 4] = v36;
          v39 = v29;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          ++v26;
          v24 = v109;
          if (v11 == v25)
          {
            v23 = v116;
            goto LABEL_47;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v40 = _CocoaArrayWrapper.endIndex.getter();
        v24 = v11;
        v25 = v40;
      }

      while (v40);
    }

    v23 = v21;
LABEL_47:
    v12 = v105;
  }

  if (v12)
  {
    v41 = v12;
    result = [v41 localizedTitle];
    if (!result)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v42 = result;
    v43 = [objc_allocWithZone(SBSMutableUserNotificationButtonDefinition) initWithTitle:result];

    v44 = [v43 build];
    v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (v23 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 2)
      {
        goto LABEL_52;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
LABEL_52:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10028E2FC(0, v21[2] + 1, 1, v21);
      }

      v47 = v21[2];
      v46 = v21[3];
      if (v47 >= v46 >> 1)
      {
        v21 = sub_10028E2FC((v46 > 1), v47 + 1, 1, v21);
      }

      v21[2] = v47 + 1;
      v21[v47 + 4] = v45;
      v48 = v41;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_66:

      goto LABEL_67;
    }

    v49 = v21[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v21;
    if (!isUniquelyReferenced_nonNull_native || v49 >= v21[3] >> 1)
    {
      v21 = sub_10028E2FC(isUniquelyReferenced_nonNull_native, v49 + 1, 1, v21);
      v117 = v21;
    }

    sub_10057F0D0(0, 0, 1, v45);

    if (v23 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }
    }

    sub_10057F2EC(0, 0, v41);
    v48 = v43;
    v43 = v41;
    goto LABEL_66;
  }

LABEL_67:
  sub_10028088C(&unk_100987070, &unk_10080DA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8220;
  result = kCFUserNotificationAlertTopMostKey;
  if (!kCFUserNotificationAlertTopMostKey)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v52;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  result = SBUserNotificationDontDismissOnUnlock;
  if (!SBUserNotificationDontDismissOnUnlock)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v53;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  result = SBUserNotificationDismissOnLock;
  if (!SBUserNotificationDismissOnLock)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v54;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 0;
  result = SBUserNotificationAllowLockscreenDismissalKey;
  if (!SBUserNotificationAllowLockscreenDismissalKey)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v55;
  *(inited + 192) = 0;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD00000000000001DLL;
  *(inited + 264) = &type metadata for String;
  *(inited + 232) = 0x8000000100794170;
  *(inited + 240) = 0xD000000000000020;
  *(inited + 248) = 0x8000000100794190;
  v56 = sub_100011040(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_1009744D0, &qword_1007F8A20);
  swift_arrayDestroy();
  v115 = v56;
  result = SBSUserNotificationButtonDefinitionsKey;
  if (!SBSUserNotificationButtonDefinitionsKey)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;
  v114 = sub_10028088C(&qword_100974BE0, &qword_1007F7B20);
  *&v113 = v21;
  sub_1000106E0(&v113, v112);

  v60 = swift_isUniquelyReferenced_nonNull_native();
  v111 = v56;
  sub_100011170(v112, v57, v59, v60);

  v115 = v111;
  v61 = String._bridgeToObjectiveC()();
  v62 = [objc_opt_self() bundleWithIdentifier:v61];

  if (!v62)
  {

    v70 = v101;
    (*(v104 + 56))(v101, 1, 1, v102);
LABEL_79:

    sub_100005508(v70, &unk_100974E00, &qword_1007F8940);
    v71 = v100;
    if (qword_1009739A8 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000C4AC(v72, qword_100981E50);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Could not find assets catalog.", v75, 2u);
    }

    goto LABEL_87;
  }

  v63 = String._bridgeToObjectiveC()();
  v64 = String._bridgeToObjectiveC()();
  v65 = [v62 URLForResource:v63 withExtension:v64];

  if (v65)
  {
    v66 = v98;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = 0;
    v68 = v102;
    v69 = v104;
  }

  else
  {
    v67 = 1;
    v68 = v102;
    v69 = v104;
    v66 = v98;
  }

  (*(v69 + 56))(v66, v67, 1, v68);
  v70 = v101;
  sub_1003332E8(v66, v101);
  if ((*(v69 + 48))(v70, 1, v68) == 1)
  {

    goto LABEL_79;
  }

  v76 = v97;
  (*(v69 + 32))(v97, v70, v68);
  result = SBUserNotificationIconImageAssetCatalogPathKey;
  if (!SBUserNotificationIconImageAssetCatalogPathKey)
  {
    goto LABEL_99;
  }

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;
  v80 = URL.path.getter();
  v114 = &type metadata for String;
  *&v113 = v80;
  *(&v113 + 1) = v81;
  sub_1000106E0(&v113, v112);
  v82 = v115;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v111 = v82;
  sub_100011170(v112, v77, v79, v83);

  v115 = v111;
  if (!SBUserNotificationIconImageAssetCatalogImageKey)
  {
LABEL_100:
    __break(1u);
    return result;
  }

  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;
  v114 = &type metadata for String;
  *&v113 = 0x706F7244726941;
  *(&v113 + 1) = 0xE700000000000000;
  sub_1000106E0(&v113, v112);
  v87 = v115;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v111 = v87;
  sub_100011170(v112, v84, v86, v88);

  (*(v104 + 8))(v76, v68);
  v115 = v111;
  v71 = v100;
LABEL_87:
  v89 = [v110 metaData];
  v90 = [v89 contactIdentifier];

  if (v90)
  {
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    v114 = &type metadata for String;
    *&v113 = v91;
    *(&v113 + 1) = v93;
    sub_1000106E0(&v113, v112);
    v94 = v115;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v111 = v94;
    sub_100011170(v112, 0xD000000000000023, 0x80000001007941C0, v95);
    v115 = v111;
  }

  sub_1004FBE7C(&v115, v110, v99 & 1);
  sub_1003CE294(v115);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v71 setAdditionalInfo:isa];

  return v71;
}

uint64_t Optional.tryAuthUnwrap(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v11);
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a4, v10, v12);
  }

  (*(v8 + 8))(v10, a3);

  v14 = sub_100010F88(10, a1, a2);
  v16 = v15;
  sub_1000115C8();
  swift_allocError();
  *v17 = v14;
  *(v17 + 8) = v16;
  return swift_willThrow();
}

uint64_t sub_1004FD4B0(uint64_t a1, int a2)
{
  v53 = a2;
  v52 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchTimeInterval();
  v54 = *(v59 - 8);
  v7 = __chkstk_darwin(v59);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v49 - v9;
  v10 = type metadata accessor for DispatchTime();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  v16 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v23 = v24;
  (*(v21 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v20);
  v51 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_8;
  }

  v50 = v2;
  v49 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_responseTimer;
  if (*&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_responseTimer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  if (v53)
  {
    v3 = 15.0;
  }

  else
  {
    v3 = *&v52;
  }

  sub_1000276B4(0, &qword_10097DBA0, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1004FFF00(&unk_100977390, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10028088C(&qword_1009820E0, &qword_1008085E0);
  sub_100011630(qword_1009773A0, &qword_1009820E0, &qword_1008085E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v17 + 8))(v19, v16);
  ObjectType = swift_getObjectType();
  static DispatchTime.now()();
  + infix(_:_:)();
  v27 = v56;
  v55 = *(v55 + 8);
  (v55)(v13, v56);
  v28 = v54;
  v29 = v57;
  v30 = v59;
  (*(v54 + 104))(v57, enum case for DispatchTimeInterval.never(_:), v59);
  v31 = v58;
  sub_1002EABF8(v58);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v32 = *(v28 + 8);
  v32(v31, v30);
  v32(v29, v30);
  v33 = ObjectType;
  v34 = v25;
  (v55)(v15, v27);
  v35 = swift_allocObject();
  v19 = v50;
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004FFEF8;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E5B38;
  v36 = _Block_copy(aBlock);

  v37 = v60;
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ(v33);
  v38 = v62;
  sub_1005944AC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v36);
  (*(v64 + 8))(v38, v65);
  (*(v61 + 8))(v37, v63);

  *&v19[v49] = v34;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (qword_1009739B8 != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v39 = type metadata accessor for Logger();
  sub_10000C4AC(v39, qword_100981FB0);
  v40 = v19;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315394;
    type metadata accessor for UUID();
    sub_1004FFF00(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = sub_10000C4E4(v45, v46, aBlock);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2048;
    *(v43 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v41, v42, "Starting response timer for %s to fire in %f sec", v43, 0x16u);
    sub_10000C60C(v44);
  }

  OS_dispatch_source.activate()();
  return swift_unknownObjectRelease();
}

uint64_t sub_1004FDD9C()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_responseTimer;
  if (!*&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_responseTimer])
  {
    return result;
  }

  v10 = qword_1009739B8;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100981FB0);
  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    type metadata accessor for UUID();
    sub_1004FFF00(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = sub_10000C4E4(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "Canceling response timer for %s", v15, 0xCu);
    sub_10000C60C(v16);
  }

  swift_getObjectType();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  *&v2[v1] = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1004FE068(uint64_t a1)
{
  if ((a1 - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return qword_100808968[a1 - 1];
  }
}

uint64_t sub_1004FE08C(unint64_t a1)
{
  if (a1 > 0x17)
  {
    return 3;
  }

  else
  {
    return byte_100808A08[a1];
  }
}

uint64_t sub_1004FE0AC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_1009739B8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100981FB0);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    type metadata accessor for UUID();
    sub_1004FFF00(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_10000C4E4(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Invalidating %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  return sub_1004FDD9C();
}

uint64_t SFAuthenticationErrorCode.description.getter(uint64_t a1)
{
  v1 = SFAuthenticationErrorCodeToString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1004FE388(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_10028088C(&qword_1009820C0, &qword_1008085C8);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_10028088C(&qword_1009820C8, &qword_1008085D0);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_10028088C(&unk_1009820D0, &qword_1008085D8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_10002CDC0(a1, a1[3]);
  sub_1004FFDFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1004FFE50();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1004FFEA4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1004FE644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1801678668 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955787 && a2 == 0xE300000000000000)
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

uint64_t sub_1004FE720(uint64_t a1)
{
  v2 = sub_1004FFDFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004FE75C(uint64_t a1)
{
  v2 = sub_1004FFDFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004FE7A4(uint64_t a1)
{
  v2 = sub_1004FFE50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004FE7E0(uint64_t a1)
{
  v2 = sub_1004FFE50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004FE81C(uint64_t a1)
{
  v2 = sub_1004FFEA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004FE858(uint64_t a1)
{
  v2 = sub_1004FFEA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004FE894@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1004FF788(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1004FE8E0(unint64_t a1)
{
  v2 = SFDeviceClassCodeGet();
  v3 = sub_100027628(a1);
  v4 = sub_10000EF9C(8u, v3);

  if (v4)
  {
    if (!SFDeviceIsRealityDevice())
    {
      goto LABEL_3;
    }

LABEL_6:
    if (a1 >= 0x17)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0x19A71u >> a1;
    }

    return v5 & 1;
  }

  v6 = sub_100027628(a1);
  v7 = sub_10000EF9C(v2, v6);

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 0x7E658Eu >> a1;
  if (a1 >= 0x17)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

unint64_t sub_1004FE99C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1004FF754(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1004FEA04(uint64_t a1)
{
  v2 = sub_1004FFF00(&qword_1009744A0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1004FEA70(uint64_t a1)
{
  v2 = sub_1004FFF00(&qword_1009744A0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1004FEADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004FFF00(&qword_1009744A0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t sub_1004FEB60()
{
  v0 = SFAuthenticationErrorCodeToString();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t sub_1004FEBB0()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1009A0C10 = result;
  *algn_1009A0C18 = v1;
  return result;
}

Swift::Int sub_1004FEBE0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 2006);
  return Hasher._finalize()();
}

Swift::Int sub_1004FEC58(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 2006);
  return Hasher._finalize()();
}

uint64_t sub_1004FEC9C@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004FFD78(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1004FECE8(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
    case 6:
      result = 0xD000000000000024;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1004FEE3C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100981FB0);
  v1 = sub_10000C4AC(v0, qword_100981FB0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004FEF04(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((swift_isaMask & *Strong) + 0x100))();
  }
}

id sub_1004FEFC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAuthenticationSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004FF0E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1004FF170@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  return sub_1004FFD8C(v3 + v4, a1);
}

uint64_t sub_1004FF1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *v6;
  v11 = *a4;
  swift_beginAccess();
  sub_10000C788(a1, v10 + v11, a5, a6);
  return swift_endAccess();
}

uint64_t sub_1004FF2B4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 14;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004FF2E8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004FF3F8()
{
  result = qword_100981FE8;
  if (!qword_100981FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981FE8);
  }

  return result;
}

uint64_t type metadata accessor for SDAuthenticationSession(uint64_t a1)
{
  result = qword_100982048;
  if (!qword_100982048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004FF4E8(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1004FF5C8(uint64_t a1, int a2)
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

uint64_t sub_1004FF610(uint64_t result, int a2, int a3)
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

unint64_t sub_1004FF664()
{
  result = qword_100982058;
  if (!qword_100982058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982058);
  }

  return result;
}

unint64_t sub_1004FF700()
{
  result = qword_100982070;
  if (!qword_100982070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982070);
  }

  return result;
}

unint64_t sub_1004FF754(unint64_t result)
{
  if (result > 0x17 || ((1 << result) & 0xFE7FFF) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1004FF788(void *a1)
{
  v24 = sub_10028088C(&qword_100982088, &qword_1008085A8);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_10028088C(&qword_100982090, &qword_1008085B0);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_10028088C(&qword_100982098, &qword_1008085B8);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_10002CDC0(a1, a1[3]);
  sub_1004FFDFC();
  v10 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    return sub_10000C60C(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = KeyedDecodingContainer.allKeys.getter();
  if (*(v14 + 16) != 1)
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    sub_10028088C(&qword_1009820A8, &qword_1008085C0);
    *v18 = &type metadata for SDAuthenticationRole;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_10000C60C(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_1004FFE50();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_1004FFEA4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_10000C60C(v26);
  return v27;
}

uint64_t sub_1004FFBC4(void *a1, uint64_t a2)
{
  v4 = [a1 code];
  if (v4 == -6727)
  {
    a2 = 20;
  }

  else if (v4 == -6722)
  {
    a2 = 12;
  }

  sub_100011040(_swiftEmptyArrayStorage);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v21 = sub_1000276B4(0, &qword_1009753F0, NSError_ptr);
  *&v20 = a1;
  sub_1000106E0(&v20, v19);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100011170(v19, v5, v7, isUniquelyReferenced_nonNull_native);

  v10 = [v8 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v21 = &type metadata for String;
  *&v20 = v11;
  *(&v20 + 1) = v13;
  sub_1000106E0(&v20, v19);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100011170(v19, v14, v16, v17);

  return a2;
}

uint64_t sub_1004FFD78(int a1)
{
  if ((a1 - 2006) >= 0xD)
  {
    return 13;
  }

  else
  {
    return (a1 - 2006);
  }
}

uint64_t sub_1004FFD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100982080, &unk_1007FDD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004FFDFC()
{
  result = qword_1009820A0;
  if (!qword_1009820A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009820A0);
  }

  return result;
}

unint64_t sub_1004FFE50()
{
  result = qword_1009820B0;
  if (!qword_1009820B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009820B0);
  }

  return result;
}

unint64_t sub_1004FFEA4()
{
  result = qword_1009820B8;
  if (!qword_1009820B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009820B8);
  }

  return result;
}

uint64_t sub_1004FFF00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SDAuthenticationTransportMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDAuthenticationTransportMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100500110()
{
  result = qword_1009820F8;
  if (!qword_1009820F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009820F8);
  }

  return result;
}

unint64_t sub_100500168()
{
  result = qword_100982100;
  if (!qword_100982100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982100);
  }

  return result;
}

unint64_t sub_1005001C0()
{
  result = qword_100982108;
  if (!qword_100982108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982108);
  }

  return result;
}

unint64_t sub_100500218()
{
  result = qword_100982110;
  if (!qword_100982110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982110);
  }

  return result;
}

unint64_t sub_100500270()
{
  result = qword_100982118;
  if (!qword_100982118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982118);
  }

  return result;
}

unint64_t sub_1005002C8()
{
  result = qword_100982120;
  if (!qword_100982120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982120);
  }

  return result;
}

unint64_t sub_100500320()
{
  result = qword_100982128;
  if (!qword_100982128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982128);
  }

  return result;
}

unint64_t sub_100500378()
{
  result = qword_100982130;
  if (!qword_100982130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982130);
  }

  return result;
}

uint64_t sub_1005003E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005004E4, v4, 0);
}

uint64_t sub_1005004E4()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100500580;
  v2 = *(v0 + 16);

  return sub_100419510(v2);
}

uint64_t sub_100500580(char a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100500698, v2, 0);
}

void sub_100500698(uint64_t a1)
{
  if (*(v1 + 72) == 1)
  {
    v2 = *(v1 + 40);
    v3 = SFAirDropReceive.AskRequest.files.getter();
    v4 = 0;
    v10 = *(v3 + 16);
    while (1)
    {
      v5 = v10 == v4;
      if (v10 == v4)
      {
LABEL_6:

        goto LABEL_8;
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      v6 = *(v1 + 48);
      v7 = *(v1 + 32);
      (*(v2 + 16))(v6, v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v4++, v7);
      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      (*(v2 + 8))(v6, v7);
      v8 = String._bridgeToObjectiveC()();

      LOBYTE(v7) = SFIsPDF();

      if ((v7 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
LABEL_8:

    v9 = *(v1 + 8);

    v9(v5);
  }
}

uint64_t sub_10050080C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a1;
  v5 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v32 - v8;
  v38 = type metadata accessor for URL();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFPlatform();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 16);
  if (SFFilesAppAvailable())
  {
    v32 = a3;
    static SFPlatform.visionOS.getter();
    v19 = static SFPlatform.isPlatform(_:)();
    v20 = *(v15 + 8);
    v20(v17, v14);
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      static SFPlatform.macOS.getter();
      v22 = static SFPlatform.isPlatform(_:)();
      v20(v17, v14);
      if (v22)
      {
        v21 = 1;
      }

      else
      {
        v21 = *(v18 + 24) ^ 1;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  (*(v11 + 16))(v13, v39, v10);
  if ((*(v11 + 88))(v13, v10) == enum case for SFAirDropReceive.ItemDestination.customURL(_:))
  {
    (*(v11 + 96))(v13, v10);
    v24 = v35;
    v23 = v36;
    v25 = v38;
    (*(v36 + 32))(v35, v13, v38);
    v26 = v37;
    (*(v23 + 16))(v37, v24, v25);
    (*(v23 + 56))(v26, 0, 1, v25);
    v41 = 0;
    v27 = v34;
    sub_100333278(v26, v34);
    v28 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v29 = swift_allocObject();
    sub_1003332E8(v27, v29 + v28);
    *(v29 + ((v6 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v40;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    sub_100005508(v26, &unk_100974E00, &qword_1007F8940);
    return (*(v23 + 8))(v24, v25);
  }

  else
  {
    v41 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v40;
    *(v31 + 24) = v21 & 1;

    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100500DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v16 = a2;
  v5 = type metadata accessor for SFPlatform();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.iOS.getter();
  v13 = static SFPlatform.isPlatform(_:)();
  (*(v6 + 8))(v8, v5);
  if (v13)
  {
    *v12 = 0xD000000000000011;
    *(v12 + 1) = 0x8000000100788500;
    (*(v10 + 104))(v12, enum case for SFAirDropReceive.ItemDestination.customApp(_:), v9);
  }

  else
  {
    (*(v10 + 16))(v12, v16, v9);
  }

  sub_100419DB8(a1, v12, a3);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100500FD0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerPDFs();
  v2 = swift_allocObject();
  type metadata accessor for SDAirDropContentHandlerGenericFiles();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_100501028(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1005003E8(a1);
}

void sub_10050113C(uint64_t a1, char a2)
{
  v4 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v4 < 2)
  {

    sub_1003D8E44(a1, a2 & 1);
  }

  else
  {
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 4605008;
    v6 = inited + 32;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = v4;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v6, &qword_100981D40, &unk_1007FA6C0);
    v7 = String._bridgeToObjectiveC()();
    v8 = SFLocalizedStringForKey();

    if (v8)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007F5670;
      *(v9 + 56) = &type metadata for Int;
      *(v9 + 64) = &protocol witness table for Int;
      *(v9 + 32) = v4;
      static String.localizedStringWithFormat(_:_:)();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005012F0(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((SFFilesAppAvailable() & 1) == 0)
  {
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 == enum case for SFAirDropReceive.ItemDestination.customApp(_:))
    {
      (*(v3 + 96))(v5, v2);
      if (*v5 != 0xD000000000000034 || 0x800000010078AA10 != v5[1])
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v6 = v10 ^ 1;
        return v6 & 1;
      }
    }

    else if (v8 != enum case for SFAirDropReceive.ItemDestination.noItem(_:))
    {
      (*(v3 + 8))(v5, v2);
      v6 = 1;
      return v6 & 1;
    }
  }

  v6 = 0;
  return v6 & 1;
}

void sub_10050149C()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listener;
  if (!*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listener])
  {
    if (qword_1009739C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100982220);
    v3 = v0;
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      type metadata accessor for UUID();
      sub_100005478(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = sub_10000C4E4(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Starting AirDrop Near Field Server for transaction %s", v7, 0xCu);
      sub_10000C60C(v8);
    }

    sub_100636164(*&v4[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_localIdentity]);
    v12 = NWParameters.nw.getter();
    v13 = nw_listener_create(v12);
    swift_unknownObjectRelease();
    if (v13)
    {
      type metadata accessor for NWListener();
      swift_unknownObjectRetain();
      v14 = NWListener.__allocating_init(_:)();
      *&v3[v1] = v14;

      *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_networkListener] = v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v15 = swift_allocObject();
      *(v15 + 16) = v4;
      *(v15 + 24) = v14;
      v16 = v4;

      NWListener.stateUpdateHandler.setter();
      *(swift_allocObject() + 16) = v16;
      v17 = v16;
      NWListener.newConnectionHandler.setter();
      NWListener.start(queue:)();

      swift_unknownObjectRelease();
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t sub_100501834(unint64_t a1, char **a2)
{
  v34 = type metadata accessor for NWConnection.State();
  v5 = *(v34 - 8);
  v6 = __chkstk_darwin(v34);
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = &v27 - v8;
  if (qword_100973790 != -1)
  {
LABEL_28:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097AD70);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v28 = v10;
  if (v13)
  {
    v33 = v5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38[0] = v15;
    *v14 = 136315138;
    if (*(v10 + *a1))
    {
      if (*(v10 + *a1) == 1)
      {
        a1 = 0xEE00726576726553;
        v16 = 0x2072756F6A6E6F42;
      }

      else
      {
        a1 = 0xEA0000000000646CLL;
        v16 = 0x656946207261654ELL;
      }
    }

    else
    {
      a1 = 0x800000010078D790;
      v16 = 0xD00000000000001ALL;
    }

    v17 = sub_10000C4E4(v16, a1, v38);

    *(v14 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Cleaning up connections for %s", v14, 0xCu);
    sub_10000C60C(v15);

    v5 = v33;
  }

  else
  {
  }

  v18 = *a2;
  v2 = v28;
  swift_beginAccess();
  v19 = *&v18[v2];
  v37 = _swiftEmptyArrayStorage;
  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20)
  {
    v27 = v18;
    v21 = 0;
    v33 = v19 & 0xC000000000000001;
    v31 = v20;
    v32 = v19 & 0xFFFFFFFFFFFFFF8;
    v30 = enum case for NWConnection.State.cancelled(_:);
    v29 = (v5 + 104);
    a2 = (v5 + 8);
    while (1)
    {
      if (v33)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v25 = v37;
          v18 = v27;
          v2 = v28;
          goto LABEL_26;
        }
      }

      else
      {
        if (v21 >= *(v32 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v5 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_23;
        }
      }

      v22 = v35;
      NWConnection.state.getter();
      v23 = v36;
      v2 = v34;
      (*v29)(v36, v30, v34);
      sub_100005478(&qword_1009822A0, &type metadata accessor for NWConnection.State, &protocol conformance descriptor for NWConnection.State);
      a1 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *a2;
      (*a2)(v23, v2);
      (v24)(v22, v2);
      if (a1)
      {
      }

      else
      {
        v2 = &v37;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v21;
      if (v5 == v31)
      {
        goto LABEL_24;
      }
    }
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_26:

  *&v18[v2] = v25;
}

uint64_t sub_100501CBC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100982220);
  v1 = sub_10000C4AC(v0, qword_100982220);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100501D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NWListener.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v12;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v14[(v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;

  sub_1002B3398(0, 0, v10, &unk_100808C20, v14);
}

uint64_t sub_100501FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return _swift_task_switch(sub_100501FC8, 0, 0);
}

uint64_t sub_100501FC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1005020C4;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return sub_1005021D8(v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1005020C4()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100369FD4, 0, 0);
}

uint64_t sub_1005021D8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for NWError();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for NWListener.State();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v3[17] = static AirDropActor.shared;

  return _swift_task_switch(sub_100502358, v6, 0);
}

uint64_t sub_100502358()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 16))(v1, v0[5], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for NWListener.State.waiting(_:))
  {
    v5 = v0[16];
    v6 = v0[13];
    v7 = v0[8];
    v8 = v0[9];
    (*(v0[15] + 96))(v5, v0[14]);
    (*(v8 + 32))(v6, v5, v7);
    if (qword_1009739C0 != -1)
    {
      swift_once();
    }

    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[8];
    v12 = v0[9];
    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100982220);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[8];
    v21 = v0[9];
    if (v17)
    {
      v75 = v14;
      v22 = swift_slowAlloc();
      v76 = v18;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      sub_100005478(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v75(v24, v19, v20);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = *(v21 + 8);
      v26(v19, v20);
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "AirDrop Near Field server waiting with error %@", v22, 0xCu);
      sub_10028924C(v23);

      v26(v76, v20);
    }

    else
    {

      v47 = *(v21 + 8);
      v47(v19, v20);
      v47(v18, v20);
    }

    goto LABEL_42;
  }

  if (v4 != enum case for NWListener.State.failed(_:))
  {
    if (v4 == enum case for NWListener.State.setup(_:))
    {
      if (qword_1009739C0 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10000C4AC(v48, qword_100982220);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_18;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "AirDrop Near Field server setting up";
    }

    else
    {
      if (v4 == enum case for NWListener.State.ready(_:))
      {
        if (qword_1009739C0 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_10000C4AC(v57, qword_100982220);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "AirDrop Near Field server ready", v60, 2u);
        }

        sub_1005034B4(v61, v62);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v64 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_applicationServiceServerErrors;
          v65 = Strong;
          swift_beginAccess();
          *(v65 + v64) = _swiftEmptySetSingleton;

          swift_unknownObjectRelease();
        }

        goto LABEL_42;
      }

      if (v4 != enum case for NWListener.State.cancelled(_:))
      {
        if (qword_1009739C0 != -1)
        {
          swift_once();
        }

        v67 = type metadata accessor for Logger();
        sub_10000C4AC(v67, qword_100982220);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&_mh_execute_header, v68, v69, "Unknown AirDrop Near Field server state", v70, 2u);
        }

        v72 = v0[15];
        v71 = v0[16];
        v73 = v0[14];

        (*(v72 + 8))(v71, v73);
        goto LABEL_42;
      }

      if (qword_1009739C0 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_10000C4AC(v66, qword_100982220);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_18;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "AirDrop Near Field server stopped";
    }

    _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);

LABEL_18:

LABEL_42:

    v74 = v0[1];

    return v74();
  }

  v27 = v0[16];
  v28 = v0[11];
  v29 = v0[8];
  v30 = v0[9];
  (*(v0[15] + 96))(v27, v0[14]);
  (*(v30 + 32))(v28, v27, v29);
  if (qword_1009739C0 != -1)
  {
    swift_once();
  }

  v31 = v0[10];
  v32 = v0[11];
  v33 = v0[8];
  v34 = v0[9];
  v35 = type metadata accessor for Logger();
  sub_10000C4AC(v35, qword_100982220);
  v36 = *(v34 + 16);
  v36(v31, v32, v33);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v39 = os_log_type_enabled(v37, v38);
  v41 = v0[9];
  v40 = v0[10];
  v42 = v0[8];
  if (v39)
  {
    v43 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v43 = 138412290;
    sub_100005478(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    swift_allocError();
    v36(v44, v40, v42);
    v45 = _swift_stdlib_bridgeErrorToNSError();
    v46 = *(v41 + 8);
    v46(v40, v42);
    *(v43 + 4) = v45;
    *v77 = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "AirDrop Near Field server failed with error %@", v43, 0xCu);
    sub_10028924C(v77);
  }

  else
  {

    v46 = *(v41 + 8);
    v46(v40, v42);
  }

  v0[18] = v46;
  NWListener.cancel()();
  v53 = swift_unknownObjectWeakLoadStrong();
  v0[19] = v53;
  if (!v53)
  {
    (v0[18])(v0[11], v0[8]);
    goto LABEL_42;
  }

  v54 = swift_task_alloc();
  v0[20] = v54;
  *v54 = v0;
  v54[1] = sub_10040A960;
  v55 = v0[11];

  return sub_10035E6D4(0, v55);
}

uint64_t sub_100502CCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;

  sub_1002B3398(0, 0, v5, &unk_100808BF8, v8);
}

uint64_t sub_100502E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100502E24, 0, 0);
}

uint64_t sub_100502E24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v2 = static AirDropActor.shared;

    return _swift_task_switch(sub_100502F20, v2, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100502F20()
{
  v1 = *(v0 + 64);
  sub_100502F8C(*(v0 + 56));

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

uint64_t sub_100502F8C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  sub_100501834(&OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_serverType, &OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_connections);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_connections;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_transactionID;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + v12, v4);
  v15 = qword_1009735E0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = static AirDropActor.shared;
  v17 = sub_100005478(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v18 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = v17;
  *(v19 + 4) = a1;
  *(v19 + 5) = v14;
  (*(v5 + 32))(&v19[v18], v7, v4);

  sub_1002B3098(0, 0, v10, &unk_100808C08, v19);
}

uint64_t sub_1005032C0()
{
  if (qword_1009739C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100982220);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    type metadata accessor for UUID();
    sub_100005478(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_10000C4E4(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping AirDrop Near Field Server for transaction %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  sub_100374AA0();
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listener;
  if (*&v2[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_listener])
  {

    NWListener.cancel()();
  }

  *&v2[v10] = 0;
}

void sub_1005034B4(uint64_t a1, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_networkListener])
  {
    v3 = qword_1009739C0;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100982220);
    v5 = v2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
      *(v8 + 4) = v10;
      v9->super.isa = v10.super.isa;
      _os_log_impl(&_mh_execute_header, v6, v7, "Setting Near Field server advertised remote public keys to %@", v8, 0xCu);
      sub_10028924C(v9);
    }

    UUID.uuidString.getter();
    v11 = String.utf8CString.getter();

    v12 = String.utf8CString.getter();
    v13 = String.utf8CString.getter();
    bonjour_service = nw_endpoint_create_bonjour_service((v11 + 32), (v12 + 32), (v13 + 32));

    sub_10028088C(&unk_100985A50, &qword_1007F8340);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007F5670;
    v16 = *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_remotePublicKey];
    v17 = *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropNearFieldServer_remotePublicKey + 8];
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    sub_100294008(v16, v17);
    isa = Array._bridgeToObjectiveC()().super.isa;

    nw_endpoint_set_public_keys();

    v19 = nw_array_create();
    sub_1001BCAD8(bonjour_service, v19);
    nw_listener_set_advertise_endpoints();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1009739C0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_100982220);
    oslog = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v21, "No listener available to add advertised endpoints", v22, 2u);
    }
  }
}

uint64_t sub_100503838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v6[9] = type metadata accessor for SDAirDropServerConnection(0);
  v6[10] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_100503908, v7, 0);
}

uint64_t sub_100503908()
{
  v23 = v0;
  if (qword_1009739C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100982220);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    v0[5] = v4;
    type metadata accessor for NWConnection();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v22);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "AirDrop Near Field server received connection: %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v11 = Strong, v12 = swift_unknownObjectWeakLoadStrong(), v0[11] = v12, v11, v12))
  {
    v13 = v0[10];
    v14 = v0[8];
    v15 = v0[6];
    v16 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
    *v13 = v15;
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 16))(&v13[v16], v14, v17);
    swift_storeEnumTagMultiPayload();

    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_100503C00;
    v19 = v0[10];

    return sub_100359E00(v19);
  }

  else
  {

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100503C00()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  swift_unknownObjectRelease();
  sub_100375730(v1);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for SDAirDropNearFieldServer(uint64_t a1)
{
  result = qword_100982290;
  if (!qword_100982290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100503ED0(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100503FE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100502E00(a1, v4, v5, v7, v6);
}

uint64_t sub_1005040A4(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_100503838(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1005041A8(uint64_t a1)
{
  v4 = *(type metadata accessor for NWListener.State() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_100501FA4(a1, v6, v7, v8, v1 + v5, v9);
}

Swift::Int sub_1005042E8()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100504350(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

void sub_100504390(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100504438()
{
  result = qword_1009822A8;
  if (!qword_1009822A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009822A8);
  }

  return result;
}

uint64_t sub_10050448C(uint64_t a1)
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = qword_1009735E0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v8 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v5;

  sub_1002B3398(0, 0, v3, &unk_100809038, v9);
}

uint64_t sub_100504674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v4[7] = static AirDropActor.shared;

  return _swift_task_switch(sub_100504714, v5, 0);
}

uint64_t sub_100504714()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_100504808;

    return sub_100504934();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100504808()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_1002F7F9C, v1, 0);
}

uint64_t sub_100504934()
{
  v1[2] = v0;
  v2 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer();
  v1[15] = v6;
  v1[16] = *(v6 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v1[19] = static AirDropActor.shared;

  return _swift_task_switch(sub_100504BC4, v7, 0);
}

uint64_t sub_100504BC4()
{
  v1 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  v2 = swift_allocError();
  *(v0 + 160) = v2;
  (*(*(v1 - 8) + 104))(v3, enum case for SFAirDropReceive.Failure.receiverCancelled(_:), v1);
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_100504D04;

  return sub_100641284(v2);
}

uint64_t sub_100504D04()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_100504E30, v1, 0);
}

uint64_t sub_100504E30(uint64_t a1)
{
  v63 = v1;
  v3 = v1[17];
  v2 = v1[18];
  v4 = v1[15];
  v5 = v1[16];
  CurrentValueSubject.value.getter();
  (*(v5 + 16))(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[16];
  v9 = v1[17];
  v11 = v1[15];
  if (v8)
  {
    v12 = v1[13];
    v13 = v1[14];
    v14 = v1[12];
    v15 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = v61;
    *v15 = 136315138;
    v60 = v11;
    SFAirDropReceive.Transfer.id.getter();
    sub_100530ED4(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v7;
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    v19 = *(v10 + 8);
    v19(v9, v60);
    v20 = sub_10000C4E4(v16, v18, &v62);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v59, "Receiver cancelled transfer %s", v15, 0xCu);
    sub_10000C60C(v61);
  }

  else
  {

    v19 = *(v10 + 8);
    v19(v9, v11);
  }

  v22 = v1[10];
  v21 = v1[11];
  v23 = v1[9];
  SFAirDropReceive.Transfer.state.getter();
  v24 = (*(v22 + 88))(v21, v23);
  if (v24 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    goto LABEL_5;
  }

  if (v24 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    v31 = v1[18];
    v32 = v1[15];
    v33 = v1[11];
    v35 = v1[4];
    v34 = v1[5];
    v36 = v1[3];
    (*(v1[10] + 96))(v33, v1[9]);
    v37 = &qword_10097C688;
    v38 = &unk_1008042A0;
LABEL_8:
    v39 = sub_10028088C(v37, v38);
    (*(v35 + 32))(v34, v33 + *(v39 + 48), v36);
    SFAirDrop.PermissionRequest.cancel()();
    (*(v35 + 8))(v34, v36);
    v19(v31, v32);
    v40 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_14:
    (*(*(v40 - 8) + 8))(v33, v40);
    goto LABEL_15;
  }

  if (v24 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:))
  {
LABEL_5:
    v25 = v1[18];
    v26 = v1[15];
    v27 = v1[11];
    v28 = v1[8];
    v29 = v1[6];
    v30 = v1[7];
    (*(v1[10] + 96))(v27, v1[9]);
    (*(v30 + 32))(v28, v27, v29);
    SFAirDrop.PermissionRequest.cancel()();
    (*(v30 + 8))(v28, v29);
    v19(v25, v26);
    goto LABEL_15;
  }

  if (v24 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:) || v24 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentIntervention(_:))
  {
    v41 = v1[18];
    v42 = v1[15];
    v33 = v1[11];
    v43 = v1[8];
    v44 = v1[6];
    v45 = v1[7];
    (*(v1[10] + 96))(v33, v1[9]);
    v46 = sub_10028088C(&qword_100974E80, &qword_100808F40);

    v47 = *(v46 + 64);
LABEL_13:
    (*(v45 + 32))(v43, v33 + v47, v44);
    SFAirDrop.PermissionRequest.cancel()();
    (*(v45 + 8))(v43, v44);
    v19(v41, v42);
    v40 = type metadata accessor for SFAirDropReceive.ItemDestination();
    goto LABEL_14;
  }

  if (v24 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:) || v24 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:))
  {
    v41 = v1[18];
    v42 = v1[15];
    v33 = v1[11];
    v43 = v1[8];
    v44 = v1[6];
    v45 = v1[7];
    (*(v1[10] + 96))(v33, v1[9]);
    v50 = sub_10028088C(&unk_10097C670, &qword_100805110);

    v47 = *(v50 + 80);
    goto LABEL_13;
  }

  if (v24 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
  {
    v31 = v1[18];
    v32 = v1[15];
    v33 = v1[11];
    v34 = v1[8];
    v36 = v1[6];
    v35 = v1[7];
    (*(v1[10] + 96))(v33, v1[9]);
    v37 = &unk_10097E9C0;
    v38 = &unk_100808DC0;
    goto LABEL_8;
  }

  if (v24 == enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
  {
    v31 = v1[18];
    v32 = v1[15];
    v33 = v1[11];
    v35 = v1[4];
    v34 = v1[5];
    v36 = v1[3];
    (*(v1[10] + 96))(v33, v1[9]);
    v37 = &qword_10097C658;
    v38 = &unk_1008042B0;
    goto LABEL_8;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Nothing to cancel for transfer state", v53, 2u);
  }

  v54 = v1[18];
  v55 = v1[15];
  v57 = v1[10];
  v56 = v1[11];
  v58 = v1[9];

  v19(v54, v55);
  (*(v57 + 8))(v56, v58);
LABEL_15:

  v48 = v1[1];

  return v48();
}

uint64_t sub_100505550(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10028088C(&qword_100982580, &qword_100808FD0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskResponse();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AcceptContext();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[13] = v6;
  v7 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[14] = v7;
  v2[15] = *(v7 - 8);
  v8 = swift_task_alloc();
  v2[16] = v8;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2[17] = static AirDropActor.shared;
  v9 = swift_task_alloc();
  v2[18] = v9;
  *v9 = v2;
  v9[1] = sub_1005057E4;

  return sub_100505DCC(v8, v6);
}

uint64_t sub_1005057E4()
{
  v2 = *(*v1 + 136);
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100505B84;
  }

  else
  {
    v3 = sub_10050590C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10050590C()
{
  v2 = v0[15];
  v1 = v0[16];
  v18 = v1;
  v3 = v0[14];
  v19 = v0[13];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v14 = v0[7];
  v15 = v0[6];
  v16 = v0[5];
  v8 = v0[4];
  v13 = v0[11];
  v17 = v0[2];
  v9 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
  (*(v2 + 16))(v6, v1, v3);
  (*(v4 + 16))(v6 + v9, v19, v13);
  (*(v5 + 104))(v6, enum case for SFAirDropReceive.AskResponse.accept(_:), v7);
  v10 = *(v5 + 16);
  v10(v8, v6, v7);
  (*(v5 + 56))(v8, 0, 1, v7);
  sub_100688450(v8);
  sub_100005508(v8, &qword_100982580, &qword_100808FD0);
  (*(v15 + 8))(v14, v16);
  v10(v17, v6, v7);
  _s6RunnerC19PreAcceptRunResultsVMa(0);
  CurrentValueSubject.value.getter();
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v19, v13);
  (*(v2 + 8))(v18, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100505B84()
{
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_100505C1C;
  v2 = v0[19];
  v3 = v0[2];

  return sub_10050C3B4(v3, v2);
}

uint64_t sub_100505C1C()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_100505D2C, v1, 0);
}

uint64_t sub_100505D2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100505DCC(uint64_t a1, uint64_t a2)
{
  v3[70] = v2;
  v3[69] = a2;
  v3[68] = a1;
  sub_10028088C(&qword_100976928, &qword_1007F98A8);
  v3[71] = swift_task_alloc();
  sub_10028088C(&qword_100976908, &unk_100801D60);
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3[74] = v4;
  v3[75] = *(v4 - 8);
  v3[76] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.AskRequest();
  v3[77] = v5;
  v3[78] = *(v5 - 8);
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[83] = v6;
  v3[84] = *(v6 - 8);
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.TransferType();
  v3[91] = v7;
  v3[92] = *(v7 - 8);
  v3[93] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3[94] = v8;
  v3[95] = *(v8 - 8);
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;
  v3[103] = static AirDropActor.shared;

  return _swift_task_switch(sub_100506164, v9, 0);
}

uint64_t sub_100506164(uint64_t a1)
{
  v215 = v1;
  v1[104] = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ask request START", v4, 2u);
  }

  v5 = v1[70];

  sub_10039D0AC();
  v6 = static NSUserDefaults.airdrop.getter();
  v7 = SFAirDropUserDefaults.alwaysAutoAccept.getter();

  v190 = [*(v5 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_deviceStatus) disableAutoAccept];
  if (v7)
  {
    log = 1;
  }

  else
  {
    v8 = v1[70];
    v9 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
    swift_beginAccess();
    sub_1002A9938(v8 + v9, (v1 + 2));
    v10 = v1[5];
    v11 = v1[6];
    sub_10002CDC0(v1 + 2, v10);
    log = (*(v11 + 8))(v10, v11);
    sub_10000C60C(v1 + 2);
  }

  v12 = v1[93];
  v13 = v1[92];
  v14 = v1[91];
  v212 = v1;
  v15 = v1[90];
  v16 = v1[84];
  v17 = v1[83];
  v18 = v212[70];
  v212[105] = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_askRequest;
  SFAirDropReceive.AskRequest.type.getter();
  v196 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v19 = *(v13 + 8);
  v212[106] = v19;
  v212[107] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v12, v14);
  v212[108] = *(v18 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_subject);
  CurrentValueSubject.value.getter();
  v194 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
  v20 = *(v16 + 8);
  v212[109] = v20;
  v212[110] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v204 = v20;
  v20(v15, v17);
  v191 = sub_100530DF8();
  SFAirDropReceive.AskRequest.type.getter();
  v21 = SFAirDrop.TransferType.isCustom.getter();
  v22 = v21 & 1;
  *(v212 + 1132) = v21 & 1;
  v19(v12, v14);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67110144;
    *(v25 + 4) = log & 1;
    *(v25 + 8) = 1024;
    *(v25 + 10) = v196 & 1;
    *(v25 + 14) = 1024;
    *(v25 + 16) = v194 & 1;
    *(v25 + 20) = 1024;
    *(v25 + 22) = v191;
    *(v25 + 26) = 1024;
    *(v25 + 28) = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "contentCanAutoAccept: %{BOOL}d isOnlyExchange: %{BOOL}d isPreviewSensitive: %{BOOL}d isDeviceLocked: %{BOOL}d isCustom: %{BOOL}d", v25, 0x20u);
  }

  v26 = v212[89];
  v27 = v212[83];
  v28 = v212[82];

  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v204(v26, v27);
  sub_100529D78(v28);
  v30 = v212[88];
  v31 = v212[83];
  v32 = v212[82];
  v33 = v212[81];
  v34 = v212[78];
  v35 = v212[77];
  v36 = *(v34 + 8);
  v212[111] = v36;
  v212[112] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v32, v35);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v204(v30, v31);
  v37 = SFAirDropReceive.AskRequest.canAutoAccept.getter();
  v36(v33, v35);
  v38 = v212[70];
  if (v37)
  {
    v39 = 0;
  }

  else
  {
    v39 = *(v38 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_delegateCanAutoAccept) ^ 1;
  }

  v40 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  v212[113] = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v38 + v40, (v212 + 12));
  v212[114] = sub_10028088C(&qword_1009892F0, &qword_1007F9888);
  sub_10028088C(&qword_100982588, &qword_100808FF0);
  if (swift_dynamicCast())
  {
    sub_1000121F8((v212 + 17), (v212 + 7));
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Content overrides canAutoAccept - checking...", v43, 2u);
    }

    v44 = v212[87];
    v45 = v212[83];

    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v204(v44, v45);
    v46 = swift_task_alloc();
    v212[115] = v46;
    *v46 = v212;
    v46[1] = sub_100507B40;
    v47 = v212[80];
    v48 = sub_10044F490;
    goto LABEL_19;
  }

  v212[21] = 0;
  *(v212 + 19) = 0u;
  *(v212 + 17) = 0u;
  sub_100005508((v212 + 17), &qword_100982590, &qword_100808FF8);
  if ((v190 | v39) & 1 | ((log & 1) == 0) | ((v196 | v194) | v191) & 1)
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Waiting for permission request task", v51, 2u);
    }

    v52 = v212[113];
    v53 = v212[71];
    v54 = v212[70];

    sub_1002A9938(v54 + v52, (v212 + 22));
    v55 = v212[25];
    v56 = v212[26];
    sub_10002CDC0(v212 + 22, v55);
    CurrentValueSubject.value.getter();
    v57 = *(v54 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
    v58 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation;
    v59 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
    v60 = *(v59 - 8);
    (*(v60 + 16))(v53, v57 + v58, v59);
    (*(v60 + 56))(v53, 0, 1, v59);
    v61 = swift_task_alloc();
    v212[117] = v61;
    *v61 = v212;
    v61[1] = sub_100509260;
    v62 = v212[86];
    v63 = v212[73];
    v64 = v212[71];

    return sub_100586750(v63, v62, v64, v55, v56);
  }

  v65 = (v212 + 37);
  v201 = v212[109];
  v66 = v212[102];
  v67 = v212[95];
  v208 = v212[94];
  v68 = v212[90];
  v69 = v212[83];
  v70 = v212[76];
  v71 = v212[75];
  v72 = v212[74];
  v73 = *(v71 + 104);
  v73(v70, enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:), v72);
  sub_100687AF8(v70, v68);
  v74 = *(v71 + 8);
  v75 = v72;
  v76 = v212;
  v74(v70, v75);
  v201(v68, v69);
  (*(v67 + 104))(v66, enum case for SFAirDropReceive.ItemDestination.default(_:), v208);
  *(v212 + 282) = 1;
  v212[126] = v73;
  v212[125] = v74;
  sub_1002A9938(v76[70] + v76[113], (v76 + 32));
  sub_10028088C(&qword_100982598, &qword_100809008);
  if (swift_dynamicCast())
  {
    v209 = v212[111];
    v77 = v212[109];
    v78 = v212[90];
    v79 = v212[83];
    v80 = v212[79];
    v202 = v212[102];
    v205 = v212[77];
    sub_1000121F8(v65, (v212 + 27));
    v81 = v212[30];
    v82 = v212[31];
    sub_10002CDC0(v212 + 27, v81);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v77(v78, v79);
    v83 = *(v82 + 8);
    v84 = v82;
    v76 = v212;
    v85 = v83(v202, v80, v81, v84);
    v209(v80, v205);
    sub_10000C60C(v212 + 27);
  }

  else
  {
    v212[41] = 0;
    *v65 = 0u;
    *(v212 + 39) = 0u;
    sub_100005508(v65, &qword_1009825A0, &qword_100809010);
    v85 = 0;
  }

  *(v76 + 1134) = v85 & 1;
  if (*(v76 + 1132) == 1)
  {
    v86 = v76[100];
    v87 = v76[95];
    v88 = v76[94];
    (*(v87 + 16))(v86, v76[102], v88);
    if ((*(v87 + 88))(v86, v88) != enum case for SFAirDropReceive.ItemDestination.metadata(_:))
    {
      v141 = v76[113];
      v142 = v76[100];
      v143 = v76[95];
      v144 = v76[94];
      v145 = v76[70];
      v146 = *(v143 + 8);
      v76[127] = v146;
      v76[128] = (v143 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v146(v142, v144);
      sub_1002A9938(v145 + v141, (v76 + 52));
      sub_10028088C(&qword_1009825A8, &qword_100809020);
      if (swift_dynamicCast())
      {
        v147 = v76[105];
        v148 = v76[70];
        sub_1000121F8((v76 + 57), (v76 + 47));
        v149 = swift_task_alloc();
        v76[129] = v149;
        *v149 = v76;
        v149[1] = sub_10050AAE0;
        v47 = v148 + v147;
        v48 = sub_10044F920;
LABEL_19:

        return v48(v47);
      }

      v76[61] = 0;
      *(v76 + 57) = 0u;
      *(v76 + 59) = 0u;
      sub_100005508((v76 + 57), &qword_1009825B0, &qword_100809028);
      v90 = 0;
      v91 = 0xF000000000000000;
LABEL_55:
      v168 = SFAirDropReceive.AskRequest.customPayload.getter();
      if (v169 >> 60 == 15)
      {
        v170 = Logger.logObject.getter();
        v171 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v170, v171))
        {
          v172 = "Failed to receive senderMetadata";
LABEL_60:
          v173 = swift_slowAlloc();
          *v173 = 0;
          _os_log_impl(&_mh_execute_header, v170, v171, v172, v173, 2u);
        }
      }

      else
      {
        sub_10028BCC0(v168, v169);
        v170 = Logger.logObject.getter();
        v171 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v170, v171))
        {
          v172 = "Receiver metadata was not found";
          goto LABEL_60;
        }
      }

      v174 = v76[102];
      v175 = v76[95];
      v176 = v76[94];

      v177 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v177 - 8) + 104))(v178, enum case for SFAirDropReceive.Failure.badRequest(_:), v177);
      swift_willThrow();
      sub_10028BCC0(v90, v91);
      (*(v175 + 8))(v174, v176);

      v140 = v76[1];
LABEL_9:

      return v140();
    }

    v89 = v76[100];
    (*(v76[95] + 96))(v89, v76[94]);
    v90 = *v89;
    v91 = v89[1];
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Retrieved receiverMetadata via destination", v94, 2u);
    }

    if (v91 >> 60 == 15)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v90 = 0;
    v91 = 0xF000000000000000;
  }

  v76[134] = v91;
  v76[133] = v90;
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = *(v76 + 1134);
    v98 = *(v76 + 282);
    v99 = swift_slowAlloc();
    *v99 = 67109376;
    *(v99 + 4) = v98;
    *(v99 + 8) = 1024;
    *(v99 + 10) = v97;
    _os_log_impl(&_mh_execute_header, v95, v96, "Ask request END - Accept {didAutoAccept: %{BOOL}d, shouldExtractMedia: %{BOOL}d}", v99, 0xEu);
  }

  v192 = v76[111];
  v100 = v76[109];
  loga = v76[106];
  v101 = v76[93];
  v197 = v76[91];
  v102 = v76;
  v103 = v76[90];
  v104 = v102[83];
  v105 = v102[79];
  v106 = v102[77];

  v203 = sub_10049F1E0();
  v206 = v107;
  v210 = v108;
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v100(v103, v104);
  SFAirDropReceive.AskRequest.type.getter();
  v192(v105, v106);
  v109 = SFAirDrop.TransferType.isFiles.getter();
  (loga)(v101, v197);
  if (v109 & 1) == 0 || (v110 = v102[111], v111 = v102[109], v112 = v102[90], v113 = v102[83], v114 = v102[79], v115 = v102[77], CurrentValueSubject.value.getter(), SFAirDropReceive.Transfer.askRequest.getter(), v111(v112, v113), v116 = SFAirDropReceive.AskRequest.senderIsMe.getter(), v110(v114, v115), (v116) || (v150 = v102[109], v151 = v102[90], v152 = v102[83], CurrentValueSubject.value.getter(), v153 = SFAirDropReceive.Transfer.isPreviewSensitive.getter(), v150(v151, v152), (v153 & 1) == 0) || v210 != 2 || (v154 = v102[99], v155 = v102[95], v156 = v102[94], (*(v155 + 104))(v154, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v156), sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination), v157 = dispatch thunk of static Equatable.== infix(_:_:)(), v158 = *(v155 + 8), v102[135] = v158, v102[136] = (v155 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v158(v154, v156), (v157))
  {
    v213 = *(v102[95] + 16);
    v213(v102[96], v102[102], v102[94]);
    swift_retain_n();
    sub_100530B64(v203, v206, v210);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    sub_1003C3F0C(v203, v206, v210);
    if (os_log_type_enabled(v117, v118))
    {
      v187 = v102[111];
      v119 = v102[109];
      v195 = v102[95];
      v188 = v102[94];
      v189 = v102[96];
      logb = v117;
      v120 = v102[90];
      v121 = v102[83];
      v122 = v102[79];
      v186 = v102[77];
      v123 = swift_slowAlloc();
      v214[0] = swift_slowAlloc();
      *v123 = 67109890;
      v193 = v118;
      CurrentValueSubject.value.getter();
      v124 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
      v119(v120, v121);
      *(v123 + 4) = v124 & 1;

      *(v123 + 8) = 1024;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v119(v120, v121);
      v125 = SFAirDropReceive.AskRequest.senderIsMe.getter();
      v187(v122, v186);
      *(v123 + 10) = v125 & 1;

      *(v123 + 14) = 2080;
      v126 = sub_100498E20(v203, v206, v210);
      v128 = v127;
      sub_1003C3F0C(v203, v206, v210);
      v129 = sub_10000C4E4(v126, v128, v214);

      *(v123 + 16) = v129;
      *(v123 + 24) = 2080;
      sub_100530ED4(&qword_100982570, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      v132 = v131;
      v133 = *(v195 + 8);
      v133(v189, v188);
      v134 = sub_10000C4E4(v130, v132, v214);

      *(v123 + 26) = v134;
      _os_log_impl(&_mh_execute_header, logb, v193, "Ask sensitive preview SKIP. {transfer.isPreviewSensitive: %{BOOL}d, isSenderMe: %{BOOL}d, userSafetyMode: %s, askStepDestination: %s}", v123, 0x22u);
      swift_arrayDestroy();
    }

    else
    {
      v135 = v102[96];
      v136 = v102[95];
      v137 = v102[94];
      sub_1003C3F0C(v203, v206, v210);

      v133 = *(v136 + 8);
      v133(v135, v137);
    }

    v138 = v102[102];
    v139 = v102[94];
    v213(v102[68], v138, v139);
    SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
    v133(v138, v139);

    v140 = v102[1];
    goto LABEL_9;
  }

  sub_1003C3F0C(v203, v206, 2u);
  v159 = Logger.logObject.getter();
  v160 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = swift_slowAlloc();
    *v161 = 0;
    _os_log_impl(&_mh_execute_header, v159, v160, "Ask sensitive preview START", v161, 2u);
  }

  v162 = v212;
  v163 = v212[113];
  v164 = v212[102];
  v165 = v212[85];
  v166 = v212[72];
  v167 = v212[70];

  sub_1002A9938(v167 + v163, (v212 + 42));
  sub_10002CDC0(v162 + 42, v162[45]);
  CurrentValueSubject.value.getter();
  sub_100589278(v165, v164, v166);
  v207 = v212[126];
  v211 = v212[125];
  v179 = v212[109];
  v180 = v212[90];
  v181 = v212[83];
  v182 = v212[76];
  v183 = v212[74];
  v184 = v212[72];
  v179(v162[85], v162[83]);
  sub_10000C60C(v212 + 42);
  v185 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v185 - 8) + 16))(v182, v184, v185);
  v207(v182, enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:), v183);
  sub_100687AF8(v182, v180);
  v211(v182, v183);
  v179(v180, v181);

  return _swift_task_switch(sub_10050B9E4, 0, 0);
}

uint64_t sub_100507B40(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1133) = a1;
  *(v4 + 928) = v1;

  v5 = *(v3 + 824);
  (*(v3 + 888))(*(v3 + 640), *(v3 + 616));
  if (v1)
  {
    v6 = sub_1005090B8;
  }

  else
  {
    v6 = sub_100507CD0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100507CD0(uint64_t a1)
{
  v168 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 1133);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Content overrides canAutoAccept - willAutoAccept = %{BOOL}d", v5, 8u);
  }

  v6 = *(v1 + 1133);

  sub_10000C60C((v1 + 56));
  if (v6 != 1)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Waiting for permission request task", v24, 2u);
    }

    v25 = *(v1 + 904);
    v26 = *(v1 + 568);
    v27 = *(v1 + 560);

    sub_1002A9938(v27 + v25, v1 + 176);
    v28 = *(v1 + 200);
    v29 = *(v1 + 208);
    sub_10002CDC0((v1 + 176), v28);
    CurrentValueSubject.value.getter();
    v30 = *(v27 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
    v31 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation;
    v32 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
    v33 = *(v32 - 8);
    (*(v33 + 16))(v26, v30 + v31, v32);
    (*(v33 + 56))(v26, 0, 1, v32);
    v34 = swift_task_alloc();
    *(v1 + 936) = v34;
    *v34 = v1;
    v34[1] = sub_100509260;
    v35 = *(v1 + 688);
    v36 = *(v1 + 584);
    v37 = *(v1 + 568);

    return sub_100586750(v36, v35, v37, v28, v29);
  }

  v146 = *(v1 + 928);
  v155 = *(v1 + 872);
  v7 = *(v1 + 760);
  v160 = *(v1 + 752);
  v164 = *(v1 + 816);
  v8 = *(v1 + 720);
  v9 = *(v1 + 664);
  v10 = *(v1 + 608);
  v11 = *(v1 + 600);
  v12 = *(v1 + 592);
  v13 = *(v11 + 104);
  v13(v10, enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:), v12);
  sub_100687AF8(v10, v8);
  v14 = *(v11 + 8);
  v14(v10, v12);
  v155(v8, v9);
  (*(v7 + 104))(v164, enum case for SFAirDropReceive.ItemDestination.default(_:), v160);
  *(v1 + 1128) = 1;
  *(v1 + 1008) = v13;
  *(v1 + 1000) = v14;
  sub_1002A9938(*(v1 + 560) + *(v1 + 904), v1 + 256);
  sub_10028088C(&qword_100982598, &qword_100809008);
  if (swift_dynamicCast())
  {
    v161 = *(v1 + 888);
    v15 = *(v1 + 872);
    v16 = *(v1 + 720);
    v17 = *(v1 + 664);
    v18 = *(v1 + 632);
    v156 = *(v1 + 816);
    v158 = *(v1 + 616);
    sub_1000121F8((v1 + 296), v1 + 216);
    v19 = *(v1 + 240);
    v20 = *(v1 + 248);
    sub_10002CDC0((v1 + 216), v19);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v15(v16, v17);
    v21 = (*(v20 + 8))(v156, v18, v19, v20);
    v161(v18, v158);
    sub_10000C60C((v1 + 216));
  }

  else
  {
    *(v1 + 328) = 0;
    *(v1 + 296) = 0u;
    *(v1 + 312) = 0u;
    sub_100005508(v1 + 296, &qword_1009825A0, &qword_100809010);
    v21 = 0;
  }

  *(v1 + 1134) = v21 & 1;
  if (*(v1 + 1132) != 1)
  {
    v43 = 0;
    v44 = 0xF000000000000000;
LABEL_19:
    v148 = v44;
    v149 = v43;
    *(v1 + 1072) = v44;
    *(v1 + 1064) = v43;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v1 + 1134);
      v51 = *(v1 + 1128);
      v52 = swift_slowAlloc();
      *v52 = 67109376;
      *(v52 + 4) = v51;
      *(v52 + 8) = 1024;
      *(v52 + 10) = v50;
      _os_log_impl(&_mh_execute_header, v48, v49, "Ask request END - Accept {didAutoAccept: %{BOOL}d, shouldExtractMedia: %{BOOL}d}", v52, 0xEu);
    }

    v150 = *(v1 + 888);
    v53 = *(v1 + 872);
    v154 = *(v1 + 848);
    v54 = *(v1 + 744);
    log = *(v1 + 728);
    v55 = *(v1 + 720);
    v56 = *(v1 + 664);
    v57 = *(v1 + 632);
    v58 = *(v1 + 616);

    v159 = sub_10049F1E0();
    v162 = v59;
    v165 = v60;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v53(v55, v56);
    SFAirDropReceive.AskRequest.type.getter();
    v150(v57, v58);
    v61 = SFAirDrop.TransferType.isFiles.getter();
    v154(v54, log);
    if (v61 & 1) == 0 || (v62 = *(v1 + 888), v63 = *(v1 + 872), v64 = *(v1 + 720), v65 = *(v1 + 664), v66 = *(v1 + 632), v67 = *(v1 + 616), CurrentValueSubject.value.getter(), SFAirDropReceive.Transfer.askRequest.getter(), v63(v64, v65), v68 = SFAirDropReceive.AskRequest.senderIsMe.getter(), v62(v66, v67), (v68) || (v102 = *(v1 + 872), v103 = *(v1 + 720), v104 = *(v1 + 664), CurrentValueSubject.value.getter(), v105 = SFAirDropReceive.Transfer.isPreviewSensitive.getter(), v102(v103, v104), (v105 & 1) == 0) || v165 != 2 || (v106 = *(v1 + 792), v107 = *(v1 + 760), v108 = *(v1 + 752), (*(v107 + 104))(v106, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v108), sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination), v109 = dispatch thunk of static Equatable.== infix(_:_:)(), v110 = *(v107 + 8), *(v1 + 1080) = v110, *(v1 + 1088) = (v107 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v110(v106, v108), (v109))
    {
      v157 = *(*(v1 + 760) + 16);
      v157(*(v1 + 768), *(v1 + 816), *(v1 + 752));
      swift_retain_n();
      sub_100530B64(v159, v162, v165);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      sub_1003C3F0C(v159, v162, v165);
      if (os_log_type_enabled(v69, v70))
      {
        v143 = *(v1 + 888);
        v71 = *(v1 + 872);
        v151 = *(v1 + 760);
        v144 = *(v1 + 752);
        v145 = *(v1 + 768);
        loga = v69;
        v72 = *(v1 + 720);
        v73 = *(v1 + 664);
        v74 = *(v1 + 632);
        v142 = *(v1 + 616);
        v75 = swift_slowAlloc();
        v167[0] = swift_slowAlloc();
        *v75 = 67109890;
        v147 = v70;
        CurrentValueSubject.value.getter();
        v76 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
        v71(v72, v73);
        *(v75 + 4) = v76 & 1;

        *(v75 + 8) = 1024;
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v71(v72, v73);
        v77 = SFAirDropReceive.AskRequest.senderIsMe.getter();
        v143(v74, v142);
        *(v75 + 10) = v77 & 1;

        *(v75 + 14) = 2080;
        v78 = sub_100498E20(v159, v162, v165);
        v80 = v79;
        sub_1003C3F0C(v159, v162, v165);
        v81 = sub_10000C4E4(v78, v80, v167);

        *(v75 + 16) = v81;
        *(v75 + 24) = 2080;
        sub_100530ED4(&qword_100982570, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
        v82 = dispatch thunk of CustomStringConvertible.description.getter();
        v84 = v83;
        v85 = *(v151 + 8);
        v85(v145, v144);
        v86 = sub_10000C4E4(v82, v84, v167);

        *(v75 + 26) = v86;
        _os_log_impl(&_mh_execute_header, loga, v147, "Ask sensitive preview SKIP. {transfer.isPreviewSensitive: %{BOOL}d, isSenderMe: %{BOOL}d, userSafetyMode: %s, askStepDestination: %s}", v75, 0x22u);
        swift_arrayDestroy();
      }

      else
      {
        v87 = *(v1 + 768);
        v88 = *(v1 + 760);
        v89 = *(v1 + 752);
        sub_1003C3F0C(v159, v162, v165);

        v85 = *(v88 + 8);
        v85(v87, v89);
      }

      v90 = *(v1 + 816);
      v91 = *(v1 + 752);
      v157(*(v1 + 544), v90, v91);
      SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
      v85(v90, v91);

      v92 = *(v1 + 8);
      goto LABEL_47;
    }

    sub_1003C3F0C(v159, v162, 2u);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "Ask sensitive preview START", v113, 2u);
    }

    v114 = *(v1 + 904);
    v115 = *(v1 + 816);
    v116 = *(v1 + 680);
    v117 = *(v1 + 576);
    v118 = *(v1 + 560);

    sub_1002A9938(v118 + v114, v1 + 336);
    sub_10002CDC0((v1 + 336), *(v1 + 360));
    CurrentValueSubject.value.getter();
    sub_100589278(v116, v115, v117);
    if (v146)
    {
      v119 = *(v1 + 872);
      v120 = *(v1 + 816);
      v121 = *(v1 + 752);
      v122 = *(v1 + 680);
      v123 = *(v1 + 664);
      sub_10028BCC0(v149, v148);
      v119(v122, v123);
      v110(v120, v121);
      sub_10000C60C((v1 + 336));
LABEL_46:

      v92 = *(v1 + 8);
LABEL_47:

      return v92();
    }

    v163 = *(v1 + 1008);
    v166 = *(v1 + 1000);
    v135 = *(v1 + 872);
    v136 = *(v1 + 720);
    v137 = *(v1 + 664);
    v138 = *(v1 + 608);
    v139 = *(v1 + 592);
    v140 = *(v1 + 576);
    v135(*(v1 + 680), v137);
    sub_10000C60C((v1 + 336));
    v141 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v141 - 8) + 16))(v138, v140, v141);
    v163(v138, enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:), v139);
    sub_100687AF8(v138, v136);
    v166(v138, v139);
    v135(v136, v137);

    return _swift_task_switch(sub_10050B9E4, 0, 0);
  }

  v39 = *(v1 + 800);
  v40 = *(v1 + 760);
  v41 = *(v1 + 752);
  (*(v40 + 16))(v39, *(v1 + 816), v41);
  if ((*(v40 + 88))(v39, v41) == enum case for SFAirDropReceive.ItemDestination.metadata(_:))
  {
    v42 = *(v1 + 800);
    (*(*(v1 + 760) + 96))(v42, *(v1 + 752));
    v43 = *v42;
    v44 = v42[1];
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Retrieved receiverMetadata via destination", v47, 2u);
    }

    if (v44 >> 60 == 15)
    {
LABEL_39:
      v124 = SFAirDropReceive.AskRequest.customPayload.getter();
      if (v125 >> 60 == 15)
      {
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = "Failed to receive senderMetadata";
LABEL_44:
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&_mh_execute_header, v126, v127, v128, v129, 2u);
        }
      }

      else
      {
        sub_10028BCC0(v124, v125);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = "Receiver metadata was not found";
          goto LABEL_44;
        }
      }

      v130 = *(v1 + 816);
      v131 = *(v1 + 760);
      v132 = *(v1 + 752);

      v133 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v133 - 8) + 104))(v134, enum case for SFAirDropReceive.Failure.badRequest(_:), v133);
      swift_willThrow();
      sub_10028BCC0(v43, v44);
      (*(v131 + 8))(v130, v132);
      goto LABEL_46;
    }

    goto LABEL_19;
  }

  v93 = *(v1 + 904);
  v94 = *(v1 + 800);
  v95 = *(v1 + 760);
  v96 = *(v1 + 752);
  v97 = *(v1 + 560);
  v98 = *(v95 + 8);
  *(v1 + 1016) = v98;
  *(v1 + 1024) = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v98(v94, v96);
  sub_1002A9938(v97 + v93, v1 + 416);
  sub_10028088C(&qword_1009825A8, &qword_100809020);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v1 + 488) = 0;
    *(v1 + 456) = 0u;
    *(v1 + 472) = 0u;
    sub_100005508(v1 + 456, &qword_1009825B0, &qword_100809028);
    v43 = 0;
    v44 = 0xF000000000000000;
    goto LABEL_39;
  }

  v99 = *(v1 + 840);
  v100 = *(v1 + 560);
  sub_1000121F8((v1 + 456), v1 + 376);
  v101 = swift_task_alloc();
  *(v1 + 1032) = v101;
  *v101 = v1;
  v101[1] = sub_10050AAE0;

  return sub_10044F920(v100 + v99);
}

uint64_t sub_1005090B8()
{
  sub_10000C60C((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100509260()
{
  v2 = *v1;
  (*v1)[118] = v0;

  v3 = v2[109];
  v4 = v2[103];
  v5 = v2[86];
  v6 = v2[83];
  sub_100005508(v2[71], &qword_100976928, &qword_1007F98A8);
  v3(v5, v6);
  if (v0)
  {
    v7 = sub_10050C20C;
  }

  else
  {
    v7 = sub_100509424;
  }

  return _swift_task_switch(v7, v4, 0);
}

uint64_t sub_100509424()
{
  v1 = v0[109];
  v2 = v0[90];
  v3 = v0[83];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  sub_10000C60C(v0 + 22);
  v8 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v8 - 8) + 16))(v4, v7, v8);
  v9 = enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:);
  v10 = *(v5 + 104);
  v0[119] = v10;
  v10(v4, v9, v6);
  sub_100687AF8(v4, v2);
  v11 = *(v5 + 8);
  v0[120] = v11;
  v11(v4, v6);
  v1(v2, v3);

  return _swift_task_switch(sub_100509578, 0, 0);
}

uint64_t sub_100509578()
{
  v1 = v0[73];
  v2 = swift_task_alloc();
  v0[121] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[122] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[123] = v4;
  *v4 = v0;
  v4[1] = sub_100509680;
  v5 = v0[101];
  v6 = v0[94];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_100809000, v2, sub_1002E3960, v3, 0, 0, v6);
}

uint64_t sub_100509680()
{
  v2 = *v1;
  *(*v1 + 992) = v0;

  if (v0)
  {
    v3 = sub_10050A8B0;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 824);

    v3 = sub_1005097B4;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1005097B4()
{
  v141 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 760);
  v4 = *(v0 + 752);
  sub_100005508(*(v0 + 584), &qword_100976908, &unk_100801D60);
  (*(v3 + 32))(v1, v2, v4);
  v122 = *(v0 + 992);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);
  *(v0 + 1128) = 0;
  *(v0 + 1008) = v6;
  *(v0 + 1000) = v5;
  sub_1002A9938(*(v0 + 560) + *(v0 + 904), v0 + 256);
  sub_10028088C(&qword_100982598, &qword_100809008);
  if (swift_dynamicCast())
  {
    v135 = *(v0 + 888);
    v7 = *(v0 + 872);
    v8 = *(v0 + 720);
    v9 = *(v0 + 664);
    v10 = *(v0 + 632);
    v131 = *(v0 + 816);
    v133 = *(v0 + 616);
    sub_1000121F8((v0 + 296), v0 + 216);
    v11 = *(v0 + 240);
    v12 = *(v0 + 248);
    sub_10002CDC0((v0 + 216), v11);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v7(v8, v9);
    v13 = (*(v12 + 8))(v131, v10, v11, v12);
    v135(v10, v133);
    sub_10000C60C((v0 + 216));
  }

  else
  {
    *(v0 + 328) = 0;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    sub_100005508(v0 + 296, &qword_1009825A0, &qword_100809010);
    v13 = 0;
  }

  *(v0 + 1134) = v13 & 1;
  if (*(v0 + 1132) != 1)
  {
    v22 = 0;
    v23 = 0xF000000000000000;
LABEL_11:
    v124 = v23;
    v125 = v22;
    *(v0 + 1072) = v23;
    *(v0 + 1064) = v22;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 1134);
      v30 = *(v0 + 1128);
      v31 = swift_slowAlloc();
      *v31 = 67109376;
      *(v31 + 4) = v30;
      *(v31 + 8) = 1024;
      *(v31 + 10) = v29;
      _os_log_impl(&_mh_execute_header, v27, v28, "Ask request END - Accept {didAutoAccept: %{BOOL}d, shouldExtractMedia: %{BOOL}d}", v31, 0xEu);
    }

    v126 = *(v0 + 888);
    v32 = *(v0 + 872);
    v130 = *(v0 + 848);
    v33 = *(v0 + 744);
    log = *(v0 + 728);
    v34 = *(v0 + 720);
    v35 = *(v0 + 664);
    v36 = *(v0 + 632);
    v37 = *(v0 + 616);

    v134 = sub_10049F1E0();
    v136 = v38;
    v138 = v39;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v32(v34, v35);
    SFAirDropReceive.AskRequest.type.getter();
    v126(v36, v37);
    v40 = SFAirDrop.TransferType.isFiles.getter();
    v130(v33, log);
    if (v40 & 1) == 0 || (v41 = *(v0 + 888), v42 = *(v0 + 872), v43 = *(v0 + 720), v44 = *(v0 + 664), v45 = *(v0 + 632), v46 = *(v0 + 616), CurrentValueSubject.value.getter(), SFAirDropReceive.Transfer.askRequest.getter(), v42(v43, v44), v47 = SFAirDropReceive.AskRequest.senderIsMe.getter(), v41(v45, v46), (v47) || (v78 = *(v0 + 872), v79 = *(v0 + 720), v80 = *(v0 + 664), CurrentValueSubject.value.getter(), v81 = SFAirDropReceive.Transfer.isPreviewSensitive.getter(), v78(v79, v80), (v81 & 1) == 0) || v138 != 2 || (v82 = *(v0 + 792), v83 = *(v0 + 760), v84 = *(v0 + 752), (*(v83 + 104))(v82, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v84), sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination), v85 = dispatch thunk of static Equatable.== infix(_:_:)(), v86 = *(v83 + 8), *(v0 + 1080) = v86, *(v0 + 1088) = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v86(v82, v84), (v85))
    {
      v132 = *(*(v0 + 760) + 16);
      v132(*(v0 + 768), *(v0 + 816), *(v0 + 752));
      swift_retain_n();
      sub_100530B64(v134, v136, v138);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      sub_1003C3F0C(v134, v136, v138);
      if (os_log_type_enabled(v48, v49))
      {
        v119 = *(v0 + 888);
        v50 = *(v0 + 872);
        v127 = *(v0 + 760);
        v120 = *(v0 + 752);
        v121 = *(v0 + 768);
        loga = v48;
        v51 = *(v0 + 720);
        v52 = *(v0 + 664);
        v53 = *(v0 + 632);
        v118 = *(v0 + 616);
        v54 = swift_slowAlloc();
        v140[0] = swift_slowAlloc();
        *v54 = 67109890;
        v123 = v49;
        CurrentValueSubject.value.getter();
        v55 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
        v50(v51, v52);
        *(v54 + 4) = v55 & 1;

        *(v54 + 8) = 1024;
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v50(v51, v52);
        v56 = SFAirDropReceive.AskRequest.senderIsMe.getter();
        v119(v53, v118);
        *(v54 + 10) = v56 & 1;

        *(v54 + 14) = 2080;
        v57 = sub_100498E20(v134, v136, v138);
        v59 = v58;
        sub_1003C3F0C(v134, v136, v138);
        v60 = sub_10000C4E4(v57, v59, v140);

        *(v54 + 16) = v60;
        *(v54 + 24) = 2080;
        sub_100530ED4(&qword_100982570, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        v64 = *(v127 + 8);
        v64(v121, v120);
        v65 = sub_10000C4E4(v61, v63, v140);

        *(v54 + 26) = v65;
        _os_log_impl(&_mh_execute_header, loga, v123, "Ask sensitive preview SKIP. {transfer.isPreviewSensitive: %{BOOL}d, isSenderMe: %{BOOL}d, userSafetyMode: %s, askStepDestination: %s}", v54, 0x22u);
        swift_arrayDestroy();
      }

      else
      {
        v66 = *(v0 + 768);
        v67 = *(v0 + 760);
        v68 = *(v0 + 752);
        sub_1003C3F0C(v134, v136, v138);

        v64 = *(v67 + 8);
        v64(v66, v68);
      }

      v69 = *(v0 + 816);
      v70 = *(v0 + 752);
      v132(*(v0 + 544), v69, v70);
      SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
      v64(v69, v70);

      v71 = *(v0 + 8);
      goto LABEL_39;
    }

    sub_1003C3F0C(v134, v136, 2u);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Ask sensitive preview START", v89, 2u);
    }

    v90 = *(v0 + 904);
    v91 = *(v0 + 816);
    v92 = *(v0 + 680);
    v93 = *(v0 + 576);
    v94 = *(v0 + 560);

    sub_1002A9938(v94 + v90, v0 + 336);
    sub_10002CDC0((v0 + 336), *(v0 + 360));
    CurrentValueSubject.value.getter();
    sub_100589278(v92, v91, v93);
    if (v122)
    {
      v95 = *(v0 + 872);
      v96 = *(v0 + 816);
      v97 = *(v0 + 752);
      v98 = *(v0 + 680);
      v99 = *(v0 + 664);
      sub_10028BCC0(v125, v124);
      v95(v98, v99);
      v86(v96, v97);
      sub_10000C60C((v0 + 336));
LABEL_38:

      v71 = *(v0 + 8);
LABEL_39:

      return v71();
    }

    v137 = *(v0 + 1008);
    v139 = *(v0 + 1000);
    v111 = *(v0 + 872);
    v112 = *(v0 + 720);
    v113 = *(v0 + 664);
    v114 = *(v0 + 608);
    v115 = *(v0 + 592);
    v116 = *(v0 + 576);
    v111(*(v0 + 680), v113);
    sub_10000C60C((v0 + 336));
    v117 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v117 - 8) + 16))(v114, v116, v117);
    v137(v114, enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:), v115);
    sub_100687AF8(v114, v112);
    v139(v114, v115);
    v111(v112, v113);

    return _swift_task_switch(sub_10050B9E4, 0, 0);
  }

  v14 = *(v0 + 800);
  v15 = *(v0 + 760);
  v16 = *(v0 + 752);
  (*(v15 + 16))(v14, *(v0 + 816), v16);
  v17 = (*(v15 + 88))(v14, v16);
  v18 = *(v0 + 800);
  v19 = *(v0 + 760);
  v20 = *(v0 + 752);
  v21 = *(v0 + 560);
  if (v17 == enum case for SFAirDropReceive.ItemDestination.metadata(_:))
  {
    (*(v19 + 96))(*(v0 + 800), v20);
    v22 = *v18;
    v23 = v18[1];
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Retrieved receiverMetadata via destination", v26, 2u);
    }

    if (v23 >> 60 == 15)
    {
LABEL_31:
      v100 = SFAirDropReceive.AskRequest.customPayload.getter();
      if (v101 >> 60 == 15)
      {
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = "Failed to receive senderMetadata";
LABEL_36:
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&_mh_execute_header, v102, v103, v104, v105, 2u);
        }
      }

      else
      {
        sub_10028BCC0(v100, v101);
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = "Receiver metadata was not found";
          goto LABEL_36;
        }
      }

      v106 = *(v0 + 816);
      v107 = *(v0 + 760);
      v108 = *(v0 + 752);

      v109 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v109 - 8) + 104))(v110, enum case for SFAirDropReceive.Failure.badRequest(_:), v109);
      swift_willThrow();
      sub_10028BCC0(v22, v23);
      (*(v107 + 8))(v106, v108);
      goto LABEL_38;
    }

    goto LABEL_11;
  }

  v72 = *(v0 + 904);
  v73 = *(v19 + 8);
  *(v0 + 1016) = v73;
  *(v0 + 1024) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v73(v18, v20);
  sub_1002A9938(v21 + v72, v0 + 416);
  sub_10028088C(&qword_1009825A8, &qword_100809020);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 488) = 0;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    sub_100005508(v0 + 456, &qword_1009825B0, &qword_100809028);
    v22 = 0;
    v23 = 0xF000000000000000;
    goto LABEL_31;
  }

  v74 = *(v0 + 840);
  v75 = *(v0 + 560);
  sub_1000121F8((v0 + 456), v0 + 376);
  v76 = swift_task_alloc();
  *(v0 + 1032) = v76;
  *v76 = v0;
  v76[1] = sub_10050AAE0;

  return sub_10044F920(v75 + v74);
}

uint64_t sub_10050A8B0()
{
  v1 = *(v0 + 824);

  return _swift_task_switch(sub_10050A928, v1, 0);
}

uint64_t sub_10050A928()
{
  sub_100005508(*(v0 + 584), &qword_100976908, &unk_100801D60);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10050AAE0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[130] = a1;
  v5[131] = a2;
  v5[132] = v2;

  v6 = v4[103];
  if (v2)
  {
    v7 = sub_10050B828;
  }

  else
  {
    v7 = sub_10050AC1C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10050AC1C(uint64_t a1)
{
  v103 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieved receiverMetadata via content handler", v4, 2u);
  }

  sub_10000C60C((v1 + 376));
  v5 = *(v1 + 1056);
  v6 = *(v1 + 1040);
  v89 = *(v1 + 1048);
  *(v1 + 1072) = v89;
  v86 = v5;
  v88 = v6;
  *(v1 + 1064) = v6;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 1134);
    v10 = *(v1 + 1128);
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = v10;
    *(v11 + 8) = 1024;
    *(v11 + 10) = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Ask request END - Accept {didAutoAccept: %{BOOL}d, shouldExtractMedia: %{BOOL}d}", v11, 0xEu);
  }

  v90 = *(v1 + 888);
  v12 = *(v1 + 872);
  v94 = *(v1 + 848);
  v13 = *(v1 + 744);
  log = *(v1 + 728);
  v14 = *(v1 + 720);
  v15 = *(v1 + 664);
  v16 = *(v1 + 632);
  v17 = *(v1 + 616);

  v97 = sub_10049F1E0();
  v19 = v18;
  v99 = v20;
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v12(v14, v15);
  SFAirDropReceive.AskRequest.type.getter();
  v90(v16, v17);
  v21 = SFAirDrop.TransferType.isFiles.getter();
  v94(v13, log);
  v96 = v19;
  if (v21 & 1) == 0 || (v22 = *(v1 + 888), v23 = *(v1 + 872), v24 = *(v1 + 720), v25 = *(v1 + 664), v26 = *(v1 + 632), v27 = *(v1 + 616), CurrentValueSubject.value.getter(), SFAirDropReceive.Transfer.askRequest.getter(), v23(v24, v25), v28 = SFAirDropReceive.AskRequest.senderIsMe.getter(), v22(v26, v27), v19 = v96, (v28) || (v54 = *(v1 + 872), v55 = *(v1 + 720), v56 = *(v1 + 664), CurrentValueSubject.value.getter(), v57 = SFAirDropReceive.Transfer.isPreviewSensitive.getter(), v54(v55, v56), v19 = v96, (v57 & 1) == 0) || v99 != 2 || (v58 = *(v1 + 792), v59 = *(v1 + 760), v60 = *(v1 + 752), (*(v59 + 104))(v58, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v60), sub_100530ED4(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination), v61 = dispatch thunk of static Equatable.== infix(_:_:)(), v62 = *(v59 + 8), *(v1 + 1080) = v62, *(v1 + 1088) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v62(v58, v60), (v61))
  {
    v95 = *(*(v1 + 760) + 16);
    v95(*(v1 + 768), *(v1 + 816), *(v1 + 752));
    swift_retain_n();
    sub_100530B64(v97, v19, v99);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    sub_1003C3F0C(v97, v19, v99);
    if (os_log_type_enabled(v29, v30))
    {
      v83 = *(v1 + 888);
      v31 = *(v1 + 872);
      v91 = *(v1 + 760);
      v84 = *(v1 + 752);
      v85 = *(v1 + 768);
      loga = v29;
      v32 = *(v1 + 720);
      v33 = *(v1 + 664);
      v34 = *(v1 + 632);
      v82 = *(v1 + 616);
      v35 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      *v35 = 67109890;
      v87 = v30;
      CurrentValueSubject.value.getter();
      v36 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
      v31(v32, v33);
      *(v35 + 4) = v36 & 1;

      *(v35 + 8) = 1024;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v31(v32, v33);
      v37 = SFAirDropReceive.AskRequest.senderIsMe.getter();
      v83(v34, v82);
      *(v35 + 10) = v37 & 1;

      *(v35 + 14) = 2080;
      v38 = sub_100498E20(v97, v96, v99);
      v40 = v39;
      sub_1003C3F0C(v97, v96, v99);
      v41 = sub_10000C4E4(v38, v40, v102);

      *(v35 + 16) = v41;
      *(v35 + 24) = 2080;
      sub_100530ED4(&qword_100982570, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v45 = *(v91 + 8);
      v45(v85, v84);
      v46 = sub_10000C4E4(v42, v44, v102);

      *(v35 + 26) = v46;
      _os_log_impl(&_mh_execute_header, loga, v87, "Ask sensitive preview SKIP. {transfer.isPreviewSensitive: %{BOOL}d, isSenderMe: %{BOOL}d, userSafetyMode: %s, askStepDestination: %s}", v35, 0x22u);
      swift_arrayDestroy();
    }

    else
    {
      v47 = *(v1 + 768);
      v48 = *(v1 + 760);
      v49 = *(v1 + 752);
      sub_1003C3F0C(v97, v19, v99);

      v45 = *(v48 + 8);
      v45(v47, v49);
    }

    v50 = *(v1 + 816);
    v51 = *(v1 + 752);
    v95(*(v1 + 544), v50, v51);
    SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
    v45(v50, v51);

    v52 = *(v1 + 8);
    goto LABEL_11;
  }

  sub_1003C3F0C(v97, v96, 2u);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Ask sensitive preview START", v65, 2u);
  }

  v66 = *(v1 + 904);
  v100 = *(v1 + 816);
  v67 = *(v1 + 680);
  v68 = *(v1 + 576);
  v69 = *(v1 + 560);

  sub_1002A9938(v69 + v66, v1 + 336);
  sub_10002CDC0((v1 + 336), *(v1 + 360));
  CurrentValueSubject.value.getter();
  sub_100589278(v67, v100, v68);
  if (v86)
  {
    v70 = *(v1 + 872);
    v71 = *(v1 + 816);
    v72 = *(v1 + 752);
    v73 = *(v1 + 680);
    v74 = *(v1 + 664);
    sub_10028BCC0(v88, v89);
    v70(v73, v74);
    v62(v71, v72);
    sub_10000C60C((v1 + 336));

    v52 = *(v1 + 8);
LABEL_11:

    return v52();
  }

  v98 = *(v1 + 1008);
  v101 = *(v1 + 1000);
  v75 = *(v1 + 872);
  v76 = *(v1 + 720);
  v77 = *(v1 + 664);
  v78 = *(v1 + 608);
  v79 = *(v1 + 592);
  v80 = *(v1 + 576);
  v75(*(v1 + 680), v77);
  sub_10000C60C((v1 + 336));
  v81 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v81 - 8) + 16))(v78, v80, v81);
  v98(v78, enum case for SFAirDropReceive.Transfer.State.waitingForSensitivePreviewIntervention(_:), v79);
  sub_100687AF8(v78, v76);
  v101(v78, v79);
  v75(v76, v77);

  return _swift_task_switch(sub_10050B9E4, 0, 0);
}

uint64_t sub_10050B828()
{
  (*(v0 + 1016))(*(v0 + 816), *(v0 + 752));
  sub_10000C60C((v0 + 376));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10050B9E4()
{
  v1 = v0[72];
  v2 = swift_task_alloc();
  v0[137] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[138] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[139] = v4;
  *v4 = v0;
  v4[1] = sub_10050BAEC;
  v5 = v0[98];
  v6 = v0[94];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_100809018, v2, sub_1002E3960, v3, 0, 0, v6);
}

uint64_t sub_10050BAEC()
{
  v2 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v3 = sub_10050BFB0;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 824);

    v3 = sub_10050BC20;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10050BC20()
{
  v26 = v0;
  v1 = *(v0[95] + 16);
  v1(v0[97], v0[98], v0[94]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[135];
  if (v4)
  {
    v6 = v0[99];
    v7 = v0[97];
    v8 = v0[94];
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v9 = 136315138;
    v1(v6, v7, v8);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    v5(v7, v8);
    v13 = sub_10000C4E4(v10, v12, &v25);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ask sensitive preview END. Accepting transfer for sensitive content {destination: %s}", v9, 0xCu);
    sub_10000C60C(v23);
  }

  else
  {
    v14 = v0[97];
    v15 = v0[94];

    v5(v14, v15);
  }

  v16 = v1;
  v17 = v0[135];
  v18 = v0[102];
  v19 = v0[98];
  v20 = v0[94];
  v24 = v0[72];
  v16(v0[68], v19, v20);
  SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
  v17(v19, v20);
  v17(v18, v20);
  sub_100005508(v24, &qword_100976908, &unk_100801D60);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10050BFB0()
{
  v1 = *(v0 + 824);

  return _swift_task_switch(sub_10050C028, v1, 0);
}

uint64_t sub_10050C028()
{
  v1 = v0[135];
  v2 = v0[102];
  v3 = v0[94];
  v4 = v0[72];
  sub_10028BCC0(v0[133], v0[134]);
  v1(v2, v3);
  sub_100005508(v4, &qword_100976908, &unk_100801D60);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10050C20C()
{
  sub_10000C60C((v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10050C3B4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_10050C4B4, v5, 0);
}

uint64_t sub_10050C4B4()
{
  v1 = v0[4];
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v0[9] = *(v1 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10050C57C;
  v3 = v0[3];

  return sub_100641BA8(v3);
}

uint64_t sub_10050C57C()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_10050C68C, v1, 0);
}

uint64_t sub_10050C68C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  v4 = swift_allocError();
  v0[11] = v4;
  (*(v2 + 16))(v5, v1, v3);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_10050C79C;

  return sub_100641284(v4);
}

uint64_t sub_10050C79C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *v0;

  v4 = *(_s6RunnerC19PreAcceptRunResultsVMa(0) + 20);
  v5 = swift_task_alloc();
  *(v1 + 104) = v5;
  *v5 = v3;
  v5[1] = sub_10050C93C;
  v6 = *(v1 + 56);

  return sub_10068E200(v2 + v4, v6);
}

uint64_t sub_10050C93C()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_10050CA4C, v1, 0);
}

uint64_t sub_10050CA4C()
{
  v1 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v2 = enum case for SFAirDropReceive.AskResponse.error(_:);
  v3 = type metadata accessor for SFAirDropReceive.AskResponse();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10050CB1C(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  sub_10028088C(&unk_1009892C0, &qword_10080F030);
  v3[22] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3[26] = swift_task_alloc();
  sub_10028088C(&unk_1009892D0, &qword_1007F9870);
  v3[27] = swift_task_alloc();
  sub_10028088C(&qword_100982508, &unk_100808D50);
  v3[28] = swift_task_alloc();
  sub_10028088C(&qword_10097B1C0, &qword_1007FE4C8);
  v3[29] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskResponse();
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v3[38] = static AirDropActor.shared;

  return _swift_task_switch(sub_10050CE60, v8, 0);
}

uint64_t sub_10050CE60()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v2 + 16))(v1, v0[17], v3);
  if ((*(v2 + 88))(v1, v3) == enum case for SFAirDropReceive.AskResponse.accept(_:))
  {
    v4 = v0[37];
    v5 = v0[33];
    v6 = v0[34];
    v7 = v0[32];
    (*(v0[31] + 96))(v7, v0[30]);
    v8 = *(sub_10028088C(&qword_1009765E8, &qword_100808D60) + 48);
    (*(v6 + 32))(v4, v7, v5);
    v9 = type metadata accessor for SFAirDropReceive.AcceptContext();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
    v10 = swift_task_alloc();
    v0[39] = v10;
    *v10 = v0;
    v10[1] = sub_10050D2A0;
    v11 = v0[29];

    return sub_10050EF78(v11);
  }

  else
  {
    v13 = v0[31];
    v14 = type metadata accessor for SFError();
    sub_100530ED4(&qword_100976248, &type metadata accessor for SFError, &protocol conformance descriptor for SFError);
    v15 = swift_allocError();
    v17 = v16;
    _StringGuts.grow(_:)(60);
    v18._object = 0x80000001007949C0;
    v18._countAndFlagsBits = 0xD000000000000039;
    String.append(_:)(v18);
    sub_100530ED4(&qword_100982510, &type metadata accessor for SFAirDropReceive.AskResponse, &protocol conformance descriptor for SFAirDropReceive.AskResponse);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 125;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    v17[2] = 0xD00000000000006ALL;
    v17[3] = 0x8000000100794A00;
    v17[4] = 97;
    (*(*(v14 - 8) + 104))(v17, enum case for SFError.unexpected(_:), v14);
    swift_willThrow();
    v21 = *(v13 + 8);
    v22 = v0[32];
    v23 = v0[30];
    v0[58] = v15;
    v25 = v0[20];
    v24 = v0[21];
    v26 = v0[19];
    v21(v22, v23);
    swift_errorRetain();
    SFAirDropReceive.Failure.init(_:)();
    sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    v27 = swift_allocError();
    v0[59] = v27;
    (*(v25 + 16))(v28, v24, v26);
    v29 = swift_task_alloc();
    v0[60] = v29;
    *v29 = v0;
    v29[1] = sub_10050E2BC;

    return sub_100641284(v27);
  }
}

uint64_t sub_10050D2A0()
{
  v2 = *v1;
  v2[40] = v0;

  if (v0)
  {
    v3 = v2[38];

    return _swift_task_switch(sub_10050E670, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[41] = v4;
    *v4 = v2;
    v4[1] = sub_10050D414;
    v5 = v2[37];

    return sub_100510A44(v5);
  }
}

uint64_t sub_10050D414(uint64_t a1, double a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 336) = a1;
  *(v5 + 344) = a2;
  *(v5 + 352) = v2;

  v6 = *(v4 + 304);
  if (v2)
  {
    v7 = sub_10050E7C4;
  }

  else
  {
    v7 = sub_10050D550;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10050D550(uint64_t a1, uint64_t a2)
{
  sub_10068EB40(a1, a2);
  _s6RunnerC19PreAcceptRunResultsVMa(0);
  v3 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
  v4 = swift_task_alloc();
  v2[45] = v4;
  *v4 = v2;
  v4[1] = sub_10050D610;
  v5 = v2[42];
  v6 = v2[36];
  v7 = v2[37];

  return sub_100513FD0(v6, v5, v7, v3 & 1);
}

uint64_t sub_10050D610(char a1)
{
  v3 = *v2;
  *(v3 + 496) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = *(v3 + 304);

    return _swift_task_switch(sub_10050E934, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v3 + 376) = v5;
    *v5 = v3;
    v5[1] = sub_10050D798;
    v6 = *(v3 + 288);
    v7 = *(v3 + 336);

    return sub_100688640(v7, v6);
  }
}

uint64_t sub_10050D798(uint64_t a1, double a2)
{
  v6 = *v3;
  v7 = *v3;
  *(v6 + 384) = a1;
  *(v6 + 392) = v2;

  if (v2)
  {
    v8 = *(v6 + 304);

    return _swift_task_switch(sub_10050EAA4, v8, 0);
  }

  else
  {
    v9 = *(v6 + 344) + a2;
    v10 = swift_task_alloc();
    *(v6 + 400) = v10;
    *v10 = v7;
    v10[1] = sub_10050D954;
    v11 = *(v6 + 496);
    v12 = *(v6 + 336);
    v13 = *(v6 + 280);
    v14 = *(v6 + 288);
    v15 = *(v6 + 224);

    return sub_100517478(v13, v15, v11, v12, a1, v14, v9);
  }
}

uint64_t sub_10050D954(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[51] = a2;
  v4[52] = v2;

  if (v2)
  {
    v5 = v4[38];

    return _swift_task_switch(sub_10050EC30, v5, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[53] = v6;
    *v6 = v4;
    v6[1] = sub_10050DAE0;
    v7 = v4[29];
    v8 = v4[28];

    return sub_10051CA68(v8, v7);
  }
}

uint64_t sub_10050DAE0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 432) = v2;

  if (v2)
  {
    v7 = v6[38];

    v8 = sub_10050EDBC;
    v9 = v7;
  }

  else
  {
    v9 = v6[38];
    v6[55] = a2;
    v6[56] = a1;
    v8 = sub_10050DC34;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10050DC34()
{
  v28 = v0[55];
  v29 = v0[56];
  v31 = v0[51];
  v27 = v0[48];
  v25 = v0[42];
  v1 = v0[35];
  v34 = v0[34];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v24 = v0[24];
  v26 = v0[23];
  v32 = v0[22];
  v33 = v0[33];
  v5 = v0[18];
  v30 = v0[16];
  v6 = enum case for SFAirDropReceive.Transfer.Metrics.TransferResult.success(_:);
  v7 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_metrics;
  swift_beginAccess();
  SFAirDropReceive.Transfer.Metrics.result.setter();
  swift_endAccess();
  static Date.now.getter();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  swift_beginAccess();
  SFAirDropReceive.Transfer.Metrics.endDate.setter();
  swift_endAccess();
  v11 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
  v12 = v11[12];
  v13 = (v4 + v11[16]);
  v14 = v11[20];
  v22 = v11[24];
  v15 = v11[28];
  v16 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v16 - 8) + 16))(v4, v5 + v9, v16);
  v23 = *(v34 + 16);
  v23(v4 + v12, v1, v33);
  *v13 = v29;
  v13[1] = v28;
  *(v4 + v14) = v25;
  *(v4 + v22) = v27;
  *(v4 + v15) = v31;
  (*(v24 + 104))(v4, enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:), v26);
  sub_100687AF8(v4, v30);
  (*(v24 + 8))(v4, v26);
  v17 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v5 + v17, (v0 + 2));
  v18 = v0[5];
  v19 = v0[6];
  sub_10002CDC0(v0 + 2, v18);
  v23(v32, v1, v33);
  (*(v34 + 56))(v32, 0, 1, v33);
  (*(v19 + 96))(v30, 1, v32, v18, v19);
  sub_100005508(v32, &unk_1009892C0, &qword_10080F030);
  sub_10000C60C(v0 + 2);
  v20 = swift_task_alloc();
  v0[57] = v20;
  *v20 = v0;
  v20[1] = sub_10050E044;

  return sub_100641284(0);
}

uint64_t sub_10050E044()
{
  v1 = *(*v0 + 304);

  return _swift_task_switch(sub_10050E154, v1, 0);
}

uint64_t sub_10050E154()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v6 = v0[29];
  sub_100005508(v0[28], &qword_100982508, &unk_100808D50);
  v7 = *(v4 + 8);
  v7(v3, v5);
  v7(v1, v5);
  sub_100005508(v6, &qword_10097B1C0, &qword_1007FE4C8);
  v7(v2, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10050E2BC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[61] = v3;
  *v3 = v2;
  v3[1] = sub_10050E44C;
  v4 = v1[21];
  v5 = v1[16];

  return sub_10068E200(v5, v4);
}

uint64_t sub_10050E44C()
{
  v1 = *(*v0 + 304);

  return _swift_task_switch(sub_10050E55C, v1, 0);
}

uint64_t sub_10050E55C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10050E670()
{
  v1 = v0[33];
  v2 = *(v0[34] + 8);
  v3 = v0[37];
  v0[58] = v0[40];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v2(v3, v1);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  v7 = swift_allocError();
  v0[59] = v7;
  (*(v5 + 16))(v8, v4, v6);
  v9 = swift_task_alloc();
  v0[60] = v9;
  *v9 = v0;
  v9[1] = sub_10050E2BC;

  return sub_100641284(v7);
}

uint64_t sub_10050E7C4()
{
  v1 = v0[34];
  sub_100005508(v0[29], &qword_10097B1C0, &qword_1007FE4C8);
  v2 = *(v1 + 8);
  v3 = v0[37];
  v4 = v0[33];
  v0[58] = v0[44];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v2(v3, v4);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  v8 = swift_allocError();
  v0[59] = v8;
  (*(v6 + 16))(v9, v5, v7);
  v10 = swift_task_alloc();
  v0[60] = v10;
  *v10 = v0;
  v10[1] = sub_10050E2BC;

  return sub_100641284(v8);
}

uint64_t sub_10050E934()
{
  v1 = v0[34];
  sub_100005508(v0[29], &qword_10097B1C0, &qword_1007FE4C8);
  v2 = *(v1 + 8);
  v3 = v0[37];
  v4 = v0[33];
  v0[58] = v0[46];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v2(v3, v4);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  v8 = swift_allocError();
  v0[59] = v8;
  (*(v6 + 16))(v9, v5, v7);
  v10 = swift_task_alloc();
  v0[60] = v10;
  *v10 = v0;
  v10[1] = sub_10050E2BC;

  return sub_100641284(v8);
}

uint64_t sub_10050EAA4()
{
  v1 = v0[29];
  v2 = *(v0[34] + 8);
  v2(v0[36], v0[33]);
  sub_100005508(v1, &qword_10097B1C0, &qword_1007FE4C8);
  v3 = v0[37];
  v4 = v0[33];
  v0[58] = v0[49];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v2(v3, v4);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  v8 = swift_allocError();
  v0[59] = v8;
  (*(v6 + 16))(v9, v5, v7);
  v10 = swift_task_alloc();
  v0[60] = v10;
  *v10 = v0;
  v10[1] = sub_10050E2BC;

  return sub_100641284(v8);
}

uint64_t sub_10050EC30()
{
  v1 = v0[29];
  v2 = *(v0[34] + 8);
  v2(v0[36], v0[33]);
  sub_100005508(v1, &qword_10097B1C0, &qword_1007FE4C8);
  v3 = v0[37];
  v4 = v0[33];
  v0[58] = v0[52];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v2(v3, v4);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  v8 = swift_allocError();
  v0[59] = v8;
  (*(v6 + 16))(v9, v5, v7);
  v10 = swift_task_alloc();
  v0[60] = v10;
  *v10 = v0;
  v10[1] = sub_10050E2BC;

  return sub_100641284(v8);
}

uint64_t sub_10050EDBC()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[29];
  sub_100005508(v0[28], &qword_100982508, &unk_100808D50);
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);
  sub_100005508(v5, &qword_10097B1C0, &qword_1007FE4C8);
  v7 = v0[37];
  v8 = v0[33];
  v0[58] = v0[54];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  v6(v7, v8);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  v12 = swift_allocError();
  v0[59] = v12;
  (*(v10 + 16))(v13, v9, v11);
  v14 = swift_task_alloc();
  v0[60] = v14;
  *v14 = v0;
  v14[1] = sub_10050E2BC;

  return sub_100641284(v12);
}

uint64_t sub_10050EF78(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for SFAirDropReceive.Failure();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.ContactRequest();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = *(sub_10028088C(&qword_10097B200, &qword_1007FE578) - 8);
  v2[25] = v6;
  v2[26] = *(v6 + 64);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.ContactInfo.Handle();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  sub_10028088C(&qword_10097B198, &qword_1007FE450);
  v2[32] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.ContactInfo();
  v2[33] = v8;
  v2[34] = *(v8 - 8);
  v2[35] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDrop.TransferType();
  v2[36] = v9;
  v2[37] = *(v9 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[40] = v10;
  v2[41] = *(v10 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[44] = v11;
  v2[45] = *(v11 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v2[49] = static AirDropActor.shared;

  return _swift_task_switch(sub_10050F428, v12, 0);
}

uint64_t sub_10050F428(uint64_t a1)
{
  v73 = v1;
  v2 = v1[48];
  v4 = v1[44];
  v3 = v1[45];
  v5 = v1[43];
  v6 = v1[41];
  v70 = v1[40];
  v7 = v1[39];
  v8 = v1[36];
  v9 = v1[37];
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v69 = *(v3 + 8);
  v69(v2, v4);
  SFAirDropReceive.AskRequest.type.getter();
  v10 = *(v6 + 8);
  v10(v5, v70);
  v11 = (*(v9 + 88))(v7, v8);
  LODWORD(v5) = enum case for SFAirDrop.TransferType.exchange(_:);
  v12 = *(v9 + 8);
  v12(v7, v8);
  if (v11 == v5)
  {
    v14 = v1[33];
    v13 = v1[34];
    v15 = v1[32];
    sub_1004E5AD8(v15);
    v16 = *(v13 + 48);
    if (v16(v15, 1, v14) == 1)
    {
      v18 = v1[32];
      v17 = v1[33];
      v19 = v1[30];
      v20 = v1[31];
      v21 = v1[29];
      *v20 = 0xD000000000000012;
      v20[1] = 0x800000010078E5D0;
      (*(v19 + 104))(v20, enum case for SFAirDrop.ContactInfo.Handle.email(_:), v21);
      SFAirDrop.ContactInfo.init(givenName:fullName:handle:vcard:)();
      if (v16(v18, 1, v17) != 1)
      {
        sub_100005508(v1[32], &qword_10097B198, &qword_1007FE450);
      }
    }

    else
    {
      (*(v1[34] + 32))(v1[35], v1[32], v1[33]);
    }

    v1[50] = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Share Contacts Permission START", v35, 2u);
    }

    v36 = v1[47];
    v37 = v1[35];
    v38 = v1[28];
    v39 = v1[12];

    v40 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
    swift_beginAccess();
    sub_1002A9938(v39 + v40, (v1 + 2));
    sub_10002CDC0(v1 + 2, v1[5]);
    CurrentValueSubject.value.getter();
    sub_100589CEC(v36, v37, v38);
    v61 = v1[44];
    v63 = v1[46];
    v42 = v1[34];
    v43 = v1[35];
    v44 = v1[33];
    v67 = v1[27];
    v68 = v1[25];
    v45 = v1[23];
    v46 = v1[24];
    v47 = v1[22];
    loga = v1[16];
    v58 = v1[28];
    (v69)(v1[47]);
    sub_10000C60C(v1 + 2);
    v48 = *(sub_10028088C(&qword_10097C688, &unk_1008042A0) + 48);
    (*(v42 + 16))(v46, v43, v44);
    v49 = sub_10028088C(&unk_10097C660, &unk_10080D3E0);
    (*(*(v49 - 8) + 16))(v46 + v48, v58, v49);
    (*(v45 + 104))(v46, enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:), v47);
    sub_100687AF8(v46, v63);
    (*(v45 + 8))(v46, v47);
    v69(v63, v61);
    v50 = type metadata accessor for TaskPriority();
    (*(*(v50 - 8) + 56))(loga, 1, 1, v50);
    sub_10000FF90(v58, v67, &qword_10097B200, &qword_1007FE578);
    v51 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v52 = swift_allocObject();
    v1[51] = v52;
    sub_10002C4E4(v67, v52 + v51, &qword_10097B200, &qword_1007FE578);

    v53 = swift_task_alloc();
    v1[52] = v53;
    *v53 = v1;
    v53[1] = sub_10050FE20;
    v54 = v1[20];
    v55 = v1[16];
    v56 = v1[17];
    v57 = v1[12];

    return concurrentRace<A>(priority:operation:against:)(v54, v55, &unk_100808F98, v52, &unk_100808FA8, v57, v56);
  }

  else
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v71 = v23;
      v24 = v1[46];
      v25 = v1[42];
      v59 = v1[44];
      v60 = v1[40];
      v26 = v1[38];
      v62 = v1[36];
      v27 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v72 = v66;
      *v27 = 136315138;
      log = v22;
      CurrentValueSubject.value.getter();
      SFAirDropReceive.Transfer.askRequest.getter();
      v69(v24, v59);
      SFAirDropReceive.AskRequest.type.getter();
      v10(v25, v60);
      sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v12(v26, v62);
      v31 = sub_10000C4E4(v28, v30, &v72);

      *(v27 + 4) = v31;
      v22 = log;
      _os_log_impl(&_mh_execute_header, log, v71, "Share Contacts Permission SKIP. {type: %s}", v27, 0xCu);
      sub_10000C60C(v66);
    }

    (*(v1[18] + 56))(v1[11], 1, 1, v1[17]);

    v32 = v1[1];

    return v32();
  }
}

uint64_t sub_10050FE20()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 392);
  sub_100005508(*(v2 + 128), &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v4 = sub_100510348;
  }

  else
  {
    v4 = sub_10050FFB8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10050FFB8()
{
  v31 = v0;
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v29 = *(v3 + 32);
  v29(v1, v0[20], v4);
  (*(v3 + 16))(v2, v1, v4);
  v5 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v5, v28);
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[33];
  v10 = v0[28];
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[17];
  if (v6)
  {
    v27 = v0[28];
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30 = v24;
    *v14 = 136315138;
    sub_100530ED4(&qword_10097B210, &type metadata accessor for SFAirDrop.ContactRequest, &protocol conformance descriptor for SFAirDrop.ContactRequest);
    v25 = v9;
    v26 = v7;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_10000C4E4(v15, v17, &v30);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v28, "Share Contacts Permission END {response: %s}", v14, 0xCu);
    sub_10000C60C(v24);

    sub_100005508(v27, &qword_10097B200, &qword_1007FE578);
    (*(v8 + 8))(v26, v25);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    sub_100005508(v10, &qword_10097B200, &qword_1007FE578);
    (*(v8 + 8))(v7, v9);
  }

  v19 = v0[17];
  v20 = v0[18];
  v21 = v0[11];
  v29(v21, v0[21], v19);
  (*(v20 + 56))(v21, 0, 1, v19);

  v22 = v0[1];

  return v22();
}

uint64_t sub_100510348()
{
  *(v0 + 80) = *(v0 + 424);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v1 = (*(*(v0 + 112) + 88))(*(v0 + 120), *(v0 + 104));
    *(v0 + 448) = v1;
    if (v1 == enum case for SFAirDropReceive.Failure.receiverCancelled(_:))
    {

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "Share Contacts Permission END - Cancelling exchange", v4, 2u);
      }

      type metadata accessor for CancellationError();
      sub_100530ED4(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
      v5 = swift_allocError();
      *(v0 + 432) = v5;
      CancellationError.init()();
      v6 = swift_task_alloc();
      *(v0 + 440) = v6;
      *v6 = v0;
      v6[1] = sub_100510714;

      return sub_100641284(v5);
    }

    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 264);
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v16 = *(v0 + 104);
    sub_100005508(*(v0 + 224), &qword_10097B200, &qword_1007FE578);
    (*(v12 + 8))(v11, v13);
    (*(v15 + 8))(v14, v16);
  }

  else
  {
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v10 = *(v0 + 264);
    sub_100005508(*(v0 + 224), &qword_10097B200, &qword_1007FE578);
    (*(v9 + 8))(v8, v10);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100510714()
{
  v1 = *(*v0 + 392);

  return _swift_task_switch(sub_100510840, v1, 0);
}

uint64_t sub_100510840()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 224);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(v7 + 104))(v8, v1, v6);
  swift_willThrow();
  sub_100005508(v5, &qword_10097B200, &qword_1007FE578);
  (*(v2 + 8))(v3, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100510A44(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for CancellationError();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = sub_10028088C(&unk_100989310, &qword_1007F9878);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = sub_10028088C(&qword_1009768F0, &unk_100808F60);
  v2[33] = swift_task_alloc();
  v4 = type metadata accessor for SFNWInterfaceTypeCategory();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  sub_10028088C(&qword_100977DC0, &unk_1007FB320);
  v2[38] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDrop.Progress();
  v2[39] = v5;
  v2[40] = *(v5 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  sub_10028088C(&qword_10097B2B0, &unk_100808F70);
  v2[43] = swift_task_alloc();
  v6 = sub_10028088C(&qword_10097B2B8, &qword_1007FE670);
  v2[44] = v6;
  v2[45] = *(v6 - 8);
  v2[46] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[47] = v7;
  v2[48] = *(v7 - 8);
  v2[49] = swift_task_alloc();
  v8 = type metadata accessor for SFNWInterfaceType();
  v2[50] = v8;
  v2[51] = *(v8 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDrop.DeclineAction();
  v2[54] = v9;
  v2[55] = *(v9 - 8);
  v2[56] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[57] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v2[58] = v10;
  v2[59] = *(v10 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v11 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v2[62] = v11;
  v2[63] = *(v11 - 8);
  v2[64] = swift_task_alloc();
  v12 = sub_10028088C(&qword_1009768F8, &unk_1008092B0);
  v2[65] = v12;
  v2[66] = *(v12 - 8);
  v2[67] = swift_task_alloc();
  sub_10028088C(&unk_1009755F0, &unk_1007FE9A0);
  v2[68] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDrop.NetworkMetrics();
  v2[69] = v13;
  v2[70] = *(v13 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDrop.TransferType();
  v2[73] = v14;
  v2[74] = *(v14 - 8);
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v15 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[77] = v15;
  v2[78] = *(v15 - 8);
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[82] = v16;
  v2[83] = *(v16 - 8);
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v17 = static AirDropActor.shared;
  v2[87] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005111EC, v17, 0);
}

uint64_t sub_1005111EC(uint64_t a1)
{
  v133 = v1;
  v2 = *(v1 + 688);
  v3 = *(v1 + 664);
  v4 = *(v1 + 656);
  v5 = *(v1 + 648);
  v6 = *(v1 + 624);
  v7 = *(v1 + 616);
  v8 = *(v1 + 608);
  v9 = *(v1 + 592);
  v126 = *(v1 + 584);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v10 = *(v3 + 8);
  *(v1 + 704) = v10;
  *(v1 + 712) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v130 = v10;
  v10(v2, v4);
  SFAirDropReceive.AskRequest.type.getter();
  v11 = *(v6 + 8);
  v11(v5, v7);
  v12 = v11;
  LOBYTE(v11) = SFAirDrop.TransferType.isFiles.getter();
  v13 = *(v9 + 8);
  v13(v8, v126);
  v129 = v12;
  if (v11 & 1) != 0 || (v14 = *(v1 + 680), v15 = *(v1 + 656), v16 = *(v1 + 640), v17 = *(v1 + 616), v18 = *(v1 + 600), v19 = *(v1 + 584), CurrentValueSubject.value.getter(), SFAirDropReceive.Transfer.askRequest.getter(), v130(v14, v15), SFAirDropReceive.AskRequest.type.getter(), v129(v16, v17), v20 = SFAirDrop.TransferType.isCustom.getter(), v13(v18, v19), (v20))
  {
    *(v1 + 720) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Monitoring Transfer START", v23, 2u);
    }

    v24 = *(v1 + 680);
    v25 = *(v1 + 576);
    v26 = *(v1 + 560);
    v27 = *(v1 + 552);
    v105 = *(v1 + 544);
    v121 = *(v1 + 568);
    v115 = *(v1 + 496);
    v117 = *(v1 + 512);
    v111 = *(v1 + 472);
    v113 = *(v1 + 504);
    v124 = *(v1 + 464);
    v127 = *(v1 + 656);
    v119 = *(v1 + 456);
    v28 = *(v1 + 200);

    v29 = *(v28 + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine6Runner_receiveHandler);
    *(v1 + 728) = v29;
    v30 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics;
    *(v1 + 736) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_metrics;
    v31 = v30;
    v110 = v30;
    swift_beginAccess();
    v32 = *(v26 + 16);
    *(v1 + 744) = v32;
    v108 = v32;
    *(v1 + 752) = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(v25, v29 + v31, v27);
    sub_100688490(v25);
    v106 = *(v26 + 8);
    *(v1 + 760) = v106;
    *(v1 + 768) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v106(v25, v27);
    v130(v24, v127);
    v33 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
    *(v1 + 776) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
    swift_beginAccess();
    sub_10000FF90(v29 + v33, v105, &unk_1009755F0, &unk_1007FE9A0);
    sub_100688470(v105);
    sub_100005508(v105, &unk_1009755F0, &unk_1007FE9A0);
    v130(v24, v127);
    (*(v113 + 16))(v117, v29 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_transferContinuation, v115);
    SFProgressContinuation.task.getter();
    (*(v113 + 8))(v117, v115);
    v108(v121, v29 + v110, v27);
    SFAirDrop.NetworkMetrics.uploadStart.getter();
    v106(v121, v27);
    v34 = *(v111 + 48);
    if (v34(v119, 1, v124) == 1)
    {
      v35 = *(v1 + 456);
      v36 = *(v1 + 464);
      static Date.now.getter();
      if (v34(v35, 1, v36) != 1)
      {
        sub_100005508(*(v1 + 456), &qword_10097A7F0, &unk_1007FB600);
      }
    }

    else
    {
      (*(*(v1 + 472) + 32))(*(v1 + 488), *(v1 + 456), *(v1 + 464));
    }

    v37 = *(v1 + 680);
    v125 = *(v1 + 656);
    v101 = *(v1 + 640);
    v38 = *(v1 + 536);
    v39 = *(v1 + 448);
    v112 = *(v1 + 440);
    v102 = *(v1 + 616);
    v103 = *(v1 + 424);
    v104 = *(v1 + 392);
    v114 = *(v1 + 432);
    v116 = *(v1 + 384);
    v118 = *(v1 + 376);
    v40 = *(v1 + 312);
    v41 = *(v1 + 200);
    v107 = *(v1 + 192);
    v109 = *(v1 + 320);
    v42 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
    swift_beginAccess();
    sub_1002A9938(v41 + v42, v1 + 16);
    v43 = *(v1 + 40);
    v44 = *(v1 + 48);
    sub_10002CDC0((v1 + 16), v43);
    CurrentValueSubject.value.getter();
    v45 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
    sub_100587FBC(v37, 0x726566736E617274, 0xEC000000676E6972, v38, v43, v40, v45, v44, v39);
    v130(v37, v125);
    sub_10000C60C((v1 + 16));
    sub_1002A9938(v41 + v42, v1 + 56);
    v46 = *(v1 + 80);
    v47 = *(v1 + 88);
    sub_10002CDC0((v1 + 56), v46);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v130(v37, v125);
    v48 = (*(v47 + 64))(v101, v46, v47);
    v50 = v49;
    *(v1 + 784) = v48;
    *(v1 + 792) = v49;
    v129(v101, v102);
    sub_10000C60C((v1 + 56));
    sub_100638724(v103);
    v51 = sub_10028088C(&qword_10097C680, &unk_100808F80);
    *(v1 + 800) = v51;
    v52 = v51[12];
    v53 = (v104 + v51[16]);
    v54 = v51[20];
    v55 = type metadata accessor for SFAirDropReceive.ItemDestination();
    *(v1 + 808) = v55;
    v56 = *(v55 - 8);
    v57 = *(v56 + 16);
    *(v1 + 816) = v57;
    *(v1 + 824) = (v56 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v57(v104, v107, v55);
    v58 = enum case for SFAirDrop.Progress.notStarted(_:);
    v59 = *(v109 + 104);
    *(v1 + 832) = v59;
    *(v1 + 840) = (v109 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v59(v104 + v52, v58, v40);
    *v53 = sub_100333550(v48, v50);
    v53[1] = v60;
    v61 = *(v112 + 16);
    *(v1 + 848) = v61;
    *(v1 + 856) = (v112 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v61(v104 + v54, v39, v114);
    *(v1 + 960) = enum case for SFAirDropReceive.Transfer.State.transferring(_:);
    v62 = *(v116 + 104);
    *(v1 + 864) = v62;
    *(v1 + 872) = (v116 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v62(v104);
    sub_100687AF8(v104, v37);
    v63 = *(v116 + 8);
    *(v1 + 880) = v63;
    *(v1 + 888) = (v116 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63(v104, v118);
    v130(v37, v125);
    SFProgressTask.makeAsyncIterator()();
    v64 = sub_100530ED4(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    *(v1 + 896) = v64;
    *(v1 + 964) = enum case for SFAirDrop.Progress.completed(_:);
    *(v1 + 968) = enum case for SFNWInterfaceTypeCategory.regular(_:);
    v65 = *(v1 + 696);
    v66 = swift_task_alloc();
    *(v1 + 904) = v66;
    *v66 = v1;
    v66[1] = sub_100512084;
    v67 = *(v1 + 344);
    v68 = *(v1 + 352);
    v69 = v1 + 168;
    v70 = v65;
    v71 = v64;

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v67, v70, v71, v68, v69);
  }

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = *(v1 + 680);
    v75 = *(v1 + 640);
    v120 = *(v1 + 656);
    v122 = *(v1 + 616);
    v76 = *(v1 + 600);
    v123 = *(v1 + 584);
    v77 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v132[0] = v128;
    *v77 = 136315138;
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v130(v74, v120);
    SFAirDropReceive.AskRequest.type.getter();
    v129(v75, v122);
    sub_100530ED4(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v79;
    v13(v76, v123);
    v81 = sub_10000C4E4(v78, v80, v132);

    *(v77 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v72, v73, "Monitoring Transfer SKIP. {type: %s}", v77, 0xCu);
    sub_10000C60C(v128);
  }

  else
  {
  }

  v82 = *(v1 + 680);
  v83 = *(v1 + 656);
  v84 = *(v1 + 640);
  v85 = *(v1 + 616);
  v86 = *(v1 + 600);
  v87 = *(v1 + 584);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v130(v82, v83);
  SFAirDropReceive.AskRequest.type.getter();
  v129(v84, v85);
  v88 = SFAirDrop.TransferType.isLinks.getter();
  v13(v86, v87);
  if ((v88 & 1) == 0)
  {
    goto LABEL_20;
  }

  v89 = *(v1 + 672);
  v90 = *(v1 + 656);
  v91 = *(v1 + 632);
  v92 = *(v1 + 616);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v130(v89, v90);
  v93 = SFAirDropReceive.AskRequest.urlItems.getter();
  v129(v91, v92);
  v94 = *(v93 + 16);
  if (!v94)
  {

LABEL_20:
    v131 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v95 = sub_10028F660(*(v93 + 16), 0);
  v96 = *(type metadata accessor for URL() - 8);
  v97 = sub_100291948(v132, &v95[(*(v96 + 80) + 32) & ~*(v96 + 80)], v94, v93);
  v67 = sub_100027D64(v132[0]);
  if (v97 != v94)
  {
    __break(1u);
    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v67, v70, v71, v68, v69);
  }

  v131 = v95;
LABEL_21:

  v98 = *(v1 + 8);
  v99.n128_u64[0] = 0;

  return v98(v131, v99);
}

uint64_t sub_100512084()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 696);

    v4 = sub_100513B2C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 696);
    v4 = sub_1005121A8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1005121A8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
    v4 = swift_task_alloc();
    *(v0 + 912) = v4;
    *v4 = v0;
    v4[1] = sub_1005128F0;
    v5 = *(v0 + 520);

    return SFProgressTask.finalValue.getter(v0 + 184, v5);
  }

  else
  {
    v6 = *(v0 + 964);
    v7 = *(v0 + 416);
    v9 = *(v0 + 328);
    v8 = *(v0 + 336);
    (*(v3 + 32))(v8, v1, v2);
    sub_100638724(v7);
    v10 = *(v3 + 16);
    v10(v9, v8, v2);
    if ((*(v3 + 88))(v9, v2) == v6)
    {
      v11 = *(*(v0 + 320) + 8);
      v11(*(v0 + 328), *(v0 + 312));
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 424);
      v16 = *(v0 + 400);
      v17 = *(v0 + 408);
      v18 = *(v0 + 336);
      v19 = *(v0 + 312);
      if (v14)
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Pipelined UPLOAD already complete", v20, 2u);
      }

      v11(v18, v19);
      (*(v17 + 8))(v15, v16);
    }

    else
    {
      v72 = *(v0 + 880);
      v69 = *(v0 + 864);
      v68 = *(v0 + 960);
      v67 = *(v0 + 848);
      v21 = *(v0 + 800);
      v62 = *(v0 + 792);
      v22 = *(v0 + 784);
      v71 = *(v0 + 704);
      v66 = *(v0 + 680);
      v70 = *(v0 + 656);
      v64 = *(v0 + 448);
      v63 = *(v0 + 432);
      v23 = *(v0 + 392);
      v65 = *(v0 + 376);
      v24 = *(v0 + 336);
      v25 = *(v0 + 312);
      v26 = v21[12];
      v27 = (v23 + v21[16]);
      v28 = v21[20];
      (*(v0 + 816))(v23, *(v0 + 192), *(v0 + 808));
      v10(v23 + v26, v24, v25);
      *v27 = sub_100333550(v22, v62);
      v27[1] = v29;
      v67(v23 + v28, v64, v63);
      v69(v23, v68, v65);
      sub_100687AF8(v23, v66);
      v72(v23, v65);
      v71(v66, v70);
      sub_100530ED4(&qword_10097AD50, &type metadata accessor for SFNWInterfaceType, &protocol conformance descriptor for SFNWInterfaceType);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v30 = *(v0 + 704);
        v31 = *(v0 + 680);
        v32 = *(v0 + 656);
        v33 = *(v0 + 408);
        v34 = *(v0 + 400);
        v35 = *(v0 + 304);
        (*(v33 + 16))(v35, *(v0 + 416), v34);
        (*(v33 + 56))(v35, 0, 1, v34);
        sub_100688030(v35, v31);
        sub_100005508(v35, &qword_100977DC0, &unk_1007FB320);
        v30(v31, v32);
      }

      v36 = *(v0 + 968);
      v38 = *(v0 + 288);
      v37 = *(v0 + 296);
      v39 = *(v0 + 272);
      v40 = *(v0 + 280);
      SFNWInterfaceType.category()();
      (*(v40 + 104))(v38, v36, v39);
      sub_100530ED4(&qword_10097B2D0, &type metadata accessor for SFNWInterfaceTypeCategory, &protocol conformance descriptor for SFNWInterfaceTypeCategory);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v40 + 8);
      v42(v38, v39);
      v42(v37, v39);
      if ((v41 & 1) == 0)
      {
        v44 = *(v0 + 288);
        v43 = *(v0 + 296);
        v45 = *(v0 + 272);
        SFNWInterfaceType.category()();
        SFNWInterfaceType.category()();
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v42(v44, v45);
        v42(v43, v45);
        if ((v46 & 1) == 0)
        {
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&_mh_execute_header, v47, v48, "AirDrop interface changed to high priority category", v49, 2u);
          }

          sub_10068ECC0(3.0);
        }
      }

      v50 = *(v0 + 424);
      v51 = *(v0 + 400);
      v52 = *(v0 + 408);
      v53 = *(v0 + 328);
      v54 = *(v0 + 312);
      v55 = *(*(v0 + 320) + 8);
      v55(*(v0 + 336), v54);
      (*(v52 + 8))(v50, v51);
      v55(v53, v54);
    }

    (*(*(v0 + 408) + 32))(*(v0 + 424), *(v0 + 416), *(v0 + 400));
    v56 = *(v0 + 896);
    v57 = *(v0 + 696);
    v58 = swift_task_alloc();
    *(v0 + 904) = v58;
    *v58 = v0;
    v58[1] = sub_100512084;
    v59 = *(v0 + 344);
    v60 = *(v0 + 352);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v59, v57, v56, v60, v0 + 168);
  }
}

uint64_t sub_1005128F0()
{
  v2 = *v1;
  *(*v1 + 920) = v0;

  if (v0)
  {
    v3 = *(v2 + 696);

    v4 = sub_100513D90;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 696);
    v4 = sub_100512A18;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100512A18()
{
  v50 = *(v0 + 964);
  v58 = *(v0 + 880);
  v56 = *(v0 + 864);
  v54 = *(v0 + 960);
  v52 = *(v0 + 848);
  v49 = *(v0 + 832);
  v46 = *(v0 + 816);
  v45 = *(v0 + 808);
  v1 = *(v0 + 800);
  v47 = *(v0 + 784);
  v48 = *(v0 + 792);
  v40 = *(v0 + 760);
  v2 = *(v0 + 704);
  v3 = *(v0 + 680);
  v4 = *(v0 + 656);
  v5 = *(v0 + 576);
  v6 = *(v0 + 552);
  v42 = *(v0 + 432);
  v43 = *(v0 + 448);
  v53 = *(v0 + 408);
  v55 = *(v0 + 400);
  v7 = *(v0 + 392);
  v44 = *(v0 + 376);
  v41 = *(v0 + 312);
  v51 = *(v0 + 304);
  v39 = *(v0 + 192);
  v8 = *(v0 + 184);
  (*(v0 + 744))(v5, *(v0 + 728) + *(v0 + 736), v6);
  sub_100688490(v5);
  v40(v5, v6);
  v2(v3, v4);
  v9 = v1[12];
  v10 = (v7 + v1[16]);
  v11 = v1[20];
  v46(v7, v39, v45);
  *(v7 + v9) = v8;
  v49(v7 + v9, v50, v41);
  *v10 = v47;
  v10[1] = v48;
  v52(v7 + v11, v43, v42);
  v56(v7, v54, v44);
  v57 = v8;

  sub_100687AF8(v7, v3);
  v58(v7, v44);
  v2(v3, v4);
  (*(v53 + 56))(v51, 1, 1, v55);
  sub_100688030(v51, v3);
  sub_100005508(v51, &qword_100977DC0, &unk_1007FB320);
  v2(v3, v4);
  static Date.now.getter();
  sub_100530ED4(&qword_10097E910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v13 = *(v0 + 480);
    v14 = *(v0 + 464);
    v15 = *(v0 + 472);
    v16 = *(v0 + 264);
    v63 = *(v0 + 256);
    v17 = *(v0 + 240);
    v18 = *(v0 + 248);
    v19 = *(v0 + 232);
    (*(v15 + 16))(v18, *(v0 + 488), v14);
    v20 = *(v15 + 32);
    v20(v18 + *(v19 + 48), v13, v14);
    sub_10000FF90(v18, v17, &unk_100989310, &qword_1007F9878);
    v21 = *(v19 + 48);
    v22 = v16;
    v20(v16, v17, v14);
    v23 = *(v15 + 8);
    v23(v17 + v21, v14);
    sub_10002C4E4(v18, v17, &unk_100989310, &qword_1007F9878);
    v20(v22 + *(v63 + 36), v17 + *(v19 + 48), v14);
    v64 = v23;
    v23(v17, v14);
    ClosedRange<>.interval.getter();
    v25 = v24;
    sub_100005508(v22, &qword_1009768F0, &unk_100808F60);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 536);
    v30 = *(v0 + 528);
    v31 = *(v0 + 520);
    v62 = *(v0 + 488);
    v32 = *(v0 + 440);
    v60 = *(v0 + 448);
    v61 = *(v0 + 464);
    v33 = *(v0 + 424);
    v59 = *(v0 + 432);
    v34 = *(v0 + 400);
    v35 = *(v0 + 408);
    if (v28)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Monitoring Transfer END", v36, 2u);
    }

    (*(v35 + 8))(v33, v34);
    (*(v32 + 8))(v60, v59);
    v64(v62, v61);
    (*(v30 + 8))(v29, v31);

    v37 = *(v0 + 8);
    v38.n128_u64[0] = v25;

    return v37(v57, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005130FC()
{
  v1 = *(*v0 + 696);

  return _swift_task_switch(sub_100513228, v1, 0);
}

uint64_t sub_100513228()
{
  v1 = v0[88];
  v2 = v0[85];
  v3 = v0[82];
  v4 = v0[68];
  v5 = v0[51];
  v17 = v0[50];
  v6 = v0[38];
  sub_10000FF90(v0[91] + v0[97], v4, &unk_1009755F0, &unk_1007FE9A0);
  sub_100688470(v4);
  sub_100005508(v4, &unk_1009755F0, &unk_1007FE9A0);
  v1(v2, v3);
  (*(v5 + 56))(v6, 1, 1, v17);
  sub_100688030(v6, v2);
  sub_100005508(v6, &qword_100977DC0, &unk_1007FB320);
  v1(v2, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Monitoring Transfer END - Cancelled.", v9, 2u);
  }

  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[26];

  v13 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100530ED4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v13 - 8) + 104))(v14, enum case for SFAirDropReceive.Failure.senderCancelled(_:), v13);
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v15 = v0[1];

  return v15();
}