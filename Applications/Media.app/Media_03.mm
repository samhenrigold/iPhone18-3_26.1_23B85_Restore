uint64_t static TerrestrialRadioStation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t TerrestrialRadioStation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000368C(&qword_1000EC968, &unk_1000B6380);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7 - 8];
  sub_10000CBDC(a1, a1[3]);
  sub_100044AEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v22 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    swift_beginAccess();
    v21 = 1;

    KeyedEncodingContainer.encode(_:forKey:)();

    swift_beginAccess();
    v20 = 3;

    KeyedEncodingContainer.encode(_:forKey:)();

    swift_beginAccess();
    v19 = 2;

    KeyedEncodingContainer.encode(_:forKey:)();

    swift_beginAccess();
    v18 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    swift_beginAccess();
    v17 = 5;

    KeyedEncodingContainer.encode(_:forKey:)();

    v10 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_callsign;
    swift_beginAccess();
    v16 = *(v3 + v10);
    v15[0] = 6;
    sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
    sub_100044B40(&qword_1000EC978, &unk_1000EC2C8, &qword_1000B5750);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = (v3 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
    swift_beginAccess();
    v12 = v11[1];
    v15[0] = *v11;
    v15[1] = v12;
    LOBYTE(v14) = 7;
    sub_10000368C(&qword_1000EC980, &qword_1000B6390);
    sub_100044B40(&qword_1000EC988, &qword_1000EC980, &qword_1000B6390);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier;
    swift_beginAccess();
    v14 = *(v3 + v13);
    v23 = 8;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TerrestrialRadioStation.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  TerrestrialRadioStation.init(from:)(a1);
  return v2;
}

uint64_t TerrestrialRadioStation.init(from:)(void *a1)
{
  v105 = a1;
  v2 = sub_10000368C(&qword_1000EC990, &qword_1000B6398);
  v89 = *(v2 - 8);
  v90 = v2;
  __chkstk_darwin(v2);
  v97 = &v76 - v3;
  v4 = sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  v100 = *(v4 - 8);
  v101 = v4;
  __chkstk_darwin(v4);
  v6 = &v76 - v5;
  v7 = sub_10000368C(&qword_1000EC948, &qword_1000B6248);
  v98 = *(v7 - 8);
  v99 = v7;
  __chkstk_darwin(v7);
  v95 = &v76 - v8;
  v94 = sub_10000368C(&qword_1000EC938, &qword_1000B61F8);
  v9 = __chkstk_darwin(v94);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v76 - v12;
  v14 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v76 - v16;
  v18 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__favorite;
  LOBYTE(v104) = 0;
  Published.init(initialValue:)();
  v91 = v18;
  v92 = v15;
  v19 = *(v15 + 32);
  v93 = v14;
  v19(v1 + v18, v17, v14);
  v20 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__matchedStation;
  v21 = type metadata accessor for Station();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_1000077CC(v13, v11, &qword_1000EC938, &qword_1000B61F8);
  v22 = v95;
  Published.init(initialValue:)();
  sub_10003ECA4(v13);
  v23 = *(v98 + 32);
  v94 = v20;
  v23(v1 + v20, v22, v99);
  v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__stationImage;
  v104 = 0;
  sub_10000368C(&qword_1000EC950, &qword_1000B6250);
  Published.init(initialValue:)();
  v25 = *(v100 + 32);
  v95 = v24;
  v26 = v1 + v24;
  v27 = v101;
  v25(v26, v6, v101);
  v28 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__thumbnailImage;
  v104 = 0;
  Published.init(initialValue:)();
  v25(v1 + v28, v6, v27);
  v29 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_callsign);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  *(v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast) = 256;
  v31 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier);
  *v31 = 0;
  v31[1] = 0;
  sub_10000CBDC(v105, v105[3]);
  sub_100044AEC();
  v32 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    (*(v92 + 8))(v1 + v91, v93);
    (*(v98 + 8))(v1 + v94, v99);
    v37 = v101;
    v38 = *(v100 + 8);
    v38(&v95[v1], v101);
    v38((v1 + v28), v37);

    type metadata accessor for TerrestrialRadioStation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v104) = 0;
    LODWORD(v96) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v104) = 1;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v88 = v34;
    LOBYTE(v104) = 3;
    v86 = KeyedDecodingContainer.decode(_:forKey:)();
    v87 = v35;
    LOBYTE(v104) = 2;
    v84 = KeyedDecodingContainer.decode(_:forKey:)();
    v85 = v36;
    LOBYTE(v104) = 4;
    v83 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v104) = 5;
    v81 = KeyedDecodingContainer.decode(_:forKey:)();
    v82 = v40;
    LOBYTE(v104) = 6;
    v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v80 = v41;
    LOBYTE(v104) = 7;
    v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v104) = 8;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v76 = v43;
    v77 = v42;
    *(v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency) = v96;
    v44 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
    v45 = v87;
    *v44 = v86;
    v44[1] = v45;
    v46 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
    v47 = v88;
    *v46 = v33;
    v46[1] = v47;
    v48 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
    v49 = v85;
    *v48 = v84;
    v48[1] = v49;
    *(v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType) = v83;
    v50 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    v51 = v82;
    *v50 = v81;
    v50[1] = v51;
    swift_beginAccess();
    v52 = v80;
    *v29 = v79;
    v29[1] = v52;

    swift_beginAccess();
    v53 = BYTE1(v78);
    *v30 = v78;
    v30[1] = v53 & 1;
    swift_beginAccess();
    v54 = v76;
    *v31 = v77;
    v31[1] = v54;

    sub_10000368C(&qword_1000EF2C0, &qword_1000B63A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B6180;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v56;
    AnyHashable.init<A>(_:)();
    v57 = objc_allocWithZone(NSNumber);
    v58 = [v57 initWithUnsignedInt:v96];
    v59 = sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
    *(inited + 96) = v59;
    *(inited + 72) = v58;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v60;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for String;
    v61 = v82;
    *(inited + 144) = v81;
    *(inited + 152) = v61;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v62;
    AnyHashable.init<A>(_:)();
    *(inited + 240) = &type metadata for String;
    v63 = v87;
    *(inited + 216) = v86;
    *(inited + 224) = v63;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v64;
    AnyHashable.init<A>(_:)();
    *(inited + 312) = &type metadata for String;
    v65 = v79;
    v66 = v80;
    if (!v80)
    {
      v65 = 0;
      v66 = 0xE000000000000000;
    }

    *(inited + 288) = v65;
    *(inited + 296) = v66;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v67;
    AnyHashable.init<A>(_:)();
    *(inited + 384) = &type metadata for String;
    v68 = v77;
    if (v54)
    {
      v69 = v54;
    }

    else
    {
      v68 = 0;
      v69 = 0xE000000000000000;
    }

    *(inited + 360) = v68;
    *(inited + 368) = v69;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v70;
    AnyHashable.init<A>(_:)();
    if ((v78 & 0x100) != 0)
    {
      v71 = 0;
    }

    else
    {
      v71 = v78;
    }

    v72 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v71];
    *(inited + 456) = v59;
    *(inited + 432) = v72;
    sub_10004424C(inited);
    swift_setDeallocating();
    sub_10000368C(&qword_1000EC998, &qword_1000B63A8);
    swift_arrayDestroy();
    v73 = objc_allocWithZone(CAFMediaItem);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v75 = [v73 initWithDictionary:isa];

    (*(v89 + 8))(v97, v90);
    *(v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem) = v75;
  }

  sub_100006960(v105);
  return v1;
}

uint64_t TerrestrialRadioStation.deinit()
{
  v1 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__favorite;
  v2 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__matchedStation;
  v4 = sub_10000368C(&qword_1000EC948, &qword_1000B6248);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__stationImage;
  v6 = sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation__thumbnailImage, v6);

  return v0;
}

uint64_t TerrestrialRadioStation.__deallocating_deinit()
{
  TerrestrialRadioStation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100042FD0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TerrestrialRadioStation(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100043010@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TerrestrialRadioStation(0);
  v5 = swift_allocObject();
  result = TerrestrialRadioStation.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

double sub_100043090@<D0>(void *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t TerrestrialRadioStation.hash(into:)(uint64_t a1)
{
  swift_beginAccess();

  String.hash(into:)();
}

Swift::Int TerrestrialRadioStation.hashValue.getter()
{
  Hasher.init(_seed:)();
  swift_beginAccess();

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000431D8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100043278()
{
  Hasher.init(_seed:)();
  swift_beginAccess();

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000432F8(uint64_t a1)
{
  swift_beginAccess();

  String.hash(into:)();
}

Swift::Int sub_100043370(uint64_t a1)
{
  Hasher.init(_seed:)();
  swift_beginAccess();

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static TerrestrialRadioStation.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v7 = *(a2 + v6);
  swift_beginAccess();
  v8 = v5;
  v9 = v7;
  LOBYTE(a2) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

  return a2 & 1;
}

uint64_t sub_1000434AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v7 = *(v3 + v6);
  swift_beginAccess();
  v8 = v5;
  v9 = v7;
  LOBYTE(v2) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

  return v2 & 1;
}

uint64_t sub_100043578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v8 = *(a2 + v7);
  swift_beginAccess();
  v9 = v6;
  v10 = v8;
  v11 = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

  return v11 & 1;
}

uint64_t sub_100043648(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  if (*(a1 + v4) == 3)
  {
    swift_beginAccess();
    swift_beginAccess();
    sub_100020F58();
    v5 = StringProtocol.caseInsensitiveCompare<A>(_:)();
    if (v5 == -1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v7 = *(a1 + v6);
    CAFMediaItem.primaryDisplayName(in:)();

    v8 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v9 = *(a2 + v8);
    swift_beginAccess();
    v10 = v9;
    CAFMediaItem.primaryDisplayName(in:)();

    sub_100020F58();
    v5 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    if (v5 == -1)
    {
      goto LABEL_12;
    }
  }

  if (v5 != 1)
  {
    v11 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v12 = *(a1 + v11);
    CAFMediaItem.secondaryDisplayName.getter();

    v13 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v14 = *(a2 + v13);
    CAFMediaItem.secondaryDisplayName.getter();

    sub_100020F58();
    v15 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    if (v15 != -1)
    {
      if (v15 != 1)
      {
        v16 = TerrestrialRadioStation.formattedFrequency.getter();
        v18 = v17;
        if (v16 != TerrestrialRadioStation.formattedFrequency.getter() || v18 != v19)
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          return v20 & 1;
        }
      }

      goto LABEL_11;
    }

LABEL_12:
    v20 = 1;
    return v20 & 1;
  }

LABEL_11:
  v20 = 0;
  return v20 & 1;
}

void sub_100043968(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v2;
  static Published.subscript.setter();
  sub_100091510();
}

uint64_t sub_100043A00@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_100043A7C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

unint64_t sub_100043AF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100043BBC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000CB2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006960(v11);
  return v7;
}

unint64_t sub_100043BBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100043CC8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void *sub_100043CC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100043D14(a1, a2);
  sub_100043E44(&off_1000DF088);
  return v3;
}

void *sub_100043D14(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100043F30(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100043F30(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100043E44(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100043FA4(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100043F30(uint64_t a1, uint64_t a2)
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

  sub_10000368C(&qword_1000ECD48, &qword_1000BA740);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100043FA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000ECD48, &qword_1000BA740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_100044098(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_100044148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000368C(&unk_1000EC610, &unk_1000B6700);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000275D8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004424C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000368C(&qword_1000ECD50, &unk_1000B6710);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077CC(v4, v13, &qword_1000EC998, &qword_1000B63A8);
      result = sub_1000276E4(v13);
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
      result = sub_100045918(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100044388()
{
  result = qword_1000EC568;
  if (!qword_1000EC568)
  {
    sub_100005780(&qword_1000EC560, &unk_1000B5920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC568);
  }

  return result;
}

uint64_t sub_100044444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for TerrestrialRadioStation(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_100044590(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v24 = *a1 >> 62;
  v3 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v24)
  {
    goto LABEL_70;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = (a2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v6 = 0;
  while (v4 != v6)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_66;
      }

      v7 = *(v2 + 8 * v6 + 32);
    }

    v8 = (v7 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    swift_beginAccess();
    if (*v8 == *v5 && v8[1] == v5[1])
    {

LABEL_20:
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      while (1)
      {
        if (v2 >> 62)
        {
          if (v12 == _CocoaArrayWrapper.endIndex.getter())
          {
            return v6;
          }
        }

        else if (v12 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v6;
        }

        v3 = v2 & 0xC000000000000001;
        if ((v2 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
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
            v22 = a2;
            v23 = _CocoaArrayWrapper.endIndex.getter();
            a2 = v22;
            v4 = v23;
            goto LABEL_3;
          }

          if (v12 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v13 = *(v2 + 8 * v12 + 32);
        }

        v14 = (v13 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
        swift_beginAccess();
        if (*v14 == *v5 && v14[1] == v5[1])
        {
LABEL_23:
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v16 & 1) == 0)
          {
            if (v6 != v12)
            {
              if (v3)
              {
                v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_72:
                  __break(1u);
LABEL_73:
                  __break(1u);
                  return result;
                }

                v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v6 >= v20)
                {
                  goto LABEL_72;
                }

                if (v12 >= v20)
                {
                  goto LABEL_73;
                }

                v18 = *(v2 + 32 + 8 * v6);
                v19 = *(v2 + 32 + 8 * v12);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_100050B50(v2);
                v21 = (v2 >> 62) & 1;
              }

              else
              {
                LODWORD(v21) = 0;
              }

              v3 = v2 & 0xFFFFFFFFFFFFFF8;
              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v19;

              if ((v2 & 0x8000000000000000) != 0 || v21)
              {
                v2 = sub_100050B50(v2);
                v3 = v2 & 0xFFFFFFFFFFFFFF8;
                if ((v12 & 0x8000000000000000) != 0)
                {
LABEL_60:
                  __break(1u);
                  return _CocoaArrayWrapper.endIndex.getter();
                }
              }

              else if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_60;
              }

              if (v12 >= *(v3 + 16))
              {
                goto LABEL_69;
              }

              *(v3 + 8 * v12 + 32) = v18;

              *a1 = v2;
            }

            v11 = __OFADD__(v6++, 1);
            if (v11)
            {
              goto LABEL_68;
            }
          }
        }

        v11 = __OFADD__(v12++, 1);
        if (v11)
        {
          goto LABEL_65;
        }
      }
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_20;
    }

    v11 = __OFADD__(v6++, 1);
    if (v11)
    {
      goto LABEL_67;
    }
  }

  if (v24)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *(v3 + 16);
  }
}

uint64_t sub_1000448F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for TerrestrialRadioStation(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000449F4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1000A91EC();

  return sub_1000448F4(v5, v3, 0);
}

unint64_t sub_100044AEC()
{
  result = qword_1000EC970;
  if (!qword_1000EC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC970);
  }

  return result;
}

uint64_t sub_100044B40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for TerrestrialRadioStation(uint64_t a1)
{
  result = qword_1000EC9D0;
  if (!qword_1000EC9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100044C04()
{
  result = qword_1000EC9A0;
  if (!qword_1000EC9A0)
  {
    type metadata accessor for TerrestrialRadioStation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC9A0);
  }

  return result;
}

void sub_100044D30(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_100044D88(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_100044E60(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_100044EB8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_100044F18@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

void sub_100044FB8(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

void sub_100045014(char *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

id sub_100045074@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_100045114(uint64_t a1)
{
  sub_10000B5F0();
  if (v1 <= 0x3F)
  {
    sub_100045298(319, &qword_1000EC9E0, &qword_1000EC938, &qword_1000B61F8);
    if (v2 <= 0x3F)
    {
      sub_100045298(319, &unk_1000EC9E8, &qword_1000EC950, &qword_1000B6250);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100045298(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100005780(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TerrestrialRadioStation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TerrestrialRadioStation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100045440()
{
  result = qword_1000ECD18;
  if (!qword_1000ECD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECD18);
  }

  return result;
}

unint64_t sub_100045498()
{
  result = qword_1000ECD20;
  if (!qword_1000ECD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECD20);
  }

  return result;
}

unint64_t sub_1000454F0()
{
  result = qword_1000ECD28;
  if (!qword_1000ECD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECD28);
  }

  return result;
}

unint64_t sub_100045544(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DF598, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100045590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000368C(&qword_1000ECD30, &qword_1000B66E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077CC(v4, &v11, &qword_1000ECD38, &unk_1000B66E8);
      v5 = v11;
      result = sub_100027728(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100045918(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_1000456B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_100045810(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a4;
    v6 = a3;
    v8 = a2;
    v10 = a1;
    v11 = *v7;
    v12 = *v7 >> 62;
    v18 = a5;
    if (!v12)
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v14 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v12)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (v17)
  {
    goto LABEL_18;
  }

  v9(result, 1);

  return v18(v10, v8, 1, v6);
}

_OWORD *sub_100045918(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100045960@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000368C(&qword_1000ECD60, &qword_1000B6800);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  v12 = sub_10000368C(&qword_1000ECD68, &qword_1000B6808);
  sub_100045AF4(a1, a2 & 1, &v11[*(v12 + 44)]);
  KeyPath = swift_getKeyPath();
  sub_1000077CC(v11, v9, &qword_1000ECD60, &qword_1000B6800);
  sub_1000077CC(v9, a3, &qword_1000ECD60, &qword_1000B6800);
  v14 = sub_10000368C(&qword_1000ECD70, &qword_1000B6838);
  v15 = a3 + *(v14 + 48);
  *v15 = 0x403E000000000000;
  *(v15 + 8) = 0;
  v16 = a3 + *(v14 + 64);
  *v16 = KeyPath;
  *(v16 + 8) = 0;

  sub_100007834(v11, &qword_1000ECD60, &qword_1000B6800);

  return sub_100007834(v9, &qword_1000ECD60, &qword_1000B6800);
}

uint64_t sub_100045AF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v54 = a3;
  v5 = sub_10000368C(&qword_1000EBBF0, &qword_1000B6840);
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v45 = type metadata accessor for MediaProgressView(0);
  __chkstk_darwin(v45);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10000368C(&qword_1000EB110, &qword_1000B3F98);
  v10 = __chkstk_darwin(v46);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = &v45 - v13;
  __chkstk_darwin(v12);
  v48 = &v45 - v14;
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000368C(&qword_1000EBBF8, &qword_1000B4F70);
  v20 = __chkstk_darwin(v19 - 8);
  v51 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v45 - v22;
  KeyPath = swift_getKeyPath();

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v16 + 8))(v18, v15);
    a1 = v65;
  }

  swift_getKeyPath();
  *&v65 = a1;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(a1 + 44);

  if (v25 == 1)
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v56[55] = v61;
    *&v56[71] = v62;
    *&v56[87] = v63;
    *&v56[103] = v64;
    *&v56[7] = v58;
    *&v56[23] = v59;
    v57 = 0;
    *&v56[39] = v60;
    *v9 = swift_getKeyPath();
    v9[8] = 0;
    v26 = v45;
    v27 = *(v45 + 20);
    *&v9[v27] = swift_getKeyPath();
    sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
    swift_storeEnumTagMultiPayload();
    v28 = &v9[*(v26 + 24)];
    type metadata accessor for PlaybackTimeObserver(0);
    swift_allocObject();
    v55 = sub_100063724();
    State.init(wrappedValue:)();
    v29 = *(&v65 + 1);
    *v28 = v65;
    *(v28 + 1) = v29;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v30 = v47;
    sub_1000076F8(v9, v47);
    v31 = (v30 + *(v46 + 36));
    v32 = v70;
    v31[4] = v69;
    v31[5] = v32;
    v31[6] = v71;
    v33 = v66;
    *v31 = v65;
    v31[1] = v33;
    v34 = v68;
    v31[2] = v67;
    v31[3] = v34;
    v35 = v48;
    sub_10001721C(v30, v48, &qword_1000EB110, &qword_1000B3F98);
    v36 = v49;
    sub_1000077CC(v35, v49, &qword_1000EB110, &qword_1000B3F98);
    v37 = *&v56[80];
    *(v7 + 73) = *&v56[64];
    *(v7 + 89) = v37;
    *(v7 + 105) = *&v56[96];
    v38 = *&v56[16];
    *(v7 + 9) = *v56;
    *(v7 + 25) = v38;
    v39 = *&v56[48];
    *(v7 + 41) = *&v56[32];
    *v7 = 0x4030000000000000;
    v7[8] = 0;
    *(v7 + 15) = *&v56[111];
    *(v7 + 57) = v39;
    v40 = sub_10000368C(&qword_1000EBC10, &qword_1000B68B0);
    sub_1000077CC(v36, &v7[*(v40 + 48)], &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v35, &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v36, &qword_1000EB110, &qword_1000B3F98);
    sub_10001721C(v7, v23, &qword_1000EBBF0, &qword_1000B6840);
    (*(v52 + 56))(v23, 0, 1, v53);
  }

  else
  {
    (*(v52 + 56))(v23, 1, 1, v53);
  }

  v41 = v51;
  sub_1000077CC(v23, v51, &qword_1000EBBF8, &qword_1000B4F70);
  v42 = v54;
  *v54 = KeyPath;
  *(v42 + 8) = 0;
  v43 = sub_10000368C(&qword_1000ECD78, &qword_1000B6870);
  sub_1000077CC(v41, v42 + *(v43 + 48), &qword_1000EBBF8, &qword_1000B4F70);

  sub_100007834(v23, &qword_1000EBBF8, &qword_1000B4F70);
  sub_100007834(v41, &qword_1000EBBF8, &qword_1000B4F70);
}

uint64_t sub_1000461E0@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_10000368C(&qword_1000ECD58, &qword_1000B67F8);
  return sub_100045960(v4, v5, a2 + *(v6 + 44));
}

unint64_t sub_100046264()
{
  result = qword_1000ECD80;
  if (!qword_1000ECD80)
  {
    sub_100005780(&qword_1000ECD88, &qword_1000B68B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECD80);
  }

  return result;
}

unint64_t sub_1000462C8(__int16 a1)
{
  if ((a1 & 0x100) == 0)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  v2 = 0x6F662E776F727261;
  v3 = 0x2E6E6F7276656863;
  if (a1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  if (!a1)
  {
    v4 = 0;
  }

  if (a1 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000463B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10004642C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1000464A0()
{
  if (!swift_weakLoadStrong())
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v28;
  if (!v28)
  {
    return;
  }

  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v28;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = CAFMediaSource.station(for:)();

  v25 = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (!(v28 >> 62))
  {
    v3 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v3;
    if (!v3)
    {
      goto LABEL_22;
    }

    goto LABEL_7;
  }

LABEL_21:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  v26 = v3;
  if (v3)
  {
LABEL_7:
    v4 = v0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = v1;
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    while (1)
    {
      if (v6)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:

          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.setter();
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.setter();
LABEL_18:

          return;
        }
      }

      else
      {
        if (v5 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v8 = *(v7 + 8 * v5 + 32);

        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_16;
        }
      }

      v10 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v0 = *(v8 + v10);
      v11 = CAFMediaItem.isEquivalent(to:)();

      if ((v11 & 1) == 0)
      {

        ++v5;
        if (v9 != v26)
        {
          continue;
        }
      }

      v0 = v4;
      v1 = v7;
      v3 = v26;
      break;
    }
  }

LABEL_22:
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = v0;
  v12 = CAFMediaSource.stations(for:)();

  if (!v3)
  {
LABEL_44:

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();

    return;
  }

  v13 = 0;
  while ((v1 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = __OFADD__(v13, 1);
    v16 = v13 + 1;
    if (v15)
    {
      goto LABEL_48;
    }

LABEL_29:
    v27 = v16;
    if (v12 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v19 = 0;
    do
    {
      if (v17 == v19)
      {

        goto LABEL_25;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v20 = *(v12 + 8 * v19 + 32);
      }

      v21 = v20;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v22 = *(v14 + v18);
      v23 = CAFMediaItem.isEquivalent(to:)();

      ++v19;
    }

    while ((v23 & 1) == 0);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_25:
    v13 = v27;
    if (v27 == v26)
    {
      goto LABEL_44;
    }
  }

  if (v13 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

  v14 = *(v1 + 32 + 8 * v13);

  v15 = __OFADD__(v13, 1);
  v16 = v13 + 1;
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_100046A58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100046ACC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

void sub_100046B4C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_1000464A0();
}

id sub_100046BD4()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v2)
    {
      v1 = [v2 mediaSourceSemanticType];

      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100046C90(__int16 a1)
{
  v2 = type metadata accessor for CAFMediaSource.SeekDirection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EACF8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006928(v6, qword_1000F3BB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = v2;
    v10 = v3;
    v11 = v9;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = sub_1000462C8(a1 & 0x1FF);
    v15 = sub_100043AF0(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Dialer button pressed: %s", v11, 0xCu);
    sub_100006960(v12);

    v3 = v10;
    v2 = v17;
  }

  if ((a1 & 0x100) != 0)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {

        sub_100047220();
      }
    }

    else if (a1 == 2)
    {

      sub_100047A2C();
    }

    else
    {
      if (a1 == 3)
      {
        v16 = &enum case for CAFMediaSource.SeekDirection.next(_:);
      }

      else
      {
        v16 = &enum case for CAFMediaSource.SeekDirection.previous(_:);
      }

      (*(v3 + 104))(v5, *v16, v2);
      sub_100047490(v5);
      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {

    sub_100046F88(a1);
  }
}

uint64_t sub_100046F88(__int16 a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A634();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  *(v12 + 25) = HIBYTE(a1) & 1;
  aBlock[4] = sub_10004A6B8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = &unk_1000E0B08;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100011378();
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_10004A6EC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100047220()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A634();
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10004A780;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = &unk_1000E0B30;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100011378();
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_10004A6EC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_100047490(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  isa = v33[-1].isa;
  __chkstk_darwin(v33);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EACF8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006928(v10, qword_1000F3BB8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Incrementing to next/prev step", v13, 2u);
  }

  v14 = sub_10004972C();
  if (v14)
  {
    v15 = v14;
    sub_10004A634();
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = v15;
    v38 = sub_10004A814;
    v39 = v17;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100064D70;
    v37 = &unk_1000E0BD0;
    v18 = _Block_copy(&aBlock);

    v19 = v32;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100011378();
    sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
    sub_10004A6EC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v5 + 8))(v7, v4);
LABEL_9:
    (*(isa + 1))(v19, v33);
    return;
  }

  v31 = v5;
  v20 = sub_100049C18(a1);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    sub_10004A634();
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    v25[2] = v2;
    v25[3] = v22;
    v25[4] = v23;
    v38 = sub_10004A7C8;
    v39 = v25;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100064D70;
    v37 = &unk_1000E0B80;
    v26 = _Block_copy(&aBlock);

    v19 = v32;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100011378();
    sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
    sub_10004A6EC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v31 + 8))(v7, v4);
    goto LABEL_9;
  }

  v33 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v33, v27, "Failed to increment to next/prev step", v28, 2u);
  }

  v29 = v33;
}

void sub_100047A2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v26;
  if (v26)
  {
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        sub_100081374(v26);
      }
    }

    if (qword_1000EACF8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006928(v2, qword_1000F3BB8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v5 = 136315394;
      v6 = (v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      v8 = *v6;
      v7 = v6[1];

      v9 = sub_100043AF0(v8, v7, &v25);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v10 = sub_100043AF0(v23[0], v23[1], &v25);

      *(v5 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Tuning with identifier: %s | dialedStationString: %s", v5, 0x16u);
      swift_arrayDestroy();

      return;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v11 = sub_10004A160();
    v12 = sub_10007DF30(v11, 0, v27);

    if ((v12 & 0x100000000) != 0 || (sub_100048398() & 1) == 0)
    {
      if (qword_1000EACF8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006928(v21, qword_1000F3BB8);

      v3 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v3, v16))
      {
        goto LABEL_24;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v22 = sub_100043AF0(v26, v27, v24);

      *(v17 + 4) = v22;
      v20 = "Could not tune to station: %s";
    }

    else
    {
      if (swift_weakLoadStrong())
      {
        swift_beginAccess();
        v13 = swift_unknownObjectWeakLoadStrong();

        if (v13)
        {
          v14 = sub_100046BD4();
          sub_1000822A8(v12, v14);
        }
      }

      if (qword_1000EACF8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006928(v15, qword_1000F3BB8);

      v3 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v3, v16))
      {
        goto LABEL_24;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v19 = sub_100043AF0(v24[0], v24[1], v23);

      *(v17 + 4) = v19;
      v20 = "Tuning with dialedStationString: %s";
    }

    _os_log_impl(&_mh_execute_header, v3, v16, v20, v17, 0xCu);
    sub_100006960(v18);
  }

LABEL_24:
}

uint64_t sub_100048060(uint64_t a1)
{
  if ((a1 & 0x100) == 0)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      countAndFlagsBits = v18._countAndFlagsBits;
      v3 = *(v18._countAndFlagsBits + 16);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      countAndFlagsBits = _swiftEmptyArrayStorage;
      v3 = _swiftEmptyArrayStorage[2];
      if (v3)
      {
LABEL_4:
        v4 = 0;
        v5 = countAndFlagsBits + 5;
        do
        {
          v6 = &v5[2 * v4];
          v7 = v4;
          while (1)
          {
            if (v7 >= countAndFlagsBits[2])
            {
              __break(1u);
              return result;
            }

            v9 = *(v6 - 1);
            v8 = *v6;
            v4 = v7 + 1;
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v10);

            v11 = String.hasPrefix(_:)(v18);

            if (v11)
            {
              break;
            }

            v6 += 2;
            ++v7;
            if (v3 == v4)
            {
              goto LABEL_26;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1000A2C90(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v13 = _swiftEmptyArrayStorage[2];
          v12 = _swiftEmptyArrayStorage[3];
          if (v13 >= v12 >> 1)
          {
            result = sub_1000A2C90((v12 > 1), v13 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v13 + 1;
          v14 = &_swiftEmptyArrayStorage[2 * v13];
          v14[4] = v9;
          v14[5] = v8;
          v5 = countAndFlagsBits + 5;
        }

        while (v3 - 1 != v7);
      }
    }

LABEL_26:

    v17 = _swiftEmptyArrayStorage[2];

    v16 = v17 == 0;
    return !v16;
  }

  if (a1 <= 2u)
  {
    if (!a1)
    {
      return 0;
    }

    if (a1 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v15 = (v18._object >> 56) & 0xF;
      if ((v18._object & 0x2000000000000000) == 0)
      {
        v15 = v18._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v16 = v15 == 0;
      return !v16;
    }
  }

  return sub_100048398();
}

uint64_t sub_100048398()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = sub_10004A160();
  v1 = sub_10007DF30(v0, v24, v25);

  if ((v1 & 0x100000000) != 0)
  {
    goto LABEL_19;
  }

  if (!swift_weakLoadStrong())
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v24;
  if (!v24)
  {
    goto LABEL_19;
  }

  v3 = [v24 mediaSourceSemanticType];
  if (v3 - 1 >= 2 && v3 != 8)
  {
    if (v3 == 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      return 1;
    }

    if (qword_1000EACF8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  v5 = [v24 currentFrequencyRange];
  if (![v5 valueIsInRange:v1])
  {

    goto LABEL_18;
  }

  v6 = [v5 minimumValue];
  v7 = v1 - v6;
  if (v1 < v6)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_15:
    v9 = type metadata accessor for Logger();
    sub_100006928(v9, qword_1000F3BB8);
    v10 = v24;
    v2 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      [v10 mediaSourceSemanticType];
      v14 = CAFMediaSourceSemanticType.description.getter();
      v16 = sub_100043AF0(v14, v15, &v24);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v2, v11, "Using dialer on unsupported media type: %s", v12, 0xCu);
      sub_100006960(v13);

      goto LABEL_19;
    }

LABEL_18:
    goto LABEL_19;
  }

  v8 = [v5 stepValue];

  if (!v8 || !(v7 % v8))
  {
    return 1;
  }

LABEL_19:
  if (qword_1000EACF8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006928(v17, qword_1000F3BB8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = sub_100043AF0(v24, v25, &v23);

    *(v20 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "Can not tune to target frequency: %s", v20, 0xCu);
    sub_100006960(v21);
  }

  return 0;
}

uint64_t sub_100048854()
{
  v1 = OBJC_IVAR____TtC5Media20RadioDialerViewModel__dialedStation;
  v2 = sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Media20RadioDialerViewModel__matchingMulticastStations;
  v4 = sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Media20RadioDialerViewModel__dialedStationString;
  v6 = sub_10000368C(&qword_1000ECE88, &unk_1000B6938);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_weakDestroy();
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for RadioDialerViewModel(uint64_t a1)
{
  result = qword_1000ECDD0;
  if (!qword_1000ECDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000489F8(uint64_t a1)
{
  sub_100045298(319, &qword_1000ECDE0, &qword_1000EC5B0, &qword_1000B7D80);
  if (v1 <= 0x3F)
  {
    sub_100045298(319, &qword_1000ECDE8, &qword_1000EEF30, &qword_1000B68E0);
    if (v2 <= 0x3F)
    {
      sub_100048B34();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100048B34()
{
  if (!qword_1000ECDF0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000ECDF0);
    }
  }
}

Swift::Int sub_100048B84(__int16 a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100) != 0)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        v2 = 2;
      }

      else
      {
        v2 = 0;
      }
    }

    else if (a1 == 2)
    {
      v2 = 3;
    }

    else if (a1 == 3)
    {
      v2 = 4;
    }

    else
    {
      v2 = 5;
    }

    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  return Hasher._finalize()();
}

uint64_t sub_100048C2C@<X0>(uint64_t *a2@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

BOOL sub_100048C7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1] != 1)
  {
    if ((v4 & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1 <= 1u)
  {
    if (*a1)
    {
      v5 = v3 == 1;
    }

    else
    {
      v5 = v3 == 0;
    }
  }

  else if (v2 == 2)
  {
    v5 = v3 == 2;
  }

  else
  {
    if (v2 != 3)
    {
      if (v3 <= 3)
      {
        v4 = 0;
      }

      return v4 == 1;
    }

    v5 = v3 == 3;
  }

  if (!v5)
  {
    LOBYTE(v4) = 0;
  }

  return (v4 & 1) != 0;
}

void sub_100048D1C()
{
  v1 = *v0;
  if (v0[1] == 1)
  {
    if (*v0 <= 1u)
    {
      if (*v0)
      {
        v2 = 2;
      }

      else
      {
        v2 = 0;
      }
    }

    else if (v1 == 2)
    {
      v2 = 3;
    }

    else if (v1 == 3)
    {
      v2 = 4;
    }

    else
    {
      v2 = 5;
    }

    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_100048DA8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }

    else if (v2 == 2)
    {
      v4 = 3;
    }

    else if (v2 == 3)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

    Hasher._combine(_:)(v4);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

void sub_100048E50(uint64_t a1, __int16 a2)
{
  v2 = sub_1000462C8(a2 & 0x1FF);
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_1000464A0();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100020F58();
  v6 = StringProtocol.contains<A>(_:)();

  if ((v6 & 1) == 0)
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      countAndFlagsBits = v25._countAndFlagsBits;
      v8 = *(v25._countAndFlagsBits + 16);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      countAndFlagsBits = _swiftEmptyArrayStorage;
      v8 = _swiftEmptyArrayStorage[2];
      if (v8)
      {
LABEL_4:
        v9 = 0;
        v10 = countAndFlagsBits + 5;
        v11 = _swiftEmptyArrayStorage;
        do
        {
          v24 = v11;
          v12 = &v10[2 * v9];
          v13 = v9;
          while (1)
          {
            if (v13 >= countAndFlagsBits[2])
            {
              __break(1u);
              return;
            }

            v15 = *(v12 - 1);
            v14 = *v12;
            v9 = v13 + 1;
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            v16._countAndFlagsBits = 46;
            v16._object = 0xE100000000000000;
            String.append(_:)(v16);
            v17 = String.hasPrefix(_:)(v25);

            if (v17)
            {
              break;
            }

            v12 += 2;
            ++v13;
            if (v8 == v9)
            {
              v11 = v24;
              goto LABEL_18;
            }
          }

          v18 = v24;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000A2C90(0, v24[2] + 1, 1);
            v18 = v24;
          }

          v20 = v18[2];
          v19 = v18[3];
          if (v20 >= v19 >> 1)
          {
            sub_1000A2C90((v19 > 1), v20 + 1, 1);
            v18 = v24;
          }

          v18[2] = v20 + 1;
          v21 = &v18[2 * v20];
          v21[4] = v15;
          v21[5] = v14;
          v10 = countAndFlagsBits + 5;
          v11 = v18;
        }

        while (v8 - 1 != v13);
        goto LABEL_18;
      }
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_18:

    v22 = v11[2];

    if (v22)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v23._countAndFlagsBits = 46;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
      sub_1000464A0();
    }
  }
}

void sub_100049290(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v1 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v2 = sub_100049644(v11, v12);
    v4 = v3;

    if (v4)
    {
      if (v2 == 46 && v4 == 0xE100000000000000)
      {

        goto LABEL_14;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
LABEL_14:
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v10 = String.count.getter();

        if (v10 >= 2)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          sub_1000496C4();

          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.setter();
          sub_1000464A0();
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1000496C4();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    sub_1000464A0();
    return;
  }

  if (qword_1000EACF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006928(v5, qword_1000F3BB8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Dialer attempting to backspace on empty string", v8, 2u);
  }
}

uint64_t sub_100049644(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

void sub_1000496C4()
{
  v1 = v0[1];
  if ((v1 & 0x2000000000000000) == 0)
  {
    if ((*v0 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v1 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return;
  }

LABEL_5:
  String.index(before:)();

  String.remove(at:)();
}

uint64_t sub_10004972C()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v23;
  if (!v23)
  {
    if (qword_1000EACF8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006928(v8, qword_1000F3BB8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Cannot step to next/prev multicast - dialedStation is nil!", v11, 2u);
    }

    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v23 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  if (v3 < 0)
  {
    goto LABEL_33;
  }

  v4 = 0;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v23 + 8 * v4 + 32);
    }

    ++v4;
    v6 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v7 = *(v5 + v6);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v3 != v4);
LABEL_17:

  v12 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v13 = *(v23 + v12);
  v2 = Array<A>.multicastNeighbor(for:direction:)();

  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v1 = v22;
    if (v22 >> 62)
    {
      goto LABEL_34;
    }

    v14 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      while (1)
      {
        v15 = 0;
        while ((v1 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_24:
          v18 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v19 = *(v16 + v18);
          v20 = CAFMediaItem.isEquivalent(to:)();

          if (v20)
          {

            return v16;
          }

          ++v15;
          if (v17 == v14)
          {
            goto LABEL_35;
          }
        }

        if (v15 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v14 = _CocoaArrayWrapper.endIndex.getter();
        if (!v14)
        {
          goto LABEL_35;
        }
      }

      v16 = *(v1 + 8 * v15 + 32);

      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

LABEL_35:
  }

  else
  {
LABEL_30:
  }

  return 0;
}

uint64_t sub_100049B9C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100049C18(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v1 = v27;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = v1[2];

  if (!v2)
  {
    if (qword_1000EACF8 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = sub_10004A160();
  v4 = sub_10007DF30(v3, v27, v28);

  if ((v4 & 0x100000000) != 0)
  {
    if (qword_1000EACF8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006928(v23, qword_1000F3BB8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Cannot step to next/prev frequency - dialedStationString cannot be converted to UInt32!";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v19, v20, v22, v21, 2u);
    }

LABEL_35:

    return 0;
  }

  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = 0;
    v6 = v27[2];
    v7 = v27 + 5;
    v26 = _swiftEmptyArrayStorage;
LABEL_8:
    v8 = &v7[2 * v5];
    while (1)
    {
      if (v6 == v5)
      {

        break;
      }

      if (v5 >= v27[2])
      {
        __break(1u);
LABEL_41:
        swift_once();
LABEL_28:
        v18 = type metadata accessor for Logger();
        sub_100006928(v18, qword_1000F3BB8);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Cannot step to next/prev frequency - tunable frequencies is empty!";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      v12 = *(v8 - 1);
      v11 = *v8;
      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (v27)
        {
          v13 = [v27 mediaSourceSemanticType];

          if (v13 == 2 || v13 == 8)
          {
            v9 = 1000;
          }

          else
          {
            v9 = 1;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }

      v9 = 1;
LABEL_11:
      ++v5;
      v8 += 2;
      v10 = sub_10007DF30(v9, v12, v11);

      if ((v10 & 0x100000000) == 0)
      {
        v15 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1000A2734(0, *(v26 + 2) + 1, 1, v26);
        }

        v7 = v27 + 5;
        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        if (v17 >= v16 >> 1)
        {
          v15 = sub_1000A2734((v16 > 1), v17 + 1, 1, v15);
        }

        *(v15 + 2) = v17 + 1;
        v26 = v15;
        *&v15[4 * v17 + 32] = v10;
        goto LABEL_8;
      }
    }
  }

  v25 = Array<A>.frequencyNeighbor(for:direction:)();

  if ((v25 & 0x100000000) != 0)
  {
    return 0;
  }

  sub_100046BD4();
  return UInt32.formattedUserEnteredFrequency(mediaSourceType:)();
}

void sub_10004A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_1000464A0();
}

uint64_t sub_10004A160()
{
  if (!swift_weakLoadStrong())
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v3)
  {
    return 1;
  }

  v0 = [v3 mediaSourceSemanticType];

  if (v0 == 2 || v0 == 8)
  {
    return 1000;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10004A228@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10004A2A8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10004A324@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10004A3A4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10004A420(uint64_t a1)
{
  v2 = sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC5Media20RadioDialerViewModel__dialedStation;
  v11 = 0;
  sub_10000368C(&qword_1000EC5B0, &qword_1000B7D80);
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v6, v5, v2);
  swift_weakInit();
  swift_weakAssign();
  swift_beginAccess();
  v9 = 0;
  v10 = 0xE000000000000000;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  (*(v3 + 8))(v1 + v6, v2);
  v9 = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v9 = _swiftEmptyArrayStorage;
  sub_10000368C(&qword_1000EEF30, &qword_1000B68E0);
  Published.init(initialValue:)();
  swift_endAccess();
  return v1;
}

unint64_t sub_10004A634()
{
  result = qword_1000EC7C0;
  if (!qword_1000EC7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EC7C0);
  }

  return result;
}

uint64_t sub_10004A680()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_10004A6D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004A6EC()
{
  result = qword_1000EB850;
  if (!qword_1000EB850)
  {
    sub_100005780(&unk_1000EC7D0, &qword_1000B5D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB850);
  }

  return result;
}

uint64_t sub_10004A788()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004A7D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for DialerButtonType(unsigned __int16 *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DialerButtonType(_WORD *result, int a2, int a3)
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

uint64_t sub_10004A94C(unsigned __int8 *a1)
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

_BYTE *sub_10004A96C(_BYTE *result, int a2)
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

unint64_t sub_10004A9A4()
{
  result = qword_1000ECE90;
  if (!qword_1000ECE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECE90);
  }

  return result;
}

void *sub_10004AA10(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v49 = _swiftEmptyArrayStorage;
    sub_1000A2D34(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_10004B294(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v44;
        v49 = v44;
        v23 = v44[2];
        v22 = v44[3];
        if (v23 >= v22 >> 1)
        {
          sub_1000A2D34((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        v21[2] = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          sub_10000368C(&unk_1000ECF50, qword_1000B6BB0);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_10002D0A8(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = (1 << *(v17 + 32));
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = (__clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_10002D0A8(v14, v15, 0);
                v25 = (__clz(__rbit64(v32)) + v29);
                goto LABEL_33;
              }
            }

            result = sub_10002D0A8(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_10004AE1C()
{
  sub_100005A50(0, &qword_1000ECF68, NSString_ptr);
  result = NSString.init(stringLiteral:)();
  qword_1000ECEA0 = result;
  return result;
}

void sub_10004AF34(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v11 = a3;
    v9 = [v8 sharedApplication];
    v10 = [v9 delegate];

    if (v10)
    {
      type metadata accessor for AppDelegate(0);
      swift_dynamicCastClassUnconditional();
      a4(v7);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10004B180(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RadioWindowSceneDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10004B294(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100005A50(0, &qword_1000ECF40, UIOpenURLContext_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100005A50(0, &qword_1000ECF40, UIOpenURLContext_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_10004B4B8(void *a1, void *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = a1;
  v8 = [a2 role];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {

LABEL_8:
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006928(v15, qword_1000F3B58);
      oslog = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v16, "Received an unknown scene, ignoring.", v17, 2u);
      }

      return;
    }
  }

  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000B4FC0;
  *(v18 + 32) = v2;
  v19 = v2;
  sub_10000368C(&qword_1000ECF60, &qword_1000B6BC8);
  v20.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (qword_1000EAD18 != -1)
  {
    swift_once();
  }

  [v6 _registerSettingsDiffActionArray:v20.super.isa forKey:qword_1000ECEA0];

  v21 = [objc_opt_self() sharedApplication];
  v22 = [v21 delegate];

  if (v22)
  {
    type metadata accessor for AppDelegate(0);
    swift_dynamicCastClassUnconditional();
    sub_1000A9568(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_10004B7DC(void *a1)
{
  v2 = [a1 session];
  v3 = [v2 role];

  CAFSignpostEmit_SceneWillEnterForeground();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = a1;
    v8 = [v6 sharedApplication];
    v9 = [v8 delegate];

    if (v9)
    {
      type metadata accessor for AppDelegate(0);
      swift_dynamicCastClassUnconditional();
      sub_1000AAD14(v5);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10004B910(uint64_t a1)
{
  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B58);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    sub_10004AA10(a1);
    type metadata accessor for URL();
    v7 = Array.description.getter();
    v9 = v8;

    v10 = sub_100043AF0(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received URL contexts %{public}s", v5, 0xCu);
    sub_100006960(v6);
  }

  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 delegate];

  if (v12)
  {
    type metadata accessor for AppDelegate(0);
    swift_dynamicCastClassUnconditional();
    sub_1000AB230(a1);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_10004BB24(void *a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = [a1 _FBSScene];
  v10 = [v3 settings];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    if (a2)
    {
      v5 = v4;
      sub_100005A50(0, &qword_1000ECF30, UIWindowScene_ptr);
      v6 = [swift_getObjCClassFromMetadata() _sceneForFBSScene:a2];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 traitOverrides];
        v9 = [v5 iconStyleConfiguration];
        sub_100005A50(0, &qword_1000ECF38, SBSUITraitHomeScreenIconStyle_ptr);
        [v8 setObject:v9 forTrait:swift_getObjCClassFromMetadata()];

        swift_unknownObjectRelease();
      }

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

LABEL_6:
}

unint64_t sub_10004BC80()
{
  result = qword_1000ECF48;
  if (!qword_1000ECF48)
  {
    sub_100005A50(255, &qword_1000ECF40, UIOpenURLContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECF48);
  }

  return result;
}

void sub_10004BD10()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for RadioFavoritesViewController();
  objc_msgSendSuper2(&v18, "viewDidLayoutSubviews");
  v1 = 5;
  do
  {
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = v2;
    v4 = [v2 safeAreaLayoutGuide];

    [v4 layoutFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v19.origin.x = v6;
    v19.origin.y = v8;
    v19.size.width = v10;
    v19.size.height = v12;
    v13 = floor(CGRectGetWidth(v19) + -45.0 + -12.0) / (v1 + 1);
    v14 = floor(v13);
    if (v1 < 2)
    {
      break;
    }

    --v1;
  }

  while (v14 < 87.0);
  v15 = floor(v13 + 6.0 + 26.0);
  v16 = &v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize];
  if (v14 != *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize] || v15 != *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize + 8])
  {
    *v16 = v14;
    v16[1] = v15;
    sub_10004FC40();
  }
}

void sub_10004BECC()
{
  v1 = v0;
  v111 = sub_10000368C(&qword_1000ED118, &qword_1000B6CC8);
  v2 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = &v90 - v3;
  v105 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = (&v90 - v4);
  v117 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v107 = *(v117 - 1);
  __chkstk_darwin(v117);
  v106 = &v90 - v5;
  v100 = sub_10000368C(&unk_1000ED120, &qword_1000B6CD0);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v90 - v6;
  v7 = sub_10000368C(&qword_1000EC5A8, &unk_1000B5A10);
  v108 = *(v7 - 1);
  v109 = v7;
  __chkstk_darwin(v7);
  v101 = &v90 - v8;
  v9 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v9 - 8);
  v116 = &v90 - v10;
  v94 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  v93 = *(v94 - 1);
  __chkstk_darwin(v94);
  v92 = &v90 - v11;
  v97 = sub_10000368C(&unk_1000EBDA0, &qword_1000BA850);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v90 - v12;
  v13 = type metadata accessor for RadioFavoritesViewController();
  v121.receiver = v0;
  v121.super_class = v13;
  objc_msgSendSuper2(&v121, "viewDidLoad");
  if (_UISolariumEnabled())
  {
    v14 = [v0 view];
    if (!v14)
    {
LABEL_41:
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = objc_opt_self();
    v17 = [v16 clearColor];
    [v15 setBackgroundColor:v17];

    v18 = *&v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView];
    v19 = [v16 clearColor];
    [v18 setBackgroundColor:v19];
  }

  else
  {
    v18 = *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView];
    sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
    v19 = static UIColor.cafui_tableBackground.getter();
    [v18 setBackgroundColor:v19];
  }

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  type metadata accessor for RadioFavoritesCollectionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  [v18 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v21];

  v22 = [v1 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_35;
  }

  v23 = v22;
  v90 = v2;
  [v22 addSubview:v18];

  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000B4FB0;
  v25 = [v18 leadingAnchor];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v27 = v26;
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 leadingAnchor];
  v30 = [v25 constraintEqualToAnchor:v29];

  *(v24 + 32) = v30;
  v31 = [v18 trailingAnchor];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v33 = v32;
  v34 = [v32 safeAreaLayoutGuide];

  v35 = [v34 trailingAnchor];
  v36 = [v31 constraintEqualToAnchor:v35];

  *(v24 + 40) = v36;
  v37 = [v18 bottomAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v39 = v38;
  v40 = v1;
  v41 = [v38 bottomAnchor];

  v42 = [v37 constraintEqualToAnchor:v41];
  *(v24 + 48) = v42;
  v43 = [v18 topAnchor];
  v44 = [v1 view];
  if (!v44)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v45 = v44;
  v46 = objc_opt_self();
  v47 = [v45 topAnchor];

  v48 = [v43 constraintEqualToAnchor:v47];
  *(v24 + 56) = v48;
  sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 activateConstraints:isa];

  [v18 setDelegate:v40];
  [v18 setDataSource:v40];
  [v18 setDragInteractionEnabled:0];
  [v18 setAllowsMultipleSelection:0];
  v50 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v40 action:"longPressGestureChangedWithGesture:"];
  v51 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_longPressRecognizer;
  v52 = *&v40[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_longPressRecognizer];
  *&v40[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_longPressRecognizer] = v50;
  v53 = v50;

  if (!v53)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v53 setMinimumPressDuration:0.25];

  if (!*&v40[v51])
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v18 addGestureRecognizer:?];
  sub_1000505B8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v56 = Strong;

    if (v55)
    {
      swift_beginAccess();
      sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
      v102 = v55;
      v57 = v92;
      Published.projectedValue.getter();
      swift_endAccess();
      v58 = objc_opt_self();
      v59 = [v58 mainRunLoop];
      v120 = v59;
      v60 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v61 = *(v60 - 8);
      v62 = *(v61 + 56);
      v114 = v61 + 56;
      v115 = v62;
      v63 = v116;
      v62(v116, 1, 1, v60);
      v113 = sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
      v91 = &protocol conformance descriptor for Published<A>.Publisher;
      sub_100005870(&unk_1000EBE10, &unk_1000ED130, &unk_1000B50E0, &protocol conformance descriptor for Published<A>.Publisher);
      v112 = sub_10001ADF4();
      v64 = v95;
      v65 = v94;
      Publisher.receive<A>(on:options:)();
      sub_1000057C8(v63);

      (*(v93 + 8))(v57, v65);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v94 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
      sub_100005870(&qword_1000EEFC0, &unk_1000EBDA0, &qword_1000BA850, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v66 = v97;
      Publisher<>.sink(receiveValue:)();

      (*(v96 + 8))(v64, v66);
      v67 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_cancelSet;
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      swift_beginAccess();
      sub_10000368C(&unk_1000ED150, &unk_1000B6130);
      v68 = v98;
      Published.projectedValue.getter();
      swift_endAccess();
      v69 = [v58 mainRunLoop];
      v120 = v69;
      v115(v63, 1, 1, v60);
      sub_100005870(&qword_1000EC910, &unk_1000ED120, &qword_1000B6CD0, v91);
      v70 = v101;
      v71 = v100;
      Publisher.receive<A>(on:options:)();
      sub_1000057C8(v63);

      (*(v99 + 8))(v68, v71);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100005870(&unk_1000ED160, &qword_1000EC5A8, &unk_1000B5A10, v94);
      v72 = v109;
      Publisher<>.sink(receiveValue:)();

      (*(v108 + 8))(v70, v72);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      swift_beginAccess();
      sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
      v73 = v103;
      Published.projectedValue.getter();
      swift_endAccess();
      v109 = v58;
      v74 = [v58 mainRunLoop];
      v120 = v74;
      v108 = v60;
      v115(v63, 1, 1, v60);
      sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, v91);
      v75 = v106;
      v76 = v105;
      Publisher.receive<A>(on:options:)();
      sub_1000057C8(v63);

      v77 = v102;
      (*(v104 + 8))(v73, v76);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0, v94);
      v78 = v117;
      Publisher<>.sink(receiveValue:)();

      (*(v107 + 8))(v75, v78);
      swift_beginAccess();
      v107 = v67;
      AnyCancellable.store(in:)();
      swift_endAccess();

      v79 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
      swift_beginAccess();
      v80 = *(v77 + v79);
      if (v80)
      {
        v81 = v80 & 0xFFFFFFFFFFFFFF8;
        if (v80 >> 62)
        {
          goto LABEL_33;
        }

        v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

        if (v82)
        {
          v83 = 0;
          v106 = (v80 & 0xC000000000000001);
          v103 = (v90 + 8);
          v105 = v80;
          v104 = v81;
          do
          {
            if (v106)
            {
              v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v85 = v83 + 1;
              if (__OFADD__(v83, 1))
              {
LABEL_28:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v83 >= *(v81 + 16))
              {
                __break(1u);
LABEL_33:
                v82 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_19;
              }

              v84 = *(v80 + 8 * v83 + 32);
              v85 = v83 + 1;
              if (__OFADD__(v83, 1))
              {
                goto LABEL_28;
              }
            }

            v117 = v84;
            v118 = dispatch thunk of CAFMediaSourceObservable.$disabled.getter();
            v86 = [v109 mainRunLoop];
            v119 = v86;
            v87 = v116;
            v115(v116, 1, 1, v108);
            sub_10000368C(&qword_1000ED170, &qword_1000B6CD8);
            sub_100005870(&qword_1000ED178, &qword_1000ED170, &qword_1000B6CD8, &protocol conformance descriptor for AnyPublisher<A, B>);
            v88 = v110;
            Publisher.receive<A>(on:options:)();
            sub_1000057C8(v87);

            swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_100005870(&unk_1000ED180, &qword_1000ED118, &qword_1000B6CC8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
            v89 = v111;
            Publisher<>.sink(receiveValue:)();

            (*v103)(v88, v89);
            swift_beginAccess();
            v80 = v105;
            AnyCancellable.store(in:)();
            swift_endAccess();

            v81 = v104;

            ++v83;
          }

          while (v85 != v82);
        }
      }
    }
  }

  sub_10004E3C0();
}

void sub_10004D1C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10004FC40();
  }
}

void sub_10004D21C(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for IndexPath();
  v2 = *(v37 - 8);
  v3 = __chkstk_darwin(v37);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
      v11 = v9;

      if (v10)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v38 == 1)
        {
          sub_10004DB14();
LABEL_25:

          return;
        }
      }
    }

    v12 = &v8[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex];
    *v12 = 0;
    v12[8] = 1;
    v30 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView;
    v13 = [*&v8[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView] indexPathsForVisibleItems];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v14 + 16);
    v35 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
    swift_beginAccess();
    v36 = v15;
    if (!v15)
    {
      v17 = _swiftEmptyArrayStorage;
LABEL_22:

      if (v17[2])
      {
        v27 = *&v8[v30];
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v27 reconfigureItemsAtIndexPaths:isa];

        v8 = isa;
      }

      else
      {
      }

      goto LABEL_25;
    }

    v16 = 0;
    v34 = v2 + 16;
    v32 = (v2 + 32);
    v17 = _swiftEmptyArrayStorage;
    v31 = v8;
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return;
      }

      v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v19 = *(v2 + 72);
      (*(v2 + 16))(v6, v14 + v18 + v19 * v16, v37);
      v20 = IndexPath.item.getter();
      v21 = *&v8[v35];
      if (v21 >> 62)
      {
        if (v20 >= _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_8;
        }
      }

      else if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

      if (!IndexPath.section.getter())
      {
        v22 = *v32;
        (*v32)(v33, v6, v37);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000A2CB0(0, v17[2] + 1, 1);
          v17 = v39;
        }

        v25 = v17[2];
        v24 = v17[3];
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v29 = v22;
          sub_1000A2CB0((v24 > 1), v25 + 1, 1);
          v26 = v25 + 1;
          v22 = v29;
          v17 = v39;
        }

        v17[2] = v26;
        v22(v17 + v18 + v25 * v19, v33, v37);
        v8 = v31;
        goto LABEL_9;
      }

LABEL_8:
      (*(v2 + 8))(v6, v37);
LABEL_9:
      if (v36 == ++v16)
      {
        goto LABEL_22;
      }
    }
  }
}

void sub_10004D64C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (v9)
    {
      sub_10004DB14();
LABEL_23:

      return;
    }

    v12 = Strong + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex;
    *v12 = 0;
    *(v12 + 8) = 1;
    v28 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView;
    v13 = [*(Strong + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView) indexPathsForVisibleItems];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v14 + 16);
    v35 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
    swift_beginAccess();
    v36 = v15;
    if (!v15)
    {
      v32 = _swiftEmptyArrayStorage;
LABEL_20:

      if (v32[2])
      {
        v26 = *&v11[v28];
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v26 reconfigureItemsAtIndexPaths:isa];

        v11 = isa;
      }

      else
      {
      }

      goto LABEL_23;
    }

    v16 = 0;
    v34 = v4 + 16;
    v31 = (v4 + 32);
    v32 = _swiftEmptyArrayStorage;
    v29 = v11;
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return;
      }

      v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v18 = *(v4 + 72);
      (*(v4 + 16))(v8, v14 + v17 + v18 * v16, v3);
      v19 = IndexPath.item.getter();
      v20 = *&v11[v35];
      if (v20 >> 62)
      {
        if (v19 >= _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_6;
        }
      }

      else if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

      if (!IndexPath.section.getter())
      {
        v30 = *v31;
        v30(v33, v8, v3);
        v21 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000A2CB0(0, v21[2] + 1, 1);
          v21 = v37;
        }

        v24 = v21[2];
        v23 = v21[3];
        v25 = (v24 + 1);
        if (v24 >= v23 >> 1)
        {
          v32 = (v24 + 1);
          sub_1000A2CB0((v23 > 1), v24 + 1, 1);
          v25 = v32;
          v21 = v37;
        }

        v21[2] = v25;
        v32 = v21;
        v30(v21 + v17 + v24 * v18, v33, v3);
        v11 = v29;
        goto LABEL_7;
      }

LABEL_6:
      (*(v4 + 8))(v8, v3);
LABEL_7:
      if (v36 == ++v16)
      {
        goto LABEL_20;
      }
    }
  }
}

void sub_10004DB14()
{
  v1 = type metadata accessor for IndexPath();
  v79 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v73 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v69 - v5;
  v7 = __chkstk_darwin(v4);
  v9 = (&v69 - v8);
  __chkstk_darwin(v7);
  v11 = &v69 - v10;
  v74 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v75 = v1;
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v14 = Strong;

    if (v13)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v1 = v75;

      v76 = v83;
      if (v83)
      {
        v15 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
        v71 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
        v16 = v74;
        swift_beginAccess();
        v6 = *(v16 + v15);
        v72 = v9;
        if (v6 >> 62)
        {
          goto LABEL_71;
        }

        v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }
    }
  }

  v23 = v74;
  v24 = v74 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex;
  *v24 = 0;
  *(v24 + 8) = 1;
  v71 = *(v23 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView);
  v25 = [v71 indexPathsForVisibleItems];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = *(v11 + 2);
  v27 = v23;
  v77 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  v78 = v26;
  if (!v26)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_29:

    if (v30[2])
    {
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v71 reconfigureItemsAtIndexPaths:isa];

      return;
    }

    goto LABEL_66;
  }

  v28 = 0;
  v76 = v79 + 16;
  v29 = (v79 + 8);
  v72 = (v79 + 32);
  v30 = _swiftEmptyArrayStorage;
  while (v28 < *(v11 + 2))
  {
    v31 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v32 = *(v79 + 72);
    (*(v79 + 16))(v6, &v11[v31 + v32 * v28], v1);
    v33 = IndexPath.item.getter();
    v34 = *(v27 + v77);
    if (v34 >> 62)
    {
      v39 = v33;
      v40 = _CocoaArrayWrapper.endIndex.getter();
      v41 = v39;
      v27 = v74;
      if (v41 >= v40)
      {
        goto LABEL_15;
      }
    }

    else if (v33 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    if (!IndexPath.section.getter())
    {
      v35 = *v72;
      (*v72)(v73, v6, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000A2CB0(0, v30[2] + 1, 1);
        v30 = v82;
      }

      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        sub_1000A2CB0((v37 > 1), v38 + 1, 1);
        v30 = v82;
      }

      v30[2] = v38 + 1;
      v1 = v75;
      v35(v30 + v31 + v38 * v32, v73, v75);
      v27 = v74;
      goto LABEL_16;
    }

LABEL_15:
    (*v29)(v6, v1);
LABEL_16:
    if (v78 == ++v28)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  v18 = _swiftEmptyArrayStorage;
  if (!v17)
  {
LABEL_33:
    if (v18 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v44 = 0;
    while (1)
    {
      if (v6 == v44)
      {
        v50 = 0;
        goto LABEL_47;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v44 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v45 = *(v18 + 8 * v44 + 32);
      }

      v46 = v45;
      v47 = *(v76 + v43);
      v48 = CAFMediaItem.isEquivalent(to:)();

      if (v48)
      {
        break;
      }

      if (__OFADD__(v44++, 1))
      {
        goto LABEL_70;
      }
    }

    v50 = v44;
LABEL_47:

    v51 = v74;
    v52 = v74 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex;
    *v52 = v50;
    *(v52 + 8) = v6 == v44;
    v70 = *(v51 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView);
    v53 = [v70 indexPathsForVisibleItems];
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v78 = *(v6 + 16);
    if (v78)
    {
      v54 = 0;
      v77 = v79 + 16;
      v55 = (v79 + 8);
      v73 = (v79 + 32);
      v56 = _swiftEmptyArrayStorage;
      v58 = v71;
      v57 = v72;
      while (1)
      {
        if (v54 >= *(v6 + 16))
        {
          goto LABEL_68;
        }

        v59 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v60 = *(v79 + 72);
        (*(v79 + 16))(v11, v6 + v59 + v60 * v54, v75);
        v61 = IndexPath.item.getter();
        v62 = *&v58[v74];
        if (v62 >> 62)
        {
          if (v61 >= _CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_49;
          }
        }

        else if (v61 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        if (!IndexPath.section.getter())
        {
          v63 = *v73;
          (*v73)(v57, v11, v75);
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v80 = v56;
          if ((v64 & 1) == 0)
          {
            sub_1000A2CB0(0, v56[2] + 1, 1);
            v56 = v80;
          }

          v66 = v56[2];
          v65 = v56[3];
          if (v66 >= v65 >> 1)
          {
            sub_1000A2CB0((v65 > 1), v66 + 1, 1);
            v56 = v80;
          }

          v56[2] = v66 + 1;
          v67 = v56 + v59 + v66 * v60;
          v57 = v72;
          v63(v67, v72, v75);
          v58 = v71;
          goto LABEL_50;
        }

LABEL_49:
        (*v55)(v11, v75);
LABEL_50:
        if (v78 == ++v54)
        {
          goto LABEL_63;
        }
      }
    }

    v56 = _swiftEmptyArrayStorage;
LABEL_63:

    if (v56[2])
    {
      v68 = Array._bridgeToObjectiveC()().super.isa;

      [v70 reconfigureItemsAtIndexPaths:v68];
    }

    else
    {
    }

LABEL_66:

    return;
  }

  v81 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v17 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v6 + 8 * v19 + 32);
      }

      ++v19;
      v21 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v22 = *(v20 + v21);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v17 != v19);

    v18 = v81;
    goto LABEL_33;
  }

  __break(1u);
}

uint64_t sub_10004E3C0()
{
  v0 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_10000368C(&qword_1000EC880, &qword_1000B60F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = sub_10000368C(&qword_1000ED0F0, &qword_1000B6C60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = sub_10000368C(&qword_1000ED0F8, &qword_1000B6C68);
  v18 = *(v11 - 8);
  v19 = v11;
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000368C(&qword_1000EEF30, &qword_1000B68E0);
  sub_100005870(&qword_1000ED100, &qword_1000EC880, &qword_1000B60F0, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher.map<A>(_:)();
  (*(v4 + 8))(v6, v3);
  v14 = [objc_opt_self() mainRunLoop];
  v20 = v14;
  v15 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
  sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
  sub_100005870(&qword_1000ED108, &qword_1000ED0F0, &qword_1000B6C60, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10001ADF4();
  Publisher.receive<A>(on:options:)();
  sub_1000057C8(v2);

  (*(v8 + 8))(v10, v7);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005870(&qword_1000ED110, &qword_1000ED0F8, &qword_1000B6C68, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v16 = v19;
  Publisher<>.sink(receiveValue:)();

  (*(v18 + 8))(v13, v16);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

double sub_10004E8C0@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v3 = v2;
  }

  *a2 = v3;

  return result;
}

void sub_10004E8DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = a2;
    v10 = Strong + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex;
    *v10 = 0;
    *(v10 + 8) = 1;
    v11 = Strong;
    v36 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView;
    v12 = [*(Strong + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView) indexPathsForVisibleItems];
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v13 + 16);
    v44 = v11;
    v42 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
    swift_beginAccess();
    v43 = v14;
    if (v14)
    {
      v15 = 0;
      v41 = v4 + 16;
      v39 = (v4 + 32);
      v16 = _swiftEmptyArrayStorage;
      v38 = v3;
      while (1)
      {
        if (v15 >= *(v13 + 16))
        {
          __break(1u);
          return;
        }

        v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v18 = *(v4 + 72);
        (*(v4 + 16))(v8, v13 + v17 + v18 * v15, v3);
        v19 = IndexPath.item.getter();
        v20 = *(v44 + v42);
        if (v20 >> 62)
        {
          if (v19 >= _CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_4;
          }
        }

        else if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_4;
        }

        if (!IndexPath.section.getter())
        {
          v21 = *v39;
          (*v39)(v40, v8, v3);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000A2CB0(0, v16[2] + 1, 1);
            v16 = v45;
          }

          v24 = v16[2];
          v23 = v16[3];
          v25 = v24 + 1;
          if (v24 >= v23 >> 1)
          {
            v35 = v21;
            sub_1000A2CB0((v23 > 1), v24 + 1, 1);
            v25 = v24 + 1;
            v21 = v35;
            v16 = v45;
          }

          v16[2] = v25;
          v26 = v16 + v17 + v24 * v18;
          v3 = v38;
          v21(v26, v40, v38);
          goto LABEL_5;
        }

LABEL_4:
        (*(v4 + 8))(v8, v3);
LABEL_5:
        if (v43 == ++v15)
        {
          goto LABEL_18;
        }
      }
    }

    v16 = _swiftEmptyArrayStorage;
LABEL_18:

    if (v16[2])
    {
      v27 = v44;
      v28 = *(v44 + v36);
      v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v28 reconfigureItemsAtIndexPaths:v29.super.isa];
    }

    else
    {

      v29.super.isa = v44;
    }
  }

  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    sub_10004FC40();
  }

  swift_beginAccess();
  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32)
  {
    v33 = v32;
    sub_10004DB14();
  }
}

id sub_10004ECE8(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = [a1 state];
  if (v10 == 3)
  {
    [*(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView) endInteractiveMovement];
LABEL_12:

    return sub_10004E3C0();
  }

  if (v10 != 2)
  {
    if (v10 == 1)
    {
      v11 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesObserverSet;
      swift_beginAccess();
      *(v1 + v11) = &_swiftEmptySetSingleton;

      v12 = *(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView);
      [a1 locationInView:v12];
      result = [v12 indexPathForItemAtPoint:?];
      if (result)
      {
        v14 = result;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v4 + 32))(v9, v7, v3);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v12 beginInteractiveMovementForItemAtIndexPath:isa];

        return (*(v4 + 8))(v9, v3);
      }

      return result;
    }

    [*(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView) cancelInteractiveMovement];
    goto LABEL_12;
  }

  v16 = *(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView);
  [a1 locationInView:v16];

  return [v16 updateInteractiveMovementTargetPosition:?];
}

unint64_t sub_10004F354(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100050B50(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

char *sub_10004F798(void *a1)
{
  v2 = v1;
  type metadata accessor for RadioFavoritesCollectionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8;
  v10 = IndexPath.row.getter();
  v11 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 8 * v10 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_8:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v15 = Strong, v16 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar], v15, v16))
  {
    v17 = sub_100082858(v13);

    if (v17)
    {
      v18 = 0x10000;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex + 8))
  {
    v19 = 0;
  }

  else
  {
    v20 = *(v2 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex);
    v19 = IndexPath.item.getter() == v20;
  }

  if (*(v2 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites))
  {
    v21 = 256;
  }

  else
  {
    v21 = 0;
  }

  v22 = v18 | v19 | v21;
  v23 = &v9[OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config];
  *v23 = v13;
  v23[10] = BYTE2(v18);
  *(v23 + 4) = v22;
  swift_retain_n();

  v24 = v7;
  [v9 setNeedsUpdateConfiguration];

  return v9;
}

void sub_10004FC40()
{
  v1 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v1 - 8);
  v38 = &v31 - v2;
  v39 = sub_10000368C(&unk_1000EC890, &unk_1000B6100);
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v31 - v4;
  v36 = sub_10000368C(&unk_1000ED0B0, &unk_1000BA840);
  v5 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = &v31 - v6;
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v44)
  {
    v8 = v44;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = (v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesCancelSet);
  swift_beginAccess();
  v35 = v9;
  *v9 = &_swiftEmptySetSingleton;

  v31 = v8 >> 62;
  v41 = v0;
  v42 = v8;
  if (v8 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v40 = v10;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = v10;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  v34 = objc_opt_self();
  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  v11 = 0;
  v32 = (v3 + 8);
  v33 = v42 & 0xC000000000000001;
  v12 = (v5 + 8);
  v13 = v37;
  do
  {
    if (v33)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v42 + 8 * v11 + 32);
    }

    ++v11;
    swift_beginAccess();
    sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
    Published.projectedValue.getter();
    swift_endAccess();
    v15 = [v34 mainRunLoop];
    v43 = v15;
    v16 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v17 = v38;
    (*(*(v16 - 8) + 56))(v38, 1, 1, v16);
    sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
    sub_100005870(&unk_1000EC8E0, &unk_1000EC890, &unk_1000B6100, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10001ADF4();
    v18 = v39;
    Publisher.receive<A>(on:options:)();
    sub_1000057C8(v17);

    (*v32)(v13, v18);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v14;
    sub_100005870(&unk_1000EEFE0, &unk_1000ED0B0, &unk_1000BA840, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v21 = v36;
    Publisher<>.sink(receiveValue:)();

    (*v12)(v7, v21);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  while (v40 != v11);
LABEL_15:
  if (qword_1000EAD08 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006928(v22, qword_1000F3BE8);
  v23 = v42;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v41;
  if (v26)
  {
    v28 = swift_slowAlloc();
    *v28 = 134349056;
    if (v31)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v28 + 4) = v29;

    _os_log_impl(&_mh_execute_header, v24, v25, "Reloading %{public}ld favorite(s)", v28, 0xCu);
  }

  else
  {
  }

  v30 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  *(v27 + v30) = v23;

  [*(v27 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView) reloadData];
  sub_1000505B8();
  if (!v40)
  {
    if (*(v27 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites))
    {
      *(v27 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites) = 0;
      sub_10004FC40();
    }
  }
}

void sub_100050318(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
    swift_beginAccess();
    v7 = *&v5[v6];
    if (v7 >> 62)
    {
LABEL_25:
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = (a3 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);

    swift_beginAccess();
    a3 = 0;
    while (1)
    {
      if (v8 == a3)
      {

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v10 = *(v7 + 8 * a3 + 32);
      }

      v11 = (v10 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      if (*v11 == *v9 && v11[1] == v9[1])
      {

        goto LABEL_21;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        break;
      }

      if (__OFADD__(a3++, 1))
      {
        goto LABEL_24;
      }
    }

LABEL_21:
    v15 = *&v5[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView];
    sub_10000368C(&unk_1000ED0E0, &unk_1000B6C50);
    type metadata accessor for IndexPath();
    *(swift_allocObject() + 16) = xmmword_1000B4760;
    v16 = v15;
    IndexPath.init(item:section:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 reconfigureItemsAtIndexPaths:isa];
  }
}

void sub_1000505B8()
{
  v1 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_emptyLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_emptyLabel);
  v3 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v2 == 0) == (v5 == 0))
  {
    if (v5)
    {
      v6 = *(v0 + v1);
      if (v6)
      {
        [v6 removeFromSuperview];
        isa = *(v0 + v1);
      }

      else
      {
        isa = 0;
      }

      *(v0 + v1) = 0;
    }

    else
    {
      v8 = [objc_allocWithZone(UILabel) init];
      [v8 setTextAlignment:1];
      v9 = [objc_opt_self() mainBundle];
      v32._object = 0xE000000000000000;
      v10._countAndFlagsBits = 0x524F5641465F4F4ELL;
      v10._object = 0xEC00000053455449;
      v11.value._countAndFlagsBits = 0x6F69646152;
      v11.value._object = 0xE500000000000000;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      v32._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v32);

      String.init(format:_:)();

      v13 = String._bridgeToObjectiveC()();

      [v8 setText:v13];

      v14 = v8;
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = [objc_opt_self() secondaryLabelColor];
      [v14 setTextColor:v15];

      v16 = [objc_opt_self() boldSystemFontOfSize:18.0];
      [v14 setFont:v16];

      v17 = v14;
      v18 = String._bridgeToObjectiveC()();
      [v17 setAccessibilityIdentifier:v18];

      v19 = *(v0 + v1);
      *(v0 + v1) = v17;
      v20 = v17;

      v21 = *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView);
      [v21 addSubview:v20];
      v22 = objc_opt_self();
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000B6BD0;
      v24 = [v20 centerYAnchor];
      v25 = [v21 safeAreaLayoutGuide];
      v26 = [v25 centerYAnchor];

      v27 = [v24 constraintEqualToAnchor:v26];
      *(v23 + 32) = v27;
      v28 = [v20 centerXAnchor];

      v29 = [v21 safeAreaLayoutGuide];
      v30 = [v29 centerXAnchor];

      v31 = [v28 constraintEqualToAnchor:v30];
      *(v23 + 40) = v31;
      sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v22 activateConstraints:isa];
    }
  }
}

id sub_100050A4C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RadioFavoritesViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100050B50(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_100050BBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050BF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100050C4C(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_emptyLabel] = 0;
  v2 = &_swiftEmptySetSingleton;
  v3 = &_swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v3 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v3 = &_swiftEmptySetSingleton;
    }

    v2 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_cancelSet] = v3;
  v4 = &v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesCancelSet;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v6 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v6 = &_swiftEmptySetSingleton;
    }

    *&v1[v5] = v6;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v2 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    *&v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesCancelSet] = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesObserverSet] = v2;
  *&v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_longPressRecognizer] = 0;
  v7 = &v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex];
  *v7 = 0;
  v7[8] = 1;
  v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites] = 0;
  swift_unknownObjectWeakAssign();
  v8 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  v9 = [objc_allocWithZone(UICollectionView) initWithFrame:v8 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView] = v9;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for RadioFavoritesViewController();
  return objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
}

void sub_100050E4C()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_emptyLabel) = 0;
  v1 = &_swiftEmptySetSingleton;
  v2 = &_swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v2 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }
  }

  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_cancelSet) = v2;
  v3 = (v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesCancelSet;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v5 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v5 = &_swiftEmptySetSingleton;
    }

    *(v0 + v4) = v5;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v1 = sub_100003210(_swiftEmptyArrayStorage);
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesCancelSet) = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesObserverSet) = v1;
  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_longPressRecognizer) = 0;
  v6 = v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100050FD8(uint64_t a1)
{
  v2 = IndexPath.row.getter();
  v3 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
    if (*(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites) == 1)
    {
      TerrestrialRadioStation.setFavorite(_:)(0);
LABEL_15:

      return;
    }

    if ((*(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex + 8) & 1) != 0 || (v6 = *(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex), IndexPath.item.getter() != v6))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_15;
      }

      v10 = Strong;
      v8 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

      if (!v8)
      {
        goto LABEL_15;
      }

      sub_100081374(v5);
    }

    else
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = v7;
      sub_100010040();
    }

    goto LABEL_15;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 8 * v2 + 32);

    goto LABEL_5;
  }

  __break(1u);
}

void sub_100051154()
{
  if ((*(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

      if (v3)
      {
        v4 = v0;
        v5 = IndexPath.row.getter();
        v6 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
        swift_beginAccess();
        v7 = *(v4 + v6);
        if ((v7 & 0xC000000000000001) != 0)
        {

          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          goto LABEL_8;
        }

        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(v7 + 8 * v5 + 32);

LABEL_8:
          sub_100082858(v8);

          return;
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_10005129C(uint64_t a1, uint64_t a2)
{
  v4 = IndexPath.row.getter();
  v5 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v4 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v4 = *(v6 + 8 * v4 + 32);
  }

  v7 = IndexPath.row.getter();
  swift_beginAccess();
  sub_10004F354(v7);
  swift_endAccess();

  a2 = IndexPath.row.getter();
  swift_beginAccess();
  v8 = *(v2 + v5);
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (_CocoaArrayWrapper.endIndex.getter() < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_7:
  if (a2 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_100044564(a2, a2, v4);
  swift_endAccess();

  if (qword_1000EAD48 != -1)
  {
LABEL_16:
    swift_once();
  }

  v9 = qword_1000F3CF0;
  swift_getKeyPath();
  swift_getKeyPath();

  v10 = v9;
  static Published.subscript.setter();
  sub_100091510();
  sub_10004DB14();
}

void *sub_1000514E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1000A2D14(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000A2D14((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100045918(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_100051694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10000368C(&qword_1000ED440, &qword_1000B8B40);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl;
  v13 = *&v4[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl];
  if (v13)
  {
    [v13 removeFromSuperview];
  }

  v14 = &v4[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler];
  v15 = *&v4[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler];
  v16 = *&v4[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler + 8];
  *v14 = a3;
  *(v14 + 1) = a4;

  sub_10003DEF8(v15, v16);
  sub_1000514E4(a1);
  v17 = objc_allocWithZone(UISegmentedControl);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v17 initWithItems:isa];

  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = [v20 clearColor];
  [v21 _setBackgroundTintColor:v23];

  v24 = [v20 _carSystemQuaternaryColor];
  [v21 setSelectedSegmentTintColor:v24];

  [v21 setSelectedSegmentIndex:a2];
  [v21 addTarget:v4 action:"controlChangedWithSender:" forControlEvents:4096];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = *&v4[v12];
  *&v4[v12] = v21;
  v26 = v21;

  v27 = [v4 contentView];
  [v27 addSubview:v26];

  v28 = [v4 contentView];
  v29 = [v20 clearColor];
  [v28 setBackgroundColor:v29];

  static UIBackgroundConfiguration.clear()();
  v30 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
  UICollectionViewCell.backgroundConfiguration.setter();
  v31 = objc_opt_self();
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000B6D30;
  v33 = [v26 leadingAnchor];
  v34 = [v4 contentView];
  v35 = [v34 leadingAnchor];

  v36 = [v33 constraintEqualToAnchor:v35];
  *(v32 + 32) = v36;
  v37 = [v26 trailingAnchor];
  v38 = [v4 contentView];
  v39 = [v38 trailingAnchor];

  v40 = [v37 constraintEqualToAnchor:v39];
  *(v32 + 40) = v40;
  v41 = [v26 centerYAnchor];

  v42 = [v4 contentView];
  v43 = [v42 centerYAnchor];

  v44 = [v41 constraintEqualToAnchor:v43 constant:-0.5];
  *(v32 + 48) = v44;
  sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
  v45 = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:v45];
}

void sub_100051C4C(void *a1, uint64_t a2)
{
  v3 = v2;
  v44.receiver = v3;
  v44.super_class = type metadata accessor for RadioCategoryFilterCell();
  objc_msgSendSuper2(&v44, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v6 = [a1 nextFocusedView];
  if (v6)
  {
    v7 = v6;
    sub_100005A50(0, &qword_1000ED650, UIView_ptr);
    v8 = static NSObject.== infix(_:_:)();
    v9 = OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl;
    v10 = *&v3[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl];
    if (v8)
    {
      if (!v10)
      {
        goto LABEL_12;
      }

      v11 = objc_opt_self();
      v12 = v10;
      v13 = [v11 radio_carSystemFocusColor];
      [v12 setSelectedSegmentTintColor:v13];

      v14 = *&v3[v9];
      if (!v14)
      {
        goto LABEL_12;
      }

      sub_10000368C(&qword_1000ED658, &unk_1000B7350);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000B4760;
      *(inited + 32) = NSForegroundColorAttributeName;
      v16 = objc_opt_self();
      v17 = v14;
      v18 = NSForegroundColorAttributeName;
      v19 = [v16 radio_carSystemFocusLabelColor];
      v20 = sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
      *(inited + 64) = v20;
      *(inited + 40) = v19;
      sub_100045590(inited);
      swift_setDeallocating();
      sub_100007834(inited + 32, &qword_1000ECD38, &unk_1000B66E8);
      type metadata accessor for Key(0);
      sub_10005BF48(&qword_1000EAEB8, type metadata accessor for Key, &unk_1000B39FC);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v17 setTitleTextAttributes:isa forState:4];

      v22 = *&v3[v9];
      if (!v22)
      {
        goto LABEL_12;
      }

      sub_10000368C(&qword_1000ED658, &unk_1000B7350);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1000B4760;
      *(v23 + 32) = v18;
      v24 = v23 + 32;
      v25 = objc_opt_self();
      v26 = v22;
      v27 = v18;
      v28 = [v25 radio_carSystemFocusLabelColor];
    }

    else
    {
      if (!v10)
      {
        goto LABEL_12;
      }

      v29 = objc_opt_self();
      v30 = v10;
      v31 = [v29 clearColor];
      [v30 setSelectedSegmentTintColor:v31];

      v32 = *&v3[v9];
      if (!v32)
      {
        goto LABEL_12;
      }

      sub_10000368C(&qword_1000ED658, &unk_1000B7350);
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_1000B4760;
      *(v33 + 32) = NSForegroundColorAttributeName;
      v34 = objc_opt_self();
      v35 = v32;
      v36 = NSForegroundColorAttributeName;
      v37 = [v34 radio_carSystemFocusColor];
      v20 = sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
      *(v33 + 64) = v20;
      *(v33 + 40) = v37;
      sub_100045590(v33);
      swift_setDeallocating();
      sub_100007834(v33 + 32, &qword_1000ECD38, &unk_1000B66E8);
      type metadata accessor for Key(0);
      sub_10005BF48(&qword_1000EAEB8, type metadata accessor for Key, &unk_1000B39FC);
      v38 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v35 setTitleTextAttributes:v38 forState:4];

      v39 = *&v3[v9];
      if (!v39)
      {
        goto LABEL_12;
      }

      sub_10000368C(&qword_1000ED658, &unk_1000B7350);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1000B4760;
      *(v23 + 32) = v36;
      v24 = v23 + 32;
      v40 = objc_opt_self();
      v26 = v39;
      v41 = v36;
      v28 = [v40 radio_carSystemFocusColor];
    }

    v42 = v28;
    *(v23 + 64) = v20;
    *(v23 + 40) = v42;
    sub_100045590(v23);
    swift_setDeallocating();
    sub_100007834(v24, &qword_1000ECD38, &unk_1000B66E8);
    v43 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v26 setTitleTextAttributes:v43 forState:1];

LABEL_12:
  }
}

uint64_t sub_10005250C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10000368C(&qword_1000ED440, &qword_1000B8B40);
  __chkstk_darwin(v1 - 8);
  v30 = &v27 - v2;
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000368C(&qword_1000ED610, &qword_1000B7318);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  if (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isFocused.getter())
  {
    v13 = 1;
  }

  else
  {
    v13 = UICellConfigurationState.isSelected.getter();
  }

  v14 = __chkstk_darwin(v13);
  *(&v27 - 16) = v14 & 1;
  *(&v27 - 1) = v0;
  v15 = &selRef__carSystemFocusColor;
  if ((v14 & 1) == 0)
  {
    v15 = &selRef_clearColor;
  }

  v27 = v0;
  v28 = v15;
  if (v14)
  {
    v16 = &selRef__carSystemFocusLabelColor;
  }

  else
  {
    v16 = &selRef_secondaryLabelColor;
  }

  v29 = v16;
  sub_10000368C(&qword_1000ED618, &qword_1000B7320);
  sub_100005870(&qword_1000ED620, &qword_1000ED618, &qword_1000B7320, &protocol conformance descriptor for HStack<A>);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.horizontal.getter();
  UIHostingConfiguration.margins(_:_:)();
  v17 = *(v7 + 8);
  v17(v10, v6);
  static Edge.Set.vertical.getter();
  v34[3] = v6;
  v34[4] = sub_100005870(&qword_1000ED628, &qword_1000ED610, &qword_1000B7318, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10005AD6C(v34);
  UIHostingConfiguration.margins(_:_:)();
  v17(v12, v6);
  UICollectionViewCell.contentConfiguration.setter();
  static UIBackgroundConfiguration.clear()();
  v18 = [objc_opt_self() *v28];
  UIBackgroundConfiguration.backgroundColor.setter();
  UIBackgroundConfiguration.cornerRadius.setter();
  v19 = v30;
  v20 = v31;
  v21 = v32;
  (*(v31 + 16))(v30, v5, v32);
  (*(v20 + 56))(v19, 0, 1, v21);
  UICollectionViewCell.backgroundConfiguration.setter();
  sub_10000368C(&qword_1000ED630, &qword_1000B7328);
  v22 = *(type metadata accessor for UICellAccessory() - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000B4760;
  v25 = [objc_opt_self() *v29];
  sub_1000530C0(v25, v24 + v23);

  UICollectionViewListCell.accessories.setter();
  return (*(v20 + 8))(v5, v21);
}

double sub_1000529E0@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = static VerticalAlignment.center.getter();
  v25 = 0;
  sub_100052C20(v3, &v14);
  v34 = v22;
  v35[0] = v23[0];
  *(v35 + 9) = *(v23 + 9);
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v36[7] = v21;
  v36[8] = v22;
  v37[0] = v23[0];
  *(v37 + 9) = *(v23 + 9);
  v36[4] = v18;
  v36[5] = v19;
  v36[6] = v20;
  v36[0] = v14;
  v36[1] = v15;
  v36[2] = v16;
  v36[3] = v17;
  sub_1000077CC(&v26, &v13, &qword_1000ED648, &unk_1000B7340);
  sub_100007834(v36, &qword_1000ED648, &unk_1000B7340);
  *(&v24[7] + 7) = v33;
  *(&v24[8] + 7) = v34;
  *(&v24[9] + 7) = v35[0];
  v24[10] = *(v35 + 9);
  *(&v24[3] + 7) = v29;
  *(&v24[4] + 7) = v30;
  *(&v24[5] + 7) = v31;
  *(&v24[6] + 7) = v32;
  *(v24 + 7) = v26;
  *(&v24[1] + 7) = v27;
  *(&v24[2] + 7) = v28;
  v6 = v24[6];
  *(a3 + 129) = v24[7];
  v7 = v24[9];
  *(a3 + 145) = v24[8];
  *(a3 + 161) = v7;
  *(a3 + 177) = v24[10];
  v8 = v24[2];
  *(a3 + 65) = v24[3];
  v9 = v24[5];
  *(a3 + 81) = v24[4];
  *(a3 + 97) = v9;
  *(a3 + 113) = v6;
  result = *v24;
  v11 = v24[1];
  *(a3 + 17) = v24[0];
  *(a3 + 33) = v11;
  v12 = v25;
  *a3 = v5;
  *(a3 + 8) = 0x4028000000000000;
  *(a3 + 16) = v12;
  *(a3 + 49) = v8;
  return result;
}

uint64_t sub_100052C20@<X0>(char a1@<W0>, uint64_t a3@<X8>)
{
  v52 = Image.init(_internalSystemName:)();
  v51 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  v5 = objc_opt_self();
  v6 = &selRef__carSystemFocusLabelColor;
  v7 = &selRef_secondaryLabelColor;
  if (a1)
  {
    v7 = &selRef__carSystemFocusLabelColor;
  }

  v48 = v7;
  if ((a1 & 1) == 0)
  {
    v6 = &selRef_labelColor;
  }

  v45 = v6;
  v8 = [v5 *v7];
  v47 = Color.init(uiColor:)();
  sub_100020F58();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.callout.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_100021B08(v9, v11, v13 & 1);

  v19 = [objc_opt_self() *v45];
  Color.init(uiColor:)();
  v20 = Text.foregroundStyle<A>(_:)();
  v44 = v21;
  v46 = v20;
  v41 = v22;
  v43 = v23;
  sub_100021B08(v14, v16, v18 & 1);

  v42 = swift_getKeyPath();

  v24 = Text.init<A>(_:)();
  v26 = v25;
  v28 = v27;
  static Font.callout.getter();
  v29 = Text.font(_:)();
  v31 = v30;
  LOBYTE(v11) = v32;

  sub_100021B08(v24, v26, v28 & 1);

  v33 = [objc_opt_self() *v48];
  Color.init(uiColor:)();
  v38 = Text.foregroundStyle<A>(_:)();
  v40 = v34;
  LOBYTE(v16) = v35;
  v49 = v36;
  sub_100021B08(v29, v31, v11 & 1);

  v39 = swift_getKeyPath();
  *a3 = v52;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = v51;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = v47;
  *(a3 + 48) = v46;
  *(a3 + 56) = v44;
  *(a3 + 64) = v41 & 1;
  *(a3 + 72) = v43;
  *(a3 + 80) = v42;
  *(a3 + 88) = 2;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  *(a3 + 120) = v38;
  *(a3 + 128) = v40;
  *(a3 + 136) = v16 & 1;
  *(a3 + 144) = v49;
  *(a3 + 152) = v39;
  *(a3 + 160) = 1;
  *(a3 + 168) = 0;

  sub_100021B18(v46, v44, v41 & 1);

  sub_100021B18(v38, v40, v16 & 1);

  sub_100021B08(v38, v40, v16 & 1);

  sub_100021B08(v46, v44, v41 & 1);
}

uint64_t sub_1000530C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v2 = sub_10000368C(&qword_1000ED638, &qword_1000B7330);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for UICellAccessory.Placement();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v24 - 8);
  __chkstk_darwin(v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12];

  if (v13)
  {
    sub_100005A50(0, &qword_1000EC138, UIFont_ptr);
    v14 = static UIFont.preferredFont(forTextStyle:weight:)();
    v15 = [objc_opt_self() configurationWithFont:v14];

    v16 = [v13 imageWithConfiguration:v15];
  }

  else
  {
    v16 = 0;
  }

  [objc_allocWithZone(UIImageView) initWithImage:v16];

  v17 = &v8[*(sub_10000368C(&qword_1000ED640, &qword_1000B7338) + 48)];
  v18 = enum case for UICellAccessory.DisplayedState.always(_:);
  v19 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v19 - 8) + 104))(v8, v18, v19);
  *v17 = variable initialization expression of TerrestrialRadioStation._thumbnailImage;
  v17[1] = 0;
  (*(v6 + 104))(v8, enum case for UICellAccessory.Placement.trailing(_:), v5);
  v20 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  v21 = v25;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v9 + 8))(v11, v24);
}

id sub_1000536B8(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), SEL *a4)
{
  v6.receiver = a1;
  v6.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v6, *a4);
}

void sub_10005371C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), const char **a5)
{
  v9.receiver = a1;
  v9.super_class = a4(a1, a2);
  v7 = *a5;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  [v8 setNeedsUpdateConfiguration];
}

void sub_1000537A8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void *, uint64_t))
{
  v10.receiver = a1;
  v10.super_class = a5(a1, a2);
  v7 = a3;
  v8 = a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, "didUpdateFocusInContext:withAnimationCoordinator:", v7, v8);
  [v9 setNeedsUpdateConfiguration];
}

uint64_t sub_10005383C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000368C(&qword_1000ED440, &qword_1000B8B40);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for UIBackgroundConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000368C(&qword_1000ED448, &qword_1000B7150);
  result = __chkstk_darwin(v12);
  v16 = &v47 - v15;
  v17 = *(v2 + OBJC_IVAR____TtC5Media16RadioStationCell_config);
  if (v17)
  {
    v48 = v14;
    v49 = result;
    v54 = v8;
    v55 = v2;
    v56 = *(v2 + OBJC_IVAR____TtC5Media16RadioStationCell_config + 8);

    v18 = UICellConfigurationState.isHighlighted.getter();
    v53 = v9;
    v51 = v11;
    v50 = a1;
    v47 = ObjectType;
    if (v18)
    {
      v19 = &selRef_radio_carSystemFocusSecondaryColor;
      v20 = &selRef_radio_carSystemFocusLabelColor;
    }

    else
    {
      v19 = &selRef_radio_carSystemFocusSecondaryColor;
      v20 = &selRef_radio_carSystemFocusLabelColor;
      if ((UICellConfigurationState.isSelected.getter() & 1) == 0 && (UICellConfigurationState.isFocused.getter() & 1) == 0)
      {
        v20 = &selRef_labelColor;
        v19 = &selRef_secondaryLabelColor;
      }
    }

    v52 = v7;
    v21 = objc_opt_self();
    v58 = [v21 *v20];
    v57 = [v21 *v19];
    v22 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v23 = *(v17 + v22);
    v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
    swift_beginAccess();

    v25 = v23;
    v26 = CAFMediaItem.primaryDisplayName(in:)();
    v28 = v27;

    v29 = *(v17 + v22);

    v30 = v29;
    v31 = CAFMediaItem.secondaryDisplayName.getter();
    v33 = v32;

    v60 = v31;
    v61 = v33;
    if (*(v17 + v24) == 3)
    {
      v34 = 56.0;
    }

    else
    {
      v34 = 36.0;
    }

    if (v26 == v31 && v28 == v33 || (v35 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v35 & 1) != 0))
    {

      v60 = 0;
      v61 = 0xE000000000000000;
    }

    __chkstk_darwin(v35);
    *(&v47 - 12) = v17;
    v36 = BYTE1(v56);
    *(&v47 - 88) = v56 & 1;
    *(&v47 - 87) = v36 & 1;
    *(&v47 - 10) = v34;
    v37 = v55;
    *(&v47 - 9) = v50;
    *(&v47 - 8) = v37;
    *(&v47 - 7) = v58;
    *(&v47 - 6) = v26;
    *(&v47 - 5) = v28;
    *(&v47 - 4) = &v60;
    v38 = v47;
    *(&v47 - 3) = v57;
    *(&v47 - 2) = v38;
    sub_10000368C(&qword_1000ED450, &qword_1000B7158);
    sub_100005870(&qword_1000ED458, &qword_1000ED450, &qword_1000B7158, &protocol conformance descriptor for ZStack<A>);
    UIHostingConfiguration<>.init(content:)();

    static Edge.Set.all.getter();
    v39 = v49;
    v59[3] = v49;
    v59[4] = sub_100005870(&qword_1000ED460, &qword_1000ED448, &qword_1000B7150, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10005AD6C(v59);
    UIHostingConfiguration.margins(_:_:)();
    (*(v48 + 8))(v16, v39);
    UICollectionViewCell.contentConfiguration.setter();
    v40 = v51;
    static UIBackgroundConfiguration.clear()();
    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
    {
      v41 = objc_opt_self();
      v42 = &selRef_radio_carSystemFocusColor;
    }

    else
    {
      v41 = objc_opt_self();
      v42 = &selRef_clearColor;
      if (v56)
      {
        v42 = &selRef__carSystemQuaternaryColor;
      }
    }

    v43 = v53;
    v44 = v52;
    v45 = [v41 *v42];
    UIBackgroundConfiguration.backgroundColor.setter();
    UIBackgroundConfiguration.cornerRadius.setter();
    v46 = v54;
    (*(v43 + 16))(v44, v40, v54);
    (*(v43 + 56))(v44, 0, 1, v46);
    UICollectionViewCell.backgroundConfiguration.setter();

    (*(v43 + 8))(v40, v46);
  }

  return result;
}

uint64_t sub_100053E74@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, void *a11, uint64_t a12)
{
  *a9 = static Alignment.center.getter();
  a9[1] = v21;
  v22 = sub_10000368C(&qword_1000ED468, &qword_1000B7160);
  return sub_100053F40(a1, a2 & 0x101, a3, a4, a5, a6, a7, a8, a9 + *(v22 + 44), a10, a11, a12);
}

uint64_t sub_100053F40@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, void *a11, uint64_t a12)
{
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0x4020000000000000;
  *(a9 + 16) = 0;
  v21 = sub_10000368C(&qword_1000ED470, &qword_1000B7168);
  return sub_100054014(a1, a2 & 0x101, a3, a4, a5, a6, a7, a8, a9 + *(v21 + 44), a10, a11, a12);
}

uint64_t sub_100054014@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, id a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, void *a11, uint64_t a12)
{
  v157 = a8;
  v154 = a6;
  v155 = a7;
  v140 = a9;
  v18 = type metadata accessor for PlainButtonStyle();
  v138 = *(v18 - 8);
  v139 = v18;
  __chkstk_darwin(v18);
  v137 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000368C(&qword_1000ED478, &qword_1000B7170);
  v135 = *(v20 - 8);
  v136 = v20;
  __chkstk_darwin(v20);
  v134 = &v126 - v21;
  v133 = sub_10000368C(&qword_1000ED480, &qword_1000B7178);
  v22 = __chkstk_darwin(v133);
  v161 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v160 = &v126 - v24;
  v25 = sub_10000368C(&qword_1000ED488, &qword_1000B7180);
  v26 = __chkstk_darwin(v25 - 8);
  v162 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = (&v126 - v28);
  *v29 = static Alignment.center.getter();
  v29[1] = v30;
  v31 = *(sub_10000368C(&qword_1000ED490, &qword_1000B7188) + 44);
  v159 = v29;
  v141 = a2;
  v156 = a3;
  sub_1000551A8(a1, a2 & 0x101, a3, v29 + v31, a10);
  v32 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  v33 = *(a1 + v32);
  v34 = [a4 traitCollection];
  v35 = [v34 preferredContentSizeCategory];

  sub_10005B48C(v33, v35);
  v36 = *(a1 + v32);
  v143 = a1;
  v144 = a5;
  if ((v36 == 1 || v36 == 2 || v36 == 8 || v36 == 3) && (v37 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency, swift_beginAccess(), *(a1 + v37)))
  {
    v158 = v32;
    v126 = a4;
    *&v188 = TerrestrialRadioStation.formattedFrequency.getter();
    *(&v188 + 1) = v38;
    sub_100020F58();
    v39 = Text.init<A>(_:)();
    v41 = v40;
    v43 = v42;
    static Font.callout.getter();
    Font.monospacedDigit()();

    v44 = Text.font(_:)();
    v46 = v45;
    v48 = v47;
    v50 = v49;

    sub_100021B08(v39, v41, v43 & 1);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    LOBYTE(v206[0]) = v48 & 1;
    a5 = v144;
    v51 = v144;
    v52 = Color.init(uiColor:)();
    *&v188 = v44;
    *(&v188 + 1) = v46;
    LOBYTE(v189[0]) = v48 & 1;
    *(&v189[0] + 1) = v50;
    v189[5] = v175[4];
    v189[6] = v175[5];
    v189[7] = v175[6];
    v189[1] = v175[0];
    v189[2] = v175[1];
    v189[4] = v175[3];
    v189[3] = v175[2];
    *&v189[8] = v52;
    nullsub_1();
    v217 = v189[5];
    v218 = v189[6];
    v219 = v189[7];
    v220 = *&v189[8];
    v213 = v189[1];
    v214 = v189[2];
    v215 = v189[3];
    v216 = v189[4];
    v211 = v188;
    v212 = v189[0];
    a4 = v126;
    a1 = v143;
    v32 = v158;
  }

  else
  {
    sub_10005B670(&v211);
  }

  v53 = v141;
  v142 = v141 & 0x100;
  v158 = static HorizontalAlignment.leading.getter();
  LOBYTE(v190[0]) = 0;
  sub_10005666C(v154, v155, a5, v157, &v188);
  v203 = v189[9];
  v204 = v189[10];
  v199 = v189[5];
  v200 = v189[6];
  v202 = v189[8];
  v201 = v189[7];
  v195 = v189[1];
  v196 = v189[2];
  v198 = v189[4];
  v197 = v189[3];
  v194 = v189[0];
  v193 = v188;
  v206[10] = v189[9];
  v206[11] = v189[10];
  v206[6] = v189[5];
  v206[7] = v189[6];
  v206[9] = v189[8];
  v206[8] = v189[7];
  v206[2] = v189[1];
  v206[3] = v189[2];
  v206[5] = v189[4];
  v206[4] = v189[3];
  v205 = *&v189[11];
  v207 = *&v189[11];
  v206[1] = v189[0];
  v206[0] = v188;
  sub_1000077CC(&v193, v175, &qword_1000ED498, &qword_1000B7190);
  sub_100007834(v206, &qword_1000ED498, &qword_1000B7190);
  *(&v192[9] + 7) = v202;
  *(&v192[10] + 7) = v203;
  *(&v192[11] + 7) = v204;
  *(&v192[5] + 7) = v198;
  *(&v192[6] + 7) = v199;
  *(&v192[7] + 7) = v200;
  *(&v192[8] + 7) = v201;
  *(&v192[1] + 7) = v194;
  *(&v192[2] + 7) = v195;
  *(&v192[3] + 7) = v196;
  *(&v192[4] + 7) = v197;
  *(&v192[12] + 7) = v205;
  *(v192 + 7) = v193;
  LODWORD(v157) = LOBYTE(v190[0]);
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v54 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  v55 = 0;
  if (v54[1])
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    if (*v54)
    {
      if (v142 && (v53 & 1) != 0)
      {
        sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
        static UIColor.cafui_HDOrangeColor.getter();
      }

      else
      {
        if ((UICellConfigurationState.isHighlighted.getter() & 1) == 0 && (UICellConfigurationState.isSelected.getter() & 1) == 0 && (UICellConfigurationState.isFocused.getter() & 1) == 0)
        {
          v65 = static Color.secondary.getter();
          goto LABEL_19;
        }

        v64 = [objc_opt_self() radio_carSystemFocusLabelColor];
      }

      v65 = Color.init(uiColor:)();
LABEL_19:
      v66 = v65;
      v55 = static VerticalAlignment.center.getter();
      LOBYTE(v175[0]) = 0;
      sub_100056AEC(v53 & 0x101, v66, &v188);

      v58 = *(&v188 + 1);
      v57 = v188;
      v60 = *(&v189[0] + 1);
      v59 = *&v189[0];
      v61 = *(&v189[1] + 1);
      LOBYTE(v188) = v189[1];
      v63 = LOBYTE(v175[0]);
      v62 = LOBYTE(v189[1]);
      v56 = 0x4000000000000000;
    }
  }

  v149 = v63;
  v150 = v62;
  v151 = v56;
  v152 = v61;
  v153 = v60;
  v154 = v59;
  v155 = v58;
  v156 = v57;
  if (*(a1 + v32) == 8 && (v67 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem, swift_beginAccess(), v68 = *(a1 + v67), v69 = sub_100083044(), v71 = v70, v68, v71))
  {
    v148 = a11;
    *&v188 = v69;
    *(&v188 + 1) = v71;
    sub_100020F58();
    v72 = Text.init<A>(_:)();
    v74 = v73;
    v76 = v75;
    v126 = a4;
    static Font.callout.getter();
    v77 = Text.font(_:)();
    v79 = v78;
    v81 = v80;
    v147 = v82;

    sub_100021B08(v72, v74, v76 & 1);
    a4 = v126;

    v83 = v148;
    *&v188 = Color.init(uiColor:)();
    v84 = Text.foregroundStyle<A>(_:)();
    v131 = v85;
    v132 = v84;
    LOBYTE(v74) = v86;
    v130 = v87;
    sub_100021B08(v77, v79, v81 & 1);

    static Alignment.trailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v188) = v74 & 1;
    v128 = v222;
    v129 = v221;
    v127 = v224;
    v147 = v225;
    v148 = v223;
    v145 = v74 & 1;
    v146 = v226;
  }

  else
  {
    v131 = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
  }

  v88 = swift_allocObject();
  *(v88 + 16) = a4;
  __chkstk_darwin(v88);
  v89 = a4;
  sub_10000368C(&qword_1000ED4A0, &qword_1000B7198);
  sub_10005BC08(&qword_1000ED4A8, &qword_1000ED4A0, &qword_1000B7198, sub_10005B6BC);
  v90 = v134;
  Button.init(action:label:)();
  v91 = v137;
  PlainButtonStyle.init()();
  sub_100005870(&qword_1000ED4D0, &qword_1000ED478, &qword_1000B7170, &protocol conformance descriptor for Button<A>);
  sub_10005BF48(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v92 = v160;
  v93 = v136;
  v94 = v139;
  View.buttonStyle<A>(_:)();
  (*(v138 + 8))(v91, v94);
  (*(v135 + 8))(v90, v93);
  *(v92 + *(v133 + 36)) = 0;
  v95 = v162;
  sub_1000077CC(v159, v162, &qword_1000ED488, &qword_1000B7180);
  v169 = v217;
  v170 = v218;
  v171 = v219;
  v172 = v220;
  v165 = v213;
  v166 = v214;
  v167 = v215;
  v168 = v216;
  v163 = v211;
  v164 = v212;
  sub_1000077CC(v92, v161, &qword_1000ED480, &qword_1000B7178);
  v96 = v95;
  v97 = v140;
  sub_1000077CC(v96, v140, &qword_1000ED488, &qword_1000B7180);
  v98 = sub_10000368C(&qword_1000ED4D8, &qword_1000B71B0);
  v99 = v98[12];
  v101 = v169;
  v100 = v170;
  v173[6] = v169;
  v173[7] = v170;
  v102 = v171;
  v173[8] = v171;
  v103 = v168;
  v173[4] = v167;
  v173[5] = v168;
  v105 = v165;
  v104 = v166;
  v173[2] = v165;
  v173[3] = v166;
  v106 = v163;
  v107 = v164;
  v173[0] = v163;
  v173[1] = v164;
  v108 = v97 + v99;
  *(v108 + 64) = v167;
  *(v108 + 80) = v103;
  *(v108 + 32) = v105;
  *(v108 + 48) = v104;
  *(v108 + 112) = v100;
  *(v108 + 128) = v102;
  v174 = v172;
  *(v108 + 144) = v172;
  *(v108 + 96) = v101;
  *v108 = v106;
  *(v108 + 16) = v107;
  v109 = v98[16];
  *(&v175[10] + 1) = v192[9];
  *(&v175[11] + 1) = v192[10];
  *(&v175[12] + 1) = v192[11];
  *(&v175[6] + 1) = v192[5];
  *(&v175[7] + 1) = v192[6];
  *(&v175[8] + 1) = v192[7];
  *(&v175[9] + 1) = v192[8];
  *(&v175[2] + 1) = v192[1];
  *(&v175[3] + 1) = v192[2];
  *&v175[0] = v158;
  *(&v175[0] + 1) = 0x3FF0000000000000;
  LOBYTE(v175[1]) = v157;
  *(&v175[4] + 1) = v192[3];
  *(&v175[5] + 1) = v192[4];
  *(&v175[1] + 1) = v192[0];
  v175[13] = *(&v192[11] + 15);
  v175[14] = v208;
  v175[15] = v209;
  v175[16] = v210;
  memcpy((v97 + v109), v175, 0x110uLL);
  v110 = v97 + v98[20];
  *v110 = 0;
  *(v110 + 8) = 1;
  v111 = v97 + v98[24];
  *&v176 = v55;
  *(&v176 + 1) = v151;
  *&v177 = v149;
  *(&v177 + 1) = v156;
  *&v178 = v155;
  *(&v178 + 1) = v154;
  *&v179 = v153;
  *(&v179 + 1) = v150;
  v144 = v55;
  v112 = v152;
  v180 = v152;
  v113 = v179;
  *(v111 + 32) = v178;
  *(v111 + 48) = v113;
  *(v111 + 64) = v112;
  v114 = v177;
  *v111 = v176;
  *(v111 + 16) = v114;
  v115 = (v97 + v98[28]);
  v117 = v131;
  v116 = v132;
  *&v181 = v132;
  *(&v181 + 1) = v131;
  *&v182 = v145;
  v119 = v129;
  v118 = v130;
  *(&v182 + 1) = v130;
  *&v183 = v129;
  v120 = v127;
  v121 = v128;
  *(&v183 + 1) = v128;
  *&v184 = v148;
  *(&v184 + 1) = v127;
  *&v185 = v147;
  *(&v185 + 1) = v146;
  v122 = v182;
  *v115 = v181;
  v115[1] = v122;
  v123 = v184;
  v115[2] = v183;
  v115[3] = v123;
  v115[4] = v185;
  v124 = v161;
  sub_1000077CC(v161, v97 + v98[32], &qword_1000ED480, &qword_1000B7178);
  sub_1000077CC(v173, &v188, &qword_1000ED4E0, &qword_1000B71B8);
  sub_1000077CC(v175, &v188, &qword_1000ED4E8, &qword_1000B71C0);
  sub_1000077CC(&v176, &v188, &qword_1000ED4F0, &qword_1000B71C8);
  sub_1000077CC(&v181, &v188, &qword_1000ED4F8, &qword_1000B71D0);
  sub_100007834(v160, &qword_1000ED480, &qword_1000B7178);
  sub_100007834(v159, &qword_1000ED488, &qword_1000B7180);
  sub_100007834(v124, &qword_1000ED480, &qword_1000B7178);
  v186[0] = v116;
  v186[1] = v117;
  v186[2] = v145;
  v186[3] = v118;
  v186[4] = v119;
  v186[5] = v121;
  v186[6] = v148;
  v186[7] = v120;
  v186[8] = v147;
  v186[9] = v146;
  sub_100007834(v186, &qword_1000ED4F8, &qword_1000B71D0);
  v187[0] = v144;
  v187[1] = v151;
  v187[2] = v149;
  v187[3] = v156;
  v187[4] = v155;
  v187[5] = v154;
  v187[6] = v153;
  v187[7] = v150;
  v187[8] = v152;
  sub_100007834(v187, &qword_1000ED4F0, &qword_1000B71C8);
  *(&v189[9] + 1) = v192[9];
  *(&v189[10] + 1) = v192[10];
  *(&v189[11] + 1) = v192[11];
  *(&v189[5] + 1) = v192[5];
  *(&v189[6] + 1) = v192[6];
  *(&v189[7] + 1) = v192[7];
  *(&v189[8] + 1) = v192[8];
  *(&v189[1] + 1) = v192[1];
  *(&v189[2] + 1) = v192[2];
  *&v188 = v158;
  *(&v188 + 1) = 0x3FF0000000000000;
  LOBYTE(v189[0]) = v157;
  *(&v189[3] + 1) = v192[3];
  *(&v189[4] + 1) = v192[4];
  *(v189 + 1) = v192[0];
  v189[12] = *(&v192[11] + 15);
  v189[13] = v208;
  v189[14] = v209;
  v189[15] = v210;
  sub_100007834(&v188, &qword_1000ED4E8, &qword_1000B71C0);
  v190[6] = v169;
  v190[7] = v170;
  v190[8] = v171;
  v191 = v172;
  v190[2] = v165;
  v190[3] = v166;
  v190[4] = v167;
  v190[5] = v168;
  v190[0] = v163;
  v190[1] = v164;
  sub_100007834(v190, &qword_1000ED4E0, &qword_1000B71B8);
  return sub_100007834(v162, &qword_1000ED488, &qword_1000B7180);
}

uint64_t sub_1000551A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v152 = a3;
  v147 = a2;
  v157 = a4;
  v140 = type metadata accessor for WaveformColorPalette();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for WaveformState();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for WaveformView();
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10000368C(&qword_1000ED510, &qword_1000B7230);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v119 - v9;
  v155 = sub_10000368C(&qword_1000ED3C0, &qword_1000B70A0);
  v153 = *(v155 - 8);
  v10 = __chkstk_darwin(v155);
  v131 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v130 = &v119 - v12;
  v13 = sub_10000368C(&qword_1000ED3C8, &qword_1000B70A8);
  v14 = __chkstk_darwin(v13 - 8);
  v156 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v154 = &v119 - v16;
  v148 = sub_10000368C(&qword_1000ED518, &qword_1000B7238);
  __chkstk_darwin(v148);
  v149 = &v119 - v17;
  v18 = type metadata accessor for Image.ResizingMode();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10000368C(&qword_1000ED520, &qword_1000B7240);
  __chkstk_darwin(v141);
  v23 = &v119 - v22;
  v143 = sub_10000368C(&qword_1000ED528, &qword_1000B7248);
  __chkstk_darwin(v143);
  v25 = &v119 - v24;
  v26 = sub_10000368C(&qword_1000ED530, &qword_1000B7250);
  __chkstk_darwin(v26 - 8);
  v142 = &v119 - v27;
  v146 = sub_10000368C(&qword_1000ED538, &qword_1000B7258);
  v28 = __chkstk_darwin(v146);
  v30 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v144 = &v119 - v31;
  v119 = sub_10000368C(&qword_1000ED540, &qword_1000B7260);
  __chkstk_darwin(v119);
  v33 = &v119 - v32;
  v121 = sub_10000368C(&qword_1000ED548, &qword_1000B7268);
  __chkstk_darwin(v121);
  v120 = &v119 - v34;
  v123 = sub_10000368C(&qword_1000ED550, &qword_1000B7270);
  __chkstk_darwin(v123);
  v122 = &v119 - v35;
  v36 = sub_10000368C(&qword_1000ED558, &qword_1000B7278);
  __chkstk_darwin(v36 - 8);
  v124 = &v119 - v37;
  v145 = sub_10000368C(&qword_1000ED560, &qword_1000B7280);
  v38 = __chkstk_darwin(v145);
  v125 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v126 = &v119 - v40;
  v41 = sub_10000368C(&qword_1000ED568, &qword_1000B7288);
  v42 = __chkstk_darwin(v41 - 8);
  v151 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v150 = &v119 - v44;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v45 = v159;
  if (!v159)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v45 = v159;
    if (!v159)
    {
      v84 = Image.init(systemName:)();
      v85 = static Font.title2.getter();
      KeyPath = swift_getKeyPath();
      v87 = static HierarchicalShapeStyle.quaternary.getter();
      v88 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      swift_beginAccess();
      if (*(a1 + v88) == 3)
      {
        v89 = 0x4032000000000000;
      }

      else
      {
        v89 = 0x4022000000000000;
      }

      v90 = static Edge.Set.all.getter();
      v158 = 0;
      v91 = &v33[*(v119 + 36)];
      v92 = *(type metadata accessor for RoundedRectangle() + 20);
      v93 = enum case for RoundedCornerStyle.continuous(_:);
      v94 = type metadata accessor for RoundedCornerStyle();
      (*(*(v94 - 8) + 104))(&v91[v92], v93, v94);
      __asm { FMOV            V0.2D, #6.0 }

      *v91 = _Q0;
      *&v91[*(sub_10000368C(&qword_1000ED570, &qword_1000B72D8) + 56)] = 256;
      *v33 = v84;
      *(v33 + 1) = KeyPath;
      *(v33 + 2) = v85;
      *(v33 + 6) = v87;
      v33[32] = v90;
      *(v33 + 33) = v166;
      *(v33 + 9) = *(&v166 + 3);
      *(v33 + 5) = 0x4018000000000000;
      *(v33 + 6) = v89;
      *(v33 + 7) = 0x4018000000000000;
      *(v33 + 8) = v89;
      v33[72] = 0;
      v96 = UICellConfigurationState.traitCollection.getter();
      v97 = [v96 userInterfaceStyle];

      v98 = objc_opt_self();
      v99 = dbl_1000B6D40[v97 == 2];
      v100 = &selRef_whiteColor;
      if (v97 != 2)
      {
        v100 = &selRef_blackColor;
      }

      v101 = [v98 *v100];
      v102 = [v101 colorWithAlphaComponent:v99];

      v103 = Color.init(uiColor:)();
      v104 = v120;
      sub_10001721C(v33, v120, &qword_1000ED540, &qword_1000B7260);
      *(v104 + *(v121 + 36)) = v103;
      v57 = v147;
      if (v147)
      {
        v105 = 0.2;
      }

      else
      {
        v105 = 1.0;
      }

      v106 = v122;
      sub_10001721C(v104, v122, &qword_1000ED548, &qword_1000B7268);
      *(v106 + *(v123 + 36)) = v105;
      sub_10005B810();
      v107 = v124;
      View.accessibilityIdentifier(_:)();
      sub_100007834(v106, &qword_1000ED550, &qword_1000B7270);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v108 = v125;
      sub_10001721C(v107, v125, &qword_1000ED558, &qword_1000B7278);
      v109 = (v108 + *(v145 + 36));
      v110 = v164;
      v109[4] = v163;
      v109[5] = v110;
      v109[6] = v165;
      v111 = v160;
      *v109 = v159;
      v109[1] = v111;
      v112 = v162;
      v109[2] = v161;
      v109[3] = v112;
      v113 = v126;
      sub_10001721C(v108, v126, &qword_1000ED560, &qword_1000B7280);
      sub_1000077CC(v113, v149, &qword_1000ED560, &qword_1000B7280);
      swift_storeEnumTagMultiPayload();
      sub_10005BB50();
      sub_10005BE84();
      v65 = v150;
      _ConditionalContent<>.init(storage:)();
      sub_100007834(v113, &qword_1000ED560, &qword_1000B7280);
      v66 = v155;
      v67 = v154;
      if (v57)
      {
        goto LABEL_7;
      }

LABEL_25:
      v83 = 1;
      goto LABEL_26;
    }
  }

  v46 = v45;
  Image.init(uiImage:)();
  (*(v19 + 104))(v21, enum case for Image.ResizingMode.stretch(_:), v18);
  v47 = Image.resizable(capInsets:resizingMode:)();

  (*(v19 + 8))(v21, v18);
  v48 = &v23[*(v141 + 36)];
  v49 = *(type metadata accessor for RoundedRectangle() + 20);
  v50 = enum case for RoundedCornerStyle.continuous(_:);
  v51 = type metadata accessor for RoundedCornerStyle();
  (*(*(v51 - 8) + 104))(&v48[v49], v50, v51);
  __asm { FMOV            V0.2D, #6.0 }

  *v48 = _Q0;
  *&v48[*(sub_10000368C(&qword_1000EBB38, &qword_1000B4B80) + 36)] = 256;
  *v23 = v47;
  *(v23 + 1) = 0;
  *(v23 + 8) = 1;
  v57 = v147;
  if (v147)
  {
    v58 = 0.2;
  }

  else
  {
    v58 = 1.0;
  }

  sub_10001721C(v23, v25, &qword_1000ED520, &qword_1000B7240);
  *&v25[*(v143 + 36)] = v58;
  sub_10005BCBC();
  v59 = v142;
  View.accessibilityIdentifier(_:)();
  sub_100007834(v25, &qword_1000ED528, &qword_1000B7248);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001721C(v59, v30, &qword_1000ED530, &qword_1000B7250);
  v60 = &v30[*(v146 + 36)];
  v61 = v164;
  *(v60 + 4) = v163;
  *(v60 + 5) = v61;
  *(v60 + 6) = v165;
  v62 = v160;
  *v60 = v159;
  *(v60 + 1) = v62;
  v63 = v162;
  *(v60 + 2) = v161;
  *(v60 + 3) = v63;
  v64 = v144;
  sub_10001721C(v30, v144, &qword_1000ED538, &qword_1000B7258);
  sub_1000077CC(v64, v149, &qword_1000ED538, &qword_1000B7258);
  swift_storeEnumTagMultiPayload();
  sub_10005BB50();
  sub_10005BE84();
  v65 = v150;
  _ConditionalContent<>.init(storage:)();

  sub_100007834(v64, &qword_1000ED538, &qword_1000B7258);
  v66 = v155;
  v67 = v154;
  if ((v57 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_7:
  if (UICellConfigurationState.isHighlighted.getter())
  {
    v68 = &selRef_radio_carSystemFocusLabelColor;
  }

  else
  {
    v68 = &selRef_radio_carSystemFocusLabelColor;
    if ((UICellConfigurationState.isSelected.getter() & 1) == 0 && (UICellConfigurationState.isFocused.getter() & 1) == 0)
    {
      v68 = &selRef_radio_carSystemFocusColor;
    }
  }

  v69 = [objc_opt_self() *v68];
  Color.init(uiColor:)();
  if ((v57 & 0x100) != 0)
  {
    v72 = enum case for WaveformState.SamplingMode.unavailable(_:);
    v73 = type metadata accessor for WaveformState.SamplingMode();
    v71 = v127;
    (*(*(v73 - 8) + 104))(v127, v72, v73);
    v70 = &enum case for WaveformState.playing(_:);
  }

  else
  {
    v70 = &enum case for WaveformState.paused(_:);
    v71 = v127;
  }

  (*(v128 + 104))(v71, *v70, v129);
  v74 = v132;
  WaveformView.init(state:)();
  swift_retain_n();
  v75 = v138;
  WaveformColorPalette.init(playingColor:pausedColor:bufferingColorMin:bufferingColorMax:)();
  sub_10005BF48(&qword_1000ED438, &type metadata accessor for WaveformView, &protocol conformance descriptor for WaveformView);
  v76 = v133;
  v77 = v136;
  View.waveformColorPalette(_:)();
  (*(v139 + 8))(v75, v140);
  (*(v134 + 8))(v74, v77);
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();

  v78 = v131;
  (*(v135 + 32))(v131, v76, v137);
  v79 = &v78[*(v66 + 36)];
  v80 = v167;
  *v79 = v166;
  *(v79 + 1) = v80;
  *(v79 + 2) = v168;
  v81 = v78;
  v82 = v130;
  sub_10001721C(v81, v130, &qword_1000ED3C0, &qword_1000B70A0);
  sub_10001721C(v82, v67, &qword_1000ED3C0, &qword_1000B70A0);
  v83 = 0;
LABEL_26:
  (*(v153 + 56))(v67, v83, 1, v66);
  v114 = v151;
  sub_1000077CC(v65, v151, &qword_1000ED568, &qword_1000B7288);
  v115 = v156;
  sub_1000077CC(v67, v156, &qword_1000ED3C8, &qword_1000B70A8);
  v116 = v157;
  sub_1000077CC(v114, v157, &qword_1000ED568, &qword_1000B7288);
  v117 = sub_10000368C(&qword_1000ED608, &qword_1000B7310);
  sub_1000077CC(v115, v116 + *(v117 + 48), &qword_1000ED3C8, &qword_1000B70A8);
  sub_100007834(v67, &qword_1000ED3C8, &qword_1000B70A8);
  sub_100007834(v65, &qword_1000ED568, &qword_1000B7288);
  sub_100007834(v115, &qword_1000ED3C8, &qword_1000B70A8);
  return sub_100007834(v114, &qword_1000ED568, &qword_1000B7288);
}

uint64_t sub_10005666C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a1;
  v94 = a2;
  sub_100020F58();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Font.callout.getter();
  v13 = Text.font(_:)();
  v63 = v14;
  v64 = v13;
  v16 = v15;
  v65 = v17;

  sub_100021B08(v8, v10, v12 & 1);

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = v16 & 1;
  LOBYTE(v93) = v16 & 1;
  v19 = a3;
  v62 = Color.init(uiColor:)();
  v20 = a4[1];
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v93 = *a4;
    v94 = v20;

    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    static Font.caption.getter();
    v27 = Text.font(_:)();
    v60 = v28;
    v61 = v27;
    v30 = v29;
    v59 = v31;

    sub_100021B08(v22, v24, v26 & 1);

    KeyPath = swift_getKeyPath();
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v93) = v30 & 1;
    LOBYTE(v86) = 0;
    v32 = v30 & 1;
    if (UICellConfigurationState.isHighlighted.getter())
    {
      v33 = &selRef_radio_carSystemFocusLabelColor;
    }

    else
    {
      v33 = &selRef_radio_carSystemFocusLabelColor;
      if ((UICellConfigurationState.isSelected.getter() & 1) == 0 && (UICellConfigurationState.isFocused.getter() & 1) == 0)
      {
        v33 = &selRef_secondaryLabelColor;
      }
    }

    v46 = [objc_opt_self() *v33];
    v45 = Color.init(uiColor:)();
    v38 = 1;
    v35 = v60;
    v34 = v61;
    v37 = KeyPath;
    v36 = v59;
    v40 = v109;
    v39 = v108;
    v41 = v110;
    v42 = v111;
    v43 = v112;
    v44 = v113;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v32 = 0;
  }

  *&v80 = v64;
  *(&v80 + 1) = v63;
  LOBYTE(v81) = v18;
  *(&v81 + 1) = *v107;
  DWORD1(v81) = *&v107[3];
  v82 = v114;
  v83 = v115;
  v84 = v116;
  *(&v81 + 1) = v65;
  v85 = v62;
  *&v86 = v34;
  *v79 = v62;
  v77 = v115;
  v78 = v116;
  v75 = v81;
  v76 = v114;
  v74 = v80;
  *(&v86 + 1) = v35;
  *&v87 = v32;
  *(&v87 + 1) = v36;
  *&v88 = v37;
  *(&v88 + 1) = v38;
  *&v89 = 0;
  *(&v89 + 1) = v39;
  *&v90 = v40;
  *(&v90 + 1) = v41;
  *&v91 = v42;
  *(&v91 + 1) = v43;
  *&v92 = v44;
  *(&v92 + 1) = v45;
  *&v79[40] = v88;
  *&v79[24] = v87;
  *&v79[8] = v86;
  *&v79[104] = v92;
  *&v79[88] = v91;
  *&v79[72] = v90;
  *&v79[56] = v89;
  v47 = v80;
  v48 = v81;
  v49 = v115;
  *(a5 + 32) = v114;
  *(a5 + 48) = v49;
  *a5 = v47;
  *(a5 + 16) = v48;
  v50 = v78;
  v51 = *v79;
  v52 = *&v79[32];
  *(a5 + 96) = *&v79[16];
  *(a5 + 112) = v52;
  *(a5 + 64) = v50;
  *(a5 + 80) = v51;
  v53 = *&v79[48];
  v54 = *&v79[64];
  v55 = *&v79[80];
  v56 = *&v79[96];
  *(a5 + 192) = *&v79[112];
  *(a5 + 160) = v55;
  *(a5 + 176) = v56;
  *(a5 + 128) = v53;
  *(a5 + 144) = v54;
  v93 = v34;
  v94 = v35;
  v95 = v32;
  v96 = v36;
  v97 = v37;
  v98 = v38;
  v99 = 0;
  v100 = v39;
  v101 = v40;
  v102 = v41;
  v103 = v42;
  v104 = v43;
  v105 = v44;
  v106 = v45;
  sub_1000077CC(&v80, v66, &qword_1000ED500, &qword_1000B7220);
  sub_1000077CC(&v86, v66, &qword_1000ED508, &qword_1000B7228);
  sub_100007834(&v93, &qword_1000ED508, &qword_1000B7228);
  v66[0] = v64;
  v66[1] = v63;
  v67 = v18;
  *v68 = *v107;
  *&v68[3] = *&v107[3];
  v69 = v65;
  v70 = v114;
  v71 = v115;
  v72 = v116;
  v73 = v62;
  return sub_100007834(v66, &qword_1000ED500, &qword_1000B7220);
}

uint64_t sub_100056AEC@<X0>(__int16 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_100005A50(0, &qword_1000EC130, UIImage_ptr);
  if ((a1 & 0x100) != 0)
  {
    static UIImage.cafui_hdRadioLogoOrange.getter();
  }

  else
  {
    static UIImage.cafui_hdRadioLogo.getter();
  }

  v22 = Image.init(uiImage:)();

  dispatch thunk of CustomStringConvertible.description.getter();
  sub_100020F58();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  sub_100005A50(0, &qword_1000EC138, UIFont_ptr);
  static UIFont.cafui_preferredFont(for:weight:size:rounded:)();
  Font.init(_:)();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_100021B08(v5, v7, v9 & 1);

  v15 = Text.foregroundStyle<A>(_:)();
  v17 = v16;
  LOBYTE(v7) = v18;
  v20 = v19;
  sub_100021B08(v10, v12, v14 & 1);

  *a3 = v22;
  *(a3 + 8) = a2;
  *(a3 + 16) = v15;
  *(a3 + 24) = v17;
  *(a3 + 32) = v7 & 1;
  *(a3 + 40) = v20;

  sub_100021B18(v15, v17, v7 & 1);

  sub_100021B08(v15, v17, v7 & 1);
}

char *sub_100056D14(char *result)
{
  if (*&result[OBJC_IVAR____TtC5Media16RadioStationCell_config])
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    TerrestrialRadioStation.setFavorite(_:)((v2 & 1) == 0);

    [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_100056DD0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = Image.init(systemName:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v15[0]) == 1)
  {
    v5 = static Color.yellow.getter();
  }

  else
  {
    v6 = a3;
    v5 = Color.init(uiColor:)();
  }

  v17 = 0;
  *&v13 = v4;
  *(&v13 + 1) = v5;
  v14[0] = static Edge.Set.all.getter();
  __asm { FMOV            V0.2D, #8.0 }

  *&v14[8] = _Q0;
  *&v14[24] = _Q0;
  v14[40] = 0;
  sub_10000368C(&qword_1000ED4B8, &qword_1000B71A0);
  sub_10005B6BC();
  View.accessibilityIdentifier(_:)();
  v15[0] = v13;
  v15[1] = *v14;
  v16[0] = *&v14[16];
  *(v16 + 9) = *&v14[25];
  return sub_100007834(v15, &qword_1000ED4B8, &qword_1000B71A0);
}

id sub_1000571D4(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  v13.receiver = a1;
  v13.super_class = a8(a7, a6);
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

id sub_100057268(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4, a2);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_100057328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_10000368C(&qword_1000ED6E8, &qword_1000B74B0);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000368C(&qword_1000ED520, &qword_1000B7240);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  if (!a1)
  {
    goto LABEL_5;
  }

  v17 = a1;
  [v17 size];
  if (v19 == 0.0 && v18 == 0.0)
  {

LABEL_5:
    v20 = Image.init(systemName:)();
    v21 = type metadata accessor for Font.Design();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v22 = static Font.system(size:weight:design:)();
    sub_100007834(v6, &qword_1000ED388, &unk_1000B6FF0);
    KeyPath = swift_getKeyPath();
    v24 = static HierarchicalShapeStyle.secondary.getter();
    v25 = static Edge.Set.all.getter();
    v40 = 1;
    *v9 = v20;
    *(v9 + 1) = KeyPath;
    *(v9 + 2) = v22;
    *(v9 + 6) = v24;
    v9[32] = v25;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0u;
    v9[72] = 1;
    swift_storeEnumTagMultiPayload();
    sub_10000368C(&qword_1000ED598, &qword_1000B72E0);
    sub_10005BD48();
    sub_10005BA0C();
    return _ConditionalContent<>.init(storage:)();
  }

  v27 = v17;
  Image.init(uiImage:)();
  (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
  v28 = Image.resizable(capInsets:resizingMode:)();
  v39 = a2;
  v29 = v28;

  (*(v11 + 8))(v13, v10);
  v30 = &v16[*(v14 + 36)];
  v31 = *(type metadata accessor for RoundedRectangle() + 20);
  v32 = enum case for RoundedCornerStyle.continuous(_:);
  v33 = type metadata accessor for RoundedCornerStyle();
  (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
  __asm { FMOV            V0.2D, #6.0 }

  *v30 = _Q0;
  *&v30[*(sub_10000368C(&qword_1000EBB38, &qword_1000B4B80) + 36)] = 256;
  *v16 = v29;
  *(v16 + 1) = 0;
  *(v16 + 8) = 1;
  sub_1000077CC(v16, v9, &qword_1000ED520, &qword_1000B7240);
  swift_storeEnumTagMultiPayload();
  sub_10000368C(&qword_1000ED598, &qword_1000B72E0);
  sub_10005BD48();
  sub_10005BA0C();
  _ConditionalContent<>.init(storage:)();

  return sub_100007834(v16, &qword_1000ED520, &qword_1000B7240);
}

uint64_t sub_1000577D4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v79 = a1;
  v81 = a3;
  v80 = (a2 & 0x10000) == 0;
  v3 = type metadata accessor for RoundedRectangle() - 8;
  v77 = v3;
  v4 = __chkstk_darwin(v3);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v70 - v6;
  v8 = sub_10000368C(&qword_1000ED660, &qword_1000B73E0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v70 - v10;
  v12 = sub_10000368C(&qword_1000ED668, &qword_1000B73E8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v71 = &v70 - v14;
  v15 = sub_10000368C(&qword_1000ED670, &qword_1000B73F0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  v19 = sub_10000368C(&qword_1000ED678, &qword_1000B73F8);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v70 - v21;
  v23 = *(v3 + 28);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v75 = enum case for RoundedCornerStyle.continuous(_:);
  v74 = type metadata accessor for RoundedCornerStyle();
  v25 = *(v74 - 8);
  v73 = *(v25 + 104);
  v76 = v25 + 104;
  v73(&v7[v23], v24, v74);
  __asm { FMOV            V0.2D, #6.0 }

  v72 = _Q0;
  *v7 = _Q0;
  v31 = v7;
  v32 = objc_opt_self();
  v33 = dbl_1000B6D50[(v82 & 0x100) == 0];
  v34 = &selRef_blackColor;
  if ((v82 & 0x100) != 0)
  {
    v34 = &selRef_whiteColor;
  }

  v35 = [v32 *v34];
  v36 = [v35 colorWithAlphaComponent:v33];

  v37 = Color.init(_:)();
  v38 = v22;
  sub_10005C090(v31, v11);
  *&v11[*(v9 + 60)] = v37;
  *&v11[*(v9 + 64)] = 256;
  v39 = v71;
  sub_10001721C(v11, v71, &qword_1000ED660, &qword_1000B73E0);
  v40 = v39 + *(v13 + 44);
  *v40 = 0x3FF0000000000000;
  *(v40 + 8) = 0;
  v41 = static Alignment.center.getter();
  v43 = v42;
  v44 = v78;
  sub_10001721C(v39, v18, &qword_1000ED668, &qword_1000B73E8);
  v45 = &v18[*(v16 + 44)];
  v46 = v79;
  *v45 = v79;
  *(v45 + 1) = v41;
  *(v45 + 2) = v43;
  v47 = 0.2;
  if ((v80 | v82))
  {
    v47 = 1.0;
  }

  v48 = v82;
  if ((v82 & 0x1000000) != 0)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0.3;
  }

  sub_10001721C(v18, v38, &qword_1000ED670, &qword_1000B73F0);
  v50 = v38;
  *(v38 + *(v20 + 44)) = v49;
  v51 = v46;
  v52 = static Alignment.center.getter();
  v54 = v53;
  v73(&v44[*(v77 + 28)], v75, v74);
  *v44 = v72;
  if (v48)
  {
    v55 = [objc_opt_self() radio_carSystemFocusColor];
    v56 = Color.init(uiColor:)();
  }

  else
  {
    v56 = static Color.clear.getter();
  }

  v57 = v56;
  v58 = sub_10000368C(&qword_1000ED680, &qword_1000B7400);
  v59 = v81;
  v60 = v81 + *(v58 + 36);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_10005C0F4(v44, v60);
  v61 = v60 + *(sub_10000368C(&qword_1000ED688, &qword_1000B7408) + 36);
  v62 = v84;
  *v61 = v83;
  *(v61 + 16) = v62;
  *(v61 + 32) = v85;
  v63 = sub_10000368C(&qword_1000ED690, &qword_1000B7410);
  *(v60 + *(v63 + 52)) = v57;
  *(v60 + *(v63 + 56)) = 256;
  v64 = static Alignment.center.getter();
  v66 = v65;
  sub_10005C158(v44);
  v67 = (v60 + *(sub_10000368C(&qword_1000ED698, &qword_1000B7418) + 36));
  *v67 = v64;
  v67[1] = v66;
  v68 = (v60 + *(sub_10000368C(&qword_1000ED6A0, &qword_1000B7420) + 36));
  *v68 = v52;
  v68[1] = v54;
  return sub_10001721C(v50, v59, &qword_1000ED678, &qword_1000B73F8);
}

uint64_t sub_100057D50@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 8);
  if (*(v1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 11))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  return sub_1000577D4(*v1, v3 | v4 | v5, a1);
}

uint64_t sub_100057D98(uint64_t a1)
{
  v3 = sub_10000368C(&qword_1000ED2B0, &qword_1000B6EF0);
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v13[-1] - v6;
  v8 = *(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config);
  if (v8)
  {
    __chkstk_darwin(result);
    *(&v12 - 4) = v8;
    *(&v12 - 24) = v9 & 1;
    *(&v12 - 23) = v10 & 1;
    *(&v12 - 22) = v11 & 1;
    *(&v12 - 2) = a1;
    *(&v12 - 1) = v1;

    sub_10000368C(&qword_1000ED2B8, &qword_1000B6EF8);
    sub_10005AC28();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v3;
    v13[4] = sub_100005870(&qword_1000ED2E8, &qword_1000ED2B0, &qword_1000B6EF0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10005AD6C(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v4 + 8))(v7, v3);
    UICollectionViewCell.contentConfiguration.setter();
  }

  return result;
}

__n128 sub_100057F98@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10000368C(&qword_1000ED2D0, &qword_1000B6F00);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v24 - v12;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0x4018000000000000;
  v13[16] = 0;
  v14 = sub_10000368C(&qword_1000ED2F0, &qword_1000B6F10);
  sub_100058158(a1, a2 & 0x10101, a3, a4, &v13[*(v14 + 44)]);
  LOBYTE(a4) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v15 = &v13[*(v11 + 44)];
  *v15 = a4;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001721C(v13, a5, &qword_1000ED2D0, &qword_1000B6F00);
  v20 = a5 + *(sub_10000368C(&qword_1000ED2B8, &qword_1000B6EF8) + 36);
  v21 = v24[5];
  *(v20 + 64) = v24[4];
  *(v20 + 80) = v21;
  *(v20 + 96) = v24[6];
  v22 = v24[1];
  *v20 = v24[0];
  *(v20 + 16) = v22;
  result = v24[3];
  *(v20 + 32) = v24[2];
  *(v20 + 48) = result;
  return result;
}

uint64_t sub_100058158@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v9 = sub_10000368C(&qword_1000ED2F8, &qword_1000B6F18);
  v10 = __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = sub_10000368C(&qword_1000ED300, &qword_1000B6F20);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = (&v38 - v19);
  *v20 = static Alignment.center.getter();
  v20[1] = v21;
  v22 = sub_10000368C(&qword_1000ED308, &qword_1000B6F28);
  sub_100058484(a2 & 0x10101, a3, a4, v20 + *(v22 + 44));
  v23 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  if ((v23[1] & 1) == 0 && *v23)
  {
    goto LABEL_5;
  }

  v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v25 = *(a1 + v24);
  CAFMediaItem.songArtist.getter();
  v27 = v26;

  if (v27)
  {

LABEL_5:
    LODWORD(v27) = 1;
  }

  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v28 = sub_10000368C(&qword_1000ED310, &qword_1000B6F30);
  sub_10005925C(a1, a2 & 0x10101, v27, &v14[*(v28 + 44)]);
  v29 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v30 = &v14[*(v9 + 36)];
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_1000077CC(v20, v18, &qword_1000ED300, &qword_1000B6F20);
  sub_1000077CC(v14, v12, &qword_1000ED2F8, &qword_1000B6F18);
  v35 = v39;
  sub_1000077CC(v18, v39, &qword_1000ED300, &qword_1000B6F20);
  v36 = sub_10000368C(&qword_1000ED318, &qword_1000B6F38);
  sub_1000077CC(v12, v35 + *(v36 + 48), &qword_1000ED2F8, &qword_1000B6F18);
  sub_100007834(v14, &qword_1000ED2F8, &qword_1000B6F18);
  sub_100007834(v20, &qword_1000ED300, &qword_1000B6F20);
  sub_100007834(v12, &qword_1000ED2F8, &qword_1000B6F18);
  return sub_100007834(v18, &qword_1000ED300, &qword_1000B6F20);
}

uint64_t sub_100058484@<X0>(unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a4;
  v106 = a2;
  v113 = a5;
  v107 = a2 & 1;
  v93 = type metadata accessor for WaveformColorPalette();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for WaveformState();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for WaveformView();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000368C(&qword_1000ED3C0, &qword_1000B70A0);
  v10 = *(v9 - 8);
  v110 = v9;
  v111 = v10;
  __chkstk_darwin(v9);
  v88 = v83 - v11;
  v12 = sub_10000368C(&qword_1000ED3C8, &qword_1000B70A8);
  v13 = __chkstk_darwin(v12 - 8);
  v112 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v109 = v83 - v15;
  v103 = type metadata accessor for PlainButtonStyle();
  v104 = *(v103 - 8);
  __chkstk_darwin(v103);
  v17 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10000368C(&qword_1000ED3D0, &qword_1000B70B0);
  v102 = *(v101 - 8);
  __chkstk_darwin(v101);
  v19 = v83 - v18;
  v20 = sub_10000368C(&qword_1000ED3D8, &qword_1000B70B8);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = v83 - v22;
  v24 = sub_10000368C(&qword_1000ED3E0, &qword_1000B70C0);
  v25 = v24 - 8;
  v26 = __chkstk_darwin(v24);
  v108 = v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = v83 - v29;
  __chkstk_darwin(v28);
  v94 = v83 - v31;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v100 = v117;
  v95 = UICellConfigurationState.isFocused.getter();
  v32 = UICellConfigurationState.traitCollection.getter();
  v33 = [v32 userInterfaceStyle];

  v99 = v33 == 2;
  v98 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v116 = 0;
  v97 = static Alignment.topLeading.getter();
  v96 = v42;
  v43 = swift_allocObject();
  v44 = v105;
  *(v43 + 16) = v105;
  v83[1] = a3;
  v114 = a3;
  v45 = v44;
  sub_10000368C(&qword_1000ED3E8, &qword_1000B7110);
  sub_10005B2C8();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100005870(&qword_1000ED410, &qword_1000ED3D0, &qword_1000B70B0, &protocol conformance descriptor for Button<A>);
  sub_10005BF48(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v46 = v101;
  v47 = v103;
  View.buttonStyle<A>(_:)();
  v48 = v17;
  v49 = v94;
  (*(v104 + 8))(v48, v47);
  (*(v102 + 8))(v19, v46);
  v50 = static SafeAreaRegions.all.getter();
  LOBYTE(v47) = static Edge.Set.all.getter();
  v51 = sub_10000368C(&qword_1000ED418, &qword_1000B7128);
  v52 = v106;
  v53 = v95 & ((v106 & 0x100) == 0);
  v54 = &v23[*(v51 + 36)];
  *v54 = v50;
  v54[8] = v47;
  *&v23[*(v21 + 44)] = xmmword_1000B6D60;
  v55 = HIWORD(v52) & 1;
  v56 = v52;
  if ((v52 & 0x100) != 0)
  {
    v57 = 1.0;
  }

  else
  {
    v57 = 0.0;
  }

  v58 = &v30[*(v25 + 44)];
  sub_10001721C(v23, v58, &qword_1000ED3D8, &qword_1000B70B8);
  *(v58 + *(sub_10000368C(&qword_1000ED420, &qword_1000B7130) + 36)) = v57;
  v59 = (v58 + *(sub_10000368C(&qword_1000ED428, &qword_1000B7138) + 36));
  v60 = v96;
  *v59 = v97;
  v59[1] = v60;
  *v30 = v100;
  v30[8] = v53;
  v30[9] = v99;
  v30[10] = v107;
  v30[11] = v55;
  v30[16] = v98;
  *(v30 + 5) = *&v115[3];
  *(v30 + 17) = *v115;
  *(v30 + 3) = v35;
  *(v30 + 4) = v37;
  *(v30 + 5) = v39;
  *(v30 + 6) = v41;
  v30[56] = 0;
  sub_10001721C(v30, v49, &qword_1000ED3E0, &qword_1000B70C0);
  if (v56)
  {
    v61 = UICellConfigurationState.isFocused.getter();
    v62 = objc_opt_self();
    v63 = &selRef_radio_carSystemFocusLabelColor;
    if ((v61 & 1) == 0)
    {
      v63 = &selRef_radio_carSystemFocusColor;
    }

    v64 = [v62 *v63];
    Color.init(uiColor:)();
    v65 = enum case for WaveformState.SamplingMode.unavailable(_:);
    v66 = type metadata accessor for WaveformState.SamplingMode();
    v67 = v84;
    (*(*(v66 - 8) + 104))(v84, v65, v66);
    (*(v85 + 104))(v67, enum case for WaveformState.playing(_:), v86);
    v68 = v87;
    WaveformView.init(state:)();
    swift_retain_n();
    v69 = v91;
    WaveformColorPalette.init(playingColor:pausedColor:bufferingColorMin:bufferingColorMax:)();
    sub_10005BF48(&qword_1000ED438, &type metadata accessor for WaveformView, &protocol conformance descriptor for WaveformView);
    v70 = v88;
    v71 = v90;
    View.waveformColorPalette(_:)();
    (*(v92 + 8))(v69, v93);
    (*(v89 + 8))(v68, v71);
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();

    v72 = v110;
    v73 = (v70 + *(v110 + 36));
    v74 = v118;
    *v73 = v117;
    v73[1] = v74;
    v73[2] = v119;
    v75 = v109;
    sub_10001721C(v70, v109, &qword_1000ED3C0, &qword_1000B70A0);
    v76 = 0;
    v77 = v72;
  }

  else
  {
    v76 = 1;
    v75 = v109;
    v77 = v110;
  }

  (*(v111 + 56))(v75, v76, 1, v77);
  v78 = v108;
  sub_1000077CC(v49, v108, &qword_1000ED3E0, &qword_1000B70C0);
  v79 = v112;
  sub_1000077CC(v75, v112, &qword_1000ED3C8, &qword_1000B70A8);
  v80 = v113;
  sub_1000077CC(v78, v113, &qword_1000ED3E0, &qword_1000B70C0);
  v81 = sub_10000368C(&qword_1000ED430, &unk_1000B7140);
  sub_1000077CC(v79, v80 + *(v81 + 48), &qword_1000ED3C8, &qword_1000B70A8);
  sub_100007834(v75, &qword_1000ED3C8, &qword_1000B70A8);
  sub_100007834(v49, &qword_1000ED3E0, &qword_1000B70C0);
  sub_100007834(v79, &qword_1000ED3C8, &qword_1000B70A8);
  return sub_100007834(v78, &qword_1000ED3E0, &qword_1000B70C0);
}