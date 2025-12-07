void sub_100A29E08(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = sub_1012778D4(ObjectType, v5);

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (a1)
  {
    type metadata accessor for CRLBoardItem(0);
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectWeakAssign();
LABEL_7:

      swift_unknownObjectRelease();
      return;
    }

    v7 = objc_opt_self();
    swift_unknownObjectRetain();
    v30 = v7;
    v8 = [v7 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("parentInfo", 10, 2);
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v17;
    v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 841;
    v20 = v31;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter("parentInfo", 10, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v29 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v27 file:v28 lineNumber:841 isFatal:0 format:v29 args:v26];
    swift_unknownObjectRelease_n();
  }

  else
  {

    swift_unknownObjectWeakAssign();
  }
}

void sub_100A2A488()
{
  v1 = type metadata accessor for CharacterSet();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v34 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v33 = v0;
  v15 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v15)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  (*(*v15 + 896))(v11);
  v30 = v7;
  sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
  v29 = *(v4 + 16);
  v29(v6, v13, v3);
  sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
  v16 = CRAttributedString.attributedString.getter();
  v17 = *(v4 + 8);
  v17(v6, v3);
  v18 = [v16 length];

  if (v18 >= 1)
  {
    v19 = v34;
    v20 = static CharacterSet.whitespacesAndNewlines.getter();
    v21 = *(v33 + v14);
    if (v21)
    {
      (*(*v21 + 896))(v20);
      sub_100A49D68(&v9[*(v30 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
      v29(v6, v13, v3);
      sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
      v22 = CRAttributedString.attributedString.getter();
      v17(v6, v3);
      v23 = [v22 string];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      __chkstk_darwin(v27);
      *(&v28 - 2) = v19;
      sub_10097EFE8(sub_100A49F4C, (&v28 - 4), v24, v26);

      (*(v31 + 8))(v19, v32);
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_100A2A960()
{
  v1 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  *&v257 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v232 - v2;
  v4 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v4 - 8);
  v253 = &v232 - v5;
  *&v255 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v237 = *(v255 - 8);
  __chkstk_darwin(v255);
  v254 = (&v232 - v6);
  v7 = sub_1005B981C(qword_101A0CF60, "87&");
  *&v258 = *(v7 - 8);
  __chkstk_darwin(v7);
  v235 = &v232 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v232 - v10;
  v250 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v250);
  v13 = &v232 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v234);
  v249 = &v232 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v15 = *(v243 - 8);
  __chkstk_darwin(v243);
  v246 = &v232 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v242 = &v232 - v19;
  v262 = _swiftEmptyArrayStorage;
  if ((v0[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns] & 1) == 0)
  {
    sub_100A2CB04();
  }

  v245 = v7;
  v20 = *&v0[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns];
  v261 = _swiftEmptyArrayStorage;
  v21 = v0;
  v247 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v22 = *&v0[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v22)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  (*(*v22 + 896))(v18);
  v22 = v249;
  sub_100A49D68(&v13[*(v250 + 20)], v249, type metadata accessor for CRLWPStorageCRDTData);
  v256 = v20;

  sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
  v23 = v15;
  v24 = *(v15 + 16);
  *&v244 = v15 + 16;
  v241 = v24;
  v24(v242, v22, v243);
  sub_100A47694(v22, type metadata accessor for CRLWPStorageCRDTData);
  v25 = [v21 characterCount];
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_187:
    __break(1u);
LABEL_188:

LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v240 = v13;
  v22 = *&v247[v21];
  if (!v22)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v26 = v25;
  v27 = v21;
  v28 = v240;
  (*(*v22 + 896))();
  v29 = v249;
  sub_100A49D68(v28 + *(v250 + 20), v249, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v28, type metadata accessor for CRLWPShapeItemCRDTData);
  v30 = v246;
  v31 = v243;
  v241(v246, v29, v243);
  sub_100A47694(v29, type metadata accessor for CRLWPStorageCRDTData);
  v32 = CRAttributedString.count.getter();
  v238 = *(v23 + 8);
  v239 = v23 + 8;
  v238(v30, v31);
  v33 = v32 & (v32 >> 63);
  if (v32 >= v26)
  {
    v32 = v26;
  }

  KeyPath = swift_getKeyPath();
  v233 = v27;
  v35 = v27;
  sub_100A1F968(KeyPath, v35, v33, v32, &v261);

  v36 = CRAttributedString.attributedString.getter();
  v37 = [v36 string];

  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v37];

  v39 = v35;
  sub_100A24798(v39);
  sub_100A442F0();
  v40 = v258 + 8;
  v41 = *(v258 + 8);
  v41(v11, v245);
  type metadata accessor for Key(0);
  v43 = v42;
  v251 = sub_100A40278(&qword_1019F34A0, 255, type metadata accessor for Key, byte_101467F70);
  v252 = v43;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v45 = v38;
  v46 = [v45 length];
  v248 = v45;
  [v45 addAttributes:isa range:{0, v46}];

  v236 = v39;
  if ([v39 characterCount] >= 1)
  {
    v250 = v41;
    *&v258 = v40;
    CRAttributedString.runs.getter();
    v47 = v253;
    CRAttributedString.Runs.next()();
    v48 = *(v257 + 48);
    v249 = v257 + 48;
    v247 = v48;
    v49 = (v48)(v47, 1, v1);
    v50 = v245;
    if (v49 != 1)
    {
      v246 = *(v257 + 32);
      *&v257 = v257 + 32;
      v206 = (v257 - 24);
      v244 = xmmword_10146C6B0;
      (v246)(v3, v47, v1);
      while (1)
      {
        CRAttributedString.Runs.Run.attributes.getter();
        sub_100A442F0();
        v208 = v250;
        (v250)(v11, v50);
        v209.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v22 = v3;
        v210 = CRAttributedString.Runs.Run.range.getter();
        if (__OFSUB__(v211, v210))
        {
          goto LABEL_181;
        }

        [v248 addAttributes:v209.super.isa range:{v210, v211 - v210}];

        CRAttributedString.Runs.Run.attributes.getter();
        v212 = sub_100A44E98();
        v208(v11, v50);
        if (v212)
        {
          sub_1005B981C(&qword_101A0DA40, &unk_1014907F0);
          inited = swift_initStackObject();
          *(inited + 16) = v244;
          *(inited + 32) = CRAttributedString.Runs.Run.range.getter();
          *(inited + 40) = v214;
          *(inited + 48) = v212;
          v215 = inited;
          v50 = v245;
          sub_100799D28(v215);
        }

        (*v206)(v3, v1);
        v207 = v253;
        CRAttributedString.Runs.next()();
        if ((v247)(v207, 1, v1) == 1)
        {
          break;
        }

        (v246)(v3, v207, v1);
      }
    }

    (*(v237 + 8))(v254, v255);
    v51 = v256;
LABEL_17:
    v22 = &v262;
    sub_100A27A0C();
    v250 = *(v51 + 16);
    if (v250)
    {
      v61 = 0;
      v247 = (v51 + 32);
      v62 = _swiftEmptyDictionarySingleton;
      v253 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v61 >= *(v51 + 16))
        {
          goto LABEL_177;
        }

        v254 = v61;
        v64 = &v247[56 * v61];
        v65 = *(v64 + 1);
        *&v258 = *v64;
        v251 = v65;
        v66 = *(v64 + 3);
        *&v257 = *(v64 + 2);
        v67 = *(v64 + 4);
        v68 = *(v64 + 5);
        v69 = v64[48];
        if (v66 && !v66[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType])
        {
          v94 = (v62 + 8);
          v95 = 1 << *(v62 + 32);
          if (v95 < 64)
          {
            v96 = ~(-1 << v95);
          }

          else
          {
            v96 = -1;
          }

          v22 = v96 & v62[8];
          v97 = (v95 + 63) >> 6;
          v252 = v66;
          v98 = v257;

          v99 = 0;
          if (!v22)
          {
            goto LABEL_53;
          }

          do
          {
LABEL_51:
            while (1)
            {
              v100 = __clz(__rbit64(v22));
              v22 &= v22 - 1;
              v101 = v62[7];
              v102 = (v99 << 9) | (8 * v100);
              v103 = *(*(v101 + v102) + 16);
              if (v103)
              {
                break;
              }

              if (!v22)
              {
                goto LABEL_53;
              }
            }

            v251 = *(v101 + v102);

            v105 = v253;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v245 = v98;
            v246 = v62;
            v249 = v94;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v105 = sub_100B36564(0, *(v105 + 2) + 1, 1, v105);
            }

            v107 = v251 + 5;
            do
            {
              LODWORD(v255) = *(v107 - 8);
              v108 = *v107;
              v257 = *(v107 + 1);
              v258 = v108;
              v109 = v107[4];
              v110 = v105;
              v111 = *(v105 + 2);
              v253 = v110;
              v112 = *(v110 + 3);

              if (v111 >= v112 >> 1)
              {
                v253 = sub_100B36564((v112 > 1), v111 + 1, 1, v253);
              }

              v113 = v253;
              *(v253 + 2) = v111 + 1;
              v114 = &v113[48 * v111];
              v105 = v113;
              v114[32] = v255;
              v115 = v258;
              *(v114 + 56) = v257;
              *(v114 + 40) = v115;
              *(v114 + 9) = v109;
              v107 += 6;
              --v103;
            }

            while (v103);

            v51 = v256;
            v98 = v245;
            v62 = v246;
            v94 = v249;
          }

          while (v22);
LABEL_53:
          while (1)
          {
            v104 = v99 + 1;
            if (__OFADD__(v99, 1))
            {
              break;
            }

            if (v104 >= v97)
            {

              v62 = _swiftEmptyDictionarySingleton;
              v89 = v254;
              goto LABEL_22;
            }

            v22 = *(v94 + 8 * v104);
            ++v99;
            if (v22)
            {
              v99 = v104;
              goto LABEL_51;
            }
          }

LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        if (v62[2] && (v22 = v62, v70 = sub_1007C7EC0(v67), (v71 & 1) != 0))
        {
          v72 = *(v62[7] + 8 * v70);

          v73 = *(v72 + 2);
          if (!v73)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v72 = _swiftEmptyArrayStorage;
          v73 = _swiftEmptyArrayStorage[2];
          if (!v73)
          {
LABEL_29:
            if (!v66)
            {
              goto LABEL_189;
            }

            v74 = v62;
            v75 = OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType;
            goto LABEL_38;
          }
        }

        v76 = &v72[48 * v73];
        v77 = *(v76 + 3);
        if (!v66)
        {
          goto LABEL_188;
        }

        v74 = v62;
        v75 = OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType;
        v78 = v66[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType];
        LODWORD(v255) = *(v76 - 16);
        if (v255 != v78)
        {

LABEL_38:
          LODWORD(v255) = v66[v75];
          v84 = v66;
          v85 = v257;
          goto LABEL_39;
        }

        v79 = *v76;
        v249 = *(v76 - 1);
        v252 = *(v76 + 2);
        v80 = *(v77 + 2);
        if (!v80)
        {

          v116 = v66;
          v117 = v257;
          *&v258 = v79;
          goto LABEL_67;
        }

        v245 = v79;
        v81 = *&v77[8 * v80 + 24];

        v82 = v66;
        v83 = v257;
        if (sub_100A453B4(v81, v254, v256))
        {
          *&v258 = v245;
LABEL_67:
          v89 = v254;
          v90 = v251;
          goto LABEL_68;
        }

        LODWORD(v255) = v82[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType];
LABEL_39:

        if (v69)
        {
          v86 = 1;
        }

        else
        {
          v86 = v68;
        }

        v252 = v86;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_100B36564(0, *(v72 + 2) + 1, 1, v72);
        }

        v88 = *(v72 + 2);
        v87 = *(v72 + 3);
        v77 = _swiftEmptyArrayStorage;
        v89 = v254;
        v90 = v251;
        if (v88 >= v87 >> 1)
        {
          v72 = sub_100B36564((v87 > 1), v88 + 1, 1, v72);
        }

        *(v72 + 2) = v88 + 1;
        v91 = &v72[48 * v88];
        v91[32] = v255;
        v92 = v258;
        *(v91 + 5) = v67;
        *(v91 + 6) = v92;
        v93 = v252;
        *(v91 + 7) = v90;
        *(v91 + 8) = v93;
        *(v91 + 9) = _swiftEmptyArrayStorage;
        v249 = v67;
LABEL_68:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_100B36684(0, *(v77 + 2) + 1, 1, v77);
        }

        v119 = *(v77 + 2);
        v118 = *(v77 + 3);
        v22 = v119 + 1;
        if (v119 >= v118 >> 1)
        {
          v77 = sub_100B36684((v118 > 1), v119 + 1, 1, v77);
        }

        *(v77 + 2) = v22;
        *&v77[8 * v119 + 32] = v89;
        if (v90 < v258)
        {
          goto LABEL_178;
        }

        if (v72)
        {
          if (!*(v72 + 2))
          {
            goto LABEL_182;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v120 = *(v72 + 2);
            if (!v120)
            {
              goto LABEL_183;
            }
          }

          else
          {
            v72 = sub_10113CE08(v72);
            v120 = *(v72 + 2);
            if (!v120)
            {
              goto LABEL_183;
            }
          }

          *(v72 + 2) = v120 - 1;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_100B36564(0, *(v72 + 2) + 1, 1, v72);
          }

          v122 = *(v72 + 2);
          v121 = *(v72 + 3);
          if (v122 >= v121 >> 1)
          {
            v72 = sub_100B36564((v121 > 1), v122 + 1, 1, v72);
          }

          *(v72 + 2) = v122 + 1;
          v123 = &v72[48 * v122];
          v123[32] = v255;
          v124 = v258;
          *(v123 + 5) = v249;
          *(v123 + 6) = v124;
          v125 = v252;
          *(v123 + 7) = v90;
          *(v123 + 8) = v125;
          *(v123 + 9) = v77;

          v126 = swift_isUniquelyReferenced_nonNull_native();
          v260 = v74;
          v22 = v74;
          v127 = sub_1007C7EC0(v67);
          v129 = v74[2];
          v130 = (v128 & 1) == 0;
          v131 = __OFADD__(v129, v130);
          v132 = v129 + v130;
          if (v131)
          {
            goto LABEL_184;
          }

          v133 = v128;
          if (v74[3] >= v132)
          {
            if (v126)
            {
              goto LABEL_90;
            }

            v22 = &v260;
            v140 = v127;
            sub_100AA48F4();
            v127 = v140;
            v137 = v260;
            if (v133)
            {
              goto LABEL_19;
            }

LABEL_91:
            v137[(v127 >> 6) + 8] |= 1 << v127;
            *(v137[6] + 8 * v127) = v67;
            *(v137[7] + 8 * v127) = v72;
            v138 = v137[2];
            v131 = __OFADD__(v138, 1);
            v139 = v138 + 1;
            if (v131)
            {
              goto LABEL_186;
            }

            v62 = v137;
            v137[2] = v139;
          }

          else
          {
            sub_100A8A1CC(v132, v126);
            v22 = v260;
            v127 = sub_1007C7EC0(v67);
            if ((v133 & 1) != (v134 & 1))
            {
              goto LABEL_194;
            }

LABEL_90:
            v137 = v260;
            if ((v133 & 1) == 0)
            {
              goto LABEL_91;
            }

LABEL_19:
            v62 = v137;
            v63 = v137[7];
            v22 = *(v63 + 8 * v127);
            *(v63 + 8 * v127) = v72;
          }

          goto LABEL_21;
        }

        v22 = v74;
        sub_1007C7EC0(v67);
        if (v135)
        {
          v136 = swift_isUniquelyReferenced_nonNull_native();
          v260 = v74;
          if ((v136 & 1) == 0)
          {
            v22 = &v260;
            sub_100AA48F4();
            v74 = v260;
          }

          v62 = v74;
          sub_100BDBBA0();
        }

        else
        {
          v62 = v74;
        }

LABEL_21:

        v51 = v256;
LABEL_22:
        v61 = v89 + 1;
        if (v61 == v250)
        {
          goto LABEL_101;
        }
      }
    }

    v62 = _swiftEmptyDictionarySingleton;
    v253 = _swiftEmptyArrayStorage;
LABEL_101:
    v141 = v62[2];
    v246 = v62;
    if (v141)
    {
      v22 = (v62 + 8);
      v142 = 1 << *(v62 + 32);
      v143 = -1;
      if (v142 < 64)
      {
        v143 = ~(-1 << v142);
      }

      v144 = v143 & v62[8];
      v145 = (v142 + 63) >> 6;

      v146 = 0;
      if (!v144)
      {
        goto LABEL_107;
      }

      do
      {
LABEL_105:
        while (1)
        {
          v147 = __clz(__rbit64(v144));
          v144 &= v144 - 1;
          v148 = *(*(v246 + 7) + ((v146 << 9) | (8 * v147)));
          v149 = *(v148 + 16);
          if (v149)
          {
            break;
          }

          if (!v144)
          {
            goto LABEL_107;
          }
        }

        v151 = v253;
        v152 = swift_isUniquelyReferenced_nonNull_native();
        v252 = v22;
        if ((v152 & 1) == 0)
        {
          v151 = sub_100B36564(0, *(v151 + 2) + 1, 1, v151);
        }

        v251 = v148;
        v153 = v148 + 40;
        do
        {
          LODWORD(v254) = *(v153 - 8);
          v154 = *v153;
          v255 = *(v153 + 16);
          v257 = v154;
          v155 = *(v153 + 32);
          v156 = v151;
          v157 = *(v151 + 2);
          v158 = *(v151 + 3);
          *&v258 = v157 + 1;

          if (v157 >= v158 >> 1)
          {
            v151 = sub_100B36564((v158 > 1), v258, 1, v156);
          }

          else
          {
            v151 = v156;
          }

          *(v151 + 2) = v258;
          v159 = &v151[48 * v157];
          v159[32] = v254;
          *(v159 + 56) = v255;
          *(v159 + 40) = v257;
          *(v159 + 9) = v155;
          v153 += 48;
          --v149;
        }

        while (v149);
        v253 = v151;

        v51 = v256;
        v22 = v252;
      }

      while (v144);
LABEL_107:
      while (1)
      {
        v150 = v146 + 1;
        if (__OFADD__(v146, 1))
        {
          break;
        }

        if (v150 >= v145)
        {

          goto LABEL_122;
        }

        v144 = *(v22 + 8 * v150);
        ++v146;
        if (v144)
        {
          v146 = v150;
          goto LABEL_105;
        }
      }

LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

LABEL_122:
    v160 = *(v51 + 16);
    *&v258 = _swiftEmptyArrayStorage;
    if (v160)
    {
      v260 = _swiftEmptyArrayStorage;
      v22 = &v260;
      specialized ContiguousArray.reserveCapacity(_:)();
      v161 = 0;
      v162 = (v51 + 56);
      v163 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
      v164 = &selRef_ignoreUrl_;
      v244 = xmmword_10146CA70;
      v245 = v160;
      while (v161 < *(v51 + 16))
      {
        v167 = *(v162 - 1);
        v166 = *v162;
        v168 = objc_allocWithZone(v163[426]);
        *&v257 = v166;
        v169 = v164[165];
        v170 = v167;
        v171 = [v168 v169];
        v22 = *&v170[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment];
        if (v22 >= 5)
        {
          goto LABEL_193;
        }

        v172 = v171;
        [v171 setAlignment:qword_101490B18[v22]];
        v173 = &v170[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection];
        if (v170[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection + 8])
        {
          v165 = -1;
        }

        else
        {
          v165 = *v173;
          if ((*v173 + 1) >= 3)
          {
            *&v255 = objc_opt_self();
            v174 = [v255 _atomicIncrementAssertCount];
            v259 = [objc_allocWithZone(NSString) v164[165]];
            sub_100604538(_swiftEmptyArrayStorage, &v259, "Unknown direction.", 18, 2u);
            StaticString.description.getter("asNSWritingDirection", 20, 2);
            v254 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingDirection.swift", 87, 2);
            v175 = String._bridgeToObjectiveC()();

            v176 = [v175 lastPathComponent];

            v249 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v247 = v177;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v251 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v178 = swift_initStackObject();
            *(v178 + 16) = v244;
            *(v178 + 56) = &type metadata for Int32;
            *(v178 + 64) = &protocol witness table for Int32;
            *(v178 + 32) = v174;
            v252 = (v178 + 32);
            v179 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
            *(v178 + 96) = v179;
            v180 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
            *(v178 + 104) = v180;
            v181 = v254;
            *(v178 + 72) = v254;
            *(v178 + 136) = &type metadata for String;
            v182 = sub_1000053B0();
            v183 = v247;
            *(v178 + 112) = v249;
            *(v178 + 120) = v183;
            *(v178 + 176) = &type metadata for UInt;
            *(v178 + 144) = v182;
            *(v178 + 152) = 39;
            v184 = v259;
            *(v178 + 216) = v179;
            *(v178 + 224) = v180;
            *(v178 + 184) = &protocol witness table for UInt;
            *(v178 + 192) = v184;
            v185 = v181;
            v186 = v184;
            v187 = static os_log_type_t.error.getter();
            v188 = v251;
            sub_100005404(v251, &_mh_execute_header, v187, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v178);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            v189 = static os_log_type_t.error.getter();
            sub_100005404(v188, &_mh_execute_header, v189, "Unknown direction.", 18, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v190 = swift_allocObject();
            v190[2] = 8;
            v190[3] = 0;
            v190[4] = 0;
            v190[5] = 0;
            v254 = __VaListBuilder.va_list()();
            StaticString.description.getter("asNSWritingDirection", 20, 2);
            v191 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingDirection.swift", 87, 2);
            v192 = String._bridgeToObjectiveC()();

            StaticString.description.getter("Unknown direction.", 18, 2);
            v193 = String._bridgeToObjectiveC()();

            [v255 handleFailureInFunction:v191 file:v192 lineNumber:39 isFatal:0 format:v193 args:v254];

            v165 = -1;
            v160 = v245;
            v163 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
            v164 = &selRef_ignoreUrl_;
          }
        }

        ++v161;
        [v172 setBaseWritingDirection:v165];

        v22 = &v260;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v162 += 7;
        v51 = v256;
        if (v160 == v161)
        {
          *&v258 = v260;
          goto LABEL_134;
        }
      }

      goto LABEL_176;
    }

LABEL_134:
    v194 = sub_100A45570(v51);
    v252 = v194[2];
    if (v252)
    {
      v195 = 0;
      v196 = 0;
      v254 = v194 + 4;
      *&v257 = v258 & 0xC000000000000001;
      v197 = v258 & 0xFFFFFFFFFFFFFF8;
      v251 = v194;
      while (2)
      {
        if (v196 >= v194[2])
        {
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
          goto LABEL_187;
        }

        v198 = v254[v196];
        *&v255 = v196 + 1;

        v22 = sub_100A45894(v199);
        v200 = 0;
        v201 = *(v198 + 16);
        while (v201 != v200)
        {
          if (v200 >= *(v198 + 16))
          {
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          if (v257)
          {
            v203 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v195 & 0x8000000000000000) != 0)
            {
              goto LABEL_171;
            }

            if (v195 >= *(v197 + 16))
            {
              goto LABEL_173;
            }

            v203 = *(v258 + 8 * v195 + 32);
          }

          v204 = v203;
          if (*(v22 + 16))
          {
            sub_1007C7EC0(v200);
            if (v205)
            {
            }
          }

          sub_100006370(0, &unk_101A0D860, NSTextList_ptr);
          v202 = Array._bridgeToObjectiveC()().super.isa;

          [v204 setTextLists:v202];

          ++v195;
          ++v200;
          if (v195 == 0x8000000000000000)
          {
            goto LABEL_172;
          }
        }

        v194 = v251;
        v196 = v255;
        if (v255 != v252)
        {
          continue;
        }

        break;
      }

      v51 = v256;
      if (v250)
      {
        goto LABEL_159;
      }
    }

    else
    {

      if (v250)
      {
LABEL_159:
        v22 = 0;
        *&v257 = v258 & 0xC000000000000001;
        v216 = v258 & 0xFFFFFFFFFFFFFF8;
        v217 = (v51 + 56);
        while (v22 < *(v51 + 16))
        {
          v218 = *(v217 - 3);
          v219 = *(v217 - 2);
          v220 = *(v217 - 1);
          v221 = *v217;
          if (v257)
          {
            v226 = v221;
            v227 = v220;
            v224 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            if (__OFSUB__(v219, v218))
            {
              goto LABEL_168;
            }
          }

          else
          {
            if (v22 >= *(v216 + 16))
            {
              goto LABEL_180;
            }

            v222 = *(v258 + 8 * v22 + 32);
            v223 = v221;
            v224 = v222;
            v225 = v220;
            if (__OFSUB__(v219, v218))
            {
LABEL_168:
              __break(1u);
              goto LABEL_169;
            }
          }

          ++v22;
          [v248 addAttribute:NSParagraphStyleAttributeName value:v224 range:v218];

          v217 += 7;
          v51 = v256;
          if (v250 == v22)
          {
            goto LABEL_169;
          }
        }

LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }
    }

LABEL_169:

    v228 = v248;

    v238(v242, v243);
    v229 = v236;
    v230 = *&v236[OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString];
    *&v236[OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString] = v228;

    *&v229[OBJC_IVAR____TtC8Freeform12CRLWPStorage__characterStyleRuns] = v262;

    *&v229[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns] = v261;

    *&v229[OBJC_IVAR____TtC8Freeform12CRLWPStorage__listRuns] = v253;

    v229[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] = 1;
  }

  v22 = *&v247[v233];
  if (v22)
  {
    v52 = v240;
    (*(*v22 + 896))();
    v53 = v249;
    sub_100A49D68(v52 + *(v250 + 20), v249, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v52, type metadata accessor for CRLWPShapeItemCRDTData);
    v54 = v246;
    v55 = v243;
    v241(v246, v53 + *(v234 + 20), v243);
    sub_100A47694(v53, type metadata accessor for CRLWPStorageCRDTData);
    v56 = v235;
    CRAttributedString.attributes(at:effectiveRange:)();
    v238(v54, v55);
    sub_100A442F0();
    v57 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v248 addAttributes:v57 range:{0, 0}];

    v58 = sub_100A44E98();
    v51 = v256;
    if (v58)
    {
      v59 = v58;
      sub_1005B981C(&qword_101A0DA40, &unk_1014907F0);
      v60 = swift_initStackObject();
      *(v60 + 16) = xmmword_10146C6B0;
      *(v60 + 32) = 0;
      *(v60 + 40) = 0;
      *(v60 + 48) = v59;
      sub_100799D28(v60);
    }

    v41(v56, v245);
    goto LABEL_17;
  }

LABEL_192:
  __break(1u);
LABEL_193:
  type metadata accessor for CRLWPParagraphAlignment(0);
  v259 = v22;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
LABEL_194:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100A2C630()
{
  v1 = v0;
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = _swiftEmptyArrayStorage;
  v13 = v12 + 16;
  v14 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v12;
  (*(*v14 + 896))();
  sub_100A49D68(&v4[*(v2 + 20)], v7, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v9 + 16))(v11, v7, v8);
  sub_100A47694(v7, type metadata accessor for CRLWPStorageCRDTData);
  v16 = CRAttributedString.attributedString.getter();
  v17 = [v16 string];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v18 = v17;

  if ([v18 length] >= 1)
  {
    v30 = v1;
    v19 = [v18 crl_range];
    v21 = v20;
    aBlock[4] = sub_100A49EB4;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100A3E944;
    aBlock[3] = &unk_1018924B0;
    v22 = _Block_copy(aBlock);

    [v18 enumerateSubstringsInRange:v19 options:v21 usingBlock:{1, v22}];
    _Block_release(v22);
    v23 = [v18 length];
    if (__OFSUB__(v23, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v24 = sub_10027E2F0([v18 characterAtIndex:v23 - 1]);
    v1 = v30;
    if (v24)
    {
      sub_1005B981C(&qword_101A0DA98, &unk_1014C6EB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v26 = [v18 length];
      v27 = [v18 length];
      if (v27 >= v26)
      {
        *(inited + 32) = v26;
        *(inited + 40) = v27;
        swift_beginAccess();
        sub_100799B44(inited);
        swift_endAccess();
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

LABEL_8:
  swift_beginAccess();
  if (!*(*v13 + 16))
  {
    sub_1005B981C(&qword_101A0DA98, &unk_1014C6EB0);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_10146C6B0;
    *(v28 + 32) = 0;
    *(v28 + 40) = 0;
    swift_beginAccess();
    sub_100799B44(v28);
    swift_endAccess();
  }

  (*(v9 + 8))(v11, v8);
  *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges) = *(v15 + 16);

  *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) = 1;
}

void sub_100A2CB04()
{
  v2 = KeyPath;
  v62 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v3 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v51 - v4;
  v60 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v60);
  v59 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v6 - 8);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = _swiftEmptyArrayStorage;
  if ((*(KeyPath + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) & 1) == 0)
  {
    sub_100A2C630();
  }

  v8 = (*(KeyPath + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges))[2];
  if (!v8)
  {
    v22 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  v57 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v56 = (v3 + 16);
  v55 = (v3 + 8);

  v9 = (v52 + 40);
  v53 = xmmword_10146C6B0;
  v54 = KeyPath;
  while (1)
  {
    v17 = *(v2 + v57);
    if (!v17)
    {
      __break(1u);
      return;
    }

    v19 = *(v9 - 1);
    v18 = *v9;
    v20 = v59;
    (*(*v17 + 896))();
    v21 = v58;
    sub_100A49D68(v20 + *(v60 + 20), v58, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v20, type metadata accessor for CRLWPShapeItemCRDTData);
    KeyPath = v61;
    v1 = v62;
    (*v56)(v61, v21, v62);
    sub_100A47694(v21, type metadata accessor for CRLWPStorageCRDTData);
    v22 = CRAttributedString.count.getter();
    (*v55)(KeyPath, v1);
    if (v22 >= (v19 & ~(v19 >> 63)))
    {
      v23 = (v19 & ~(v19 >> 63));
    }

    else
    {
      v23 = v22;
    }

    v66 = v18;
    v24 = v18 & ~(v18 >> 63);
    if (v22 >= v24)
    {
      v25 = (v18 & ~(v18 >> 63));
    }

    else
    {
      v25 = v22;
    }

    if (v24 < v23)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v65 = v19;
    KeyPath = swift_getKeyPath();
    v26 = v2;
    sub_100954FAC(KeyPath, v26, v23, v25);
    v22 = v27;
    v1 = v28;

    if (v1)
    {
      if (!*(v22 + 2))
      {
        goto LABEL_40;
      }

      v29 = v22[32];
      sub_1000C1080(v22, 1);
      LOBYTE(v22) = v29;
    }

    sub_100A3EA04(v26, v23, v25, v22);
    v2 = v30;
    KeyPath = swift_getKeyPath();
    sub_1009543F8(KeyPath, v26, v23, v25);
    v22 = v31;
    v1 = v32;

    if (v1)
    {
      if (!*(v22 + 2))
      {
        goto LABEL_41;
      }

      v33 = *(v22 + 4);
      sub_1000C1080(v22, 1);
      v22 = v33;
    }

    KeyPath = swift_getKeyPath();
    sub_10095EAFC(KeyPath, v26, v23, v25);
    v1 = v34;
    v36 = v35;

    v63 = v2;
    v64 = v8;
    if (v36)
    {
      if (!*(v1 + 16))
      {
        goto LABEL_42;
      }

      v37 = *(v1 + 32);
      sub_1000C1080(v1, 1);
      v1 = v37;
    }

    KeyPath = sub_100A3E758();
    v2 = swift_getKeyPath();
    sub_1009569D8(v2, v26, v23, v25);
    v39 = v38;
    v41 = v40;

    if (v41)
    {
      if (!*(v39 + 16))
      {
        goto LABEL_43;
      }

      v42 = *(v39 + 32);
      sub_1000C1080(v39, 1);
      v39 = v42;
    }

    *(KeyPath + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment) = v39;
    v43 = swift_getKeyPath();
    KeyPath = KeyPath;
    sub_100955B74(v43, v26, v23, v25);
    v11 = v44;
    v2 = v45;

    v46 = v64;
    if (v2)
    {
      break;
    }

LABEL_6:
    v9 += 2;
    v12 = KeyPath + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection;
    *v12 = v11;
    v12[8] = 0;

    sub_1005B981C(&qword_101A0DA48, &qword_1014C7050);
    inited = swift_initStackObject();
    *(inited + 16) = v53;
    v14 = v66;
    *(inited + 32) = v65;
    *(inited + 40) = v14;
    v15 = v63;
    *(inited + 48) = KeyPath;
    *(inited + 56) = v15;
    *(inited + 64) = v1;
    *(inited + 72) = v22;
    *(inited + 80) = 0;
    v16 = KeyPath;
    KeyPath = &v67;
    sub_100799C30(inited);

    v8 = v46 - 1;
    v2 = v54;
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  if (*(v11 + 16))
  {
    v10 = *(v11 + 32);
    sub_1000C1080(v11, 1);
    v11 = v10;
    goto LABEL_6;
  }

  __break(1u);
LABEL_30:

  v22 = v67;
  if (*(v67 + 2))
  {
    goto LABEL_38;
  }

LABEL_33:
  v47 = [v2 characterCount];
  if (v47 < 0)
  {
LABEL_44:
    __break(1u);
  }

  else
  {
    v1 = v47;
    KeyPath = sub_100A3E758();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_35;
    }
  }

  v22 = sub_100B36524(0, *(v22 + 2) + 1, 1, v22);
LABEL_35:
  v49 = *(v22 + 2);
  v48 = *(v22 + 3);
  if (v49 >= v48 >> 1)
  {
    v22 = sub_100B36524((v48 > 1), v49 + 1, 1, v22);
  }

  *(v22 + 2) = v49 + 1;
  v50 = &v22[56 * v49];
  *(v50 + 4) = 0;
  *(v50 + 5) = v1;
  *(v50 + 6) = KeyPath;
  *(v50 + 7) = 0;
  *(v50 + 8) = 0;
  *(v50 + 9) = 0;
  v50[80] = 1;
LABEL_38:
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns) = v22;

  *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) = 1;
}

void sub_100A2D1A0(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t a1))
{
  v4 = v3;
  v77 = a3;
  v82 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v70 = *(v82 - 8);
  __chkstk_darwin(v82);
  v8 = &v65 - v7;
  v74 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v74);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v78);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v65 - v13;
  v14 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v80 = *(v14 - 8);
  v81 = v14;
  __chkstk_darwin(v14);
  v71 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v79 = &v65 - v17;
  v69 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData] = 0;
  v18 = &v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
  sub_1006950BC(v85);
  v19 = v85[13];
  *(v18 + 12) = v85[12];
  *(v18 + 13) = v19;
  *(v18 + 14) = v85[14];
  *(v18 + 30) = v86;
  v20 = v85[9];
  *(v18 + 8) = v85[8];
  *(v18 + 9) = v20;
  v21 = v85[11];
  *(v18 + 10) = v85[10];
  *(v18 + 11) = v21;
  v22 = v85[5];
  *(v18 + 4) = v85[4];
  *(v18 + 5) = v22;
  v23 = v85[7];
  *(v18 + 6) = v85[6];
  *(v18 + 7) = v23;
  v24 = v85[1];
  *v18 = v85[0];
  *(v18 + 1) = v24;
  v25 = v85[3];
  *(v18 + 2) = v85[2];
  *(v18 + 3) = v25;
  v26 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_geometry;
  *&v3[v26] = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{100.0, 100.0}];
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextStyle] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_isSupported] = 1;
  v27 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_layoutClass;
  *&v3[v27] = type metadata accessor for CRLWPLayout();
  v28 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_repClass;
  *&v3[v28] = sub_100006370(0, &unk_101A0D840, off_10182F9E8);
  v29 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_editorClass;
  *&v3[v29] = type metadata accessor for CRLWPEditor(0);
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges] = 0;
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] = 0;
  v30 = OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString;
  *&v3[v30] = [objc_allocWithZone(NSAttributedString) init];
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__characterStyleRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__listRuns] = _swiftEmptyArrayStorage;
  v31 = a1;
  v32 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_store];
  *&v4[OBJC_IVAR____TtC8Freeform12CRLWPStorage_store] = v32;
  v33 = v32;
  sub_100A33D9C(a2, v77);
  v35 = v34;
  v37 = v36;
  if (v34 == NSNotFound.getter())
  {
    __break(1u);
    goto LABEL_8;
  }

  v68 = v11;
  if (__OFADD__(v35, v37))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v77 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v38 = *&v31[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v38)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v39 = *(*v38 + 504);

  v75 = v39(0);

  v76 = v31;
  v41 = *(v77 + v31);
  if (!v41)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v67 = v8;
  v42 = v73;
  (*(*v41 + 896))(v40);
  v43 = v74;
  v44 = v72;
  sub_100A49D68(v42 + *(v74 + 20), v72, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v42, type metadata accessor for CRLWPShapeItemCRDTData);
  v45 = v79;
  CRAttributedString.subscript.getter();
  sub_100A47694(v44, type metadata accessor for CRLWPStorageCRDTData);
  (*(v80 + 16))(v71, v45, v81);
  sub_10068D144();
  v46 = v43;
  CRAttributedString.init(_:)();
  v47 = v78;
  CRAttributedString.init(_:)();
  v48 = v75;
  *(v44 + *(v47 + 24)) = _swiftEmptyDictionarySingleton;
  v49 = *(*v48 + 912);
  v71 = (*v48 + 912);
  v66 = v49;
  v50 = v49(v84);
  sub_100824550(v44, v51 + *(v43 + 20));
  v50(v84, 0);
  v52 = sub_100A47694(v44, type metadata accessor for CRLWPStorageCRDTData);
  v53 = *(v77 + v76);
  if (v53)
  {
    (*(*v53 + 896))(v52);
    v54 = *(v43 + 20);
    v65 = type metadata accessor for CRLWPStorageCRDTData;
    sub_100A49D68(v42 + v54, v44, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v42, type metadata accessor for CRLWPShapeItemCRDTData);
    v55 = *(v47 + 20);
    v56 = v70;
    v57 = v67;
    v58 = v82;
    (*(v70 + 16))(v67, v44 + v55, v82);
    v77 = type metadata accessor for CRLWPStorageCRDTData;
    v59 = sub_100A47694(v44, type metadata accessor for CRLWPStorageCRDTData);
    v60 = v75;
    (*(*v75 + 896))(v59);
    v61 = v68;
    sub_100A49D68(v42 + *(v46 + 20), v68, v65);
    sub_100A47694(v42, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v56 + 40))(v61 + *(v78 + 20), v57, v58);
    v62 = v66(v84);
    sub_100824550(v61, v63 + *(v46 + 20));
    v62(v84, 0);
    sub_100A47694(v61, v77);
    *&v4[v69] = v60;

    v64 = type metadata accessor for CRLWPStorage();
    v83.receiver = v4;
    v83.super_class = v64;
    objc_msgSendSuper2(&v83, "init");

    (*(v80 + 8))(v79, v81);
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100A2DAD0()
{
  v1 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v12)
  {
    (*(*v12 + 896))(v9);
    sub_100A49D68(&v7[*(v5 + 20)], v11, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v2 + 16))(v4, v11, v1);
    sub_100A47694(v11, type metadata accessor for CRLWPStorageCRDTData);
    v13 = CRAttributedString.attributedString.getter();
    (*(v2 + 8))(v4, v1);
    v14 = [v13 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_100A2DD54(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

void sub_100A2DDC4()
{
  v32 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v1 = *(v32 - 8);
  __chkstk_darwin(v32);
  v3 = &v30 - v2;
  v31 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v33 = v0;
  v10 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v10)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v11 = *(*v10 + 464);

  v11(v12);

  v13 = sub_1009B6B8C();
  v15 = v14;
  v16 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_100024CBC((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[16 * v18];
  *(v19 + 4) = v13;
  *(v19 + 5) = v15;
  v20 = *(v33 + v9);
  if (!v20)
  {
    goto LABEL_12;
  }

  (*(*v20 + 896))();
  sub_100A49D68(&v5[*(v31 + 20)], v8, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v5, type metadata accessor for CRLWPShapeItemCRDTData);
  v21 = v32;
  (*(v1 + 16))(v3, v8, v32);
  sub_100A47694(v8, type metadata accessor for CRLWPStorageCRDTData);
  v22 = CRAttributedString.attributedString.getter();
  (*(v1 + 8))(v3, v21);
  v23 = [v22 string];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (String.count.getter() < 1)
  {
  }

  else
  {
    v28 = *(v16 + 2);
    v27 = *(v16 + 3);
    if (v28 >= v27 >> 1)
    {
      v16 = sub_100024CBC((v27 > 1), v28 + 1, 1, v16);
    }

    *(v16 + 2) = v28 + 1;
    v29 = &v16[16 * v28];
    *(v29 + 4) = v24;
    *(v29 + 5) = v26;
  }

  v34 = v16;
  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();
}

void sub_100A2E1E0(uint64_t a1, unint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v3 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v27 = v2;
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  (*(*v15 + 896))(v11);
  v26 = v7;
  sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
  v16 = *(v4 + 16);
  v16(v6, v13, v3);
  sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.attributedString.getter();
  v18 = *(v4 + 8);
  v18(v6, v3);
  v25 = [v17 length];

  v19 = *(v27 + v14);
  if (v19)
  {
    (*(*v19 + 896))();
    sub_100A49D68(&v9[*(v26 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    v16(v6, v13, v3);
    sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
    v20 = CRAttributedString.attributedString.getter();
    v18(v6, v3);
    v21 = [v20 length];

    if (v21 >= v25)
    {
      sub_100A2E55C(v25, v21, v23, v24, 1);
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_100A2E55C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a5;
  v159 = a3;
  v160 = a1;
  v9 = type metadata accessor for CharacterSet();
  v152 = *(v9 - 8);
  __chkstk_darwin(v9);
  v166 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A0DAE0, &qword_101483A10);
  __chkstk_darwin(v11 - 8);
  v176 = &v142 - v12;
  v13 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  __chkstk_darwin(v13 - 8);
  v177 = &v142 - v14;
  v178 = sub_1005B981C(qword_101A0CF60, "87&");
  v15 = *(v178 - 8);
  __chkstk_darwin(v178);
  v157 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v158 = &v142 - v18;
  __chkstk_darwin(v19);
  v21 = &v142 - v20;
  v179 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v22 = *(v179 - 8);
  __chkstk_darwin(v179);
  v147 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v142 - v25;
  v173 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v173);
  v170 = &v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v148);
  v146 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v180 = (&v142 - v30);
  __chkstk_darwin(v31);
  v161 = &v142 - v32;
  v172 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    ObjectType = swift_getObjectType();
    v36 = swift_conformsToProtocol2();
    if (!v36)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v37 = sub_1012778D4(ObjectType, v36);

    if ((v37 & 1) == 0)
    {
      return;
    }
  }

  v151 = v15;
  v167 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v38 = *&v172[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v38)
  {
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v39 = v170;
  (*(*v38 + 896))();
  v40 = v161;
  sub_100A49D68(v39 + *(v173 + 20), v161, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v39, type metadata accessor for CRLWPShapeItemCRDTData);
  v41 = v22 + 16;
  v42 = v179;
  v154 = *(v22 + 16);
  v154(v26, v40, v179);
  sub_100A47694(v40, type metadata accessor for CRLWPStorageCRDTData);
  v43 = CRAttributedString.count.getter();
  v45 = *(v22 + 8);
  v44 = v22 + 8;
  v155 = v44;
  v153 = v45;
  v45(v26, v42);
  if (v43 >= (v160 & ~(v160 >> 63)))
  {
    v46 = (v160 & ~(v160 >> 63));
  }

  else
  {
    v46 = v43;
  }

  v47 = a2 & ~(a2 >> 63);
  if (v43 >= v47)
  {
    v48 = a2 & ~(a2 >> 63);
  }

  else
  {
    v48 = v43;
  }

  v168 = v48;
  if (v47 < v46)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v49 = String.UTF16View.count.getter();
  if (__OFADD__(v46, v49))
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (&v46[v49] >= v46)
  {
    v145 = &v46[v49];
    v169 = v46;
    v50 = *&v172[v167];
    if (v50)
    {
      v51 = v170;
      (*(*v50 + 896))();
      v52 = v161;
      sub_100A49D68(v51 + *(v173 + 20), v161, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v51, type metadata accessor for CRLWPShapeItemCRDTData);
      v46 = v179;
      v154(v26, v52, v179);
      sub_100A47694(v52, type metadata accessor for CRLWPStorageCRDTData);
      a2 = CRAttributedString.count.getter();
      v153(v26, v46);
      if (a2 >= (v169 & ~(v169 >> 63)))
      {
        v43 = (v169 & ~(v169 >> 63));
      }

      else
      {
        v43 = a2;
      }

      v53 = v168 & ~(v168 >> 63);
      v44 = v166;
      if (v53 < v43)
      {
        goto LABEL_118;
      }

      v150 = v9;
      if (a2 >= v53)
      {
        a2 = v168 & ~(v168 >> 63);
      }

      KeyPath = swift_getKeyPath();
      v55 = v172;
      sub_10095F6B0(KeyPath, v55, v43, a2);
      v57 = v56;
      a2 = v58;

      v156 = v55;

      v9 = v57;
      if (a2)
      {
        if (!v57[2])
        {
          __break(1u);
          goto LABEL_121;
        }

        v9 = v57[4];
      }

      v46 = v9;
      sub_1000C10AC(v57, a2 & 1);
      v149 = v41;
      if (v9)
      {

        v43 = v156;
        if ((v156[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] & 1) == 0)
        {
          sub_100A2A960();
        }

        v59 = *(v43 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns);
        v165 = *(v59 + 16);
        if (v165)
        {
          v142 = v26;
          v143 = v6;
          v144 = a4;
          v164 = v59 + 32;
          v175 = (v151 + 16);
          v60 = (v151 + 56);
          v61 = (v151 + 8);

          v63 = 0;
          v65 = v168;
          v64 = v169;
          v162 = v62;
          v66 = v176;
LABEL_32:
          if (v63 >= *(v62 + 16))
          {
            goto LABEL_113;
          }

          v68 = (v164 + 24 * v63);
          a2 = *v68;
          v43 = v68[1];
          v9 = v68[2];
          if (v64 < *v68 || v64 >= v43)
          {
            if (v64 == v65)
            {
              goto LABEL_31;
            }

            v70 = v64 < v43 && a2 < v65;
            if (!v70 || a2 == v43)
            {
              goto LABEL_31;
            }
          }

          v171 = v63;
          v174 = *&v172[v167];
          if (!v174)
          {
            goto LABEL_122;
          }

          v72 = swift_getKeyPath();
          v44 = v43 - a2;
          if (__OFSUB__(v43, a2))
          {
            goto LABEL_114;
          }

          v46 = v72;
          a4 = v170;
          (*(*v174 + 896))();
          sub_100A49D68(a4 + *(v173 + 20), v180, type metadata accessor for CRLWPStorageCRDTData);
          v9 = v9;

          sub_100A47694(a4, type metadata accessor for CRLWPShapeItemCRDTData);
          if (v44 < 1)
          {

            goto LABEL_30;
          }

          v163 = v9;
          while (1)
          {
            aBlock = 0;
            v182 = 0;
            v73 = CRAttributedString.attributes(at:effectiveRange:)();
            __chkstk_darwin(v73);
            *(&v142 - 4) = &type metadata for CRLWPHyperlinkAttribute;
            *(&v142 - 3) = sub_1008247F4();
            *(&v142 - 2) = v46;
            swift_getKeyPath();
            v74 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
            a4 = v177;
            (*(*(v74 - 8) + 56))(v177, 1, 1, v74);
            v9 = sub_100824848();

            CRAttributedString.Attributes.subscript.setter();
            v43 = aBlock;
            v75 = aBlock + v182;
            if (__OFADD__(aBlock, v182))
            {
              break;
            }

            v76 = a2 + v44;
            if (__OFADD__(a2, v44))
            {
              goto LABEL_108;
            }

            if (v75 >= v76)
            {
              v77 = (a2 + v44);
            }

            else
            {
              v77 = aBlock + v182;
            }

            if (aBlock < a2 || aBlock >= v76)
            {
              if (a2 < aBlock || a2 >= v75)
              {
                (*v61)(v21, v178);
LABEL_67:

                v9 = v163;
LABEL_30:
                v46 = v174;
                v43 = (*(*v174 + 912))(&aBlock);
                a2 = v180;
                sub_100824550(v180, v67 + *(v173 + 20));
                v43(&aBlock, 0);

                sub_100A47694(a2, type metadata accessor for CRLWPStorageCRDTData);
                v44 = v166;
                v65 = v168;
                v64 = v169;
                v62 = v162;
                v63 = v171;
LABEL_31:
                if (++v63 == v165)
                {

                  a4 = v144;
                  LOBYTE(v6) = v143;
                  v26 = v142;
                  goto LABEL_69;
                }

                goto LABEL_32;
              }

              v9 = &v77[-a2];
              if (__OFSUB__(v77, a2))
              {
                goto LABEL_112;
              }
            }

            else
            {
              v9 = v77 - aBlock;
              if (__OFSUB__(v77, aBlock))
              {
                goto LABEL_111;
              }
            }

            a4 = v178;
            (*v175)(v66, v21, v178);
            (*v60)(v66, 0, 1, a4);
            v43 = v180;
            CRAttributedString.setAttributes(_:range:)();
            sub_10000CAAC(v66, &unk_101A0DAE0, &qword_101483A10);
            (*v61)(v21, a4);
            v78 = __OFADD__(a2, v9);
            a2 += v9;
            if (v78)
            {
              goto LABEL_109;
            }

            v78 = __OFSUB__(v44, v9);
            v44 -= v9;
            if (v78)
            {
              goto LABEL_110;
            }

            if (v44 <= 0)
            {
              goto LABEL_67;
            }
          }

          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }
      }

LABEL_69:
      v9 = v156;
      v80 = v168;
      v79 = v169;
      if (!v169 && v80 == [v156 characterCount] && !v145)
      {
        sub_100A31D74();
      }

      v81 = sub_100A31CD0(v79, v80);
      if (v6)
      {
        v82 = v81;
        sub_100A3230C(v81);
        sub_100A31B44(v79, v80);
        if (v83)
        {
          v84 = *&v172[v167];
          if (!v84)
          {
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          v85 = v170;
          (*(*v84 + 896))();
          v86 = v161;
          sub_100A49D68(v85 + *(v173 + 20), v161, type metadata accessor for CRLWPStorageCRDTData);
          sub_100A47694(v85, type metadata accessor for CRLWPShapeItemCRDTData);
          v87 = v179;
          v154(v26, v86 + *(v148 + 20), v179);
          sub_100A47694(v86, type metadata accessor for CRLWPStorageCRDTData);
          CRAttributedString.attributes(at:effectiveRange:)();
          v88 = (v153)(v26, v87);
        }

        else
        {
          v88 = sub_100A32A1C(v82);
        }
      }

      else
      {
        sub_10068D144();
        CRAttributedString.Attributes.init()();
        v88 = CRAttributedString.Attributes.init()();
      }

      v89 = *&v172[v167];
      if (v89)
      {
        v90 = v6;
        v91 = v170;
        (*(*v89 + 896))(v88);
        v92 = v173;
        v93 = v161;
        sub_100A49D68(v91 + *(v173 + 20), v161, type metadata accessor for CRLWPStorageCRDTData);

        sub_100A47694(v91, type metadata accessor for CRLWPShapeItemCRDTData);
        v94 = v159;
        CRAttributedString.replaceSubrange(_:with:)();
        v95 = (*(*v89 + 912))(&aBlock);
        sub_100824550(v93, v96 + *(v92 + 20));
        v95(&aBlock, 0);

        sub_100A47694(v93, type metadata accessor for CRLWPStorageCRDTData);
        *(v9 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
        *(v9 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) = 0;
        if (v90)
        {
          v97 = HIBYTE(a4) & 0xF;
          if ((a4 & 0x2000000000000000) == 0)
          {
            v97 = v94 & 0xFFFFFFFFFFFFLL;
          }

          if (v97)
          {
            sub_100A32F80(v158, v157, v169, v145);
          }
        }

        v98 = String.count.getter();
        a2 = v152;
        v46 = v150;
        if (v98 < 1)
        {
          goto LABEL_97;
        }

        v99 = sub_100BC19C0(v94, a4);
        if (v100)
        {
          v43 = v99;
          v21 = v100;
          if (qword_1019F1AD0 == -1)
          {
            goto LABEL_88;
          }

          goto LABEL_119;
        }

LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    goto LABEL_124;
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  swift_once();
LABEL_88:
  v101 = sub_1005EB3DC(v46, qword_101AD6F98);
  (*(a2 + 16))(v44, v101, v46);
  if ((sub_100BC1874(v43, v21) & 0x100000000) != 0)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v102 = CharacterSet.contains(_:)();

  (*(a2 + 8))(v44, v46);
  if (v102)
  {
    v103 = objc_allocWithZone(NSDataDetector);
    aBlock = 0;
    v104 = [v103 initWithTypes:32 error:&aBlock];
    v105 = aBlock;
    if (v104)
    {
      v106 = *&v172[v167];
      if (v106)
      {
        v107 = v104;
        v144 = a4;
        v108 = v170;
        (*(*v106 + 896))();
        v109 = v146;
        sub_100A49D68(v108 + *(v173 + 20), v146, type metadata accessor for CRLWPStorageCRDTData);
        v110 = v105;
        sub_100A47694(v108, type metadata accessor for CRLWPShapeItemCRDTData);
        v111 = v147;
        v112 = v179;
        v154(v147, v109, v179);
        sub_100A47694(v109, type metadata accessor for CRLWPStorageCRDTData);
        v113 = CRAttributedString.attributedString.getter();
        v153(v111, v112);
        v114 = [v113 string];

        if (!v114)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v114 = String._bridgeToObjectiveC()();
        }

        v115 = [v9 range];
        v117 = v116;
        v118 = swift_allocObject();
        *(v118 + 16) = v9;
        v119 = swift_allocObject();
        v120 = sub_100A49F3C;
        *(v119 + 16) = sub_100A49F3C;
        *(v119 + 24) = v118;
        v185 = sub_100A49F44;
        v186 = v119;
        aBlock = _NSConcreteStackBlock;
        v182 = *"";
        v183 = sub_10123F800;
        v184 = &unk_1018925E8;
        v121 = _Block_copy(&aBlock);
        v122 = v9;

        [v107 enumerateMatchesInString:v114 options:0 range:v115 usingBlock:{v117, v121}];

        _Block_release(v121);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v124 = v151;
          v9 = v156;
          goto LABEL_98;
        }

LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
      }

LABEL_130:
      __break(1u);
      return;
    }

    v125 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_97:
  v120 = 0;
  v118 = 0;
  v124 = v151;
LABEL_98:
  v126 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange;
  v127 = *(v9 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
  if (v127 && *&v127[OBJC_IVAR____TtC8Freeform12CRLTextRange_range] >= v160)
  {
    v128 = v127;
    v129 = String.count.getter();
    v130 = sub_10078D9DC(v129);

    v131 = *(v9 + v126);
    *(v9 + v126) = v130;
  }

  v132 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange;
  v133 = *(v9 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange);
  if (v133 && *&v133[OBJC_IVAR____TtC8Freeform12CRLTextRange_range] >= v160)
  {
    v136 = v133;
    v137 = String.count.getter();
    v138 = sub_10078D9DC(v137);

    v139 = *(v124 + 8);
    v140 = v178;
    v139(v157, v178);
    v139(v158, v140);
    v141 = *&v156[v132];
    *&v156[v132] = v138;
  }

  else
  {
    v134 = *(v124 + 8);
    v135 = v178;
    v134(v157, v178);
    v134(v158, v135);
  }

  sub_1000C1014(v120, v118);
}

void sub_100A2FAD8(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v61 = a4;
  v5 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v7 = &KeyPath - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v14 - 8);
  v16 = &KeyPath - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &KeyPath - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &KeyPath - v22;
  if (a1)
  {
    v62 = a1;
    v24 = [v62 URL];
    if (v24)
    {
      v25 = v24;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v18 + 32))(v23, v20, v17);
      v26 = [v62 range];
      v28 = v27;
      if (v26 == NSNotFound.getter())
      {
        (*(v18 + 8))(v23, v17);

        return;
      }

      v30 = __OFADD__(v26, v28);
      v31 = &v26[v28];
      if (v30)
      {
        __break(1u);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        (*(v18 + 16))(v16, v23, v17);
        (*(v18 + 56))(v16, 0, 1, v17);
        v56 = v31;
        v57 = (v31 - v26);
        v58 = v26;
        if (!__OFSUB__(v31, v26))
        {
          v32 = [objc_allocWithZone(NSUUID) init];
          v33 = [v32 UUIDString];

          if (!v33)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = String._bridgeToObjectiveC()();
          }

          if ((*(v18 + 48))(v16, 1, v17) == 1)
          {
            v35 = 0;
          }

          else
          {
            URL._bridgeToObjectiveC()(v34);
            v35 = v36;
            (*(v18 + 8))(v16, v17);
          }

          v37 = objc_allocWithZone(CRLWPHyperlinkField);
          v57 = [v37 initWithURL:v35 range:v58 displayText:v57 uuidString:{0, v33}];

          v38 = v61;
          v39 = *&v61[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
          if (!v39)
          {
            goto LABEL_34;
          }

          (*(*v39 + 896))();
          sub_100A49D68(&v10[*(v8 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
          sub_100A47694(v10, type metadata accessor for CRLWPShapeItemCRDTData);
          v41 = v59;
          v40 = v60;
          (*(v59 + 16))(v7, v13, v60);
          sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
          v42 = CRAttributedString.count.getter();
          (*(v41 + 8))(v7, v40);
          if (v42 >= (v58 & ~(v58 >> 63)))
          {
            v43 = v58 & ~(v58 >> 63);
          }

          else
          {
            v43 = v42;
          }

          v44 = v56 & ~(v56 >> 63);
          if (v42 >= v44)
          {
            v45 = v56 & ~(v56 >> 63);
          }

          else
          {
            v45 = v42;
          }

          if (v44 >= v43)
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            if (!Strong)
            {
              v53 = v38;
              goto LABEL_28;
            }

            v47 = Strong;
            ObjectType = swift_getObjectType();
            v49 = swift_conformsToProtocol2();
            if (v49)
            {
              v50 = v49;
              v51 = v38;
              v52 = sub_1012778D4(ObjectType, v50);

              if ((v52 & 1) == 0)
              {

LABEL_29:
                (*(v18 + 8))(v23, v17);

                return;
              }

LABEL_28:
              v54 = v57;
              sub_100821A74(KeyPath, v57, 0, v38, v43, v45);

              goto LABEL_29;
            }

LABEL_35:
            __break(1u);
            return;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

    v29 = v62;
  }
}

void sub_100A30128(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v129 = a4;
  v135 = a3;
  v141 = a1;
  v142 = a2;
  v5 = sub_1005B981C(&unk_101A0DAE0, &qword_101483A10);
  __chkstk_darwin(v5 - 8);
  v128 = &v115 - v6;
  v7 = sub_1005B981C(qword_101A0CF60, "87&");
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v125 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v124 = &v115 - v11;
  __chkstk_darwin(v12);
  v130 = &v115 - v13;
  __chkstk_darwin(v14);
  v16 = &v115 - v15;
  v144 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v140 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = &v115 - v17;
  v18 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v18 - 8);
  v137 = &v115 - v19;
  v139 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v117 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v115 - v20;
  v21 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v115 - v23;
  v123 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v123);
  v122 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v26 - 8);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v30 = Strong;
  ObjectType = swift_getObjectType();
  v32 = swift_conformsToProtocol2();
  if (!v32)
  {
    goto LABEL_46;
  }

  v33 = sub_1012778D4(ObjectType, v32);

  if (v33)
  {
LABEL_4:
    v132 = v8;
    v118 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
    v34 = *(v131 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (!v34)
    {
      goto LABEL_45;
    }

    v35 = v122;
    (*(*v34 + 896))();
    sub_100A49D68(v35 + *(v123 + 20), v28, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v35, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v22 + 16))(v24, v28, v21);
    sub_100A47694(v28, type metadata accessor for CRLWPStorageCRDTData);
    v36 = CRAttributedString.count.getter();
    (*(v22 + 8))(v24, v21);
    if (v36 >= (v141 & ~(v141 >> 63)))
    {
      v37 = v141 & ~(v141 >> 63);
    }

    else
    {
      v37 = v36;
    }

    v38 = v142 & ~(v142 >> 63);
    if (v38 < v37)
    {
      goto LABEL_43;
    }

    if (v36 >= v38)
    {
      v39 = v142 & ~(v142 >> 63);
    }

    else
    {
      v39 = v36;
    }

    v40 = CRAttributedString.attributedString.getter();
    v41 = [v40 string];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = v129;
    v136 = v37;
    v46 = v39;
    v47 = v131;
    sub_100A2E55C(v37, v46, v42, v44, v129 & 1);

    CRAttributedString.runs.getter();
    v48 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
    v49 = v137;
    CRAttributedString.Runs.next()();
    v50 = v49;
    v51 = v49;
    v52 = v144;
    v134 = *(v140 + 48);
    v135 = v140 + 48;
    v53 = v134(v51, 1, v144);
    v54 = v128;
    if (v53 == 1)
    {
LABEL_13:
      (*(v117 + 8))(v138, v139);
      return;
    }

    v55 = (v47 + v48);
    v56 = *(v140 + 32);
    v120 = (v132 + 2);
    v121 = v7;
    v140 += 32;
    v141 = (v132 + 1);
    v119 = (v132 + 4);
    v126 = v16;
    v127 = (v132 + 7);
    v116 = (v132 + 6);
    v132 = (v140 - 24);
    v133 = v56;
    v56(v143, v50, v52);
    while (1)
    {
      v60 = CRAttributedString.Runs.Run.range.getter();
      if (__OFADD__(v136, v60))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }

      v142 = v136 + v60;
      if (v45)
      {
        CRAttributedString.Runs.Run.attributes.getter();
        v61 = CRAttributedString.Runs.Run.range.getter();
        v63 = v62 - v61;
        if (__OFSUB__(v62, v61))
        {
          goto LABEL_38;
        }

        v64 = v142 + v63;
        if (__OFADD__(v142, v63))
        {
          goto LABEL_40;
        }

        if (v64 < v142)
        {
          goto LABEL_42;
        }

        sub_100A33634(v16, v142, v64);
        (*v141)(v16, v7);
        v58 = v144;
        (*v132)(v143, v144);
        goto LABEL_17;
      }

      v65 = v55[13];
      v66 = v55[11];
      v198 = v55[12];
      v199 = v65;
      v67 = v55[13];
      v200 = v55[14];
      v68 = v55[9];
      v69 = v55[7];
      v194 = v55[8];
      v195 = v68;
      v70 = v55[9];
      v71 = v55[11];
      v196 = v55[10];
      v197 = v71;
      v72 = v55[5];
      v73 = v55[3];
      v190 = v55[4];
      v191 = v72;
      v74 = v55[5];
      v75 = v55[7];
      v192 = v55[6];
      v193 = v75;
      v76 = v55[1];
      v186 = *v55;
      v187 = v76;
      v77 = v55[3];
      v79 = *v55;
      v78 = v55[1];
      v188 = v55[2];
      v189 = v77;
      v202[12] = v198;
      v202[13] = v67;
      v202[14] = v55[14];
      v202[8] = v194;
      v202[9] = v70;
      v202[10] = v196;
      v202[11] = v66;
      v202[4] = v190;
      v202[5] = v74;
      v202[6] = v192;
      v202[7] = v69;
      v202[0] = v79;
      v202[1] = v78;
      v201 = *(v55 + 30);
      v203 = *(v55 + 30);
      v202[2] = v188;
      v202[3] = v73;
      if (sub_100695050(v202) == 1)
      {
        v80 = *(v47 + v118);
        if (!v80)
        {
          goto LABEL_44;
        }

        v81 = v122;
        (*(*v80 + 896))();
        sub_1005B981C(&unk_101A095A0, "d#'");
        CRRegister.wrappedValue.getter();
        sub_100A47694(v81, type metadata accessor for CRLWPShapeItemCRDTData);
        v175 = v159;
        v176 = v160;
        v177 = v161;
        v178 = v162;
        v171 = v155;
        v172 = v156;
        v173 = v157;
        v174 = v158;
        v167 = v151;
        v168 = v152;
        v169 = v153;
        v170 = v154;
        v163 = v147;
        v164 = v148;
        v165 = v149;
        v166 = v150;
        v82 = sub_100695050(&v163);
        v83 = v130;
        if (v82 == 1)
        {
          (*v127)(v54, 1, 1, v7);
          v84 = v143;
          CRAttributedString.Runs.Run.attributes.getter();
          if ((*v116)(v54, 1, v7) != 1)
          {
            sub_10000CAAC(v54, &unk_101A0DAE0, &qword_101483A10);
          }

          goto LABEL_33;
        }

        v101 = v178;
        v100 = v177;
        v102 = BYTE8(v177);
        v98 = v176;
        v99 = BYTE8(v176);
        v96 = v175;
        v97 = BYTE8(v175);
        v94 = v174;
        v95 = BYTE8(v174);
        v92 = v166;
        v93 = BYTE8(v166);
        v90 = v165;
        v91 = BYTE8(v165);
        v89 = BYTE10(v164);
        v88 = BYTE9(v164);
        v87 = DWORD1(v164);
        v103 = BYTE8(v164);
        v85 = v163;
        v86 = v164;
        v104 = &v163;
      }

      else
      {
        v85 = v186;
        v86 = v187;
        v87 = DWORD1(v187);
        v88 = BYTE9(v187);
        v89 = BYTE10(v187);
        v90 = v188;
        v91 = BYTE8(v188);
        v92 = v189;
        v93 = BYTE8(v189);
        v94 = v197;
        v95 = BYTE8(v197);
        v96 = v198;
        v97 = BYTE8(v198);
        v98 = v199;
        v99 = BYTE8(v199);
        v100 = v200;
        v101 = v201;
        v102 = BYTE8(v200);
        v103 = BYTE8(v187);
        v104 = &v186;
      }

      v105 = v104[9];
      v183 = v104[8];
      v184 = v105;
      v185 = v104[10];
      v106 = v104[5];
      v179 = v104[4];
      v180 = v106;
      v107 = v104[7];
      v181 = v104[6];
      v182 = v107;
      v163 = v85;
      LOBYTE(v164) = v86;
      DWORD1(v164) = v87;
      BYTE8(v164) = v103 & 1;
      BYTE9(v164) = v88;
      BYTE10(v164) = v89;
      *&v165 = v90;
      BYTE8(v165) = v91;
      *&v166 = v92;
      BYTE8(v166) = v93;
      v171 = v183;
      v172 = v184;
      v173 = v185;
      v167 = v179;
      v168 = v106;
      v169 = v181;
      v170 = v107;
      *&v174 = v94;
      BYTE8(v174) = v95;
      *&v175 = v96;
      BYTE8(v175) = v97;
      *&v176 = v98;
      BYTE8(v176) = v99;
      *&v177 = v100;
      BYTE8(v177) = v102 & 1;
      v178 = v101;
      sub_10000BE14(&v186, &v147, &unk_101A0D830, &qword_101488F70);
      sub_10081852C(&v163);
      v108 = v124;
      v84 = v143;
      CRAttributedString.Runs.Run.attributes.getter();
      v7 = v121;
      v109 = v125;
      (*v120)(v125, v108, v121);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1008244FC();
      CRAttributedString.Attributes.subscript.getter();

      LOBYTE(v147) = v147 & 1;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1009623E4();
      CRAttributedString.Attributes.subscript.getter();

      v145 = v147;
      v146 = v148;
      CRAttributedString.Attributes.subscript.setter();
      (*v141)(v108, v7);
      v110 = *v119;
      v54 = v128;
      (*v119)(v128, v109, v7);
      (*v127)(v54, 0, 1, v7);
      v83 = v130;
      v110(v130, v54, v7);
LABEL_33:
      v111 = CRAttributedString.Runs.Run.range.getter();
      v113 = v112 - v111;
      if (__OFSUB__(v112, v111))
      {
        goto LABEL_39;
      }

      v114 = v142 + v113;
      if (__OFADD__(v142, v113))
      {
        goto LABEL_41;
      }

      if (v114 < v142)
      {
        __break(1u);
        goto LABEL_37;
      }

      v47 = v131;
      sub_100A33634(v83, v142, v114);
      (*v141)(v83, v7);
      v57 = v84;
      v58 = v144;
      (*v132)(v57, v144);
      v45 = v129;
      v16 = v126;
LABEL_17:
      v59 = v137;
      CRAttributedString.Runs.next()();
      if (v134(v59, 1, v58) == 1)
      {
        goto LABEL_13;
      }

      v133(v143, v59, v58);
    }
  }
}

void sub_100A30E84(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v117 = a3;
  v111 = a1;
  v102 = sub_1005B981C(&qword_101A06188, &qword_101483A00);
  __chkstk_darwin(v102);
  v7 = &v94 - v6;
  v103 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  __chkstk_darwin(v103);
  v118 = (&v94 - v8);
  v9 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v106 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v94 - v10;
  v12 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v12 - 8);
  v14 = &v94 - v13;
  v105 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v15 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v94 - v16;
  v116 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v17 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v94 - v18;
  v114 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v114);
  v113 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v20 - 8);
  v112 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    ObjectType = swift_getObjectType();
    v25 = swift_conformsToProtocol2();
    if (!v25)
    {
LABEL_47:
      __break(1u);
      return;
    }

    v26 = sub_1012778D4(ObjectType, v25);

    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  v95 = v15;
  sub_100A33D9C(v111, a2);
  v101 = v28;
  v111 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v29 = *&v117[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v29)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v30 = v27;
  v31 = v113;
  (*(*v29 + 896))();
  v32 = v112;
  sub_100A49D68(v31 + *(v114 + 20), v112, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v31, type metadata accessor for CRLWPShapeItemCRDTData);
  v33 = *(v17 + 16);
  v35 = v115;
  v34 = v116;
  v109 = v17 + 16;
  v108 = v33;
  v33(v115, v32, v116);
  sub_100A47694(v32, type metadata accessor for CRLWPStorageCRDTData);
  v36 = CRAttributedString.attributedString.getter();
  v37 = *(v17 + 8);
  v110 = v17 + 8;
  v107 = v37;
  v37(v35, v34);
  v38 = [v36 string];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = v30 + v101;
  if (__OFADD__(v30, v101))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v42 < v30)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v101 = v30;
  sub_100A2E55C(v30, v42, v39, v41, 1);

  v44 = *&v117[v111];
  if (!v44)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v45 = v113;
  (*(*v44 + 896))(v43);
  v46 = v112;
  sub_100A49D68(v45 + *(v114 + 20), v112, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v45, type metadata accessor for CRLWPShapeItemCRDTData);
  v47 = v115;
  v48 = v116;
  v108(v115, v46, v116);
  sub_100A47694(v46, type metadata accessor for CRLWPStorageCRDTData);
  CRAttributedString.runs.getter();
  v107(v47, v48);
  CRAttributedString.Runs.next()();
  v49 = *(v106 + 48);
  v100 = v106 + 48;
  v99 = v49;
  if (v49(v14, 1, v9) != 1)
  {
    v98 = *(v106 + 32);
    v106 += 32;
    v96 = (v106 - 24);
    v97 = v4;
    do
    {
      v98(v11, v14, v9);
      v50 = CRAttributedString.Runs.Run.range.getter();
      v52 = *&v117[v111];
      if (!v52)
      {
        goto LABEL_43;
      }

      v53 = v50;
      v54 = v51;
      v55 = v113;
      (*(*v52 + 896))();
      v56 = v112;
      sub_100A49D68(v55 + *(v114 + 20), v112, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v55, type metadata accessor for CRLWPShapeItemCRDTData);
      v57 = v115;
      v58 = v116;
      v108(v115, v56, v116);
      sub_100A47694(v56, type metadata accessor for CRLWPStorageCRDTData);
      v59 = CRAttributedString.count.getter();
      v107(v57, v58);
      v60 = (v53 & ~(v53 >> 63));
      if (v59 < v60)
      {
        v60 = v59;
      }

      v61 = (v54 & ~(v54 >> 63));
      if (v61 < v60)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v62 = v14;
      v63 = v11;
      v64 = v7;
      if (v59 < v61)
      {
        v61 = v59;
      }

      v65 = v117;
      v120[0] = v117;
      v120[1] = v60;
      v120[2] = v61;
      v120[3] = v117;
      v120[4] = v60;
      v120[5] = v61;
      v66 = v117;
      sub_100A25A48(v120, v118);
      v67 = v9;
      v68 = v63;
      v69 = CRAttributedString.Runs.Run.range.getter();
      v71 = *&v65[v111];
      if (!v71)
      {
        goto LABEL_44;
      }

      v72 = v69;
      v73 = v70;
      v74 = v113;
      (*(*v71 + 896))();
      v75 = v112;
      sub_100A49D68(v74 + *(v114 + 20), v112, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v74, type metadata accessor for CRLWPShapeItemCRDTData);
      v76 = v115;
      v77 = v116;
      v108(v115, v75, v116);
      sub_100A47694(v75, type metadata accessor for CRLWPStorageCRDTData);
      v78 = CRAttributedString.count.getter();
      v107(v76, v77);
      v79 = (v72 & ~(v72 >> 63));
      if (v78 < v79)
      {
        v79 = v78;
      }

      v80 = (v73 & ~(v73 >> 63));
      if (v80 < v79)
      {
        goto LABEL_33;
      }

      v7 = v64;
      if (v78 < v80)
      {
        v80 = v78;
      }

      v119[0] = v66;
      v119[1] = v79;
      v119[2] = v80;
      v119[3] = v66;
      v119[4] = v79;
      v119[5] = v80;
      v81 = v66;
      sub_100A26474(v119, v64);
      v9 = v67;
      v11 = v68;
      v82 = CRAttributedString.Runs.Run.range.getter();
      v83 = v101 + v82;
      if (__OFADD__(v101, v82))
      {
        goto LABEL_34;
      }

      v84 = *(v103 + 36);
      v85 = CRAttributedString.Runs.Run.range.getter();
      v87 = v86 - v85;
      if (__OFSUB__(v86, v85))
      {
        goto LABEL_35;
      }

      v88 = v83 + v87;
      if (__OFADD__(v83, v87))
      {
        goto LABEL_36;
      }

      if (v88 < v83)
      {
        goto LABEL_37;
      }

      sub_100A33634(v118 + v84, v83, v88);
      v89 = *(v102 + 36);
      v90 = CRAttributedString.Runs.Run.range.getter();
      v92 = v91 - v90;
      if (__OFSUB__(v91, v90))
      {
        goto LABEL_38;
      }

      v93 = v83 + v92;
      if (__OFADD__(v83, v92))
      {
        goto LABEL_39;
      }

      if (v93 < v83)
      {
        goto LABEL_40;
      }

      sub_100A33634(&v7[v89], v83, v93);
      sub_10000CAAC(v7, &qword_101A06188, &qword_101483A00);
      sub_10000CAAC(v118, &qword_101A0D850, &unk_10148DE30);
      (*v96)(v68, v67);
      v14 = v62;
      CRAttributedString.Runs.next()();
    }

    while (v99(v62, 1, v67) != 1);
  }

  (*(v95 + 8))(v104, v105);
}

void sub_100A31B44(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5).n128_u64[0];
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a2 == a1)
  {
    if (a2 < 1)
    {
LABEL_7:
      [v2 textRangeForParagraphAtCharIndex:a2];
      return;
    }

    v11 = v7;
    v12 = [v2 characterAtIndex:{objc_msgSend(v2, "previousCharacterIndex:", a2, v8)}];
    if ((v12 & 0xF800) != 0xD800)
    {
      v13 = v2;
      v14 = sub_10027E0D0(v12);
      if (v14)
      {
        v15 = v14;
        static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = CharacterSet.contains(_:)();
        (*(v6 + 8))(v10, v11);
        v2 = v13;
        if (v16)
        {
          goto LABEL_7;
        }

        return;
      }

LABEL_10:
      __break(1u);
    }
  }
}

char *sub_100A31CD0(char *result, char *a2)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (a2 != result)
  {
    return result;
  }

  if ([v2 characterCount] < 1)
  {
    return a2;
  }

  v6 = [v2 textRangeForParagraphAtCharIndex:a2] != a2 || v4 == 0;
  if (!a2 || !v6)
  {
    result = a2;
    goto LABEL_17;
  }

  result = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    return a2;
  }

LABEL_17:
  if (__OFADD__(result, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((result + 1) < result)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

void sub_100A31D74()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - v4;
  v6 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v34);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(qword_101A0CF60, "87&");
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v35 = v29 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    ObjectType = swift_getObjectType();
    v16 = swift_conformsToProtocol2();
    if (!v16)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v17 = sub_1012778D4(ObjectType, v16);

    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  if ([v1 characterCount] < 1)
  {
    return;
  }

  v30 = v11;
  v32 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v18 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v18)
  {
    goto LABEL_11;
  }

  (*(*v18 + 896))();
  sub_100A49D68(&v8[*(v6 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v8, type metadata accessor for CRLWPShapeItemCRDTData);
  v31 = v6;
  v19 = *(v3 + 16);
  v19(v5, v10, v2);
  sub_100A47694(v10, type metadata accessor for CRLWPStorageCRDTData);
  CRAttributedString.attributes(at:effectiveRange:)();
  v20 = *(v3 + 8);
  v29[1] = v3 + 8;
  v21 = v20(v5, v2);
  v22 = *&v1[v32];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  (*(*v22 + 896))(v21);
  sub_100A49D68(&v8[*(v31 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v8, type metadata accessor for CRLWPShapeItemCRDTData);
  v19(v5, &v10[*(v34 + 20)], v2);
  sub_100A47694(v10, type metadata accessor for CRLWPStorageCRDTData);
  CRAttributedString.count.getter();
  v23 = v20(v5, v2);
  v24 = *&v1[v32];
  if (!v24)
  {
LABEL_13:
    __break(1u);
    return;
  }

  (*(*v24 + 896))(v23);
  v25 = v31;
  sub_100A49D68(&v8[*(v31 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);

  sub_100A47694(v8, type metadata accessor for CRLWPShapeItemCRDTData);
  v26 = v35;
  CRAttributedString.addAttributes(_:range:)();
  v27 = (*(*v24 + 912))(v36);
  sub_100824550(v10, v28 + *(v25 + 20));
  v27(v36, 0);

  sub_100A47694(v10, type metadata accessor for CRLWPStorageCRDTData);
  (*(v33 + 8))(v26, v30);
}

id sub_100A3230C(uint64_t a1)
{
  v19[1] = a1;
  v2 = sub_1005B981C(qword_101A0CF60, "87&");
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v19 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v11 = *(v20 - 8);
  *&v12 = __chkstk_darwin(v20).n128_u64[0];
  v14 = v19 - v13;
  result = [v1 characterCount];
  v16 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (result)
  {
    if (v16)
    {
      (*(*v16 + 896))();
      sub_100A49D68(&v7[*(v5 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      v17 = v10;
LABEL_6:
      v18 = v20;
      (*(v11 + 16))(v14, v17, v20);
      sub_100A47694(v10, type metadata accessor for CRLWPStorageCRDTData);
      CRAttributedString.attributes(at:effectiveRange:)();
      sub_10068D144();
      CRAttributedString.Attributes.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100824758();
      CRAttributedString.Attributes.subscript.getter();

      *&v22 = v29;
      BYTE8(v22) = BYTE8(v29);
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1009622D0();
      CRAttributedString.Attributes.subscript.getter();

      *&v22 = v29;
      BYTE8(v22) = BYTE8(v29);
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1008246B0();
      CRAttributedString.Attributes.subscript.getter();

      LODWORD(v22) = v29;
      BYTE4(v22) = BYTE4(v29);
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1009623E4();
      CRAttributedString.Attributes.subscript.getter();

      v22 = v29;
      LOBYTE(v23) = v30;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1008248F0();
      CRAttributedString.Attributes.subscript.getter();

      v26 = v33;
      v27 = v34;
      v28 = v35;
      v22 = v29;
      v23 = v30;
      v25 = v32;
      v24 = v31;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1008244FC();
      CRAttributedString.Attributes.subscript.getter();

      LOBYTE(v22) = v29;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100824608();
      CRAttributedString.Attributes.subscript.getter();

      LOBYTE(v22) = v29;
      CRAttributedString.Attributes.subscript.setter();
      (*(v21 + 8))(v4, v2);
      return (*(v11 + 8))(v14, v18);
    }

    __break(1u);
  }

  else if (v16)
  {
    (*(*v16 + 896))();
    sub_100A49D68(&v7[*(v5 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    v17 = &v10[*(v8 + 20)];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_100A32A1C(uint64_t a1)
{
  v19[1] = a1;
  v2 = sub_1005B981C(qword_101A0CF60, "87&");
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v19 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v11 = *(v20 - 8);
  *&v12 = __chkstk_darwin(v20).n128_u64[0];
  v14 = v19 - v13;
  result = [v1 characterCount];
  v16 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (result)
  {
    if (v16)
    {
      (*(*v16 + 896))();
      sub_100A49D68(&v7[*(v5 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      v17 = v10;
LABEL_6:
      v18 = v20;
      (*(v11 + 16))(v14, v17, v20);
      sub_100A47694(v10, type metadata accessor for CRLWPStorageCRDTData);
      CRAttributedString.attributes(at:effectiveRange:)();
      sub_10068D144();
      CRAttributedString.Attributes.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1009621D4();
      CRAttributedString.Attributes.subscript.getter();

      v22 = v24;
      v23 = v25;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100962084();
      CRAttributedString.Attributes.subscript.getter();

      v22 = v24;
      v23 = v25;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100962228();
      CRAttributedString.Attributes.subscript.getter();

      v22 = v24;
      v23 = v25;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1009624A4();
      CRAttributedString.Attributes.subscript.getter();

      v22 = v24;
      v23 = v25;
      CRAttributedString.Attributes.subscript.setter();
      (*(v21 + 8))(v4, v2);
      return (*(v11 + 8))(v14, v18);
    }

    __break(1u);
  }

  else if (v16)
  {
    (*(*v16 + 896))();
    sub_100A49D68(&v7[*(v5 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    v17 = &v10[*(v8 + 20)];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_100A32F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39[1] = a2;
  v39[2] = a1;
  v8 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v39 - v10;
  v12 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v40 = a4;
  if (!Strong)
  {
    if (a3 == a4)
    {
      return;
    }

    goto LABEL_7;
  }

  v19 = Strong;
  ObjectType = swift_getObjectType();
  v21 = swift_conformsToProtocol2();
  if (!v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = sub_1012778D4(ObjectType, v21);

  if ((v22 & 1) != 0 && a3 != v40)
  {
LABEL_7:
    v23 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
    v24 = *&v5[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v24)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    (*(*v24 + 896))();
    sub_100A49D68(&v14[*(v12 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v14, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v9 + 16))(v11, v17, v8);
    sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
    v25 = CRAttributedString.count.getter();
    v26 = (*(v9 + 8))(v11, v8);
    if (v25 >= (a3 & ~(a3 >> 63)))
    {
      v27 = a3 & ~(a3 >> 63);
    }

    else
    {
      v27 = v25;
    }

    v28 = v40 & ~(v40 >> 63);
    if (v28 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v40 & ~(v40 >> 63);
    }

    if (v28 < v27)
    {
      __break(1u);
    }

    else
    {
      v39[0] = v23;
      v30 = *&v5[v23];
      if (!v30)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (!__OFSUB__(v29, v27))
      {
        (*(*v30 + 896))(v26);
        sub_100A49D68(&v14[*(v12 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);

        sub_100A47694(v14, type metadata accessor for CRLWPShapeItemCRDTData);
        CRAttributedString.addAttributes(_:range:)();
        v31 = (*(*v30 + 912))(v41);
        sub_100824550(v17, v32 + *(v12 + 20));
        v31(v41, 0);

        sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
        if (!__OFSUB__(v40, a3))
        {
          v33 = [v5 textRangeForParagraphsInCharRange:{a3, v40 - a3}];
          v35 = &v33[v34];
          if (!__OFADD__(v33, v34))
          {
            if (v35 >= v33)
            {
              v36 = *&v5[v39[0]];
              if (!v36)
              {
LABEL_33:
                __break(1u);
                return;
              }

              if (!__OFSUB__(v35, v33))
              {
                (*(*v36 + 896))();
                sub_100A49D68(&v14[*(v12 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);

                sub_100A47694(v14, type metadata accessor for CRLWPShapeItemCRDTData);
                CRAttributedString.addAttributes(_:range:)();
                v37 = (*(*v36 + 912))(v41);
                sub_100824550(v17, v38 + *(v12 + 20));
                v37(v41, 0);

                sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
                return;
              }

              goto LABEL_29;
            }

LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_26;
  }
}

void sub_100A33528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v13 = Strong;
  ObjectType = swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = sub_1012778D4(ObjectType, v15);

  if (v16)
  {
LABEL_4:
    v17 = (*(a5 + 8))(a2, a3, v6, a4, a5);
    v19 = v18;
    v21 = type metadata accessor for CRLWPAttributeDictionary(0, a4, a5, v20);
    sub_100A33634(a1 + *(v21 + 36), v17, v19);
    *(v6 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
  }
}

void sub_100A33634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v6 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CRLWPStorageCRDTData(0);
  v12 = __chkstk_darwin(v32);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v15)
  {
    goto LABEL_10;
  }

  v29 = a3;
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = v3;
  v30 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  (*(*v15 + 896))(v12);
  sub_100A49D68(&v11[*(v9 + 20)], v14, type metadata accessor for CRLWPStorageCRDTData);

  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  CRAttributedString.addAttributes(_:range:)();
  v17 = (*(*v15 + 912))(v34);
  sub_100824550(v14, v18 + *(v9 + 20));
  v17(v34, 0);

  v19 = sub_100A47694(v14, type metadata accessor for CRLWPStorageCRDTData);
  if (a2)
  {
    sub_100A31B44(a2, v29);
    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v20 = v8;
  v21 = v30;
  v22 = *(v16 + v30);
  if (!v22)
  {
    goto LABEL_11;
  }

  (*(*v22 + 896))(v19);
  sub_100A49D68(&v11[*(v9 + 20)], v14, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  v23 = v31;
  (*(v31 + 16))(v20, &v14[*(v32 + 20)], v6);
  sub_100A47694(v14, type metadata accessor for CRLWPStorageCRDTData);
  CRAttributedString.count.getter();
  v24 = (*(v23 + 8))(v20, v6);
  v25 = *(v16 + v21);
  if (v25)
  {
    (*(*v25 + 896))(v24);
    sub_100A49D68(&v11[*(v9 + 20)], v14, type metadata accessor for CRLWPStorageCRDTData);

    sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
    CRAttributedString.addAttributes(_:range:)();
    v26 = (*(*v25 + 912))(v34);
    sub_100824550(v14, v27 + *(v9 + 20));
    v26(v34, 0);

    sub_100A47694(v14, type metadata accessor for CRLWPStorageCRDTData);
LABEL_8:
    *(v16 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_100A33B38(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v16)
  {
    goto LABEL_7;
  }

  (*(*v16 + 896))(v13);
  sub_100A49D68(&v11[*(v9 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v6 + 16))(v8, v15, v5);
  sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.count.getter();
  (*(v6 + 8))(v8, v5);
  if (v17 >= (a1 & ~(a1 >> 63)))
  {
    v18 = a1 & ~(a1 >> 63);
  }

  else
  {
    v18 = v17;
  }

  if ((a2 & ~(a2 >> 63)) < v18)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }
}

void sub_100A33D9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v16)
  {
    goto LABEL_11;
  }

  (*(*v16 + 896))(v13);
  sub_100A49D68(&v11[*(v9 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v6 + 16))(v8, v15, v5);
  sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.count.getter();
  (*(v6 + 8))(v8, v5);
  if (v17 >= (a1 & ~(a1 >> 63)))
  {
    v18 = a1 & ~(a1 >> 63);
  }

  else
  {
    v18 = v17;
  }

  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (v17 < a1 + a2 && __OFSUB__(v17, v18))
  {
    goto LABEL_10;
  }
}

void sub_100A3400C(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v3 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  __chkstk_darwin(v3 - 8);
  v52 = &v43 - v4;
  v51 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v46 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  v9 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v54 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v12 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v43 - v13;
  v49 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v49);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v21 = __chkstk_darwin(v19);
  v23 = &v43 - v22;
  v24 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v24)
  {
    goto LABEL_35;
  }

  v43 = v20;
  v25 = 0;
  v55 = 0x7FFFFFFFFFFFFFFFLL;
  (*(*v24 + 896))(v21);
  sub_100A49D68(&v15[*(v49 + 20)], v18, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v26 = v53;
  v27 = v54;
  (*(v12 + 16))(v53, v18, v54);
  sub_100A47694(v18, type metadata accessor for CRLWPStorageCRDTData);
  CRAttributedString.runs.getter();
  (*(v12 + 8))(v26, v27);
  v53 = v23;
  v54 = v19;
  CRAttributedString.Runs.next()();
  v28 = v56;
  v48 = *(v56 + 48);
  v49 = v56 + 48;
  if (v48(v11, 1, v6) == 1)
  {
LABEL_3:
    (*(v43 + 8))(v53, v54);
    return;
  }

  v29 = *(v28 + 32);
  v30 = (v46 + 48);
  v56 = v28 + 32;
  v31 = (v28 + 8);
  v46 = 0;
  v47 = v29;
  v32 = v55;
  v29(v8, v11, v6);
  while (1)
  {
    swift_getKeyPath();
    sub_100824848();
    v33 = v52;
    CRAttributedString.Runs.Run.subscript.getter();

    v34 = v51;
    if ((*v30)(v33, 1, v51) == 1)
    {
      sub_10000CAAC(v33, &unk_101A096C0, &qword_101489120);
LABEL_10:
      (*v31)(v8, v6);
      v35 = v55;
      if (v32 != v55)
      {
        goto LABEL_3;
      }

      v36 = v46;
      if (v25 != v46)
      {
        goto LABEL_3;
      }

      goto LABEL_6;
    }

    v37 = v50;
    sub_100A49E4C(v33, v50, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    v38 = (v37 + *(v34 + 24));
    v39 = *v38 == v44 && v38[1] == v45;
    if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_100A47694(v50, type metadata accessor for CRLWPHyperlinkSmartFieldData);
      goto LABEL_10;
    }

    v35 = CRAttributedString.Runs.Run.range.getter();
    v40 = CRAttributedString.Runs.Run.range.getter();
    v36 = v41 - v40;
    if (__OFSUB__(v41, v40))
    {
      break;
    }

    (*v31)(v8, v6);
    if (v32 != v55 || v25 != v46)
    {
      v42 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_32;
      }

      if (__OFADD__(v32, v25))
      {
        goto LABEL_33;
      }

      if (v42 <= v32 + v25)
      {
        v42 = v32 + v25;
      }

      if (v35 >= v32)
      {
        v35 = v32;
      }

      v36 = v42 - v35;
      if (__OFSUB__(v42, v35))
      {
        goto LABEL_34;
      }
    }

    sub_100A47694(v50, type metadata accessor for CRLWPHyperlinkSmartFieldData);
LABEL_6:
    CRAttributedString.Runs.next()();
    v25 = v36;
    v32 = v35;
    if (v48(v11, 1, v6) == 1)
    {
      goto LABEL_3;
    }

    v47(v8, v11, v6);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100A34728()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_10061655C(v7, qword_101AD6F98);
  sub_1005EB3DC(v0, qword_101AD6F98);
  static CharacterSet.whitespacesAndNewlines.getter();
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  return (v8)(v6, v0);
}

id sub_100A348A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLWPStorage();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100A34A80()
{
  v1 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v24 = v0;
  v14 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v14)
  {
    (*(*v14 + 896))(v11);
    v15 = *(v1 + 20);
    v22 = v1;
    sub_100A49D68(&v3[v15], v5, type metadata accessor for CRLWPStorageCRDTData);

    sub_100A47694(v3, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v7 + 16))(v9, &v5[*(v23 + 5)], v6);
    v23 = type metadata accessor for CRLWPStorageCRDTData;
    sub_100A47694(v5, type metadata accessor for CRLWPStorageCRDTData);
    sub_10001A2F8(qword_101A0DB18, &unk_1019FFD10, &unk_101483A60, &protocol conformance descriptor for CRAttributedString<A>);
    CRType.copy()();
    v16 = (*(v7 + 8))(v9, v6);
    (*(*v14 + 896))(v16);
    v17 = v22;
    sub_100A49D68(&v3[*(v22 + 20)], v5, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v3, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v7 + 40))(v5, v13, v6);
    v18 = (*(*v14 + 912))(v25);
    sub_100824550(v5, v19 + *(v17 + 20));
    v18(v25, 0);

    sub_100A47694(v5, v23);
    v20 = v24;
    *(v24 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) = 0;
    *(v20 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_100A34E98()
{
  v1 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v12)
  {
    (*(*v12 + 896))(v9);
    sub_100A49D68(&v7[*(v5 + 20)], v11, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v2 + 16))(v4, v11, v1);
    sub_100A47694(v11, type metadata accessor for CRLWPStorageCRDTData);
    v13 = CRAttributedString.attributedString.getter();
    (*(v2 + 8))(v4, v1);
    [v13 length];
  }

  else
  {
    __break(1u);
  }
}

char *sub_100A3513C(char **a1, uint64_t a2, char *a3)
{
  v4 = v3;
  result = [v4 characterCount];
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a2 + 32;
    v12 = *(a2 + 16);
    do
    {
      if (__OFSUB__(v12, v10))
      {
        goto LABEL_44;
      }

      v13 = v10 + (v12 - v10) / 2;
      if (__OFADD__(v10, (v12 - v10) / 2))
      {
        goto LABEL_45;
      }

      if (v13 >= v9)
      {
        goto LABEL_46;
      }

      v14 = (v11 + 24 * v13);
      v16 = *v14;
      v15 = v14[1];
      v18 = v15 < a3 || result > a3;
      if (v16 < a3 && v15 <= a3 && v18)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_47;
        }

        v13 = v12;
      }

      v12 = v13;
    }

    while (v10 != v13);
    if (v13 >= v9)
    {
      v26 = *(v11 + 24 * v9 - 16);
      goto LABEL_36;
    }

    v21 = (v11 + 24 * v13);
    v22 = *v21;
    v23 = v21[1];
    if (*v21 == a3 || result == a3 && v23 == a3 || (v22 <= a3 ? (v24 = v23 <= a3) : (v24 = 1), !v24))
    {
      v30 = v21[2];
      v26 = *v21;
      v31 = v30;
      goto LABEL_40;
    }

    if (v13)
    {
      v25 = v13 - 1;
      if (v25 >= v9)
      {
        goto LABEL_50;
      }

      v26 = *(v11 + 24 * v25 + 8);
    }

    else
    {
      v26 = 0;
    }

    if (v22 < v26)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    goto LABEL_38;
  }

  v26 = 0;
LABEL_36:
  result = [v4 range];
  v28 = __OFADD__(result, v27);
  v29 = &result[v27];
  if (v28)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return result;
  }

  if (v29 < v26)
  {
    goto LABEL_49;
  }

LABEL_38:
  v30 = 0;
LABEL_40:
  *a1 = v30;
  return v26;
}

void sub_100A3539C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v15 < a1)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    return;
  }

  (*(*v16 + 896))(v12);
  sub_100A49D68(&v10[*(v8 + 20)], v14, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v5 + 16))(v7, v14, v4);
  sub_100A47694(v14, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.count.getter();
  (*(v5 + 8))(v7, v4);
  if (v17 >= (a1 & ~(a1 >> 63)))
  {
    v18 = (a1 & ~(a1 >> 63));
  }

  else
  {
    v18 = v17;
  }

  v19 = v15 & ~(v15 >> 63);
  if (v19 < v18)
  {
    goto LABEL_17;
  }

  if (v17 >= v19)
  {
    v20 = v15 & ~(v15 >> 63);
  }

  else
  {
    v20 = v17;
  }

  KeyPath = swift_getKeyPath();
  v22 = v2;
  sub_100955B74(KeyPath, v22, v18, v20);
  v24 = v23;
  v26 = v25;

  if (v26)
  {
    if (*(v24 + 16))
    {
      sub_1000C1080(v24, 1);
      return;
    }

    goto LABEL_18;
  }
}

void sub_100A35820(uint64_t a1, int a2)
{
  v34 = a2;
  v38 = a1;
  v3 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33[-v5];
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v37 = v2;
  v14 = *&v2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v14)
  {
    goto LABEL_24;
  }

  (*(*v14 + 896))(v11);
  sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
  v35 = *(v4 + 16);
  v35(v6, v13, v3);
  sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
  v15 = CRAttributedString.attributedString.getter();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v17 = [v15 length];

  if (v17 >= 1 && (v38 & 0x8000000000000000) == 0)
  {
    v18 = *&v37[v36];
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    (*(*v18 + 896))();
    sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    v35(v6, v13, v3);
    sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
    v19 = CRAttributedString.attributedString.getter();
    v16(v6, v3);
    v20 = [v19 length];

    if (v20 < v38)
    {
      return;
    }

    v21 = v37;
    v22 = *&v37[v36];
    if (!v22)
    {
LABEL_26:
      __break(1u);
      return;
    }

    (*(*v22 + 896))();
    sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    v35(v6, v13, v3);
    sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
    v23 = CRAttributedString.attributedString.getter();
    v16(v6, v3);
    v24 = [v23 length];

    v25 = v38;
    if (v24 == v38)
    {
      v25 = [v21 previousCharacterIndex:v38];
    }

    if (sub_10027E3D4([v21 characterAtIndex:v25]))
    {
      v26 = [v21 rangeOfNearestWhitespaceBeforeCharIndex:v25 includingBreaks:1];
      if (v26 != NSNotFound.getter())
      {
        v25 = v26;
      }
    }

    v27 = [v21 wordAtCharIndex:v25 includePreviousWord:1];
    v29 = v28;
    v30 = NSNotFound.getter();
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v32 = v25;
    }

    else
    {
      v32 = v27;
    }

    if (!v31 && (v34 & 1) != 0)
    {
      v38 = v27 + v29;
      if (__OFADD__(v27, v29))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v32 = v27;
    }

    if (!__OFSUB__(v38, v32))
    {
      return;
    }

    __break(1u);
    goto LABEL_23;
  }
}

void sub_100A35DB8(uint64_t a1, int a2)
{
  v3 = v2;
  v29 = a2;
  v5 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [v2 range];
  v34 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v16 = *&v2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v16)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v27 = 0;
  (*(*v16 + 896))();
  v32 = v9;
  sub_100A49D68(&v11[*(v9 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  v31 = *(v6 + 16);
  v31(v8, v15, v5);
  sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.attributedString.getter();
  v18 = *(v6 + 8);
  v33 = v6 + 8;
  v30 = v18;
  v18(v8, v5);
  v19 = [v17 length];

  if (v19 > a1 && sub_10027E3D4([v3 characterAtIndex:a1]))
  {
    v20 = a1;
    if (v28 >= a1)
    {
      goto LABEL_14;
    }

    v20 = a1;
    while (1)
    {
      v21 = v20 - 1;
      v22 = [v3 characterAtIndex:v20 - 1];
      if ((sub_10027E3D4(v22) & 1) == 0 && ((v29 & 1) == 0 || !sub_100A49F0C(v22)))
      {
        break;
      }

      --v20;
      if (v28 >= v21)
      {
        v20 = v28;
        break;
      }
    }

LABEL_14:
    while (1)
    {
      v23 = *&v3[v34];
      if (!v23)
      {
        break;
      }

      (*(*v23 + 896))();
      sub_100A49D68(&v11[*(v32 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
      v31(v8, v15, v5);
      sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
      v24 = CRAttributedString.attributedString.getter();
      v30(v8, v5);
      v25 = [v24 length];

      if (a1 >= v25 || (v26 = [v3 characterAtIndex:a1], (sub_10027E3D4(v26) & 1) == 0) && ((v29 & 1) == 0 || !sub_100A49F0C(v26)))
      {
        if (!__OFSUB__(a1, v20))
        {
          return;
        }

        __break(1u);
        break;
      }

      ++a1;
    }

    __break(1u);
    goto LABEL_23;
  }
}

void sub_100A36400(uint64_t a1)
{
  if ((*(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) & 1) == 0)
  {
    sub_100A2C630();
  }

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges);
  if (*(v3 + 16) > a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (__OFSUB__(*(v3 + 16 * a1 + 40), *(v3 + 16 * a1 + 32)))
    {
      __break(1u);
    }
  }
}

void sub_100A364C0(uint64_t a1)
{
  v2 = [v1 paragraphIndexAtCharIndex:a1];
  if ((v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges] & 1) == 0)
  {
    sub_100A2C630();
  }

  v3 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges];
  if (v2 < *(v3 + 16))
  {
    if (v2 < 0)
    {
      __break(1u);
    }

    else if (__OFSUB__(*(v3 + 16 * v2 + 40), *(v3 + 16 * v2 + 32)))
    {
      __break(1u);
    }
  }
}

void sub_100A3659C(uint64_t a1, Swift::Int a2, Swift::Int a3)
{
  v43.location = a2;
  v43.length = a3;
  v4 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v51 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v47 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v50 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v14 = *(v50 - 8);
  __chkstk_darwin(v50);
  v16 = &v42 - v15;
  v17 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v24 = __chkstk_darwin(v44);
  v52 = &v42 - v25;
  if (a1 == 6)
  {
    v42 = v23;
    v26 = *(v45 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (v26)
    {
      (*(*v26 + 896))(v24);
      sub_100A49D68(&v19[*(v17 + 20)], v22, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v19, type metadata accessor for CRLWPShapeItemCRDTData);
      v27 = v50;
      (*(v14 + 16))(v16, v22, v50);
      sub_100A47694(v22, type metadata accessor for CRLWPStorageCRDTData);
      CRAttributedString.runs.getter();
      (*(v14 + 8))(v16, v27);
      v28 = v44;
      CRAttributedString.Runs.next()();
      v29 = v48;
      v49 = v48[6];
      v50 = (v48 + 6);
      if (v49(v13, 1, v8) == 1)
      {
        v47 = _swiftEmptyArrayStorage;
      }

      else
      {
        v31 = v29[4];
        v30 = v29 + 4;
        v48 = v31;
        v32 = v47 + 48;
        v33 = (v30 - 3);
        v47 = _swiftEmptyArrayStorage;
        (v31)(v10, v13, v8);
        while (1)
        {
          swift_getKeyPath();
          sub_100824848();
          CRAttributedString.Runs.Run.subscript.getter();

          v34 = v51;
          if ((*v32)(v6, 1, v51) == 1)
          {
            (*v33)(v10, v8);
            sub_10000CAAC(v6, &unk_101A096C0, &qword_101489120);
          }

          else
          {
            v35 = v30;
            v36 = v46;
            sub_100A49E4C(v6, v46, type metadata accessor for CRLWPHyperlinkSmartFieldData);
            sub_100A3400C(*(v36 + *(v34 + 24)), *(v36 + *(v34 + 24) + 8));
            v55 = _NSRange.intersection(_:)(v43);
            if (v55.is_nil)
            {
              (*v33)(v10, v8);
              sub_100A47694(v36, type metadata accessor for CRLWPHyperlinkSmartFieldData);
              v30 = v35;
              v28 = v44;
            }

            else
            {
              v54 = v34;
              v37 = sub_10002C58C(&v53);
              sub_100A49D68(v36, v37, type metadata accessor for CRLWPHyperlinkSmartFieldData);
              v38 = v47;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v38 = sub_100B3865C(0, *(v38 + 2) + 1, 1, v38);
              }

              v30 = v35;
              v40 = *(v38 + 2);
              v39 = *(v38 + 3);
              v47 = v38;
              v28 = v44;
              if (v40 >= v39 >> 1)
              {
                v47 = sub_100B3865C((v39 > 1), v40 + 1, 1, v47);
              }

              (*v33)(v10, v8);
              v41 = v47;
              *(v47 + 2) = v40 + 1;
              sub_10000BF3C(&v53, &v41[32 * v40 + 32]);
              sub_100A47694(v46, type metadata accessor for CRLWPHyperlinkSmartFieldData);
            }
          }

          CRAttributedString.Runs.next()();
          if (v49(v13, 1, v8) == 1)
          {
            break;
          }

          (v48)(v10, v13, v8);
        }
      }

      (*(v42 + 8))(v52, v28);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100A36D98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v35 = a3;
  v7 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 6)
  {
    v18 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v18 >= a1)
    {
      v19 = *&v4[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
      if (!v19)
      {
LABEL_24:
        __break(1u);
        return;
      }

      (*(*v19 + 896))(v15);
      sub_100A49D68(&v13[*(v11 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
      (*(v8 + 16))(v10, v17, v7);
      sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
      v20 = CRAttributedString.count.getter();
      (*(v8 + 8))(v10, v7);
      if (v20 >= (a1 & ~(a1 >> 63)))
      {
        v21 = (a1 & ~(a1 >> 63));
      }

      else
      {
        v21 = v20;
      }

      v22 = v18 & ~(v18 >> 63);
      if (v22 >= v21)
      {
        if (v20 >= v22)
        {
          v23 = v18 & ~(v18 >> 63);
        }

        else
        {
          v23 = v20;
        }

        KeyPath = swift_getKeyPath();
        v25 = v4;
        sub_10095F6B0(KeyPath, v25, v21, v23);
        v27 = v26;
        v29 = v28;

        v30 = v27;
        if ((v29 & 1) == 0)
        {
          goto LABEL_15;
        }

        if (v27[2])
        {
          v30 = v27[4];
LABEL_15:
          v31 = v30;
          sub_1000C10AC(v27, v29 & 1);
          if (v30)
          {
            v32 = v35;
            if (v35)
            {
              *v32 = [v31 range];
              v32[1] = v33;
            }
          }

          else
          {
            [v25 hyperlinkFieldAtCharIndex:a1 effectiveRange:v35];
          }

          return;
        }

        goto LABEL_23;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_22;
  }
}

void sub_100A372E0(int64_t a1, void *a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) & 1) == 0)
  {
    sub_100A2CB04();
  }

  v5 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns);
  v6 = *(v5 + 16);
  if (v6 > a1)
  {
    if (a2)
    {
      if (a1 < 0)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = v5 + 56 * a1;
      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
      v10 = __OFSUB__(v9, v8);
      v11 = v9 - v8;
      if (v10)
      {
LABEL_15:
        __break(1u);
        return;
      }

      *a2 = v8;
      a2[1] = v11;
      v6 = *(v5 + 16);
    }

    else if (a1 < 0)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v6 > a1)
    {
      v12 = *(v5 + 56 * a1 + 48);
      return;
    }

    goto LABEL_13;
  }
}

unint64_t sub_100A37480(uint64_t a1, uint64_t *a2)
{
  result = NSNotFound.getter();
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) & 1) == 0)
  {
    v6 = result;
    sub_100A2C630();
    result = v6;
  }

  v7 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges);
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = 0;
  v10 = v7 + 32;
  v11 = v8;
  do
  {
    if (__OFSUB__(v11, v9))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    result = v9 + (v11 - v9) / 2;
    if (__OFADD__(v9, (v11 - v9) / 2))
    {
      goto LABEL_22;
    }

    if (result >= v8)
    {
      goto LABEL_23;
    }

    if (*(v10 + 16 * result + 8) <= a1)
    {
      v9 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_24;
      }

      result = v11;
    }

    v11 = result;
  }

  while (v9 != result);
  if (result >= v8)
  {
    result = v8 - 1;
    v17 = (v10 + 16 * (v8 - 1));
    v13 = *v17;
    v18 = v17[1];
    v15 = __OFSUB__(v18, v13);
    v16 = v18 - v13;
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v12 = (v10 + 16 * result);
  v13 = *v12;
  v14 = v12[1];
  v15 = __OFSUB__(v14, v13);
  v16 = v14 - v13;
  if (!v15)
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_16:
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = 0;
LABEL_18:
  if (a2)
  {
    *a2 = v13;
    a2[1] = v16;
  }

  return result;
}

void sub_100A37620(uint64_t a1, uint64_t *a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) & 1) == 0)
  {
    sub_100A2CB04();
  }

  v5 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0;
    if (a2)
    {
      goto LABEL_20;
    }

    return;
  }

  v7 = 0;
  v8 = v5 + 32;
  v9 = v5 + 40;
  v10 = v6;
  do
  {
    if (__OFSUB__(v10, v7))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v11 = v7 + (v10 - v7) / 2;
    if (__OFADD__(v7, (v10 - v7) / 2))
    {
      goto LABEL_23;
    }

    if (v11 >= v6)
    {
      goto LABEL_24;
    }

    if (*(v9 + 56 * v11) <= a1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_25;
      }

      v11 = v10;
    }

    v10 = v11;
  }

  while (v7 != v11);
  if (v11 >= v6)
  {
    v17 = v8 + 56 * v6;
    v14 = *(v17 - 56);
    v18 = *(v17 - 48);
    v15 = v18 - v14;
    if (!__OFSUB__(v18, v14))
    {
      v16 = (v17 - 40);
      goto LABEL_19;
    }

LABEL_27:
    __break(1u);
    return;
  }

  v12 = (v8 + 56 * v11);
  v14 = *v12;
  v13 = v12[1];
  v15 = v13 - *v12;
  if (__OFSUB__(v13, *v12))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = (v12 + 2);
LABEL_19:
  v19 = *v16;
  if (!a2)
  {
    return;
  }

LABEL_20:
  *a2 = v14;
  a2[1] = v15;
}

void sub_100A37908(uint64_t a1)
{
  if ((v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns] & 1) == 0)
  {
    sub_100A2CB04();
  }

  v3 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns];
  if (*(v3 + 16) > a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = (v3 + 56 * a1);
      v5 = v4[7];
      if (!v5)
      {
        return;
      }

      v6 = v4[6];
      v7 = v4[8];
      v8 = v5;
      v9 = v6;
      v10 = [v1 listNumberAtParIndex:a1];
      v11 = v8;
      v12 = sub_10084A9D4();

      if ((v7 & 0x8000000000000000) == 0)
      {
        if (v7 < *(v12 + 16))
        {
          v13 = *(v12 + 8 * v7 + 32);

          v14 = objc_opt_self();
          if ((v10 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v10))
            {
              v15 = [v14 crlwp_stringForValue:v10 withListNumberFormat:v13 includeFormatting:1];
              if (v15)
              {
                v16 = v15;
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }

              else
              {
              }

              return;
            }

LABEL_18:
            __break(1u);
            return;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_100A37AE0(uint64_t a1)
{
  if ((*(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) & 1) == 0)
  {
    sub_100A2A960();
  }

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__listRuns);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  v6 = v3 + 32;
  result = 1;
  while (2)
  {
    v8 = v6 + 48 * v5++;
    v9 = *(v8 + 40);
    v10 = *(v9 + 16);
    v11 = (v9 + 32);
    v12 = v10;
    while (v12)
    {
      v13 = *v11++;
      --v12;
      if (v13 == a1)
      {
        v14 = *(v8 + 32);
        result = v14 - 1;
        if (!__OFSUB__(v14, 1))
        {
          v15 = result + v10;
          v16 = (v9 + 32);
          while (1)
          {
            if (!v10)
            {
              return v15;
            }

            if (result == 9223372036854775807)
            {
              break;
            }

            v17 = *v16++;
            ++result;
            --v10;
            if (v17 >= a1)
            {
              return result;
            }
          }

          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    if (v5 != v4)
    {
      continue;
    }

    break;
  }

  return result;
}

void sub_100A37C40(int64_t a1, void *a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) & 1) == 0)
  {
    sub_100A2CB04();
  }

  v5 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns);
  v6 = *(v5 + 16);
  if (v6 > a1)
  {
    if (a2)
    {
      if (a1 < 0)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = v5 + 56 * a1;
      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
      v10 = __OFSUB__(v9, v8);
      v11 = v9 - v8;
      if (v10)
      {
LABEL_15:
        __break(1u);
        return;
      }

      *a2 = v8;
      a2[1] = v11;
      v6 = *(v5 + 16);
    }

    else if (a1 < 0)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v6 > a1)
    {
      v12 = *(v5 + 56 * a1 + 56);
      return;
    }

    goto LABEL_13;
  }
}

void sub_100A37E24(int64_t a1, void *a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) & 1) == 0)
  {
    sub_100A2CB04();
  }

  v5 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns);
  v6 = *(v5 + 16);
  if (v6 > a1)
  {
    if (a2)
    {
      if (a1 < 0)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = v5 + 56 * a1;
      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
      v10 = __OFSUB__(v9, v8);
      v11 = v9 - v8;
      if (v10)
      {
LABEL_15:
        __break(1u);
        return;
      }

      *a2 = v8;
      a2[1] = v11;
      v6 = *(v5 + 16);
    }

    else if (a1 < 0)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v6 > a1)
    {
      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_100A37F34(uint64_t a1, void *a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) & 1) == 0)
  {
    sub_100A2A960();
  }

  v5 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__listRuns);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = v5 + 32;
  result = 1;
  while (2)
  {
    v10 = (v8 + 48 * v7++);
    v11 = v10[5];
    v12 = *(v11 + 16);
    v13 = (v11 + 32);
    while (v12)
    {
      v14 = *v13++;
      --v12;
      if (v14 == a1)
      {
        result = v10[4];
        if (a2)
        {
          v15 = v10[2];
          v16 = v10[3];
          v17 = __OFSUB__(v16, v15);
          v18 = v16 - v15;
          if (v17)
          {
            __break(1u);
          }

          else
          {
            *a2 = v15;
            a2[1] = v18;
          }
        }

        return result;
      }
    }

    if (v7 != v6)
    {
      continue;
    }

    break;
  }

  return result;
}

void sub_100A38080(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v14)
  {
    (*(*v14 + 896))(v11);
    sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v4 + 16))(v6, v13, v3);
    sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
    v15 = CRAttributedString.attributedString.getter();
    (*(v4 + 8))(v6, v3);
    v16 = [v15 string];

    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    [v16 characterAtIndex:a1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100A38364(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v36 - v6;
  v7 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v40 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v40);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v41 = v2;
  sub_100A33D9C(a1, a2);
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_12;
  }

  v22 = v19;
  if (v21 < v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v37 = v5;
  v23 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v24 = *&v41[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  (*(*v24 + 896))();
  sub_100A49D68(&v12[*(v40 + 20)], v18, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v12, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v8 + 16))(v10, v18, v7);
  sub_100A47694(v18, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.count.getter();
  v26 = (*(v8 + 8))(v10, v7);
  if (v25 >= (v22 & ~(v22 >> 63)))
  {
    v27 = v22 & ~(v22 >> 63);
  }

  else
  {
    v27 = v25;
  }

  if ((v21 & ~(v21 >> 63)) < v27)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28 = v41;
  v29 = *&v41[v23];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  (*(*v29 + 896))(v26);
  sub_100A49D68(&v12[*(v40 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
  v30 = v28;
  sub_100A47694(v12, type metadata accessor for CRLWPShapeItemCRDTData);
  v31 = v38;
  CRAttributedString.subscript.getter();
  sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
  v32 = v37;
  v33 = CRAttributedString.Substring.attributedString.getter();
  (*(v39 + 8))(v31, v32);
  v34 = [v33 string];
  if (v34)
  {
    v35 = v34;

    String.init(_:)(v35);
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_100A38854(uint64_t a1, uint64_t a2)
{
  if (*(*&v2[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns] + 16))
  {
    return 1;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  v10[4] = sub_100A49EBC;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = *"";
  v10[2] = sub_100A38998;
  v10[3] = &unk_101892550;
  v8 = _Block_copy(v10);

  [v2 enumerateSmartFieldsWithAttributeKind:6 inRange:a1 usingBlock:{a2, v8}];
  _Block_release(v8);
  swift_beginAccess();
  v3 = *v7;

  return v3;
}

uint64_t sub_100A38998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v11[3] = swift_getObjectType();
  v11[0] = a2;

  swift_unknownObjectRetain();
  v9(v11, a3, a4, a5);

  return sub_100005070(v11);
}

void sub_100A38A8C()
{
  v1 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v12)
  {
    (*(*v12 + 896))(v9);
    sub_100A49D68(&v7[*(v5 + 20)], v11, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v2 + 16))(v4, v11, v1);
    sub_100A47694(v11, type metadata accessor for CRLWPStorageCRDTData);
    v13 = CRAttributedString.attributedString.getter();
    (*(v2 + 8))(v4, v1);
    [v13 length];
  }

  else
  {
    __break(1u);
  }
}

void sub_100A38CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v18)
  {
    (*(*v18 + 896))(v15);
    sub_100A49D68(&v13[*(v11 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v8 + 16))(v10, v17, v7);
    sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
    v19 = CRAttributedString.attributedString.getter();
    (*(v8 + 8))(v10, v7);
    v20 = [v19 string];

    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    [v20 getCharacters:a1 range:{a2, a3}];
  }

  else
  {
    __break(1u);
  }
}

char *sub_100A39020(char *a1, char *a2)
{
  v86 = a2;
  v96 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v5 = *(v96 - 8);
  __chkstk_darwin(v96 - 8);
  v88 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v85 - v8;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v87 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v93 = a1;
  v94 = &v85 - v16;
  v17 = a1;
  if (a1 >= 1)
  {
    v18 = sub_10027E3D4([v2 characterAtIndex:{a1 - 1, v15}]);
    v17 = v93;
    if ((v18 & 1) == 0)
    {
      v91 = v5;
      v92 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
      v89 = (v5 + 8);
      v90 = (v5 + 16);
      v17 = v93;
      while (1)
      {
        v39 = [v2 wordAtCharIndex:v17 - 1 includePreviousWord:0];
        if (v39 == NSNotFound.getter())
        {
          break;
        }

        v17 = v39;
        v3 = (v39 - 1);
        if (v39 < 1)
        {
          break;
        }

        v97 = v39;
        v40 = v2;
        v41 = *&v2[v92];
        if (!v41)
        {
          goto LABEL_20;
        }

        (*(*v41 + 896))();
        v42 = v94;
        sub_100A49D68(&v11[*(v9 + 20)], v94, type metadata accessor for CRLWPStorageCRDTData);
        sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
        v43 = v95;
        v44 = v96;
        (*v90)(v95, v42, v96);
        sub_100A47694(v42, type metadata accessor for CRLWPStorageCRDTData);
        v45 = CRAttributedString.attributedString.getter();
        (*v89)(v43, v44);
        v46 = [v45 string];

        if (!v46)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = String._bridgeToObjectiveC()();
        }

        v47 = [v46 crlwp_isHyphenationAtCharacterIndex:v39 - 1];

        v2 = v40;
        v5 = v91;
        v17 = v97;
        if (!v47)
        {
          break;
        }

        v17 = (v39 - 1);
        if (v39 == 1)
        {
          v17 = 0;
          break;
        }
      }
    }
  }

  v97 = v17;
  v19 = v2;
  v92 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v20 = *&v2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v20)
  {
    goto LABEL_21;
  }

  v95 = &v93[v86];
  (*(*v20 + 896))();
  v21 = v87;
  sub_100A49D68(&v11[*(v9 + 20)], v87, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  v22 = *(v5 + 2);
  v89 = v9;
  v23 = v11;
  v24 = v88;
  v25 = v5;
  v26 = v96;
  v93 = v22;
  (v22)(v88, v21, v96);
  sub_100A47694(v21, type metadata accessor for CRLWPStorageCRDTData);
  v27 = CRAttributedString.attributedString.getter();
  v90 = *(v25 + 1);
  (v90)(v24, v26);
  v91 = [v27 length];

  v85 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = v95;
  v94 = inited + 32;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  v86 = v19;
  v29 = *&v19[v92];
  if (!v29)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = inited;
  (*(*v29 + 896))();
  sub_100A49D68(v23 + *(v89 + 20), v21, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v23, type metadata accessor for CRLWPShapeItemCRDTData);
  (v93)(v24, v21, v26);
  sub_100A47694(v21, type metadata accessor for CRLWPStorageCRDTData);
  v30 = CRAttributedString.attributedString.getter();
  (v90)(v24, v26);
  v31 = [v30 length];

  v3[12] = &type metadata for Int;
  v3[13] = &protocol witness table for Int;
  v3[9] = v31;
  v32 = v95;
  if (v91 < v95)
  {
LABEL_23:
    v97 = objc_opt_self();
    LODWORD(v48) = [v97 _atomicIncrementAssertCount];
    v98 = [objc_allocWithZone(NSString) init];
    v49 = v3;
    sub_100604538(v3, &v98, "Illegal range past end of storage: %lu vs %lu", 45, 2u);
    StaticString.description.getter("rangeByExpanding(toIncludePartialWords:)", 40, 2);
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
    v51 = String._bridgeToObjectiveC()();

    v52 = [v51 lastPathComponent];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (qword_1019F20A0 != -1)
    {
LABEL_52:
      swift_once();
    }

    v56 = static OS_os_log.crlAssert;
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_10146CA70;
    *(v57 + 56) = &type metadata for Int32;
    *(v57 + 64) = &protocol witness table for Int32;
    *(v57 + 32) = v48;
    v58 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v57 + 96) = v58;
    v59 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v57 + 104) = v59;
    *(v57 + 72) = v50;
    *(v57 + 136) = &type metadata for String;
    v60 = sub_1000053B0();
    *(v57 + 112) = v53;
    *(v57 + 120) = v55;
    *(v57 + 176) = &type metadata for UInt;
    *(v57 + 184) = &protocol witness table for UInt;
    *(v57 + 144) = v60;
    *(v57 + 152) = 2009;
    v61 = v98;
    *(v57 + 216) = v58;
    *(v57 + 224) = v59;
    *(v57 + 192) = v61;
    v62 = v50;
    v63 = v61;
    v64 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v64, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v57);

    v65 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v65, "Illegal range past end of storage: %lu vs %lu", 45, 2, v49);

    sub_10063DF98(v49, "Illegal range past end of storage: %lu vs %lu", v85, v86);
    type metadata accessor for __VaListBuilder();
    v48 = swift_allocObject();
    v48[2] = 8;
    v48[3] = 0;
    v53 = v48 + 3;
    v48[4] = 0;
    v48[5] = 0;
    v49 = *(v49 + 16);
    if (!v49)
    {
LABEL_54:
      v79 = __VaListBuilder.va_list()();
      StaticString.description.getter("rangeByExpanding(toIncludePartialWords:)", 40, 2);
      v80 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
      v81 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Illegal range past end of storage: %lu vs %lu", v85, v86);
      v82 = String._bridgeToObjectiveC()();

      [v97 handleFailureInFunction:v80 file:v81 lineNumber:2009 isFatal:1 format:v82 args:v79];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v83, v84);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v55 = 0;
    while (1)
    {
      v50 = sub_100020E58((v94 + 40 * v55), *(v94 + 40 * v55 + 24));
      v66 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v67 = *v53;
      v68 = *(v66 + 16);
      v69 = __OFADD__(*v53, v68);
      v70 = *v53 + v68;
      if (v69)
      {
        goto LABEL_49;
      }

      v71 = v66;
      v50 = v48[4];
      if (v50 >= v70)
      {
        goto LABEL_41;
      }

      if (v50 + 0x4000000000000000 < 0)
      {
        goto LABEL_50;
      }

      v72 = v48[5];
      if (2 * v50 > v70)
      {
        v70 = 2 * v50;
      }

      v48[4] = v70;
      if ((v70 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_51;
      }

      v73 = swift_slowAlloc();
      v48[5] = v73;
      if (v72)
      {
        break;
      }

LABEL_42:
      if (!v73)
      {
        __break(1u);
        goto LABEL_54;
      }

      v75 = *(v71 + 16);
      if (v75)
      {
        v76 = (v71 + 32);
        v77 = *v53;
        while (1)
        {
          v78 = *v76++;
          *&v73[8 * v77] = v78;
          v77 = *v53 + 1;
          if (__OFADD__(*v53, 1))
          {
            break;
          }

          *v53 = v77;
          if (!--v75)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_26:

      if (++v55 == v49)
      {
        goto LABEL_54;
      }
    }

    if (v73 != v72 || v73 >= &v72[8 * v67])
    {
      memmove(v73, v72, 8 * v67);
    }

    v50 = v48;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_41:
    v73 = v48[5];
    goto LABEL_42;
  }

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v33 = [v86 wordAtCharIndex:v32 includePreviousWord:0];
  v35 = v34;
  v36 = NSNotFound.getter();
  v37 = &v33[v35];
  if (v33 == v36)
  {
    v37 = v32;
  }

  result = v97;
  if (__OFSUB__(v37, v97))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return result;
}

void sub_100A39C38(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v16)
  {
    (*(*v16 + 896))(v13);
    sub_100A49D68(&v11[*(v9 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v6 + 16))(v8, v15, v5);
    sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
    v17 = CRAttributedString.attributedString.getter();
    (*(v6 + 8))(v8, v5);
    v18 = [v17 string];

    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

    [v18 crlwp_isAllWhitespaceInRange:{a1, a2}];
  }

  else
  {
    __break(1u);
  }
}

double sub_100A39F34@<D0>(uint64_t *a1@<X8>)
{
  sub_100A1B8A0(*v1, v12);
  a1[3] = &type metadata for CRLWPTextPresetData;
  a1[4] = sub_100967AAC();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = v24;
  *(v3 + 208) = v23;
  *(v3 + 224) = v4;
  *(v3 + 240) = v25;
  *(v3 + 256) = v26;
  v5 = v20;
  *(v3 + 144) = v19;
  *(v3 + 160) = v5;
  v6 = v22;
  *(v3 + 176) = v21;
  *(v3 + 192) = v6;
  v7 = v16;
  *(v3 + 80) = v15;
  *(v3 + 96) = v7;
  v8 = v18;
  *(v3 + 112) = v17;
  *(v3 + 128) = v8;
  v9 = v12[1];
  *(v3 + 16) = v12[0];
  *(v3 + 32) = v9;
  result = *&v13;
  v11 = v14;
  *(v3 + 48) = v13;
  *(v3 + 64) = v11;
  return result;
}

id sub_100A39FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = [v6 range];
  if (!a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = v13;
  v16 = objc_allocWithZone(CRLWPSearch);
  v17 = String._bridgeToObjectiveC()();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1007A5954;
  aBlock[3] = &unk_101892500;
  v18 = _Block_copy(aBlock);

  v19 = [v16 initWithString:v17 options:a3 hitBlock:v18 storage:v6 range:v14 searchCanvasDelegate:{v15, a4}];

  _Block_release(v18);

  sub_100A3A270(v19);
  if ([v19 isComplete])
  {

    return 0;
  }

  return v19;
}

id sub_100A3A270(void *a1)
{
  v2 = v1;
  v4 = [a1 storageChangeCount];
  if (v4 == [v2 changeCount])
  {
    v5 = [v2 range];
    v7 = v6;
    v8 = [a1 range];
    if (v5 > v8 || &v5[v7] < &v8[v9])
    {
      v43 = v2;
      v45 = objc_opt_self();
      v11 = [v45 _atomicIncrementAssertCount];
      v46.location = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v46, "Expected search range to be within storage range.", 49, 2u);
      StaticString.description.getter("continueWP(_:)", 14, 2);
      v44 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
      v12 = String._bridgeToObjectiveC()();

      v13 = [v12 lastPathComponent];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v17 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v11;
      v19 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v19;
      v20 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v20;
      *(inited + 72) = v44;
      *(inited + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(inited + 112) = v14;
      *(inited + 120) = v16;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v21;
      *(inited + 152) = 2170;
      location = v46.location;
      *(inited + 216) = v19;
      *(inited + 224) = v20;
      *(inited + 192) = location;
      v23 = v44;
      v24 = location;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v26, "Expected search range to be within storage range.", 49, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v27 = swift_allocObject();
      v27[2] = 8;
      v27[3] = 0;
      v27[4] = 0;
      v27[5] = 0;
      v28 = __VaListBuilder.va_list()();
      StaticString.description.getter("continueWP(_:)", 14, 2);
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Expected search range to be within storage range.", 49, 2);
      v31 = String._bridgeToObjectiveC()();

      [v45 handleFailureInFunction:v29 file:v30 lineNumber:2170 isFatal:0 format:v31 args:v28];
    }

    v32 = [v2 range];
    v34 = v33;
    v49.location = [a1 range];
    v49.length = v35;
    v48.location = v32;
    v48.length = v34;
    v37 = NSIntersectionRange(v48, v49);
    result = v37.location;
    v46 = v37;
    if (v37.length >= 1)
    {
      result = [v2 wpKind];
      if (result != 7)
      {
        v38 = [a1 searchedString];
        if (!v38)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = String._bridgeToObjectiveC()();
        }

        v39 = [a1 string];
        v40 = [v38 crl_rangeOfString:v39 searchOptions:objc_msgSend(a1 updatingSearchRange:{"options"), &v46}];
        v42 = v41;

        if (v40 != NSNotFound.getter())
        {
          [a1 foundHitWithRange:{v40, v42}];
        }

        return [a1 setRange:{v46.location, v46.length}];
      }
    }
  }

  else
  {

    return [a1 setRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
  }

  return result;
}

double sub_100A3A854(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v6 = inited + 32;
    sub_100006370(0, &qword_101A0DAC0, off_10182F9F0);
    sub_1005B981C(&qword_101A0DAC8, &unk_101490898);
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_dynamicCast();
    *(inited + 96) = sub_100006370(0, &qword_101A0DAD0, off_10182F930);
    *(inited + 104) = sub_10000FDE0(&qword_101A0DAD8, &qword_101A0DAD0, off_10182F930, &protocol conformance descriptor for NSObject);
    *(inited + 72) = a1;
    v7 = objc_opt_self();
    v8 = a1;
    v46 = v7;
    LODWORD(v9) = [v7 _atomicIncrementAssertCount];
    v50 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v50, "Expected search class of type %@, instead recieved %@.", 54, 2u);
    StaticString.description.getter("continue(_:)", 12, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v13;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v14 = static OS_os_log.crlAssert;
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_10146CA70;
      *(v15 + 56) = &type metadata for Int32;
      *(v15 + 64) = &protocol witness table for Int32;
      *(v15 + 32) = v9;
      v16 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v15 + 96) = v16;
      v17 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v15 + 104) = v17;
      *(v15 + 72) = v48;
      *(v15 + 136) = &type metadata for String;
      v18 = sub_1000053B0();
      *(v15 + 112) = v12;
      *(v15 + 120) = v47;
      *(v15 + 176) = &type metadata for UInt;
      *(v15 + 184) = &protocol witness table for UInt;
      *(v15 + 144) = v18;
      *(v15 + 152) = 2158;
      v19 = v50;
      *(v15 + 216) = v16;
      *(v15 + 224) = v17;
      *(v15 + 192) = v19;
      v20 = v48;
      v21 = v19;
      v22 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v15);
      swift_setDeallocating();
      swift_arrayDestroy();
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v23, "Expected search class of type %@, instead recieved %@.", 54, 2, inited);

      type metadata accessor for __VaListBuilder();
      v9 = swift_allocObject();
      v9[2] = 8;
      v9[3] = 0;
      v24 = v9 + 3;
      v9[4] = 0;
      v9[5] = 0;
      v12 = *(inited + 16);
      v25 = inited;
      if (!v12)
      {
LABEL_31:
        v42 = __VaListBuilder.va_list()();
        StaticString.description.getter("continue(_:)", 12, 2);
        v43 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
        v44 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Expected search class of type %@, instead recieved %@.", 54, 2);
        v45 = String._bridgeToObjectiveC()();

        [v46 handleFailureInFunction:v43 file:v44 lineNumber:2158 isFatal:0 format:v45 args:v42];

        swift_setDeallocating();
        swift_arrayDestroy();
        return result;
      }

      v26 = 0;
      inited = 40;
      while (1)
      {
        sub_100020E58((v6 + 40 * v26), *(v6 + 40 * v26 + 24));
        v27 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v28 = *v24;
        v29 = *(v27 + 16);
        v30 = __OFADD__(*v24, v29);
        v31 = *v24 + v29;
        if (v30)
        {
          break;
        }

        v32 = v9[4];
        if (v32 >= v31)
        {
          goto LABEL_23;
        }

        if (v32 + 0x4000000000000000 < 0)
        {
          goto LABEL_34;
        }

        inited = v6;
        v6 = v25;
        v33 = v9[5];
        if (2 * v32 > v31)
        {
          v31 = 2 * v32;
        }

        v9[4] = v31;
        if ((v31 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_35;
        }

        v34 = v27;
        v35 = swift_slowAlloc();
        v36 = v35;
        v9[5] = v35;
        if (v33)
        {
          if (v35 != v33 || v35 >= &v33[8 * v28])
          {
            memmove(v35, v33, 8 * v28);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v27 = v34;
          v25 = v6;
          v6 = inited;
          inited = 40;
LABEL_23:
          v36 = v9[5];
          if (!v36)
          {
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        v27 = v34;
        v25 = v6;
        v6 = inited;
        inited = 40;
        if (!v36)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_24:
        v38 = *(v27 + 16);
        if (v38)
        {
          v39 = (v27 + 32);
          v40 = *v24;
          while (1)
          {
            v41 = *v39++;
            *&v36[8 * v40] = v41;
            v40 = *v24 + 1;
            if (__OFADD__(*v24, 1))
            {
              break;
            }

            *v24 = v40;
            if (!--v38)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_8:

        if (++v26 == v12)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

  v3 = v2;
  v49 = a1;
  sub_100A3A270(v3);

  return result;
}

char *sub_100A3AF40(void *a1)
{
  v2 = v1;
  v152 = sub_1005B981C(&unk_101A0DAA0, &qword_101483A50);
  __chkstk_darwin(v152);
  v151 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v150 = (&v142 - v6);
  v7 = sub_1005B981C(&unk_101A096B0, &unk_10148DE20);
  __chkstk_darwin(v7 - 8);
  v155 = &v142 - v8;
  v9 = sub_1005B981C(&unk_101A0DAB0, &unk_101483A70);
  __chkstk_darwin(v9 - 8);
  v11 = &v142 - v10;
  v12 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v154 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v159 = &v142 - v16;
  __chkstk_darwin(v17);
  v161 = &v142 - v18;
  v165 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v165);
  v20 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v21 - 8);
  v153 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v158 = &v142 - v24;
  __chkstk_darwin(v25);
  v160 = &v142 - v26;
  v156 = [objc_allocWithZone(type metadata accessor for CRLCommandGroup()) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v149 = v11;
    v28 = Strong;
    type metadata accessor for CRLWPShapeItem(0);
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v146 = v29;
      v148 = v28;
      if ([v2 canUserReplaceText])
      {
        v157 = a1;
        v30 = _swiftEmptyArrayStorage;
        v170 = _swiftEmptyArrayStorage;
        v168 = [v2 range];
        v169 = v31;
        if (v31 < 1)
        {
          goto LABEL_37;
        }

        v162 = (v13 + 8);
        v163 = (v13 + 16);
        v145 = _swiftEmptyArrayStorage;
        v164 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
        while (1)
        {
          v83 = *&v2[v164];
          if (!v83)
          {
            goto LABEL_82;
          }

          v84 = v168;
          (*(*v83 + 896))();
          v85 = v160;
          sub_100A49D68(&v20[*(v165 + 20)], v160, type metadata accessor for CRLWPStorageCRDTData);
          sub_100A47694(v20, type metadata accessor for CRLWPShapeItemCRDTData);
          v86 = *v163;
          v87 = v161;
          (*v163)(v161, v85, v12);
          sub_100A47694(v85, type metadata accessor for CRLWPStorageCRDTData);
          v88 = CRAttributedString.attributedString.getter();
          v89 = *v162;
          (*v162)(v87, v12);
          v90 = [v88 length];

          if (v84 >= v90)
          {
            goto LABEL_38;
          }

          v91 = v157;
          if (!v157)
          {
            goto LABEL_83;
          }

          v92 = v2;
          v93 = [v157 findString];
          if (!v93)
          {
            goto LABEL_84;
          }

          v2 = v93;
          v94 = [v91 options];
          v95 = *&v92[v164];
          if (!v95)
          {
            goto LABEL_85;
          }

          v96 = v94;
          (*(*v95 + 896))();
          v97 = v158;
          sub_100A49D68(&v20[*(v165 + 20)], v158, type metadata accessor for CRLWPStorageCRDTData);
          sub_100A47694(v20, type metadata accessor for CRLWPShapeItemCRDTData);
          v98 = v159;
          v86(v159, v97, v12);
          sub_100A47694(v97, type metadata accessor for CRLWPStorageCRDTData);
          v99 = CRAttributedString.attributedString.getter();
          v89(v98, v12);
          v100 = [v99 string];

          if (!v100)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v100 = String._bridgeToObjectiveC()();
          }

          v101 = [v100 crl_rangeOfString:v2 searchOptions:v96 updatingSearchRange:&v168];
          v103 = v102;

          if (v101 != NSNotFound.getter())
          {
            v104 = [objc_allocWithZone(CRLWPSelection) initWithRange:{v101, v103}];
            v2 = v92;
            if (!v104)
            {
              goto LABEL_49;
            }

            v81 = v104;
            v105 = [objc_allocWithZone(CRLWPSearchReference) initWithStorage:v92 selection:v104 selectionPath:0];
            if (!v105)
            {

              goto LABEL_49;
            }

            v147 = v103;
            v106 = v105;
            if (([v105 isReplaceable] & 1) == 0)
            {

              goto LABEL_49;
            }

            v143 = v106;
            v144 = v81;
            v107 = [v157 replaceString];
            if (!v107)
            {
              goto LABEL_87;
            }

            v81 = *&v92[v164];
            if (!v81)
            {
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              v77 = v156;
              v82 = v157;
              goto LABEL_44;
            }

            v108 = v107;
            (*(*v81 + 896))();
            v109 = v153;
            sub_100A49D68(&v20[*(v165 + 20)], v153, type metadata accessor for CRLWPStorageCRDTData);
            sub_100A47694(v20, type metadata accessor for CRLWPShapeItemCRDTData);
            v110 = v154;
            v86(v154, v109, v12);
            sub_100A47694(v109, type metadata accessor for CRLWPStorageCRDTData);
            v111 = CRAttributedString.attributedString.getter();
            v89(v110, v12);
            v112 = [v111 string];

            if (!v112)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v112 = String._bridgeToObjectiveC()();
            }

            v113 = [v157 options];
            v114 = v108;
            v115 = v108;
            v116 = v147;
            v2 = [v115 crl_stringByCapitalizingToMatchString:v112 range:v101 searchOptions:{v147, v113}];

            if (v2)
            {
              v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v119 = v118;

              if (v101 == NSNotFound.getter())
              {
                goto LABEL_80;
              }

              v2 = v119;
              v120 = v116 + v101;
              if (__OFADD__(v101, v116))
              {
                goto LABEL_81;
              }

              v121 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
              (*(*(v121 - 8) + 56))(v149, 1, 1, v121);
              v122 = sub_1005B981C(&qword_101A06188, &qword_101483A00);
              v123 = v155;
              (*(*(v122 - 8) + 56))(v155, 1, 1, v122);
              v124 = type metadata accessor for CRLWPTextString();
              v125 = objc_allocWithZone(v124);
              v126 = &v125[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
              *v126 = v117;
              *(v126 + 1) = v2;
              v126[16] = 0;
              v167.receiver = v125;
              v167.super_class = v124;
              v127 = v148;
              v128 = objc_msgSendSuper2(&v167, "init");
              v147 = type metadata accessor for CRLWPReplaceTextCommand(0);
              v129 = objc_allocWithZone(v147);
              v130 = v149;
              v131 = v150;
              *v150 = v101;
              *(v131 + 8) = v120;
              *(v131 + 16) = v128;
              v132 = v152;
              sub_10000BE14(v130, v131 + *(v152 + 64), &unk_101A0DAB0, &unk_101483A70);
              sub_10000BE14(v123, v131 + *(v132 + 80), &unk_101A096B0, &unk_10148DE20);
              v133 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
              v134 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
              (*(*(v134 - 8) + 56))(&v129[v133], 1, 1, v134);
              v129[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands] = 0;
              v129[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools] = 0;
              *&v129[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem] = v146;
              v135 = v151;
              sub_10000BE14(v131, v151, &unk_101A0DAA0, &qword_101483A50);
              v136 = *(v135 + 16);
              v137 = *(v132 + 64);
              v138 = *(v132 + 80);
              v139 = &v129[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement];
              *v139 = *v135;
              *(v139 + 2) = v136;
              sub_10003DFF8(v135 + v137, &v139[*(v132 + 64)], &unk_101A0DAB0, &unk_101483A70);
              sub_10003DFF8(v135 + v138, &v139[*(v132 + 80)], &unk_101A096B0, &unk_10148DE20);
              v166.receiver = v129;
              v166.super_class = v147;
              v140 = objc_msgSendSuper2(&v166, "init");
              sub_10000CAAC(v131, &unk_101A0DAA0, &qword_101483A50);
              sub_10000CAAC(v155, &unk_101A096B0, &unk_10148DE20);
              sub_10000CAAC(v149, &unk_101A0DAB0, &unk_101483A70);
              v141 = v140;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v145 = v170;
            }

            else
            {
            }
          }

          v2 = v92;
LABEL_49:
          if (v169 < 1)
          {
            goto LABEL_38;
          }
        }
      }

      return v156;
    }
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLWPStorage();
  v34 = sub_100A40278(&unk_101A27F90, v33, type metadata accessor for CRLWPStorage, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v2;
  v165 = inited + 32;
  *(inited + 64) = v34;
  v35 = objc_opt_self();
  v36 = v2;
  v163 = v35;
  LODWORD(v2) = [v35 _atomicIncrementAssertCount];
  v171 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v171, "Text storage has no parent info: %@", 35, 2u);
  StaticString.description.getter("commandForReplaceAll(with:)", 27, 2);
  v164 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
  v37 = String._bridgeToObjectiveC()();

  v38 = [v37 lastPathComponent];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (qword_1019F20A0 != -1)
  {
LABEL_76:
    swift_once();
  }

  v42 = static OS_os_log.crlAssert;
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_10146CA70;
  *(v43 + 56) = &type metadata for Int32;
  *(v43 + 64) = &protocol witness table for Int32;
  *(v43 + 32) = v2;
  v44 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v43 + 96) = v44;
  v45 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v43 + 104) = v45;
  v46 = v164;
  *(v43 + 72) = v164;
  *(v43 + 136) = &type metadata for String;
  v47 = sub_1000053B0();
  *(v43 + 112) = v39;
  *(v43 + 120) = v41;
  *(v43 + 176) = &type metadata for UInt;
  *(v43 + 184) = &protocol witness table for UInt;
  *(v43 + 144) = v47;
  *(v43 + 152) = 2191;
  v48 = v171;
  *(v43 + 216) = v44;
  *(v43 + 224) = v45;
  *(v43 + 192) = v48;
  v49 = v46;
  v50 = v48;
  v51 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v43);
  swift_setDeallocating();
  v164 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v52 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v52, "Text storage has no parent info: %@", 35, 2, inited);

  type metadata accessor for __VaListBuilder();
  v53 = swift_allocObject();
  v53[2] = 8;
  v53[3] = 0;
  v54 = v53 + 3;
  v53[4] = 0;
  v53[5] = 0;
  v2 = *(inited + 16);
  v39 = inited;
  if (!v2)
  {
LABEL_33:
    v70 = __VaListBuilder.va_list()();
    StaticString.description.getter("commandForReplaceAll(with:)", 27, 2);
    v71 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
    v72 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Text storage has no parent info: %@", 35, 2);
    v73 = String._bridgeToObjectiveC()();

    [v163 handleFailureInFunction:v71 file:v72 lineNumber:2191 isFatal:0 format:v73 args:v70];

    swift_setDeallocating();
    swift_arrayDestroy();
    return v156;
  }

  inited = 0;
  while (1)
  {
    v55 = (v165 + 40 * inited);
    v41 = v55[4];
    sub_100020E58(v55, v55[3]);
    v56 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v30 = *v54;
    v57 = *(v56 + 16);
    v58 = __OFADD__(*v54, v57);
    v59 = *v54 + v57;
    if (v58)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v60 = v53[4];
    if (v60 >= v59)
    {
      goto LABEL_25;
    }

    if (v60 + 0x4000000000000000 < 0)
    {
      goto LABEL_74;
    }

    v41 = v53[5];
    if (2 * v60 > v59)
    {
      v59 = 2 * v60;
    }

    v53[4] = v59;
    if ((v59 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_75;
    }

    v61 = v39;
    v62 = v56;
    v63 = swift_slowAlloc();
    v64 = v63;
    v53[5] = v63;
    if (v41)
    {
      if (v63 != v41 || v63 >= &v41[8 * v30])
      {
        memmove(v63, v41, 8 * v30);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v56 = v62;
      v39 = v61;
LABEL_25:
      v64 = v53[5];
      if (!v64)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    v56 = v62;
    v39 = v61;
    if (!v64)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_26:
    v66 = *(v56 + 16);
    if (v66)
    {
      break;
    }

LABEL_10:

    if (++inited == v2)
    {
      goto LABEL_33;
    }
  }

  v67 = (v56 + 32);
  v68 = *v54;
  while (1)
  {
    v69 = *v67++;
    *&v64[8 * v68] = v69;
    v68 = *v54 + 1;
    if (__OFADD__(*v54, 1))
    {
      break;
    }

    *v54 = v68;
    if (!--v66)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_37:
  v145 = v30;
LABEL_38:
  v75 = v145;
  if (v145 >> 62)
  {
    v76 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v76 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v156;
  if (v76 < 1)
  {
  }

  else
  {

    v79 = sub_100FE1518(v78);
    v80 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
    swift_beginAccess();
    v81 = v77 + v80;
    sub_100799F10(v79);
    swift_endAccess();
    v82 = v157;
    if (!v157)
    {
      goto LABEL_88;
    }

    if (v75 >> 62)
    {
      v81 = _CocoaArrayWrapper.endIndex.getter();

      if (v81 < 0)
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
LABEL_85:

        __break(1u);
      }

      goto LABEL_89;
    }

    v81 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_44:
    [v82 appendReplacementCount:v81];
  }

  return v77;
}

uint64_t sub_100A3C2BC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for CRLBoardItem(0);
    for (i = v1; ; i = v5)
    {
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = (*((swift_isaMask & *v3) + 0x160))();
        swift_unknownObjectRelease();
        if (v4)
        {
          swift_unknownObjectRelease();
          return 0;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v5 = [i parentInfo];
      swift_unknownObjectRelease();
      if (!v5)
      {
        return 1;
      }

      swift_unknownObjectRetain();
    }
  }

  return 1;
}

void sub_100A3C3CC(CFIndex a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v14 - 8);
  v65 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v54 - v18;
  v66 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v20 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v20)
  {
    goto LABEL_15;
  }

  (*(*v20 + 896))(v17);
  sub_100A49D68(&v13[*(v11 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
  v21 = *(v5 + 16);
  v64 = v5 + 16;
  v63 = v21;
  v21(v10, v19, v4);
  sub_100A47694(v19, type metadata accessor for CRLWPStorageCRDTData);
  v22 = CRAttributedString.attributedString.getter();
  v25 = *(v5 + 8);
  v24 = v5 + 8;
  v23 = v25;
  v25(v10, v4);
  v26 = [v22 length];

  if ((a1 & 0x8000000000000000) == 0 && v26 >= a1)
  {
    if (v26 <= a1)
    {
      return;
    }

    goto LABEL_9;
  }

  v56 = v26;
  v57 = v23;
  v58 = v11;
  v59 = v2;
  v60 = v7;
  v61 = v24;
  v62 = a1;
  v55 = objc_opt_self();
  v27 = [v55 _atomicIncrementAssertCount];
  v67 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v67, "Character index is outside storage bounds", 41, 2u);
  StaticString.description.getter("nextCharacterIndex(_:)", 22, 2);
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
  v28 = String._bridgeToObjectiveC()();

  v29 = [v28 lastPathComponent];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v33 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v27;
  v35 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v35;
  v36 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v36;
  v37 = v54;
  *(inited + 72) = v54;
  *(inited + 136) = &type metadata for String;
  v38 = sub_1000053B0();
  *(inited + 112) = v30;
  *(inited + 120) = v32;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v38;
  *(inited + 152) = 2257;
  v39 = v67;
  *(inited + 216) = v35;
  *(inited + 224) = v36;
  *(inited + 192) = v39;
  v40 = v37;
  v41 = v39;
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v43, "Character index is outside storage bounds", 41, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v44 = swift_allocObject();
  v44[2] = 8;
  v44[3] = 0;
  v44[4] = 0;
  v44[5] = 0;
  v45 = __VaListBuilder.va_list()();
  StaticString.description.getter("nextCharacterIndex(_:)", 22, 2);
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Character index is outside storage bounds", 41, 2);
  v48 = String._bridgeToObjectiveC()();

  [v55 handleFailureInFunction:v46 file:v47 lineNumber:2257 isFatal:0 format:v48 args:v45];

  a1 = v62;
  v7 = v60;
  v2 = v59;
  v11 = v58;
  v23 = v57;
  if (v56 > v62)
  {
LABEL_9:
    v49 = *(v2 + v66);
    if (!v49)
    {
LABEL_16:
      __break(1u);
      return;
    }

    (*(*v49 + 896))();
    v50 = v65;
    sub_100A49D68(&v13[*(v11 + 20)], v65, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
    v63(v7, v50, v4);
    sub_100A47694(v50, type metadata accessor for CRLWPStorageCRDTData);
    v51 = CRAttributedString.attributedString.getter();
    v23(v7, v4);
    v52 = [v51 string];

    if (!v52)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = String._bridgeToObjectiveC()();
    }

    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v52, a1);

    if (!__OFADD__(RangeOfComposedCharactersAtIndex.location, RangeOfComposedCharactersAtIndex.length))
    {
      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

void sub_100A3CC44(uint64_t a1)
{
  v97 = a1;
  v2 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v88 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v80 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v87 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v80 - v15;
  v17 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v96 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v18)
  {
    __break(1u);
    goto LABEL_46;
  }

  (*(*v18 + 896))(v14);
  v95 = v8;
  sub_100A49D68(&v10[*(v8 + 20)], v16, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  v19 = v3 + 16;
  v93 = *(v3 + 16);
  v93(v7, v16, v2);
  sub_100A47694(v16, type metadata accessor for CRLWPStorageCRDTData);
  v20 = CRAttributedString.attributedString.getter();
  v22 = *(v3 + 8);
  v21 = v3 + 8;
  v92 = v22;
  v22(v7, v2);
  v94 = [v20 length];

  v89 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = v97;
  v98 = inited + 32;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  v24 = *(v96 + v17);
  if (!v24)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v25 = inited;
  (*(*v24 + 896))();
  sub_100A49D68(&v10[*(v95 + 20)], v16, type metadata accessor for CRLWPStorageCRDTData);
  v90 = v10;
  sub_100A47694(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  v26 = v93;
  v93(v7, v16, v2);
  sub_100A47694(v16, type metadata accessor for CRLWPStorageCRDTData);
  v27 = CRAttributedString.attributedString.getter();
  v91 = v2;
  v86 = v21;
  v28 = v92;
  v92(v7, v2);
  v29 = [v27 length];

  v25[12] = &type metadata for Int;
  v25[13] = &protocol witness table for Int;
  v25[9] = v29;
  v30 = v97;
  v31 = v25;
  if (v97 < 0 || v94 < v97)
  {
    v82 = v19;
    v83 = v17;
    v81 = objc_opt_self();
    v34 = [v81 _atomicIncrementAssertCount];
    v99 = [objc_allocWithZone(NSString) init];
    sub_100604538(v25, &v99, "Character index is outside storage bounds %lu / %lu", 51, 2u);
    StaticString.description.getter("previousCharacterIndex(_:)", 26, 2);
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
    v35 = String._bridgeToObjectiveC()();

    v36 = [v35 lastPathComponent];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v38;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v39 = static OS_os_log.crlAssert;
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_10146CA70;
      *(v40 + 56) = &type metadata for Int32;
      *(v40 + 64) = &protocol witness table for Int32;
      *(v40 + 32) = v34;
      v41 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v40 + 96) = v41;
      v42 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v40 + 104) = v42;
      v43 = v85;
      *(v40 + 72) = v85;
      *(v40 + 136) = &type metadata for String;
      v44 = sub_1000053B0();
      v45 = v84;
      *(v40 + 112) = v37;
      *(v40 + 120) = v45;
      *(v40 + 176) = &type metadata for UInt;
      *(v40 + 184) = &protocol witness table for UInt;
      *(v40 + 144) = v44;
      *(v40 + 152) = 2273;
      v46 = v99;
      *(v40 + 216) = v41;
      *(v40 + 224) = v42;
      *(v40 + 192) = v46;
      v47 = v43;
      v48 = v46;
      v49 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v40);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v50, "Character index is outside storage bounds %lu / %lu", 51, 2, v31);

      type metadata accessor for __VaListBuilder();
      v51 = swift_allocObject();
      v51[2] = 8;
      v51[3] = 0;
      v52 = v51 + 3;
      v51[4] = 0;
      v51[5] = 0;
      v89 = v31;
      v53 = *(v31 + 16);
      if (!v53)
      {
LABEL_32:
        v68 = __VaListBuilder.va_list()();
        StaticString.description.getter("previousCharacterIndex(_:)", 26, 2);
        v69 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPStorage.swift", 78, 2);
        v70 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Character index is outside storage bounds %lu / %lu", v80, v81);
        v71 = String._bridgeToObjectiveC()();

        [v81 handleFailureInFunction:v69 file:v70 lineNumber:2273 isFatal:0 format:v71 args:v68];

        v33 = v96;
        v30 = v97;
        v17 = v83;
        v28 = v92;
        v26 = v93;
        goto LABEL_33;
      }

      v31 = 0;
      v34 = 40;
      while (1)
      {
        sub_100020E58((v98 + 40 * v31), *(v98 + 40 * v31 + 24));
        v54 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v55 = *v52;
        v56 = *(v54 + 16);
        v57 = __OFADD__(*v52, v56);
        v58 = *v52 + v56;
        if (v57)
        {
          break;
        }

        v59 = v51[4];
        if (v59 >= v58)
        {
          goto LABEL_24;
        }

        if (v59 + 0x4000000000000000 < 0)
        {
          goto LABEL_42;
        }

        v60 = v51[5];
        if (2 * v59 > v58)
        {
          v58 = 2 * v59;
        }

        v51[4] = v58;
        if ((v58 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_43;
        }

        v37 = v54;
        v61 = swift_slowAlloc();
        v62 = v61;
        v51[5] = v61;
        if (v60)
        {
          if (v61 != v60 || v61 >= &v60[8 * v55])
          {
            memmove(v61, v60, 8 * v55);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v54 = v37;
LABEL_24:
          v62 = v51[5];
          if (!v62)
          {
            goto LABEL_31;
          }

          goto LABEL_25;
        }

        v54 = v37;
        if (!v62)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_25:
        v64 = *(v54 + 16);
        if (v64)
        {
          v65 = (v54 + 32);
          v66 = *v52;
          while (1)
          {
            v67 = *v65++;
            *&v62[8 * v66] = v67;
            v66 = *v52 + 1;
            if (__OFADD__(*v52, 1))
            {
              break;
            }

            *v52 = v66;
            if (!--v64)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          break;
        }

LABEL_9:

        if (++v31 == v53)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      swift_once();
    }
  }

  v33 = v96;
LABEL_33:
  v72 = v30 - 1;
  v74 = v90;
  v73 = v91;
  if (v30 >= 1 && v94 >= v30)
  {
    v75 = *(v33 + v17);
    if (v75)
    {
      (*(*v75 + 896))(v32);
      v76 = v87;
      sub_100A49D68(v74 + *(v95 + 20), v87, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v74, type metadata accessor for CRLWPShapeItemCRDTData);
      v77 = v88;
      v26(v88, v76, v73);
      sub_100A47694(v76, type metadata accessor for CRLWPStorageCRDTData);
      v78 = CRAttributedString.attributedString.getter();
      v28(v77, v73);
      v79 = [v78 string];

      if (!v79)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = String._bridgeToObjectiveC()();
      }

      CFStringGetRangeOfComposedCharactersAtIndex(v79, v72);

      return;
    }

LABEL_47:
    __break(1u);
  }
}

void sub_100A3D70C(uint64_t a1, char a2, char a3)
{
  v7 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v18)
  {
    (*(*v18 + 896))(v15);
    sub_100A49D68(&v13[*(v11 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v8 + 16))(v10, v17, v7);
    sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
    v19 = CRAttributedString.attributedString.getter();
    (*(v8 + 8))(v10, v7);
    v20 = [v19 string];

    v21 = v20;
    v22 = v20;
    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = String._bridgeToObjectiveC()();
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      v23 = v20;
      v24 = [v21 crl_range];
      v26 = v25;

      [v22 crlwp_rangeOfWordAtCharacterIndex:a1 range:v24 includePreviousWord:v26 includeHyphenation:{a2 & 1, a3 & 1}];
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100A3DA74()
{
  v41 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v0 = *(v41 - 8);
  __chkstk_darwin(v41);
  v2 = &v34 - v1;
  v43 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v43);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  *(&v34 - v9) = _swiftEmptySetSingleton;
  v12 = *(v11 + 44);
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  KeyPath = swift_getKeyPath();
  sub_100E6DE34(v52, 0x656D614E746E6F66, 0xE800000000000000);

  v48 = &type metadata for CRLWPCharacterScope;
  v49 = &type metadata for CRLWPFontNameAttribute;
  v50 = sub_100962324();
  v51 = KeyPath;
  swift_getKeyPath();

  v52[0] = sub_100CB23B4(0x63697465766C6548, 0xE900000000000061);
  v52[1] = v14;
  v53 = 0;
  sub_1005B981C(qword_101A0CF60, "87&");
  sub_1009623E4();
  CRAttributedString.Attributes.subscript.setter();

  v15 = swift_getKeyPath();
  sub_100E6DE34(v52, 0x657A6953746E6F66, 0xE800000000000000);

  v44 = &type metadata for CRLWPCharacterScope;
  v45 = &type metadata for CRLWPFontSizeAttribute;
  v46 = sub_10082465C();
  v47 = v15;
  swift_getKeyPath();
  LODWORD(v52[0]) = 1096810496;
  BYTE4(v52[0]) = 0;
  sub_1008246B0();
  v39 = v12;
  v16 = v42;
  v17 = CRAttributedString.Attributes.subscript.setter();
  v40 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v18 = *(v16 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v18)
  {
    goto LABEL_14;
  }

  (*(*v18 + 896))(v17);
  sub_100A49D68(&v4[*(v43 + 20)], v7, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  v19 = v41;
  v37 = *(v0 + 16);
  v37(v2, v7, v41);
  v38 = v7;
  sub_100A47694(v7, type metadata accessor for CRLWPStorageCRDTData);
  v20 = CRAttributedString.attributedString.getter();
  v21 = *(v0 + 8);
  v21(v2, v19);
  v22 = [v20 length];

  if (v22 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v35 = v4;
    v25 = v19;
    v26 = v16;
    ObjectType = swift_getObjectType();
    v28 = swift_conformsToProtocol2();
    if (!v28)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v29 = sub_1012778D4(ObjectType, v28);

    v16 = v26;
    v19 = v25;
    v4 = v35;
    if ((v29 & 1) == 0)
    {
      sub_10000CAAC(v10, &qword_101A0D850, &unk_10148DE30);
      return;
    }
  }

  v30 = *(v16 + v40);
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  (*(*v30 + 896))();
  v31 = v38;
  sub_100A49D68(&v4[*(v43 + 20)], v38, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  v37(v2, v31, v19);
  sub_100A47694(v31, type metadata accessor for CRLWPStorageCRDTData);
  v32 = CRAttributedString.count.getter();
  v36(v2, v19);
  if (v32 >= v22)
  {
    v33 = v22;
  }

  else
  {
    v33 = v32;
  }

  sub_100A33634(&v10[v39], v32 & (v32 >> 63), v33);
  sub_10000CAAC(v10, &qword_101A0D850, &unk_10148DE30);
  *(v16 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
}

uint64_t sub_100A3E0D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100A3E11C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_100A3E188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100A3E1D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100A3E2E0(uint64_t a1)
{
  sub_100A4A3E4(319, &qword_101A0CFE8, &type metadata for String, &protocol witness table for String, &type metadata accessor for Set);
  if (v1 <= 0x3F)
  {
    sub_100A3E6F4(319, &qword_101A0CFF0, &type metadata accessor for CRAttributedString.Attributes);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100A3E474(uint64_t a1)
{
  sub_100A3E544(319);
  if (v1 <= 0x3F)
  {
    sub_10084E720(319);
    if (v2 <= 0x3F)
    {
      sub_100749390(319, &qword_1019F5D58, &type metadata accessor for AnyCRValue, &type metadata for Int, &protocol witness table for Int);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100A3E544(uint64_t a1)
{
  if (!qword_101A0D060[0])
  {
    sub_1007AB290();
    v1 = type metadata accessor for CRExtensible();
    if (!v2)
    {
      atomic_store(v1, qword_101A0D060);
    }
  }
}

void sub_100A3E628(uint64_t a1)
{
  sub_100A3E6F4(319, qword_101A0D110, &type metadata accessor for CRAttributedString);
  if (v1 <= 0x3F)
  {
    sub_100749390(319, &qword_1019F48F8, &type metadata accessor for AnyCRDT, &type metadata for String, &protocol witness table for String);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100A3E6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_10068D144();
    v7 = a3(a1, &type metadata for CRLTextAttributeScope, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *sub_100A3E758()
{
  v1 = [objc_allocWithZone(type metadata accessor for CRLWPParagraphStyle()) init];
  v2 = sub_100A41EDC(v0);
  v3 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName];
  *v3 = v2;
  v3[1] = v4;

  sub_100A42510(v0);
  v5 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize];
  *v5 = v6;
  v5[4] = 0;
  v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold] = sub_100A42890(v0) & 1;
  v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_italic] = sub_100A42C08(v0) & 1;
  v7 = sub_100A42F80(v0);
  v8 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline];
  *v8 = v7;
  v8[8] = 0;
  v9 = sub_100A43300(v0);
  v10 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough];
  *v10 = v9;
  v10[8] = 0;
  v11 = sub_100A43680(v0);
  v12 = *&v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill];
  *&v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill] = v11;

  *&v1[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment] = sub_100A43BEC(v0);
  return v1;
}

uint64_t sub_100A3E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = NSNotFound.getter();
  if (result != a5)
  {
    v11 = a5 + a6;
    if (__OFADD__(a5, a6))
    {
      __break(1u);
    }

    else
    {
      sub_1005B981C(&qword_101A0DA98, &unk_1014C6EB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 32) = a5;
      *(inited + 40) = v11;
      swift_beginAccess();
      sub_100799B44(inited);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100A3E944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (a2)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v12(v13, v15, a3, a4, a5, a6, a7);
}

void sub_100A3EA04(char *a1, char *a2, uint64_t a3, unsigned __int8 a4)
{
  KeyPath = swift_getKeyPath();
  sub_10095CB84(KeyPath, a1, a2, a3);
  v11 = v10;
  v13 = v12;

  if (v13)
  {
    if (!*(v11 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v4 = *(v11 + 32);
    sub_1000C1080(v11, 1);
  }

  else
  {
    v4 = *&v11;
  }

  v14 = swift_getKeyPath();
  sub_100957838(v14, a1, a2, a3);
  a3 = v15;
  v17 = v16;

  if (v17)
  {
    if ((a3 & 0xC000000000000001) == 0)
    {
      if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v18 = *(a3 + 32);
      goto LABEL_9;
    }

LABEL_19:
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v19 = v18;
    sub_1000C10AC(a3, 1);
    a3 = v19;
  }

  v20 = [a3 referenceColor];

  *&v21 = v4;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      sub_10084B4FC(v20, v21);
    }

    else
    {
      sub_10084B50C(v20, v21);
    }
  }

  else if (a4)
  {
    sub_10084B394(v20, v4);
  }

  else
  {
    sub_10084B230(v20, v4);
  }
}

uint64_t sub_100A3EB88(uint64_t a1)
{
  v76 = sub_1005B981C(qword_101A0CF60, "87&");
  v72 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v74 = v69 - v4;
  v5 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v5 - 8);
  v7 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = v69 - v9;
  v70 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v77 = *(v70 - 8);
  __chkstk_darwin(v70);
  v86 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = v69 - v12;
  __chkstk_darwin(v13);
  v81 = v69 - v14;
  __chkstk_darwin(v15);
  v88 = v69 - v16;
  v80 = sub_1005B981C(&unk_101A0D910, &unk_101490720);
  __chkstk_darwin(v80);
  v79 = v69 - v17;
  v18 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v87 = *(v18 - 8);
  __chkstk_darwin(v18);
  v73 = v69 - v19;
  v84 = sub_1005B981C(&qword_101A0D920, &qword_101490730);
  __chkstk_darwin(v84);
  v78 = v69 - v20;
  v71 = sub_1005B981C(&qword_101A0D928, &qword_101490738);
  __chkstk_darwin(v71);
  v83 = v69 - v21;
  sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v69[1] = a1;
  v22 = CRAttributedString.attributedString.getter();
  v23 = [v22 string];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = CRAttributedString.attributedString.getter();
  v28 = [v27 string];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v24 == v29 && v26 == v31)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v33 = 0;
    if ((v32 & 1) == 0)
    {
      return v33;
    }
  }

  v34 = v78;
  CRAttributedString.runs.getter();
  v35 = *(v84 + 52);
  CRAttributedString.runs.getter();
  v84 = v18;
  v36 = v87[4];
  v37 = v73;
  v36(v73, v34, v84);
  sub_10001A2F8(&qword_101A0D930, &unk_101A09550, &unk_101488E48, &protocol conformance descriptor for CRAttributedString<A>.Runs);
  v38 = v83;
  dispatch thunk of Sequence.makeIterator()();
  v39 = &v34[v35];
  v40 = v38;
  v36(v37, v39, v84);
  v41 = v71;
  v78 = *(v71 + 52);
  dispatch thunk of Sequence.makeIterator()();
  v71 = *(v41 + 56);
  v38[v71] = 0;
  v42 = sub_10001A2F8(&qword_101A0D938, &unk_101A09550, &unk_101488E48, &protocol conformance descriptor for CRAttributedString<A>.Runs);
  v43 = v70;
  v87 = (v77 + 6);
  v44 = (v77 + 4);
  ++v72;
  v73 = v42;
  ++v77;
  while (1)
  {
    v45 = v82;
    dispatch thunk of IteratorProtocol.next()();
    v46 = *v87;
    if ((*v87)(v45, 1, v43) == 1)
    {
      v7 = v45;
LABEL_14:
      v66 = v71;
      sub_10000CAAC(v7, &unk_101A0D900, &qword_101488E40);
      v33 = 1;
      *(v40 + v66) = 1;
      goto LABEL_16;
    }

    v47 = *v44;
    (*v44)(v88, v45, v43);
    dispatch thunk of IteratorProtocol.next()();
    if (v46(v7, 1, v43) == 1)
    {
      (*v77)(v88, v43);
      goto LABEL_14;
    }

    v48 = v81;
    v47(v81, v7, v43);
    v49 = v79;
    v50 = *(v80 + 48);
    v47(v79, v88, v43);
    v47(&v49[v50], v48, v43);
    v47(v85, v49, v43);
    v47(v86, &v49[v50], v43);
    v51 = CRAttributedString.Runs.Run.range.getter();
    v53 = v52;
    if (v51 != CRAttributedString.Runs.Run.range.getter() || v53 != v54)
    {
      break;
    }

    v55 = v7;
    v56 = v74;
    v57 = v85;
    CRAttributedString.Runs.Run.attributes.getter();
    v58 = v75;
    v59 = v86;
    CRAttributedString.Runs.Run.attributes.getter();
    sub_10068D144();
    v60 = static CRAttributedString.Attributes.== infix(_:_:)();
    v61 = *v72;
    v62 = v58;
    v63 = v76;
    (*v72)(v62, v76);
    v64 = v56;
    v7 = v55;
    v61(v64, v63);
    v65 = *v77;
    (*v77)(v59, v43);
    v65(v57, v43);
    v40 = v83;
    if ((v60 & 1) == 0)
    {
      v33 = 0;
      goto LABEL_16;
    }
  }

  v67 = *v77;
  (*v77)(v86, v43);
  v67(v85, v43);
  v33 = 0;
  v40 = v83;
LABEL_16:
  sub_10000CAAC(v40, &qword_101A0D928, &qword_101490738);
  return v33;
}

uint64_t sub_100A3F464()
{
  qword_101AD6FB0 = 97;
  *algn_101AD6FB8 = 0xE100000000000000;
  qword_101AD6FC0 = swift_getKeyPath();
  unk_101AD6FC8 = 98;
  qword_101AD6FD0 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD6FD8 = result;
  return result;
}

uint64_t sub_100A3F4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100A3EB88(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = a1 + *(a3 + 20);

  return sub_100A3EB88(v5);
}

double sub_100A3F524@<D0>(void *a1@<X8>)
{
  if (qword_1019F1AD8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_101AD6FB8;
  v3 = qword_101AD6FC0;
  v2 = unk_101AD6FC8;
  v4 = qword_101AD6FD0;
  v5 = qword_101AD6FD8;
  *a1 = qword_101AD6FB0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

uint64_t sub_100A3F5C8(uint64_t a1)
{
  v2 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return static CRStruct_2.fieldKeys.getter(a1, v2);
}

uint64_t sub_100A3F644(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_100A3F6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10068D144();
  CRAttributedString.init()();
  result = CRAttributedString.init(_:)();
  *(a2 + *(a1 + 24)) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100A3F718(uint64_t a1)
{
  v2 = sub_100A40278(&qword_101A0D160, 255, type metadata accessor for CRLWPStorageCRDTData, byte_10148F2F0);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_100A3F788(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_100A3F808(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_100A3F890(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.apply(_:)(a1, a2, v4);
}

uint64_t sub_100A3F910(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.hasDelta(from:)(a1, a2, v4);
}

uint64_t sub_100A3F990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_100A3FA28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_100A3FAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.merge(delta:)(a1, a2, v4);
}

uint64_t sub_100A3FB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A3FBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A3FC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_100A3FCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_100A3FD50()
{
  sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.needToFinalizeTimestamps()();
}

uint64_t sub_100A3FDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_100A3FE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_100A3FEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_100A40160(uint64_t a1)
{
  v2 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData, "Iy:");

  return CRStruct_2.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100A40278(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100A40484()
{
  result = qword_101A0D1A0;
  if (!qword_101A0D1A0)
  {
    result = swift_getWitnessTable("1y:", &type metadata for CRLWPFontSizeAttribute, v0, v1);
    atomic_store(result, &qword_101A0D1A0);
  }

  return result;
}

unint64_t sub_100A40508(uint64_t a1)
{
  result = sub_1008246B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40534()
{
  result = qword_101A0D1F8;
  if (!qword_101A0D1F8)
  {
    result = swift_getWitnessTable("}D:", &type metadata for CRLWPSmartFieldDataType, v0, v1);
    atomic_store(result, &qword_101A0D1F8);
  }

  return result;
}

unint64_t sub_100A4058C()
{
  result = qword_101A0D200;
  if (!qword_101A0D200)
  {
    result = swift_getWitnessTable(byte_10148F5DC, &type metadata for CRLWPSmartFieldDataType, v0, v1);
    atomic_store(result, &qword_101A0D200);
  }

  return result;
}

unint64_t sub_100A405E4()
{
  result = qword_101A0D208;
  if (!qword_101A0D208)
  {
    result = swift_getWitnessTable(byte_10148F6C4, &type metadata for CRLWPSmartFieldDataType, v0, v1);
    atomic_store(result, &qword_101A0D208);
  }

  return result;
}

unint64_t sub_100A4076C()
{
  result = qword_101A0D238;
  if (!qword_101A0D238)
  {
    result = swift_getWitnessTable(byte_10148F8AC, &type metadata for CRLWPHyperlinkSmartFieldData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0D238);
  }

  return result;
}

unint64_t sub_100A407C4()
{
  result = qword_101A0D240;
  if (!qword_101A0D240)
  {
    result = swift_getWitnessTable(byte_10148F9C8, &type metadata for CRLWPHyperlinkSmartFieldData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0D240);
  }

  return result;
}

unint64_t sub_100A4081C()
{
  result = qword_101A0D248;
  if (!qword_101A0D248)
  {
    result = swift_getWitnessTable(byte_10148F990, &type metadata for CRLWPHyperlinkSmartFieldData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0D248);
  }

  return result;
}

unint64_t sub_100A40874()
{
  result = qword_101A0D250;
  if (!qword_101A0D250)
  {
    result = swift_getWitnessTable("u@:", &type metadata for CRLWPHyperlinkSmartFieldData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0D250);
  }

  return result;
}

unint64_t sub_100A408CC()
{
  result = qword_101A0D258;
  if (!qword_101A0D258)
  {
    result = swift_getWitnessTable(byte_10148F95C, &type metadata for CRLWPHyperlinkSmartFieldData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0D258);
  }

  return result;
}

unint64_t sub_100A40924()
{
  result = qword_101A0D260;
  if (!qword_101A0D260)
  {
    result = swift_getWitnessTable(byte_10148F934, &type metadata for CRLWPHyperlinkSmartFieldData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A0D260);
  }

  return result;
}

uint64_t sub_100A40A54(uint64_t a1)
{
  *(a1 + 8) = sub_100A40278(&qword_101A0D288, 255, type metadata accessor for CRLWPHyperlinkSmartFieldData, byte_10148FA30);
  result = sub_100A40278(&qword_101A0D290, 255, type metadata accessor for CRLWPHyperlinkSmartFieldData, "A<:");
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100A40AE4()
{
  result = qword_101A0D298;
  if (!qword_101A0D298)
  {
    result = swift_getWitnessTable("es:", &type metadata for CRLWPFontBoldAttribute, v0, v1);
    atomic_store(result, &qword_101A0D298);
  }

  return result;
}

unint64_t sub_100A40B5C(uint64_t a1)
{
  result = sub_1008244FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40B88()
{
  result = qword_101A0D2F0;
  if (!qword_101A0D2F0)
  {
    result = swift_getWitnessTable(byte_10148FB50, &type metadata for CRLWPFontItalicAttribute, v0, v1);
    atomic_store(result, &qword_101A0D2F0);
  }

  return result;
}

unint64_t sub_100A40BDC(uint64_t a1)
{
  result = sub_100824608();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40C08()
{
  result = qword_101A0D348;
  if (!qword_101A0D348)
  {
    result = swift_getWitnessTable("Mr:", &type metadata for CRLWPUnderlineAttribute, v0, v1);
    atomic_store(result, &qword_101A0D348);
  }

  return result;
}

unint64_t sub_100A40D30(uint64_t a1)
{
  result = sub_100824758();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40D5C()
{
  result = qword_101A0D3C0;
  if (!qword_101A0D3C0)
  {
    result = swift_getWitnessTable(byte_10148FC74, &type metadata for CRLWPStrikethroughAttribute, v0, v1);
    atomic_store(result, &qword_101A0D3C0);
  }

  return result;
}

unint64_t sub_100A40E84(uint64_t a1)
{
  result = sub_1009622D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40EB0()
{
  result = qword_101A0D438;
  if (!qword_101A0D438)
  {
    result = swift_getWitnessTable(byte_10148FD2C, &type metadata for CRLWPFontNameAttribute, v0, v1);
    atomic_store(result, &qword_101A0D438);
  }

  return result;
}

unint64_t sub_100A40F98(uint64_t a1)
{
  result = sub_1009623E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40FC4()
{
  result = qword_101A0D4A8;
  if (!qword_101A0D4A8)
  {
    result = swift_getWitnessTable("ep:", &type metadata for CRLWPCharacterFillAttribute, v0, v1);
    atomic_store(result, &qword_101A0D4A8);
  }

  return result;
}

unint64_t sub_100A41064(uint64_t a1)
{
  result = sub_1008248F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A41090()
{
  result = qword_101A0D520;
  if (!qword_101A0D520)
  {
    result = swift_getWitnessTable(byte_10148FE50, &type metadata for CRLWPListStyleTypeAttribute, v0, v1);
    atomic_store(result, &qword_101A0D520);
  }

  return result;
}

unint64_t sub_100A41170()
{
  result = qword_101A0D540;
  if (!qword_101A0D540)
  {
    result = swift_getWitnessTable(asc_1014C307C, &type metadata for CRLWPListStyleType, v0, v1);
    atomic_store(result, &qword_101A0D540);
  }

  return result;
}

unint64_t sub_100A411D0(uint64_t a1)
{
  result = sub_1009621D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A411FC()
{
  result = qword_101A0D598;
  if (!qword_101A0D598)
  {
    result = swift_getWitnessTable("Eo:", &type metadata for CRLWPListStartAttribute, v0, v1);
    atomic_store(result, &qword_101A0D598);
  }

  return result;
}

unint64_t sub_100A41274(uint64_t a1)
{
  result = sub_10096212C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A412A0()
{
  result = qword_101A0D5F0;
  if (!qword_101A0D5F0)
  {
    result = swift_getWitnessTable(byte_10148FF70, &type metadata for CRLWPParagraphLevelAttribute, v0, v1);
    atomic_store(result, &qword_101A0D5F0);
  }

  return result;
}

unint64_t sub_100A412F4(uint64_t a1)
{
  result = sub_100962084();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A41320()
{
  result = qword_101A0D648;
  if (!qword_101A0D648)
  {
    result = swift_getWitnessTable("-n:", &type metadata for CRLWPHyperlinkAttribute, v0, v1);
    atomic_store(result, &qword_101A0D648);
  }

  return result;
}

unint64_t sub_100A413C4()
{
  result = qword_101A0D650;
  if (!qword_101A0D650)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&qword_101A0D658, &qword_101490070);
    v4[0] = sub_10000FDE0(&qword_101A0D660, &qword_101A0D668, off_10182F9D0, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_101A0D650);
  }

  return result;
}

unint64_t sub_100A41474(uint64_t a1)
{
  result = sub_100824848();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A414A0()
{
  result = qword_101A0D6C0;
  if (!qword_101A0D6C0)
  {
    result = swift_getWitnessTable(byte_101490094, &type metadata for CRLWPParagraphAlignmentAttribute, v0, v1);
    atomic_store(result, &qword_101A0D6C0);
  }

  return result;
}

unint64_t sub_100A415C8(uint64_t a1)
{
  result = sub_100962228();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A415F4()
{
  result = qword_101A0D738;
  if (!qword_101A0D738)
  {
    result = swift_getWitnessTable(byte_10149012C, &type metadata for CRLWPWritingDirectionAttribute, v0, v1);
    atomic_store(result, &qword_101A0D738);
  }

  return result;
}

unint64_t sub_100A4171C(uint64_t a1)
{
  result = sub_1009624A4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100A417D4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1005B981C(&unk_101A0B780, &unk_101480630);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = *(a1 + 8);
  v34 = *a1;
  v35 = v14;
  v15 = *(a2 + 8);
  v32 = *a2;
  v33 = v15;
  sub_1007AB290();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v30 = v7;
  v31 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v16 = *(v31 + 20);
  v17 = *(v11 + 48);
  sub_10000BE14(a1 + v16, v13, &unk_1019F33C0, &unk_101468A60);
  sub_10000BE14(a2 + v16, &v13[v17], &unk_1019F33C0, &unk_101468A60);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_10000BE14(v13, v10, &unk_1019F33C0, &unk_101468A60);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      v21 = &v13[v17];
      v22 = v30;
      (*(v5 + 32))(v30, v21, v4);
      sub_100A40278(&qword_101A00190, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v5 + 8);
      v24(v22, v4);
      v24(v10, v4);
      sub_10000CAAC(v13, &unk_1019F33C0, &unk_101468A60);
      if ((v23 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_10000CAAC(v13, &unk_101A0B780, &unk_101480630);
    goto LABEL_8;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_10000CAAC(v13, &unk_1019F33C0, &unk_101468A60);
LABEL_11:
  v25 = v31;
  v26 = *(v31 + 24);
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if (v27 == *v29 && v28 == v29[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100B3216C(*(a1 + *(v25 + 28)), *(a2 + *(v25 + 28)));
    return v19 & 1;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

id sub_100A41BB8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData] = 0;
  v8 = &v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
  sub_1006950BC(v38);
  v9 = v38[13];
  *(v8 + 12) = v38[12];
  *(v8 + 13) = v9;
  *(v8 + 14) = v38[14];
  *(v8 + 30) = v39;
  v10 = v38[9];
  *(v8 + 8) = v38[8];
  *(v8 + 9) = v10;
  v11 = v38[11];
  *(v8 + 10) = v38[10];
  *(v8 + 11) = v11;
  v12 = v38[5];
  *(v8 + 4) = v38[4];
  *(v8 + 5) = v12;
  v13 = v38[7];
  *(v8 + 6) = v38[6];
  *(v8 + 7) = v13;
  v14 = v38[1];
  *v8 = v38[0];
  *(v8 + 1) = v14;
  v15 = v38[3];
  *(v8 + 2) = v38[2];
  *(v8 + 3) = v15;
  v16 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_geometry;
  *&v3[v16] = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{100.0, 100.0}];
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextStyle] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_isSupported] = 1;
  v17 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_layoutClass;
  *&v3[v17] = type metadata accessor for CRLWPLayout();
  v18 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_repClass;
  *&v3[v18] = sub_100006370(0, &unk_101A0D840, off_10182F9E8);
  v19 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_editorClass;
  *&v3[v19] = type metadata accessor for CRLWPEditor(0);
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges] = 0;
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] = 0;
  v20 = OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString;
  *&v3[v20] = [objc_allocWithZone(NSAttributedString) init];
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__characterStyleRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__listRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_store] = a1;
  *&v3[v7] = a2;
  v21 = a1;

  v22 = *(v8 + 13);
  v40[12] = *(v8 + 12);
  v40[13] = v22;
  v40[14] = *(v8 + 14);
  v41 = *(v8 + 30);
  v23 = *(v8 + 9);
  v40[8] = *(v8 + 8);
  v40[9] = v23;
  v24 = *(v8 + 11);
  v40[10] = *(v8 + 10);
  v40[11] = v24;
  v25 = *(v8 + 5);
  v40[4] = *(v8 + 4);
  v40[5] = v25;
  v26 = *(v8 + 7);
  v40[6] = *(v8 + 6);
  v40[7] = v26;
  v27 = *(v8 + 1);
  v40[0] = *v8;
  v40[1] = v27;
  v28 = *(v8 + 3);
  v40[2] = *(v8 + 2);
  v40[3] = v28;
  v29 = *(a3 + 208);
  *(v8 + 12) = *(a3 + 192);
  *(v8 + 13) = v29;
  *(v8 + 14) = *(a3 + 224);
  *(v8 + 30) = *(a3 + 240);
  v30 = *(a3 + 144);
  *(v8 + 8) = *(a3 + 128);
  *(v8 + 9) = v30;
  v31 = *(a3 + 176);
  *(v8 + 10) = *(a3 + 160);
  *(v8 + 11) = v31;
  v32 = *(a3 + 80);
  *(v8 + 4) = *(a3 + 64);
  *(v8 + 5) = v32;
  v33 = *(a3 + 112);
  *(v8 + 6) = *(a3 + 96);
  *(v8 + 7) = v33;
  v34 = *(a3 + 16);
  *v8 = *a3;
  *(v8 + 1) = v34;
  v35 = *(a3 + 48);
  *(v8 + 2) = *(a3 + 32);
  *(v8 + 3) = v35;
  sub_10000CAAC(v40, &unk_101A0D830, &qword_101488F70);
  v37.receiver = v3;
  v37.super_class = type metadata accessor for CRLWPStorage();
  return objc_msgSendSuper2(&v37, "init");
}

uint64_t sub_100A41EDC(char *a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0x63697465766C6548;
  }

  v5 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48];
  v7 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
  v6 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16];
  v86 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32];
  v87 = v5;
  v84 = v7;
  v85 = v6;
  v8 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112];
  v10 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64];
  v9 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80];
  v90 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96];
  v91 = v8;
  v88 = v10;
  v89 = v9;
  v11 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176];
  v13 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128];
  v12 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144];
  v94 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160];
  v95 = v11;
  v92 = v13;
  v93 = v12;
  v15 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208];
  v14 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224];
  v16 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192];
  v99 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240];
  v97 = v15;
  v98 = v14;
  v96 = v16;
  memmove(v100, &a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride], 0xF8uLL);
  result = sub_100695050(v100);
  if (result == 1)
  {
    v18 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v18)
    {
      __break(1u);
      return result;
    }

    (*(*v18 + 896))();
    v19 = a1;
    sub_1005B981C(&unk_101A095A0, "d#'");
    CRRegister.wrappedValue.getter();
    sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    v73 = v59[12];
    v74 = v59[13];
    v75 = v59[14];
    v76 = v60;
    v69 = v59[8];
    v70 = v59[9];
    v71 = v59[10];
    v72 = v59[11];
    v65 = v59[4];
    v66 = v59[5];
    v67 = v59[6];
    v68 = v59[7];
    v61 = v59[0];
    v62 = v59[1];
    v63 = v59[2];
    v64 = v59[3];
    if (sub_100695050(&v61) == 1)
    {

      return 0x63697465766C6548;
    }

    v58 = a1;
    v26 = v76;
    v25 = v75;
    v39 = BYTE8(v75);
    v23 = v74;
    v24 = BYTE8(v74);
    v20 = v73;
    v22 = BYTE8(v73);
    v38 = v72;
    v35 = BYTE8(v72);
    v37 = v64;
    v34 = BYTE8(v64);
    v36 = v63;
    v32 = BYTE8(v63);
    v33 = BYTE10(v62);
    v30 = BYTE9(v62);
    v31 = DWORD1(v62);
    v28 = BYTE8(v62);
    v41 = v61;
    v40 = v62;
    v81 = v69;
    v82 = v70;
    v83 = v71;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v80 = v68;
  }

  else
  {
    v57 = v84;
    v55 = DWORD1(v85);
    v56 = v85;
    v53 = BYTE10(v85);
    v54 = BYTE9(v85);
    v52 = v86;
    v51 = BYTE8(v86);
    v50 = v87;
    v47 = v95;
    v48 = BYTE8(v95);
    v49 = BYTE8(v87);
    v20 = v96;
    v21 = a1;
    v22 = BYTE8(v96);
    v23 = v97;
    v24 = BYTE8(v97);
    v25 = v98;
    v26 = v99;
    v27 = BYTE8(v98);
    v28 = BYTE8(v85);
    v81 = v92;
    v82 = v93;
    v83 = v94;
    v77 = v88;
    v78 = v89;
    v79 = v90;
    v80 = v91;
    v58 = v21;
    v29 = v21;
    v30 = v54;
    v31 = v55;
    v32 = v51;
    v33 = v53;
    v35 = v48;
    v34 = v49;
    v36 = v52;
    v37 = v50;
    v38 = v47;
    v39 = v27;
    v40 = v56;
    v41 = v57;
  }

  v61 = v41;
  LOBYTE(v62) = v40;
  DWORD1(v62) = v31;
  BYTE8(v62) = v28 & 1;
  BYTE9(v62) = v30;
  BYTE10(v62) = v33;
  *&v63 = v36;
  BYTE8(v63) = v32;
  *&v64 = v37;
  BYTE8(v64) = v34;
  v69 = v81;
  v70 = v82;
  v71 = v83;
  v65 = v77;
  v66 = v78;
  v67 = v79;
  v68 = v80;
  *&v72 = v38;
  BYTE8(v72) = v35;
  *&v73 = v20;
  BYTE8(v73) = v22;
  *&v74 = v23;
  BYTE8(v74) = v24;
  *&v75 = v25;
  BYTE8(v75) = v39 & 1;
  v76 = v26;
  v42 = *(&v41 + 1);
  v43 = v41;
  sub_100962438(v41, *(&v41 + 1), v40);
  sub_10000BE14(&v84, v59, &unk_101A0D830, &qword_101488F70);
  sub_10081852C(&v61);
  if (v40 == 255)
  {

    return 0x63697465766C6548;
  }

  if (v40)
  {
    sub_1009623A8(v43, v42, v40);
    return 0x63697465766C6548;
  }

  result = v43;
  if (v42 <= 3)
  {
    if (v42 > 1)
    {
      if (v42 != 2)
      {
        sub_1009623A8(v43, 3uLL, v40);
        return 0xD000000000000026;
      }

      v44 = 2;
      goto LABEL_34;
    }

    if (!v42)
    {
      sub_1009623A8(v43, 0, v40);
      return 0xD000000000000029;
    }

    if (v42 != 1)
    {
      return result;
    }

    v45 = 1;
LABEL_31:
    sub_1009623A8(v43, v45, v40);
    return 0xD000000000000023;
  }

  if (v42 <= 5)
  {
    if (v42 == 4)
    {
      sub_1009623A8(v43, 4uLL, v40);
      return 0xD000000000000025;
    }

    else
    {
      sub_1009623A8(v43, 5uLL, v40);
      return 0xD000000000000027;
    }
  }

  switch(v42)
  {
    case 6:
      v45 = 6;
      goto LABEL_31;
    case 7:
      v44 = 7;
      goto LABEL_34;
    case 8:
      v44 = 8;
LABEL_34:
      sub_1009623A8(v43, v44, v40);
      return 0xD000000000000024;
  }

  return result;
}