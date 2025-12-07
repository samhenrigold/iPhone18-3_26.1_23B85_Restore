void sub_100A59198(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v105 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v4 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v93 - v5;
  v103 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v103);
  v102 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v101 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 interactiveCanvasController];
  v11 = [v10 commandController];

  if (!v11)
  {
    v69 = objc_opt_self();
    v70 = [v69 _atomicIncrementAssertCount];
    v115 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v115, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("groupWPEditorActions(do:)", 25, 2);
    v71 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPShapeEditor+CRLWPTextInspecting.swift", 102, 2);
    v72 = String._bridgeToObjectiveC()();

    v73 = [v72 lastPathComponent];

    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v77 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v70;
    v79 = sub_1005CF000();
    *(inited + 96) = v79;
    v80 = sub_1005CF04C();
    *(inited + 104) = v80;
    *(inited + 72) = v71;
    *(inited + 136) = &type metadata for String;
    v81 = sub_1000053B0();
    *(inited + 112) = v74;
    *(inited + 120) = v76;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v81;
    *(inited + 152) = 260;
    v82 = v115;
    *(inited + 216) = v79;
    *(inited + 224) = v80;
    *(inited + 192) = v82;
    v83 = v71;
    v84 = v82;
    v85 = static os_log_type_t.error.getter();
    sub_100005404(v77, &_mh_execute_header, v85, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v86 = static os_log_type_t.error.getter();
    sub_100005404(v77, &_mh_execute_header, v86, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v87 = swift_allocObject();
    v87[2] = 8;
    v87[3] = 0;
    v87[4] = 0;
    v87[5] = 0;
    v88 = __VaListBuilder.va_list()();
    StaticString.description.getter("groupWPEditorActions(do:)", 25, 2);
    v89 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPShapeEditor+CRLWPTextInspecting.swift", 102, 2);
    v90 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v91 = String._bridgeToObjectiveC()();

    [v69 handleFailureInFunction:v89 file:v90 lineNumber:260 isFatal:0 format:v91 args:v88];

    v92 = v91;
    goto LABEL_40;
  }

  sub_10088E3FC(0);
  v12 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v94 = v11;
  if (v13 >> 62)
  {
LABEL_38:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_39:

    v92 = v94;
    sub_10088E600(0);
LABEL_40:

    return;
  }

LABEL_4:
  v15 = 0;
  v110 = v13 & 0xFFFFFFFFFFFFFF8;
  v111 = v13 & 0xC000000000000001;
  v96 = v3 & 1;
  v99 = (v4 + 8);
  v100 = (v4 + 16);
  v98 = 0x8000000101562810;
  v3 = "setAttributeValue(_:value:)";
  v4 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
  v95 = xmmword_10146CA70;
  v97 = xmmword_10146C6B0;
  v108 = v14;
  v109 = v13;
  while (1)
  {
    if (v111)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v110 + 16))
      {
        goto LABEL_36;
      }

      v20 = *(v13 + 8 * v15 + 32);
    }

    v13 = v20;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    KeyPath = swift_getKeyPath();
    v21 = sub_10094ABE4();
    v113 = v15 + 1;
    if (!v21)
    {
      v106 = v15;
      v112 = objc_opt_self();
      v49 = [v112 _atomicIncrementAssertCount];
      v115 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v115, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v107 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v50 = String._bridgeToObjectiveC()();

      v51 = [v50 lastPathComponent];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v55 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v56 = swift_initStackObject();
      *(v56 + 16) = v95;
      *(v56 + 56) = &type metadata for Int32;
      *(v56 + 64) = &protocol witness table for Int32;
      *(v56 + 32) = v49;
      v57 = sub_1005CF000();
      *(v56 + 96) = v57;
      v58 = sub_1005CF04C();
      *(v56 + 104) = v58;
      v59 = v107;
      *(v56 + 72) = v107;
      *(v56 + 136) = &type metadata for String;
      v60 = sub_1000053B0();
      *(v56 + 112) = v52;
      *(v56 + 120) = v54;
      *(v56 + 176) = &type metadata for UInt;
      *(v56 + 144) = v60;
      *(v56 + 152) = 3002;
      v61 = v115;
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 184) = &protocol witness table for UInt;
      *(v56 + 192) = v61;
      v62 = v59;
      v63 = v61;
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v64, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v56);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v65 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v65, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v66 = swift_allocObject();
      v66[2] = 8;
      v66[3] = 0;
      v66[4] = 0;
      v66[5] = 0;
      v67 = __VaListBuilder.va_list()();
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v68 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v16 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v19.super.isa = String._bridgeToObjectiveC()();

      [v112 handleFailureInFunction:v68 file:v16 lineNumber:3002 isFatal:0 format:v19.super.isa args:v67];

      v13 = v68;
      v15 = v106;
      goto LABEL_8;
    }

    v22 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v23 = *(*(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v23)
    {
      break;
    }

    v24 = *&v23[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v24)
    {
      goto LABEL_42;
    }

    v112 = v21;
    v25 = *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v26 = *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v27 = v102;
    (*(*v24 + 896))();
    v28 = v101;
    sub_1005E0A78(v27 + *(v103 + 20), v101);
    v3 = v23;
    sub_1005E0ADC(v27, type metadata accessor for CRLWPShapeItemCRDTData);
    v29 = v104;
    v30 = v105;
    (*v100)(v104, v28, v105);
    sub_1005E0ADC(v28, type metadata accessor for CRLWPStorageCRDTData);
    v31 = CRAttributedString.attributedString.getter();
    (*v99)(v29, v30);
    v4 = [v31 length];

    if (v4 < 1)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v26, v25))
    {
      goto LABEL_37;
    }

    if (v26 == v25)
    {
      v32 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v33 = *(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
      if (v33 || (v34 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v35 = *(v13 + v32), *(v13 + v32) = v34, v35, (v33 = *(v13 + v32)) != 0))
      {
        v36 = v33 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
        *v36 = v96;
        *(v36 + 8) = 0;
      }

      v16 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v37 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v38 = swift_initStackObject();
      *(v38 + 16) = v97;
      v115 = 0xD000000000000021;
      v116 = v98;
      AnyHashable.init<A>(_:)();
      *(v38 + 96) = sub_1005B981C(&qword_101A0D8C8, &qword_101491000);
      *(v38 + 72) = KeyPath;

      sub_100078EA4(v38);
      swift_setDeallocating();
      sub_10000CAAC(v38 + 32, &unk_1019FB8B0, &unk_101471280);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 postNotificationName:v37 object:v13 userInfo:v19.super.isa];
    }

    else
    {
LABEL_25:
      v39 = [*(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
      v107 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v39 forwardSelectionPath:v39 reverseSelectionPath:v39];
      v40 = *(v13 + v22);
      v41 = KeyPath;

      v42 = v40;
      v43 = sub_1012ED6BC(v42, v25, v26, v41, v96);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v45 = Strong;
        v46 = [Strong commandController];

        if (v46)
        {
          v47 = v107;
          v48 = v107;
          sub_100888700(v43, 0, v47, 4uLL, 0);
        }
      }

      v16 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v17 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v18 = swift_initStackObject();
      *(v18 + 16) = v97;
      v115 = 0xD000000000000021;
      v116 = v98;
      AnyHashable.init<A>(_:)();
      *(v18 + 96) = sub_1005B981C(&qword_101A0D8C8, &qword_101491000);
      *(v18 + 72) = KeyPath;

      sub_100078EA4(v18);
      swift_setDeallocating();
      sub_10000CAAC(v18 + 32, &unk_1019FB8B0, &unk_101471280);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 postNotificationName:v17 object:v13 userInfo:v19.super.isa];

      v13 = v43;
    }

LABEL_8:

    ++v15;
    v13 = v109;
    v3 = "setAttributeValue(_:value:)";
    v4 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
    if (v113 == v108)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_100A5A110(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v108 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v4 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v96 - v5;
  v106 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v106);
  v105 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v104 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 interactiveCanvasController];
  v11 = [v10 commandController];

  if (!v11)
  {
    v72 = objc_opt_self();
    v73 = [v72 _atomicIncrementAssertCount];
    v118 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v118, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("groupWPEditorActions(do:)", 25, 2);
    v74 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPShapeEditor+CRLWPTextInspecting.swift", 102, 2);
    v75 = String._bridgeToObjectiveC()();

    v76 = [v75 lastPathComponent];

    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v80 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v73;
    v82 = sub_1005CF000();
    *(inited + 96) = v82;
    v83 = sub_1005CF04C();
    *(inited + 104) = v83;
    *(inited + 72) = v74;
    *(inited + 136) = &type metadata for String;
    v84 = sub_1000053B0();
    *(inited + 112) = v77;
    *(inited + 120) = v79;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v84;
    *(inited + 152) = 260;
    v85 = v118;
    *(inited + 216) = v82;
    *(inited + 224) = v83;
    *(inited + 192) = v85;
    v86 = v74;
    v87 = v85;
    v88 = static os_log_type_t.error.getter();
    sub_100005404(v80, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v89 = static os_log_type_t.error.getter();
    sub_100005404(v80, &_mh_execute_header, v89, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v90 = swift_allocObject();
    v90[2] = 8;
    v90[3] = 0;
    v90[4] = 0;
    v90[5] = 0;
    v91 = __VaListBuilder.va_list()();
    StaticString.description.getter("groupWPEditorActions(do:)", 25, 2);
    v92 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPShapeEditor+CRLWPTextInspecting.swift", 102, 2);
    v93 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v94 = String._bridgeToObjectiveC()();

    [v72 handleFailureInFunction:v92 file:v93 lineNumber:260 isFatal:0 format:v94 args:v91];

    v95 = v94;
    goto LABEL_44;
  }

  sub_10088E3FC(0);
  v12 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v97 = v11;
  if (v13 >> 62)
  {
LABEL_42:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_43;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_43:

    v95 = v97;
    sub_10088E600(0);
LABEL_44:

    return;
  }

LABEL_4:
  v15 = 0;
  v113 = v13 & 0xFFFFFFFFFFFFFF8;
  v114 = v13 & 0xC000000000000001;
  v99 = v3 & 1;
  v102 = (v4 + 8);
  v103 = (v4 + 16);
  v101 = 0x8000000101562810;
  v3 = "setAttributeValue(_:value:)";
  v4 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
  v98 = xmmword_10146CA70;
  v100 = xmmword_10146C6B0;
  v111 = v14;
  v112 = v13;
  while (1)
  {
    if (v114)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v113 + 16))
      {
        goto LABEL_40;
      }

      v20 = *(v13 + 8 * v15 + 32);
    }

    v13 = v20;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    KeyPath = swift_getKeyPath();
    v21 = sub_10094ABE4();
    v116 = v15 + 1;
    if (!v21)
    {
      v109 = v15;
      v115 = objc_opt_self();
      v52 = [v115 _atomicIncrementAssertCount];
      v118 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v118, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v110 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v53 = String._bridgeToObjectiveC()();

      v54 = [v53 lastPathComponent];

      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v58 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v59 = swift_initStackObject();
      *(v59 + 16) = v98;
      *(v59 + 56) = &type metadata for Int32;
      *(v59 + 64) = &protocol witness table for Int32;
      *(v59 + 32) = v52;
      v60 = sub_1005CF000();
      *(v59 + 96) = v60;
      v61 = sub_1005CF04C();
      *(v59 + 104) = v61;
      v62 = v110;
      *(v59 + 72) = v110;
      *(v59 + 136) = &type metadata for String;
      v63 = sub_1000053B0();
      *(v59 + 112) = v55;
      *(v59 + 120) = v57;
      *(v59 + 176) = &type metadata for UInt;
      *(v59 + 144) = v63;
      *(v59 + 152) = 3002;
      v64 = v118;
      *(v59 + 216) = v60;
      *(v59 + 224) = v61;
      *(v59 + 184) = &protocol witness table for UInt;
      *(v59 + 192) = v64;
      v65 = v62;
      v66 = v64;
      v67 = static os_log_type_t.error.getter();
      sub_100005404(v58, &_mh_execute_header, v67, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v59);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v68 = static os_log_type_t.error.getter();
      sub_100005404(v58, &_mh_execute_header, v68, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v69 = swift_allocObject();
      v69[2] = 8;
      v69[3] = 0;
      v69[4] = 0;
      v69[5] = 0;
      v70 = __VaListBuilder.va_list()();
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v16 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v19.super.isa = String._bridgeToObjectiveC()();

      [v115 handleFailureInFunction:v71 file:v16 lineNumber:3002 isFatal:0 format:v19.super.isa args:v70];

      v13 = v71;
      v15 = v109;
      goto LABEL_8;
    }

    v22 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v23 = *(*(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v23)
    {
      break;
    }

    v24 = *&v23[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v24)
    {
      goto LABEL_46;
    }

    v115 = v21;
    v25 = *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v26 = *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v27 = v105;
    (*(*v24 + 896))();
    v28 = v104;
    sub_1005E0A78(v27 + *(v106 + 20), v104);
    v3 = v23;
    sub_1005E0ADC(v27, type metadata accessor for CRLWPShapeItemCRDTData);
    v29 = v107;
    v30 = v108;
    (*v103)(v107, v28, v108);
    sub_1005E0ADC(v28, type metadata accessor for CRLWPStorageCRDTData);
    v31 = CRAttributedString.attributedString.getter();
    (*v102)(v29, v30);
    v4 = [v31 length];

    if (v4 < 1)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v26, v25))
    {
      goto LABEL_41;
    }

    if (v26 == v25)
    {
      v32 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v33 = *(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
      if (v33 || (v34 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v35 = *(v13 + v32), *(v13 + v32) = v34, v35, (v33 = *(v13 + v32)) != 0))
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v37 = v99;
        if (v36)
        {
          v37 = 0;
        }

        v38 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
        if ((v36 & 1) == 0)
        {
          v38 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
        }

        v39 = v33 + *v38;
        *v39 = v37;
        *(v39 + 8) = v36 & 1;
      }

      v16 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v40 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v41 = swift_initStackObject();
      *(v41 + 16) = v100;
      v118 = 0xD000000000000021;
      v119 = v101;
      AnyHashable.init<A>(_:)();
      *(v41 + 96) = sub_1005B981C(&qword_101A0D8D0, &unk_1014906F0);
      *(v41 + 72) = KeyPath;

      sub_100078EA4(v41);
      swift_setDeallocating();
      sub_10000CAAC(v41 + 32, &unk_1019FB8B0, &unk_101471280);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 postNotificationName:v40 object:v13 userInfo:v19.super.isa];
    }

    else
    {
LABEL_29:
      v42 = [*(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
      v110 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v42 forwardSelectionPath:v42 reverseSelectionPath:v42];
      v43 = *(v13 + v22);
      v44 = KeyPath;

      v45 = v43;
      v46 = sub_1012ED8D0(v45, v25, v26, v44, v99);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v48 = Strong;
        v49 = [Strong commandController];

        if (v49)
        {
          v50 = v110;
          v51 = v110;
          sub_100888700(v46, 0, v50, 4uLL, 0);
        }
      }

      v16 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v17 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v18 = swift_initStackObject();
      *(v18 + 16) = v100;
      v118 = 0xD000000000000021;
      v119 = v101;
      AnyHashable.init<A>(_:)();
      *(v18 + 96) = sub_1005B981C(&qword_101A0D8D0, &unk_1014906F0);
      *(v18 + 72) = KeyPath;

      sub_100078EA4(v18);
      swift_setDeallocating();
      sub_10000CAAC(v18 + 32, &unk_1019FB8B0, &unk_101471280);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 postNotificationName:v17 object:v13 userInfo:v19.super.isa];

      v13 = v46;
    }

LABEL_8:

    ++v15;
    v13 = v112;
    v3 = "setAttributeValue(_:value:)";
    v4 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
    if (v116 == v111)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_100A5B0DC(_WORD *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100946704(KeyPath);
  v4 = v3;

  *a1 = v4;
}

void sub_100A5B12C(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v90 = sub_1005B981C(&qword_101A06188, &qword_101483A00);
  __chkstk_darwin(v90);
  v89 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v88 = (&v82 - v7);
  v8 = [v1 interactiveCanvasController];
  v9 = [v8 commandController];

  if (v9)
  {
    sub_10088E3FC(0);
    v10 = [v2 wpEditors];
    type metadata accessor for CRLWPEditor(0);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = v11;
    v83 = v9;
    if (v11 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v81)
    {
      v14 = 0;
      v93 = v12 & 0xFFFFFFFFFFFFFF8;
      v94 = v12 & 0xC000000000000001;
      v86 = 0x8000000101562810;
      v87 = v3;
      v84 = xmmword_10146CA70;
      v85 = xmmword_10146C6B0;
      v91 = i;
      v92 = v12;
      while (1)
      {
        if (v94)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v93 + 16))
          {
            goto LABEL_25;
          }

          v12 = *(v12 + 8 * v14 + 32);
        }

        v3 = v12;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v104 = v14 + 1;
        KeyPath = swift_getKeyPath();
        v20 = sub_10094ABE4();
        v102 = KeyPath;
        v103 = v3;
        if (v20)
        {
          v100 = v14;
          v99 = v20;
          v21 = *&v20[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v96 = *&v20[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
          v97 = v21;
          v22 = [*&v3[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
          v23 = objc_allocWithZone(CRLCommandSelectionBehavior);
          v98 = v22;
          v101 = [v23 initWithCommitSelectionPath:v22 forwardSelectionPath:v22 reverseSelectionPath:v22];
          v24 = *&v3[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape];
          v25 = v88;
          *v88 = _swiftEmptySetSingleton;
          sub_10068D144();
          v95 = v24;
          v26 = CRAttributedString.Attributes.init()();
          __chkstk_darwin(v26);
          *(&v82 - 4) = &type metadata for CRLWPParagraphScope;
          *(&v82 - 3) = &type metadata for CRLWPListStyleTypeAttribute;
          v27 = sub_100962180();
          *(&v82 - 2) = v27;
          *(&v82 - 1) = KeyPath;
          v28 = swift_getKeyPath();

          sub_100E6DE34(&v105, 0x6C7974537473696CLL, 0xE900000000000065);

          __chkstk_darwin(v29);
          *(&v82 - 4) = &type metadata for CRLWPParagraphScope;
          *(&v82 - 3) = &type metadata for CRLWPListStyleTypeAttribute;
          *(&v82 - 2) = v27;
          *(&v82 - 1) = v28;
          swift_getKeyPath();
          v105 = v87;
          LOBYTE(v106) = 0;
          sub_1005B981C(qword_101A0CF60, "87&");
          sub_1009621D4();
          CRAttributedString.Attributes.subscript.setter();
          v30 = v89;
          sub_10000BE14(v25, v89, &qword_101A06188, &qword_101483A00);
          v31 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0, &unk_101488E20));
          v32 = v95;
          v33 = sub_100961C20(v95, v97, v96, v30);

          v3 = v103;
          sub_10000CAAC(v25, &qword_101A06188, &qword_101483A00);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v35 = Strong;
            v36 = [Strong commandController];

            if (v36)
            {
              v37 = v101;
              v38 = v101;
              sub_100888700(v33, 0, v37, 4uLL, 0);
            }
          }

          v15 = [objc_opt_self() defaultCenter];
          v14 = v100;
          if (qword_1019F2368 != -1)
          {
            swift_once();
          }

          v16 = qword_101AD80C8;
          sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
          inited = swift_initStackObject();
          *(inited + 16) = v85;
          v105 = 0xD000000000000021;
          v106 = v86;
          AnyHashable.init<A>(_:)();
          *(inited + 96) = sub_1005B981C(&qword_101A0D890, &qword_101490468);
          *(inited + 72) = v102;

          sub_100078EA4(inited);
          swift_setDeallocating();
          sub_10000CAAC(inited + 32, &unk_1019FB8B0, &unk_101471280);
          v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v15 postNotificationName:v16 object:v3 userInfo:v18.super.isa];
        }

        else
        {
          v101 = objc_opt_self();
          v39 = [v101 _atomicIncrementAssertCount];
          v105 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v105, "invalid nil found when unwrapping value", 39, 2u);
          StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
          v40 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
          v41 = String._bridgeToObjectiveC()();

          v42 = [v41 lastPathComponent];

          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v46 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          v47 = swift_initStackObject();
          *(v47 + 16) = v84;
          *(v47 + 56) = &type metadata for Int32;
          *(v47 + 64) = &protocol witness table for Int32;
          *(v47 + 32) = v39;
          v48 = sub_1005CF000();
          *(v47 + 96) = v48;
          v49 = sub_1005CF04C();
          *(v47 + 104) = v49;
          *(v47 + 72) = v40;
          *(v47 + 136) = &type metadata for String;
          v50 = sub_1000053B0();
          *(v47 + 112) = v43;
          *(v47 + 120) = v45;
          *(v47 + 176) = &type metadata for UInt;
          *(v47 + 144) = v50;
          *(v47 + 152) = 3011;
          v51 = v105;
          *(v47 + 216) = v48;
          *(v47 + 224) = v49;
          *(v47 + 184) = &protocol witness table for UInt;
          *(v47 + 192) = v51;
          v3 = v40;
          v52 = v51;
          v53 = static os_log_type_t.error.getter();
          sub_100005404(v46, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v47);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v54 = static os_log_type_t.error.getter();
          sub_100005404(v46, &_mh_execute_header, v54, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v55 = swift_allocObject();
          v55[2] = 8;
          v55[3] = 0;
          v55[4] = 0;
          v55[5] = 0;
          v56 = __VaListBuilder.va_list()();
          StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
          v33 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
          v15 = String._bridgeToObjectiveC()();

          StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
          LOBYTE(v3) = v57;
          v18.super.isa = String._bridgeToObjectiveC()();

          [v101 handleFailureInFunction:v33 file:v15 lineNumber:3011 isFatal:0 format:v18.super.isa args:v56];
        }

        ++v14;
        v12 = v92;
        if (v104 == v91)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v81 = v12;
      i = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_27:

    v80 = v83;
    sub_10088E600(0);
  }

  else
  {
    v58 = objc_opt_self();
    v59 = [v58 _atomicIncrementAssertCount];
    v105 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v105, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("groupWPEditorActions(do:)", 25, 2);
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPShapeEditor+CRLWPTextInspecting.swift", 102, 2);
    v61 = String._bridgeToObjectiveC()();

    v62 = [v61 lastPathComponent];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v66 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_10146CA70;
    *(v67 + 56) = &type metadata for Int32;
    *(v67 + 64) = &protocol witness table for Int32;
    *(v67 + 32) = v59;
    v68 = sub_1005CF000();
    *(v67 + 96) = v68;
    v69 = sub_1005CF04C();
    *(v67 + 104) = v69;
    *(v67 + 72) = v60;
    *(v67 + 136) = &type metadata for String;
    v70 = sub_1000053B0();
    *(v67 + 112) = v63;
    *(v67 + 120) = v65;
    *(v67 + 176) = &type metadata for UInt;
    *(v67 + 184) = &protocol witness table for UInt;
    *(v67 + 144) = v70;
    *(v67 + 152) = 260;
    v71 = v105;
    *(v67 + 216) = v68;
    *(v67 + 224) = v69;
    *(v67 + 192) = v71;
    v72 = v60;
    v73 = v71;
    v74 = static os_log_type_t.error.getter();
    sub_100005404(v66, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v67);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v75 = static os_log_type_t.error.getter();
    sub_100005404(v66, &_mh_execute_header, v75, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v76 = swift_allocObject();
    v76[2] = 8;
    v76[3] = 0;
    v76[4] = 0;
    v76[5] = 0;
    v77 = __VaListBuilder.va_list()();
    StaticString.description.getter("groupWPEditorActions(do:)", 25, 2);
    v78 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPShapeEditor+CRLWPTextInspecting.swift", 102, 2);
    v79 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v80 = String._bridgeToObjectiveC()();

    [v58 handleFailureInFunction:v78 file:v79 lineNumber:260 isFatal:0 format:v80 args:v77];
  }
}

void sub_100A5BE90(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10094C804(KeyPath);
  v4 = v3;
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
}

void sub_100A5BEE8(void *a1)
{
  v2 = v1;
  v106 = a1;
  v111 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v3 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = &v99 - v4;
  v109 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v109);
  v108 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v107 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 interactiveCanvasController];
  v10 = [v9 commandController];

  if (!v10)
  {
    v75 = objc_opt_self();
    v76 = [v75 _atomicIncrementAssertCount];
    v123 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v123, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("groupWPEditorActions(do:)", 25, 2);
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPShapeEditor+CRLWPTextInspecting.swift", 102, 2);
    v78 = String._bridgeToObjectiveC()();

    v79 = [v78 lastPathComponent];

    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v83 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v76;
    v85 = sub_1005CF000();
    *(inited + 96) = v85;
    v86 = sub_1005CF04C();
    *(inited + 104) = v86;
    *(inited + 72) = v77;
    *(inited + 136) = &type metadata for String;
    v87 = sub_1000053B0();
    *(inited + 112) = v80;
    *(inited + 120) = v82;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v87;
    *(inited + 152) = 260;
    v88 = v123;
    *(inited + 216) = v85;
    *(inited + 224) = v86;
    *(inited + 192) = v88;
    v89 = v77;
    v90 = v88;
    v91 = static os_log_type_t.error.getter();
    sub_100005404(v83, &_mh_execute_header, v91, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v92 = static os_log_type_t.error.getter();
    sub_100005404(v83, &_mh_execute_header, v92, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v93 = swift_allocObject();
    v93[2] = 8;
    v93[3] = 0;
    v93[4] = 0;
    v93[5] = 0;
    v94 = __VaListBuilder.va_list()();
    StaticString.description.getter("groupWPEditorActions(do:)", 25, 2);
    v95 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPShapeEditor+CRLWPTextInspecting.swift", 102, 2);
    v96 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v97 = String._bridgeToObjectiveC()();

    [v75 handleFailureInFunction:v95 file:v96 lineNumber:260 isFatal:0 format:v97 args:v94];

    v98 = v97;
    goto LABEL_40;
  }

  sub_10088E3FC(0);
  v11 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor(0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v100 = v10;
  if (v12 >> 62)
  {
LABEL_38:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_39:

    v98 = v100;
    sub_10088E600(0);
LABEL_40:

    return;
  }

LABEL_4:
  v14 = 0;
  v117 = v12 & 0xFFFFFFFFFFFFFF8;
  v118 = v12 & 0xC000000000000001;
  v104 = (v3 + 8);
  v105 = (v3 + 16);
  v103 = 0x8000000101562810;
  v3 = "setAttributeValue(_:value:)";
  v101 = xmmword_10146CA70;
  v102 = xmmword_10146C6B0;
  v115 = v13;
  v116 = v12;
  while (1)
  {
    if (v118)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(v117 + 16))
      {
        goto LABEL_36;
      }

      v21 = *(v12 + 8 * v14 + 32);
    }

    v22 = v21;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    KeyPath = swift_getKeyPath();
    v23 = sub_10094ABE4();
    v120 = v14 + 1;
    v122 = v22;
    if (!v23)
    {
      v119 = objc_opt_self();
      LODWORD(v114) = [v119 _atomicIncrementAssertCount];
      v123 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v123, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v58 = String._bridgeToObjectiveC()();

      v59 = [v58 lastPathComponent];

      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v63 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v64 = swift_initStackObject();
      *(v64 + 16) = v101;
      *(v64 + 56) = &type metadata for Int32;
      *(v64 + 64) = &protocol witness table for Int32;
      *(v64 + 32) = v114;
      v65 = sub_1005CF000();
      *(v64 + 96) = v65;
      v66 = sub_1005CF04C();
      *(v64 + 104) = v66;
      *(v64 + 72) = v57;
      *(v64 + 136) = &type metadata for String;
      v67 = sub_1000053B0();
      *(v64 + 112) = v60;
      *(v64 + 120) = v62;
      *(v64 + 176) = &type metadata for UInt;
      *(v64 + 144) = v67;
      *(v64 + 152) = 3002;
      v68 = v123;
      *(v64 + 216) = v65;
      *(v64 + 224) = v66;
      *(v64 + 184) = &protocol witness table for UInt;
      *(v64 + 192) = v68;
      v69 = v57;
      v70 = v68;
      v71 = static os_log_type_t.error.getter();
      sub_100005404(v63, &_mh_execute_header, v71, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v64);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v72 = static os_log_type_t.error.getter();
      sub_100005404(v63, &_mh_execute_header, v72, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v73 = swift_allocObject();
      v73[2] = 8;
      v73[3] = 0;
      v73[4] = 0;
      v73[5] = 0;
      v74 = __VaListBuilder.va_list()();
      StaticString.description.getter("setAttributeValue(_:value:)", 27, 2);
      v20 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v15 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v18.super.isa = String._bridgeToObjectiveC()();

      [v119 handleFailureInFunction:v20 file:v15 lineNumber:3002 isFatal:0 format:v18.super.isa args:v74];

      v12 = v116;
      goto LABEL_8;
    }

    v24 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v25 = *(*&v22[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v25)
    {
      break;
    }

    v26 = *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v26)
    {
      goto LABEL_42;
    }

    v119 = v23;
    v12 = *&v23[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v27 = *&v23[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v28 = v108;
    (*(*v26 + 896))();
    v29 = v107;
    sub_1005E0A78(v28 + *(v109 + 20), v107);
    v30 = v25;
    sub_1005E0ADC(v28, type metadata accessor for CRLWPShapeItemCRDTData);
    v31 = v110;
    v32 = v111;
    (*v105)(v110, v29, v111);
    sub_1005E0ADC(v29, type metadata accessor for CRLWPStorageCRDTData);
    v33 = CRAttributedString.attributedString.getter();
    (*v104)(v31, v32);
    v34 = [v33 length];

    if (v34 < 1)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v27, v12))
    {
      goto LABEL_37;
    }

    if (v27 == v12)
    {
      v35 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v36 = v122;
      v37 = *&v122[OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle];
      if (v37 || (v38 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v39 = *&v36[v35], *&v36[v35] = v38, v39, (v37 = *&v36[v35]) != 0))
      {
        v40 = v37;

        v41 = v106;
        v42 = v106;
        sub_1012E7B64(v41);
      }

      v15 = [objc_opt_self() defaultCenter];
      v12 = v116;
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v43 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v44 = swift_initStackObject();
      *(v44 + 16) = v102;
      v123 = 0xD000000000000021;
      v124 = v103;
      AnyHashable.init<A>(_:)();
      *(v44 + 96) = sub_1005B981C(&qword_101A0D8F8, &qword_101490E30);
      *(v44 + 72) = KeyPath;

      sub_100078EA4(v44);
      swift_setDeallocating();
      sub_10000CAAC(v44 + 32, &unk_1019FB8B0, &unk_101471280);
      v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = v122;
      [v15 postNotificationName:v43 object:v122 userInfo:v18.super.isa];
    }

    else
    {
LABEL_25:
      v114 = v14;
      v45 = v122;
      v46 = [*&v122[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
      v47 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v46 forwardSelectionPath:v46 reverseSelectionPath:v46];
      v48 = *&v45[v24];
      v49 = KeyPath;

      v50 = v106;
      v51 = v48;
      v52 = sub_1012EE5D0(v51, v12, v27, v49, v50);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v54 = Strong;
        v55 = [Strong commandController];

        if (v55)
        {
          v56 = v47;
          sub_100888700(v52, 0, v47, 4uLL, 0);
        }
      }

      v112 = v52;
      v113 = v47;
      v15 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v16 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
      v17 = swift_initStackObject();
      *(v17 + 16) = v102;
      v123 = 0xD000000000000021;
      v124 = v103;
      AnyHashable.init<A>(_:)();
      *(v17 + 96) = sub_1005B981C(&qword_101A0D8F8, &qword_101490E30);
      *(v17 + 72) = KeyPath;

      sub_100078EA4(v17);
      swift_setDeallocating();
      sub_10000CAAC(v17 + 32, &unk_1019FB8B0, &unk_101471280);
      v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v19 = v122;
      [v15 postNotificationName:v16 object:v122 userInfo:v18.super.isa];

      v20 = v112;
      v12 = v116;
      v14 = v114;
    }

LABEL_8:

    ++v14;
    v3 = "setAttributeValue(_:value:)";
    if (v120 == v115)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_100A5CE9C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = v2;
  v6 = [v2 interactiveCanvasController];
  v37 = [v6 commandController];

  if (v37)
  {
    sub_10088E3FC(0);
    v7 = [v4 wpEditors];
    type metadata accessor for CRLWPEditor(0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        a2(a1);

        ++v10;
        if (v13 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    sub_10088E600(0);
  }

  else
  {
    v14 = objc_opt_self();
    v15 = [v14 _atomicIncrementAssertCount];
    v38 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v38, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("groupWPEditorActions(do:)", 25, 2);
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPShapeEditor+CRLWPTextInspecting.swift", 102, 2);
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v15;
    v24 = sub_1005CF000();
    *(inited + 96) = v24;
    v25 = sub_1005CF04C();
    *(inited + 104) = v25;
    *(inited + 72) = v16;
    *(inited + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 112) = v19;
    *(inited + 120) = v21;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v26;
    *(inited + 152) = 260;
    v27 = v38;
    *(inited + 216) = v24;
    *(inited + 224) = v25;
    *(inited + 192) = v27;
    v28 = v16;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
    v33 = __VaListBuilder.va_list()();
    StaticString.description.getter("groupWPEditorActions(do:)", 25, 2);
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPShapeEditor+CRLWPTextInspecting.swift", 102, 2);
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v36 = String._bridgeToObjectiveC()();

    [v14 handleFailureInFunction:v34 file:v35 lineNumber:260 isFatal:0 format:v36 args:v33];
  }
}

uint64_t sub_100A5D390()
{
  KeyPath = swift_getKeyPath();
  sub_1012E8400(KeyPath);
  v2 = v1;

  return v2 & 0xFFFFFFFFFFLL;
}

uint64_t sub_100A5D5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  v5 = a4();

  return v5;
}

uint64_t sub_100A5D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  v5 = a4();

  return v5;
}

void *sub_100A5D724(uint64_t a1)
{
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v26 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v26 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v23 = result;
  v24 = v5;
  v25 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v23;
    v9 = v24;
    v11 = v25;
    sub_1007245FC(v23, v24, v25, a1);
    type metadata accessor for CRLGroupItem(0);
    swift_dynamicCastClassUnconditional();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v21)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1005B981C(&unk_1019FCB90, &qword_101477BC0);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v22, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1000341AC(v23, v24, v25);
        return v26;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v12 = (1 << *(a1 + 32));
      if (v10 >= v12)
      {
        goto LABEL_32;
      }

      v13 = v10 >> 6;
      v14 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v14 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v15 = v14 & (-2 << (v10 & 0x3F));
      if (v15)
      {
        v12 = (__clz(__rbit64(v15)) | v10 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (a1 + 64 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_1000341AC(v10, v9, 0);
            v12 = (__clz(__rbit64(v19)) + v16);
            goto LABEL_27;
          }
        }

        result = sub_1000341AC(v10, v9, 0);
      }

LABEL_27:
      v23 = v12;
      v24 = v9;
      v25 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

id sub_100A5DBCC(uint64_t a1)
{
  sub_100601584(a1, v17);
  if (!v18)
  {
    sub_1005E09AC(v17);
    return 0;
  }

  v3 = type metadata accessor for CRLGroupSelection();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v16;
  if (v16[OBJC_IVAR____TtC8Freeform17CRLGroupSelection_hasSelectedItemsInNonGroupContainer] != v1[OBJC_IVAR____TtC8Freeform17CRLGroupSelection_hasSelectedItemsInNonGroupContainer])
  {

    return 0;
  }

  sub_100601584(a1, v17);
  v6 = v18;
  if (v18)
  {
    v7 = sub_100020E58(v17, v18);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_100005070(v17);
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v1;
  v15.super_class = v3;
  v13 = objc_msgSendSuper2(&v15, "isEqual:", v12);
  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_100A5DFC0()
{
  sub_1005CF000();
  v1 = NSString.init(stringLiteral:)("<CRLGroupSelection: %p %tu %@>", 30, 2);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146C4D0;
  *(v2 + 56) = type metadata accessor for CRLGroupSelection();
  *(v2 + 64) = sub_100A5E238(&qword_101A0E4C8, v3, type metadata accessor for CRLGroupSelection, &protocol conformance descriptor for NSObject);
  *(v2 + 32) = v0;
  v4 = *&v0[OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems];
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = v0;

    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v4 + 16);
    v7 = v0;
  }

  *(v2 + 96) = &type metadata for Int;
  *(v2 + 104) = &protocol witness table for Int;
  *(v2 + 72) = v6;
  type metadata accessor for CRLBoardItem(0);
  sub_100A5E238(&qword_1019FCB80, 255, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);

  v8 = Set.description.getter();
  v10 = v9;

  *(v2 + 136) = &type metadata for String;
  *(v2 + 144) = sub_1000053B0();
  *(v2 + 112) = v8;
  *(v2 + 120) = v10;
  v11 = NSString.init(format:_:)();

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

id sub_100A5E1E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLGroupSelection();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100A5E238(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

id sub_100A5E320()
{
  [v0 currentPosition];
  v2 = v1;
  v4 = v3;
  sub_100A5E47C();
  v7 = sub_100120090(v2, v4, v5, v6);
  v8 = [objc_allocWithZone(CRLBezierPath) init];
  [v0 currentPosition];
  [v8 moveToPoint:?];
  sub_100A5E47C();
  v10 = v9;
  v12 = v11;
  [v0 currentPosition];
  v15 = sub_10011F31C(v13, v14, v10);
  v17 = sub_10011F2FC(v15, v16);
  v19 = sub_10011F340(v17, v18, v7 + 30.0);
  [v8 lineToPoint:{sub_10011F334(v10, v12, v19)}];
  sub_100A5E47C();
  v21 = v20;
  v23 = v22;
  [v0 currentPosition];
  v26 = sub_10011F31C(v24, v25, v21);
  v28 = sub_10011F2FC(v26, v27);
  v30 = sub_10011F340(v28, v29, v7 + 60.0);
  [v8 lineToPoint:{sub_10011F334(v21, v23, v30)}];
  return v8;
}

void sub_100A5E47C()
{
  v1 = [v0 rep];
  v2 = [v1 layout];

  v3 = [v2 pureGeometryInRoot];
  if (v3)
  {
    [v3 center];

    v4 = [v0 rep];
    v5 = [v4 layout];

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      if ([v6 maskEditMode] == 3)
      {
        v8 = [v7 imageGeometryInRoot];
        [v8 center];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_100A5E5CC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  v30.receiver = v0;
  v30.super_class = v14;
  objc_msgSendSuper2(&v30, "beginMovingKnob");
  v15 = [v0 knob];
  type metadata accessor for CRLConnectionLineKnob();
  v16 = swift_dynamicCastClass();
  if (v16 && *(v16 + OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_knobState) == 2)
  {
    sub_100D6BD8C(3, 1);
  }

  v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine] = 0;
  v17 = *&v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
  *&v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker] = 0;

  v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview] = [objc_opt_self() isVoiceOverOrSwitchControlEnabled] ^ 1;
  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v8 + 8);
  v24(v10, v7);
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  aBlock[4] = sub_100A6833C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101892D48;
  v20 = _Block_copy(aBlock);
  v21 = v0;
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100A68208(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10000D494();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v27 + 8))(v3, v1);
  (*(v25 + 8))(v6, v26);
  v24(v13, v7);

  return result;
}

double sub_100A5EA38(void *a1)
{
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = a1;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_10064191C(0, 0, v4, &unk_1014911C8, v8);

  return result;
}

uint64_t sub_100A5EB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v6;
  v4[14] = v5;

  return _swift_task_switch(sub_100A5EBFC, v6, v5);
}

uint64_t sub_100A5EBFC()
{
  if (*(*(v0 + 80) + OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview) == 1)
  {
    swift_unknownObjectWeakInit();

    return _swift_task_switch(sub_100A5ECB4, 0, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_100A5ECB4(uint64_t a1)
{
  *(v1 + 120) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A5ED40, v3, v2);
}

uint64_t sub_100A5ED40()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_100A61504();

    sub_10000CAAC(v0 + 16, &unk_1019F4D00, &unk_10146E7F0);
  }

  swift_unknownObjectWeakDestroy();
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  return _swift_task_switch(sub_100A5EDFC, v3, v4);
}

uint64_t sub_100A5EDFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A5EEA4()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v70 - v7;

  inited = swift_initStackObject();
  v74 = xmmword_101465920;
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v1 rep];
  sub_1005BFCB4(inited);
  v11 = v10;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10121307C(v11);
  v13 = v12;

  v14 = sub_100E93C20(v13);

  v15 = sub_100BC17C8(v14);

  if (!v15)
  {
    return 0;
  }

  v71 = v8;
  v72 = v4;
  v16 = [v1 rep];
  v17 = [v16 getConnectionLineLayoutToCopyStyleForNewConnectionLine];

  sub_100A62B68(v17);
  v18 = &v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters];
  *v18 = v19;
  v18[8] = 0;
  sub_100A6664C();
  v21 = v20;
  v23 = v22;
  sub_100A5E47C();
  v26 = sub_100120090(v21, v23, v24, v25);
  v27 = v26 + v26 + 150.0;
  if (!v18[8])
  {
    v27 = *v18;
  }

  v28 = v27 - v26;
  sub_100A5E47C();
  v30 = v29;
  v32 = v31;
  sub_100A6664C();
  v35 = sub_10011F31C(v33, v34, v30);
  v37 = sub_10011F2FC(v35, v36);
  v39 = sub_10011F340(v37, v38, v28);
  v40 = sub_10011F334(v30, v32, v39);
  v42 = v41;
  sub_100A6664C();
  v45 = sub_10011FA08(v43, v44, v40);
  v47 = v46;
  v48 = [objc_allocWithZone(CRLBezierPath) init];
  sub_100A6664C();
  [v48 moveToPoint:?];
  [v48 lineToPoint:{v45, v47}];
  [v48 lineToPoint:{v40, v42}];
  v49 = sub_100A5F5E4(v48, v17);

  if (!v49)
  {
    v61 = 0;
LABEL_19:

    return v61;
  }

  v50 = *&v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine];
  *&v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine] = v49;
  v73 = v49;

  v51 = swift_initStackObject();
  *(v51 + 16) = v74;
  *(v51 + 32) = [v1 rep];
  sub_1005BFCB4(v51);
  v53 = v52;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10121307C(v53);
  v55 = v54;

  v56 = sub_100E93C20(v55);

  v57 = sub_100BC17C8(v56);

  if (!v57)
  {
    goto LABEL_15;
  }

  v58 = [v1 icc];
  v59 = [v58 editingCoordinator];

  if (!v59 || (v60 = *&v59[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory], v59, v61 = sub_10110D5CC(v57), v60, !v61))
  {

LABEL_15:
    v63 = v73;

    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v68 = static OS_os_log.crlError;
    v69 = static os_log_type_t.error.getter();
    sub_100005404(v68, &_mh_execute_header, v69, "Fail to create duplicated board items when long pressing the connector knob", 75, 2, _swiftEmptyArrayStorage);
    v61 = 0;
    goto LABEL_18;
  }

  v62 = v73;

  (*((swift_isaMask & *v61) + 0x210))();
  sub_100A60DF4(v61);

  v63 = v15;
  result = sub_1011255D0();
  if ((result & 1) == 0)
  {
LABEL_11:

    v15 = v61;
    sub_100AEE290(v61);
LABEL_18:

    v15 = v17;
    v17 = v63;
    goto LABEL_19;
  }

  if (**&v62[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A0C0B8)
  {
    v65 = v71;
    (*((swift_isaMask & *v63) + 0x88))();
    v66 = type metadata accessor for UUID();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    swift_beginAccess();
    sub_10000BE14(v65, v72, &qword_1019F6990, &qword_10146D2F0);
    type metadata accessor for CRLConnectionLineCRDTData(0);
    v67 = v63;

    sub_1005B981C(&qword_101A06128, &unk_10148D3C0);
    CRRegister.wrappedValue.setter();
    sub_10000CAAC(v65, &qword_1019F6990, &qword_10146D2F0);
    swift_endAccess();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_100A5F5E4(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_1005B981C(&qword_1019FC880, &qword_1014779C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v36 - v17;
  if (a2)
  {
    v19 = [a2 connectionType];
    v20 = 18;
    if (v19 != 2)
    {
      v20 = 19;
    }

    if (v19 == 1)
    {
      v20 = 2;
    }
  }

  else
  {
    v20 = 19;
  }

  v40 = v20;
  result = [objc_allocWithZone(CRLConnectionLinePathSource) initWithBezierPath:a1];
  if (result)
  {
    v22 = result;
    v39 = a2;
    v23 = [v2 icc];
    v24 = [v23 editingCoordinator];

    if (v24)
    {
      v38 = *&v24[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

      (*(v6 + 56))(v18, 1, 1, v5);
      sub_1006950BC(v41);
      v43[12] = v41[12];
      v43[13] = v41[13];
      v43[14] = v41[14];
      v44 = v42;
      v43[8] = v41[8];
      v43[9] = v41[9];
      v43[10] = v41[10];
      v43[11] = v41[11];
      v43[4] = v41[4];
      v43[5] = v41[5];
      v43[6] = v41[6];
      v43[7] = v41[7];
      v43[0] = v41[0];
      v43[1] = v41[1];
      v43[2] = v41[2];
      v43[3] = v41[3];
      v25 = sub_100818518(v40);
      v37 = v22;
      if (v25)
      {
        v26 = 0;
        v27 = v39;
      }

      else
      {
        sub_10000BE14(v18, v14, &qword_1019FC880, &qword_1014779C0);
        v28 = *(v6 + 48);
        if (v28(v14, 1, v5) == 1)
        {
          AttributedString.init(stringLiteral:)();
          v29 = v28(v14, 1, v5);
          v27 = v39;
          if (v29 != 1)
          {
            sub_10000CAAC(v14, &qword_1019FC880, &qword_1014779C0);
          }
        }

        else
        {
          (*(v6 + 32))(v8, v14, v5);
          v27 = v39;
        }

        sub_100006370(0, &qword_1019F76F0, NSAttributedString_ptr);
        v26 = NSAttributedString.init(_:)();
      }

      v30 = type metadata accessor for CRLWPStorageCRDTData(0);
      (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
      v31 = v38;
      v32 = sub_1011133FC(v40, 0, v22, 1, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v26, v11, v43, 0, 0, 0, 0, 1u);
      v33 = v37;

      sub_10000CAAC(v11, &unk_101A0B1C0, &qword_101470EC0);
      sub_10000CAAC(v18, &qword_1019FC880, &qword_1014779C0);
      type metadata accessor for CRLConnectionLineItem(0);
      v34 = swift_dynamicCastClass();
      if (v34)
      {
        v35 = v34;
        sub_100AEFA30(v27);

        return v35;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_100A5FAF0()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v110 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 icc];
  v14 = [v13 board];

  if (!v14)
  {
    return 0;
  }

  v120 = v7;
  v121 = v9;
  v15 = [v1 icc];
  v16 = [v15 editingCoordinator];

  if (!v16)
  {

    return 0;
  }

  v17 = *&v16[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

  v18 = sub_100A5EEA4();
  if (!v18)
  {

    return 0;
  }

  v113 = v4;
  v118 = v19;
  v119 = v17;
  v116 = v14;
  v117 = v18;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v1 rep];
  sub_1005BFCB4(inited);
  v22 = v21;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10121307C(v22);
  v24 = v23;
  v114 = 0;

  v25 = sub_100E93C20(v24);

  v26 = sub_100BC17C8(v25);

  if (!v26)
  {

    return v26;
  }

  v27 = [v1 icc];
  v28 = [v27 editingCoordinator];

  if (!v28)
  {

    v98 = v116;
    goto LABEL_41;
  }

  v29 = *&v28[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

  v30 = sub_10110D5CC(v26);
  if (!v30)
  {

    return 0;
  }

  v31 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{1.0, 1.0}];
  v32 = type metadata accessor for CRLGroupItem(0);
  v33 = *&v119[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
  v34 = *(v33 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v33 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  v35 = objc_allocWithZone(v32);
  v36 = v34;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v26 = [v35 initWithStore:v36 parentContainerUUID:isa geometry:v31];

  v38 = v121;
  v121[1](v12, v8);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10146E8A0;
  *(v39 + 32) = v30;
  v40 = v117;
  v41 = v118;
  *(v39 + 40) = v117;
  *(v39 + 48) = v41;
  v112 = v30;
  v111 = v40;
  v115 = v41;
  v42 = v114;
  sub_10097A374(v39);
  if (!v42)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v104 = v112;
    result = sub_1011255D0();
    if (result)
    {
      if (**&v115[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_101A0C0B8)
      {
        __break(1u);
        return result;
      }

      v105 = v120;
      (*((swift_isaMask & *v104) + 0x88))();
      (v38[7])(v105, 0, 1, v8);
      swift_beginAccess();
      sub_10000BE14(v105, v113, &qword_1019F6990, &qword_10146D2F0);
      type metadata accessor for CRLConnectionLineCRDTData(0);
      v121 = v104;

      sub_1005B981C(&qword_101A06128, &unk_10148D3C0);
      CRRegister.wrappedValue.setter();
      sub_10000CAAC(v105, &qword_1019F6990, &qword_10146D2F0);
      swift_endAccess();
    }

    v106 = swift_allocObject();
    v107 = v115;
    *(v106 + 16) = v115;
    *(v106 + 24) = v1;
    v108 = v107;
    v109 = v1;
    sub_1009B27C4(sub_100A68250, v106);

    return v26;
  }

  v114 = v42;
  swift_setDeallocating();
  swift_arrayDestroy();
  v120 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_10146D2A0;
  v44 = v112;
  v45 = [v44 description];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;
  v113 = v44;

  *(v43 + 56) = &type metadata for String;
  v49 = sub_1000053B0();
  *(v43 + 32) = v46;
  v121 = (v43 + 32);
  *(v43 + 64) = v49;
  *(v43 + 40) = v48;
  v50 = v111;
  v51 = [v50 description];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  v112 = v50;

  *(v43 + 96) = &type metadata for String;
  *(v43 + 104) = v49;
  *(v43 + 72) = v52;
  *(v43 + 80) = v54;
  v55 = v115;
  v56 = [v55 description];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;
  v115 = v55;

  *(v43 + 136) = &type metadata for String;
  *(v43 + 144) = v49;
  *(v43 + 112) = v57;
  *(v43 + 120) = v59;
  v64 = v26;
  v60 = [v64 description];
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;
  v111 = v64;

  *(v43 + 176) = &type metadata for String;
  *(v43 + 184) = v49;
  v117 = v49;
  *(v43 + 152) = v61;
  *(v43 + 160) = v63;
  v110 = objc_opt_self();
  LODWORD(v64) = [v110 _atomicIncrementAssertCount];
  v122 = [objc_allocWithZone(NSString) init];
  sub_100604538(v43, &v122, "Unable to add duplicate items (%@ + %@) and connection line item %@ to group item %@", 84, 2u);
  StaticString.description.getter("newGroupedDuplicateItemsAndConnectionLine()", 43, 2);
  v118 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeConnectionLineKnobTracker.swift", 103, 2);
  v65 = String._bridgeToObjectiveC()();

  v66 = [v65 lastPathComponent];

  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_52;
  }

LABEL_9:
  v70 = static OS_os_log.crlAssert;
  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_10146CA70;
  *(v71 + 56) = &type metadata for Int32;
  *(v71 + 64) = &protocol witness table for Int32;
  *(v71 + 32) = v64;
  v72 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v71 + 96) = v72;
  v73 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  v74 = v118;
  *(v71 + 72) = v118;
  v75 = v117;
  *(v71 + 136) = &type metadata for String;
  *(v71 + 144) = v75;
  *(v71 + 104) = v73;
  *(v71 + 112) = v67;
  *(v71 + 120) = v69;
  *(v71 + 176) = &type metadata for UInt;
  *(v71 + 184) = &protocol witness table for UInt;
  *(v71 + 152) = 221;
  v76 = v122;
  *(v71 + 216) = v72;
  *(v71 + 224) = v73;
  *(v71 + 192) = v76;
  v77 = v74;
  v78 = v76;
  v79 = static os_log_type_t.error.getter();
  sub_100005404(v70, &_mh_execute_header, v79, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v71);
  swift_setDeallocating();
  v118 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v80 = static os_log_type_t.error.getter();
  sub_100005404(v70, &_mh_execute_header, v80, "Unable to add duplicate items (%@ + %@) and connection line item %@ to group item %@", 84, 2, v43);

  type metadata accessor for __VaListBuilder();
  v81 = swift_allocObject();
  v81[2] = 8;
  v81[3] = 0;
  v67 = v81 + 3;
  v81[4] = 0;
  v81[5] = 0;
  v120 = v43;
  v82 = *(v43 + 16);
  if (v82)
  {
    v83 = 0;
    v69 = 40;
    while (1)
    {
      v84 = &v121[5 * v83];
      v64 = *(v84 + 3);
      sub_100020E58(v84, v64);
      v85 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v86 = *v67;
      v87 = *(v85 + 16);
      v88 = __OFADD__(*v67, v87);
      v89 = *v67 + v87;
      if (v88)
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        swift_once();
        goto LABEL_9;
      }

      v90 = v81[4];
      if (v90 >= v89)
      {
        goto LABEL_26;
      }

      if (v90 + 0x4000000000000000 < 0)
      {
        goto LABEL_50;
      }

      v64 = v81[5];
      if (2 * v90 > v89)
      {
        v89 = 2 * v90;
      }

      v81[4] = v89;
      if ((v89 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_51;
      }

      v43 = v85;
      v91 = swift_slowAlloc();
      v92 = v91;
      v81[5] = v91;
      if (v64)
      {
        break;
      }

      v85 = v43;
      if (!v92)
      {
LABEL_33:
        __break(1u);
        return 0;
      }

LABEL_27:
      v94 = *(v85 + 16);
      if (v94)
      {
        v95 = (v85 + 32);
        v96 = *v67;
        while (1)
        {
          v97 = *v95++;
          *&v92[8 * v96] = v97;
          v96 = *v67 + 1;
          if (__OFADD__(*v67, 1))
          {
            break;
          }

          *v67 = v96;
          if (!--v94)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

LABEL_11:

      if (++v83 == v82)
      {
        goto LABEL_40;
      }
    }

    if (v91 != v64 || v91 >= &v64[8 * v86])
    {
      memmove(v91, v64, 8 * v86);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v85 = v43;
LABEL_26:
    v92 = v81[5];
    if (!v92)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

LABEL_40:
  v99 = __VaListBuilder.va_list()();
  StaticString.description.getter("newGroupedDuplicateItemsAndConnectionLine()", 43, 2);
  v100 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeConnectionLineKnobTracker.swift", 103, 2);
  v101 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unable to add duplicate items (%@ + %@) and connection line item %@ to group item %@", 84, 2);
  v102 = String._bridgeToObjectiveC()();

  [v110 handleFailureInFunction:v100 file:v101 lineNumber:221 isFatal:0 format:v102 args:v99];

  swift_setDeallocating();
  swift_arrayDestroy();

  v98 = v119;
LABEL_41:

  return 0;
}

void sub_100A608CC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v6 = **(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (swift_conformsToProtocol2())
    {
      v7 = v6[105];

      v6 = v7(v8);

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        [v9 copy];

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006370(0, &unk_101A10770, off_10182F7E8);
        swift_dynamicCast();
        a = v41.a;
        v11 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
        [*&v41.a setHeadMagnet:v11];

        inited = swift_initStackObject();
        *(inited + 16) = xmmword_101465920;
        *(inited + 32) = [a3 rep];
        sub_1005BFCB4(inited);
        v14 = v13;
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_10121307C(v14);
        v16 = v15;

        v17 = sub_100E93C20(v16);

        v18 = sub_100BC17C8(v17);

        if (v18)
        {
          v19 = [a3 icc];
          v20 = [v19 layoutForInfo:v18];

          if (v20)
          {
            v21 = [a3 knob];
            v22 = [v21 tag];

            if ((v22 - 2) >= 7)
            {
              v23 = 1;
            }

            else
            {
              v23 = qword_1014911D8[(v22 - 2)];
            }

            sub_100A67E3C(v23, v20);
            if ((v25 & 1) == 0)
            {
              v23 = 1;
            }

            [v20 getCardinalPositionFromType:v23];
            v27 = v26;
            v29 = v28;
            [v20 pureTransformInRoot];
            CGAffineTransformInvert(&v41, &v42);
            v42 = v41;
            v43.x = v27;
            v43.y = v29;
            v30 = CGPointApplyAffineTransform(v43, &v42);
            v31 = [v20 pureGeometry];
            if (!v31)
            {
              goto LABEL_24;
            }

            v32 = v31;
            [v31 size];

            v33 = sub_10011ECB4();
            v36 = sub_100121720(v30.x, v30.y, v33, v34, v35);
            v24 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v23 normalizedPosition:{v36, v37}];
            [*&a setTailMagnet:v24];

            goto LABEL_15;
          }
        }

        v24 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
        [*&a setTailMagnet:v24];
LABEL_15:

        v38 = *&a;
        if ((sub_1011255D0() & 1) == 0)
        {

          goto LABEL_19;
        }

        v39 = **(a2 + v5);
        if (swift_conformsToProtocol2())
        {
          v40 = *(v39 + 848);

          v40(v38);

LABEL_19:

          return;
        }

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_100A60DF4(uint64_t a1)
{
  v2 = v1;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v2 rep];
  sub_1005BFCB4(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10121307C(v6);
  v8 = v7;

  v9 = sub_100E93C20(v8);

  v10 = sub_100BC17C8(v9);

  if (!v10)
  {
    return;
  }

  v11 = [v2 icc];
  v12 = [v11 layoutForInfo:v10];

  if (!v12)
  {

    return;
  }

  type metadata accessor for CRLWPShapeItem(0);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v16 = *(**(v13 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
    v17 = v10;

    v19 = v16(v18);

    v20 = [v19 widthValid];

    if (!v20 || (v21 = *(**(v14 + v15) + 296), v22 = , v23 = v21(v22), , v24 = [v23 heightValid], v23, (v24 & 1) == 0))
    {
      v31 = [v12 pureGeometryInRoot];
      if (v31)
      {
        v32 = v31;
        v33 = objc_allocWithZone(CRLCanvasInfoGeometry);
        v27 = v32;
        v34 = [v33 initWithLayoutGeometry:v27];
        [v34 mutableCopy];

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006370(0, &unk_101A0B030, off_10182F788);
        swift_dynamicCast();
        v29 = v72;
        v30 = &selRef_canCreateItemsOfClass_;
        v35 = [v29 center];
        v37 = v36;
        v39 = v38;
        v40 = (*((swift_isaMask & *v17) + 0xE0))(v35);
        [v29 setWidthValid:{objc_msgSend(v40, "widthValid")}];
        [v29 setHeightValid:{objc_msgSend(v40, "heightValid")}];
        [v40 size];
        [v29 setSize:?];
        [v29 setCenter:{v37, v39}];

        goto LABEL_12;
      }

LABEL_22:
      __break(1u);
      return;
    }
  }

  v25 = [v12 pureGeometryInRoot];
  if (!v25)
  {
    __break(1u);
    goto LABEL_22;
  }

  v26 = *((swift_isaMask & *v10) + 0xE0);
  v27 = v25;
  v28 = v26();
  [v28 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030, off_10182F788);
  swift_dynamicCast();
  v29 = v72;
  v30 = &selRef_canCreateItemsOfClass_;
LABEL_12:
  [v27 v30[218]];
  v42 = v41;
  v44 = v43;

  v45 = [v2 rep];
  v46 = [v45 layout];

  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();
  if (v47)
  {
    v48 = v47;
    v49 = v71;
    if ([v47 maskEditMode] == 3)
    {
      v50 = [v48 imageGeometryInRoot];
      [v50 center];
      v42 = v51;
      v44 = v52;
    }
  }

  else
  {
    v49 = v71;
  }

  sub_100A6664C();
  v55 = sub_100120090(v53, v54, v42, v44);
  v56 = v55 + v55 + 150.0;
  if (v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters + 8])
  {
    v57 = v56;
  }

  else
  {
    v57 = *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters];
  }

  sub_100A6664C();
  v60 = sub_10011F31C(v58, v59, v42);
  v62 = sub_10011F2FC(v60, v61);
  v64 = sub_10011F340(v62, v63, v57);
  v65 = sub_10011F334(v42, v44, v64);
  v67 = sub_10011F31C(v65, v66, v42);
  v69 = v68;
  [v29 center];
  [v29 setCenter:{sub_10011F334(v67, v69, v70)}];
  [v29 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_1019F5730, off_10182F770);
  swift_dynamicCast();
  (*((swift_isaMask & *v49) + 0xE8))();
}

void sub_100A61504()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = &v193 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100A5FAF0();
  if (v6)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    v205 = v5;
    v206 = v3;
    v207 = v2;
    v212 = v6;
    v13 = [v0 icc];
    v14 = [v13 freehandDrawingToolkit];

    [v14 endDrawingModeIfNeeded];
    v15 = [v1 icc];
    v16 = swift_allocObject();
    v209 = xmmword_101465920;
    *(v16 + 16) = xmmword_101465920;
    *(v16 + 32) = v212;
    v204 = type metadata accessor for CRLBoardItem(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setTemporaryAdditionalBoardItemsToDisplay:isa];

    v18 = [v1 icc];
    [v18 layoutIfNeededIncludingLayerTreeIfYouKnowWhatYouAreDoing];

    v19 = [v1 icc];
    v211 = [v19 layoutForInfo:v12];

    if (v211)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = v20;
        [v20 setTemporaryConnectedFromInfo:v10];
        [v21 setTemporaryConnectedToInfo:v11];
        v203 = v21;
        [v21 setClipHead:1];
        v22 = **(v12 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
        v201 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
        v202 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        if (swift_conformsToProtocol2())
        {
          v208 = v10;
          v23 = v22[105];

          v22 = v23(v24);

          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (v25)
          {
            [v25 copy];

            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100006370(0, &unk_101A10770, off_10182F7E8);
            swift_dynamicCast();
            a = v213.a;
            v27 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
            [*&a setHeadMagnet:v27];

            inited = swift_initStackObject();
            *(inited + 16) = v209;
            *(inited + 32) = [v1 rep];
            sub_1005BFCB4(inited);
            v30 = v29;
            swift_setDeallocating();
            swift_arrayDestroy();
            sub_10121307C(v30);
            v32 = v31;

            v33 = sub_100E93C20(v32);

            v34 = sub_100BC17C8(v33);

            if (v34)
            {
              v35 = [v1 icc];
              v36 = [v35 layoutForInfo:v34];

              if (v36)
              {
                v37 = [v1 knob];
                v38 = [v37 tag];

                if ((v38 - 2) >= 7)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = qword_1014911D8[(v38 - 2)];
                }

                sub_100A67E3C(v39, v36);
                if (v42)
                {
                  v43 = v39;
                }

                else
                {
                  v43 = 1;
                }

                [v36 getCardinalPositionFromType:v43];
                v45 = v44;
                v47 = v46;
                [v36 pureTransformInRoot];
                CGAffineTransformInvert(&v213, v214);
                v214[0] = v213;
                v216.x = v45;
                v216.y = v47;
                v48 = CGPointApplyAffineTransform(v216, v214);
                v49 = [v36 pureGeometry];
                if (!v49)
                {
                  goto LABEL_94;
                }

                v50 = v49;
                [v49 size];

                v51 = sub_10011ECB4();
                v54 = sub_100121720(v48.x, v48.y, v51, v52, v53);
                v41 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v43 normalizedPosition:{v54, v55}];
                [*&a setTailMagnet:v41];

                goto LABEL_23;
              }
            }

            v41 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
            [*&a setTailMagnet:v41];
LABEL_23:

            v56 = v12;
            v57 = *&a;
            if ((sub_1011255D0() & 1) == 0)
            {

              goto LABEL_27;
            }

            v58 = **&v202[v12];
            if (swift_conformsToProtocol2())
            {
              v59 = *(v58 + 848);

              v59(v57);

LABEL_27:

              type metadata accessor for CRLWPShapeItem(0);
              v60 = v208;
              v61 = swift_dynamicCastClass();
              if (!v61)
              {
LABEL_53:
                sub_100A64E50(v11, 0);
                type metadata accessor for CRLInsertionAnimationHelper();
                v112 = [v1 icc];
                v113 = v208;
                sub_100983FAC(v212, v208, v11, v203, v112);

                *(v1 + OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview) = 1;
                return;
              }

              v200 = 0;
              v201 = v57;
              v62 = v11;
              v202 = v56;
              v63 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
              v64 = *(**(v61 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
              v65 = v61;
              v66 = v60;

              v68 = v64(v67);

              v69 = [v68 widthValid];

              if (v69)
              {
                v70 = *(**&v65[v63] + 296);

                v72 = v70(v71);

                v73 = [v72 heightValid];

                if (v73)
                {
                  v57 = v201;
                  v56 = v202;
                  v11 = v62;
LABEL_52:

                  goto LABEL_53;
                }
              }

              v198 = v65;
              v11 = v62;
              v74 = swift_dynamicCastClass();
              if (!v74)
              {
                v57 = v201;
                v56 = v202;
                goto LABEL_52;
              }

              v75 = v74;
              v199 = v66;
              v76 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
              v77 = *(**(v74 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
              v78 = v11;

              v80 = v77(v79);

              v81 = [v80 widthValid];

              if (v81)
              {
                v82 = *(**&v76[v75] + 296);

                v84 = v82(v83);

                v85 = [v84 heightValid];

                if (v85)
                {
                  v86 = v78;
LABEL_41:
                  v57 = v201;
                  v90 = v199;
LABEL_51:

                  v66 = v86;
                  v56 = v202;
                  goto LABEL_52;
                }
              }

              v197 = v76;
              v87 = v75;
              v88 = v78;
              v89 = [v1 icc];
              v90 = [v89 board];

              if (!v90)
              {
                v86 = v78;
                goto LABEL_41;
              }

              v91 = [v1 icc];
              v92 = [v91 editingCoordinator];

              if (!v92)
              {
                v86 = v78;
                v57 = v201;
                v97 = v199;
LABEL_50:

                goto LABEL_51;
              }

              v93 = *&v92[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

              v86 = v88;
              sub_100A63174(v198, v87);
              if (v96)
              {
                v97 = v93;
LABEL_48:
                v111 = v86;
                v78 = v86;
LABEL_49:

                v90 = v111;
                v57 = v201;
                goto LABEL_50;
              }

              v98 = v94;
              v99 = v95;
              v196 = v86;
              v100 = sub_100A639FC(v87);
              if (!v100)
              {
                v97 = v93;
                v86 = v196;
                goto LABEL_48;
              }

              v195 = v93;
              v101 = v100;
              [v100 setCenter:{v98, v99}];
              v102 = v101;
              v103 = sub_1011255D4();
              v193 = v90;
              v194 = v87;
              if (v103)
              {
                v104 = v87;
                v105 = v197;
                v106 = *(**&v197[v104] + 296);

                v108 = v106(v107);

                sub_100006370(0, &unk_1019F5730, off_10182F770);
                v109 = static NSObject.== infix(_:_:)();

                if (v109)
                {

                  v110 = v194;
                }

                else
                {
                  v110 = v194;
                  v114 = *(**&v105[v194] + 304);

                  v114(v102);
                }
              }

              else
              {

                v110 = v87;
              }

              v197 = v102;
              v115 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{1.0, 1.0}];
              v116 = type metadata accessor for CRLGroupItem(0);
              v117 = *&v195[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
              v118 = *(v117 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
              v119 = v205;
              (*(**(*(v117 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
              v120 = objc_allocWithZone(v116);
              v121 = v118;
              v122 = UUID._bridgeToObjectiveC()().super.isa;
              v123 = [v120 initWithStore:v121 parentContainerUUID:v122 geometry:v115];

              (*(v206 + 8))(v119, v207);
              v124 = swift_initStackObject();
              *(v124 + 16) = xmmword_10146E8A0;
              v125 = v199;
              *(v124 + 32) = v199;
              v126 = v202;
              *(v124 + 40) = v110;
              *(v124 + 48) = v126;
              v207 = v126;
              v127 = v125;
              v128 = v123;
              v129 = v200;
              sub_10097A374(v124);
              if (!v129)
              {
                v199 = v127;

                swift_setDeallocating();
                swift_arrayDestroy();
                v190 = [v1 icc];
                v191 = swift_allocObject();
                *(v191 + 16) = v209;
                *(v191 + 32) = v128;
                v212 = v128;
                v192 = Array._bridgeToObjectiveC()().super.isa;

                [v190 setTemporaryAdditionalBoardItemsToDisplay:v192];

                v86 = [v1 icc];
                [v86 layoutIfNeededIncludingLayerTreeIfYouKnowWhatYouAreDoing];
                v90 = v196;
                v78 = v197;
                v97 = v193;
                v111 = v195;
                goto LABEL_49;
              }

              v206 = v129;

              v130 = v196;
              swift_setDeallocating();
              swift_arrayDestroy();
              v210 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
              v131 = swift_initStackObject();
              *(v131 + 16) = xmmword_10146D2A0;
              v132 = v127;
              v133 = [v198 description];
              v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v136 = v135;
              v205 = v132;

              *(v131 + 56) = &type metadata for String;
              v137 = sub_1000053B0();
              *(v131 + 32) = v134;
              v212 = (v131 + 32);
              *(v131 + 64) = v137;
              *(v131 + 40) = v136;
              v138 = v130;
              v139 = [v194 description];
              v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v142 = v141;
              v204 = v138;

              *(v131 + 96) = &type metadata for String;
              *(v131 + 104) = v137;
              *(v131 + 72) = v140;
              *(v131 + 80) = v142;
              v143 = v207;
              v144 = [v143 description];
              v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v147 = v146;
              v207 = v143;

              *(v131 + 136) = &type metadata for String;
              *(v131 + 144) = v137;
              *(v131 + 112) = v145;
              *(v131 + 120) = v147;
              v148 = v128;
              v149 = v131;
              v150 = [v148 description];
              v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v153 = v152;
              v203 = v148;

              *(v131 + 176) = &type metadata for String;
              *(v131 + 184) = v137;
              *&v209 = v137;
              *(v131 + 152) = v151;
              *(v131 + 160) = v153;
              v202 = objc_opt_self();
              LODWORD(v153) = [v202 _atomicIncrementAssertCount];
              *&v214[0].a = [objc_allocWithZone(NSString) init];
              sub_100604538(v131, v214, "Unable to add duplicate items (%@ + %@) and connection line item %@ to group item %@", 84, 2u);
              StaticString.description.getter("insertDuplicationPreviewInfos(sender:)", 38, 2);
              v208 = String._bridgeToObjectiveC()();

              StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeConnectionLineKnobTracker.swift", 103, 2);
              v154 = String._bridgeToObjectiveC()();

              v155 = [v154 lastPathComponent];

              v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v158 = v157;

              if (qword_1019F20A0 != -1)
              {
                goto LABEL_90;
              }

LABEL_59:
              v159 = static OS_os_log.crlAssert;
              v160 = swift_initStackObject();
              *(v160 + 16) = xmmword_10146CA70;
              *(v160 + 56) = &type metadata for Int32;
              *(v160 + 64) = &protocol witness table for Int32;
              *(v160 + 32) = v153;
              v161 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
              *(v160 + 96) = v161;
              v162 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
              v163 = v208;
              *(v160 + 72) = v208;
              v164 = v209;
              *(v160 + 136) = &type metadata for String;
              *(v160 + 144) = v164;
              *(v160 + 104) = v162;
              *(v160 + 112) = v156;
              *(v160 + 120) = v158;
              *(v160 + 176) = &type metadata for UInt;
              *(v160 + 184) = &protocol witness table for UInt;
              *(v160 + 152) = 367;
              v165 = v214[0].a;
              *(v160 + 216) = v161;
              *(v160 + 224) = v162;
              *(v160 + 192) = v165;
              v166 = v163;
              v167 = *&v165;
              v168 = static os_log_type_t.error.getter();
              sub_100005404(v159, &_mh_execute_header, v168, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v160);
              swift_setDeallocating();
              *&v209 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
              swift_arrayDestroy();
              v169 = static os_log_type_t.error.getter();
              sub_100005404(v159, &_mh_execute_header, v169, "Unable to add duplicate items (%@ + %@) and connection line item %@ to group item %@", 84, 2, v149);

              type metadata accessor for __VaListBuilder();
              v170 = swift_allocObject();
              v170[2] = 8;
              v170[3] = 0;
              v156 = v170 + 3;
              v170[4] = 0;
              v170[5] = 0;
              v210 = v149;
              v153 = *(v149 + 16);
              if (!v153)
              {
LABEL_84:
                v186 = __VaListBuilder.va_list()();
                StaticString.description.getter("insertDuplicationPreviewInfos(sender:)", 38, 2);
                v187 = String._bridgeToObjectiveC()();

                StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLShapeConnectionLineKnobTracker.swift", 103, 2);
                v188 = String._bridgeToObjectiveC()();

                StaticString.description.getter("Unable to add duplicate items (%@ + %@) and connection line item %@ to group item %@", 84, 2);
                v189 = String._bridgeToObjectiveC()();

                [v202 handleFailureInFunction:v187 file:v188 lineNumber:367 isFatal:0 format:v189 args:v186];

                swift_setDeallocating();
                swift_arrayDestroy();

                return;
              }

              v171 = 0;
              v149 = 40;
              while (1)
              {
                sub_100020E58(v212 + 5 * v171, *(v212 + 5 * v171 + 3));
                v172 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
                v158 = *v156;
                v173 = *(v172 + 16);
                v174 = __OFADD__(*v156, v173);
                v175 = *v156 + v173;
                if (v174)
                {
LABEL_87:
                  __break(1u);
LABEL_88:
                  __break(1u);
LABEL_89:
                  __break(1u);
LABEL_90:
                  swift_once();
                  goto LABEL_59;
                }

                v176 = v170[4];
                if (v176 >= v175)
                {
                  goto LABEL_76;
                }

                if (v176 + 0x4000000000000000 < 0)
                {
                  goto LABEL_88;
                }

                v177 = v170[5];
                if (2 * v176 > v175)
                {
                  v175 = 2 * v176;
                }

                v170[4] = v175;
                if ((v175 - 0x1000000000000000) >> 61 != 7)
                {
                  goto LABEL_89;
                }

                v178 = v172;
                v179 = swift_slowAlloc();
                v180 = v179;
                v170[5] = v179;
                if (v177)
                {
                  break;
                }

                v172 = v178;
                if (!v180)
                {
LABEL_83:
                  __break(1u);
                  goto LABEL_84;
                }

LABEL_77:
                v182 = *(v172 + 16);
                if (v182)
                {
                  v183 = (v172 + 32);
                  v184 = *v156;
                  while (1)
                  {
                    v185 = *v183++;
                    *&v180[8 * v184] = v185;
                    v184 = *v156 + 1;
                    if (__OFADD__(*v156, 1))
                    {
                      break;
                    }

                    *v156 = v184;
                    if (!--v182)
                    {
                      goto LABEL_61;
                    }
                  }

                  __break(1u);
                  goto LABEL_87;
                }

LABEL_61:

                if (++v171 == v153)
                {
                  goto LABEL_84;
                }
              }

              if (v179 != v177 || v179 >= &v177[8 * v158])
              {
                memmove(v179, v177, 8 * v158);
              }

              __VaListBuilder.deallocStorage(wordCount:storage:)();
              v172 = v178;
LABEL_76:
              v180 = v170[5];
              if (!v180)
              {
                goto LABEL_83;
              }

              goto LABEL_77;
            }

            goto LABEL_93;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        return;
      }

      v40 = v211;
    }

    else
    {

      v40 = v212;
    }
  }
}

void sub_100A62B68(void *a1)
{
  sub_100A6664C();
  v4 = v3;
  v6 = v5;
  sub_100A5E47C();
  v9 = sub_100120090(v4, v6, v7, v8);
  v10 = [v1 rep];
  v11 = [v10 layout];

  v12 = [v11 stroke];
  if (v12)
  {
    [v12 width];
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v1 rep];
  sub_1005BFCB4(inited);
  v17 = v16;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10121307C(v17);
  v19 = v18;

  v20 = sub_100E93C20(v19);

  v21 = sub_100BC17C8(v20);

  if (v21)
  {
    type metadata accessor for CRLGroupItem(0);
    if (swift_dynamicCastClass())
    {
      type metadata accessor for CRLFreehandDrawingItem(0);
      if (!swift_dynamicCastClass())
      {
        v38 = [v1 rep];
        [v38 boundsForStandardKnobs];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;

        v78.origin.x = v40;
        v78.origin.y = v42;
        v78.size.width = v44;
        v78.size.height = v46;
        CGRectGetWidth(v78);
        v47 = [v1 rep];
        [v47 boundsForStandardKnobs];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;

        v79.origin.x = v49;
        v79.origin.y = v51;
        v79.size.width = v53;
        v79.size.height = v55;
        CGRectGetHeight(v79);

        return;
      }
    }
  }

  if (a1)
  {
    v22 = a1;
    v23 = [v1 icc];
    v24 = [v23 repForLayout:v22];

    if (v24)
    {
      v25 = [v22 connectedFrom];
      if (v25)
      {
        v26 = v25;
        v27 = [v22 connectedTo];
        if (v27)
        {
          v28 = v27;
          [v22 distanceBetweenConnectionPoints];
          v30 = v29;
          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          if (!v31)
          {
            goto LABEL_41;
          }

          v32 = v31;
          v33 = [v31 path];
          if (v33)
          {
            v34 = v33;
            objc_opt_self();
            v35 = swift_dynamicCastObjCClass();
            if (v35 && (v36 = [v35 path]) != 0)
            {
              v37 = v36;
              if (([v34 isRectangular] & 1) != 0 || objc_msgSend(v34, "isCircular"))
              {
                if ([v37 isRectangular])
                {

LABEL_40:
                  v67 = v22;
                  [v67 headPoint];
                  [v24 convertNaturalPointToUnscaledCanvas:?];
                  v69 = v68;
                  v71 = v70;
                  [v67 tailPoint];
                  v73 = v72;
                  v75 = v74;

                  [v24 convertNaturalPointToUnscaledCanvas:{v73, v75}];
                  v30 = v14 + v9 + v9 + sub_100120090(v69, v71, v76, v77);
                  goto LABEL_41;
                }

                v65 = [v37 isCircular];

                if (v65)
                {
                  goto LABEL_40;
                }

                goto LABEL_28;
              }
            }

            else
            {
              v37 = v34;
            }
          }

LABEL_28:
          v56 = [v32 pathSource];
          if (v56)
          {
            v57 = v56;
            objc_opt_self();
            v58 = swift_dynamicCastObjCClass();
            if (v58 && (v59 = v58, objc_opt_self(), (v60 = swift_dynamicCastObjCClass()) != 0) && (v61 = [v60 pathSource]) != 0)
            {
              v62 = v61;
              objc_opt_self();
              v63 = swift_dynamicCastObjCClass();
              if (v63 && (v64 = v63, ![v59 type]))
              {
                v66 = [v64 type];

                if (!v66)
                {
                  goto LABEL_40;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

LABEL_41:

          sub_1007C87EC(v30, v9 + v9 + v14);
          return;
        }

        v22 = v24;
      }

      else
      {
        v26 = v24;
      }

      v22 = v26;
    }
  }
}

void sub_100A63174(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for CRLWPShapeItem(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v9 = *(**(v6 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v11 = v9(v10);

    v12 = [v11 widthValid];

    if (!v12 || (v13 = *(**(v7 + v8) + 296), v14 = , v15 = v13(v14), , v16 = [v15 heightValid], v15, (v16 & 1) == 0))
    {
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        v19 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        v20 = *(**(v17 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

        v22 = v20(v21);

        v23 = [v22 widthValid];

        if (!v23 || (v24 = *(**(v18 + v19) + 296), v25 = , v26 = v24(v25), , v27 = [v26 heightValid], v26, (v27 & 1) == 0))
        {
          v28 = [v3 icc];
          v29 = [v28 layoutForInfo:a1];

          if (v29)
          {
            v30 = [v3 icc];
            v31 = [v30 layoutForInfo:a2];

            if (v31)
            {
              v32 = [v29 pureGeometryInRoot];
              if (!v32)
              {
                __break(1u);
LABEL_24:
                __break(1u);
                return;
              }

              v33 = v32;
              [v32 center];
              v35 = v34;
              v37 = v36;

              sub_100A6664C();
              v40 = sub_100120090(v35, v37, v38, v39);
              v41 = [v3 knob];
              v42 = [v41 tag];

              v43 = 0.0;
              if (v42 > 5)
              {
                if (v42 != 8)
                {
                  if (v42 != 6)
                  {
                    goto LABEL_21;
                  }

LABEL_18:
                  [v31 boundsForStandardKnobs];
                  Width = CGRectGetWidth(v55);
LABEL_20:
                  v43 = Width * 0.5;
                  goto LABEL_21;
                }
              }

              else if (v42 != 2)
              {
                if (v42 != 4)
                {
LABEL_21:
                  if ((v3[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters + 8] & 1) == 0)
                  {
                    v45 = v43 + *&v3[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters] - v40;
                    sub_100A6664C();
                    v48 = sub_10011F31C(v46, v47, v35);
                    v50 = sub_10011F2FC(v48, v49);
                    v52 = sub_10011F340(v50, v51, v45);
                    v53 = sub_10011F334(v35, v37, v52);
                    sub_100A63588(a1, a2, v53, v54);

                    return;
                  }

                  goto LABEL_24;
                }

                goto LABEL_18;
              }

              [v31 boundsForStandardKnobs];
              Width = CGRectGetHeight(v56);
              goto LABEL_20;
            }
          }
        }
      }
    }
  }
}

void sub_100A63588(void *a1, void *a2, double a3, double a4)
{
  type metadata accessor for CRLWPShapeItem(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    v12 = [v4 icc];
    v13 = [v12 layoutForInfo:v10];

    if (!v13)
    {
LABEL_10:

      return;
    }

    v14 = swift_dynamicCastClass();
    if (!v14)
    {

      return;
    }

    v15 = v14;
    v16 = a2;
    v17 = [v4 icc];
    v18 = [v17 layoutForInfo:v16];

    if (!v18)
    {

      return;
    }

    v19 = *(v15 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v19)
    {

      return;
    }

    v20 = v19;
    v21 = [v20 paragraphStyleAtCharIndex:0 effectiveRange:0];
    if (!v21)
    {

      return;
    }

    v22 = *&v21[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment];

    v23 = [v13 pureGeometryInRoot];
    if (!v23)
    {
      __break(1u);
      return;
    }

    v24 = v23;
    [v23 center];
    v26 = v25;

    v27 = v4;
    sub_100A6664C();
    v30 = sub_10011F31C(v28, v29, v26);
    v32 = sub_10011F2FC(v30, v31);
    v34 = v33;
    v35 = *(**(v15 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
    v36 = v16;

    v38 = v35(v37);

    v39 = [v38 widthValid];

    if (v39)
    {
LABEL_9:

      goto LABEL_10;
    }

    [v18 boundsForStandardKnobs];
    Width = CGRectGetWidth(v59);
    if (v22 != 3)
    {
      if (v22 == 1)
      {
        v43 = [v27 knob];
        v44 = [v43 tag];

        if (v44 > 5)
        {
          if (v44 != 8)
          {
            if (v44 != 6)
            {
              return;
            }

            goto LABEL_31;
          }

          v55 = v32;
          v56 = v34;
          v57 = 0;
        }

        else
        {
          if (v44 != 2)
          {
            if (v44 != 4)
            {
              return;
            }

            goto LABEL_28;
          }

          v55 = v32;
          v56 = v34;
          v57 = 1;
        }

        v49 = sub_10012104C(v57, v55, v56);
        v48 = Width * 0.5;
        goto LABEL_39;
      }

      if (v22)
      {
        goto LABEL_9;
      }
    }

    v41 = [v27 knob];
    v42 = [v41 tag];

    if (v42 <= 5)
    {
      if (v42 != 2)
      {
        if (v42 != 4)
        {
          return;
        }

LABEL_31:
        v48 = Width * 0.5;
        v49 = v32;
        v50 = v34;
LABEL_39:
        v58 = sub_10011F340(v49, v50, v48);
        sub_10011F334(a3, a4, v58);
        return;
      }

      v51 = v32;
      v52 = v34;
      v53 = 1;
      goto LABEL_34;
    }

    if (v42 == 8)
    {
      v51 = v32;
      v52 = v34;
      v53 = 0;
LABEL_34:
      v46 = sub_10012104C(v53, v51, v52);
      v45 = Width * 0.5;
      goto LABEL_35;
    }

    if (v42 != 6)
    {
      return;
    }

LABEL_28:
    v45 = Width * 0.5;
    v46 = v32;
    v47 = v34;
LABEL_35:
    v54 = sub_10011F340(v46, v47, v45);
    sub_10011F31C(a3, a4, v54);
  }
}

char *sub_100A639FC(void *a1)
{
  v2 = v1;
  type metadata accessor for CRLWPShapeItem(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v7 = *(**&result[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

    v9 = v7(v8);

    v10 = [v9 widthValid];

    if (!v10 || (v11 = *(**&v5[v6] + 296), v12 = , v13 = v11(v12), , v14 = [v13 heightValid], v13, (v14 & 1) == 0))
    {
      v15 = [v2 icc];
      v16 = [v15 layoutForInfo:a1];

      if (v16)
      {
        result = [v16 pureGeometryInRoot];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v17 = result;
        v18 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithLayoutGeometry:result];

        [v18 mutableCopy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006370(0, &unk_101A0B030, off_10182F788);
        if (swift_dynamicCast())
        {
          v19 = (*((swift_isaMask & *a1) + 0xE0))();
          [v20 setWidthValid:{objc_msgSend(v19, "widthValid")}];
          [v20 setHeightValid:{objc_msgSend(v19, "heightValid")}];
          [v19 size];
          [v20 setSize:?];

          return v20;
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_100A63CD0()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v144 = *(v2 - 8);
  *&v3 = __chkstk_darwin(v2).n128_u64[0];
  v5 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &selRef_geometryWithMask;
  v7 = [v0 icc];
  v8 = [v7 freehandDrawingToolkit];

  [v8 endDrawingModeIfNeeded];
  v9 = [v1 rep];
  v146 = [v9 getConnectionLineLayoutToCopyStyleForNewConnectionLine];

  v10 = sub_100A5E320();
  v11 = sub_100A5F5E4(v10, v146);

  if (v11)
  {
    v12 = objc_opt_self();
    [v1 currentPosition];
    v14 = v13;
    v16 = v15;
    v17 = NSNotFound.getter();
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_63;
    }

    v140 = v2;
    v18 = [v12 dragInsertionContextWithPreferredCenter:1 required:0 fromDragToInsertController:0 insertFloating:v17 targetZOrder:{v14, v16}];

    inited = swift_initStackObject();
    v141 = xmmword_101465920;
    *(inited + 16) = xmmword_101465920;
    *(inited + 32) = [v1 rep];
    sub_1005BFCB4(inited);
    v21 = v20;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_10121307C(v21);
    v23 = v22;

    v24 = sub_100E93C20(v23);

    v25 = sub_100BC17C8(v24);

    v145 = v25;
    if (!v25)
    {

      return;
    }

    v26 = [v1 icc];
    v27 = [v26 canvasEditor];

    v143 = v18;
    if (v27)
    {
      v28 = [v1 icc];
      v29 = [v28 editorController];

      if (v29)
      {
        v30 = [v29 selectionPath];
        v139 = v5;
        v31 = v30;
        v32 = [v27 canvasEditorHelper];
        v33 = swift_initStackObject();
        *(v33 + 16) = v141;
        *(v33 + 32) = v11;
        v34 = v11;
        sub_1005BC5DC(v33);
        swift_setDeallocating();
        swift_arrayDestroy();
        type metadata accessor for CRLBoardItem(0);
        sub_100A68208(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
        isa = Set._bridgeToObjectiveC()().super.isa;

        v36 = [v32 selectionPathForInsertingBoardItems:isa byReplacingInfosInSelectionPath:v31 preservingMultipleContainers:0];

        v18 = v143;
        v37 = [v27 selectionPathWithInfo:0];
        v38 = [objc_allocWithZone(CRLCanvasCommandSelectionBehavior) initWithForwardSelectionPath:v36 reverseSelectionPath:v37 selectionFlags:0 commitSelectionFlags:0 forwardSelectionFlags:70 reverseSelectionFlags:0];
        swift_unknownObjectRelease();

        v5 = v139;
        v6 = &selRef_geometryWithMask;

        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    v38 = 0;
LABEL_13:
    v40 = [v1 v6[501]];
    v41 = [v40 commandController];

    if (v41)
    {
      v42 = v38;
      sub_10088E3FC(v38);
    }

    v139 = v38;
    v43 = [v1 v6[501]];
    v44 = [v43 commandController];

    if (v44)
    {
      v45 = [objc_opt_self() mainBundle];
      v46 = String._bridgeToObjectiveC()();
      v47 = String._bridgeToObjectiveC()();
      v48 = String._bridgeToObjectiveC()();
      v49 = [v45 localizedStringForKey:v46 value:v47 table:v48];

      v6 = &selRef_geometryWithMask;
      v18 = v143;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      sub_10088DE20(v50, v52);
    }

    v53 = [v1 v6[501]];
    v54 = [v53 commandController];

    if (v54)
    {
      sub_10088F490();
    }

    v55 = [v1 v6[501]];
    v56 = [v55 canvasEditor];

    if (v56)
    {
      v57 = swift_allocObject();
      *(v57 + 16) = v141;
      *(v57 + 32) = v11;
      type metadata accessor for CRLBoardItem(0);
      v58 = v11;
      v59 = Array._bridgeToObjectiveC()().super.isa;

      [v56 insertBoardItems:v59 withInsertionContext:v18 postProcessBlock:0];

      swift_unknownObjectRelease();
    }

    v60 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v10 = **&v11[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    if (swift_conformsToProtocol2())
    {
      v61 = v10[105];
      v62 = v11;

      v10 = v61(v63);

      objc_opt_self();
      v64 = swift_dynamicCastObjCClass();
      if (v64)
      {
        [v64 copy];

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006370(0, &unk_101A10770, off_10182F7E8);
        swift_dynamicCast();
        a = v147.a;
        v66 = [v1 icc];
        v67 = [v66 layoutForInfo:v145];

        v142 = v62;
        v138 = v1;
        if (!v67)
        {
          v71 = v5;
          v72 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
          [*&a setTailMagnet:v72];
          goto LABEL_32;
        }

        v68 = [v1 knob];
        v69 = [v68 tag];

        if ((v69 - 2) > 6)
        {
          v70 = 1;
        }

        else
        {
          v70 = qword_1014911D8[(v69 - 2)];
        }

        v71 = v5;
        sub_100A67E3C(v70, v67);
        if ((v73 & 1) == 0)
        {
          v70 = 1;
        }

        [v67 getCardinalPositionFromType:v70];
        v75 = v74;
        v77 = v76;
        [v67 pureTransformInRoot];
        CGAffineTransformInvert(&v147, &v148);
        v148 = v147;
        v150.x = v75;
        v150.y = v77;
        v78 = CGPointApplyAffineTransform(v150, &v148);
        v79 = [v67 pureGeometry];
        if (v79)
        {
          v80 = v79;
          [v79 size];

          v81 = sub_10011ECB4();
          v84 = sub_100121720(v78.x, v78.y, v81, v82, v83);
          v72 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v70 normalizedPosition:{v84, v85}];
          [*&a setTailMagnet:v72];

LABEL_32:
          v86 = objc_allocWithZone(type metadata accessor for CRLCommandSetConnectionLineConnection(0));
          v87 = **&v11[v60];
          v88 = v71;
          (*(v87 + 264))();
          v89 = *&a;
          v90 = v145;
          v91 = UUID._bridgeToObjectiveC()().super.isa;
          v92 = *(v144 + 8);
          v93 = v71;
          v94 = v140;
          v95 = v92(v93, v140);
          (*((swift_isaMask & *v90) + 0x88))(v95);
          v96 = UUID._bridgeToObjectiveC()().super.isa;
          v97 = v88;
          v98 = v89;
          v92(v97, v94);
          v99 = [v86 initWithConnectionLineID:v91 connectedItemID:v96 chirality:0 pathSource:v89];

          v100 = v142;
          v101 = v138;
          v102 = [v138 icc];
          v103 = [v102 commandController];

          if (v103)
          {
            sub_100888700(v99, 0, 0, 4uLL, 0);
          }

          v104 = [v101 icc];
          [v104 layoutIfNeeded];

          if (v146)
          {
            v105 = [v101 icc];
            v106 = [v105 repForInfo:v100];

            if (v106)
            {
              v107 = [v106 layout];

              if (v107)
              {
                objc_opt_self();
                v108 = swift_dynamicCastObjCClass();
                if (v108)
                {
                  v109 = [v108 commandForSettingConnectionType:{objc_msgSend(v146, "connectionType")}];
                  if (v109)
                  {
                    v110 = v109;
                    v145 = v99;
                    v111 = [v101 icc];
                    v112 = [v111 commandController];

                    if (v112)
                    {
                      sub_100888700(v110, 0, 0, 4uLL, 0);
                    }

                    v113 = [v101 icc];
                    [v113 layoutIfNeeded];

                    v107 = v113;
                    v99 = v145;
                  }
                }
              }
            }
          }

          v114 = [v101 icc];
          v115 = [v114 repForInfo:v100];

          if (v115)
          {
            v116 = [v101 icc];
            v117 = [v116 canvasEditor];

            v118 = v143;
            if (v117)
            {
              v145 = v99;
              v119 = [v117 canvasEditorHelper];
              swift_unknownObjectRelease();
              v120 = [v119 selectionPathWithInfo:{objc_msgSend(v115, "info")}];

              swift_unknownObjectRelease();
              if (v120)
              {
                v121 = [v101 icc];
                v122 = [v121 editorController];

                [v122 setSelectionPath:v120];
                v123 = [v115 knobForTag:11];
                if (v123)
                {
                  v124 = v123;
                  v125 = [objc_allocWithZone(CRLConnectionLineKnobTracker) initWithRep:v115 knob:v123];
                  v126 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker;
                  v127 = *&v101[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
                  *&v101[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker] = v125;
                  v128 = v125;

                  v129 = *&v101[v126];
                  if (v129)
                  {
                    v130 = [v129 snapEnabled];
                  }

                  else
                  {
                    v130 = v101[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker__snapEnabled];
                  }

                  [v128 setSnapEnabled:v130];

                  v131 = *&v101[v126];
                  if (v131)
                  {
                    v132 = v131;
                    [v132 setDidDrag:1];
                  }

                  v118 = v143;
                }

                v133 = [v115 layout];
                [v133 beginDynamicOperationWithRealTimeCommands:0];

                v134 = *&v101[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
                v135 = v139;
                if (v134)
                {
                  v136 = v134;
                  [v136 beginMovingKnob];
                }

                else
                {
                }

                return;
              }
            }

            else
            {
            }
          }

          else
          {
          }

          return;
        }

LABEL_65:
        __break(1u);
        return;
      }

LABEL_64:

      __break(1u);
      goto LABEL_65;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v39 = v146;
}

void sub_100A64E50(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  type metadata accessor for CRLGroupItem(0);
  if (swift_dynamicCastClass())
  {
    v15 = a1;
    v16 = sub_1005F36D4();
    v17 = v16;
    if (v16 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_4:
        if (v18 >= 1)
        {
          v42 = v15;
          v19 = 0;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v21 = *(v17 + 8 * v19 + 32);
            }

            v22 = v21;
            v23 = [v21 containingGroup];
            if (v23)
            {
              v24 = v23;
              v25 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
              v20 = *&v23[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
              if (!v20)
              {
                sub_10096C7D4();
                v20 = *&v24[v25];
              }

              if (!v20)
              {
                v20 = _swiftEmptyArrayStorage;
              }
            }

            else
            {
              v20 = 0;
            }

            ++v19;
            sub_100A64E50(v22, v20);
          }

          while (v18 != v19);

          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_36;
      }
    }

LABEL_32:

    return;
  }

  type metadata accessor for CRLConnectionLineItem(0);
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    return;
  }

  v27 = v26;
  v41 = a1;
  v28 = [v3 icc];
  v42 = [v28 layoutForInfo:v27];

  if (v42)
  {
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29 && a2)
    {
      v40 = v29;
      v30 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v31 = *(v27 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v31 == &off_101A0C0B8)
      {
        v32 = qword_101A0C430;
        swift_beginAccess();
        sub_10098E880(v31 + v32, v8);
        sub_1005B981C(&qword_101A06128, &unk_10148D3C0);
        CRRegister.wrappedValue.getter();
        sub_100A6818C(v8);
        v33 = *(v27 + v30);
        if (*v33 == &off_101A0C0B8)
        {
          swift_beginAccess();
          sub_10098E880(v33 + v32, v8);
          CRRegister.wrappedValue.getter();
          v34 = sub_100A6818C(v8);
          __chkstk_darwin(v34);
          *(&v40 - 2) = v14;
          v35 = sub_101107CA8(sub_100A683FC, (&v40 - 4), a2);
          v36 = v40;
          [v40 setTemporaryConnectedFromInfo:v35];

          __chkstk_darwin(v37);
          *(&v40 - 2) = v11;
          v38 = sub_101107CA8(sub_100A681E8, (&v40 - 4), a2);
          [v36 setTemporaryConnectedToInfo:v38];

          sub_10000CAAC(v11, &qword_1019F6990, &qword_10146D2F0);
          sub_10000CAAC(v14, &qword_1019F6990, &qword_10146D2F0);
          return;
        }

LABEL_37:
        __break(1u);
        return;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v39 = v42;
  }

  else
  {
    v39 = v41;
  }
}

uint64_t sub_100A653BC(void **a1, uint64_t a2)
{
  v24 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v23 - v15;
  (*((swift_isaMask & **a1) + 0x88))(v14);
  (*(v4 + 56))(v16, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_10000BE14(v16, v9, &qword_1019F6990, &qword_10146D2F0);
  sub_10000BE14(v24, &v9[v17], &qword_1019F6990, &qword_10146D2F0);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    sub_10000BE14(v9, v12, &qword_1019F6990, &qword_10146D2F0);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v20 = v23;
      (*(v4 + 32))(v23, &v9[v17], v3);
      sub_100A68208(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v4 + 8);
      v21(v20, v3);
      sub_10000CAAC(v16, &qword_1019F6990, &qword_10146D2F0);
      v21(v12, v3);
      sub_10000CAAC(v9, &qword_1019F6990, &qword_10146D2F0);
      return v19 & 1;
    }

    sub_10000CAAC(v16, &qword_1019F6990, &qword_10146D2F0);
    (*(v4 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_10000CAAC(v16, &qword_1019F6990, &qword_10146D2F0);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_10000CAAC(v9, &unk_101A0AFE0, &unk_10146F3C0);
    v19 = 0;
    return v19 & 1;
  }

  sub_10000CAAC(v9, &qword_1019F6990, &qword_10146D2F0);
  v19 = 1;
  return v19 & 1;
}

void sub_100A657D8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS();
  v5 = *(v92 - 8);
  __chkstk_darwin(v92);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchTimeInterval();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = (&v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = type metadata accessor for DispatchTime();
  v91 = *(v94 - 8);
  __chkstk_darwin(v94);
  v87 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v93 = &v80 - v12;
  v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview] = 0;
  v13 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine;
  if (v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine] == 1)
  {
    v14 = v7;
    v15 = v5;
    v16 = v4;
    v17 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker;
    v18 = *&v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
    if (v18)
    {
      v86 = v2;
      v85 = v1;
      v19 = [v18 rep];
      v20 = [v19 layout];

      if (v20 && ((objc_opt_self(), v21 = swift_dynamicCastObjCClass(), LODWORD(v95) = v21 != 0, !v21) || (v22 = [v21 connectedTo], v20, (v20 = v22) != 0)))
      {
      }

      else
      {
        LODWORD(v95) = 0;
      }

      v23 = *&v0[v17];
      v1 = v85;
      if (v23)
      {
        [v23 endMovingKnob];
      }

      v2 = v86;
    }

    else
    {
      LODWORD(v95) = 0;
    }

    v4 = v16;
    v5 = v15;
    v7 = v14;
  }

  else
  {
    LODWORD(v95) = 0;
  }

  v24 = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  v98.receiver = v0;
  v98.super_class = v24;
  objc_msgSendSuper2(&v98, "endMovingKnob");
  if (v0[v13] != 1)
  {
    goto LABEL_40;
  }

  v25 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker;
  v26 = *&v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
  if (v26)
  {
    v27 = [v26 rep];
    v86 = v2;
    v28 = v27;
    v29 = [v27 layout];

    if (v29)
    {
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (!v30)
      {

        return;
      }

      v85 = v1;
      [v30 endDynamicOperation];
      v31 = [v0 icc];
      v32 = [v31 commandController];

      if (v32)
      {
        sub_10088E600(0);
      }

      if ((v95 & 1) == 0)
      {
        v33 = [v0 icc];
        v34 = [v33 editorController];

        if (v34)
        {
          if (sub_100006370(0, &qword_101A1CE20, off_10182F7C8))
          {
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          }

          else
          {
            ObjCClassFromMetadata = 0;
          }

          v36 = [v34 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];

          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
          if (!v37)
          {

            swift_unknownObjectRelease();
LABEL_40:
            if (v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview] == 1)
            {
              sub_100A66804();
            }

            return;
          }

          v38 = v37;
          v39 = *&v0[v25];
          if (v39)
          {
            v95 = v38;
            v40 = [v39 rep];
            v41 = [v40 layout];

            if (v41)
            {
              objc_opt_self();
              v42 = swift_dynamicCastObjCClass();
              if (v42)
              {
                v83 = v36;
                v84 = v29;
                v43 = v42;
                [v42 unclippedHeadPoint];
                v45 = v44;
                v47 = v46;
                v48 = [v43 pureGeometryInRoot];
                if (!v48)
                {
                  __break(1u);
                  return;
                }

                v49 = v48;
                [v48 transform];
                v82 = *&aBlock.a;
                v81 = *&aBlock.c;
                v80 = *&aBlock.tx;

                *&aBlock.a = v82;
                *&aBlock.c = v81;
                *&aBlock.tx = v80;
                v99.x = v45;
                v99.y = v47;
                v50 = CGPointApplyAffineTransform(v99, &aBlock);

                v51 = [v0 icc];
                [v51 visibleBoundsRectUsingSizeOfEnclosingScrollView];
                v53 = v52;
                v55 = v54;

                if (v53 * 0.5 <= 200.0)
                {
                  v56 = v53 * 0.5;
                }

                else
                {
                  v56 = 200.0;
                }

                if (v55 * 0.5 <= 200.0)
                {
                  v57 = v55 * 0.5;
                }

                else
                {
                  v57 = 200.0;
                }

                v58 = [v0 icc];
                [v58 viewScale];
                v60 = v59;

                v61 = sub_10011F340(v56, v57, 1.0 / v60);
                v63 = sub_1001206EC(0.0, 0.0, v61, v62, v50.x, v50.y, 0.0, 0.0);
                v65 = v64;
                v67 = v66;
                v69 = v68;
                v70 = [v0 icc];
                [v70 scrollRectToVisible:0 scrollOptions:{v63, v65, v67, v69}];

                sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
                *&v82 = v0;
                v71 = static OS_dispatch_queue.main.getter();
                v72 = v87;
                static DispatchTime.now()();
                v73 = v88;
                *v88 = 50;
                v74 = v89;
                v75 = v90;
                (*(v89 + 104))(v73, enum case for DispatchTimeInterval.milliseconds(_:), v90);
                + infix(_:_:)();
                (*(v74 + 8))(v73, v75);
                v91 = *(v91 + 8);
                (v91)(v72, v94);
                v76 = swift_allocObject();
                *(v76 + 16) = v50;
                *(v76 + 32) = v95;
                *&aBlock.tx = sub_100A68330;
                *&aBlock.ty = v76;
                *&aBlock.a = _NSConcreteStackBlock;
                aBlock.b = *"";
                *&aBlock.c = sub_100007638;
                *&aBlock.d = &unk_101892CF8;
                v77 = _Block_copy(&aBlock);
                swift_unknownObjectRetain();
                static DispatchQoS.unspecified.getter();
                v96 = _swiftEmptyArrayStorage;
                sub_100A68208(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
                sub_10000D494();
                v78 = v85;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v79 = v93;
                OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
                v0 = v82;
                _Block_release(v77);
                swift_unknownObjectRelease();

                (*(v86 + 8))(v4, v78);
                (*(v5 + 8))(v7, v92);
                (v91)(v79, v94);
              }

              else
              {
                swift_unknownObjectRelease();
              }

              goto LABEL_40;
            }
          }

          swift_unknownObjectRelease();
        }
      }

      goto LABEL_40;
    }
  }
}

double sub_100A6620C(void *a1, double a2, double a3)
{
  v4 = sub_100D4216C(a1, a1, a2, a3);
  if (!v4)
  {
    return result;
  }

  v12 = v4;
  v6 = [a1 interactiveCanvasController];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v6 layerHost];
  if (!v8)
  {

LABEL_8:
    v10 = v12;
    goto LABEL_9;
  }

  v9 = v8;
  if ([v8 respondsToSelector:"shapeLibraryPopoverController"])
  {
    v11 = [v9 shapeLibraryPopoverController];
    swift_unknownObjectRelease();
    sub_100C00CF8(v12);

    v10 = v11;
LABEL_9:

    return result;
  }

  swift_unknownObjectRelease();
  return result;
}

id sub_100A66384(double a1, double a2)
{
  v5 = [v2 rep];
  v6 = [v2 knob];
  [v6 position];
  v8 = v7;
  v10 = v9;

  [v5 convertNaturalPointToUnscaledCanvas:{v8, v10}];
  v12 = v11;
  v14 = v13;

  if (sub_10011F068(v12, v14, a1, a2) > 100.0)
  {
    v15 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine;
    if ((v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine] & 1) == 0)
    {
      v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview] = 0;
      v16 = [v2 icc];
      type metadata accessor for CRLBoardItem(0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v16 setTemporaryAdditionalBoardItemsToDisplay:isa];

      v18 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine;
      v19 = *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine];
      if (v19)
      {
        v20 = v19;
        v21 = [v2 icc];
        v22 = [v21 layoutForInfo:v20];

        if (v22)
        {
          objc_opt_self();
          v23 = swift_dynamicCastObjCClass();
          if (v23)
          {
            v24 = v23;
            [v23 setTemporaryConnectedToInfo:0];
            [v24 setTemporaryConnectedFromInfo:0];
          }
        }

        else
        {
          v22 = v20;
        }
      }

      v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview] = 0;
      v25 = *&v2[v18];
      *&v2[v18] = 0;

      sub_100A63CD0();
      v2[v15] = 1;
    }

    v26 = *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
    if (v26)
    {
      [v26 moveKnobToCanvasPosition:{a1, a2}];
    }
  }

  v28.receiver = v2;
  v28.super_class = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  return objc_msgSendSuper2(&v28, "moveKnobToCanvasPosition:", a1, a2);
}

void sub_100A6664C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_crlaxCurrentPositionOfKnobInsertingDuplicate];
  if (v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_crlaxCurrentPositionOfKnobInsertingDuplicate + 16])
  {
    v3 = [v0 rep];
    v4 = [v1 knob];
    [v4 position];
    v6 = v5;
    v8 = v7;

    [v3 convertNaturalPointToUnscaledCanvas:{v6, v8}];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *v2;
    v12 = v2[1];
  }

  v13 = [v1 knob];
  type metadata accessor for CRLConnectionLineKnob();
  if (swift_dynamicCastClass())
  {
    v14 = sub_100D6C66C();
    v15 = [v1 icc];
    v16 = [v15 canvas];

    [v16 viewScale];
    v18 = v17;

    v19 = v14 / v18;
    sub_100A5E47C();
    v21 = v20;

    v22 = sub_10011F31C(v10, v12, v21);
    v24 = sub_10011F2FC(v22, v23);
    v26 = sub_10011F340(v24, v25, v19);
    sub_10011F31C(v10, v12, v26);
  }

  else
  {
  }
}

void sub_100A66804()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 icc];
  v8 = [v7 temporaryAdditionalBoardItemsToDisplay];

  if (v8)
  {

    v9 = [v1 icc];
    type metadata accessor for CRLBoardItem(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v9 setTemporaryAdditionalBoardItemsToDisplay:isa];
  }

  v11 = [v1 icc];
  v12 = [v11 canvasEditor];

  if (!v12)
  {
    goto LABEL_55;
  }

  v161 = sub_100A5EEA4();
  if (!v161)
  {
    swift_unknownObjectRelease();
LABEL_55:
    v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview] = 0;
    v151 = *&v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine];
    *&v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine] = 0;

    return;
  }

  v14 = v13;
  v15 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v16 = **&v13[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  if (!swift_conformsToProtocol2())
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v163 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
  v154 = v6;
  v155 = v3;
  v17 = v16[105];

  v16 = v17(v18);

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
LABEL_58:

    __break(1u);
    goto LABEL_59;
  }

  [v19 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A10770, off_10182F7E8);
  swift_dynamicCast();
  a = v165.a;
  v21 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
  [*&a setHeadMagnet:v21];

  inited = swift_initStackObject();
  v164 = xmmword_101465920;
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v1 rep];
  sub_1005BFCB4(inited);
  v24 = v23;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10121307C(v24);
  v26 = v25;

  v27 = sub_100E93C20(v26);

  v28 = sub_100BC17C8(v27);

  v153 = v2;
  v157 = 0;
  if (!v28)
  {
    goto LABEL_13;
  }

  v29 = v15;
  v30 = [v1 icc];
  v31 = [v30 layoutForInfo:v28];

  if (!v31)
  {

    v15 = v29;
LABEL_13:
    v35 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
    [*&a setTailMagnet:v35];
    goto LABEL_20;
  }

  v32 = [v1 knob];
  v33 = [v32 tag];

  if ((v33 - 2) >= 7)
  {
    v34 = 1;
  }

  else
  {
    v34 = qword_1014911D8[(v33 - 2)];
  }

  sub_100A67E3C(v34, v31);
  if (v36)
  {
    v37 = v34;
  }

  else
  {
    v37 = 1;
  }

  [v31 getCardinalPositionFromType:v37];
  v39 = v38;
  v41 = v40;
  [v31 pureTransformInRoot];
  CGAffineTransformInvert(&v165, &aBlock);
  aBlock = v165;
  v167.x = v39;
  v167.y = v41;
  v42 = CGPointApplyAffineTransform(v167, &aBlock);
  v43 = [v31 pureGeometry];
  if (!v43)
  {
    goto LABEL_60;
  }

  v44 = v43;
  [v43 size];

  v45 = sub_10011ECB4();
  v48 = sub_100121720(v42.x, v42.y, v45, v46, v47);
  v35 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v37 normalizedPosition:{v48, v49}];
  [*&a setTailMagnet:v35];

  v15 = v29;
LABEL_20:

  v50 = v14;
  v51 = *&a;
  v52 = sub_1011255D0();
  v156 = v51;
  if ((v52 & 1) == 0)
  {

    goto LABEL_24;
  }

  v53 = **&v14[v15];
  if (swift_conformsToProtocol2())
  {
    v54 = *(v53 + 848);

    v54(v51);

LABEL_24:
    v55 = &selRef_geometryWithMask;

    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_10146CE00;
    v57 = v161;
    *(v56 + 32) = v161;
    *(v56 + 40) = v50;
    v58 = *((swift_isaMask & *v57) + 0xE0);
    v159 = v50;
    v16 = v57;
    v59 = v58();
    [v59 center];
    v61 = v60;
    v63 = v62;

    v64 = objc_opt_self();
    v65 = NSNotFound.getter();
    if ((v65 & 0x8000000000000000) == 0)
    {
      v163 = [v64 dragInsertionContextWithPreferredCenter:1 required:0 fromDragToInsertController:0 insertFloating:v65 targetZOrder:{v61, v63}];
      v66 = swift_initStackObject();
      *(v66 + 16) = v164;
      *(v66 + 32) = v16;
      v158 = v16;
      sub_1005BC5DC(v66);
      swift_setDeallocating();
      swift_arrayDestroy();
      v67 = objc_allocWithZone(CRLCanvasCommandSelectionBehavior);
      type metadata accessor for CRLBoardItem(0);
      sub_100A68208(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
      swift_unknownObjectRetain();
      v68 = Set._bridgeToObjectiveC()().super.isa;

      v69 = [v67 initWithCanvasEditor:v12 type:0 constructedInfos:v68];
      v70 = v12;
      v71 = v69;
      v162 = v70;
      swift_unknownObjectRelease();

      v72 = [v1 icc];
      v73 = [v72 editingCoordinator];

      if (v73)
      {
        v74 = *&v73[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

        v75 = v71;
        sub_10088E3FC(v71);
      }

      v160 = v71;
      v76 = [v1 icc];
      v77 = [v76 editingCoordinator];

      if (v77)
      {
        v78 = *&v77[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

        sub_10088F490();
      }

      v79 = Array._bridgeToObjectiveC()().super.isa;

      [v162 insertBoardItems:v79 withInsertionContext:v163 postProcessBlock:0];

      v80 = swift_initStackObject();
      *(v80 + 16) = v164;
      *(v80 + 32) = [v1 rep];
      sub_1005BFCB4(v80);
      v82 = v81;
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_10121307C(v82);
      v84 = v83;

      v85 = sub_100E93C20(v84);

      v86 = sub_100BC17C8(v85);

      v87 = v159;
      if (!v86)
      {
        goto LABEL_48;
      }

      type metadata accessor for CRLWPShapeItem(0);
      v88 = swift_dynamicCastClass();
      if (v88)
      {
        v89 = v88;
        v90 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        v91 = *(**(v88 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

        v93 = v91(v92);

        v94 = [v93 widthValid];

        if (!v94 || (v95 = *(**&v89[v90] + 296), v96 = , v97 = v95(v96), , v98 = [v97 heightValid], v97, (v98 & 1) == 0))
        {
          v99 = v158;
          v100 = swift_dynamicCastClass();
          if (v100)
          {
            v101 = v100;
            v102 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
            v103 = *(**(v100 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
            v104 = v99;

            v106 = v103(v105);

            v107 = [v106 widthValid];

            if (v107 && (v108 = *(**&v101[v102] + 296), v109 = , v110 = v108(v109), , v111 = [v110 heightValid], v110, (v111 & 1) != 0))
            {
              v112 = v86;
              v55 = &selRef_geometryWithMask;
            }

            else
            {
              v55 = &selRef_geometryWithMask;
              v113 = [v1 icc];
              [v113 layoutIfNeeded];

              sub_100A63174(v89, v101);
              if ((v116 & 1) != 0 || (v117 = v114, v118 = v115, (v119 = sub_100A639FC(v104)) == 0))
              {
                v112 = v86;
                v87 = v159;
                goto LABEL_46;
              }

              v120 = v118;
              v121 = v119;
              [v119 setCenter:{v117, v120}];
              v122 = objc_allocWithZone(type metadata accessor for CRLCommandSetInfoGeometry(0));
              v123 = v154;
              (*((swift_isaMask & *v104) + 0x88))();
              v124 = v104;
              v104 = v121;
              v125 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v155 + 8))(v123, v153);
              v112 = [v122 initWithId:v125 geometry:v104];

              v126 = [v1 icc];
              v127 = [v126 editingCoordinator];

              if (v127)
              {
                v128 = *&v127[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

                sub_100888700(v112, 0, 0, 4uLL, 0);
              }
            }

            v87 = v159;
LABEL_46:

            goto LABEL_47;
          }
        }

        v104 = v86;
        v87 = v159;
      }

      else
      {
        v104 = v86;
      }

LABEL_47:

LABEL_48:
      v129 = [v1 v55[501]];
      v130 = [v129 editingCoordinator];

      v131 = v156;
      v132 = v160;
      if (v130)
      {
        v133 = *&v130[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

        v134 = v132;
        sub_10088E600(v132);
      }

      v135 = [v1 v55[501]];
      [v135 layoutIfNeeded];

      v136 = [v1 v55[501]];
      v137 = [v136 layoutForInfo:v87];

      if (v137)
      {
        objc_opt_self();
        v138 = swift_dynamicCastObjCClass();
        if (v138)
        {
          v139 = v138;
          v140 = type metadata accessor for CRLInsertionAnimationHelper();
          v141 = [v1 v55[501]];
          v142 = [v141 canvas];
          v143 = swift_allocObject();
          v143[2] = v139;
          v143[3] = v141;
          v144 = v158;
          v143[4] = v158;
          v143[5] = v140;
          *&aBlock.tx = sub_10098C77C;
          *&aBlock.ty = v143;
          *&aBlock.a = _NSConcreteStackBlock;
          aBlock.b = *"";
          *&aBlock.c = sub_100007638;
          *&aBlock.d = &unk_101892C80;
          v145 = _Block_copy(&aBlock);
          v146 = v144;
          v147 = v131;
          v148 = v146;
          v149 = v137;
          v150 = v141;

          [v142 afterLayoutIncludingLayers:1 performBlock:v145];
          _Block_release(v145);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }

      goto LABEL_55;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_100A679E8(double a1, double a2)
{
  v3 = &v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_crlaxCurrentPositionOfKnobInsertingDuplicate];
  *v3 = a1;
  v3[1] = a2;
  *(v3 + 16) = 0;
  sub_100A66804();

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v2 rep];
  sub_1005BFCB4(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10121307C(v6);
  v8 = v7;

  v9 = sub_100E93C20(v8);

  v10 = sub_100BC17C8(v9);

  if (v10)
  {
    v11 = [v2 icc];
    v12 = [v11 repForInfo:v10];

    if (v12)
    {
      type metadata accessor for CRLWPStickyNoteRep();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        [v13 becameSelected];
      }
    }

    else
    {
      v12 = v10;
    }
  }

  *v3 = 0.0;
  v3[1] = 0.0;
  *(v3 + 16) = 1;
}

id sub_100A67CBC(__n128 a1)
{
  v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker__snapEnabled] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker] = 0;
  v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine] = 0;
  v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview] = 0;
  v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine] = 0;
  v2 = &v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters];
  *v2 = 0;
  v2[8] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_increasedStepWhenInsertConnectionLine] = 0x403E000000000000;
  v3 = &v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_crlaxCurrentPositionOfKnobInsertingDuplicate];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100A67D98(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100A67E3C(id a1, id a2)
{
  v2 = [a2 connectedLayouts];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_100006370(0, &qword_101A06118, off_10182F7C0);
  sub_10000FDE0(&qword_101A06120, &qword_101A06118, off_10182F7C0, &protocol conformance descriptor for NSObject);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
  }

  v12 = 0;
  v13 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v18 = v30, v16 = v7, v17 = v8, !v30))
    {
LABEL_29:
      sub_100035F90(v4);
      return;
    }

LABEL_21:
    if (v12 || (v19 = [v18 connectedTo]) != 0 && (v20 = v19, sub_100006370(0, &qword_101A287B0, off_10182F780), v21 = a2, v22 = static NSObject.== infix(_:_:)(), v21, v20, (v22 & 1) != 0) && objc_msgSend(v18, "headMagnetType") == a1)
    {

      v12 = 1;
    }

    else
    {
      v23 = [v18 connectedFrom];
      if (v23 && (v24 = v23, sub_100006370(0, &qword_101A287B0, off_10182F780), v25 = a2, v26 = static NSObject.== infix(_:_:)(), v25, v24, (v26 & 1) != 0))
      {
        v27 = [v18 tailMagnetType];

        v12 = v27 == a1;
      }

      else
      {

        v12 = 0;
      }
    }

    v7 = v16;
    v8 = v17;
  }

  v14 = v7;
  v15 = v8;
  v16 = v7;
  if (v8)
  {
LABEL_17:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_29;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_100A6818C(uint64_t a1)
{
  v2 = type metadata accessor for CRLConnectionLineCRDTData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A68208(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

id sub_100A68258(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker__snapEnabled] = 1;
  *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker] = 0;
  v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine] = 0;
  v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview] = 0;
  v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine] = 0;
  v5 = &v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters];
  *v5 = 0;
  v5[8] = 1;
  *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_increasedStepWhenInsertConnectionLine] = 0x403E000000000000;
  v6 = &v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_crlaxCurrentPositionOfKnobInsertingDuplicate];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  return objc_msgSendSuper2(&v8, "initWithRep:knob:", a1, a2);
}

uint64_t sub_100A68344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100A5EB60(a1, v4, v5, v6);
}

__n128 sub_100A68424@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 32);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_100A68440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a3;
  v5 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  __chkstk_darwin(v5 - 8);
  v136 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v143 = &v125 - v8;
  v9 = type metadata accessor for UUID();
  v147 = *(v9 - 8);
  __chkstk_darwin(v9);
  v135 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v125 - v12;
  v142 = type metadata accessor for CRLFolderIdentifierStorage(0);
  __chkstk_darwin(v142);
  v134 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v133 = &v125 - v16;
  __chkstk_darwin(v17);
  v140 = &v125 - v18;
  __chkstk_darwin(v19);
  v139 = &v125 - v20;
  v141 = type metadata accessor for CRLFolderIdentifier(0);
  v146 = *(v141 - 8);
  __chkstk_darwin(v141);
  v132 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v138 = &v125 - v23;
  __chkstk_darwin(v24);
  v137 = &v125 - v25;
  __chkstk_darwin(v26);
  v149 = &v125 - v27;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for CRLFolderDatabaseRow(0);
  v153 = *(v32 - 8);
  v33 = __chkstk_darwin(v32);
  v131 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(*(a1 + 16) + 32);
  *v31 = v35;
  v36 = *(v29 + 104);
  v152 = enum case for DispatchPredicate.onQueue(_:);
  v151 = v36;
  v36(v31, v33);
  v37 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v150 = *(v29 + 8);
  result = v150(v31, v28);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v39 = sub_10002C280(a2, a1);
  if (!v39)
  {

    v44 = 1;
    v45 = v154;
    return (*(v153 + 56))(v45, v44, 1, v32);
  }

  v130 = v9;
  v144 = a2;
  v145 = a1;
  v148 = v32;
  v41 = sub_100024DD4(v39, v40);
  v43 = v42;
  sub_100024E98(v41, v42);
  sub_100024EEC(v13, v41, v43);
  v47 = v46;
  v49 = v48;
  v127 = 0;
  v129 = v41;
  v128 = v43;
  sub_10002640C(v41, v43);
  v50 = v147 + 32;
  v51 = v140;
  v126 = *(v147 + 32);
  v126(v140, v13, v130);
  v52 = (v51 + *(v142 + 20));
  *v52 = v47;
  v52[1] = v49;
  v53 = v139;
  sub_10000C208(v51, v139, type metadata accessor for CRLFolderIdentifierStorage);
  v54 = v53;
  v55 = v138;
  sub_10000C208(v54, v138, type metadata accessor for CRLFolderIdentifierStorage);
  v56 = v55;
  v57 = v137;
  sub_10000C208(v56, v137, type metadata accessor for CRLFolderIdentifier);
  result = sub_10000C208(v57, v149, type metadata accessor for CRLFolderIdentifier);
  v58 = v144 + 1;
  if (__OFADD__(v144, 1))
  {
    goto LABEL_43;
  }

  v59 = v145;
  v60 = *(*(v145 + 16) + 32);
  *v31 = v60;
  v151(v31, v152, v28);
  v61 = v60;
  LOBYTE(v60) = _dispatchPreconditionTest(_:)();
  result = v150(v31, v28);
  if ((v60 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v62 = sub_10002C280(v58, v59);
  v45 = v154;
  v32 = v148;
  if (!v62)
  {
    sub_10002640C(v129, v128);

LABEL_26:
    sub_100A698C0(v149, type metadata accessor for CRLFolderIdentifier);
    v44 = 1;
    return (*(v153 + 56))(v45, v44, 1, v32);
  }

  v147 = v50;
  v64 = v154;
  result = sub_100024DD4(v62, v63);
  v139 = result;
  v140 = v65;
  v66 = v144 + 2;
  if (__OFADD__(v144, 2))
  {
    goto LABEL_45;
  }

  v67 = *(*(v59 + 16) + 32);
  *v31 = v67;
  v151(v31, v152, v28);
  v68 = v67;
  LOBYTE(v67) = _dispatchPreconditionTest(_:)();
  result = v150(v31, v28);
  if ((v67 & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v69 = sub_10002C280(v66, v59);
  if (v69)
  {
    v137 = sub_100024DD4(v69, v70);
    v138 = v71;
  }

  else
  {
    v137 = 0;
    v138 = 0xF000000000000000;
  }

  v72 = *(v146 + 56);
  v146 += 56;
  result = v72(v143, 1, 1, v141);
  v73 = v144 + 3;
  if (__OFADD__(v144, 3))
  {
    goto LABEL_47;
  }

  v74 = *(*(v59 + 16) + 32);
  *v31 = v74;
  v151(v31, v152, v28);
  v75 = v74;
  LOBYTE(v74) = _dispatchPreconditionTest(_:)();
  result = v150(v31, v28);
  if ((v74 & 1) == 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v76 = sub_10002C280(v73, v59);
  v78 = v59;
  v45 = v64;
  v79 = v129;
  v80 = v143;
  if (v76)
  {
    v81 = sub_100024DD4(v76, v77);
    v83 = v82;
    v84 = v135;
    v85 = v127;
    sub_100024EEC(v135, v81, v82);
    if (v85)
    {

      sub_10002640C(v81, v83);
      sub_10000CAAC(v80, &qword_1019F33E0, &unk_101468A80);
      v88 = 1;
      v89 = v136;
    }

    else
    {
      v90 = v86;
      v91 = v87;
      sub_10000CAAC(v80, &qword_1019F33E0, &unk_101468A80);
      sub_10002640C(v81, v83);
      v92 = v134;
      v126(v134, v84, v130);
      v93 = &v92[*(v142 + 20)];
      *v93 = v90;
      *(v93 + 1) = v91;
      v94 = v92;
      v95 = v133;
      sub_10000C208(v94, v133, type metadata accessor for CRLFolderIdentifierStorage);
      v96 = v95;
      v97 = v132;
      sub_10000C208(v96, v132, type metadata accessor for CRLFolderIdentifierStorage);
      v89 = v136;
      sub_10000C208(v97, v136, type metadata accessor for CRLFolderIdentifier);
      v88 = 0;
    }

    v72(v89, v88, 1, v141);
    sub_1006A3C78(v89, v80);
    v45 = v154;
    v78 = v145;
  }

  v98 = v144;
  result = v144 + 4;
  if (__OFADD__(v144, 4))
  {
    goto LABEL_49;
  }

  v99 = sub_100028894(result, v78);
  v32 = v148;
  if (v100)
  {
LABEL_25:
    sub_100025870(v137, v138);
    sub_10002640C(v139, v140);

    sub_10002640C(v79, v128);
    sub_10000CAAC(v80, &qword_1019F33E0, &unk_101468A80);
    goto LABEL_26;
  }

  v101 = v99;
  result = v98 + 6;
  if (__OFADD__(v98, 6))
  {
    goto LABEL_50;
  }

  v102 = sub_100028894(result, v78);
  if (v103)
  {
    goto LABEL_25;
  }

  v104 = v102;
  v105 = sub_100028894(v98 + 5, v78);
  if (v106)
  {
    sub_100025870(v137, v138);
    sub_10002640C(v139, v140);

    sub_10002640C(v79, v128);
    sub_10000CAAC(v80, &qword_1019F33E0, &unk_101468A80);
    sub_100A698C0(v149, type metadata accessor for CRLFolderIdentifier);
    v44 = 1;
    v32 = v148;
    return (*(v153 + 56))(v45, v44, 1, v32);
  }

  v107 = v105;
  result = v98 + 7;
  if (__OFADD__(v98, 7))
  {
    goto LABEL_51;
  }

  sub_10089C2BC(result, v78);
  v110 = v109;
  result = v98 + 8;
  if (!__OFADD__(v98, 8))
  {
    if (v108)
    {
      v111 = v108;
    }

    else
    {
      v111 = 0xE000000000000000;
    }

    if (v108)
    {
      v112 = v110;
    }

    else
    {
      v112 = 0;
    }

    v113 = COERCE_DOUBLE(sub_100083E9C(result, v78));
    v115 = v114;
    sub_10002640C(v79, v128);

    if (v115)
    {
      v116 = 0.0;
    }

    else
    {
      v116 = v113;
    }

    v117 = v131;
    sub_10000C208(v149, v131, type metadata accessor for CRLFolderIdentifier);
    v118 = v148;
    v119 = (v117 + v148[5]);
    v120 = v140;
    *v119 = v139;
    v119[1] = v120;
    v121 = (v117 + v118[6]);
    v122 = v138;
    *v121 = v137;
    v121[1] = v122;
    sub_1006A3C78(v80, v117 + v118[7]);
    v123 = v117 + v118[8];
    *v123 = v101;
    *(v123 + 8) = v104;
    v32 = v118;
    *(v123 + 16) = v107;
    *(v123 + 24) = 0;
    *(v123 + 32) = 1;
    v124 = (v117 + v118[9]);
    *v124 = v112;
    v124[1] = v111;
    *(v117 + v118[10]) = v116;
    v45 = v154;
    sub_10000C208(v117, v154, type metadata accessor for CRLFolderDatabaseRow);
    v44 = 0;
    return (*(v153 + 56))(v45, v44, 1, v32);
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CRLFolderDatabaseRow(uint64_t a1)
{
  result = qword_101A0E5A0;
  if (!qword_101A0E5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A69064@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CRLFolderCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLFolder(0);
  v30 = a1 + v10[7];
  sub_100A69920(v30, v9, type metadata accessor for CRLFolderCRDTData);
  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v11, qword_101AD6348);
  sub_100A69868();
  v12 = CRDT.serializedData(_:version:)();
  if (v3)
  {

    sub_100A698C0(v9, type metadata accessor for CRLFolderCRDTData);
    return sub_100A698C0(a1, type metadata accessor for CRLFolder);
  }

  else
  {
    v15 = v12;
    v16 = v13;
    v29 = a2;
    sub_100A698C0(v9, type metadata accessor for CRLFolderCRDTData);
    sub_100A69920(a1, a3, type metadata accessor for CRLFolderIdentifier);
    v17 = type metadata accessor for CRLFolderDatabaseRow(0);
    v18 = (a3 + v17[5]);
    *v18 = v15;
    v18[1] = v16;
    if (*(a1 + v10[6]))
    {
      v19 = sub_100EEA848();
    }

    else
    {
      v19 = 0;
      v20 = 0xF000000000000000;
    }

    v21 = (a3 + v17[6]);
    *v21 = v19;
    v21[1] = v20;
    sub_10069646C(a1 + v10[5], a3 + v17[7]);
    v22 = a1 + v10[8];
    v23 = *(v22 + 32);
    v24 = a3 + v17[8];
    v25 = *(v22 + 16);
    *v24 = *v22;
    *(v24 + 16) = v25;
    *(v24 + 32) = v23;
    sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
    CRRegister.wrappedValue.getter();
    v26 = v32;
    v27 = (a3 + v17[9]);
    *v27 = v31;
    v27[1] = v26;
    sub_1005B981C(&qword_1019F4858, &unk_10146C6D0);
    CRMaxRegister.wrappedValue.getter();

    v28 = v31;
    result = sub_100A698C0(a1, type metadata accessor for CRLFolder);
    *(a3 + v17[10]) = v28;
  }

  return result;
}

BOOL sub_100A69330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFolderIdentifier(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  __chkstk_darwin(v8 - 8);
  v10 = &v48[-v9];
  v11 = sub_1005B981C(&qword_1019F33E8, &unk_101491270);
  __chkstk_darwin(v11);
  v13 = &v48[-v12];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v15 = *(v14 + 20);
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v20 = type metadata accessor for CRLFolderDatabaseRow(0);
  if (!sub_1009F9488(*(a1 + *(v20 + 20)), *(a1 + *(v20 + 20) + 8), *(a2 + *(v20 + 20)), *(a2 + *(v20 + 20) + 8)))
  {
    return 0;
  }

  v50 = v14;
  v52 = v5;
  v53 = v20;
  v21 = *(v20 + 24);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *v24;
  v26 = v24[1];
  if (v23 >> 60 == 15)
  {
    if (v26 >> 60 == 15)
    {
      v51 = v22;
      sub_100024E84(v22, v23);
      sub_100024E84(v25, v26);
      sub_100025870(v51, v23);
      goto LABEL_14;
    }

LABEL_12:
    v27 = v22;
    sub_100024E84(v22, v23);
    sub_100024E84(v25, v26);
    sub_100025870(v27, v23);
    sub_100025870(v25, v26);
    return 0;
  }

  if (v26 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v51 = v22;
  sub_100024E84(v22, v23);
  sub_100024E84(v25, v26);
  v49 = sub_1009F9488(v51, v23, v25, v26);
  sub_100025870(v25, v26);
  sub_100025870(v51, v23);
  if (!v49)
  {
    return 0;
  }

LABEL_14:
  v28 = v53;
  v29 = v53[7];
  v30 = *(v11 + 48);
  sub_10069646C(a1 + v29, v13);
  sub_10069646C(a2 + v29, &v13[v30]);
  v31 = *(v52 + 48);
  if (v31(v13, 1, v4) == 1)
  {
    if (v31(&v13[v30], 1, v4) == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  sub_10069646C(v13, v10);
  if (v31(&v13[v30], 1, v4) == 1)
  {
    sub_100A698C0(v10, type metadata accessor for CRLFolderIdentifier);
LABEL_19:
    v32 = &qword_1019F33E8;
    v33 = &unk_101491270;
LABEL_32:
    sub_10000CAAC(v13, v32, v33);
    return 0;
  }

  sub_10000C208(&v13[v30], v7, type metadata accessor for CRLFolderIdentifier);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v34 = *(v50 + 20), v35 = *&v10[v34], v36 = *&v10[v34 + 8], v37 = &v7[v34], v35 != *v37) || v36 != v37[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_100A698C0(v7, type metadata accessor for CRLFolderIdentifier);
    sub_100A698C0(v10, type metadata accessor for CRLFolderIdentifier);
    v32 = &qword_1019F33E0;
    v33 = &unk_101468A80;
    goto LABEL_32;
  }

  sub_100A698C0(v7, type metadata accessor for CRLFolderIdentifier);
  sub_100A698C0(v10, type metadata accessor for CRLFolderIdentifier);
LABEL_25:
  sub_10000CAAC(v13, &qword_1019F33E0, &unk_101468A80);
  result = 0;
  v39 = v28[8];
  v40 = a1 + v39;
  v41 = *(a1 + v39);
  v42 = a2 + v39;
  if (v41 == *v42 && *(v40 + 8) == *(v42 + 8) && *(v40 + 16) == *(v42 + 16))
  {
    if (*(v40 + 32))
    {
      if (*(v42 + 32))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (*(v40 + 24) == *(v42 + 24))
      {
        v43 = *(v42 + 32);
      }

      else
      {
        v43 = 1;
      }

      if ((v43 & 1) == 0)
      {
LABEL_39:
        v44 = v28[9];
        v45 = *(a1 + v44);
        v46 = *(a1 + v44 + 8);
        v47 = (a2 + v44);
        if (v45 == *v47 && v46 == v47[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return *(a1 + v28[10]) == *(a2 + v28[10]);
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_100A69868()
{
  result = qword_1019F4968;
  if (!qword_1019F4968)
  {
    v3 = type metadata accessor for CRLFolderCRDTData(255);
    result = swift_getWitnessTable(byte_10146C808, v3, v0, v1);
    atomic_store(result, &qword_1019F4968);
  }

  return result;
}

uint64_t sub_100A698C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100A69920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100A699B0(uint64_t a1)
{
  type metadata accessor for CRLFolderIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_10003FE44();
    if (v2 <= 0x3F)
    {
      sub_100039B50(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

Class sub_100A69B94(char *a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t *a5, uint64_t *a6)
{
  v9 = a1;

  a4(v10);

  sub_1005B981C(a5, a6);
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

uint64_t sub_100A69C34(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_100601584(a1, v28);
  if (!v29)
  {
    sub_1005E09AC(v28);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v25 = 0;
    return v25 & 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_declaredVariables);
  v5 = *&v27[OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_declaredVariables];

  v6 = sub_100BC5BA8(v4, v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_expressions;
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_expressions);
  if (!(v8 >> 62))
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v9 = v8;
LABEL_6:
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

  sub_1005B981C(&unk_1019F6E80, &unk_1014912F0);
  v9 = _bridgeCocoaArray<A>(_:)();

  if (!(v9 >> 62))
  {
    goto LABEL_6;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:

  v11 = OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_expressions;
  v12 = *&v27[OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_expressions];
  if (!(v12 >> 62))
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v13 = v12;
LABEL_9:
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

  sub_1005B981C(&unk_1019F6E80, &unk_1014912F0);
  v13 = _bridgeCocoaArray<A>(_:)();

  if (!(v13 >> 62))
  {
    goto LABEL_9;
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
LABEL_10:

  if (v10 != v14)
  {
    goto LABEL_24;
  }

  v15 = OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_evaluationResults;
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_evaluationResults);
  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_evaluationResults;
  v19 = *&v27[OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_evaluationResults];
  if (!(v19 >> 62))
  {
    if (v17 == *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v17 != _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_24;
  }

LABEL_15:
  v20 = *(v2 + v7);
  v21 = *&v27[v11];

  v22 = sub_1006749B8(v20, v21);

  if ((v22 & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = *(v2 + v15);
  v24 = *&v27[v18];

  v25 = sub_1006749D0(v23, v24);

  return v25 & 1;
}

BOOL sub_100A6A110(uint64_t a1)
{
  swift_getObjectType();
  sub_100601584(a1, v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtC8Freeform14MathExpression_expression) == *&v7[OBJC_IVAR____TtC8Freeform14MathExpression_expression] && *(v1 + OBJC_IVAR____TtC8Freeform14MathExpression_expression + 8) == *&v7[OBJC_IVAR____TtC8Freeform14MathExpression_expression + 8];
      if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = *(v1 + OBJC_IVAR____TtC8Freeform14MathExpression_expressionType);
        v5 = *&v7[OBJC_IVAR____TtC8Freeform14MathExpression_expressionType];

        return v4 == v5;
      }
    }
  }

  else
  {
    sub_1005E09AC(v8);
  }

  return 0;
}

uint64_t sub_100A6A300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

void *sub_100A6A3C0()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_allocWithZone(PKStrokeProvider);
  isa = PKDrawing._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v9 = [v7 initWithDrawing:isa];

  if (v9)
  {
    v10 = [v9 orderedStrokes];
    sub_1005B981C(&unk_101A0E7D0, &unk_1014912E0);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = v10;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  return v11;
}

BOOL sub_100A6A554(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for PKDrawing();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100601584(a1, v55);
  if (!v56)
  {
    sub_1005E09AC(v55);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = v54;
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_string) == *&v54[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_string] && *(v1 + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_string + 8) == *&v54[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_string + 8];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1006364DC();
  v10 = *&v8[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_strokeGroupIdentifier];
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_strokeGroupIdentifier);
  v12 = v10;
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    goto LABEL_30;
  }

  v53 = OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing;
  v14 = *(v2 + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing);
  v15 = &selRef_initWithId_maskInfo_;
  if (v14)
  {
    v16 = v14;
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = objc_allocWithZone(PKStrokeProvider);
    isa = PKDrawing._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v19 = [v17 initWithDrawing:isa];

    if (v19)
    {
      v20 = [v19 orderedStrokes];
      sub_1005B981C(&unk_101A0E7D0, &unk_1014912E0);
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = v20;
      v15 = &selRef_initWithId_maskInfo_;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v22 = v21 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v23 = OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing;
  v24 = *&v8[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing];
  if (v24)
  {
    v52 = v22;
    v25 = v24;
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = objc_allocWithZone(PKStrokeProvider);
    v27 = PKDrawing._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v28 = [v26 v15[58]];

    if (v28)
    {
      v29 = [v28 orderedStrokes];
      sub_1005B981C(&unk_101A0E7D0, &unk_1014912E0);
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = v29;
    }

    else
    {
      v30 = _swiftEmptyArrayStorage;
    }

    v22 = v52;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v31 = v30 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v22 != v31)
  {
LABEL_30:

    return 0;
  }

  v32 = *(v2 + v53);
  if (!v32)
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v41 = *&v8[v23];
    if (v41)
    {
      goto LABEL_29;
    }

LABEL_33:
    v43 = CGRectNull.origin.x;
    v45 = CGRectNull.origin.y;
    v47 = CGRectNull.size.width;
    v49 = CGRectNull.size.height;
    goto LABEL_34;
  }

  [v32 bounds];
  x = v33;
  y = v35;
  width = v37;
  height = v39;
  v41 = *&v8[v23];
  if (!v41)
  {
    goto LABEL_33;
  }

LABEL_29:
  [v41 bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
LABEL_34:

  return sub_10011EE4C(x, y, width, height, v43, v45, v47, v49);
}

uint64_t sub_100A6A9FC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, __n128))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = (a4)(v10);

  sub_1005E09AC(v10);
  return v8 & 1;
}

void sub_100A6AC3C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_builders);
  if ((v4 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLiOSMiniFormatterBuilder();
    sub_100A71534(&qword_101A0E898, type metadata accessor for CRLiOSMiniFormatterBuilder, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v4 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CRLiOSMiniFormatterBuilder(), swift_dynamicCast(), (v13 = v18) == 0))
    {
LABEL_18:
      sub_100035F90(v4);
      return;
    }

LABEL_9:
    v14 = (*((swift_isaMask & *v13) + 0x1A0))(a1, a2);

    if (v14)
    {
      goto LABEL_18;
    }
  }

  v15 = v7;
  v16 = v8;
  if (v8)
  {
LABEL_8:
    v8 = (v16 - 1) & v16;
    v13 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_18;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100A6AE9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_builders);
  if ((v5 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLiOSMiniFormatterBuilder();
    sub_100A71534(&qword_101A0E898, type metadata accessor for CRLiOSMiniFormatterBuilder, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v5 = v50;
    v6 = v51;
    v7 = v52;
    v8 = v53;
    v9 = v54;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v43 = v6;
  while (1)
  {
    if (v5 < 0)
    {
      v18 = __CocoaSet.Iterator.next()();
      if (!v18 || (v45 = v18, type metadata accessor for CRLiOSMiniFormatterBuilder(), swift_dynamicCast(), v17 = v46, v16 = v9, !v46))
      {
LABEL_44:
        sub_100035F90(v5);
        return;
      }

      goto LABEL_18;
    }

    v14 = v8;
    v15 = v9;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v16 = (v15 - 1) & v15;
    v17 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v17)
    {
      goto LABEL_44;
    }

LABEL_18:
    sub_100064288(a2, &v46);
    type metadata accessor for CRLBoardItem(0);
    if (swift_dynamicCast())
    {
      v44 = v16;
      v19 = *(*&v17[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
      if (sub_100006370(0, &qword_101A0E8B0, off_10182F740))
      {
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      }

      else
      {
        ObjCClassFromMetadata = 0;
      }

      v21 = [v19 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = [v22 boardItems];
        swift_unknownObjectRelease();
        sub_100A71534(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
        v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = v45;
          v26 = __CocoaSet.contains(_:)();

          if (v26)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (*(v24 + 16))
          {
            v41 = a1;
            v42 = a2;
            v35 = NSObject._rawHashValue(seed:)(*(v24 + 40));
            v36 = -1 << *(v24 + 32);
            v37 = v35 & ~v36;
            if (((*(v24 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
LABEL_38:

              v9 = v44;
              a2 = v42;
              a1 = v41;
              goto LABEL_42;
            }

            v38 = ~v36;
            while (1)
            {
              v39 = *(*(v24 + 48) + 8 * v37);
              v40 = static NSObject.== infix(_:_:)();

              if (v40)
              {
                break;
              }

              v37 = (v37 + 1) & v38;
              if (((*(v24 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            a2 = v42;
            a1 = v41;
LABEL_25:
            v27 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
            v28 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
            v29 = v27;
            swift_beginAccess();
            v30 = *&v27[v28];
            if (*(v30 + 16) && (v31 = sub_1007CF108(), (v32 & 1) != 0) || (v46 = 0, v47 = 0, v48 = 0, v49 = 1, sub_10077D6BC(&v46), v30 = *&v27[v28], *(v30 + 16)) && (v31 = sub_1007CF108(), (v33 & 1) != 0) || (v46 = 0, v47 = 0, v48 = 0, v49 = 1, sub_10077D6BC(&v46), v30 = *&v27[v28], *(v30 + 16)) && (v31 = sub_1007CF108(), (v34 & 1) != 0))
            {
              sub_100601584(*(v30 + 56) + 32 * v31, &v46);

              sub_100035F90(v5);

              sub_10077D6BC(&v46);
              return;
            }

            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 1;
            sub_10077D6BC(&v46);

            goto LABEL_41;
          }
        }

LABEL_41:
        v9 = v44;
LABEL_42:
        v6 = v43;
      }

      else
      {

        swift_unknownObjectRelease();
        v9 = v44;
      }
    }

    else
    {

      v9 = v16;
    }
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_44;
    }

    v15 = *(v6 + 8 * v8);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_100A6B468(uint64_t a1)
{
  v1 = _UISolariumEnabled();
  v2 = objc_opt_self();
  v3 = &selRef_clearColor;
  if (!v1)
  {
    v3 = &selRef_systemBackgroundColor;
  }

  result = [v2 *v3];
  qword_101AD70F8 = result;
  return result;
}

uint64_t sub_100A6B4C8()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for _Glass();
  sub_10061655C(v1, qword_101AD7100);
  sub_1005EB3DC(v1, qword_101AD7100);
  static _Glass._GlassVariant.regular.getter();
  return _Glass.init(_:smoothness:)();
}

uint64_t sub_100A6B578(uint64_t a1)
{
  result = _UISolariumEnabled();
  v2 = 4;
  if (result)
  {
    v2 = 5;
  }

  qword_101AD7118 = v2;
  return result;
}

void sub_100A6B770()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView];
  if (qword_1019F1B58 != -1)
  {
    swift_once();
  }

  [v2 setBackgroundColor:qword_101AD70F8];
  v3 = [v2 layer];
  [v3 setCornerRadius:22.0];

  v4 = [v2 layer];
  [v4 setCornerCurve:kCACornerCurveContinuous];

  if (_UISolariumEnabled())
  {
    if (qword_1019F1B60 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for _Glass();
    v6 = sub_1005EB3DC(v5, qword_101AD7100);
    v43[3] = v5;
    v43[4] = &protocol witness table for _Glass;
    v7 = sub_10002C58C(v43);
    (*(*(v5 - 8) + 16))(v7, v6, v5);
    UIView._background.setter();
  }

  else
  {
    v8 = [v2 layer];
    [v8 crl_applyDefaultCanvasOverlayUIShadowSettings];
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setAccessibilityElementsHidden:1];
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 addSubview:v2];

  [v2 addSubview:v9];
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10146E8A0;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v2 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v12 + 32) = v17;
  v18 = [v9 heightAnchor];
  v19 = [v18 constraintEqualToConstant:44.0];

  *(v12 + 40) = v19;
  v20 = [v1 view];
  if (v20)
  {
    v21 = v20;
    v42 = objc_opt_self();
    v22 = [v21 leftAnchor];

    v23 = [v2 leftAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    *(v12 + 48) = v24;
    sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v42 activateConstraints:isa];

    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10146E8B0;
    v27 = [v2 topAnchor];
    v28 = [v9 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v26 + 32) = v29;
    v30 = [v2 bottomAnchor];
    v31 = [v9 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    v33 = [v2 leadingAnchor];
    v34 = [v9 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:-*&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_leadingMargin]];

    *(v26 + 48) = v35;
    v36 = [v2 trailingAnchor];
    v37 = [v9 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:6.0];

    *(v26 + 56) = v38;
    v39 = Array._bridgeToObjectiveC()().super.isa;

    [v42 activateConstraints:v39];

    sub_100A6C00C();
    sub_1005B981C(&unk_101A150B0, &qword_10146F280);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10146C4D0;
    *(v40 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v40 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v40 + 48) = type metadata accessor for UITraitVerticalSizeClass();
    *(v40 + 56) = &protocol witness table for UITraitVerticalSizeClass;
    *(v40 + 64) = type metadata accessor for UITraitUserInterfaceStyle();
    *(v40 + 72) = &protocol witness table for UITraitUserInterfaceStyle;
    UIViewController.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    [v9 setShowsLargeContentViewer:1];
    v41 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v1];
    [v9 addInteraction:v41];

    return;
  }

LABEL_14:
  __break(1u);
}

void sub_100A6C00C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if ([objc_opt_self() crl_phoneUI])
  {

LABEL_4:
    v4 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper];
    *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper] = 0;

    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      v7 = type metadata accessor for CRLMiniFormatterDynamicOperationViewHelper();
      v8 = objc_allocWithZone(v7);
      swift_unknownObjectWeakInit();
      v9 = &v8[OBJC_IVAR____TtC8Freeform42CRLMiniFormatterDynamicOperationViewHelper_delegate];
      *&v8[OBJC_IVAR____TtC8Freeform42CRLMiniFormatterDynamicOperationViewHelper_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      *(v9 + 1) = &off_101892DD8;
      swift_unknownObjectWeakAssign();
      v23.receiver = v8;
      v23.super_class = v7;
      v10 = objc_msgSendSuper2(&v23, "init");

      v11 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper];
      *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper] = v10;
LABEL_11:

      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  v3 = [v2 crl_isCompactWidth];

  if (v3)
  {
    goto LABEL_4;
  }

  v12 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper];
  *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper] = 0;

  sub_100020E58(&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate], *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24]);
  v13 = sub_100721FB0();
  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    if (v13)
    {
      v16 = 49.0;
    }

    else
    {
      v16 = 16.0;
    }

    v17 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_reps];
    v18 = type metadata accessor for CRLRepTrackingMiniFormatterViewHelper();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_delegate];
    *&v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *&v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper____lazy_storage___miniFormatterPositionHelper] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsHiddenDueToCanvasDecorator] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsFadingOut] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsFadingIn] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_isScrollingBoard] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewShouldReappear] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_isSuppressingReshowMiniFormatter] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_dynamicOperationSuppressesMiniFormatter] = 0;
    swift_unknownObjectWeakAssign();
    *&v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_reps] = v17;
    *&v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_distanceToView] = v16;
    *(v20 + 1) = &off_101892DF8;
    swift_unknownObjectWeakAssign();
    v24.receiver = v19;
    v24.super_class = v18;

    v21 = objc_msgSendSuper2(&v24, "init");

    v22 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper];
    *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper] = v21;
    v11 = v21;

    sub_10091C3B4();
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
}

void sub_100A6C338(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CRLiOSMiniFormatterViewController();
  objc_msgSendSuper2(&v12, "viewWillLayoutSubviews");
  if ((v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingHide] & 1) == 0 && (v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay] & 1) == 0)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v1 view];
      if (v4)
      {
        v5 = v4;
        [v4 frame];
        v7 = v6;
        v9 = v8;

        [*&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
        [v3 setFrame:{v7, v9, v10, v11}];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100A6C490(void *a1, SEL *a2, char a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v176 = *(v9 - 1);
  v177 = v9;
  __chkstk_darwin(v9);
  v11 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v174 = *(v12 - 8);
  v175 = v12;
  __chkstk_darwin(v12);
  v14 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for DispatchTime();
  v173 = *(v178 - 1);
  __chkstk_darwin(v178);
  v16 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v168 - v19;
  v21 = [a1 view];
  v22 = [v5 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_101;
  }

  v23 = v22;
  v24 = [v22 superview];

  v179 = v21;
  if (v24)
  {
    if (v21)
    {
      sub_100006370(0, &qword_1019F6D00, UIView_ptr);
      v25 = v21;
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        goto LABEL_81;
      }
    }

    else
    {
    }
  }

  else if (!v21)
  {
LABEL_81:
    v152 = [v5 traitCollection];
    if ([objc_opt_self() crl_phoneUI])
    {

      v153 = v179;
    }

    else
    {
      v154 = [v152 crl_isCompactWidth];

      v153 = v179;
      if ((v154 & 1) == 0)
      {
        v162 = *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper];
        if (!v162)
        {
LABEL_94:

          return;
        }

        v163 = *&v162[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_reps];

        v159 = v162;
        v164 = sub_100BC17E0(v163);

        v161 = [v164 interactiveCanvasController];

        if (!v161)
        {
LABEL_93:

          v153 = v159;
          goto LABEL_94;
        }

        [v161 addDecorator:v159];
LABEL_91:

        goto LABEL_93;
      }
    }

    v155 = *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper];
    if (!v155)
    {
      goto LABEL_94;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_94;
    }

    v157 = v153;
    v158 = *(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_reps);
    v159 = v155;
    v160 = sub_100BC17E0(v158);
    v161 = [v160 interactiveCanvasController];
    swift_unknownObjectRelease();

    if (!v161)
    {
      v153 = v157;
      goto LABEL_93;
    }

    [v161 addDecorator:v159];
    v153 = v157;
    goto LABEL_91;
  }

  v27 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay;
  v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay] = 1;
  v28 = &selRef_tailLineEndAngle;
  v29 = [v5 view];
  [v29 removeFromSuperview];

  if (v179)
  {
    v30 = v179;
    v31 = [v5 view];
    if (v31)
    {
      v32 = v31;
      [v30 addSubview:v31];

      v28 = &selRef_tailLineEndAngle;
      goto LABEL_12;
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

LABEL_12:
  if ((a2 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v34 = [v5 traitCollection];
    if ([objc_opt_self() crl_phoneUI])
    {
    }

    else
    {
      v40 = [v34 crl_isCompactWidth];

      if (!v40)
      {
        v49 = [v5 view];
        if (v49)
        {
          v50 = v49;
          v51 = [v5 view];
          if (v51)
          {
            v52 = v51;
            [v51 frame];
            v54 = v53;
            v56 = v55;

            [*&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
            [v50 setFrame:{v54, v56, v57, v58}];

            sub_100A6FED4();
            v169 = objc_opt_self();
            [v169 begin];
            v178 = "rSelectionPathChange(from:to:)";
            v59 = String._bridgeToObjectiveC()();
            a2 = &selRef_allowResizeDelegate;
            v177 = objc_opt_self();
            v60 = [v177 animationWithKeyPath:v59];

            [v60 setMass:1.0];
            [v60 setStiffness:500.0];
            [v60 setDamping:33.0];
            [v60 setInitialVelocity:0.0];
            v61 = v60;
            [v61 settlingDuration];
            [v61 setDuration:?];

            v20 = v61;
            isa = Double._bridgeToObjectiveC()().super.super.isa;
            [v20 setFromValue:isa];

            v63 = Double._bridgeToObjectiveC()().super.super.isa;
            [v20 setToValue:v63];

            v64 = [v5 view];
            if (v64)
            {
              v65 = v64;
              v66 = [v64 layer];

              v67 = String._bridgeToObjectiveC()();
              [v66 addAnimation:v20 forKey:v67];

              v68 = String._bridgeToObjectiveC()();
              v69 = [objc_opt_self() animationWithKeyPath:v68];

              v70 = objc_allocWithZone(CAMediaTimingFunction);
              v28 = v69;
              LODWORD(v71) = 1045220557;
              LODWORD(v72) = 0.25;
              LODWORD(v73) = 1.0;
              v74 = [v70 initWithControlPoints:v71 :0.0 :v72 :v73];
              [(SEL *)v28 setTimingFunction:v74];

              [(SEL *)v28 setDuration:0.08];
              v75 = Int._bridgeToObjectiveC()().super.super.isa;
              [(SEL *)v28 setFromValue:v75];

              v76 = Double._bridgeToObjectiveC()().super.super.isa;
              [(SEL *)v28 setToValue:v76];

              v77 = [v5 view];
              if (v77)
              {
                v78 = v77;
                v79 = [v77 layer];

                v80 = String._bridgeToObjectiveC()();
                [v79 addAnimation:v28 forKey:v80];

                v81 = [v5 view];
                if (v81)
                {
                  v82 = v81;
                  v83 = [v81 layer];

                  [v83 convertTime:0 fromLayer:CACurrentMediaTime()];
                  v4 = v84;

                  v36 = *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay];
                  v27 = &selRef_allowResizeDelegate;
                  v85 = [v36 arrangedSubviews];
                  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
                  v86 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  if (v86 >> 62)
                  {
                    goto LABEL_97;
                  }

                  v37 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_41;
                }

                goto LABEL_108;
              }

LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

LABEL_106:
            __break(1u);
            goto LABEL_107;
          }

LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    v41 = [v5 view];
    if (v41)
    {
      v42 = v41;
      [v41 setHidden:1];

      sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
      v43 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v173 = v173[1];
      (v173)(v16, v178);
      v44 = swift_allocObject();
      *(v44 + 16) = v5;
      *&aBlock.tx = sub_100A7152C;
      *&aBlock.ty = v44;
      *&aBlock.a = _NSConcreteStackBlock;
      aBlock.b = *"";
      v45 = &unk_101893118;
LABEL_33:
      *&aBlock.c = sub_100007638;
      *&aBlock.d = v45;
      v46 = _Block_copy(&aBlock);
      v47 = v5;

      static DispatchQoS.unspecified.getter();
      *&aBlock.a = _swiftEmptyArrayStorage;
      sub_100A71534(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
      sub_10000D494();
      v48 = v177;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v46);

      (*(v176 + 8))(v11, v48);
      (*(v174 + 8))(v14, v175);
      (v173)(v20, v178);
      goto LABEL_81;
    }

    goto LABEL_102;
  }

  if (!UIAccessibilityIsReduceMotionEnabled() || !UIAccessibilityPrefersCrossFadeTransitions())
  {
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v35 = [v5 traitCollection];
      if ([objc_opt_self() crl_phoneUI])
      {
      }

      else
      {
        v101 = [v35 crl_isCompactWidth];

        if (!v101)
        {
          v113 = [v5 view];
          if (!v113)
          {
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          v114 = v113;
          v115 = [v5 view];
          if (!v115)
          {
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v116 = v115;
          [v115 frame];
          v118 = v117;
          v120 = v119;

          [*&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
          [v114 setFrame:{v118, v120, v121, v122}];

          sub_100A6FED4();
          goto LABEL_68;
        }
      }

      sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
      v102 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v173 = v173[1];
      (v173)(v16, v178);
      v103 = swift_allocObject();
      *(v103 + 16) = v5;
      *&aBlock.tx = sub_100A7157C;
      *&aBlock.ty = v103;
      *&aBlock.a = _NSConcreteStackBlock;
      aBlock.b = *"";
      *&aBlock.c = sub_100007638;
      *&aBlock.d = &unk_101893168;
      v104 = _Block_copy(&aBlock);
      v105 = v5;

      static DispatchQoS.unspecified.getter();
      *&aBlock.a = _swiftEmptyArrayStorage;
      sub_100A71534(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
      sub_10000D494();
      v106 = v177;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v104);

      (*(v176 + 8))(v11, v106);
      (*(v174 + 8))(v14, v175);
      (v173)(v20, v178);
      v28 = &selRef_tailLineEndAngle;
LABEL_68:
      v123 = [v5 v28[510]];
      if (v123)
      {
        v124 = v123;
        [v123 setHidden:0];

        goto LABEL_81;
      }

      goto LABEL_103;
    }

LABEL_23:
    *(v27 + v5) = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_81;
    }

    v36 = [*&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay] arrangedSubviews];
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v37 >> 62)
    {
      goto LABEL_77;
    }

    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      while ((v37 & 0xC000000000000001) == 0)
      {
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v38 = *(v37 + 32);
LABEL_29:
          v39 = v38;
          goto LABEL_79;
        }

        __break(1u);
LABEL_97:
        v37 = _CocoaArrayWrapper.endIndex.getter();
LABEL_41:
        v168 = v20;

        v36 = [v36 v27[151]];
        v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v87 >> 62)
        {
          v27 = _CocoaArrayWrapper.endIndex.getter();
          if (!v27)
          {
LABEL_99:

            v165 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&aBlock.tx = sub_100A71524;
            *&aBlock.ty = v165;
            *&aBlock.a = _NSConcreteStackBlock;
            aBlock.b = *"";
            *&aBlock.c = sub_100007638;
            *&aBlock.d = &unk_1018930C8;
            v166 = _Block_copy(&aBlock);

            v167 = v169;
            [v169 setCompletionBlock:v166];
            _Block_release(v166);
            [v167 commit];

            goto LABEL_81;
          }
        }

        else
        {
          v27 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v27)
          {
            goto LABEL_99;
          }
        }

        v20 = 0;
        v176 = v87 & 0xC000000000000001;
        v174 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_numberOfButtons;
        v175 = v87 & 0xFFFFFFFFFFFFFF8;
        v173 = kCAFillModeForwards;
        v170 = (v37 - 1);
        v88 = __OFSUB__(v37, 1);
        v171 = v88;
        v4 = v4 + 0.05;
        v172 = "transform.scale.xy";
        while (1)
        {
          if (v176)
          {
            v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v20 >= *(v175 + 16))
            {
              goto LABEL_75;
            }

            v95 = *(v87 + 8 * v20 + 32);
          }

          v37 = v95;
          v96 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
            break;
          }

          [v95 transform];
          CGAffineTransformScale(&v180, &aBlock, 0.75, 0.75);
          aBlock = v180;
          [v37 setTransform:&aBlock];
          v97 = String._bridgeToObjectiveC()();
          v98 = [v177 a2[79]];

          [v98 setMass:1.0];
          [v98 setStiffness:500.0];
          [v98 setDamping:33.0];
          [v98 setInitialVelocity:0.0];
          v99 = v98;
          [v99 settlingDuration];
          [v99 setDuration:?];
          v36 = v99;
          v100 = Double._bridgeToObjectiveC()().super.super.isa;
          [v36 setFromValue:v100];

          a2 = Double._bridgeToObjectiveC()().super.super.isa;
          [v36 setToValue:a2];

          [v36 setRemovedOnCompletion:0];
          [v36 setFillMode:v173];
          if (*&v5[v174] >= 3)
          {
            if (!v20)
            {
              goto LABEL_47;
            }

            if (v171)
            {
              goto LABEL_76;
            }

            if (v170 == v20)
            {
LABEL_47:
              [v36 setBeginTime:v4];
            }
          }

          v89 = [v37 layer];
          v90 = v5;
          v91 = v87;
          v92 = v27;
          v93 = v28;
          v94 = String._bridgeToObjectiveC()();
          [v89 addAnimation:v36 forKey:v94];

          v28 = v93;
          v27 = v92;
          v87 = v91;
          v5 = v90;
          ++v20;
          a2 = &selRef_allowResizeDelegate;
          if (v96 == v27)
          {
            goto LABEL_99;
          }
        }

        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_78;
        }
      }

      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_29;
    }

LABEL_78:
    v39 = 0;
LABEL_79:
    v151 = UIAccessibilityLayoutChangedNotification;

    UIAccessibilityPostNotification(v151, v39);
LABEL_80:

    goto LABEL_81;
  }

  v33 = [v5 traitCollection];
  if ([objc_opt_self() crl_phoneUI])
  {

    goto LABEL_62;
  }

  v107 = [v33 crl_isCompactWidth];

  if (v107)
  {
LABEL_62:
    v108 = [v5 view];
    if (v108)
    {
      v109 = v108;
      [v108 setHidden:0];

      v110 = [v5 view];
      if (v110)
      {
        v111 = v110;
        [v110 setAlpha:0.0];

        sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
        v43 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v173 = v173[1];
        (v173)(v16, v178);
        v112 = swift_allocObject();
        *(v112 + 16) = v5;
        *&aBlock.tx = sub_100A7158C;
        *&aBlock.ty = v112;
        *&aBlock.a = _NSConcreteStackBlock;
        aBlock.b = *"";
        v45 = &unk_1018931E0;
        goto LABEL_33;
      }

      goto LABEL_110;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v125 = [v5 view];
  if (!v125)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v126 = v125;
  v127 = [v5 view];
  if (!v127)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v128 = v127;
  [v127 frame];
  v130 = v129;
  v132 = v131;

  [*&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  [v126 setFrame:{v130, v132, v133, v134}];

  sub_100A6FED4();
  v135 = objc_opt_self();
  [v135 begin];
  v136 = String._bridgeToObjectiveC()();
  v137 = [objc_opt_self() animationWithKeyPath:v136];

  v138 = objc_allocWithZone(CAMediaTimingFunction);
  v39 = v137;
  LODWORD(v139) = 1045220557;
  LODWORD(v140) = 0.25;
  LODWORD(v141) = 1.0;
  v142 = [v138 initWithControlPoints:v139 :0.0 :v140 :v141];
  [v39 setTimingFunction:v142];

  [v39 setDuration:0.8];
  v143 = Int._bridgeToObjectiveC()().super.super.isa;
  [v39 setFromValue:v143];

  v144 = Double._bridgeToObjectiveC()().super.super.isa;
  [v39 setToValue:v144];

  v145 = [v5 view];
  if (v145)
  {
    v146 = v145;
    v147 = [v145 layer];

    v148 = String._bridgeToObjectiveC()();
    [v147 addAnimation:v39 forKey:v148];

    v149 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&aBlock.tx = sub_100A71584;
    *&aBlock.ty = v149;
    *&aBlock.a = _NSConcreteStackBlock;
    aBlock.b = *"";
    *&aBlock.c = sub_100007638;
    *&aBlock.d = &unk_101893190;
    v150 = _Block_copy(&aBlock);

    [v135 setCompletionBlock:v150];
    _Block_release(v150);
    [v135 commit];
    goto LABEL_80;
  }

LABEL_115:
  __break(1u);
}

void sub_100A6DDEC(char *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [a1 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;

  [*&a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  [v3 setFrame:{v7, v9, v10, v11}];

  sub_100A6FED4();
  v12 = [a1 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  [v12 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [a1 view];
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v22;
  [v22 setFrame:{v15, v17 + 100.0, v19, v21}];

  v24 = [a1 view];
  if (v24)
  {
    v25 = v24;
    [v24 setHidden:0];

    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    *(v26 + 24) = v15;
    *(v26 + 32) = v17;
    *(v26 + 40) = v19;
    *(v26 + 48) = v21;
    v27 = objc_allocWithZone(UIViewPropertyAnimator);
    v38 = sub_100A715B0;
    v39 = v26;
    v34 = _NSConcreteStackBlock;
    v35 = *"";
    v36 = sub_100007638;
    v37 = &unk_1018932D0;
    v28 = _Block_copy(&v34);
    v29 = a1;

    v30 = [v27 initWithDuration:v28 dampingRatio:0.35 animations:0.6];
    _Block_release(v28);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    v38 = sub_100A7168C;
    v39 = v31;
    v34 = _NSConcreteStackBlock;
    v35 = *"";
    v36 = sub_100FB5BB8;
    v37 = &unk_101893320;
    v32 = _Block_copy(&v34);
    v33 = v29;

    [v30 addCompletion:v32];
    _Block_release(v32);
    [v30 startAnimation];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100A6E11C(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setFrame:{a2, a3, a4, a5}];
  }

  else
  {
    __break(1u);
  }
}

void sub_100A6E1A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay;
  v4 = [*(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay) arrangedSubviews];
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  v8 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v8, v7);

  v9 = [*&v2[v3] arrangedSubviews];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v17 = *&CGAffineTransformIdentity.c;
    v18 = *&CGAffineTransformIdentity.a;
    v16 = *&CGAffineTransformIdentity.tx;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v19[0] = v18;
      v19[1] = v17;
      v19[2] = v16;
      [v13 setTransform:v19];

      ++v12;
      if (v15 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:
}

void sub_100A6E3EC(char *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;

      [*&a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      [v3 setFrame:{v7, v9, v10, v11}];

      sub_100A6FED4();
      v12 = swift_allocObject();
      *(v12 + 16) = a1;
      v13 = objc_allocWithZone(UIViewPropertyAnimator);
      v24 = sub_100A71670;
      v25 = v12;
      v20 = _NSConcreteStackBlock;
      v21 = *"";
      v22 = sub_100007638;
      v23 = &unk_101893230;
      v14 = _Block_copy(&v20);
      v15 = a1;

      v16 = [v13 initWithDuration:v14 dampingRatio:0.85 animations:0.6];
      _Block_release(v14);
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      v24 = sub_100A71594;
      v25 = v17;
      v20 = _NSConcreteStackBlock;
      v21 = *"";
      v22 = sub_100FB5BB8;
      v23 = &unk_101893280;
      v18 = _Block_copy(&v20);
      v19 = v15;

      [v16 addCompletion:v18];
      _Block_release(v18);
      [v16 startAnimation];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100A6E658(uint64_t a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay) = 0;
  v2 = [*(a2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay) arrangedSubviews];
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    argument = 0;
    goto LABEL_9;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  argument = v4;
LABEL_9:
  v5 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v5, argument);
}

void sub_100A6E770(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [*(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay) arrangedSubviews];
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v5 = *(v4 + 32);
      }

      v6 = v5;
      goto LABEL_10;
    }

    v6 = 0;
LABEL_10:
    v7 = UIAccessibilityLayoutChangedNotification;

    UIAccessibilityPostNotification(v7, v6);
  }
}

void sub_100A6E8A0(char *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;

      [*&a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      [v3 setFrame:{v7, v9, v10, v11}];

      sub_100A6FED4();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100A6E974(char a1, char a2)
{
  v5 = [v2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_59;
  }

  v6 = v5;
  v7 = [v5 isUserInteractionEnabled];

  v8 = [v2 view];
  if (!v8)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v9 = v8;
  [v8 setUserInteractionEnabled:0];

  v2[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingHide] = 1;
  v10 = [v2 traitCollection];
  v11 = objc_opt_self();
  v12 = &selRef_concreteClass;
  if ([v11 crl_phoneUI])
  {
  }

  else
  {
    v13 = [v10 crl_isCompactWidth];

    if ((v13 & 1) == 0)
    {
      v20 = *&v2[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper];
      if (!v20)
      {
        goto LABEL_16;
      }

      v21 = *&v20[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_reps];

      v17 = v20;
      v22 = sub_100BC17E0(v21);

      v19 = [v22 interactiveCanvasController];

      if (!v19)
      {
        goto LABEL_15;
      }

      [v19 removeDecorator:v17];
      goto LABEL_13;
    }
  }

  v14 = *&v2[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper];
  if (v14)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_reps);
      v17 = v14;
      v18 = sub_100BC17E0(v16);
      v19 = [v18 interactiveCanvasController];
      swift_unknownObjectRelease();

      if (!v19)
      {
        v12 = &selRef_concreteClass;
        goto LABEL_15;
      }

      [v19 removeDecorator:v17];
      v12 = &selRef_concreteClass;
LABEL_13:

LABEL_15:
    }
  }

LABEL_16:
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  v24 = a2 & 1;
  *(v23 + 24) = v24;
  *(v23 + 25) = v7;
  v25 = v2;
  if ((a1 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v30 = [v25 view];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 layer];

      [v32 removeAllAnimations];
      v33 = [v25 traitCollection];
      if ([v11 v12[431]])
      {
      }

      else
      {
        v34 = [v33 crl_isCompactWidth];

        if (!v34)
        {
          v43 = objc_opt_self();
          [v43 begin];
          v129 = sub_100A714D4;
          v130 = v23;
          aBlock = _NSConcreteStackBlock;
          v126 = *"";
          v127 = sub_100007638;
          v128 = &unk_101892EC0;
          v44 = _Block_copy(&aBlock);

          v124 = v43;
          [v43 setCompletionBlock:v44];
          _Block_release(v44);
          v45 = String._bridgeToObjectiveC()();
          v46 = objc_opt_self();
          v47 = [v46 animationWithKeyPath:v45];

          v48 = objc_allocWithZone(CAMediaTimingFunction);
          v49 = v47;
          LODWORD(v50) = 1045220557;
          LODWORD(v51) = 0.25;
          LODWORD(v52) = 1.0;
          v53 = [v48 initWithControlPoints:v50 :0.0 :v51 :v52];
          [v49 setTimingFunction:v53];

          [v49 setDuration:0.15];
          isa = Double._bridgeToObjectiveC()().super.super.isa;
          [v49 setFromValue:isa];

          v55 = Double._bridgeToObjectiveC()().super.super.isa;
          [v49 setToValue:v55];

          v56 = [v25 view];
          if (v56)
          {
            v57 = v56;
            v58 = v25;
            v59 = [v56 layer];

            v60 = String._bridgeToObjectiveC()();
            v61 = v49;
            [v59 addAnimation:v49 forKey:v60];

            v62 = String._bridgeToObjectiveC()();
            v63 = [v46 animationWithKeyPath:v62];

            v64 = objc_allocWithZone(CAMediaTimingFunction);
            v65 = v63;
            LODWORD(v66) = 1045220557;
            LODWORD(v67) = 0.25;
            LODWORD(v68) = 1.0;
            v69 = [v64 initWithControlPoints:v66 :0.0 :v67 :v68];
            [v65 setTimingFunction:v69];

            [v65 setDuration:0.15];
            v70 = [v58 view];
            if (v70)
            {
              v71 = v70;
              [v70 alpha];

              v72 = CGFloat._bridgeToObjectiveC()().super.super.isa;
              [v65 setFromValue:v72];

              v73 = Double._bridgeToObjectiveC()().super.super.isa;
              [v65 setToValue:v73];

              [v65 setFillMode:kCAFillModeForwards];
              [v65 setRemovedOnCompletion:0];

              v74 = [v58 view];
              if (v74)
              {
                v75 = v74;
                v76 = [v74 layer];

                v77 = String._bridgeToObjectiveC()();
                [v76 addAnimation:v65 forKey:v77];

                v78 = [*&v58[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay] arrangedSubviews];
                sub_100006370(0, &qword_1019F6D00, UIView_ptr);
                v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v80 = v61;
                if (v79 >> 62)
                {
                  goto LABEL_55;
                }

                for (i = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
                {
                  v82 = 0;
                  while (1)
                  {
                    if ((v79 & 0xC000000000000001) != 0)
                    {
                      v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v82 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_54;
                      }

                      v83 = *(v79 + 8 * v82 + 32);
                    }

                    v84 = v83;
                    v80 = (v82 + 1);
                    if (__OFADD__(v82, 1))
                    {
                      break;
                    }

                    aBlock = v83;
                    sub_100A6FBD8(&aBlock);

                    ++v82;
                    v85 = v80 == i;
                    v80 = v61;
                    if (v85)
                    {
                      goto LABEL_56;
                    }
                  }

                  __break(1u);
LABEL_54:
                  __break(1u);
LABEL_55:
                  ;
                }

LABEL_56:

                v122 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v129 = sub_100A714E4;
                v130 = v122;
                aBlock = _NSConcreteStackBlock;
                v126 = *"";
                v127 = sub_100007638;
                v128 = &unk_101892F10;
                v123 = _Block_copy(&aBlock);

                [v124 setCompletionBlock:v123];
                _Block_release(v123);
                [v124 commit];

                goto LABEL_57;
              }

LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }
      }

      v35 = objc_opt_self();
      v36 = UINavigationControllerHideShowBarDuration;
      v37 = swift_allocObject();
      *(v37 + 16) = v25;
      v129 = sub_100A71500;
      v130 = v37;
      aBlock = _NSConcreteStackBlock;
      v126 = *"";
      v127 = sub_100007638;
      v128 = &unk_101892F60;
      v38 = _Block_copy(&aBlock);
      v39 = v25;

      v40 = swift_allocObject();
      *(v40 + 16) = sub_100A714D4;
      *(v40 + 24) = v23;
      v129 = sub_10002AAEC;
      v130 = v40;
      aBlock = _NSConcreteStackBlock;
      v126 = *"";
      v41 = &unk_101892FB0;
LABEL_31:
      v127 = sub_1005CC4AC;
      v128 = v41;
      v42 = _Block_copy(&aBlock);

      [v35 animateWithDuration:v38 animations:v42 completion:v36];

      _Block_release(v42);
      _Block_release(v38);
      return;
    }

    goto LABEL_60;
  }

  if (UIAccessibilityIsReduceMotionEnabled() && UIAccessibilityPrefersCrossFadeTransitions())
  {
    v26 = [v25 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 layer];

      [v28 removeAllAnimations];
      v29 = [v25 traitCollection];
      if ([v11 v12[431]])
      {

        goto LABEL_47;
      }

      v86 = [v29 crl_isCompactWidth];

      if (v86)
      {
LABEL_47:
        v87 = [v25 view];
        if (v87)
        {
          v88 = v87;
          [v87 frame];
          v90 = v89;
          v92 = v91;
          v94 = v93;
          v96 = v95;

          v97 = [v25 view];
          if (v97)
          {
            v98 = v97;
            [v97 setFrame:{v90, v92 + 100.0, v94, v96}];

            v35 = objc_opt_self();
            v36 = UINavigationControllerHideShowBarDuration;
            v99 = swift_allocObject();
            *(v99 + 16) = v25;
            v129 = sub_100A71508;
            v130 = v99;
            aBlock = _NSConcreteStackBlock;
            v126 = *"";
            v127 = sub_100007638;
            v128 = &unk_101893050;
            v38 = _Block_copy(&aBlock);
            v100 = v25;

            v101 = swift_allocObject();
            *(v101 + 16) = sub_100A714D4;
            *(v101 + 24) = v23;
            v129 = sub_100A71688;
            v130 = v101;
            aBlock = _NSConcreteStackBlock;
            v126 = *"";
            v41 = &unk_1018930A0;
            goto LABEL_31;
          }

          goto LABEL_66;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v102 = objc_opt_self();
      [v102 begin];
      v129 = sub_100A714D4;
      v130 = v23;
      aBlock = _NSConcreteStackBlock;
      v126 = *"";
      v127 = sub_100007638;
      v128 = &unk_101892FD8;
      v103 = _Block_copy(&aBlock);

      [v102 setCompletionBlock:v103];
      _Block_release(v103);
      v104 = String._bridgeToObjectiveC()();
      v105 = [objc_opt_self() animationWithKeyPath:v104];

      v106 = objc_allocWithZone(CAMediaTimingFunction);
      v107 = v105;
      LODWORD(v108) = 1045220557;
      LODWORD(v109) = 0.25;
      LODWORD(v110) = 1.0;
      v111 = [v106 initWithControlPoints:v108 :0.0 :v109 :v110];
      [v107 setTimingFunction:v111];

      [v107 setDuration:0.8];
      v112 = [v25 view];
      if (!v112)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v113 = v112;
      [v112 alpha];

      v114 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v107 setFromValue:v114];

      v115 = Double._bridgeToObjectiveC()().super.super.isa;
      [v107 setToValue:v115];

      [v107 setFillMode:kCAFillModeForwards];
      [v107 setRemovedOnCompletion:0];

      v116 = [v25 view];
      if (!v116)
      {
LABEL_68:
        __break(1u);
        return;
      }

      v117 = v116;
      v118 = [v116 layer];

      v119 = String._bridgeToObjectiveC()();
      [v118 addAnimation:v107 forKey:v119];

      v120 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v129 = sub_100A71640;
      v130 = v120;
      aBlock = _NSConcreteStackBlock;
      v126 = *"";
      v127 = sub_100007638;
      v128 = &unk_101893000;
      v121 = _Block_copy(&aBlock);

      [v102 setCompletionBlock:v121];
      _Block_release(v121);
      [v102 commit];

LABEL_57:

      return;
    }

    goto LABEL_61;
  }

LABEL_23:
  sub_100A6F9F8(v25, v24, v7);
}

void sub_100A6F9F8(char *a1, char a2, char a3)
{
  [*&a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay] removeFromSuperview];
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 removeFromSuperview];

  [a1 removeFromParentViewController];
  a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingHide] = 0;
  if (a2)
  {
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *&a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep]);
  }

  v8 = [a1 view];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  [v8 setUserInteractionEnabled:a3 & 1];
}

void sub_100A6FB00(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [a1 view];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 setFrame:{v5, v7 + 100.0, v9, v11}];
}

void sub_100A6FBD8(void **a1)
{
  v1 = *a1;
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  v4 = objc_allocWithZone(CAMediaTimingFunction);
  v5 = v3;
  LODWORD(v6) = 1045220557;
  LODWORD(v7) = 0.25;
  LODWORD(v8) = 1.0;
  v9 = [v4 initWithControlPoints:v6 :0.0 :v7 :v8];
  [v5 setTimingFunction:v9];

  [v5 setDuration:0.15];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v5 setFromValue:isa];

  v11 = Double._bridgeToObjectiveC()().super.super.isa;
  [v5 setToValue:v11];

  v12 = [v1 layer];
  v13 = String._bridgeToObjectiveC()();
  [v12 addAnimation:v5 forKey:v13];
}

void sub_100A6FD84(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha:1.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100A6FDE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep));
  }
}

void sub_100A6FED4()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    return;
  }

  v60 = v1;
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 window];

      if (v14)
      {
        [v14 safeAreaInsets];
        v16 = v15;

        v17 = 20.0;
        if (v16 > 20.0)
        {
          v17 = v16;
        }
      }

      else
      {
        v17 = 20.0;
      }

      v18 = [v0 view];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 window];

        if (v20)
        {
          [v20 safeAreaInsets];
          v22 = v21;

          if (v22 > 20.0)
          {
            v23 = v22;
          }

          else
          {
            v23 = 20.0;
          }
        }

        else
        {
          v23 = 20.0;
        }

        v24 = [v0 traitCollection];
        v25 = objc_opt_self();
        if ([v25 crl_phoneUI])
        {
        }

        else
        {
          v26 = [v24 crl_isCompactWidth];

          if (!v26)
          {
            goto LABEL_23;
          }
        }

        if ([v25 crl_phoneUI] && objc_msgSend(objc_opt_self(), "crl_deviceIsLandscape"))
        {
          v27 = [v0 view];
          if (v27)
          {
            v28 = v27;
            [v27 frame];
            v30 = v29;
            v32 = v31;

            v62.origin.x = v5;
            v62.origin.y = v7;
            v62.size.width = v9;
            v62.size.height = v11;
            Height = CGRectGetHeight(v62);
            v63.size.height = v11;
            v34 = Height;
            v63.origin.x = v5;
            v63.origin.y = v7;
            v63.size.width = v9;
            Width = CGRectGetWidth(v63);
            v36 = [v0 view];
            if (v36)
            {
              v37 = v36;
              [v36 setFrame:{Width - v30 - v23, v34 - v32 - v17 + -16.0, v30, v32}];
              goto LABEL_35;
            }

LABEL_47:
            __break(1u);
            return;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_23:
        v38 = [v0 traitCollection];
        if ([v25 crl_phoneUI])
        {
        }

        else
        {
          v39 = [v38 crl_isCompactWidth];

          if (!v39)
          {
LABEL_28:
            v40 = *&v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper];
            if (!v40)
            {
LABEL_36:

              goto LABEL_37;
            }

            v37 = v40;
            sub_10091C3B4();
LABEL_35:

            goto LABEL_36;
          }
        }

        if ([v25 crl_phoneUI] && (objc_msgSend(objc_opt_self(), "crl_deviceIsLandscape") & 1) != 0)
        {
          goto LABEL_28;
        }

        v41 = v11;
        v42 = [v0 view];
        if (v42)
        {
          v43 = v42;
          [v42 frame];
          v45 = v44;
          v47 = v46;
          v49 = v48;

          v64.origin.x = v5;
          v64.origin.y = v7;
          v64.size.width = v9;
          v64.size.height = v41;
          v50 = CGRectGetHeight(v64);
          v51 = [v0 view];
          if (v51)
          {
            v52 = v51;
            [v51 setFrame:{v45, v50 - v49 - v17, v47, v49}];

            v53 = [v0 view];
            if (v53)
            {
              v37 = v53;
              [v3 center];
              v55 = v54;
              v56 = [v0 view];
              if (v56)
              {
                v57 = v56;
                [v56 center];
                v59 = v58;

                [v37 setCenter:{v55, v59}];
                goto LABEL_35;
              }

              goto LABEL_45;
            }

LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_37:
}