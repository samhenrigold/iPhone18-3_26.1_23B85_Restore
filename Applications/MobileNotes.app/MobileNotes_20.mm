uint64_t sub_1002F0CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1002FE0A4(&qword_1006C95D0, type metadata accessor for Key, &unk_1005340F8);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v9, a3, a4, a5);
}

id sub_1002F0DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a4;
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v9 = _s16AttributedStringV9AttributeVMa(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = objc_allocWithZone(NSMutableAttributedString);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 initWithString:v14];

  v16 = *(a7 + 16);
  if (v16)
  {
    v17 = a7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);
    while (1)
    {
      sub_1002FFA5C(v17, v12, _s16AttributedStringV9AttributeVMa);
      sub_1002F1014(v26, v27, v28, v29);
      if (v7)
      {
        break;
      }

      type metadata accessor for Key(0);
      sub_1002FE0A4(&qword_1006C95D0, type metadata accessor for Key, &unk_1005340F8);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v21 = *v12;
      v20 = v12[1];
      v31.location = [v15 ic_range];
      v31.length = v22;
      v30.location = v21;
      v30.length = v20;
      v23 = NSIntersectionRange(v30, v31);
      [v15 addAttributes:isa range:{v23.location, v23.length}];

      sub_1002FFAC4(v12, _s16AttributedStringV9AttributeVMa);
      v17 += v18;
      if (!--v16)
      {
        return v15;
      }
    }

    sub_1002FFAC4(v12, _s16AttributedStringV9AttributeVMa);
  }

  return v15;
}

unint64_t sub_1002F1014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v116 = a4;
  v104 = a3;
  v103 = a2;
  v112 = a1;
  v5 = sub_10015DA04(&qword_1006C37E0, &unk_100541510);
  __chkstk_darwin(v5 - 8);
  v115 = &v100 - v6;
  v114 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v105 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  __chkstk_darwin(v8 - 8);
  v109 = &v100 - v9;
  v111 = type metadata accessor for URL();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v102 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10015DA04(&qword_1006C37E8, &qword_100541520);
  __chkstk_darwin(v11 - 8);
  v108 = &v100 - v12;
  v13 = sub_10015DA04(&unk_1006C1710, &qword_10053BA80);
  __chkstk_darwin(v13 - 8);
  v15 = &v100 - v14;
  v107 = type metadata accessor for Date();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v101 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10015DA04(&unk_1006BE0B0, qword_1005407C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v100 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s16AttributedStringV9AttributeVMa(0);
  v25 = v4;
  v26 = (v4 + v24[7]);
  v27 = v26[1];
  if (v27 == 1)
  {
    v28 = sub_1001901EC(_swiftEmptyArrayStorage);
  }

  else
  {
    v121 = *v26;
    v122 = v27;
    v29 = *(v26 + 2);
    v123 = *(v26 + 1);
    v124 = v29;
    v125 = *(v26 + 3);
    v126 = v26[8];
    v28 = sub_1002F2868();
  }

  v30 = v28;
  sub_100006038(v4 + v24[5], v19, &unk_1006BE0B0, qword_1005407C0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000073B4(v19, &unk_1006BE0B0, qword_1005407C0);
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    v31 = ICTTAttributeNameReplicaID;
    v120 = v20;
    v32 = sub_100180240(&v119);
    (*(v21 + 16))(v32, v23, v20);
    sub_10001FA64(&v119, v118);
    v33 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = v30;
    sub_1002E67CC(v118, v33, isUniquelyReferenced_nonNull_native);

    (*(v21 + 8))(v23, v20);
    v30 = v127;
  }

  v35 = v117;
  v36 = v25;
  sub_100006038(v25 + v24[6], v15, &unk_1006C1710, &qword_10053BA80);
  v37 = v106;
  v38 = v107;
  if ((*(v106 + 48))(v15, 1, v107) == 1)
  {
    sub_1000073B4(v15, &unk_1006C1710, &qword_10053BA80);
  }

  else
  {
    v39 = *(v37 + 32);
    v117 = v36;
    v40 = v35;
    v41 = v101;
    v39(v101, v15, v38);
    v42 = ICTTAttributeNameTimestamp;
    Date.timeIntervalSince1970.getter();
    v44 = v43 + *(v116 + 8);
    v120 = &type metadata for Double;
    *&v119 = v44;
    sub_10001FA64(&v119, v118);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v30;
    sub_1002E67CC(v118, v42, v45);

    v46 = v41;
    v35 = v40;
    v36 = v117;
    (*(v37 + 8))(v46, v38);
    v30 = v127;
  }

  v47 = v108;
  v48 = v24;
  sub_100006038(v36 + v24[8], v108, &qword_1006C37E8, &qword_100541520);
  v49 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v50 = (*(*(v49 - 8) + 48))(v47, 1, v49);
  v51 = v111;
  if (v50 == 1)
  {
    sub_1000073B4(v47, &qword_1006C37E8, &qword_100541520);
    v52 = *(v36 + v24[11]);
    v53 = v110;
    if (*(v36 + v48[11]) > 2u)
    {
      if (v52 == 3)
      {
        v54 = 1;
      }

      else
      {
        if (v52 != 4)
        {
          goto LABEL_34;
        }

        v54 = 3;
      }
    }

    else if (v52)
    {
      if (v52 == 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = 2;
      }
    }

    else
    {
      v54 = -1;
    }

    v58 = ICTTNSWritingDirectionAttributeName;
    v120 = &type metadata for Int;
    *&v119 = v54;
    sub_10001FA64(&v119, v118);
    v59 = v58;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v30;
    sub_1002E67CC(v118, v59, v60);

    v30 = v127;
  }

  else
  {
    v55 = sub_1002F4790();
    sub_1002FFAC4(v47, _s16AttributedStringV14ParagraphStyleVMa);
    v56 = *(v36 + v24[11]);
    v53 = v110;
    if (*(v36 + v48[11]) > 2u)
    {
      if (v56 == 3)
      {
        v57 = 1;
      }

      else if (v56 == 4)
      {
        v57 = 3;
      }

      else
      {
        v57 = [v55 writingDirection];
      }
    }

    else if (v56)
    {
      if (v56 == 1)
      {
        v57 = 0;
      }

      else
      {
        v57 = 2;
      }
    }

    else
    {
      v57 = -1;
    }

    [v55 setWritingDirection:v57];
    v61 = ICTTAttributeNameParagraphStyle;
    [v55 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v62 = swift_isUniquelyReferenced_nonNull_native();
    *&v118[0] = v30;
    sub_1002E67CC(&v119, v61, v62);

    v30 = *&v118[0];
  }

LABEL_34:
  v63 = v109;
  sub_100006038(v36 + v48[10], v109, &qword_1006BCC20, &qword_100531F40);
  if ((*(v53 + 48))(v63, 1, v51) == 1)
  {
    sub_1000073B4(v63, &qword_1006BCC20, &qword_100531F40);
  }

  else
  {
    v64 = v102;
    (*(v53 + 32))(v102, v63, v51);
    v65 = ICTTNSLinkAttributeName;
    URL._bridgeToObjectiveC()(v66);
    v68 = v67;
    v120 = sub_1000054A4(0, &qword_1006C3818, NSURL_ptr);
    *&v119 = v68;
    sub_10001FA64(&v119, v118);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v30;
    sub_1002E67CC(v118, v65, v69);

    (*(v53 + 8))(v64, v51);
    v30 = v127;
  }

  v70 = *(v36 + v48[9]);
  if (v70 != 5)
  {
    v71 = ICTTAttributeNameEmphasis;
    v72 = qword_100542640[v70];
    v120 = &type metadata for Int;
    *&v119 = v72;
    sub_10001FA64(&v119, v118);
    v73 = v71;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v30;
    sub_1002E67CC(v118, v73, v74);

    v30 = v127;
  }

  v75 = v112;
  v76 = (v36 + v48[12]);
  v77 = v76[1];
  if (v77)
  {
    if (*(v112 + 16))
    {
      v78 = sub_1002DF11C(*v76, v77);
      if (v79)
      {
        v80 = *(*(v75 + 56) + 8 * v78);
        v81 = ICTTNSAttachmentAttributeName;
        v120 = sub_1000054A4(0, &qword_1006C37F0, ICTTAttachment_ptr);
        *&v119 = v80;
        sub_10001FA64(&v119, v118);
        v82 = v80;
        v83 = v81;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v30;
        sub_1002E67CC(v118, v83, v84);

        v30 = v127;
      }
    }
  }

  v85 = v115;
  sub_100006038(v36 + v48[13], v115, &qword_1006C37E0, &unk_100541510);
  if ((*(v113 + 48))(v85, 1, v114) == 1)
  {
    sub_1000073B4(v85, &qword_1006C37E0, &unk_100541510);
  }

  else
  {
    v86 = v105;
    sub_1002FF940(v85, v105, _s16AttributedStringV16InlineAttachmentVMa);
    v87 = sub_1002F5C60(v103, v104, v116);
    if (v35)
    {
      sub_1002FFAC4(v86, _s16AttributedStringV16InlineAttachmentVMa);
    }

    else
    {
      v88 = v87;
      v89 = [v87 identifier];
      if (v89)
      {
        v90 = v89;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v91 = [v88 typeUTI];
      if (v91)
      {
        v92 = v91;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v93 = sub_1000054A4(0, &qword_1006C37F0, ICTTAttachment_ptr);
      v94 = ICTTAttachment.init(identifier:universalTypeIdentifier:)();
      v95 = ICTTNSAttachmentAttributeName;
      v120 = v93;
      *&v119 = v94;
      sub_10001FA64(&v119, v118);
      v96 = v95;
      v97 = v94;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v127 = v30;
      sub_1002E67CC(v118, v96, v98);

      sub_1002FFAC4(v105, _s16AttributedStringV16InlineAttachmentVMa);
      return v127;
    }
  }

  return v30;
}

uint64_t sub_1002F1D58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_10015DA04(&qword_1006C3D30, &qword_100541D70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10017CC60(a1, a1[3]);
  sub_100300C40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_10015DA04(&qword_1006C3D18, &qword_100541D68);
    sub_100300C94(&qword_1006C3D38, &qword_1006C3D40, &unk_100541924, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1002F1F34()
{
  if (*v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1002F1F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
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

uint64_t sub_1002F2050(uint64_t a1)
{
  v2 = sub_100300C40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F208C(uint64_t a1)
{
  v2 = sub_100300C40();

  return CodingKey.debugDescription.getter(a1, v2);
}

CGColorRef sub_1002F2114(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = CGColorSpaceCreateWithName(v6);

  if (!v7)
  {
    if (qword_1006BC760 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10002597C(v15, qword_1006C37C8);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100009D88(a1, a2, &v29);
      _os_log_impl(&_mh_execute_header, v16, v17, "Cannot create color space with name — returning nil {name: %s}", v18, 0xCu);
      sub_100009F60(v19);
    }

    return 0;
  }

  v8 = *(a3 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v29 = _swiftEmptyArrayStorage;
    sub_100189624(0, v8, 0);
    v9 = _swiftEmptyArrayStorage;
    v10 = (a3 + 32);
    v11 = _swiftEmptyArrayStorage[2];
    do
    {
      v12 = *v10;
      v29 = v9;
      v13 = v9[3];
      if (v11 >= v13 >> 1)
      {
        sub_100189624((v13 > 1), v11 + 1, 1);
        v9 = v29;
      }

      v9[2] = v11 + 1;
      v9[v11 + 4] = v12;
      ++v10;
      ++v11;
      --v8;
    }

    while (v8);
  }

  v14 = CGColorCreate(v7, v9 + 4);

  if (!v14)
  {
    if (qword_1006BC760 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10002597C(v20, qword_1006C37C8);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v25 = Array.description.getter();
      v27 = sub_100009D88(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cannot create color with components — returning nil {components: %s}", v23, 0xCu);
      sub_100009F60(v24);
    }

    return 0;
  }

  return v14;
}

uint64_t sub_1002F248C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_10015DA04(&qword_1006C3E10, &qword_100542528);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10017CC60(a1, a1[3]);
  sub_100301570();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_10015DA04(&qword_1006C3E00, &qword_100542520);
    sub_1003015C4(&qword_1006C3E18, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1002F2654()
{
  if (*v0)
  {
    return 0x6E656E6F706D6F63;
  }

  else
  {
    return 0x6563617073;
  }
}

uint64_t sub_1002F2690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6563617073 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
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

uint64_t sub_1002F2770(uint64_t a1)
{
  v2 = sub_100301570();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F27AC(uint64_t a1)
{
  v2 = sub_100301570();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002F2814@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void *sub_1002F2868()
{
  v1 = v0;
  v47 = &_swiftEmptyDictionarySingleton;
  v2 = *(v0 + 26);
  if (v2)
  {
    v3 = *(v0 + 25) & 1 | 2;
  }

  else
  {
    v3 = *(v0 + 25) & 1;
  }

  if (v2 == 2)
  {
    v4 = *(v0 + 25) & 1;
  }

  else
  {
    v4 = v3;
  }

  if (*(v0 + 8))
  {
    if (*(v0 + 24))
    {
      v5 = objc_allocWithZone(ICTTFont);
      v6 = String._bridgeToObjectiveC()();
      v7 = [v5 initWithName:v6 size:v4 hints:0.0];
    }

    else
    {
      v11 = *(v0 + 16);
      v12 = objc_allocWithZone(ICTTFont);
      v6 = String._bridgeToObjectiveC()();
      v7 = [v12 initWithName:v6 size:v4 hints:v11];
    }

    v13 = v7;

    v14 = ICTTAttributeNameFont;
    if (!v13)
    {
      goto LABEL_20;
    }

LABEL_18:
    v46 = sub_1000054A4(0, &qword_1006C3800, ICTTFont_ptr);
    *&v45 = v13;
    sub_10001FA64(&v45, v44);
    v16 = v14;
    v9 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002E67CC(v44, v16, isUniquelyReferenced_nonNull_native);

    goto LABEL_19;
  }

  if ((*(v0 + 24) & 1) == 0)
  {
    v15 = [objc_allocWithZone(ICTTFont) initWithName:0 size:v4 hints:*(v0 + 16)];
    v14 = ICTTAttributeNameFont;
    if (!v15)
    {
LABEL_20:
      v18 = v14;
      sub_1004775B4(v44);

      sub_1000073B4(v44, &qword_1006BE7A0, &unk_100535E20);
      goto LABEL_21;
    }

    v13 = v15;
    goto LABEL_18;
  }

  if (v4)
  {
    v8 = ICTTAttributeNameFontHints;
    v46 = &type metadata for UInt32;
    LODWORD(v45) = v4;
    sub_10001FA64(&v45, v44);
    v9 = v8;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002E67CC(v44, v9, v10);
LABEL_19:

    v47 = &_swiftEmptyDictionarySingleton;
  }

LABEL_21:
  v19 = *(v0 + 27);
  if (v19 != 2 && (v19 & 1) != 0)
  {
    v20 = ICTTAttributeNameUnderline;
    v46 = &type metadata for Bool;
    LOBYTE(v45) = 1;
    sub_10001FA64(&v45, v44);
    v21 = v20;
    v22 = v47;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002E67CC(v44, v21, v23);

    v47 = v22;
  }

  v24 = *(v1 + 28);
  if (v24 != 2 && (v24 & 1) != 0)
  {
    v25 = ICTTAttributeNameStrikethrough;
    v46 = &type metadata for Bool;
    LOBYTE(v45) = 1;
    sub_10001FA64(&v45, v44);
    v26 = v25;
    v27 = v47;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002E67CC(v44, v26, v28);

    v47 = v27;
  }

  if ((*(v1 + 40) & 1) == 0)
  {
    v29 = *(v1 + 32);
    v30 = ICTTAttributeNameSuperscript;
    v46 = &type metadata for Int;
    *&v45 = v29;
    sub_10001FA64(&v45, v44);
    v31 = v30;
    v32 = v47;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002E67CC(v44, v31, v33);

    v47 = v32;
  }

  v34 = *(v1 + 56);
  if (v34)
  {
    v35 = sub_1002F2114(*(v1 + 48), v34, *(v1 + 64));
    if (v35)
    {
      v36 = v35;
      v37 = ICTTAttributeNameForegroundColor;
      type metadata accessor for CGColor(0);
      v46 = v38;
      *&v45 = v36;
      sub_10001FA64(&v45, v44);
      v39 = v37;
      v40 = v36;
      v41 = v47;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_1002E67CC(v44, v39, v42);

      return v41;
    }
  }

  return v47;
}

uint64_t sub_1002F2C9C(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C3BE8, &qword_100541D18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10017CC60(a1, a1[3]);
  sub_10030044C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 48);
    v12 = *(v3 + 64);
    v10[15] = 7;
    sub_10030055C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002F2F2C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x7263737265707573;
  if (v1 != 6)
  {
    v3 = 0x726F6C6F63;
  }

  v4 = 0x6C7265646E557369;
  if (v1 != 4)
  {
    v4 = 0x656B697274537369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x646C6F427369;
  if (v1 != 2)
  {
    v5 = 0x63696C6174497369;
  }

  if (*v0)
  {
    v2 = 0x7A6953746E696F70;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002F3038@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002FE550(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002F3060(uint64_t a1)
{
  v2 = sub_10030044C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F309C(uint64_t a1)
{
  v2 = sub_10030044C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1002F30D8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1002FE7F4(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

Swift::Int sub_1002F3150()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002F3214(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002F32C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002F3384@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002FEE48(*a1);
  *a2 = result;
  return result;
}

void sub_1002F33B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x454C50525550;
  v5 = 0xE600000000000000;
  v6 = 0x45474E41524FLL;
  v7 = 1414416717;
  if (v2 != 3)
  {
    v7 = 1163217986;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 1263421776;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1002F34F8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x4C5F444548534144;
    v6 = 0x44455245424D554ELL;
    if (a1 != 8)
    {
      v6 = 0x53494C4B43454843;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x434150534F4E4F4DLL;
    if (a1 != 5)
    {
      v7 = 0x4C5F54454C4C5542;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x454C544954;
    v2 = 0x4944414548425553;
    v3 = 1497648962;
    if (a1 != 3)
    {
      v3 = 0x4E4F4954504143;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x474E4944414548;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1002F3654(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1002F34F8(*a1);
  v5 = v4;
  if (v3 == sub_1002F34F8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002F36DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1002F34F8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002F3740(uint64_t a1)
{
  sub_1002F34F8(*v1);
  String.hash(into:)();
}

Swift::Int sub_1002F3794(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1002F34F8(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002F37F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002FEE94(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002F3824@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002F34F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1002F390C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002F39E4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002F3AA8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002F3B7C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002FEEE0(*a1);
  *a2 = result;
  return result;
}

void sub_1002F3BAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1413891404;
  v5 = 0xE500000000000000;
  v6 = 0x5448474952;
  v7 = 0xE900000000000044;
  v8 = 0x454946495453554ALL;
  if (v2 != 3)
  {
    v8 = 0x4C41525554414ELL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5245544E4543;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1002F3CF0(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C3BC0, &qword_100541D08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10017CC60(a1, a1[3]);
  sub_1003003F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1002FE0A4(&qword_1006C3BC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    _s16AttributedStringV13ChecklistItemVMa(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1002F3EA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for UUID();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10015DA04(&qword_1006C3BA8, &qword_100541D00);
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v20 - v7;
  v9 = _s16AttributedStringV13ChecklistItemVMa(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017CC60(a1, a1[3]);
  sub_1003003F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100009F60(a1);
  }

  v20 = v11;
  v12 = v22;
  v13 = v23;
  v27 = 0;
  sub_1002FE0A4(&qword_1006C3BB8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v20, v6, v14);
  v26 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v12 + 8))(v8, v25);
  v16 = v15 & 1;
  v18 = v20;
  v17 = v21;
  v20[*(v9 + 20)] = v16;
  sub_1002FFA5C(v18, v17, _s16AttributedStringV13ChecklistItemVMa);
  sub_100009F60(a1);
  return sub_1002FFAC4(v18, _s16AttributedStringV13ChecklistItemVMa);
}

uint64_t sub_1002F41FC()
{
  if (*v0)
  {
    return 0x656E6F447369;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1002F4238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6F447369 && a2 == 0xE600000000000000)
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

uint64_t sub_1002F4318(uint64_t a1)
{
  v2 = sub_1003003F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F4354(uint64_t a1)
{
  v2 = sub_1003003F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002F43C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10015DA04(&unk_1006BE0B0, qword_1005407C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_10015DA04(&qword_1006C3808, &unk_100541530);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v11 = v10[8];
  v12 = _s16AttributedStringV13ChecklistItemVMa(0);
  v13 = *(v12 - 8);
  v35 = *(v13 + 56);
  v36 = v11;
  v34 = v13 + 56;
  v35(a2 + v11, 1, 1, v12);
  v14 = v10[10];
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v38 = *(v16 + 56);
  v39 = v14;
  v37 = v16 + 56;
  v38(a2 + v14, 1, 1, v15);
  v17 = sub_1002FD6B0([a1 style]);
  if (v17 == 10)
  {
    v18 = 3;
  }

  else
  {
    v18 = v17;
  }

  *a2 = v18;
  v19 = sub_1002FD828([a1 alignment]);
  if (v19 == 5)
  {
    v20 = 4;
  }

  else
  {
    v20 = v19;
  }

  *(a2 + 1) = v20;
  *(a2 + 8) = [a1 indent];
  if (sub_1002F34F8(v18) == 0x44455245424D554ELL && v21 == 0xED00005453494C5FLL)
  {

LABEL_11:
    v23 = [a1 startingItemNumber];
    v24 = 0;
    goto LABEL_13;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_11;
  }

  v23 = 0;
  v24 = 1;
LABEL_13:
  *(a2 + 16) = v23;
  *(a2 + 24) = v24;
  v25 = [a1 todo];
  if (v25)
  {
    v26 = v25;
    v27 = [v26 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v27) = [v26 done];
    v28 = 0;
    v9[*(v12 + 20)] = v27;
  }

  else
  {
    v28 = 1;
  }

  v29 = 1;
  v35(v9, v28, 1, v12);
  v30 = a2 + v10[9];
  sub_10000A49C(v9, a2 + v36, &qword_1006C3808, &unk_100541530);
  *v30 = [a1 blockQuoteLevel];
  *(v30 + 8) = 0;
  v31 = [a1 uuid];
  if (v31)
  {
    v32 = v31;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
    a1 = v32;
  }

  v38(v6, v29, 1, v15);
  return sub_10000A49C(v6, a2 + v39, &unk_1006BE0B0, qword_1005407C0);
}

id sub_1002F4790()
{
  v1 = v0;
  v2 = sub_10015DA04(&unk_1006BE0B0, qword_1005407C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_10015DA04(&qword_1006C3808, &unk_100541530);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1002F34E4(*v1);
  v9 = [objc_opt_self() paragraphStyleNamed:v8];
  [v9 setAlignment:*(v1 + 1)];
  [v9 setIndent:*(v1 + 8)];
  if (*(v1 + 24) == 1)
  {
    v10 = [v9 startingItemNumber];
  }

  else
  {
    v10 = *(v1 + 16);
  }

  [v9 setStartingItemNumber:v10];
  v11 = _s16AttributedStringV14ParagraphStyleVMa(0);
  sub_100006038(v1 + v11[8], v7, &qword_1006C3808, &unk_100541530);
  v12 = _s16AttributedStringV13ChecklistItemVMa(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1000073B4(v7, &qword_1006C3808, &unk_100541530);
    v13 = 0;
  }

  else
  {
    v14 = v7[*(v12 + 20)];
    v15 = objc_allocWithZone(ICTTTodo);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v13 = [v15 initWithIdentifier:isa done:v14];

    sub_1002FFAC4(v7, _s16AttributedStringV13ChecklistItemVMa);
  }

  [v9 setTodo:v13];

  v17 = (v1 + v11[9]);
  if (*(v17 + 8))
  {
    v18 = 0;
  }

  else
  {
    v18 = *v17;
  }

  [v9 setBlockQuoteLevel:v18];
  sub_100006038(v1 + v11[10], v4, &unk_1006BE0B0, qword_1005407C0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v4, 1, v19) != 1)
  {
    v21 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v20 + 8))(v4, v19);
  }

  [v9 setUuid:v21];

  return v9;
}

uint64_t sub_1002F4AE4(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C3C20, &qword_100541D28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10017CC60(a1, a1[3]);
  sub_1003005B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1003006AC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = v3[1];
    v10[12] = 1;
    sub_100300700();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[11] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    _s16AttributedStringV14ParagraphStyleVMa(0);
    v10[9] = 4;
    _s16AttributedStringV13ChecklistItemVMa(0);
    sub_1002FE0A4(&qword_1006C3C38, _s16AttributedStringV13ChecklistItemVMa, &unk_100541C44);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[8] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[7] = 6;
    type metadata accessor for UUID();
    sub_1002FE0A4(&qword_1006C3BC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002F4DF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_10015DA04(&unk_1006BE0B0, qword_1005407C0);
  __chkstk_darwin(v3 - 8);
  v35 = &v34 - v4;
  v5 = sub_10015DA04(&qword_1006C3808, &unk_100541530);
  __chkstk_darwin(v5 - 8);
  v36 = &v34 - v6;
  v7 = sub_10015DA04(&qword_1006C3BF8, &qword_100541D20);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 32);
  v15 = _s16AttributedStringV13ChecklistItemVMa(0);
  v16 = v14;
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v17 = *(v10 + 40);
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 56);
  v41 = v17;
  v20 = v13;
  v19(&v13[v17], 1, 1, v18);
  v21 = a1[3];
  v42 = a1;
  sub_10017CC60(a1, v21);
  sub_1003005B0();
  v39 = v9;
  v22 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    sub_100009F60(v42);
    sub_1000073B4(v20 + v16, &qword_1006C3808, &unk_100541530);
    return sub_1000073B4(v20 + v41, &unk_1006BE0B0, qword_1005407C0);
  }

  else
  {
    v40 = v15;
    v23 = v37;
    v50 = 0;
    sub_100300604();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v20 = v51;
    v48 = 1;
    sub_100300658();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v23;
    *(v20 + 1) = v49;
    v47 = 2;
    *(v20 + 8) = KeyedDecodingContainer.decode(_:forKey:)();
    v46 = 3;
    *(v20 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v20 + 24) = v25 & 1;
    v45 = 4;
    sub_1002FE0A4(&qword_1006C3C18, _s16AttributedStringV13ChecklistItemVMa, &unk_100541C6C);
    v26 = v36;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10000A49C(v26, v20 + v16, &qword_1006C3808, &unk_100541530);
    v44 = 5;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v20 + *(v10 + 36);
    *v28 = v27;
    *(v28 + 8) = v29 & 1;
    v43 = 6;
    sub_1002FE0A4(&qword_1006C3BB8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v30 = v35;
    v31 = v38;
    v32 = v39;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v24 + 8))(v32, v31);
    sub_10000A49C(v30, v20 + v41, &unk_1006BE0B0, qword_1005407C0);
    sub_1002FFA5C(v20, v34, _s16AttributedStringV14ParagraphStyleVMa);
    sub_100009F60(v42);
    return sub_1002FFAC4(v20, _s16AttributedStringV14ParagraphStyleVMa);
  }
}

uint64_t sub_1002F5394()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6F75516B636F6C62;
  if (v1 != 5)
  {
    v3 = 1684632949;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x73696C6B63656863;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E656D6E67696C61;
  if (v1 != 1)
  {
    v5 = 0x746E65646E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002F547C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002FEF2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002F54A4(uint64_t a1)
{
  v2 = sub_1003005B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F54E0(uint64_t a1)
{
  v2 = sub_1003005B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1002F5558()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002F565C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002F574C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002F58FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002FF190(*a1);
  *a2 = result;
  return result;
}

void sub_1002F592C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x4C41525554414ELL;
  v5 = 0x800000010055CD00;
  v6 = 0xD000000000000016;
  v7 = 0xED00005446454C5FLL;
  v8 = 0x4F545F5448474952;
  if (v2 != 3)
  {
    v8 = 0xD000000000000016;
    v7 = 0x800000010055CD30;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5F4F545F5446454CLL;
    v3 = 0xED00005448474952;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_1002F59EC(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10015DA04(&unk_1006C1710, &qword_10053BA80);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v37 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v7 = *(v37 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);
  v9(&a2[v7], 1, 1, v8);
  v10 = [a1 typeUTI];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *a2 = v12;
  *(a2 + 1) = v14;
  v15 = [a1 identifier];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  *(a2 + 2) = v17;
  *(a2 + 3) = v19;
  v20 = [a1 creationDate];
  if (v20)
  {
    v21 = v20;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v9(v6, v22, 1, v8);
  sub_10000A49C(v6, &a2[v7], &unk_1006C1710, &qword_10053BA80);
  v23 = [a1 tokenContentIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = v37;
  v29 = &a2[*(v37 + 28)];
  *v29 = v25;
  v29[1] = v27;
  v30 = [a1 altText];
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {

    v32 = 0;
    v34 = 0;
  }

  v35 = &a2[*(v28 + 32)];
  *v35 = v32;
  v35[1] = v34;
}

id sub_1002F5C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_10015DA04(&unk_1006C1710, &qword_10053BA80);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for Date();
  v40 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  ObjectType = swift_getObjectType();
  v18 = (*(a2 + 48))(*(v5 + 16), *(v5 + 24), a3, ObjectType, a2);
  v19 = v18;
  if (!v4)
  {
    v38 = 0;
    v39 = v18;
    v36 = v10;
    v37 = v16;
    v20 = v40;
    v21 = *(v3 + 8);
    if (v21)
    {
      v22 = v39;
      v23 = v39;
      v24 = v5;
      v21 = String._bridgeToObjectiveC()();
    }

    else
    {
      v24 = v5;
      v22 = v39;
      v25 = v39;
    }

    v26 = v14;
    [v22 setTypeUTI:{v21, v36}];

    v27 = _s16AttributedStringV16InlineAttachmentVMa(0);
    v28 = v36;
    sub_100006038(v24 + v27[6], v36, &unk_1006C1710, &qword_10053BA80);
    v29 = *(v20 + 48);
    if (v29(v28, 1, v11) == 1)
    {
      Date.init()();
      if (v29(v28, 1, v11) != 1)
      {
        sub_1000073B4(v28, &unk_1006C1710, &qword_10053BA80);
      }
    }

    else
    {
      (*(v20 + 32))(v26, v28, v11);
    }

    v30 = v37;
    static Date.+ infix(_:_:)();
    v31 = *(v20 + 8);
    v31(v26, v11);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v31(v30, v11);
    v19 = v39;
    [v39 setCreationDate:isa];

    if (*(v5 + v27[7] + 8))
    {
      v33 = String._bridgeToObjectiveC()();
    }

    else
    {
      v33 = 0;
    }

    [v19 setTokenContentIdentifier:v33];

    if (*(v5 + v27[8] + 8))
    {
      v34 = String._bridgeToObjectiveC()();
    }

    else
    {
      v34 = 0;
    }

    [v19 setAltText:v34];
  }

  return v19;
}

uint64_t sub_1002F5FDC(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C3C60, &qword_100541D38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10017CC60(a1, a1[3]);
  sub_1003007FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    _s16AttributedStringV16InlineAttachmentVMa(0);
    v8[13] = 2;
    type metadata accessor for Date();
    sub_1002FE0A4(&qword_1006C1230, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1002F624C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_10015DA04(&unk_1006C1710, &qword_10053BA80);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_10015DA04(&qword_1006C3C50, &qword_100541D30);
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v10 = __chkstk_darwin(v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v42 = v13;
  v16 = v12;
  v15(v12 + v13, 1, 1, v14);
  v17 = a1[3];
  v43 = a1;
  sub_10017CC60(a1, v17);
  sub_1003007FC();
  v41 = v8;
  v18 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v44 = v18;
    v21 = 0;
    v22 = v42;
  }

  else
  {
    v20 = v39;
    v19 = v40;
    v49 = 0;
    *v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16[1] = v24;
    v48 = 1;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v44 = 0;
    v22 = v42;
    v16[2] = v25;
    v16[3] = v26;
    v47 = 2;
    sub_1002FE0A4(&qword_1006C1220, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v27 = v44;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v44 = v27;
    if (v27)
    {
      (*(v20 + 8))(v41, v19);
    }

    else
    {
      sub_10000A49C(v5, v16 + v22, &unk_1006C1710, &qword_10053BA80);
      v46 = 3;
      v28 = v44;
      v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      if (!v28)
      {
        v31 = (v16 + *(v9 + 28));
        *v31 = v29;
        v31[1] = v30;
        v45 = 4;
        v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v44 = 0;
        v33 = v32;
        v35 = v34;
        v36 = (v16 + *(v9 + 32));
        (*(v20 + 8))(v41, v40);
        *v36 = v33;
        v36[1] = v35;
        sub_1002FFA5C(v16, v38, _s16AttributedStringV16InlineAttachmentVMa);
        sub_100009F60(v43);
        return sub_1002FFAC4(v16, _s16AttributedStringV16InlineAttachmentVMa);
      }

      v44 = v28;
      (*(v20 + 8))(v41, v40);
    }

    v21 = 1;
  }

  sub_100009F60(v43);

  if (v21)
  {
  }

  sub_1000073B4(v16 + v22, &unk_1006C1710, &qword_10053BA80);
}

unint64_t sub_1002F66B4()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x4164657461657263;
  v4 = 0x74786554746C61;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002F675C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002FF1DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002F6784(uint64_t a1)
{
  v2 = sub_1003007FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F67C0(uint64_t a1)
{
  v2 = sub_1003007FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002F682C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10015DA04(&qword_1006C3D00, &qword_100541D58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_100300BEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002F69B4()
{
  if (*v0)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x7441737472617473;
  }
}

uint64_t sub_1002F69EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7441737472617473 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
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

uint64_t sub_1002F6AC4(uint64_t a1)
{
  v2 = sub_100300BEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F6B00(uint64_t a1)
{
  v2 = sub_100300BEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002F6B3C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1002FF3A8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1002F6B84(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7369736168706D65;
    if (a1 != 5)
    {
      v7 = 1802398060;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x65676E6172;
    v2 = 0x6D617473656D6974;
    v3 = 1953394534;
    if (a1 != 3)
    {
      v3 = 0x7061726761726170;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1002F6CD4(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C3CA8, &qword_100541D48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_100300850();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26[0] = *v3;
  LOBYTE(v21) = 0;
  sub_1003009F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = _s16AttributedStringV9AttributeVMa(0);
    LOBYTE(v26[0]) = 1;
    type metadata accessor for UUID();
    sub_1002FE0A4(&qword_1006C3BC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30[0] = 2;
    type metadata accessor for Date();
    sub_1002FE0A4(&qword_1006C1230, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = v3 + v9[7];
    v11 = *(v10 + 1);
    v12 = *(v10 + 3);
    v27 = *(v10 + 2);
    v28 = v12;
    v13 = *(v10 + 1);
    v26[0] = *v10;
    v26[1] = v13;
    v22 = v11;
    v23 = v27;
    v24 = *(v10 + 3);
    v29 = *(v10 + 8);
    v25 = *(v10 + 8);
    v21 = v26[0];
    v20 = 3;
    sub_100006038(v26, v18, &qword_1006C37F8, &qword_100541528);
    sub_100300A48();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18[2] = v23;
    v18[3] = v24;
    v19 = v25;
    v18[1] = v22;
    v18[0] = v21;
    sub_1000073B4(v18, &qword_1006C37F8, &qword_100541528);
    v17 = 4;
    _s16AttributedStringV14ParagraphStyleVMa(0);
    sub_1002FE0A4(&qword_1006C3CC0, _s16AttributedStringV14ParagraphStyleVMa, &unk_100541BA4);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = *(v3 + v9[9]);
    v16 = 5;
    sub_100300A9C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = 6;
    type metadata accessor for URL();
    sub_1002FE0A4(&qword_1006BEFB8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = *(v3 + v9[11]);
    v16 = 7;
    sub_100300AF0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = 9;
    _s16AttributedStringV16InlineAttachmentVMa(0);
    sub_1002FE0A4(&qword_1006C3CD8, _s16AttributedStringV16InlineAttachmentVMa, &unk_100541974);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002F7298@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_10015DA04(&qword_1006C37E0, &unk_100541510);
  __chkstk_darwin(v3 - 8);
  v64 = v61 - v4;
  v5 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  __chkstk_darwin(v5 - 8);
  v65 = v61 - v6;
  v7 = sub_10015DA04(&qword_1006C37E8, &qword_100541520);
  __chkstk_darwin(v7 - 8);
  v66 = v61 - v8;
  v9 = sub_10015DA04(&unk_1006C1710, &qword_10053BA80);
  __chkstk_darwin(v9 - 8);
  v67 = v61 - v10;
  v11 = sub_10015DA04(&unk_1006BE0B0, qword_1005407C0);
  __chkstk_darwin(v11 - 8);
  v69 = v61 - v12;
  v72 = sub_10015DA04(&qword_1006C3C68, &qword_100541D40);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v14 = v61 - v13;
  v15 = _s16AttributedStringV9AttributeVMa(0);
  v16 = __chkstk_darwin(v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 20);
  v20 = type metadata accessor for UUID();
  v21 = *(*(v20 - 8) + 56);
  v77 = v19;
  v68 = v20;
  v21(&v18[v19], 1, 1);
  v22 = v15[6];
  v23 = type metadata accessor for Date();
  v24 = *(*(v23 - 8) + 56);
  v76 = v22;
  v24(&v18[v22], 1, 1, v23);
  v25 = &v18[v15[7]];
  *v25 = xmmword_10053D580;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  v96 = v25;
  *(v25 + 8) = 0;
  v26 = v15[8];
  v27 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v28 = *(*(v27 - 8) + 56);
  v80 = v26;
  v28(&v18[v26], 1, 1, v27);
  v29 = v15[10];
  v30 = type metadata accessor for URL();
  v31 = *(*(v30 - 8) + 56);
  v79 = v29;
  v31(&v18[v29], 1, 1, v30);
  v32 = v15[13];
  v33 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v34 = *(*(v33 - 8) + 56);
  v74 = v32;
  v78 = v18;
  v34(&v18[v32], 1, 1, v33);
  v35 = a1[3];
  v75 = a1;
  sub_10017CC60(a1, v35);
  sub_100300850();
  v71 = v14;
  v36 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v36)
  {
    v38 = v77;
    v39 = v76;
    v40 = v78;
    sub_100009F60(v75);
    sub_1000073B4(v40 + v38, &unk_1006BE0B0, qword_1005407C0);
    sub_1000073B4(v40 + v39, &unk_1006C1710, &qword_10053BA80);
    v41 = *(v96 + 3);
    v93 = *(v96 + 2);
    v94 = v41;
    v95 = *(v96 + 8);
    v42 = *(v96 + 1);
    v91 = *v96;
    v92 = v42;
    sub_1000073B4(&v91, &qword_1006C37F8, &qword_100541528);
    sub_1000073B4(v40 + v80, &qword_1006C37E8, &qword_100541520);
    sub_1000073B4(v40 + v79, &qword_1006BCC20, &qword_100531F40);

    return sub_1000073B4(v40 + v74, &qword_1006C37E0, &unk_100541510);
  }

  else
  {
    v37 = v69;
    v73 = v27;
    v62 = v15;
    v61[1] = v33;
    LOBYTE(v88[0]) = 0;
    sub_1003008A4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = v78;
    *v78 = v91;
    LOBYTE(v91) = 1;
    sub_1002FE0A4(&qword_1006C3BB8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10000A49C(v37, v43 + v77, &unk_1006BE0B0, qword_1005407C0);
    LOBYTE(v91) = 2;
    sub_1002FE0A4(&qword_1006C1220, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v44 = v67;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10000A49C(v44, v43 + v76, &unk_1006C1710, &qword_10053BA80);
    v90 = 3;
    sub_1003008F8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v43;
    v85 = v93;
    v86 = v94;
    v87 = v95;
    v84 = v92;
    v83 = v91;
    v46 = v96;
    v47 = *(v96 + 2);
    v88[3] = *(v96 + 3);
    v89 = *(v96 + 8);
    v48 = *v96;
    v88[1] = *(v96 + 1);
    v88[2] = v47;
    v88[0] = v48;
    sub_1000073B4(v88, &qword_1006C37F8, &qword_100541528);
    v49 = v86;
    *(v46 + 2) = v85;
    *(v46 + 3) = v49;
    *(v46 + 8) = v87;
    v50 = v84;
    *v46 = v83;
    *(v46 + 1) = v50;
    v82 = 4;
    sub_1002FE0A4(&qword_1006C3C88, _s16AttributedStringV14ParagraphStyleVMa, &unk_100541BCC);
    v51 = v66;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10000A49C(v51, v43 + v80, &qword_1006C37E8, &qword_100541520);
    v81 = 5;
    sub_10030094C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v43 + v62[9]) = v82;
    v82 = 6;
    sub_1002FE0A4(&qword_1006BEF70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v52 = v65;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10000A49C(v52, v45 + v79, &qword_1006BCC20, &qword_100531F40);
    v81 = 7;
    sub_1003009A0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v53 = v62;
    *(v45 + v62[11]) = v82;
    v82 = 8;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v55 = (v45 + v53[12]);
    *v55 = v54;
    v55[1] = v56;
    v82 = 9;
    sub_1002FE0A4(&qword_1006C3CA0, _s16AttributedStringV16InlineAttachmentVMa, &unk_10054199C);
    v57 = v72;
    v58 = v71;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v70 + 8))(v58, v57);
    v59 = v78;
    sub_10000A49C(v64, v78 + v74, &qword_1006C37E0, &unk_100541510);
    sub_1002FFA5C(v59, v63, _s16AttributedStringV9AttributeVMa);
    sub_100009F60(v75);
    return sub_1002FFAC4(v59, _s16AttributedStringV9AttributeVMa);
  }
}

uint64_t sub_1002F7F70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002FF550(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002F7FA4(uint64_t a1)
{
  v2 = sub_100300850();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F7FE0(uint64_t a1)
{
  v2 = sub_100300850();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002F804C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarkdownStyle(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002FFA5C(v1, v8, type metadata accessor for MarkdownStyle);
  v9 = (*(v3 + 48))(v8, 6, v2);
  if (v9 <= 2)
  {
    if (!v9)
    {
      (*(v3 + 32))(v5, v8, v2);
      Hasher._combine(_:)(6uLL);
      sub_1002FE0A4(&qword_1006C07C0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v3 + 8))(v5, v2);
      return;
    }

    v10 = v9 != 1;
  }

  else if (v9 > 4)
  {
    if (v9 == 5)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }
  }

  else if (v9 == 3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  Hasher._combine(_:)(v10);
}

Swift::Int sub_1002F8268()
{
  Hasher.init(_seed:)();
  sub_1002F804C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002F82AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1002F804C(v2);
  return Hasher._finalize()();
}

void sub_1002F82EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_100006038(a1, aBlock, &qword_1006BE7A0, &unk_100535E20);
  if (v50)
  {
    sub_1000054A4(0, &qword_1006BE0C0, ICTTParagraphStyle_ptr);
    if (swift_dynamicCast())
    {
      if ([v48 style] == 4)
      {
        v17 = sub_1002FD6B0([v48 style]);
        if (v17 <= 4u)
        {
          v18 = v17;
          v30 = 0xE200000000000000;
          v31 = 8227;
          v32 = 0xE400000000000000;
          v33 = 539173667;
          v34 = 0xE000000000000000;
          v35 = 0x2023232323;
          if (v17 == 3)
          {
            v35 = 0;
          }

          else
          {
            v34 = 0xE500000000000000;
          }

          if (v17 != 2)
          {
            v33 = v35;
            v32 = v34;
          }

          if (v17)
          {
            v31 = 2106147;
            v30 = 0xE300000000000000;
          }

          if (v17 <= 1u)
          {
            v20 = v31;
          }

          else
          {
            v20 = v33;
          }

          if (v17 <= 1u)
          {
            v19 = v30;
          }

          else
          {
            v19 = v32;
          }

          goto LABEL_34;
        }

        if (v17 <= 7u)
        {
          if (v17 == 5)
          {
            v18 = v17;
            v19 = 0xE400000000000000;
            v20 = 174088288;
            goto LABEL_34;
          }

          if (v17 == 6)
          {
            v18 = v17;
            v19 = 0xE200000000000000;
            v20 = 8234;
LABEL_34:
            swift_beginAccess();
            v36._countAndFlagsBits = v20;
            v36._object = v19;
            String.append(_:)(v36);
            swift_endAccess();

            v37 = [a6 attributedSubstringFromRange:{a2, a3}];
            v38 = [v37 string];

            v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            swift_beginAccess();
            v42._countAndFlagsBits = v39;
            v42._object = v41;
            String.append(_:)(v42);

            if (v18 == 5)
            {
              v43 = 1616928778;
            }

            else
            {
              v43 = 0;
            }

            if (v18 == 5)
            {
              v44 = 0xE400000000000000;
            }

            else
            {
              v44 = 0xE000000000000000;
            }

            v45 = v44;
            String.append(_:)(*&v43);

            v46._countAndFlagsBits = 10;
            v46._object = 0xE100000000000000;
            String.append(_:)(v46);
            swift_endAccess();

            swift_beginAccess();
            *(a7 + 16) = 0;
            swift_beginAccess();
            *(a8 + 16) = 0;
            return;
          }

LABEL_31:
          v18 = v17;
          v19 = 0xE200000000000000;
          v20 = 8237;
          goto LABEL_34;
        }

        if (v17 == 8)
        {
          v18 = v17;
          v20 = 0;
          v19 = 0xE000000000000000;
          goto LABEL_34;
        }

        if (v17 == 9)
        {
          goto LABEL_31;
        }

        v47 = a2;
        v21 = a5;
        v22 = a7;
        v23 = a8;
      }

      else
      {
        v21 = a5;
        v22 = a7;
        v23 = a8;
        v47 = a2;
      }

      v24 = a3;
    }

    else
    {
      v21 = a5;
      v22 = a7;
      v23 = a8;
      v47 = a2;
      v24 = a3;
    }
  }

  else
  {
    v21 = a5;
    v22 = a7;
    v23 = a8;
    v47 = a2;
    v24 = a3;
    sub_1000073B4(aBlock, &qword_1006BE7A0, &unk_100535E20);
  }

  v25 = [a6 string];
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = v22;
  *(v26 + 32) = v23;
  *(v26 + 40) = a9;
  *(v26 + 48) = a10;
  *(v26 + 56) = a11;
  *(v26 + 64) = v21;
  v51 = sub_1002FE018;
  v52 = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002FB8F0;
  v50 = &unk_100654A08;
  v27 = _Block_copy(aBlock);
  v28 = a6;

  v29 = a11;

  [v25 ic_enumerateParagraphsInRange:v47 usingBlock:{v24, v27}];
  _Block_release(v27);
}

void sub_1002F878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (**a8)(char *, uint64_t), char a9, void *a10, uint64_t a11)
{
  v175 = a8;
  v180 = type metadata accessor for URL();
  v16 = *(v180 - 8);
  __chkstk_darwin(v180);
  v179 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MarkdownStyle(0);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v181 = &v155 - v23;
  if (__OFSUB__(a3, a1))
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v191 = 0;
  v192 = 0xE000000000000000;
  v190 = 0;
  if ([a5 attribute:ICTTAttributeNameParagraphStyle atIndex:a1 effectiveRange:0])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
  }

  aBlock = v188;
  v184 = v189;
  v170 = v16;
  v169 = a1;
  v168 = a5;
  v176 = a3 - a1;
  if (!*(&v189 + 1))
  {
    sub_1000073B4(&aBlock, &qword_1006BE7A0, &unk_100535E20);
LABEL_10:
    v174 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v172 = 0;
    v28 = 0;
    v173 = 0xE000000000000000;
    v29 = 0xE000000000000000;
    v30 = 0xE000000000000000;
    v31 = 0xE000000000000000;
    v171 = 0xE000000000000000;
    v32 = 0xE000000000000000;
LABEL_11:
    v33 = v29;
    String.append(_:)(*&v25);

    v34._countAndFlagsBits = v26;
    v34._object = v30;
    String.append(_:)(v34);

    v35._countAndFlagsBits = v27;
    v35._object = v31;
    String.append(_:)(v35);

    v36._countAndFlagsBits = v28;
    v36._object = v32;
    String.append(_:)(v36);

    v37 = v176;
    if (v176 < 1)
    {
      v64 = 0;
      v65 = 0;
      v66 = v174;
      v67 = v173;
LABEL_42:
      v68._countAndFlagsBits = v172;
      v68._object = v171;
      String.append(_:)(v68);

      v69._countAndFlagsBits = v66;
      v69._object = v67;
      String.append(_:)(v69);

      v70._countAndFlagsBits = 663584;
      v70._object = 0xE300000000000000;
      String.append(_:)(v70);
      v71 = v191;
      v72 = v192;
      swift_beginAccess();

      v73._countAndFlagsBits = v71;
      v73._object = v72;
      String.append(_:)(v73);
      swift_endAccess();

      sub_10000C840(v64, v65);
      return;
    }

    v38 = v170;
    v187 = _swiftEmptyArrayStorage;
    v39 = swift_allocObject();
    v40 = v168;
    *(v39 + 16) = v168;
    *(v39 + 24) = &v190;
    *(v39 + 32) = &v191;
    *(v39 + 40) = a9;
    *(v39 + 48) = a10;
    *(v39 + 56) = &v187;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1002FE070;
    *(v41 + 24) = v39;
    v167 = v39;
    v185 = sub_10030176C;
    v186 = v41;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v184 = sub_1002F0CD8;
    *(&v184 + 1) = &unk_100654A80;
    v42 = _Block_copy(&aBlock);
    v43 = v40;
    v44 = a10;

    [v43 enumerateAttributesInRange:v169 options:v37 usingBlock:{0, v42}];
    _Block_release(v42);
    LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

    if ((v42 & 1) == 0)
    {
      v45 = v187;
      v46 = v187[2];
      if (v46)
      {
        v47 = v187 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
        v48 = (v38 + 48);
        v176 = v38 + 32;
        v175 = (v38 + 8);

        v177 = v19;
        v178 = v22;
        while (v46 <= v45[2])
        {
          --v46;
          v55 = v181;
          sub_1002FFA5C(&v47[*(v19 + 72) * v46], v181, type metadata accessor for MarkdownStyle);
          sub_1002FFA5C(v55, v22, type metadata accessor for MarkdownStyle);
          v56 = (*v48)(v22, 6, v180);
          if (v56 > 2)
          {
            v49 = 32382;
            if (v56 != 5)
            {
              v49 = 15677;
            }

            v50 = 2763306;
            if (v56 != 3)
            {
              v50 = 11051;
            }

            v51 = 0xE300000000000000;
            if (v56 != 3)
            {
              v51 = 0xE200000000000000;
            }

            if (v56 <= 4)
            {
              v52 = v50;
            }

            else
            {
              v52 = v49;
            }

            if (v56 <= 4)
            {
              v53 = v51;
            }

            else
            {
              v53 = 0xE200000000000000;
            }
          }

          else if (v56)
          {
            if (v56 == 1)
            {
              v52 = 10794;
            }

            else
            {
              v52 = 42;
            }

            if (v56 == 1)
            {
              v53 = 0xE200000000000000;
            }

            else
            {
              v53 = 0xE100000000000000;
            }
          }

          else
          {
            v57 = v179;
            v58 = v22;
            v59 = v180;
            (*v176)(v179, v58, v180);
            *&aBlock = 10333;
            *(&aBlock + 1) = 0xE200000000000000;
            sub_1002FE0A4(&qword_1006C0FF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v60);

            v61._countAndFlagsBits = 41;
            v61._object = 0xE100000000000000;
            String.append(_:)(v61);
            v53 = *(&aBlock + 1);
            v52 = aBlock;
            v62 = v57;
            v19 = v177;
            v63 = v59;
            v22 = v178;
            (*v175)(v62, v63);
          }

          v54._countAndFlagsBits = v52;
          v54._object = v53;
          String.append(_:)(v54);

          sub_1002FFAC4(v181, type metadata accessor for MarkdownStyle);
          if (!v46)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_40:
      }

      v66 = v174;

      v64 = sub_1002FE070;
      v67 = v173;
      v65 = v167;
      goto LABEL_42;
    }

    goto LABEL_147;
  }

  sub_1000054A4(0, &qword_1006BE0C0, ICTTParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v24 = v182;
  LODWORD(v172) = sub_1002FD6B0([v182 style]);
  if (v172 == 10)
  {

    goto LABEL_10;
  }

  v166 = a6;
  v165 = a7;
  if ([v24 writingDirection] == 1)
  {
    v158 = 0xEF3E226C7472223DLL;
    v159 = 0x726964207669643CLL;
    v74 = 0xE600000000000000;
    v75 = 0x3E7669642F3CLL;
  }

  else
  {
    v75 = 0;
    v159 = 0;
    v74 = 0xE000000000000000;
    v158 = 0xE000000000000000;
  }

  v76 = [v24 isList];
  v167 = v24;
  if (v76 && [v24 indent] >= 1)
  {
    v77 = [v24 indent];
    if (v77 < 1)
    {
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v78 = v77;
    v79 = 0;
    v80 = 0xE000000000000000;
    v24 = 1;
    while (1)
    {
      *&aBlock = v79;
      *(&aBlock + 1) = v80;
      v81._countAndFlagsBits = 538976288;
      v81._object = 0xE400000000000000;
      String.append(_:)(v81);
      v80 = *(&aBlock + 1);
      v79 = aBlock;
      if (v78 == v24)
      {
        break;
      }

      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        goto LABEL_54;
      }
    }

    v24 = v167;
  }

  else
  {
LABEL_54:
    v79 = 0;
    v80 = 0xE000000000000000;
  }

  if ([v24 blockQuoteLevel])
  {
    v83 = v166;
    swift_beginAccess();
    v84 = *(v83 + 16);
    if (v84 < 1)
    {
      v86 = 0;
      v87 = 0xE000000000000000;
    }

    else
    {
      v85 = v165;
      swift_beginAccess();
      v86 = 0;
      v87 = 0xE000000000000000;
      if (*(v85 + 16) >= 1 && v176 >= 1)
      {
        v88 = [v167 blockQuoteLevel];
        if (v88 >= v84)
        {
          v88 = v84;
        }

        *&aBlock = sub_1002FF89C(v88);
        *(&aBlock + 1) = v89;
        v90._countAndFlagsBits = 10;
        v90._object = 0xE100000000000000;
        String.append(_:)(v90);
        v87 = *(&aBlock + 1);
        v86 = aBlock;
      }
    }

    *&aBlock = v86;
    *(&aBlock + 1) = v87;
    v94 = v167;
    v96._countAndFlagsBits = sub_1002FF89C([v167 blockQuoteLevel]);
    String.append(_:)(v96);

    v93 = *(&aBlock + 1);
    v161 = aBlock;
    goto LABEL_71;
  }

  v91 = v166;
  swift_beginAccess();
  if (*(v91 + 16) < 1)
  {
    v161 = 0;
    v93 = 0xE000000000000000;
    goto LABEL_70;
  }

  v92 = v165;
  swift_beginAccess();
  v161 = 0;
  v93 = 0xE000000000000000;
  if (*(v92 + 16) < 1)
  {
LABEL_70:
    v94 = v167;
    goto LABEL_71;
  }

  v94 = v167;
  if (v176 >= 1)
  {
    v95._countAndFlagsBits = 10;
    v95._object = 0xE100000000000000;
    String.append(_:)(v95);
    v161 = 0;
    v93 = 0xE000000000000000;
  }

LABEL_71:
  v157 = v93;
  v97 = sub_1002F34F8(v172);
  v164 = v98;
  v178 = v22;
  v174 = v75;
  v173 = v74;
  v162 = v97;
  if (v97 != 0x44455245424D554ELL || v98 != 0xED00005453494C5FLL)
  {
    v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v99)
    {
      goto LABEL_75;
    }

    v115 = 0;
    v116 = 0xE000000000000000;
    if (v172 > 4u)
    {
      v117 = v164;
      v118 = v162;
      if (v172 <= 6u)
      {
        if (v172 == 5)
        {
          v116 = 0xE400000000000000;
          v115 = 174088288;
        }

        else
        {
          v116 = 0xE200000000000000;
          v115 = 8234;
        }
      }

      else if (v172 != 8)
      {
        v116 = 0xE200000000000000;
        v115 = 8237;
      }
    }

    else
    {
      v117 = v164;
      v118 = v162;
      if (v172 <= 1u)
      {
        if (v172)
        {
          v116 = 0xE300000000000000;
          v115 = 2106147;
        }

        else
        {
          v116 = 0xE200000000000000;
          v115 = 8227;
        }
      }

      else if (v172 == 2)
      {
        v116 = 0xE400000000000000;
        v115 = 539173667;
      }

      else if (v172 != 3)
      {
        v116 = 0xE500000000000000;
        v115 = 0x2023232323;
      }
    }

    v163 = v116;
    if (v118 == 0x53494C4B43454843 && v117 == 0xE900000000000054)
    {
    }

    else
    {
      v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v119 & 1) == 0)
      {
LABEL_110:
        v156 = v115;
        v127 = v172 == 5;
        v128 = 1616928778;
        if (v172 != 5)
        {
          v128 = 0;
        }

        v172 = v128;
        v129 = 0xE000000000000000;
        if (v127)
        {
          v129 = 0xE400000000000000;
        }

        v171 = v129;
        v130 = [v94 indent];
        v131 = v175;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v182 = v131[2];
        v131[2] = 0x8000000000000000;
        sub_1002E6C24(0, v130, isUniquelyReferenced_nonNull_native);
        v114 = v182;
        v131[2] = v182;
        swift_endAccess();
        goto LABEL_115;
      }
    }

    v120 = [v94 todo];
    if (v120)
    {
      v121 = v120;
      v122 = [v120 done];

      if (v122)
      {
        v123 = 120;
      }

      else
      {
        v123 = 32;
      }
    }

    else
    {
      v123 = 32;
    }

    *&aBlock = v115;
    *(&aBlock + 1) = v163;
    v124._countAndFlagsBits = 91;
    v124._object = 0xE100000000000000;
    String.append(_:)(v124);
    v125._countAndFlagsBits = v123;
    v125._object = 0xE100000000000000;
    String.append(_:)(v125);
    v126._countAndFlagsBits = 8285;
    v126._object = 0xE200000000000000;
    String.append(_:)(v126);
    v163 = *(&aBlock + 1);
    v115 = aBlock;
    goto LABEL_110;
  }

LABEL_75:
  v100 = [v94 indent];
  v101 = v175;
  swift_beginAccess();
  v102 = v101[2];
  if (!*(v102 + 2) || (v103 = sub_1002DFB90(v100), (v104 & 1) == 0))
  {
    swift_endAccess();
LABEL_81:
    v107 = v167;
    v108 = [v167 startingItemNumber];
    if (v108 <= 1)
    {
      v106 = 1;
    }

    else
    {
      v106 = v108;
    }

    goto LABEL_84;
  }

  v105 = *(*(v102 + 7) + 8 * v103);
  swift_endAccess();
  if (!v105)
  {
    goto LABEL_81;
  }

  v106 = v105 + 1;
  if (!__OFADD__(v105, 1))
  {
    v107 = v167;
LABEL_84:
    v182 = v106;
    *&aBlock = dispatch thunk of CustomStringConvertible.description.getter();
    *(&aBlock + 1) = v109;
    v110._countAndFlagsBits = 8238;
    v110._object = 0xE200000000000000;
    String.append(_:)(v110);
    v163 = *(&aBlock + 1);
    v156 = aBlock;
    v111 = [v107 indent];
    v112 = v175;
    swift_beginAccess();
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v182 = v112[2];
    v112[2] = 0x8000000000000000;
    sub_1002E6C24(v106, v111, v113);
    v114 = v182;
    v112[2] = v182;
    swift_endAccess();
    v172 = 0;
    v171 = 0xE000000000000000;
LABEL_115:

    v133 = 0;
    v134 = 1 << *(v114 + 32);
    v135 = -1;
    if (v134 < 64)
    {
      v135 = ~(-1 << v134);
    }

    v136 = v135 & *(v114 + 8);
    v137 = (v134 + 63) >> 6;
    v160 = v79;
    while (v136)
    {
LABEL_125:
      v139 = __clz(__rbit64(v136));
      v136 &= v136 - 1;
      v140 = *(*(v114 + 6) + ((v133 << 9) | (8 * v139)));
      if ([v167 indent] < v140)
      {
        swift_beginAccess();
        v141 = sub_1002DFB90(v140);
        v142 = v175;
        if (v143)
        {
          v144 = v141;
          v145 = swift_isUniquelyReferenced_nonNull_native();
          v146 = v142;
          v147 = v142[2];
          v182 = v147;
          v146[2] = 0x8000000000000000;
          if (!v145)
          {
            sub_1002E8F68();
            v147 = v182;
          }

          sub_100477F2C(v144, v147);
          v146[2] = v147;
          v79 = v160;
        }

        swift_endAccess();
      }
    }

    while (1)
    {
      v138 = v133 + 1;
      if (__OFADD__(v133, 1))
      {
        break;
      }

      if (v138 >= v137)
      {

        v148 = [v167 blockQuoteLevel];
        v149 = v166;
        swift_beginAccess();
        *(v149 + 16) = v148;
        v150 = v165;
        swift_beginAccess();
        *(v150 + 16) = v176;
        v151 = v162;
        if (v162 == 0x454C544954 && v164 == 0xE500000000000000)
        {
          v31 = v80;
          v27 = v79;

          v22 = v178;
          v29 = v158;
          v26 = v161;
          goto LABEL_138;
        }

        v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v22 = v178;
        v29 = v158;
        v26 = v161;
        if (v152)
        {
LABEL_133:
          v31 = v80;
          v27 = v79;

          goto LABEL_138;
        }

        if (v151 == 0x474E4944414548 && v164 == 0xE700000000000000)
        {
          v31 = v80;
          goto LABEL_137;
        }

        v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v153)
        {
          goto LABEL_133;
        }

        v31 = v80;
        if (v151 == 0x4944414548425553 && v164 == 0xEA0000000000474ELL)
        {
LABEL_137:
          v27 = v79;
        }

        else
        {
          v27 = v79;
          v154 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v154 & 1) == 0)
          {
            goto LABEL_139;
          }
        }

LABEL_138:
        v190 = 1;
LABEL_139:
        v25 = v159;
        v30 = v157;
        v28 = v156;
        v32 = v163;
        goto LABEL_11;
      }

      v136 = *(v114 + v138 + 8);
      ++v133;
      if (v136)
      {
        v133 = v138;
        goto LABEL_125;
      }
    }

    __break(1u);
    goto LABEL_146;
  }

LABEL_149:
  __break(1u);
}

uint64_t sub_1002F9A50(void (**a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, uint64_t a7, int a8, void *a9, uint64_t *a10)
{
  LODWORD(v191) = a8;
  v204 = a7;
  v187 = a6;
  v14 = sub_10015DA04(&qword_1006BCC20, &qword_100531F40);
  __chkstk_darwin(v14 - 8);
  v205 = (&v183 - v15);
  v206 = type metadata accessor for URL();
  v193 = *(v206 - 8);
  v16 = __chkstk_darwin(v206);
  v199 = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v183 - v18;
  v20 = type metadata accessor for MarkdownStyle(0);
  v200 = *(v20 - 8);
  v21 = __chkstk_darwin(v20 - 8);
  v196 = &v183 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v194 = &v183 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v183 - v26;
  v28 = __chkstk_darwin(v25);
  v201 = &v183 - v29;
  v30 = __chkstk_darwin(v28);
  v203 = &v183 - v31;
  v32 = __chkstk_darwin(v30);
  v189 = &v183 - v33;
  v34 = __chkstk_darwin(v32);
  v202 = &v183 - v35;
  v36 = __chkstk_darwin(v34);
  v198 = (&v183 - v37);
  v38 = __chkstk_darwin(v36);
  v188 = &v183 - v39;
  v40 = __chkstk_darwin(v38);
  v197 = (&v183 - v41);
  v42 = __chkstk_darwin(v40);
  v195 = &v183 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v183 - v45;
  v47 = __chkstk_darwin(v44);
  v186 = &v183 - v48;
  v49 = __chkstk_darwin(v47);
  v185 = &v183 - v50;
  v51 = __chkstk_darwin(v49);
  v53 = &v183 - v52;
  __chkstk_darwin(v51);
  v55 = &v183 - v54;
  v56 = [a5 attributedSubstringFromRange:{a2, a3}];
  v57 = [v56 string];

  v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v192 = v58;

  if (a1[2])
  {
    v59 = ICTTAttributeNameFont;
    v60 = sub_1002ED088();
    if (v61)
    {
      sub_10000A2A0(a1[7] + 32 * v60, &v209);

      sub_1000054A4(0, &qword_1006C3800, ICTTFont_ptr);
      if (swift_dynamicCast())
      {
        v183 = v46;
        v62 = v208;
        if (([v208 fontHints] & 1) != 0 && (*v187 & 1) == 0)
        {
          v184 = v19;
          (*(v193 + 56))(v55, 1, 6, v206);
          v63 = sub_1001CB698(0, 1, 1, _swiftEmptyArrayStorage);
          v179 = v63[2];
          v178 = v63[3];
          if (v179 >= v178 >> 1)
          {
            v63 = sub_1001CB698((v178 > 1), v179 + 1, 1, v63);
          }

          v63[2] = v179 + 1;
          sub_1002FF940(v55, v63 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v179, type metadata accessor for MarkdownStyle);
          v19 = v184;
        }

        else
        {
          v63 = _swiftEmptyArrayStorage;
        }

        if (([v62 fontHints] & 2) != 0)
        {
          (*(v193 + 56))(v53, 2, 6, v206);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v200;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v63 = sub_1001CB698(0, v63[2] + 1, 1, v63);
          }

          v182 = v63[2];
          v181 = v63[3];
          if (v182 >= v181 >> 1)
          {
            v63 = sub_1001CB698((v181 > 1), v182 + 1, 1, v63);
          }

          v63[2] = v182 + 1;
          sub_1002FF940(v53, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v182, type metadata accessor for MarkdownStyle);
        }

        else
        {

          v64 = v200;
        }

        v46 = v183;
        if (!a1[2])
        {
          goto LABEL_26;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v63 = _swiftEmptyArrayStorage;
  v64 = v200;
  if (a1[2])
  {
LABEL_9:
    v65 = ICTTAttributeNameFontHints;
    v66 = sub_1002ED088();
    if (v67)
    {
      sub_10000A2A0(a1[7] + 32 * v66, &v209);

      if (swift_dynamicCast())
      {
        v68 = v46;
        v69 = v208;
        if ((v208 & 1) != 0 && (*v187 & 1) == 0)
        {
          v184 = v19;
          (*(v193 + 56))(v185, 1, 6, v206);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_1001CB698(0, v63[2] + 1, 1, v63);
          }

          v71 = v63[2];
          v70 = v63[3];
          if (v71 >= v70 >> 1)
          {
            v63 = sub_1001CB698((v70 > 1), v71 + 1, 1, v63);
          }

          v63[2] = v71 + 1;
          sub_1002FF940(v185, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v71, type metadata accessor for MarkdownStyle);
          v19 = v184;
        }

        if ((v69 & 2) != 0)
        {
          (*(v193 + 56))(v186, 2, 6, v206);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_1001CB698(0, v63[2] + 1, 1, v63);
          }

          v73 = v63[2];
          v72 = v63[3];
          if (v73 >= v72 >> 1)
          {
            v63 = sub_1001CB698((v72 > 1), v73 + 1, 1, v63);
          }

          v63[2] = v73 + 1;
          sub_1002FF940(v186, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v73, type metadata accessor for MarkdownStyle);
        }

        v46 = v68;
      }
    }

    else
    {
    }
  }

LABEL_26:
  if (a1[2])
  {
    v74 = ICTTAttributeNameUnderline;
    v75 = sub_1002ED088();
    if (v76)
    {
      sub_10000A2A0(a1[7] + 32 * v75, &v209);

      sub_1000073B4(&v209, &qword_1006BE7A0, &unk_100535E20);
      (*(v193 + 56))(v46, 4, 6, v206);
      v77 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_29;
    }
  }

  v209 = 0u;
  v210 = 0u;
  sub_1000073B4(&v209, &qword_1006BE7A0, &unk_100535E20);
  if (a1[2])
  {
    goto LABEL_35;
  }

LABEL_43:
  v209 = 0u;
  v210 = 0u;
  sub_1000073B4(&v209, &qword_1006BE7A0, &unk_100535E20);
  if (a1[2])
  {
    goto LABEL_44;
  }

LABEL_52:
  v209 = 0u;
  v210 = 0u;
  sub_1000073B4(&v209, &qword_1006BE7A0, &unk_100535E20);
  if (a1[2])
  {
    goto LABEL_53;
  }

LABEL_62:
  v94 = v205;
  (*(v193 + 56))(v205, 1, 1, v206);
LABEL_63:
  sub_1000073B4(v94, &qword_1006BCC20, &qword_100531F40);
  if (!a1[2])
  {
    goto LABEL_68;
  }

LABEL_64:
  v110 = ICTTNSAttachmentAttributeName;
  v111 = sub_1002ED088();
  if ((v112 & 1) == 0)
  {

    while (1)
    {
LABEL_68:
      v205 = a10;

      v116 = sub_100270348(v115);

      v118 = sub_100270348(v117);
      v191 = v63;

      if (*(v118 + 16) <= *(v116 + 16) >> 3)
      {
        *&v209 = v116;

        sub_100498298(v118);
        v63 = v209;
      }

      else
      {

        v63 = sub_100499574(v118, v116);
      }

      v208 = v63;
      if (*(v116 + 16) <= *(v118 + 16) >> 3)
      {
        *&v209 = v118;

        sub_100498298(v116);

        v119 = v209;
      }

      else
      {

        v119 = sub_100499574(v116, v118);
      }

      a1 = v198;
      v207 = v119;
      v77 = *v205;
      v120 = *(*v205 + 16);
      v195 = v27;
      if (!v120)
      {

LABEL_88:
        v127 = *v205;
        v128 = *(*v205 + 16);
        v129 = v201;
        v130 = v203;
        if (v128)
        {
          v131 = v208;
          v132 = v127 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
          v133 = (v193 + 48);
          v197 = (v193 + 8);
          v198 = (v193 + 32);

          while (v128 <= *(v127 + 16))
          {
            --v128;
            sub_1002FFA5C(v132 + *(v64 + 72) * v128, v130, type metadata accessor for MarkdownStyle);
            if (sub_10033AE68(v130, v131))
            {
              sub_1002FFA5C(v130, v129, type metadata accessor for MarkdownStyle);
              v142 = (*v133)(v129, 6, v206);
              if (v142 > 2)
              {
                v134 = 32382;
                if (v142 != 5)
                {
                  v134 = 15677;
                }

                v135 = 0xE200000000000000;
                v136 = 2763306;
                if (v142 == 3)
                {
                  v135 = 0xE300000000000000;
                }

                else
                {
                  v136 = 11051;
                }

                v137 = v142 <= 4;
                if (v142 <= 4)
                {
                  v138 = v136;
                }

                else
                {
                  v138 = v134;
                }

                if (v137)
                {
                  v139 = v135;
                }

                else
                {
                  v139 = 0xE200000000000000;
                }
              }

              else if (v142)
              {
                v143 = v142 == 1;
                if (v142 == 1)
                {
                  v138 = 10794;
                }

                else
                {
                  v138 = 42;
                }

                if (v143)
                {
                  v139 = 0xE200000000000000;
                }

                else
                {
                  v139 = 0xE100000000000000;
                }
              }

              else
              {
                v144 = v199;
                v145 = v206;
                (*v198)(v199, v201, v206);
                *&v209 = 10333;
                *(&v209 + 1) = 0xE200000000000000;
                sub_1002FE0A4(&qword_1006C0FF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                v146._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v146);

                v147._countAndFlagsBits = 41;
                v147._object = 0xE100000000000000;
                String.append(_:)(v147);
                v139 = *(&v209 + 1);
                v148 = v209;
                v149 = v144;
                v150 = v145;
                v64 = v200;
                v129 = v201;
                (*v197)(v149, v150);
                v138 = v148;
              }

              v140 = v139;
              String.append(_:)(*&v138);

              v141 = v202;
              sub_1003BEF6C(*(*v205 + 16) - 1, v202);
              sub_1002FFAC4(v141, type metadata accessor for MarkdownStyle);
              v130 = v203;
            }

            sub_1002FFAC4(v130, type metadata accessor for MarkdownStyle);
            if (!v128)
            {
              goto LABEL_115;
            }
          }

          __break(1u);
LABEL_115:

          v27 = v195;
        }

        v151 = v191[2];
        if (v151)
        {
          v152 = v207;
          v153 = (*(v64 + 80) + 32) & ~*(v64 + 80);
          v154 = v191 + v153;
          v155 = (v193 + 48);
          v156 = *(v64 + 72);
          do
          {
            sub_1002FFA5C(v154, v27, type metadata accessor for MarkdownStyle);
            if (sub_10033AE68(v27, v152))
            {
              v157 = v194;
              sub_1002FFA5C(v27, v194, type metadata accessor for MarkdownStyle);
              v158 = (*v155)(v157, 6, v206);
              if (v158 <= 2)
              {
                if (v158)
                {
                  v165 = v158 == 1;
                  if (v158 == 1)
                  {
                    v163 = 10794;
                  }

                  else
                  {
                    v163 = 42;
                  }

                  if (v165)
                  {
                    v164 = 0xE200000000000000;
                  }

                  else
                  {
                    v164 = 0xE100000000000000;
                  }
                }

                else
                {
                  sub_1002FFAC4(v194, type metadata accessor for MarkdownStyle);
                  v164 = 0xE100000000000000;
                  v163 = 91;
                }
              }

              else
              {
                v159 = 32382;
                if (v158 != 5)
                {
                  v159 = 15677;
                }

                v160 = 2763306;
                if (v158 != 3)
                {
                  v160 = 11051;
                }

                v161 = 0xE300000000000000;
                if (v158 != 3)
                {
                  v161 = 0xE200000000000000;
                }

                v162 = v158 <= 4;
                if (v158 <= 4)
                {
                  v163 = v160;
                }

                else
                {
                  v163 = v159;
                }

                if (v162)
                {
                  v164 = v161;
                }

                else
                {
                  v164 = 0xE200000000000000;
                }
              }

              v166 = v164;
              String.append(_:)(*&v163);

              sub_1002FFA5C(v27, v196, type metadata accessor for MarkdownStyle);
              v167 = v205;
              v168 = *v205;
              v169 = swift_isUniquelyReferenced_nonNull_native();
              *v167 = v168;
              if ((v169 & 1) == 0)
              {
                v168 = sub_1001CB698(0, v168[2] + 1, 1, v168);
                *v205 = v168;
              }

              v171 = v168[2];
              v170 = v168[3];
              if (v171 >= v170 >> 1)
              {
                v175 = sub_1001CB698((v170 > 1), v171 + 1, 1, v168);
                *v205 = v175;
              }

              v172 = v195;
              sub_1002FFAC4(v195, type metadata accessor for MarkdownStyle);
              v173 = *v205;
              *(v173 + 16) = v171 + 1;
              v174 = v173 + v153 + v171 * v156;
              v27 = v172;
              sub_1002FF940(v196, v174, type metadata accessor for MarkdownStyle);
            }

            else
            {
              sub_1002FFAC4(v27, type metadata accessor for MarkdownStyle);
            }

            v154 += v156;
            --v151;
          }

          while (v151);
        }

        v176._countAndFlagsBits = v190;
        v176._object = v192;
        String.append(_:)(v176);
      }

      v27 = v118;
      v19 = (v77 + ((*(v64 + 80) + 32) & ~*(v64 + 80)));

      v121 = 0;
      v122 = 0;
      while (v122 < *(v77 + 16))
      {
        sub_1002FFA5C(&v19[*(v64 + 72) * v122], a1, type metadata accessor for MarkdownStyle);
        v123 = sub_10033AE68(a1, v63);
        if (v121)
        {
          if (v123)
          {
            goto LABEL_77;
          }

          v124 = v189;
          sub_1002FFA5C(a1, v189, type metadata accessor for MarkdownStyle);
          v125 = v202;
          sub_1002660A4(v202, v124);
          a1 = v198;
          sub_1002FFAC4(v125, type metadata accessor for MarkdownStyle);
          if (sub_10033AE68(a1, v27))
          {
            sub_1002FFA5C(a1, v124, type metadata accessor for MarkdownStyle);
            sub_1002660A4(v125, v124);
            a1 = v198;
            sub_1002FFAC4(v125, type metadata accessor for MarkdownStyle);
            v126 = a1;
            goto LABEL_84;
          }

LABEL_83:
          v126 = a1;
LABEL_84:
          sub_1002FFAC4(v126, type metadata accessor for MarkdownStyle);
          if (v120 - 1 == v122)
          {
LABEL_86:

            v27 = v195;
            goto LABEL_88;
          }

          v63 = v208;
          ++v122;
          v121 = 1;
        }

        else
        {
          if (v123)
          {
            goto LABEL_83;
          }

LABEL_77:
          ++v122;
          sub_1002FFAC4(a1, type metadata accessor for MarkdownStyle);
          if (v120 == v122)
          {
            goto LABEL_86;
          }
        }
      }

      __break(1u);
LABEL_162:
      v63 = sub_1001CB698(0, v63[2] + 1, 1, v63);
LABEL_29:
      v79 = v63[2];
      v78 = v63[3];
      if (v79 >= v78 >> 1)
      {
        v63 = sub_1001CB698((v78 > 1), v79 + 1, 1, v63);
      }

      v63[2] = v79 + 1;
      sub_1002FF940(v77, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v79, type metadata accessor for MarkdownStyle);
      if (!a1[2])
      {
        goto LABEL_43;
      }

LABEL_35:
      v80 = ICTTAttributeNameStrikethrough;
      v81 = sub_1002ED088();
      if ((v82 & 1) == 0)
      {

        goto LABEL_43;
      }

      sub_10000A2A0(a1[7] + 32 * v81, &v209);

      sub_1000073B4(&v209, &qword_1006BE7A0, &unk_100535E20);
      (*(v193 + 56))(v195, 5, 6, v206);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1001CB698(0, v63[2] + 1, 1, v63);
      }

      v84 = v63[2];
      v83 = v63[3];
      if (v84 >= v83 >> 1)
      {
        v63 = sub_1001CB698((v83 > 1), v84 + 1, 1, v63);
      }

      v63[2] = v84 + 1;
      sub_1002FF940(v195, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v84, type metadata accessor for MarkdownStyle);
      if (!a1[2])
      {
        goto LABEL_52;
      }

LABEL_44:
      v85 = ICTTAttributeNameEmphasis;
      v86 = sub_1002ED088();
      if ((v87 & 1) == 0)
      {

        goto LABEL_52;
      }

      sub_10000A2A0(a1[7] + 32 * v86, &v209);

      sub_1000073B4(&v209, &qword_1006BE7A0, &unk_100535E20);
      (*(v193 + 56))(v197, 6, 6, v206);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1001CB698(0, v63[2] + 1, 1, v63);
      }

      v89 = v63[2];
      v88 = v63[3];
      if (v89 >= v88 >> 1)
      {
        v63 = sub_1001CB698((v88 > 1), v89 + 1, 1, v63);
      }

      v63[2] = v89 + 1;
      sub_1002FF940(v197, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v89, type metadata accessor for MarkdownStyle);
      if (!a1[2])
      {
        goto LABEL_62;
      }

LABEL_53:
      v90 = ICTTNSLinkAttributeName;
      v91 = sub_1002ED088();
      if ((v92 & 1) == 0)
      {

        goto LABEL_62;
      }

      v184 = v19;
      sub_10000A2A0(a1[7] + 32 * v91, &v209);

      v94 = v205;
      v93 = v206;
      v95 = swift_dynamicCast();
      v96 = v63;
      v97 = v193;
      v98 = *(v193 + 56);
      v98(v94, v95 ^ 1u, 1, v93);
      v99 = v97;
      v63 = v96;
      if ((*(v99 + 48))(v94, 1, v93) == 1)
      {
        goto LABEL_63;
      }

      v100 = v193;
      v101 = v94;
      v102 = v184;
      v103 = v206;
      (*(v193 + 32))(v184, v101, v206);
      v104 = v100;
      v105 = v96;
      v106 = v188;
      (*(v104 + 16))(v188, v102, v103);
      v98(v106, 0, 6, v103);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_1001CB698(0, v105[2] + 1, 1, v105);
      }

      v108 = v105[2];
      v107 = v105[3];
      v109 = v105;
      if (v108 >= v107 >> 1)
      {
        v109 = sub_1001CB698((v107 > 1), v108 + 1, 1, v105);
      }

      (*(v193 + 8))(v184, v206);
      v109[2] = v108 + 1;
      v63 = v109;
      sub_1002FF940(v106, v109 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v108, type metadata accessor for MarkdownStyle);
      if (a1[2])
      {
        goto LABEL_64;
      }
    }
  }

  sub_10000A2A0(a1[7] + 32 * v111, &v209);

  sub_1000054A4(0, &qword_1006C37F0, ICTTAttachment_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_68;
  }

  v113 = v208;

  v114._countAndFlagsBits = sub_1002FB19C(v113, v191, a9);
  String.append(_:)(v114);
}

NSObject *sub_1002FB19C(void *a1, char a2, void *a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v73[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v73[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isInlineAttachment:a1])
  {
    v14 = [a1 inlineAttachmentInContext:a3];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 displayText];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v17;
    }

    if (qword_1006BC760 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10002597C(v23, qword_1006C37C8);
    v24 = a1;
    v19 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v24;
      *v27 = v24;
      v28 = v24;
      _os_log_impl(&_mh_execute_header, v19, v25, "Cannot resolve inline attachment — skipping {attachment: %@}", v26, 0xCu);
      sub_1000073B4(v27, &qword_1006C1440, qword_1005349F0);
    }

    goto LABEL_40;
  }

  result = [a1 attachmentInContext:a3];
  if (!result)
  {
    return result;
  }

  v19 = result;
  if ([result isTable]&& a2 == 2)
  {
    v20 = [v19 tableModel];
    sub_1002FB968(v20, a3);
    v22 = v21;

    return v22;
  }

  if ([v19 isURL]&& (v29 = [v19 URL]) != 0)
  {
    v30 = v29;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v77 = 91;
    v78 = 0xE100000000000000;
    v31 = [v19 title];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = v33;
    }

    else
    {
      v36 = URL.absoluteString.getter();
      v35 = v67;
    }

    v68 = v35;
    String.append(_:)(*&v36);

    v69._countAndFlagsBits = 10333;
    v69._object = 0xE200000000000000;
    String.append(_:)(v69);
    sub_1002FE0A4(&qword_1006C0FF8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v70);

    v71._countAndFlagsBits = 41;
    v71._object = 0xE100000000000000;
    String.append(_:)(v71);

    v72 = v77;
    (*(v11 + 8))(v13, v10);
    return v72;
  }

  else
  {
    v37 = ([v19 hasFallbackImage]& 1) != 0 || ([v19 hasFallbackPDF]& 1) != 0 || [v19 attachmentType]== 3 || [v19 attachmentType]== 5;
    v74 = v37;
    v38 = [v19 title];
    if (!v38)
    {
      v38 = [v19 userTitle];
      if (!v38)
      {
        v38 = [v19 defaultTitle];
      }
    }

    v39 = v38;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_10036C694();
    if (!v44)
    {

      if (qword_1006BC760 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_10002597C(v59, qword_1006C37C8);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "could not get filename for attachment we're exporting", v62, 2u);
      }

LABEL_40:
      return 0;
    }

    v45 = v43;
    v46 = v44;
    v77 = 0;
    v78 = 0xE000000000000000;
    if (a2 == 1)
    {
      v47 = 0x656D686361747461;
    }

    else
    {
      v47 = 0x656D686361747441;
    }

    v48 = 0xEC0000002F73746ELL;
    String.append(_:)(*&v47);

    v75 = v45;
    v76 = v46;
    static CharacterSet.urlPathAllowed.getter();
    sub_10019E0AC();
    v49 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
    v51 = v50;
    (*(v7 + 8))(v9, v6);

    if (v51)
    {
      v52 = v49;
    }

    else
    {
      v52 = 0;
    }

    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    v54 = v53;
    String.append(_:)(*&v52);

    v56 = v77;
    v55 = v78;
    if (v74)
    {
      v57 = 23329;
      v58 = 0xE200000000000000;
    }

    else
    {
      v57 = 91;
      v58 = 0xE100000000000000;
    }

    v77 = v57;
    v78 = v58;
    v63._countAndFlagsBits = v40;
    v63._object = v42;
    String.append(_:)(v63);

    v64._countAndFlagsBits = 10333;
    v64._object = 0xE200000000000000;
    String.append(_:)(v64);
    v65._countAndFlagsBits = v56;
    v65._object = v55;
    String.append(_:)(v65);

    v66._countAndFlagsBits = 41;
    v66._object = 0xE100000000000000;
    String.append(_:)(v66);

    return v77;
  }
}

uint64_t sub_1002FB8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

void sub_1002FB968(void *a1, void *a2)
{
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  v44 = &_swiftEmptyDictionarySingleton;
  if (a1)
  {
    v3 = a1;
    v4 = [v3 table];
    v5 = swift_allocObject();
    v5[2] = &v44;
    v5[3] = v3;
    v5[4] = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1002FF9A8;
    *(v6 + 24) = v5;
    v42 = sub_1002FF9B4;
    v43 = v6;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100276790;
    v41 = &unk_100654AF8;
    v7 = _Block_copy(&aBlock);
    v8 = v3;
    v9 = a2;

    [v4 enumerateColumnsWithBlock:v7];

    _Block_release(v7);
    LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

    if (a2)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 1 << v44[32];
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v44 + 8);
      v15 = (v12 + 63) >> 6;
      do
      {
        if (!v14)
        {
          while (1)
          {
            v16 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v16 >= v15)
            {
              goto LABEL_15;
            }

            v14 = *&v44[8 * v16 + 64];
            ++v11;
            if (v14)
            {
              v11 = v16;
              goto LABEL_12;
            }
          }

          __break(1u);
          goto LABEL_24;
        }

        v16 = v11;
LABEL_12:
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v18 = *(*(v44 + 7) + ((v16 << 9) | (8 * v17)));
        v19 = __OFADD__(v10, v18);
        v10 += v18;
      }

      while (!v19);
      __break(1u);
LABEL_15:
      v20 = [v8 table];
      v21 = [v20 columnCount];

      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_25;
      }

      v23 = (v22 * 3) >> 64;
      v24 = 3 * v22;
      if (v23 != v24 >> 63)
      {
        goto LABEL_26;
      }

      v19 = __OFADD__(v10, v24);
      v25 = v10 + v24;
      if (!v19)
      {
        v19 = __OFADD__(v25, 4);
        v26 = v25 + 4;
        if (v19)
        {
          goto LABEL_28;
        }

        v27 = v26 < 80;
        v28._countAndFlagsBits = 10;
        v28._object = 0xE100000000000000;
        String.append(_:)(v28);
        v37 = 1;
        v29 = [v8 table];
        v30 = swift_allocObject();
        *(v30 + 16) = v8;
        *(v30 + 24) = v9;
        *(v30 + 32) = v27;
        *(v30 + 40) = &v44;
        *(v30 + 48) = v45;
        *(v30 + 56) = &v37;
        v31 = swift_allocObject();
        *(v31 + 16) = sub_1002FF9BC;
        *(v31 + 24) = v30;
        v42 = sub_1003017B4;
        v43 = v31;
        aBlock = _NSConcreteStackBlock;
        v39 = 1107296256;
        v40 = sub_100276790;
        v41 = &unk_100654B70;
        v32 = _Block_copy(&aBlock);
        v33 = v8;
        v34 = v9;

        [v29 enumerateRowsWithBlock:v32];

        _Block_release(v32);
        LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

        if ((v33 & 1) == 0)
        {

          v35 = sub_1002FF9BC;
          v36 = sub_1002FF9A8;
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v36 = 0;
  v5 = 0;
  v35 = 0;
  v30 = 0;
LABEL_22:

  sub_10000C840(v36, v5);
  sub_10000C840(v35, v30);
}

uint64_t sub_1002FBE08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *a4;
  *a4 = 0x8000000000000000;
  sub_1002E6C24(0, a2, isUniquelyReferenced_nonNull_native);
  *a4 = aBlock[0];

  v15 = [a5 table];
  IndexSet.init(integer:)();
  IndexSet._bridgeToObjectiveC()(v16);
  v18 = v17;
  (*(v11 + 8))(v13, v10);
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a4;
  v19[4] = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1002FFA50;
  *(v20 + 24) = v19;
  aBlock[4] = sub_100301770;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002FC2BC;
  aBlock[3] = &unk_100654CD8;
  v21 = _Block_copy(aBlock);
  v22 = a6;

  [v15 enumerateCellObjectsInCellSelectionContainingColumnIndices:v18 rowIndices:0 copyItems:0 usingBlock:v21];

  _Block_release(v21);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  return result;
}

id sub_1002FC090(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (result)
  {
    v19 = result;
    result = [result attributedString];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [result ic_attributedStringByFlatteningInlineAttachmentsWithContext:a5];
    v12 = [v11 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10019E0AC();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v13 = String.count.getter();
    v14 = *a6;
    if (*(*a6 + 16) && (v15 = sub_1002DFB90(a7), (v16 & 1) != 0))
    {
      if (*(*(v14 + 56) + 8 * v15) >= v13)
      {
        goto LABEL_9;
      }
    }

    else if (v13 <= 0)
    {
      goto LABEL_9;
    }

    v17 = String.count.getter();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a6;
    *a6 = 0x8000000000000000;
    sub_1002E6C24(v17, a7, isUniquelyReferenced_nonNull_native);
    *a6 = v20;
LABEL_9:

    return v19;
  }

  return result;
}

id sub_1002FC2BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = v9(a2, a3, a4, a5);

  return v11;
}

uint64_t sub_1002FC340(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v14 = type metadata accessor for IndexSet();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v45 = 0xE000000000000000;
  v18 = [a4 table];
  IndexSet.init(integer:)();
  IndexSet._bridgeToObjectiveC()(v19);
  v21 = v20;
  (*(v15 + 8))(v17, v14);
  v22 = swift_allocObject();
  *(v22 + 16) = &v44;
  *(v22 + 24) = a5;
  *(v22 + 32) = a6;
  *(v22 + 40) = a7;
  *(v22 + 48) = a4;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1002FF9F0;
  *(v23 + 24) = v22;
  v42 = sub_1002FFA20;
  v43 = v23;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_1002FC2BC;
  v41 = &unk_100654BE8;
  v24 = _Block_copy(&aBlock);
  v25 = a5;
  v26 = a4;

  [v18 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:v21 copyItems:0 usingBlock:v24];

  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v28 = v44;
    v29 = v45;

    v30._countAndFlagsBits = v28;
    v30._object = v29;
    String.append(_:)(v30);

    v31._countAndFlagsBits = 10;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    if (*a9 != 1)
    {
      v37 = 0;
      v33 = 0;
      goto LABEL_6;
    }

    v32 = [v26 table];
    v33 = swift_allocObject();
    *(v33 + 16) = a8;
    *(v33 + 24) = a7;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1002FFA48;
    *(v34 + 24) = v33;
    v42 = sub_1003017B4;
    v43 = v34;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100276790;
    v41 = &unk_100654C60;
    v35 = _Block_copy(&aBlock);

    [v32 enumerateColumnsWithBlock:v35];

    _Block_release(v35);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if ((v32 & 1) == 0)
    {
      v36._countAndFlagsBits = 687136;
      v36._object = 0xE300000000000000;
      String.append(_:)(v36);
      *a9 = 0;
      v37 = sub_1002FFA48;
LABEL_6:

      return sub_10000C840(v37, v33);
    }
  }

  __break(1u);
  return result;
}

void sub_1002FC76C(void *a1, char *a2, int a3, int a4, int a5, uint64_t a6, char a7, uint64_t *a8, id a9)
{
  if (a1)
  {
    v11 = a1;
    if (a2)
    {
      v12 = 2128928;
      v13 = 0xE300000000000000;
    }

    else
    {
      v12 = 8316;
      v13 = 0xE200000000000000;
    }

    String.append(_:)(*&v12);
    v14 = [v11 attributedString];
    if (!v14)
    {
      goto LABEL_22;
    }

    v15 = v14;
    v16 = [v14 ic_attributedStringByFlatteningInlineAttachmentsWithContext:a6];
    v17 = [v16 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = sub_10019E0AC();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v35 = v18;
    v36 = v18;
    v34 = v18;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);
    if (a7)
    {
      v23 = *a8;
      if (*(*a8 + 16) && (v24 = sub_1002DFB90(a2), (v25 & 1) != 0))
      {
        v26 = *(*(v23 + 56) + 8 * v24);
      }

      else
      {
        v26 = 0;
      }

      v27 = String.count.getter();

      v28 = v26 - v27;
      if (__OFSUB__(v26, v27))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      if (v28 < 1)
      {
LABEL_16:
        v31 = [a9 table];
        v32 = [v31 columnCount];

        if (!__OFSUB__(v32, 1))
        {
          if (v32 - 1 == a2)
          {
            v33._countAndFlagsBits = 31776;
            v33._object = 0xE200000000000000;
            String.append(_:)(v33);
          }

          return;
        }

        __break(1u);
        goto LABEL_21;
      }

      v29._countAndFlagsBits = 32;
      v29._object = 0xE100000000000000;
      v30 = String.init(repeating:count:)(v29, v28);
      String.append(_:)(v30);
    }

    goto LABEL_16;
  }
}

uint64_t sub_1002FCA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = 2128928;
    v8 = 0xE300000000000000;
  }

  else
  {
    v7 = 8316;
    v8 = 0xE200000000000000;
  }

  String.append(_:)(*&v7);
  v9 = *a5;
  v10 = *(*a5 + 16);
  if (v10)
  {
    v11 = sub_1002DFB90(a2);
    if (v12)
    {
      v10 = *(*(v9 + 56) + 8 * v11);
    }

    else
    {
      v10 = 0;
    }
  }

  if (v10 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10;
  }

  v14._countAndFlagsBits = 45;
  v14._object = 0xE100000000000000;
  v15 = String.init(repeating:count:)(v14, v13);
  String.append(_:)(v15);
}

uint64_t sub_1002FCAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MarkdownStyle(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10015DA04(&qword_1006C1790, &unk_10053D120);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1002FFA5C(a1, &v21 - v13, type metadata accessor for MarkdownStyle);
  sub_1002FFA5C(a2, &v14[v15], type metadata accessor for MarkdownStyle);
  v16 = *(v5 + 48);
  v17 = v16(v14, 6, v4);
  if (v17 <= 2)
  {
    if (!v17)
    {
      sub_1002FFA5C(v14, v10, type metadata accessor for MarkdownStyle);
      if (!v16(&v14[v15], 6, v4))
      {
        (*(v5 + 32))(v7, &v14[v15], v4);
        v18 = static URL.== infix(_:_:)();
        v20 = *(v5 + 8);
        v20(v7, v4);
        v20(v10, v4);
        sub_1002FFAC4(v14, type metadata accessor for MarkdownStyle);
        return v18 & 1;
      }

      (*(v5 + 8))(v10, v4);
      goto LABEL_20;
    }

    if (v17 == 1)
    {
      if (v16(&v14[v15], 6, v4) != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v16(&v14[v15], 6, v4) == 2)
    {
      goto LABEL_16;
    }

LABEL_20:
    sub_1000073B4(v14, &qword_1006C1790, &unk_10053D120);
    v18 = 0;
    return v18 & 1;
  }

  if (v17 > 4)
  {
    if (v17 == 5)
    {
      if (v16(&v14[v15], 6, v4) != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v16(&v14[v15], 6, v4) == 6)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v17 == 3)
  {
    if (v16(&v14[v15], 6, v4) != 3)
    {
      goto LABEL_20;
    }
  }

  else if (v16(&v14[v15], 6, v4) != 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_1002FFAC4(v14, type metadata accessor for MarkdownStyle);
  v18 = 1;
  return v18 & 1;
}

id sub_1002FCE90(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 57);
  result = [a1 attributedString];
  v8 = result;
  v44 = a2;
  if (v6)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    [result ic_range];

    v8 = ICTTMergeableAttributedString.authorAttributedString(for:object:)();
    v9 = [a2 managedObjectContext];
    v10 = *(a3 + 60);
    v53 = _swiftEmptyArrayStorage;
    v11 = [v8 string];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v51 = v12;
    v52 = v14;
    v15 = [v8 ic_range];
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = &v51;
    *(v18 + 24) = v9;
    *(v18 + 32) = v10;
    a2 = swift_allocObject();
    a2[2] = sub_100301780;
    a2[3] = v18;
    v49 = sub_10030176C;
    v50 = a2;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_1002F0CD8;
    v48 = &unk_1006548C8;
    v19 = _Block_copy(&aBlock);
    v20 = v9;

    [v8 enumerateAttributesInRange:v15 options:v17 usingBlock:{0, v19}];
    sub_100279F6C(a3);

    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_7:
      v43 = v51;

      return v43;
    }

    __break(1u);
  }

  if (v8)
  {
    v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v8];

    v23 = ICTTAttributeNameReplicaID;
    v24 = v22;
    v25 = [v24 ic_range];
    [v24 removeAttribute:v23 range:{v25, v26}];

    v27 = ICTTAttributeNameTimestamp;
    v28 = [v24 ic_range];
    [v24 removeAttribute:v27 range:{v28, v29}];

    v30 = [a2 managedObjectContext];
    v31 = *(a3 + 60);
    v53 = _swiftEmptyArrayStorage;
    v32 = [v24 string];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v51 = v33;
    v52 = v35;
    v36 = [v24 ic_range];
    v38 = v37;
    v39 = swift_allocObject();
    *(v39 + 16) = &v51;
    *(v39 + 24) = v30;
    *(v39 + 32) = v31;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1002FD37C;
    *(v40 + 24) = v39;
    v49 = sub_1002FD388;
    v50 = v40;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_1002F0CD8;
    v48 = &unk_100654850;
    v41 = _Block_copy(&aBlock);
    v42 = v30;

    [v24 enumerateAttributesInRange:v36 options:v38 usingBlock:{0, v41}];
    sub_100279F6C(a3);

    _Block_release(v41);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if ((v41 & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1002FD410(CGColor *a1)
{
  v2 = CGColorGetColorSpace(a1);
  if (v2)
  {
    v3 = v2;
    v4 = CGColorSpaceCopyName(v2);

    if (v4)
    {
      v5 = CGColorRef.components.getter();
      if (v5)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          v26 = _swiftEmptyArrayStorage;
          v7 = v5;
          sub_100189744(0, v6, 0);
          v8 = v7;
          v9 = _swiftEmptyArrayStorage;
          v10 = _swiftEmptyArrayStorage[2];
          v11 = 32;
          do
          {
            v12 = *(v8 + v11);
            v26 = v9;
            v13 = v9[3];
            if (v10 >= v13 >> 1)
            {
              sub_100189744((v13 > 1), v10 + 1, 1);
              v8 = v7;
              v9 = v26;
            }

            v9[2] = v10 + 1;
            v9[v10 + 4] = v12;
            v11 += 8;
            ++v10;
            --v6;
          }

          while (v6);
        }

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v25;
      }
    }
  }

  if (qword_1006BC760 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10002597C(v14, qword_1006C37C8);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    type metadata accessor for CGColor(0);
    v20 = v15;
    v21 = String.init<A>(describing:)();
    v23 = sub_100009D88(v21, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cannot create color from CGColor — returning nil {cgColor: %s}", v18, 0xCu);
    sub_100009F60(v19);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1002FD6B0(uint64_t result)
{
  if (result > 4)
  {
    if (result <= 100)
    {
      if (result == 5)
      {
        return 4;
      }

      if (result == 100)
      {
        return 6;
      }
    }

    else
    {
      switch(result)
      {
        case 'e':
          return 7;
        case 'f':
          return 8;
        case 'g':
          return 9;
      }
    }
  }

  else
  {
    if (result > 1)
    {
      if (result != 2 && result != 3)
      {
        return 5;
      }

      return result;
    }

    if (result <= 1)
    {
      return result;
    }
  }

  if (qword_1006BC760 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002597C(v1, qword_1006C37C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unknown named paragraph style — returning nil", v4, 2u);
  }

  return 10;
}

unint64_t sub_1002FD828(unint64_t result)
{
  if (result >= 5)
  {
    if (qword_1006BC760 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10002597C(v1, qword_1006C37C8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unknown text alignment — returning nil", v4, 2u);
    }

    return 5;
  }

  return result;
}

unint64_t sub_1002FD910(unint64_t a1)
{
  if (a1 < 6)
  {
    return 0x40302010005uLL >> (8 * a1);
  }

  if (qword_1006BC760 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006C37C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown emphasis color type — returning nil", v5, 2u);
  }

  return 5;
}

void sub_1002FDA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_1002FDA74(void *a1, char a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001912E4(_swiftEmptyArrayStorage);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v25 = ICTTAttributeNameParagraphStyle;
  v10 = [a1 ic_range];
  v23 = v11;
  v24 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = a1;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  *(v12 + 48) = v7;
  *(v12 + 56) = a2;
  *(v12 + 64) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1002FDFD8;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1001A1F54;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004AEAA8;
  aBlock[3] = &unk_1006549B8;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  v16 = a3;

  [v15 enumerateAttribute:v25 inRange:v24 options:v23 usingBlock:{0, v14}];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v19 = *(v6 + 16);
    v20 = *(v6 + 24);
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
    }

    else
    {
      v22 = [v15 string];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    return v19;
  }

  return result;
}

uint64_t sub_1002FDD84(void *a1, id a2, uint64_t a3)
{
  v5 = [a2 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 attributedString];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v7];

      v10 = ICTTAttributeNameReplicaID;
      v11 = v9;
      v12 = [v11 ic_range];
      [v11 removeAttribute:v10 range:{v12, v13}];

      v14 = ICTTAttributeNameTimestamp;
      v15 = [v11 ic_range];
      [v11 removeAttribute:v14 range:{v15, v16}];

      v17 = sub_1002FDA74(v11, *(a3 + 1), v6);
      return v17;
    }

    __break(1u);
  }

  if (qword_1006BC760 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10002597C(v19, qword_1006C37C8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "no context found for markdown export of note", v22, 2u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002FE0A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002FE0EC(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C3D08, &qword_100541D60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10017CC60(a1, a1[3]);
  sub_100300C40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10015DA04(&qword_1006C3D18, &qword_100541D68);
    v9[15] = 1;
    sub_100300C94(&qword_1006C3D20, &qword_1006C3D28, &unk_10054194C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100009F60(a1);
  return v7;
}

uint64_t sub_1002FE328(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C3DF0, &qword_100542518);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10017CC60(a1, a1[3]);
  sub_100301570();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10015DA04(&qword_1006C3E00, &qword_100542520);
    v9[15] = 1;
    sub_1003015C4(&qword_1006C3E08, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100009F60(a1);
  return v7;
}

uint64_t sub_1002FE550(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A6953746E696F70 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C6F427369 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C6174497369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C7265646E557369 && a2 == 0xEB00000000656E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656B697274537369 && a2 == 0xEF6867756F726874 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7263737265707573 && a2 == 0xEB00000000747069 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1002FE7F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10015DA04(&qword_1006C3BD0, &qword_100541D10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v70 = 1;
  v67 = 1;
  v9 = a1[3];
  v42 = a1;
  sub_10017CC60(a1, v9);
  sub_10030044C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v71 = v2;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 2;
    v15 = 2;
    v16 = 2;
    v17 = 2;
LABEL_4:
    sub_100009F60(v42);
    *&v51 = v13;
    *(&v51 + 1) = v12;
    v52 = v11;
    v53 = v70;
    v54 = v17;
    v55 = v16;
    v56 = v15;
    v57 = v14;
    v58 = v68;
    v59 = v69;
    v60 = v10;
    v61 = v67;
    *v62 = *v66;
    *&v62[3] = *&v66[3];
    v63 = 0;
    v64 = 0;
    v65 = 0;
    return sub_1003004A0(&v51);
  }

  LOBYTE(v51) = 0;
  *&v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v41 + 1) = v19;
  LOBYTE(v51) = 1;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v20 & 1;
  LOBYTE(v51) = 2;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v51) = 3;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v51) = 4;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v51) = 5;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v51) = 6;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v71 = 0;
  v10 = v21;
  v67 = v22 & 1;
  v48 = 7;
  sub_1003004D0();
  v23 = v71;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v71 = v23;
  if (v23)
  {
    (*(v6 + 8))(v8, v5);
    v12 = *(&v41 + 1);
    v13 = v41;
    v11 = v40;
    v17 = v39;
    v16 = v38;
    v15 = v37;
    goto LABEL_4;
  }

  (*(v6 + 8))(v8, v5);
  v34 = *(&v49 + 1);
  v35 = v49;
  v33 = v50;
  v24 = v41;
  v43 = v41;
  v25 = v40;
  *&v44 = v40;
  v36 = v70;
  BYTE8(v44) = v70;
  v26 = v39;
  BYTE9(v44) = v39;
  v27 = v38;
  BYTE10(v44) = v38;
  v28 = v37;
  BYTE11(v44) = v37;
  BYTE12(v44) = v14;
  *&v45 = v10;
  v29 = v67;
  BYTE8(v45) = v67;
  v46 = v49;
  v47 = v50;
  sub_100300524(&v43, &v51);
  sub_100009F60(v42);
  v51 = __PAIR128__(*(&v41 + 1), v24);
  v52 = v25;
  v53 = v36;
  v54 = v26;
  v55 = v27;
  v56 = v28;
  v57 = v14;
  v60 = v10;
  v61 = v29;
  v63 = v35;
  v64 = v34;
  v65 = v33;
  result = sub_1003004A0(&v51);
  v30 = v46;
  *(a2 + 32) = v45;
  *(a2 + 48) = v30;
  *(a2 + 64) = v47;
  v31 = v44;
  *a2 = v43;
  *(a2 + 16) = v31;
  return result;
}

unint64_t sub_1002FEE48(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064CCC0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002FEE94(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064CD58, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002FEEE0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064CE68, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002FEF2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65646E69 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010056C200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73696C6B63656863 && a2 == 0xED00006D65744974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F75516B636F6C62 && a2 == 0xEF6C6576654C6574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1002FF190(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064CF00, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002FF1DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000100569EA0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010056C220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74786554746C61 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1002FF3A8(void *a1)
{
  v2 = sub_10015DA04(&qword_1006C3CF0, &qword_100541D50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_10017CC60(a1, a1[3]);
  sub_100300BEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8[15] = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100009F60(a1);
  return v6;
}

uint64_t sub_1002FF550(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010056C240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xEE00656C79745368 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7369736168706D65 && a2 == 0xED0000656C797453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010056C260 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010056C280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010056C2A0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1002FF89C(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = 0;
    v3 = 0xE000000000000000;
    v4 = 1;
    while (1)
    {
      v5 = v3;
      String.append(_:)(*&v2);

      v2 = 62;
      v3 = 0xE100000000000000;
      if (v1 == v4)
      {
        break;
      }

      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        break;
      }
    }

    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    return 62;
  }

  return result;
}

uint64_t sub_1002FF940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FFA5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FFAC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002FFB4C(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1002FFBCC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002FFC40(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1002FFC58(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002FFC7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002FFCD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1002FFD74(uint64_t a1)
{
  sub_10027A640(319, qword_1006BFE18, &type metadata for Int);
  if (v1 <= 0x3F)
  {
    sub_1002FFE7C(319, &qword_1006C39B8, _s16AttributedStringV13ChecklistItemVMa);
    if (v2 <= 0x3F)
    {
      sub_1002FFE7C(319, &unk_1006C39C0, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002FFE7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1002FFF18(uint64_t a1)
{
  sub_10027A640(319, &qword_1006C0620, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1002FFE7C(319, &qword_1006C0EE8, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100300008(uint64_t a1)
{
  sub_1002FFE7C(319, &unk_1006C39C0, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_1002FFE7C(319, &qword_1006C0EE8, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      sub_10027A640(319, &qword_1006C3B10, &_s16AttributedStringV4FontVN);
      if (v3 <= 0x3F)
      {
        sub_1002FFE7C(319, &qword_1006C3B18, _s16AttributedStringV14ParagraphStyleVMa);
        if (v4 <= 0x3F)
        {
          sub_10027A640(319, &qword_1006C3B20, &_s16AttributedStringV13EmphasisStyleON);
          if (v5 <= 0x3F)
          {
            sub_1002FFE7C(319, &qword_1006BEC68, &type metadata accessor for URL);
            if (v6 <= 0x3F)
            {
              sub_10027A640(319, &qword_1006C3B28, &_s16AttributedStringV17WritingDirectionsON);
              if (v7 <= 0x3F)
              {
                sub_10027A640(319, &qword_1006C0620, &type metadata for String);
                if (v8 <= 0x3F)
                {
                  sub_1002FFE7C(319, &unk_1006C3B30, _s16AttributedStringV16InlineAttachmentVMa);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_100300254()
{
  result = qword_1006C3B80;
  if (!qword_1006C3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3B80);
  }

  return result;
}

unint64_t sub_1003002AC()
{
  result = qword_1006C3B88;
  if (!qword_1006C3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3B88);
  }

  return result;
}

unint64_t sub_100300304()
{
  result = qword_1006C3B90;
  if (!qword_1006C3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3B90);
  }

  return result;
}

unint64_t sub_10030035C()
{
  result = qword_1006C3B98;
  if (!qword_1006C3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3B98);
  }

  return result;
}

unint64_t sub_1003003F8()
{
  result = qword_1006C3BB0;
  if (!qword_1006C3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3BB0);
  }

  return result;
}

unint64_t sub_10030044C()
{
  result = qword_1006C3BD8;
  if (!qword_1006C3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3BD8);
  }

  return result;
}

unint64_t sub_1003004D0()
{
  result = qword_1006C3BE0;
  if (!qword_1006C3BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3BE0);
  }

  return result;
}

unint64_t sub_10030055C()
{
  result = qword_1006C3BF0;
  if (!qword_1006C3BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3BF0);
  }

  return result;
}

unint64_t sub_1003005B0()
{
  result = qword_1006C3C00;
  if (!qword_1006C3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C00);
  }

  return result;
}

unint64_t sub_100300604()
{
  result = qword_1006C3C08;
  if (!qword_1006C3C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C08);
  }

  return result;
}

unint64_t sub_100300658()
{
  result = qword_1006C3C10;
  if (!qword_1006C3C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C10);
  }

  return result;
}

unint64_t sub_1003006AC()
{
  result = qword_1006C3C28;
  if (!qword_1006C3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C28);
  }

  return result;
}

unint64_t sub_100300700()
{
  result = qword_1006C3C30;
  if (!qword_1006C3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C30);
  }

  return result;
}

unint64_t sub_100300754()
{
  result = qword_1006C3C40;
  if (!qword_1006C3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C40);
  }

  return result;
}

unint64_t sub_1003007A8()
{
  result = qword_1006C3C48;
  if (!qword_1006C3C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C48);
  }

  return result;
}

unint64_t sub_1003007FC()
{
  result = qword_1006C3C58;
  if (!qword_1006C3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C58);
  }

  return result;
}

unint64_t sub_100300850()
{
  result = qword_1006C3C70;
  if (!qword_1006C3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C70);
  }

  return result;
}

unint64_t sub_1003008A4()
{
  result = qword_1006C3C78;
  if (!qword_1006C3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C78);
  }

  return result;
}

unint64_t sub_1003008F8()
{
  result = qword_1006C3C80;
  if (!qword_1006C3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C80);
  }

  return result;
}

unint64_t sub_10030094C()
{
  result = qword_1006C3C90;
  if (!qword_1006C3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C90);
  }

  return result;
}

unint64_t sub_1003009A0()
{
  result = qword_1006C3C98;
  if (!qword_1006C3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C98);
  }

  return result;
}

unint64_t sub_1003009F4()
{
  result = qword_1006C3CB0;
  if (!qword_1006C3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3CB0);
  }

  return result;
}

unint64_t sub_100300A48()
{
  result = qword_1006C3CB8;
  if (!qword_1006C3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3CB8);
  }

  return result;
}

unint64_t sub_100300A9C()
{
  result = qword_1006C3CC8;
  if (!qword_1006C3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3CC8);
  }

  return result;
}

unint64_t sub_100300AF0()
{
  result = qword_1006C3CD0;
  if (!qword_1006C3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3CD0);
  }

  return result;
}

unint64_t sub_100300B44()
{
  result = qword_1006C3CE0;
  if (!qword_1006C3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3CE0);
  }

  return result;
}

unint64_t sub_100300B98()
{
  result = qword_1006C3CE8;
  if (!qword_1006C3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3CE8);
  }

  return result;
}

unint64_t sub_100300BEC()
{
  result = qword_1006C3CF8;
  if (!qword_1006C3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3CF8);
  }

  return result;
}

unint64_t sub_100300C40()
{
  result = qword_1006C3D10;
  if (!qword_1006C3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D10);
  }

  return result;
}

uint64_t sub_100300C94(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&qword_1006C3D18, &qword_100541D68);
    sub_1002FE0A4(a2, _s16AttributedStringV9AttributeVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100300DA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100300DE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100300E3C()
{
  result = qword_1006C3D48;
  if (!qword_1006C3D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D48);
  }

  return result;
}

unint64_t sub_100300E94()
{
  result = qword_1006C3D50;
  if (!qword_1006C3D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D50);
  }

  return result;
}

unint64_t sub_100300EEC()
{
  result = qword_1006C3D58;
  if (!qword_1006C3D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D58);
  }

  return result;
}

unint64_t sub_100300F44()
{
  result = qword_1006C3D60;
  if (!qword_1006C3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D60);
  }

  return result;
}

unint64_t sub_100300F9C()
{
  result = qword_1006C3D68;
  if (!qword_1006C3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D68);
  }

  return result;
}

unint64_t sub_100300FF4()
{
  result = qword_1006C3D70;
  if (!qword_1006C3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D70);
  }

  return result;
}

unint64_t sub_10030104C()
{
  result = qword_1006C3D78;
  if (!qword_1006C3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D78);
  }

  return result;
}

unint64_t sub_1003010A4()
{
  result = qword_1006C3D80;
  if (!qword_1006C3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D80);
  }

  return result;
}

unint64_t sub_1003010FC()
{
  result = qword_1006C3D88;
  if (!qword_1006C3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D88);
  }

  return result;
}

unint64_t sub_100301154()
{
  result = qword_1006C3D90;
  if (!qword_1006C3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D90);
  }

  return result;
}

unint64_t sub_1003011AC()
{
  result = qword_1006C3D98;
  if (!qword_1006C3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3D98);
  }

  return result;
}

unint64_t sub_100301204()
{
  result = qword_1006C3DA0;
  if (!qword_1006C3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DA0);
  }

  return result;
}

unint64_t sub_10030125C()
{
  result = qword_1006C3DA8;
  if (!qword_1006C3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DA8);
  }

  return result;
}

unint64_t sub_1003012B4()
{
  result = qword_1006C3DB0;
  if (!qword_1006C3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DB0);
  }

  return result;
}

unint64_t sub_10030130C()
{
  result = qword_1006C3DB8;
  if (!qword_1006C3DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DB8);
  }

  return result;
}

unint64_t sub_100301364()
{
  result = qword_1006C3DC0;
  if (!qword_1006C3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DC0);
  }

  return result;
}

unint64_t sub_1003013BC()
{
  result = qword_1006C3DC8;
  if (!qword_1006C3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DC8);
  }

  return result;
}

unint64_t sub_100301414()
{
  result = qword_1006C3DD0;
  if (!qword_1006C3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DD0);
  }

  return result;
}

unint64_t sub_10030146C()
{
  result = qword_1006C3DD8;
  if (!qword_1006C3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DD8);
  }

  return result;
}

unint64_t sub_1003014C4()
{
  result = qword_1006C3DE0;
  if (!qword_1006C3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DE0);
  }

  return result;
}

unint64_t sub_10030151C()
{
  result = qword_1006C3DE8;
  if (!qword_1006C3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DE8);
  }

  return result;
}

unint64_t sub_100301570()
{
  result = qword_1006C3DF8;
  if (!qword_1006C3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3DF8);
  }

  return result;
}

uint64_t sub_1003015C4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&qword_1006C3E00, &qword_100542520);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100301644()
{
  result = qword_1006C3E20;
  if (!qword_1006C3E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3E20);
  }

  return result;
}

unint64_t sub_10030169C()
{
  result = qword_1006C3E28;
  if (!qword_1006C3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3E28);
  }

  return result;
}

unint64_t sub_1003016F4()
{
  result = qword_1006C3E30;
  if (!qword_1006C3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3E30);
  }

  return result;
}

uint64_t sub_1003017C8(void (*a1)(void *))
{
  sub_100377104();
  if (!v2 || (v3 = v2, v4 = [v2 noteEditorViewController], v3, v5 = objc_msgSend(v4, "note"), v4, !v5))
  {
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v6 = [objc_allocWithZone(ICSetPreferredAttachmentSizeActivity) initWithNote:v5];
  if (([v5 isPasswordProtectedAndLocked] & 1) != 0 || (objc_msgSend(v5, "isEditable") & 1) == 0)
  {
    v7 = [v6 actionWithCompletion:0];
    [v7 setIc_disabled:1];
    goto LABEL_9;
  }

  v7 = [v6 menuWithCompletion:0];
  if (v7)
  {
LABEL_9:
    sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
    v8 = swift_allocObject();
    *(v8 + 1) = xmmword_100534670;
    v8[4] = v7;
    goto LABEL_10;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_10:

LABEL_11:
  a1(v8);
}

uint64_t sub_100301958(void (*a1)(void *))
{
  sub_100377104();
  if (v2 && (v3 = v2, v4 = [v2 currentNoteBrowseViewController], v3, v5 = objc_msgSend(v4, "noteContainer"), v4, v5))
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 && (v7 = v5, sub_100377104(), v8) && (v9 = v8, v10 = [v8 noteContainerViewMode], v9, objc_msgSend(v6, "supportsCustomNoteSortType")))
    {
      sub_100377104();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 activeEditorController];
      }

      else
      {
        v13 = 0;
      }

      v16 = objc_allocWithZone(ICSortFolderActivity);
      v17 = v7;
      v18 = [v16 initWithFolder:v6 presentingViewController:v13 presentingBarButtonItem:0 eventReporter:0 noteContainerViewMode:v10];

      v19 = [v18 menuWithCompletion:0];
      if (v19)
      {
        v20 = v19;
        sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
        v14 = swift_allocObject();
        *(v14 + 1) = xmmword_100534670;
        v14[4] = v20;
      }

      else
      {
        v14 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v6 = 0;
    v14 = _swiftEmptyArrayStorage;
  }

  a1(v14);
}

uint64_t sub_100301B60(void (*a1)(void *))
{
  sub_100377104();
  if (v2 && (v3 = v2, v4 = [v2 currentNoteBrowseViewController], v3, v5 = objc_msgSend(v4, "noteContainer"), v4, v5))
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 && (v7 = v6, sub_100377104(), v8) && (v9 = v8, v10 = [v8 noteContainerViewMode], v9, objc_msgSend(v7, "supportsCustomNoteSortType")))
    {
      sub_100377104();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 activeEditorController];
      }

      else
      {
        v13 = 0;
      }

      v16 = objc_allocWithZone(ICDateHeadersNoteContainerActivity);
      v17 = v5;
      v18 = [v16 initWithContainer:v7 presentingViewController:v13 eventReporter:0 noteContainerViewMode:v10];

      v19 = [v18 menuWithCompletion:0];
      if (v19)
      {
        v20 = v19;
        sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
        v14 = swift_allocObject();
        *(v14 + 1) = xmmword_100534670;
        v14[4] = v20;
      }

      else
      {
        v14 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  a1(v14);
}

void **sub_100301D58(uint64_t a1)
{
  sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E20;
  v2 = objc_opt_self();
  v13 = sub_100301958;
  v14 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1003BF11C;
  v12 = &unk_100655658;
  v3 = _Block_copy(&v9);
  v4 = [v2 elementWithUncachedProvider:v3];
  _Block_release(v3);
  *(v1 + 32) = v4;
  v13 = sub_100301B60;
  v14 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1003BF11C;
  v12 = &unk_100655680;
  v5 = _Block_copy(&v9);
  v6 = [v2 elementWithUncachedProvider:v5];
  _Block_release(v5);
  *(v1 + 40) = v6;
  v9 = v1;

  sub_1002DC254(v7);
  return v9;
}

UIMenu sub_100301F04()
{
  sub_1000054A4(0, &unk_1006C6410, UIMenu_ptr);
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  swift__string._object = 0x800000010056C610;
  v2._countAndFlagsBits = 0x74634120776F6853;
  v2._object = 0xED00007974697669;
  swift__string._countAndFlagsBits = 0xD000000000000026;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, swift__string);

  v5 = String._bridgeToObjectiveC()();
  image = [objc_opt_self() systemImageNamed:v5];

  sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100531E20;
  v7 = objc_opt_self();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v0 mainBundle];
  swift__stringa._object = 0x800000010056C660;
  v10._object = 0x800000010056C640;
  swift__stringa._countAndFlagsBits = 0xD00000000000002ALL;
  v10._countAndFlagsBits = 0xD000000000000012;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, swift__stringa);

  v12 = String._bridgeToObjectiveC()();

  v13 = [v7 ic_keyCommandWithInput:v8 modifierFlags:1310720 action:"toggleNoteActivity:" discoverabilityTitle:v12 image:0];

  *(preferredElementSize + 32) = v13;
  sub_1000054A4(0, &qword_1006BF850, UICommand_ptr);
  v14 = [v0 mainBundle];
  swift__stringb._object = 0x800000010056C690;
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x8000000100568250;
  swift__stringb._countAndFlagsBits = 0xD000000000000024;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, swift__stringb);

  *(preferredElementSize + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v19.value.super.isa = image;
  v19.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v4, 0, v19, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

id sub_10030224C()
{
  v39 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100531E10;
  v38 = objc_opt_self();
  v1 = objc_opt_self();
  v2 = UIKeyInputRightArrow;
  v3 = [v1 mainBundle];
  v40._countAndFlagsBits = 0xD000000000000026;
  v40._object = 0x800000010056C490;
  v4._countAndFlagsBits = 0x5320646E61707845;
  v4._object = 0xEE006E6F69746365;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v40);

  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();
  v8 = objc_opt_self();
  v9 = [v8 systemImageNamed:v7];

  v10 = [v38 ic_keyCommandWithInput:v2 modifierFlags:1572864 action:"expandSection:" discoverabilityTitle:v6 image:v9];
  *(v0 + 32) = v10;
  v11 = v2;
  v12 = [v1 mainBundle];
  v13._countAndFlagsBits = 0xD000000000000013;
  v41._object = 0x800000010056C510;
  v13._object = 0x800000010056C4F0;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0xD00000000000002BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v41);

  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();
  v17 = [v8 systemImageNamed:v16];

  v18 = [v38 ic_keyCommandWithInput:v11 modifierFlags:1703936 action:"expandAllSections:" discoverabilityTitle:v15 image:v17];
  *(v0 + 40) = v18;
  v19 = UIKeyInputLeftArrow;
  v20 = [v1 mainBundle];
  v21._countAndFlagsBits = 0xD000000000000010;
  v42._countAndFlagsBits = 0xD000000000000028;
  v42._object = 0x800000010056C560;
  v21._object = 0x800000010056C540;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v42);

  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();
  v25 = [v8 systemImageNamed:v24];

  v26 = [v38 ic_keyCommandWithInput:v19 modifierFlags:1572864 action:"collapseSection:" discoverabilityTitle:v23 image:v25];
  *(v0 + 48) = v26;
  v27 = v19;
  v28 = [v1 mainBundle];
  v29._countAndFlagsBits = 0xD000000000000015;
  v43._object = 0x800000010056C5E0;
  v29._object = 0x800000010056C5C0;
  v43._countAndFlagsBits = 0xD00000000000002CLL;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v43);

  v31 = String._bridgeToObjectiveC()();

  v32 = String._bridgeToObjectiveC()();
  v33 = [v8 systemImageNamed:v32];

  v34 = [v38 ic_keyCommandWithInput:v27 modifierFlags:1703936 action:"collapseAllSections:" discoverabilityTitle:v31 image:v33];
  *(v0 + 56) = v34;
  sub_1000054A4(0, &qword_1006C6400, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v36 = [v39 ic_inlineMenuWithChildren:isa];

  return v36;
}

id sub_100302800()
{
  v19 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100534950;
  sub_1000054A4(0, &qword_1006C3E38, UIKeyCommand_ptr);
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v21._object = 0x800000010056C420;
  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x800000010056C400;
  v21._countAndFlagsBits = 0xD000000000000028;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v21);

  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed:v5];

  *(v0 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_1000054A4(0, &qword_1006BF850, UICommand_ptr);
  v8 = [v1 mainBundle];
  v22._object = 0x800000010056C470;
  v9._countAndFlagsBits = 0x206E6920776F6853;
  v9._object = 0xEC00000065746F4ELL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000016;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v22);

  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 systemImageNamed:v11];

  *(v0 + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v13 = objc_opt_self();
  aBlock[4] = sub_1003017C8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003BF11C;
  aBlock[3] = &unk_1006556A8;
  v14 = _Block_copy(aBlock);
  v15 = [v13 elementWithUncachedProvider:{v14, _swiftEmptyArrayStorage, 0, 0, 0, 0}];
  _Block_release(v14);
  *(v0 + 48) = v15;
  sub_1000054A4(0, &qword_1006C6400, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v19 ic_inlineMenuWithChildren:isa];

  return v17;
}

id sub_100302BC4()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v15._object = 0x800000010056C390;
  v4._object = 0x800000010056C370;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  v4._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v15);

  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() systemImageNamed:v7];

  v9 = [v0 ic_keyCommandWithInput:v1 modifierFlags:0x100000 action:"cmd1:" discoverabilityTitle:v6 image:v8];
  v10 = [v2 mainBundle];
  v16._object = 0x800000010056C3C0;
  v11._countAndFlagsBits = 0x7473694C207361;
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  v11._object = 0xE700000000000000;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v16);

  v13 = String._bridgeToObjectiveC()();

  [v9 setTitle:v13];

  return v9;
}

id sub_100302DF4()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v15._object = 0x800000010056C320;
  v4._object = 0x800000010056C300;
  v15._countAndFlagsBits = 0xD00000000000002DLL;
  v4._countAndFlagsBits = 0xD000000000000015;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v15);

  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() systemImageNamed:v7];

  v9 = [v0 ic_keyCommandWithInput:v1 modifierFlags:0x100000 action:"cmd2:" discoverabilityTitle:v6 image:v8];
  v10 = [v2 mainBundle];
  v16._object = 0x800000010056C350;
  v11._countAndFlagsBits = 0x656C6C6147207361;
  v16._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0xEA00000000007972;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v16);

  v13 = String._bridgeToObjectiveC()();

  [v9 setTitle:v13];

  return v9;
}

void sub_100303030(void *a1)
{
  if (a1)
  {
    v2 = sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100531E20;
    sub_1000054A4(0, &unk_1006C6410, UIMenu_ptr);
    childrena._rawValue = v2;
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_100531E20;
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() mainBundle];
    swift__string._object = 0x800000010056C2C0;
    v8._countAndFlagsBits = 0x67694820776F6853;
    v8._object = 0xEF73746867696C68;
    swift__string._countAndFlagsBits = 0xD000000000000030;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, swift__string);

    v10 = String._bridgeToObjectiveC()();

    v11 = String._bridgeToObjectiveC()();
    v12 = [objc_opt_self() systemImageNamed:v11];

    v13 = [v5 ic_keyCommandWithInput:v6 modifierFlags:1310720 action:"toggleEditorCallouts:" discoverabilityTitle:v10 image:v12];
    *(preferredElementSize + 32) = v13;
    *(preferredElementSize + 40) = sub_100301F04();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v27.value.super.isa = 0;
    v27.is_nil = 0;
    *(v3 + 32) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v27, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, childrena);
    *(v3 + 40) = sub_10030224C();
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v28.value.super.isa = 0;
    v28.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, 0, v28, 1, 0xFFFFFFFFFFFFFFFFLL, v3, childrenb).super.super.isa;
    [a1 insertChildMenu:isa atStartOfMenuForIdentifier:UIMenuView];

    v17 = sub_100302800();
    [a1 insertChildMenu:v17 atStartOfMenuForIdentifier:UIMenuView];

    v18 = swift_allocObject();
    *(v18 + 16) = sub_100301D58;
    *(v18 + 24) = 0;
    aBlock[4] = sub_1001DA9C4;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003F6814;
    aBlock[3] = &unk_100655630;
    v19 = _Block_copy(aBlock);

    [a1 replaceChildrenOfMenuForIdentifier:UIMenuView fromChildrenBlock:v19];
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100531E20;
      *(v20 + 32) = sub_100302BC4();
      *(v20 + 40) = sub_100302DF4();
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v29.value.super.isa = 0;
      v29.is_nil = 0;
      v22 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, 0, v29, 1, 0xFFFFFFFFFFFFFFFFLL, v20, children).super.super.isa;
      [a1 insertChildMenu:v22 atStartOfMenuForIdentifier:UIMenuView];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100303494(uint64_t a1)
{
  sub_10015DA04(&unk_1006BD390, &unk_100532CB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100534670;
  *(inited + 32) = [objc_opt_self() openInNewWindowCommand];

  sub_1002DC254(inited);
  return a1;
}

uint64_t sub_100303534(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v3[4] = sub_100303494;
    v3[5] = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 1107296256;
    v3[2] = sub_1003F6814;
    v3[3] = &unk_100655700;
    v2 = _Block_copy(v3);
    swift_unknownObjectRetain();

    [v1 replaceChildrenOfMenuForIdentifier:UIMenuWindow fromChildrenBlock:v2];
    swift_unknownObjectRelease();
    _Block_release(v2);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }
  }

  return result;
}

BOOL sub_100303640(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_100303670(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v216 = a3;
  v215 = a2;
  v214 = a1;
  v222 = type metadata accessor for DispatchWorkItemFlags();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v219 = &v205 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for DispatchQoS();
  v218 = *(v220 - 8);
  __chkstk_darwin(v220);
  v217 = &v205 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&unk_1006C1710, &qword_10053BA80);
  v8 = __chkstk_darwin(v7 - 8);
  v206 = &v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v205 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v205 - v14;
  v16 = __chkstk_darwin(v13);
  v213 = &v205 - v17;
  __chkstk_darwin(v16);
  v234 = &v205 - v18;
  v244 = type metadata accessor for Date();
  v19 = *(v244 - 8);
  v20 = __chkstk_darwin(v244);
  v230 = &v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v231 = &v205 - v23;
  __chkstk_darwin(v22);
  v25 = &v205 - v24;
  v232 = type metadata accessor for IndexPath();
  v226 = *(v232 - 8);
  v26 = __chkstk_darwin(v232);
  v223 = &v205 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v229 = &v205 - v28;
  v247 = sub_10015DA04(&unk_1006C3F00, &unk_10053FD28);
  v29 = *(v247 - 8);
  __chkstk_darwin(v247);
  v240 = &v205 - v30;
  v31 = sub_100307D2C();
  v250 = sub_100191190(_swiftEmptyArrayStorage);
  v32 = [*(v3 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_filterSelection) filterTypeSelections];
  sub_1000054A4(0, &unk_1006C2B90, ICFilterTypeSelection_ptr);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v33;
  if (v33 >> 62)
  {
    goto LABEL_165;
  }

  v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = &unk_1006C3000;
  if (!v35)
  {
LABEL_166:

    v155 = *(v31 + 16);
    v156 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_enabledSections;
    v249 = v155;
    if (!v155)
    {
LABEL_293:
      v185 = swift_allocBox();
      sub_10030DCF8();
      sub_10030DD4C();
      NSDiffableDataSourceSnapshot.init()();
      NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10064CBD0);
      LOBYTE(aBlock[0]) = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
      swift_beginAccess();

      NSDiffableDataSourceSnapshot.appendSections(_:)(v186);

      v187 = 0;
      v188 = v250 + 8;
      v189 = 1 << *(v250 + 32);
      v190 = -1;
      if (v189 < 64)
      {
        v190 = ~(-1 << v189);
      }

      v191 = v190 & v250[8];
      v192 = (v189 + 63) >> 6;
      while (v191)
      {
        v193 = v187;
LABEL_301:
        v194 = __clz(__rbit64(v191));
        v191 &= v191 - 1;
        LOBYTE(aBlock[0]) = *(v250[6] + (v194 | (v193 << 6)));

        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
      }

      while (1)
      {
        v193 = v187 + 1;
        if (__OFADD__(v187, 1))
        {
          break;
        }

        if (v193 >= v192)
        {

          if (v249)
          {
            NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10064CC20);
            LOBYTE(aBlock[0]) = 12;
            NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
          }

          v195 = v216;
          v196 = v214;
          sub_1000054A4(0, &qword_1006BE9E0, OS_dispatch_queue_ptr);
          v197 = static OS_dispatch_queue.main.getter();
          v198 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v199 = swift_allocObject();
          *(v199 + 16) = v196 & 1;
          *(v199 + 24) = v198;
          *(v199 + 32) = v185;
          v200 = v215;
          *(v199 + 40) = v215;
          *(v199 + 48) = v195;
          aBlock[4] = sub_10030DDA0;
          aBlock[5] = v199;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10028DCE8;
          aBlock[3] = &unk_100655898;
          v201 = _Block_copy(aBlock);

          sub_1001C71A4(v200, v195);

          v202 = v217;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_1002B0510();
          sub_10015DA04(&unk_1006C3F20, &unk_10053C1D0);
          sub_1000060B4(&qword_1006C1140, &unk_1006C3F20, &unk_10053C1D0, &protocol conformance descriptor for [A]);
          v203 = v219;
          v204 = v222;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v201);

          (*(v221 + 8))(v203, v204);
          (*(v218 + 8))(v202, v220);

          return;
        }

        v191 = v188[v193];
        ++v187;
        if (v191)
        {
          v187 = v193;
          goto LABEL_301;
        }
      }

LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
      goto LABEL_311;
    }

    v157 = 0;
    v251 = (v31 + 32);
    v245 = v31;
LABEL_170:
    if (v157 >= *(v31 + 16))
    {
      goto LABEL_310;
    }

    v159 = v251[v157];
    swift_beginAccess();
    v160 = *(v4 + v156);
    v161 = *(v160 + 2);
    if (!v161)
    {
      v158 = 0;
      goto LABEL_169;
    }

    v162 = v4;
    v163 = 0;
    v174 = v159 == 8 || v159 == 1 || v159 == 2 || v159 == 3 || v159 == 4 || v159 == 5 || v159 == 6 || v159 == 7 || v159 == 9 || v159 == 10 || v159 == 11;
    v175 = 33;
    while (1)
    {
      if (v174)
      {
        v176 = v160[v163 + 32];
        if (v159 <= 5)
        {
          if (v159 <= 2)
          {
            if (v159 == 1)
            {
              if (v176 == 9)
              {
                goto LABEL_240;
              }
            }

            else if (v159 == 2 && v176 == 10)
            {
LABEL_240:
              v177 = v163 + 1;
              if (__OFADD__(v163, 1))
              {
                goto LABEL_312;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v162 + v156) = v160;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v160 = sub_10030D5A0(v160);
              }

              *(v162 + v156) = v160;
              v179 = *(v160 + 2);
              if (v177 == v179)
              {
                v4 = v162;
                v31 = v245;
LABEL_245:
                *(v4 + v156) = v160;
                v158 = *(v160 + 2);
                v161 = v163;
                v155 = v249;
                if (v158 < v163)
                {
LABEL_311:
                  __break(1u);
LABEL_312:
                  __break(1u);
LABEL_313:
                  __break(1u);
                  goto LABEL_314;
                }

LABEL_169:
                ++v157;
                sub_10030DC18(v161, v158);
                swift_endAccess();
                if (v157 == v155)
                {
                  goto LABEL_293;
                }

                goto LABEL_170;
              }

              v180 = v160 + 32;
              v181 = vdup_n_s8(v159);
              v182 = &v160[v175];
              v4 = v162;
              v31 = v245;
              while (2)
              {
                if (v177 >= v179)
                {
                  __break(1u);
                  goto LABEL_307;
                }

                v184 = *v182;
                if ((vmaxv_u8(vceq_s8(0x706050403020108, v181)) & 1) != 0 || v159 == 9 || v159 == 10 || v159 == 11)
                {
                  if (v159 <= 5)
                  {
                    if (v159 <= 2)
                    {
                      if (v159 == 1)
                      {
                        if (v184 != 9)
                        {
                          goto LABEL_257;
                        }
                      }

                      else if (v184 != 10)
                      {
                        goto LABEL_257;
                      }
                    }

                    else if (v159 == 3)
                    {
                      if (v184 != 11)
                      {
                        goto LABEL_257;
                      }
                    }

                    else if (v159 == 4)
                    {
                      if (v184 != 2)
                      {
                        goto LABEL_257;
                      }
                    }

                    else if (v184 != 3)
                    {
                      goto LABEL_257;
                    }
                  }

                  else if (v159 > 8)
                  {
                    if (v159 == 9)
                    {
                      if (v184 != 6)
                      {
                        goto LABEL_257;
                      }
                    }

                    else if (v159 == 10)
                    {
                      if (v184 != 7)
                      {
                        goto LABEL_257;
                      }
                    }

                    else if (v184 != 8)
                    {
                      goto LABEL_257;
                    }
                  }

                  else if (v159 == 6)
                  {
                    if (v184 != 4)
                    {
                      goto LABEL_257;
                    }
                  }

                  else if (v159 == 7)
                  {
                    if (v184 != 5)
                    {
                      goto LABEL_257;
                    }
                  }

                  else if (v184 != 1)
                  {
                    goto LABEL_257;
                  }
                }

                else
                {
LABEL_257:
                  if (v177 != v163)
                  {
                    if (v163 < 0)
                    {
                      goto LABEL_308;
                    }

                    if (v163 >= v179)
                    {
                      goto LABEL_309;
                    }

                    v183 = v180[v163];
                    v180[v163] = v184;
                    *v182 = v183;
                  }

                  ++v163;
                }

                ++v177;
                v179 = *(v160 + 2);
                ++v182;
                if (v177 == v179)
                {
                  goto LABEL_245;
                }

                continue;
              }
            }
          }

          else if (v159 == 3)
          {
            if (v176 == 11)
            {
              goto LABEL_240;
            }
          }

          else if (v159 == 4)
          {
            if (v176 == 2)
            {
              goto LABEL_240;
            }
          }

          else if (v176 == 3)
          {
            goto LABEL_240;
          }
        }

        else if (v159 > 8)
        {
          if (v159 == 9)
          {
            if (v176 == 6)
            {
              goto LABEL_240;
            }
          }

          else if (v159 == 10)
          {
            if (v176 == 7)
            {
              goto LABEL_240;
            }
          }

          else if (v159 == 11 && v176 == 8)
          {
            goto LABEL_240;
          }
        }

        else if (v159 == 6)
        {
          if (v176 == 4)
          {
            goto LABEL_240;
          }
        }

        else if (v159 == 7)
        {
          if (v176 == 5)
          {
            goto LABEL_240;
          }
        }

        else if (v176 == 1)
        {
          goto LABEL_240;
        }
      }

      ++v163;
      ++v175;
      if (v161 == v163)
      {
        v158 = *(v160 + 2);
        v4 = v162;
        v31 = v245;
        goto LABEL_169;
      }
    }
  }

  while (2)
  {
    v208 = v12;
    v241 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_prefersPopoverEntries;
    v242 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_selectedInlineEntryItem;
    v224 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView;
    v37 = v36[466];
    v249 = v34 & 0xC000000000000001;
    v248 = v37;
    swift_beginAccess();
    v12 = 0;
    v238 = v34 & 0xFFFFFFFFFFFFFF8;
    v237 = v34 + 32;
    v239 = (v29 + 1);
    v212 = v226 + 16;
    v211 = v226 + 32;
    v210 = (v226 + 8);
    v228 = (v19 + 32);
    v236 = (v19 + 56);
    v225 = (v19 + 48);
    v235 = (v19 + 8);
    v29 = &selRef_handleToggleBlockQuote_;
    v19 = &qword_10064CB60;
    v246 = v34;
    v243 = v35;
    v209 = v15;
    v227 = v25;
    while (1)
    {
      while (1)
      {
        if (v249)
        {
          v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v238 + 16))
          {
            goto LABEL_161;
          }

          v46 = *(v237 + 8 * v12);
        }

        v44 = v46;
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_158;
        }

        v48 = [v46 v29[202]];
        v251 = v44;
        if (v48 > 4)
        {
          break;
        }

        if (v48 > 1)
        {
          if (v48 == 2)
          {
            v49 = 5;
          }

          else if (v48 == 3)
          {
            v49 = 6;
          }

          else
          {
            v49 = 7;
          }

          goto LABEL_37;
        }

        if (v48 != -1)
        {
          if (!v48)
          {
            v49 = 8;
            goto LABEL_37;
          }

          if (v48 == 1)
          {
            v49 = 4;
            goto LABEL_37;
          }
        }

LABEL_7:

        if (v12 == v35)
        {
          goto LABEL_166;
        }
      }

      if (v48 > 7)
      {
        switch(v48)
        {
          case 10:
            v49 = 3;
            goto LABEL_37;
          case 9:
            v49 = 2;
            goto LABEL_37;
          case 8:
            v49 = 1;
            goto LABEL_37;
        }

        goto LABEL_7;
      }

      if (v48 == 5)
      {
        v49 = 9;
      }

      else
      {
        v49 = v48 == 6 ? 10 : 11;
      }

LABEL_37:
      if ((vmaxv_u8(vceq_s8(0x706050403020108, vdup_n_s8(v49))) & 1) != 0 || v49 == 9 || v49 == 10 || v49 == 11)
      {
        break;
      }

      if (v12 == v35)
      {
        goto LABEL_166;
      }
    }

    v25 = byte_100542A0A[v49 - 1];
    v15 = *(v31 + 16);
    if (v15)
    {
      v19 = 0;
      v50 = 33;
      while (*(v31 + v19 + 32) != v49)
      {
        ++v19;
        ++v50;
        if (v15 == v19)
        {
          goto LABEL_47;
        }
      }

      v34 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_164;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_10030D5B4(v31);
      }

      v15 = *(v31 + 16);
      if (v34 != v15)
      {
        v73 = (v31 + 32);
        v74 = (v31 + v50);
        while (v34 < v15)
        {
          v75 = *v74;
          if (v75 != v49)
          {
            if (v34 != v19)
            {
              if (v19 >= v15)
              {
                goto LABEL_159;
              }

              v76 = v73[v19];
              v73[v19] = v75;
              *v74 = v76;
              v15 = *(v31 + 16);
            }

            ++v19;
          }

          ++v34;
          ++v74;
          if (v34 == v15)
          {
            goto LABEL_53;
          }
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
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        v35 = _CocoaArrayWrapper.endIndex.getter();
        v36 = &unk_1006C3000;
        if (!v35)
        {
          goto LABEL_166;
        }

        continue;
      }

      v15 = (v19 + 1);
LABEL_53:
      if (v15 < v19)
      {
        goto LABEL_162;
      }

      if (v19 < 0)
      {
        goto LABEL_163;
      }
    }

    else
    {
LABEL_47:
      v19 = *(v31 + 16);
    }

    break;
  }

  v34 = v19;
  if (__OFADD__(v15, v19 - v15))
  {
    goto LABEL_160;
  }

  v51 = swift_isUniquelyReferenced_nonNull_native();
  v254 = v31;
  if (!v51 || v19 > *(v31 + 24) >> 1)
  {
    if (v15 <= v19)
    {
      v52 = v19;
    }

    else
    {
      v52 = v15;
    }

    v31 = sub_1001CB534(v51, v52, 1, v31);
    v254 = v31;
  }

  sub_10030DB74(v19, v15, 0);
  v53 = sub_1001CB534(0, 1, 1, _swiftEmptyArrayStorage);
  v55 = *(v53 + 2);
  v54 = *(v53 + 3);
  if (v55 >= v54 >> 1)
  {
    v53 = sub_1001CB534((v54 > 1), v55 + 1, 1, v53);
  }

  *(v53 + 2) = v55 + 1;
  v53[v55 + 32] = v49;
  v253 = v53;
  v56 = sub_1003055F4(v251, *(v4 + v241), v49);

  sub_1002DC150(v57);
  v58 = sub_100305558();
  v59 = v240;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v60 = v247;
  v61 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  (*v239)(v59, v60);
  if (!*(v56 + 2))
  {

    v15 = v244;
    v44 = v251;
LABEL_74:
    v62 = *(v4 + v242);
    if (v62 == 35)
    {
      goto LABEL_105;
    }

    goto LABEL_75;
  }

  v62 = v56[32];

  v63 = &byte_10064CB00;
  v64 = 12;
  v15 = v244;
  v44 = v251;
  do
  {
    if (!v64)
    {
      goto LABEL_72;
    }

    v65 = *v63++;
    --v64;
  }

  while (v65 != v62);
  if (*(v4 + v242) != 35)
  {
LABEL_72:

    goto LABEL_74;
  }

  v66 = *(v61 + 16);
  v67 = (v61 + 32);
  while (v66)
  {
    v68 = *v67++;
    --v66;
    if (v68 == v62)
    {
      goto LABEL_72;
    }
  }

  *(v4 + v242) = v62;
  if (v62 == 35)
  {
    goto LABEL_105;
  }

LABEL_75:
  v69 = sub_1003059A4(v62);
  if (v69 == 35)
  {
    goto LABEL_105;
  }

  v70 = v253;
  v71 = *(v253 + 2);
  if (!v71)
  {
    goto LABEL_105;
  }

  v72 = 0;
  while (v253[v72 + 32] != v62)
  {
    if (v71 == ++v72)
    {
      goto LABEL_105;
    }
  }

  if (*(v4 + v241) == 1)
  {
    v78 = &byte_10064CB30;
    v79 = 13;
    while (v79)
    {
      v80 = *v78++;
      --v79;
      if (v80 == v62)
      {
        goto LABEL_105;
      }
    }
  }

  v81 = v72 + 1;
  if (__OFADD__(v72, 1))
  {
    goto LABEL_313;
  }

  if (v71 >= v81)
  {
    if (v81 < 0)
    {
      goto LABEL_315;
    }

    v82 = v69;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    if (!v83 || v71 >= *(v70 + 3) >> 1)
    {
      v70 = sub_1001CB534(v83, v71 + 1, 1, v70);
      v253 = v70;
    }

    sub_10030D668(v81, v81, 1, v82);
    v253 = v70;
    v15 = v244;
    v44 = v251;
LABEL_105:
    objc_opt_self();
    v84 = swift_dynamicCastObjCClass();
    if (v84)
    {
      v85 = v84;
      v86 = v44;
      v19 = &qword_10064CB60;
      if ([v85 mode])
      {

        goto LABEL_124;
      }

      v87 = v253;
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v233 = v86;
      if ((v88 & 1) == 0)
      {
        v87 = sub_1001CB534(0, *(v87 + 2) + 1, 1, v87);
      }

      v90 = *(v87 + 2);
      v89 = *(v87 + 3);
      if (v90 >= v89 >> 1)
      {
        v87 = sub_1001CB534((v89 > 1), v90 + 1, 1, v87);
      }

      *(v87 + 2) = v90 + 1;
      v87[v90 + 32] = 12;
      v253 = v87;
      v91 = *(v4 + v224);
      v92 = [v91 indexPathsForVisibleItems];
      v93 = v232;
      v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v94 + 16))
      {
        v95 = v226;
        v96 = v223;
        (*(v226 + 16))(v223, v94 + ((*(v95 + 80) + 32) & ~*(v95 + 80)), v93);

        v97 = v96;
        v98 = v229;
        (*(v95 + 32))(v229, v97, v93);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v100 = [v91 cellForItemAtIndexPath:isa];

        if (v100)
        {
          v101 = v100;
          [v101 frame];
          v103 = v102;
          [v101 directionalLayoutMargins];
          v105 = v103 - (v104 + -16.0);
          [v101 directionalLayoutMargins];
          v107 = v106;

          v108 = objc_allocWithZone(type metadata accessor for TagCollectionView());
          v207 = v207 & 0xFFFF000000000000 | 0x10101000100;
          v109 = sub_1003ADAD4(v207, 3, 0);
          sub_1003AADCC(v105 - (v107 + -16.0));
          if (v110)
          {
            v245 = v31;
            v111 = v4;

            v113 = *(v87 + 2);
            v112 = *(v87 + 3);
            v44 = v251;
            if (v113 >= v112 >> 1)
            {
              v87 = sub_1001CB534((v112 > 1), v113 + 1, 1, v87);
            }

            (*v210)(v98, v232);
            *(v87 + 2) = v113 + 1;
            v87[v113 + 32] = 13;
            v253 = v87;
            v4 = v111;
            v31 = v245;
            v15 = v244;
            v29 = &selRef_handleToggleBlockQuote_;
            goto LABEL_118;
          }

          (*v210)(v98, v232);
        }

        else
        {
          (*v210)(v98, v93);
        }

        v15 = v244;
        v29 = &selRef_handleToggleBlockQuote_;
      }

      else
      {

        v15 = v244;
      }

      v19 = &qword_10064CB60;
      v44 = v251;
    }

    else
    {
LABEL_118:
      v19 = &qword_10064CB60;
    }

LABEL_124:
    v114 = *(v4 + v248);
    v115 = *(v114 + 2);
    v116 = (v114 + 32);
    while (v115)
    {
      v117 = *v116++;
      --v115;
      if (v117 == v25)
      {
        goto LABEL_133;
      }
    }

    v118 = v248;
    swift_beginAccess();
    v119 = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v118) = v114;
    if ((v119 & 1) == 0)
    {
      v114 = sub_1001CB548(0, *(v114 + 2) + 1, 1, v114);
      *(v4 + v248) = v114;
    }

    v121 = *(v114 + 2);
    v120 = *(v114 + 3);
    if (v121 >= v120 >> 1)
    {
      v114 = sub_1001CB548((v120 > 1), v121 + 1, 1, v114);
    }

    *(v114 + 2) = v121 + 1;
    v114[v121 + 32] = v25;
    *(v4 + v248) = v114;
    swift_endAccess();
    v19 = &qword_10064CB60;
LABEL_133:
    v122 = v253;
    v123 = v250;
    v124 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v123;
    sub_1002E6AD8(v122, v25, v124);
    v250 = aBlock[0];
    objc_opt_self();
    v125 = swift_dynamicCastObjCClass();
    v34 = v246;
    v35 = v243;
    if (v125)
    {
      v25 = v125;
      v126 = [v125 selectionType];
      if ((v126 - 8) < 3)
      {
        v38 = [v25 primaryDate];
        if (v38)
        {
          v39 = v231;
          v40 = v38;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = *v228;
          v42 = v234;
          (*v228)(v234, v39, v15);
          (*v236)(v42, 0, 1, v15);
          v43 = v227;
          v41(v227, v42, v15);
          v44 = v251;
        }

        else
        {
          v77 = v234;
          (*v236)(v234, 1, 1, v15);
          v43 = v227;
          static Date.now.getter();
          if ((*v225)(v77, 1, v15) != 1)
          {
            sub_1000073B4(v234, &unk_1006C1710, &qword_10053BA80);
          }
        }

        v45 = Date._bridgeToObjectiveC()().super.isa;
        (*v235)(v43, v15);
        [v25 setPrimaryDate:v45];

        v34 = v246;
        v35 = v243;
        v19 = &qword_10064CB60;
      }

      else if (v126 == 6)
      {
        v130 = [v25 primaryDate];
        if (v130)
        {
          v131 = v231;
          v132 = v130;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v133 = *v228;
          v134 = v213;
          (*v228)(v213, v131, v15);
          v135 = *v236;
          (*v236)(v134, 0, 1, v15);
          v133(v230, v134, v15);
        }

        else
        {
          v135 = *v236;
          v136 = v213;
          (*v236)(v213, 1, 1, v15);
          static Date.now.getter();
          if ((*v225)(v136, 1, v15) != 1)
          {
            sub_1000073B4(v136, &unk_1006C1710, &qword_10053BA80);
          }

          v15 = v244;
        }

        v137 = Date._bridgeToObjectiveC()().super.isa;
        v138 = *v235;
        (*v235)(v230, v15);
        [v25 setPrimaryDate:v137];

        v139 = [v25 secondaryDate];
        v245 = v138;
        if (v139)
        {
          v140 = v231;
          v141 = v139;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v233 = *v228;
          v142 = v208;
          (v233)(v208, v140, v15);
          v135(v142, 0, 1, v15);
          v143 = v209;
          (v233)(v209, v142, v15);
          v135(v143, 0, 1, v15);
          v29 = &selRef_handleToggleBlockQuote_;
          v19 = &qword_10064CB60;
          v144 = (*v225)(v143, 1, v15);
        }

        else
        {
          v145 = 1;
          v146 = v15;
          v147 = v135;
          v135(v208, 1, 1, v146);
          v148 = [v25 primaryDate];
          v149 = v206;
          if (v148)
          {
            v150 = v148;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v145 = 0;
          }

          v19 = &qword_10064CB60;
          v151 = v244;
          v147(v149, v145, 1, v244);
          sub_100299FA4(v149, v209);
          v152 = *v225;
          v153 = v208;
          if ((*v225)(v208, 1, v151) != 1)
          {
            sub_1000073B4(v153, &unk_1006C1710, &qword_10053BA80);
          }

          v143 = v209;
          v15 = v244;
          v144 = v152(v209, 1, v244);
        }

        if (v144 == 1)
        {
          v154 = 0;
        }

        else
        {
          v154 = Date._bridgeToObjectiveC()().super.isa;
          v245(v143, v15);
        }

        v35 = v243;
        v44 = v251;
        [v25 setSecondaryDate:v154];

        v34 = v246;
      }

      else if (v126 == 7)
      {
        v127 = [v25 relativeRangeAmount];
        if (!v127)
        {
          sub_1000054A4(0, &qword_1006C3F30, NSNumber_ptr);
          v128.super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
          v35 = v243;
          v127 = v128.super.super.isa;
        }

        [v25 setRelativeRangeAmount:v127];

        v129 = [v25 relativeRangeSelectionType];
        v34 = v246;
        if (!v129)
        {
          [v25 setRelativeRangeSelectionType:1];
        }
      }
    }

    goto LABEL_7;
  }

LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
}

id sub_100305558()
{
  v1 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource____lazy_storage___diffableDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource____lazy_storage___diffableDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource____lazy_storage___diffableDataSource);
  }

  else
  {
    v4 = sub_100305AC8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_1003055B8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10030DCD8(*a1);
  *a2 = result;
  return result;
}

char *sub_1003055F4(void *a1, char a2, unsigned __int8 a3)
{
  v5 = a3;
  v6 = &byte_10064C898;
  v7 = 11;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    if (!v7)
    {
      return v8;
    }

    v9 = *v6++;
    --v7;
  }

  while (v9 != a3);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = a1;
    v13 = [v11 selectionType];
    v14 = _swiftEmptyArrayStorage;
    v15 = &off_10064C970;
    if (v5 != 5)
    {
      v15 = _swiftEmptyArrayStorage;
    }

    if (v5 == 4)
    {
      v15 = &off_10064C948;
    }

    v16 = &off_10064C9C0;
    if (v5 != 5)
    {
      v16 = _swiftEmptyArrayStorage;
    }

    if (v5 == 4)
    {
      v16 = &off_10064C998;
    }

    if (v5 == 5)
    {
      v17 = &off_10064CA10;
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
    }

    if (v5 == 4)
    {
      v17 = &off_10064C9E8;
    }

    if (v13 != 10)
    {
      v17 = _swiftEmptyArrayStorage;
    }

    if (v13 != 9)
    {
      v16 = v17;
    }

    if (v13 != 8)
    {
      v15 = v16;
    }

    v18 = &off_10064C8D0;
    if (v5 != 5)
    {
      v18 = _swiftEmptyArrayStorage;
    }

    if (v5 == 4)
    {
      v18 = &off_10064C8A8;
    }

    v19 = &off_10064C920;
    if (v5 != 5)
    {
      v19 = _swiftEmptyArrayStorage;
    }

    if (v5 == 4)
    {
      v19 = &off_10064C8F8;
    }

    if (v13 == 7)
    {
      v14 = v19;
    }

    if (v13 == 6)
    {
      v14 = v18;
    }

    if (v13 <= 7)
    {
      v20 = v14;
    }

    else
    {
      v20 = v15;
    }

    v21 = v20[2];
    if (!v21)
    {

      return _swiftEmptyArrayStorage;
    }

    v37 = v12;
    v8 = _swiftEmptyArrayStorage;
    for (i = 32; ; ++i)
    {
      v23 = *(v20 + i);
      if ((a2 & 1) == 0)
      {
        goto LABEL_49;
      }

      v24 = vceq_s8(0x1713121115140F0ELL, vdup_n_s8(v23));
      if ((vmaxv_u8(v24) & 1) == 0)
      {
        v24.i32[0] = 555751704;
        if ((vaddv_s16(vand_s8(vceq_s16((vmovl_u8(v24).u64[0] & 0xFF00FF00FF00FFLL), (*&vdup_n_s16(v23) & 0xFF00FF00FF00FFLL)), 0x8000400020001)) & 0xF) == 0 && v23 != 34)
        {
          goto LABEL_49;
        }
      }

      if (v23 - 8 <= 0x11 && ((0x3FFC1u >> (v23 - 8)) & 1) != 0)
      {
        break;
      }

LABEL_42:
      if (!--v21)
      {

        return v8;
      }
    }

    LOBYTE(v23) = byte_100542A15[(v23 - 8)];
LABEL_49:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1001CB534(0, *(v8 + 2) + 1, 1, v8);
    }

    v27 = *(v8 + 2);
    v26 = *(v8 + 3);
    if (v27 >= v26 >> 1)
    {
      v8 = sub_1001CB534((v26 > 1), v27 + 1, 1, v8);
    }

    *(v8 + 2) = v27 + 1;
    v8[v27 + 32] = v23;
    goto LABEL_42;
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v30 = a1;
    v31 = [v29 selectionType];

    v32 = &off_10064CA68;
    goto LABEL_62;
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = v33;
    v35 = a1;
    v31 = [v34 selectionType];

    v32 = &off_10064CA90;
LABEL_62:
    if (v31 == 2)
    {
      return v32;
    }

    return v8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return &off_10064CAB8;
  }

  return v8;
}

uint64_t sub_1003059A4(char a1)
{
  if ((a1 - 8) > 0x11u)
  {
    return 35;
  }

  else
  {
    return byte_100542A27[(a1 - 8)];
  }
}

uint64_t sub_1003059D0(unsigned __int8 a1)
{
  v1 = a1 - 1;
  result = 0;
  switch(v1)
  {
    case 0:
      result = 8;
      break;
    case 1:
      result = 9;
      break;
    case 2:
      result = 10;
      break;
    case 3:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 25:
    case 26:
    case 29:
      result = 1;
      break;
    case 4:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 27:
    case 28:
    case 30:
      result = 2;
      break;
    case 5:
    case 31:
      result = 3;
      break;
    case 6:
    case 32:
      result = 4;
      break;
    case 7:
      return result;
    case 8:
      result = 5;
      break;
    case 9:
      result = 6;
      break;
    case 10:
    case 33:
      result = 7;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_100305A8C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10030DCE8(*a1);
  *a2 = result;
  return result;
}

id sub_100305AC8()
{
  ObjectType = swift_getObjectType();
  v168 = sub_10015DA04(&qword_1006C3F38, &qword_100547550);
  v166 = *(v168 - 8);
  v167 = *(v166 + 64);
  v1 = __chkstk_darwin(v168);
  v165 = &v144 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v164 = &v144 - v3;
  v197 = sub_10015DA04(&qword_1006C3F40, &qword_1005428D0);
  v218 = *(v197 - 8);
  v163 = *(v218 + 64);
  v4 = __chkstk_darwin(v197);
  v196 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v213 = &v144 - v6;
  v226 = sub_10015DA04(&qword_1006C3F48, &qword_1005428D8);
  v217 = *(v226 - 8);
  v162 = *(v217 + 64);
  v7 = __chkstk_darwin(v226);
  v195 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v212 = &v144 - v9;
  v230 = sub_10015DA04(&qword_1006C3F50, &qword_1005428E0);
  v216 = *(v230 - 8);
  v161 = *(v216 + 64);
  v10 = __chkstk_darwin(v230);
  v194 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v177 = &v144 - v12;
  v229 = sub_10015DA04(&qword_1006C3F58, &qword_1005428E8);
  v215 = *(v229 - 8);
  v159 = *(v215 + 64);
  v13 = __chkstk_darwin(v229);
  v193 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v202 = &v144 - v15;
  v228 = sub_10015DA04(&qword_1006C3F60, &qword_1005428F0);
  v214 = *(v228 - 8);
  v160 = *(v214 + 64);
  v16 = __chkstk_darwin(v228);
  v192 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v199 = &v144 - v18;
  v211 = sub_10015DA04(&qword_1006C3F68, &qword_1005428F8);
  v210 = *(v211 - 8);
  v158 = *(v210 + 64);
  v19 = __chkstk_darwin(v211);
  v191 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v173 = &v144 - v21;
  v209 = sub_10015DA04(&qword_1006C3F70, &qword_100542900);
  v208 = *(v209 - 8);
  v156 = *(v208 + 64);
  v22 = __chkstk_darwin(v209);
  v190 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v172 = &v144 - v24;
  v227 = sub_10015DA04(&qword_1006C3F78, &qword_100542908);
  v207 = *(v227 - 8);
  v155 = *(v207 + 64);
  v25 = __chkstk_darwin(v227);
  v189 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v200 = &v144 - v27;
  v206 = sub_10015DA04(&qword_1006C3F80, &qword_100542910);
  v205 = *(v206 - 8);
  v154 = *(v205 + 64);
  v28 = __chkstk_darwin(v206);
  v187 = &v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v204 = &v144 - v30;
  v203 = sub_10015DA04(&qword_1006C3F88, &qword_100542918);
  v201 = *(v203 - 8);
  v153 = *(v201 + 64);
  v31 = __chkstk_darwin(v203);
  v186 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v169 = &v144 - v33;
  v225 = sub_10015DA04(&qword_1006C3F90, &qword_100542920);
  v236 = *(v225 - 8);
  v152 = *(v236 + 64);
  v34 = __chkstk_darwin(v225);
  v183 = &v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v171 = &v144 - v36;
  v224 = sub_10015DA04(&qword_1006C3F98, &qword_100542928);
  v235 = *(v224 - 8);
  v151 = *(v235 + 64);
  v37 = __chkstk_darwin(v224);
  v182 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v170 = &v144 - v39;
  v223 = sub_10015DA04(&qword_1006C3FA0, &qword_100542930);
  v234 = *(v223 - 8);
  v150 = *(v234 + 64);
  v40 = __chkstk_darwin(v223);
  v180 = &v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v179 = &v144 - v42;
  v222 = sub_10015DA04(&qword_1006C3FA8, &qword_100542938);
  v233 = *(v222 - 8);
  v149 = *(v233 + 64);
  v43 = __chkstk_darwin(v222);
  v178 = &v144 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v181 = &v144 - v45;
  v221 = sub_10015DA04(&qword_1006C3FB0, &qword_100542940);
  v232 = *(v221 - 8);
  v148 = *(v232 + 64);
  v46 = __chkstk_darwin(v221);
  v176 = &v144 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v184 = &v144 - v48;
  v220 = sub_10015DA04(&qword_1006C3FB8, &qword_100542948);
  v231 = *(v220 - 8);
  v147 = *(v231 + 64);
  v49 = __chkstk_darwin(v220);
  v175 = &v144 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v185 = &v144 - v51;
  v219 = sub_10015DA04(&qword_1006C3FC0, &qword_100542950);
  v198 = *(v219 - 8);
  v145 = *(v198 + 64);
  v52 = __chkstk_darwin(v219);
  v174 = &v144 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v188 = &v144 - v54;
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for FolderComposerFilterJoinCell();
  v55 = v0;
  UICollectionView.CellRegistration.init(handler:)();
  v56 = swift_allocObject();
  *(v56 + 16) = v55;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_10030DDB8;
  *(v57 + 24) = v56;
  type metadata accessor for FolderComposerFilterCellPinnedNotes();
  v144 = v55;

  UICollectionView.CellRegistration.init(handler:)();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_10030DDB8;
  *(v58 + 24) = v56;
  type metadata accessor for FolderComposerFilterCellQuickNotes();

  UICollectionView.CellRegistration.init(handler:)();
  v59 = swift_allocObject();
  *(v59 + 16) = sub_10030DDB8;
  *(v59 + 24) = v56;
  type metadata accessor for FolderComposerFilterCellLockedNotes();

  UICollectionView.CellRegistration.init(handler:)();
  v60 = swift_allocObject();
  *(v60 + 16) = sub_10030DDB8;
  *(v60 + 24) = v56;
  type metadata accessor for FolderComposerFilterCellDateCreated();

  UICollectionView.CellRegistration.init(handler:)();
  v61 = swift_allocObject();
  *(v61 + 16) = sub_10030DDB8;
  *(v61 + 24) = v56;
  type metadata accessor for FolderComposerFilterCellDateEdited();

  v62 = v170;
  UICollectionView.CellRegistration.init(handler:)();
  v63 = swift_allocObject();
  *(v63 + 16) = sub_10030DDB8;
  *(v63 + 24) = v56;
  type metadata accessor for FolderComposerFilterCellTags();

  v64 = v171;
  UICollectionView.CellRegistration.init(handler:)();
  v65 = swift_allocObject();
  *(v65 + 16) = sub_10030DDB8;
  *(v65 + 24) = v56;
  type metadata accessor for FolderComposerFilterCellChecklists();

  v66 = v169;
  UICollectionView.CellRegistration.init(handler:)();
  v67 = swift_allocObject();
  *(v67 + 16) = sub_10030DDB8;
  *(v67 + 24) = v56;
  type metadata accessor for FolderComposerFilterCellAttachments();

  UICollectionView.CellRegistration.init(handler:)();
  v68 = swift_allocObject();
  *(v68 + 16) = sub_10030DDB8;
  *(v68 + 24) = v56;
  type metadata accessor for FolderComposerFilterCellFolders();

  UICollectionView.CellRegistration.init(handler:)();
  v69 = swift_allocObject();
  *(v69 + 16) = sub_10030DDB8;
  *(v69 + 24) = v56;
  type metadata accessor for FolderComposerFilterCellShared();
  v146 = v56;

  v70 = v172;
  UICollectionView.CellRegistration.init(handler:)();
  v71 = swift_allocObject();
  *(v71 + 16) = sub_10030DDB8;
  *(v71 + 24) = v56;
  type metadata accessor for FolderComposerFilterCellMentions();

  v72 = v173;
  UICollectionView.CellRegistration.init(handler:)();
  v73 = swift_allocObject();
  v74 = v144;
  *(v73 + 16) = v144;
  type metadata accessor for FolderComposerFilterCellEntry();
  v75 = v74;
  UICollectionView.CellRegistration.init(handler:)();
  *(swift_allocObject() + 16) = v75;
  type metadata accessor for FolderComposerFilterCellDatePicker(0);
  v76 = v75;
  UICollectionView.CellRegistration.init(handler:)();
  *(swift_allocObject() + 16) = v76;
  type metadata accessor for FolderComposerFilterCellDateRangePicker();
  v77 = v76;
  v78 = v177;
  UICollectionView.CellRegistration.init(handler:)();
  v79 = swift_allocObject();
  v80 = ObjectType;
  *(v79 + 16) = v77;
  *(v79 + 24) = v80;
  type metadata accessor for TagContainerCell();
  v81 = v77;
  UICollectionView.CellRegistration.init(handler:)();
  *(swift_allocObject() + 16) = v81;
  type metadata accessor for FolderComposerFilterCellTagsExpandCollapse();
  v82 = v81;
  ObjectType = v82;
  UICollectionView.CellRegistration.init(handler:)();
  v144 = *&v82[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource_collectionView];
  (*(v198 + 16))(v174, v188, v219);
  (*(v232 + 16))(v176, v184, v221);
  (*(v231 + 16))(v175, v185, v220);
  (*(v233 + 16))(v178, v181, v222);
  (*(v234 + 16))(v180, v179, v223);
  (*(v236 + 16))(v183, v64, v225);
  (*(v235 + 16))(v182, v62, v224);
  v83 = v208;
  (*(v208 + 16))(v190, v70, v209);
  v84 = v210;
  (*(v210 + 16))(v191, v72, v211);
  v85 = v201;
  (*(v201 + 16))(v186, v66, v203);
  v86 = v205;
  (*(v205 + 16))(v187, v204, v206);
  v87 = v207;
  (*(v207 + 16))(v189, v200, v227);
  v88 = v215;
  (*(v215 + 16))(v193, v202, v229);
  v89 = v216;
  (*(v216 + 16))(v194, v78, v230);
  v90 = v217;
  (*(v217 + 16))(v195, v212, v226);
  v91 = v218;
  (*(v218 + 16))(v196, v213, v197);
  v92 = v214;
  (*(v214 + 16))(v192, v199, v228);
  v93 = *(v232 + 80);
  v94 = *(v231 + 80);
  v148 += v94;
  v95 = *(v233 + 80);
  v96 = v147 + v95;
  v97 = *(v234 + 80);
  v149 += v97;
  v98 = *(v236 + 80);
  v150 += v98;
  v99 = *(v235 + 80);
  v152 += v99;
  v100 = *(v83 + 80);
  v151 += v100;
  v101 = *(v84 + 80);
  v156 += v101;
  v102 = *(v85 + 80);
  v158 += v102;
  v103 = *(v86 + 80);
  v147 = v153 + v103;
  v104 = *(v87 + 80);
  v105 = v154 + v104;
  v106 = *(v88 + 80);
  v107 = v155 + v106;
  v108 = *(v89 + 80);
  v109 = v159 + v108;
  v110 = v198;
  v111 = (*(v198 + 80) + 16) & ~*(v198 + 80);
  v112 = (v145 + v93 + v111) & ~v93;
  v113 = *(v90 + 80);
  v114 = v161 + v113;
  v115 = (v148 + v112) & ~v94;
  v116 = (v96 + v115) & ~v95;
  v117 = *(v91 + 80);
  v118 = v162 + v117;
  v119 = *(v92 + 80);
  v120 = v163 + v119;
  v121 = (v149 + v116) & ~v97;
  v122 = (v150 + v121) & ~v98;
  v123 = (v152 + v122) & ~v99;
  v153 = (v151 + v123) & ~v100;
  v154 = (v156 + v153) & ~v101;
  v155 = (v158 + v154) & ~v102;
  v156 = (v147 + v155) & ~v103;
  v158 = (v105 + v156) & ~v104;
  v159 = (v107 + v158) & ~v106;
  v161 = (v109 + v159) & ~v108;
  v162 = (v114 + v161) & ~v113;
  v163 = (v118 + v162) & ~v117;
  v124 = (v120 + v163) & ~v119;
  v125 = swift_allocObject();
  (*(v110 + 32))(v125 + v111, v174, v219);
  (*(v232 + 32))(v125 + v112, v176, v221);
  (*(v231 + 32))(v125 + v115, v175, v220);
  (*(v233 + 32))(v125 + v116, v178, v222);
  (*(v234 + 32))(v125 + v121, v180, v223);
  (*(v236 + 32))(v125 + v122, v183, v225);
  (*(v235 + 32))(v125 + v123, v182, v224);
  (*(v208 + 32))(v125 + v153, v190, v209);
  (*(v210 + 32))(v125 + v154, v191, v211);
  (*(v201 + 32))(v125 + v155, v186, v203);
  (*(v205 + 32))(v125 + v156, v187, v206);
  (*(v207 + 32))(v125 + v158, v189, v227);
  (*(v215 + 32))(v125 + v159, v193, v229);
  (*(v216 + 32))(v125 + v161, v194, v230);
  (*(v217 + 32))(v125 + v162, v195, v226);
  v126 = v197;
  (*(v218 + 32))(v125 + v163, v196, v197);
  (*(v214 + 32))(v125 + v124, v192, v228);
  v127 = objc_allocWithZone(sub_10015DA04(&qword_1006C3FC8, qword_100542958));
  v128 = v144;
  v129 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v130 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource____lazy_storage___diffableDataSource;
  v131 = ObjectType;
  v132 = *(ObjectType + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource____lazy_storage___diffableDataSource);
  *(ObjectType + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterDataSource____lazy_storage___diffableDataSource) = v129;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v131;
  type metadata accessor for FolderComposerFilterHeader();
  v133 = v131;
  v134 = v164;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v135 = sub_100305558();
  v136 = v166;
  v137 = v165;
  v138 = v168;
  (*(v166 + 16))(v165, v134, v168);
  v139 = (*(v136 + 80) + 16) & ~*(v136 + 80);
  v140 = swift_allocObject();
  (*(v136 + 32))(v140 + v139, v137, v138);
  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  v141 = *(v136 + 8);
  v142 = *&v131[v130];
  v141(v134, v138);
  (*(v218 + 8))(v213, v126);
  (*(v217 + 8))(v212, v226);
  (*(v216 + 8))(v177, v230);
  (*(v215 + 8))(v202, v229);
  (*(v214 + 8))(v199, v228);
  (*(v210 + 8))(v173, v211);
  (*(v208 + 8))(v172, v209);
  (*(v207 + 8))(v200, v227);
  (*(v205 + 8))(v204, v206);
  (*(v201 + 8))(v169, v203);
  (*(v236 + 8))(v171, v225);
  (*(v235 + 8))(v170, v224);
  (*(v234 + 8))(v179, v223);
  (*(v233 + 8))(v181, v222);
  (*(v232 + 8))(v184, v221);
  (*(v231 + 8))(v185, v220);
  (*(v198 + 8))(v188, v219);
  return v142;
}