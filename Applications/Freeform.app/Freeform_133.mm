char *sub_101007A80(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A045A0, &qword_1014C1B80);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

void sub_101007B74(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v116 = a3;
  v117 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v123 = *(v117 - 8);
  __chkstk_darwin(v117);
  v120 = &v103[-v9];
  v119 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v119);
  v118 = &v103[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v103[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1005B981C(&qword_1019F8790, "2r&");
  v108 = *(v14 - 8);
  v109 = v14;
  __chkstk_darwin(v14);
  v16 = &v103[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v103[-v18];
  v20 = type metadata accessor for CRLWPEditor(0);
  v126[3] = v20;
  v126[4] = &off_101891630;
  v126[0] = a4;
  v107 = a5;
  v21 = *(a5 + 16);
  v22 = a4;
  sub_100A33D9C(a1, a2);
  v24 = v23;
  v26 = v25;
  v27 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v28 = sub_10078CDF0(v24, v26);
  v29 = &v28[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  sub_100A1ED54(*&v28[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], 1uLL, v19);
  v114 = v29;
  v30 = *(v29 + 1);
  v121 = v16;
  sub_100A1ED54(v30, 2uLL, v16);
  sub_100020E58(v126, v20);
  v31 = type metadata accessor for CRLWPTextString();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  v34 = v116;
  *v33 = v116;
  *(v33 + 1) = 0;
  v33[16] = 1;
  v125.receiver = v32;
  v125.super_class = v31;
  v35 = &selRef_ignoreUrl_;
  v36 = v34;
  v37 = objc_msgSendSuper2(&v125, "init");
  v106 = v28;
  sub_100A066F8(v28, v37);

  v115 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v122 = v21;
  v38 = *(v21 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v38)
  {
    v39 = v118;
    (*(*v38 + 896))();
    v40 = v119;
    sub_1005E0A78(v39 + *(v119 + 20), v13);
    sub_1005E0ADC(v39, type metadata accessor for CRLWPShapeItemCRDTData);
    v41 = v123;
    v42 = v120;
    v43 = v117;
    v111 = v123[2];
    v112 = (v123 + 2);
    v111(v120, v13, v117);
    sub_1005E0ADC(v13, type metadata accessor for CRLWPStorageCRDTData);
    v113 = v19;
    v116 = CRAttributedString.index(of:)();
    v45 = v44;
    v47 = v41[1];
    v46 = v41 + 1;
    v110 = v47;
    v47(v42, v43);
    v48 = v46;
    if ((v45 & 1) == 0)
    {
      v69 = v42;
      v68 = v122;
      goto LABEL_6;
    }

    v105 = v13;
    v123 = v46;
    v116 = objc_opt_self();
    v104 = [v116 _atomicIncrementAssertCount];
    v124 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v124, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("replaceCharacters(in:with:using:)", 33, 2);
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingToolsContext.swift", 90, 2);
    v50 = String._bridgeToObjectiveC()();

    v51 = [v50 lastPathComponent];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v52;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v53 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v104;
      v55 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v55;
      v56 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v56;
      *(inited + 72) = v49;
      *(inited + 136) = &type metadata for String;
      v57 = sub_1000053B0();
      *(inited + 112) = v48;
      *(inited + 120) = v43;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v57;
      *(inited + 152) = 53;
      v58 = v124;
      *(inited + 216) = v55;
      *(inited + 224) = v56;
      *(inited + 192) = v58;
      v59 = v49;
      v60 = v58;
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v62 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v62, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v63 = swift_allocObject();
      v63[2] = 8;
      v63[3] = 0;
      v63[4] = 0;
      v63[5] = 0;
      v64 = __VaListBuilder.va_list()();
      StaticString.description.getter("replaceCharacters(in:with:using:)", 33, 2);
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingToolsContext.swift", 90, 2);
      v66 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v67 = String._bridgeToObjectiveC()();

      [v116 handleFailureInFunction:v65 file:v66 lineNumber:53 isFatal:0 format:v67 args:v64];

      v116 = *v114;
      v68 = v122;
      v48 = v123;
      v40 = v119;
      v69 = v120;
      v43 = v117;
      v39 = v118;
      v13 = v105;
      v35 = &selRef_ignoreUrl_;
LABEL_6:
      v70 = *(v68 + v115);
      if (!v70)
      {
        break;
      }

      (*(*v70 + 896))();
      sub_1005E0A78(v39 + *(v40 + 20), v13);
      sub_1005E0ADC(v39, type metadata accessor for CRLWPShapeItemCRDTData);
      v111(v69, v13, v43);
      sub_1005E0ADC(v13, type metadata accessor for CRLWPStorageCRDTData);
      v71 = CRAttributedString.index(of:)();
      v73 = v72;
      v110(v69, v43);
      if (v73)
      {
        v123 = objc_opt_self();
        v74 = [v123 _atomicIncrementAssertCount];
        v124 = [objc_allocWithZone(NSString) v35[165]];
        sub_100604538(_swiftEmptyArrayStorage, &v124, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("replaceCharacters(in:with:using:)", 33, 2);
        v75 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingToolsContext.swift", 90, 2);
        v76 = String._bridgeToObjectiveC()();

        v77 = [v76 lastPathComponent];

        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v81 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v48 = swift_initStackObject();
        v48[1] = xmmword_10146CA70;
        *(v48 + 7) = &type metadata for Int32;
        *(v48 + 8) = &protocol witness table for Int32;
        *(v48 + 8) = v74;
        v82 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v48 + 12) = v82;
        v83 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(v48 + 13) = v83;
        *(v48 + 9) = v75;
        *(v48 + 17) = &type metadata for String;
        v84 = sub_1000053B0();
        *(v48 + 14) = v78;
        *(v48 + 15) = v80;
        *(v48 + 22) = &type metadata for UInt;
        *(v48 + 23) = &protocol witness table for UInt;
        *(v48 + 18) = v84;
        *(v48 + 19) = 54;
        v85 = v124;
        *(v48 + 27) = v82;
        *(v48 + 28) = v83;
        *(v48 + 24) = v85;
        v86 = v75;
        v87 = v85;
        v88 = static os_log_type_t.error.getter();
        sub_100005404(v81, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v48);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v89 = static os_log_type_t.error.getter();
        sub_100005404(v81, &_mh_execute_header, v89, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v90 = swift_allocObject();
        v90[2] = 8;
        v90[3] = 0;
        v90[4] = 0;
        v90[5] = 0;
        v91 = __VaListBuilder.va_list()();
        StaticString.description.getter("replaceCharacters(in:with:using:)", 33, 2);
        v43 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingToolsContext.swift", 90, 2);
        v92 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v93 = String._bridgeToObjectiveC()();

        [v123 handleFailureInFunction:v43 file:v92 lineNumber:54 isFatal:0 format:v93 args:v91];

        v71 = *(v114 + 1);
      }

      v49 = v113;
      if (v71 < v116)
      {
        __break(1u);
      }

      else if (!__OFSUB__(v71, v116))
      {
        sub_100A33D9C(v116, v71 - v116);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v124 = v97;
          *v96 = 136315138;
          v98 = _NSRange.description.getter();
          v100 = sub_101007640(v98, v99, &v124);

          *(v96 + 4) = v100;
          _os_log_impl(&_mh_execute_header, v94, v95, "Changed storage range: %s", v96, 0xCu);
          sub_100005070(v97);
        }

        v101 = v109;
        v102 = *(v108 + 8);
        v102(v121, v109);
        v102(v49, v101);
        sub_100005070(v126);
        return;
      }

      __break(1u);
LABEL_18:
      swift_once();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_101008904(uint64_t a1)
{
  if (qword_1019F22E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static OS_os_log.writingTools;
  Logger.init(_:)();
  v3 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  *&v1[v3] = sub_100BD99C4(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_state] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended] = 0;
  v1[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_shouldNotifyCoordinatorOfChanges] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005C1FC4(_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = _swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_observerSubscriptions] = v4;
  swift_unknownObjectWeakAssign();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CRLWPWritingToolsHandler(0);
  return objc_msgSendSuper2(&v6, "init");
}

void sub_101008A64(uint64_t *__return_ptr a1@<X8>, id a2@<X0>)
{
  v2 = a2;
  if (!a2)
  {
    goto LABEL_22;
  }

  v4 = [a2 selectionModelTranslator];
  if (!v4)
  {

    v2 = 0;
LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  v5 = [v2 editorController];
  if (!v5)
  {

LABEL_8:
    v2 = 0;
    v4 = 0;
    v7 = 0;
    v8 = 0;
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (type metadata accessor for CRLWPEditor(0))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = [v5 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  v10 = swift_dynamicCastClass();
  v7 = v10;
  if (!v10)
  {

    swift_unknownObjectRelease();
    v2 = 0;
    v4 = 0;
LABEL_24:
    v8 = 0;
    goto LABEL_25;
  }

  v11 = [*(v10 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionForEditor:v10];
  if (!v11)
  {
    swift_unknownObjectRelease();

LABEL_21:
    v2 = 0;
LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  v12 = v11;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    swift_unknownObjectRelease();

    v2 = 0;
    v4 = 0;
    v7 = 0;
LABEL_25:
    v5 = 0;
    goto LABEL_26;
  }

  sub_100960E34();
  v14 = v13;
  swift_unknownObjectRetain();

  if (!v14)
  {
    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  type metadata accessor for CRLWPTextSelectionManager();
  v15 = swift_dynamicCastClass();
  v5 = v15;
  if (!v15)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v16 = *(v15 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
  if (v16)
  {
    v17 = v16;
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v2 = 0;
    v4 = 0;
    v7 = 0;
    v8 = 0;
    v5 = 0;
  }

LABEL_27:
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v5;
  a1[5] = v16;
}

uint64_t sub_101008CE4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_101008D2C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v48 = a3;
  v47 = type metadata accessor for UUID();
  v5 = *(v47 - 1);
  __chkstk_darwin(v47);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString();
  __chkstk_darwin(v8 - 8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53[0] = v12;
    *v11 = 136315138;
    v13 = sub_101002A8C(a1);
    v15 = sub_101007640(v13, v14, v53);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "writingToolsCoordinator(contextsFor:) scope: %s", v11, 0xCu);
    sub_100005070(v12);
  }

  sub_101005B24(v53);
  v16 = v53[0];
  if (!v53[0])
  {
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_101465920;
    sub_100006370(0, &qword_1019F76F0, NSAttributedString_ptr);
    AttributedString.init(stringLiteral:)();
    v41 = NSAttributedString.init(_:)();
    v42 = [objc_allocWithZone(UIWritingToolsCoordinatorContext) initWithAttributedString:v41 range:{0, 0}];

    *(v40 + 32) = v42;
    sub_100006370(0, &qword_101A27F80, UIWritingToolsCoordinatorContext_ptr);
    v39.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (v48)[2](v48, v39.super.isa);
LABEL_11:

    return;
  }

  v17 = v53[1];
  v18 = v53[2];
  v19 = v53[3];
  v45 = v53[5];
  v46 = v53[4];
  if (!*(a2 + OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_state))
  {
    v20 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
    swift_beginAccess();
    *(a2 + v20) = _swiftEmptyDictionarySingleton;
  }

  v21 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v22 = *(*(v18 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v22)
  {
    v23 = v22;
    v44 = v19;
    v24 = [v19 range];
    v26 = v25;
    type metadata accessor for CRLWPWritingToolsContext(0);
    swift_allocObject();
    v27 = sub_100CC41C8(v23, v24, v26);

    v28 = [v27[5] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(a2 + v29);
    *(a2 + v29) = 0x8000000000000000;
    sub_100AA1770(v27, v7, isUniquelyReferenced_nonNull_native);
    (*(v5 + 8))(v7, v47);
    *(a2 + v29) = v49;
    swift_endAccess();
    v47 = v18;
    v31 = *(v18 + v21);
    v32 = [v16 changeNotifier];
    if (v32)
    {
      v50 = v32;
      v51 = v31;
      v52 = 256;
      v43 = v16;
      v33 = v17;
      v34 = v32;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = v31;
      sub_1005B981C(&qword_101A27FD0, &unk_1014C1BE0);
      sub_10001A2F8(&qword_101A27FD8, &qword_101A27FD0, &unk_1014C1BE0, protocol conformance descriptor for CRLChangeNotifier.ChangeRecordPublisher<A>);
      Publisher.sink(receiveCompletion:receiveValue:)();

      v17 = v33;
      v16 = v43;

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_101465920;
    v37 = v27[5];
    *(v36 + 32) = v37;
    sub_100006370(0, &qword_101A27F80, UIWritingToolsCoordinatorContext_ptr);
    v38 = v37;
    v39.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (v48)[2](v48, v39.super.isa);

    goto LABEL_11;
  }

  _Block_release(v48);
  __break(1u);
}

void sub_101009374(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v127 = a5;
  v126 = type metadata accessor for UUID();
  v128 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v115 - v17;
  v19 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_logger;
  v124 = a6;
  v20 = a6;
  v21 = a4;
  v22 = a3;
  v121 = v19;
  v23 = Logger.logObject.getter();
  LODWORD(a4) = static os_log_type_t.default.getter();
  v122 = v20;

  v123 = a4;
  v24 = os_log_type_enabled(v23, a4);
  v25 = &selRef_geometryWithMask;
  v118 = a1;
  v119 = a2;
  if (v24)
  {
    v26 = swift_slowAlloc();
    v117 = a7;
    v27 = v26;
    v116 = swift_slowAlloc();
    v129 = v116;
    *v27 = 136316418;
    v28 = _NSRange.description.getter();
    v30 = sub_101007640(v28, v29, &v129);
    v120 = a8;
    v31 = v30;

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v130 = 0xD000000000000029;
    v131 = 0x80000001015B9030;
    v32 = [v22 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_101008CE4(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = v126;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    (*(v128 + 1))(v18, v33);
    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36 = sub_101007640(v130, v131, &v129);

    *(v27 + 14) = v36;
    *(v27 + 22) = 2080;
    v37 = [v21 string];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = sub_101007640(v38, v40, &v129);
    v42 = v120;

    *(v27 + 24) = v41;
    *(v27 + 32) = 2048;
    v43 = [v21 length];

    *(v27 + 34) = v43;
    *(v27 + 42) = 2080;
    v44 = v127;
    v45 = sub_101002E38(v127);
    v47 = sub_101007640(v45, v46, &v129);

    *(v27 + 44) = v47;
    *(v27 + 52) = 2080;
    v130 = v124;
    v48 = v122;
    sub_1005B981C(&qword_101A27FC8, &unk_1014C1BD0);
    v49 = String.init<A>(describing:)();
    v51 = sub_101007640(v49, v50, &v129);
    v25 = &selRef_geometryWithMask;

    *(v27 + 54) = v51;
    _os_log_impl(&_mh_execute_header, v23, v123, "writingToolsCoordinator(replace:) range: %s, context: %s, proposedText: %s, length: %ld, reason: %s, animationParameters: %s", v27, 0x3Eu);
    swift_arrayDestroy();

    a7 = v117;

    v52 = v44;
    v53 = v33;
  }

  else
  {

    v42 = a8;
    v53 = v126;
    v52 = v127;
  }

  v54 = v128;
  v55 = [v22 v25[505]];
  v56 = v125;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  swift_beginAccess();
  v58 = *(a7 + v57);
  if (!*(v58 + 16))
  {
    goto LABEL_21;
  }

  v59 = sub_10003E994(v56);
  if ((v60 & 1) == 0)
  {

LABEL_21:
    (*(v54 + 1))(v56, v53);
LABEL_22:
    (*(v42 + 16))(v42, 0);
    return;
  }

  v61 = v52;
  v62 = v54;
  v63 = *(*(v58 + 56) + 8 * v59);
  v64 = *(v62 + 1);

  v64(v56, v53);

  v65 = *(v63 + 16);
  v66 = sub_101007324(v65);

  if (!v66)
  {

    goto LABEL_22;
  }

  v67 = &qword_101A0C000;
  if (v61 != 1)
  {
LABEL_16:
    v83 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_shouldNotifyCoordinatorOfChanges;
    *(a7 + OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_shouldNotifyCoordinatorOfChanges) = 0;
    v84 = v66;
    sub_101007B74(v118, v119, v21, v84, v63);
    v86 = v85;
    v88 = v87;
    v128 = v84;

    *(a7 + v83) = 1;
    v127 = v63;
    v89 = *(v63 + 16);
    if ((*(v89 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) & 1) == 0)
    {
      sub_100A2A960();
    }

    v90 = [*(v89 + v67[458]) attributedSubstringFromRange:{v86, v88}];
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    v93 = os_log_type_enabled(v91, v92);
    v120 = v42;
    if (v93)
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v129 = v95;
      *v94 = 136315394;
      v96 = [v90 string];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v100 = sub_101007640(v97, v99, &v129);

      *(v94 + 4) = v100;
      *(v94 + 12) = 2048;
      v101 = [v90 length];

      *(v94 + 14) = v101;
      _os_log_impl(&_mh_execute_header, v91, v92, "Replaced text in storage: %s, length: %ld", v94, 0x16u);
      sub_100005070(v95);
    }

    else
    {
    }

    v102 = v127;

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v129 = v106;
      *v105 = 136315138;
      v107 = [*(v102 + 16) debugDescription];
      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = v109;

      v111 = sub_101007640(v108, v110, &v129);

      *(v105 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v103, v104, "Full storage: %s", v105, 0xCu);
      sub_100005070(v106);
    }

    (*(v120 + 16))(v120, v90);

    return;
  }

  v68 = v66;
  v128 = v21;
  v69 = a7;
  v70 = v42;
  v71 = *(v63 + 16);
  if ((*(v71 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) & 1) == 0)
  {
    sub_100A2A960();
  }

  v72 = *(v71 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString);
  v73 = [v128 string];
  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  v77 = [v72 string];
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  if (v74 == v78 && v76 == v80)
  {

    v42 = v70;
  }

  else
  {
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v42 = v70;
    a7 = v69;
    if ((v82 & 1) == 0)
    {

      v21 = v128;
      v67 = &qword_101A0C000;
      v66 = v68;
      goto LABEL_16;
    }
  }

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&_mh_execute_header, v112, v113, "Writing tools tried to replace identical text", v114, 2u);
  }

  (*(v42 + 16))(v42, v128);
}

void sub_101009D68(unint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v94 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v85 - v11;
  v13 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_logger;

  v14 = a2;
  v92 = v13;
  v93 = a3;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v95 = v8;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v98[0] = v91;
    *v18 = 136315394;
    sub_100006370(0, &qword_101A04270, NSValue_ptr);
    v19 = Array.description.getter();
    v21 = a1;
    v22 = a4;
    v23 = v12;
    v24 = v14;
    v25 = sub_101007640(v19, v20, v98);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = sub_101002CA8();
    v28 = sub_101007640(v26, v27, v98);

    *(v18 + 14) = v28;
    v14 = v24;
    v12 = v23;
    a4 = v22;
    a1 = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "writingToolsCoordinator(select:) ranges: %s, context: %s", v18, 0x16u);
    swift_arrayDestroy();

    v8 = v95;
  }

  v29 = a1 >> 62;
  if (a1 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v96 = a4;
  if (v30 == 1)
  {
    goto LABEL_8;
  }

  v88 = a1 >> 62;
  v89 = v12;
  v91 = v14;
  v87 = objc_opt_self();
  LODWORD(v15) = [v87 _atomicIncrementAssertCount];
  v98[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v98, "Unexpected number of ranges received", 36, 2u);
  StaticString.description.getter("writingToolsCoordinator(_:select:in:completion:)", 48, 2);
  v86 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingToolsHandler.swift", 90, 2);
  v31 = String._bridgeToObjectiveC()();

  v32 = [v31 lastPathComponent];

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4 = v33;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v34 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v15;
    v36 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v36;
    v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v15;
    v37 = v86;
    *(inited + 72) = v86;
    *(inited + 136) = &type metadata for String;
    v38 = sub_1000053B0();
    *(inited + 112) = v85;
    *(inited + 120) = a4;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v38;
    *(inited + 152) = 154;
    v39 = v98[0];
    *(inited + 216) = v36;
    *(inited + 224) = v15;
    *(inited + 192) = v39;
    v40 = v37;
    v41 = v39;
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v43, "Unexpected number of ranges received", 36, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v44 = swift_allocObject();
    v44[2] = 8;
    v44[3] = 0;
    v44[4] = 0;
    v44[5] = 0;
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter("writingToolsCoordinator(_:select:in:completion:)", 48, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingToolsHandler.swift", 90, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unexpected number of ranges received", 36, 2);
    LODWORD(v15) = v48;
    v49 = String._bridgeToObjectiveC()();

    [v87 handleFailureInFunction:v46 file:v47 lineNumber:154 isFatal:0 format:v49 args:v45];

    v8 = v95;
    a4 = v96;
    v14 = v91;
    v29 = v88;
    v12 = v89;
LABEL_8:
    if (v29)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_18:
        (*(a4 + 16))(a4);
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v50 = v8;
      v51 = *(a1 + 32);
      goto LABEL_13;
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  v50 = v8;
  v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
  v52 = v51;
  v53 = [v51 rangeValue];
  v55 = v54;

  v56 = &selRef_geometryWithMask;
  v57 = [v14 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  v59 = v93;
  swift_beginAccess();
  v60 = *&v59[v58];
  v61 = v94;
  if (*(v60 + 16))
  {

    v62 = sub_10003E994(v12);
    if (v63)
    {
      v89 = v53;
      v91 = v14;
      v64 = v96;
      v65 = *(*(v60 + 56) + 8 * v62);
      v66 = *(v61 + 8);

      (v66)(v12, v50);

      v67 = *(v65 + 16);
      v68 = sub_101007324(v67);

      if (v68)
      {
        sub_101003020(v68, v89, v55);
        (*(v64 + 16))(v64);

        return;
      }

      v14 = v91;
      v56 = &selRef_geometryWithMask;
      v69 = v66;
      goto LABEL_21;
    }
  }

  v69 = *(v61 + 8);
  (v69)(v12, v50);
LABEL_21:
  v70 = v14;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v93 = v69;
    v74 = v73;
    v75 = swift_slowAlloc();
    v76 = v56;
    v77 = v75;
    v97 = v75;
    *v74 = 136315138;
    v78 = [v70 v76[505]];
    v79 = v90;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_101008CE4(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v81;
    (v93)(v79, v50);
    v83 = sub_101007640(v80, v82, &v97);
    v84 = v96;

    *(v74 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v71, v72, "Missing wp context for identifier: %s", v74, 0xCu);
    sub_100005070(v77);
  }

  else
  {

    v84 = v96;
  }

  (*(v84 + 16))(v84);
}

void sub_10100A6F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = 0;
  v115 = [objc_allocWithZone(CRLWPSelection) initWithRange:{a1, a2}];
  v109 = [a5 selectionPathForRange:a1 onStorage:{a2, a3}];
  v11 = sub_100F22994(v109);
  v12 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  if (v11)
  {
    sub_101002784(v11);
    v14 = v13;

    if (!(*&v14 >> 62))
    {
      goto LABEL_3;
    }

LABEL_99:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_100;
  }

LABEL_98:
  v14 = v12;
  if (*&v12 >> 62)
  {
    goto LABEL_99;
  }

LABEL_3:
  v15 = *((*&v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_100:

    v16 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    v86 = _swiftEmptyArrayStorage[2];
    if (!v86)
    {
      goto LABEL_101;
    }

LABEL_65:
    v87 = 0;
    v88 = _swiftEmptyArrayStorage;
    v126 = (*&v16 + 32);
    v117 = v16;
    v120 = v86;
    while (1)
    {
      if (v87 >= *(*&v16 + 16))
      {
        goto LABEL_103;
      }

      a4 = v126[v87];
      v89 = a4 >> 62;
      v12 = a4 >> 62 ? COERCE_DOUBLE(_CocoaArrayWrapper.endIndex.getter()) : *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v88 >> 62;
      if (v88 >> 62)
      {
        v107 = _CocoaArrayWrapper.endIndex.getter();
        v91 = v107 + *&v12;
        if (__OFADD__(v107, *&v12))
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }
      }

      else
      {
        v90 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v91 = v90 + *&v12;
        if (__OFADD__(v90, *&v12))
        {
          goto LABEL_97;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v10)
      {
        goto LABEL_78;
      }

LABEL_79:
      v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v92 = v129 & 0xFFFFFFFFFFFFFF8;
LABEL_80:
      v131 = *&v12;
      v93 = *(v92 + 16);
      v94 = *(v92 + 24);
      if (v89)
      {
        v96 = v92;
        v97 = _CocoaArrayWrapper.endIndex.getter();
        v92 = v96;
        v95 = v97;
        if (!v97)
        {
LABEL_66:

          if (v131 > 0)
          {
            goto LABEL_104;
          }

          goto LABEL_67;
        }
      }

      else
      {
        v95 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v95)
        {
          goto LABEL_66;
        }
      }

      if (((v94 >> 1) - v93) < v131)
      {
        goto LABEL_108;
      }

      v98 = v92 + 8 * v93 + 32;
      v124 = v92;
      if (v89)
      {
        if (v95 < 1)
        {
          goto LABEL_111;
        }

        sub_10001A2F8(&qword_101A27FB8, &qword_101A27FB0, &unk_1014C7060, &protocol conformance descriptor for [A]);
        for (i = 0; i != v95; ++i)
        {
          sub_1005B981C(&qword_101A27FB0, &unk_1014C7060);
          v101 = sub_100777974(&v132, i, a4);
          v103 = *v102;
          (v101)(&v132, 0);
          *(v98 + 8 * i) = v103;
        }

        v86 = v120;
        v16 = v117;
        v99 = v131;
      }

      else
      {
        sub_100006370(0, &qword_101A02480, off_10182F728);
        v99 = v131;
        swift_arrayInitWithCopy();
      }

      if (v99 > 0)
      {
        v104 = *(v124 + 16);
        v105 = __OFADD__(v104, v99);
        v106 = v104 + v99;
        if (v105)
        {
          goto LABEL_110;
        }

        *(v124 + 16) = v106;
      }

LABEL_67:
      ++v87;
      v88 = v129;
      if (v87 == v86)
      {
        goto LABEL_101;
      }
    }

    if (!v10)
    {
      v92 = v88 & 0xFFFFFFFFFFFFFF8;
      v129 = v88;
      if (v91 <= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }

LABEL_78:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_79;
  }

LABEL_4:
  v134 = v12;
  sub_100776D44(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    return;
  }

  v108 = v10;
  v16 = v134;
  v113 = objc_opt_self();
  v17 = 0;
  v114 = *&v14 & 0xC000000000000001;
  v111 = *&v14 & 0xFFFFFFFFFFFFFF8;
  v110 = *&v14 + 32;
  v112 = v15;
  v118 = a4;
  do
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    if (v114)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v111 + 16))
      {
        goto LABEL_109;
      }

      v19 = *(v110 + 8 * v17);
    }

    v122 = v19;
    isa = [v19 columns];
    if (!isa)
    {
      sub_100006370(0, &unk_1019FFD00, off_10182F9C0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v21 = [v113 selectionRectsforColumns:isa forSelection:v115];

    if (!v21)
    {
      goto LABEL_113;
    }

    sub_100006370(0, &qword_101A04270, NSValue_ptr);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v119 = v18;
      if (!v23)
      {
LABEL_26:

        a = v12;
        goto LABEL_27;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v119 = v18;
      if (!v23)
      {
        goto LABEL_26;
      }
    }

    v132.a = v12;
    sub_100776AA4(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      goto LABEL_105;
    }

    v24 = 0;
    a = v132.a;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      [v26 CGRectValue];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      v132.a = a;
      v37 = *(*&a + 16);
      v36 = *(*&a + 24);
      if (v37 >= v36 >> 1)
      {
        sub_100776AA4((v36 > 1), v37 + 1, 1);
        a = v132.a;
      }

      ++v24;
      *(*&a + 16) = v37 + 1;
      v38 = (*&a + 32 * v37);
      v38[4] = v29;
      v38[5] = v31;
      v38[6] = v33;
      v38[7] = v35;
    }

    while (v23 != v24);

LABEL_27:
    v132.a = v12;
    v39 = *(*&a + 16);
    v40 = v118;
    v41 = &selRef_isEnumeratingForUserSearch;
    if (v39)
    {
      v42 = objc_opt_self();
      v43 = (*&a + 56);
      v123 = v12;
      do
      {
        if ([v42 bezierPathWithRect:{*(v43 - 3), *(v43 - 2), *(v43 - 1), *v43}])
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v132.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v41 = &selRef_isEnumeratingForUserSearch;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v123 = v132.a;
        }

        v43 += 4;
        --v39;
      }

      while (v39);
    }

    else
    {
      v123 = v12;
    }

    v44 = v123;
    if (*&v123 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (!v45)
      {
LABEL_58:

        v75 = v12;
        if (!(*&v12 >> 62))
        {
          goto LABEL_49;
        }

        goto LABEL_59;
      }
    }

    else
    {
      v45 = *((*&v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_58;
      }
    }

    v133 = v12;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v45 < 0)
    {
      goto LABEL_106;
    }

    v116 = v16;
    v46 = 0;
    v47 = *&v123 & 0xC000000000000001;
    v48 = v122;
    v121 = v45;
    do
    {
      if (v47)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v50 = *(*&v44 + 8 * v46 + 32);
      }

      v51 = v50;
      v52 = [v48 v41[343]];
      if (v52)
      {
        v49 = v52;
        [v52 transformInRoot];
        *v127 = *&v132.c;
        v130 = *&v132.a;
        v125 = *&v132.tx;

        *&v132.a = v130;
        *&v132.c = *v127;
        *&v132.tx = v125;
        [v51 transformUsingAffineTransform:&v132];
      }

      else
      {
        v128 = objc_opt_self();
        v53 = [v128 _atomicIncrementAssertCount];
        *&v132.a = [objc_allocWithZone(NSString) init];
        sub_100604538(*&v12, &v132, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("textBezierPaths(for:storage:provider:)", 38, 2);
        v54 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingToolsHandler.swift", 90, 2);
        v55 = String._bridgeToObjectiveC()();

        v56 = [v55 lastPathComponent];

        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v60 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v53;
        v62 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v62;
        v63 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(inited + 104) = v63;
        *(inited + 72) = v54;
        *(inited + 136) = &type metadata for String;
        v64 = sub_1000053B0();
        *(inited + 112) = v57;
        *(inited + 120) = v59;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v64;
        *(inited + 152) = 636;
        v65 = v132.a;
        *(inited + 216) = v62;
        *(inited + 224) = v63;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v65;
        v66 = v54;
        v67 = *&v65;
        v68 = static os_log_type_t.error.getter();
        sub_100005404(v60, &_mh_execute_header, v68, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v69 = static os_log_type_t.error.getter();
        v12 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
        sub_100005404(v60, &_mh_execute_header, v69, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v70 = swift_allocObject();
        v70[2] = 8;
        v70[3] = 0;
        v70[4] = 0;
        v70[5] = 0;
        v71 = __VaListBuilder.va_list()();
        StaticString.description.getter("textBezierPaths(for:storage:provider:)", 38, 2);
        v72 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingToolsHandler.swift", 90, 2);
        v73 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v74 = String._bridgeToObjectiveC()();

        [v128 handleFailureInFunction:v72 file:v73 lineNumber:636 isFatal:0 format:v74 args:v71];

        v41 = &selRef_isEnumeratingForUserSearch;
        v48 = v122;
        v44 = v123;
        v47 = *&v123 & 0xC000000000000001;
        v45 = v121;
      }

      ++v46;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v45 != v46);

    v75 = v133;
    v16 = v116;
    v40 = v118;
    if (!(*&v133 >> 62))
    {
LABEL_49:
      v76 = *((*&v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v76)
      {
        goto LABEL_60;
      }

      goto LABEL_50;
    }

LABEL_59:
    v76 = _CocoaArrayWrapper.endIndex.getter();
    if (!v76)
    {
LABEL_60:

      v83 = v12;
      goto LABEL_61;
    }

LABEL_50:
    v133 = v12;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v76 < 0)
    {
      goto LABEL_107;
    }

    v77 = 0;
    do
    {
      if ((*&v75 & 0xC000000000000001) != 0)
      {
        v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v78 = *(*&v75 + 8 * v77 + 32);
      }

      v79 = v78;
      ++v77;
      v80 = [v40 canvas];
      [v80 viewScale];
      v82 = v81;

      CGAffineTransformMakeScale(&v132, v82, v82);
      [v79 transformUsingAffineTransform:&v132];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v76 != v77);

    v83 = v133;
LABEL_61:
    v134 = v16;
    v85 = *(*&v16 + 16);
    v84 = *(*&v16 + 24);
    if (v85 >= v84 >> 1)
    {
      sub_100776D44((v84 > 1), v85 + 1, 1);
      v16 = v134;
    }

    *(*&v16 + 16) = v85 + 1;
    *(*&v16 + 8 * v85 + 32) = v83;
    v17 = v119;
  }

  while (v119 != v112);

  v86 = *(*&v16 + 16);
  if (v86)
  {
    goto LABEL_65;
  }

LABEL_101:
}

void sub_10100B4BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = 0;
  v132 = [objc_allocWithZone(CRLWPSelection) initWithRange:{a1, a2}];
  v126 = [a5 selectionPathForRange:a1 onStorage:{a2, a3}];
  v11 = sub_100F22994(v126);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    sub_101002784(v11);
    v14 = v13;

    v12 = _swiftEmptyArrayStorage;
    if (!(v14 >> 62))
    {
      goto LABEL_3;
    }

LABEL_106:
    v123 = v12;
    v124 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v123;
    v15 = v124;
    if (v124)
    {
      goto LABEL_4;
    }

    goto LABEL_107;
  }

LABEL_105:
  v14 = v12;
  if (v12 >> 62)
  {
    goto LABEL_106;
  }

LABEL_3:
  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_107:

    v16 = _swiftEmptyArrayStorage;
    v100 = _swiftEmptyArrayStorage[2];
    if (!v100)
    {
      goto LABEL_108;
    }

LABEL_72:
    v101 = 0;
    v102 = _swiftEmptyArrayStorage;
    v144 = v16 + 4;
    v134 = v16;
    v138 = v100;
    while (1)
    {
      if (v101 >= v16[2])
      {
        goto LABEL_110;
      }

      a4 = v144[v101];
      v103 = a4 >> 62;
      v104 = a4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v102 >> 62;
      if (v102 >> 62)
      {
        v122 = _CocoaArrayWrapper.endIndex.getter();
        v106 = v122 + v104;
        if (__OFADD__(v122, v104))
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }
      }

      else
      {
        v105 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v106 = v105 + v104;
        if (__OFADD__(v105, v104))
        {
          goto LABEL_104;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v10)
      {
        goto LABEL_85;
      }

LABEL_86:
      v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v107 = v147 & 0xFFFFFFFFFFFFFF8;
LABEL_87:
      v149 = v104;
      v108 = *(v107 + 16);
      v109 = *(v107 + 24);
      if (v103)
      {
        v111 = v107;
        v112 = _CocoaArrayWrapper.endIndex.getter();
        v107 = v111;
        v110 = v112;
        if (!v112)
        {
LABEL_73:

          if (v149 > 0)
          {
            goto LABEL_111;
          }

          goto LABEL_74;
        }
      }

      else
      {
        v110 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v110)
        {
          goto LABEL_73;
        }
      }

      if (((v109 >> 1) - v108) < v149)
      {
        goto LABEL_115;
      }

      v113 = v107 + 8 * v108 + 32;
      v142 = v107;
      if (v103)
      {
        if (v110 < 1)
        {
          goto LABEL_118;
        }

        sub_10001A2F8(&qword_101A27FB8, &qword_101A27FB0, &unk_1014C7060, &protocol conformance descriptor for [A]);
        for (i = 0; i != v110; ++i)
        {
          sub_1005B981C(&qword_101A27FB0, &unk_1014C7060);
          v116 = sub_100777974(&v150, i, a4);
          v118 = *v117;
          (v116)(&v150, 0);
          *(v113 + 8 * i) = v118;
        }

        v100 = v138;
        v16 = v134;
        v114 = v149;
      }

      else
      {
        sub_100006370(0, &qword_101A02480, off_10182F728);
        v114 = v149;
        swift_arrayInitWithCopy();
      }

      if (v114 > 0)
      {
        v12 = v142;
        v119 = v142[2];
        v120 = __OFADD__(v119, v114);
        v121 = v119 + v114;
        if (v120)
        {
          goto LABEL_117;
        }

        v142[2] = v121;
      }

LABEL_74:
      ++v101;
      v102 = v147;
      if (v101 == v100)
      {
        goto LABEL_108;
      }
    }

    if (!v10)
    {
      v107 = v102 & 0xFFFFFFFFFFFFFF8;
      v147 = v102;
      if (v106 <= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

LABEL_85:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_86;
  }

LABEL_4:
  v152 = v12;
  sub_100776D44(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    return;
  }

  v125 = v10;
  v16 = v152;
  v130 = objc_opt_self();
  v17 = 0;
  v131 = v14 & 0xC000000000000001;
  v128 = v14 & 0xFFFFFFFFFFFFFF8;
  v127 = v14 + 32;
  v129 = v15;
  v135 = a4;
  do
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
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
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (v131)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v128 + 16))
      {
        goto LABEL_116;
      }

      v19 = *(v127 + 8 * v17);
    }

    v141 = v19;
    isa = [v19 columns];
    if (!isa)
    {
      sub_100006370(0, &unk_1019FFD00, off_10182F9C0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v21 = [v130 selectionRectsforColumns:isa forSelection:v132];

    if (!v21)
    {
      goto LABEL_120;
    }

    sub_100006370(0, &qword_101A04270, NSValue_ptr);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v136 = v18;
    if (v23)
    {
      *&v150.a = _swiftEmptyArrayStorage;
      sub_100776AA4(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        goto LABEL_112;
      }

      v24 = 0;
      a = v150.a;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(v22 + 8 * v24 + 32);
        }

        v27 = v26;
        [v26 CGRectValue];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v150.a = a;
        v37 = *(*&a + 16);
        v36 = *(*&a + 24);
        if (v37 >= v36 >> 1)
        {
          sub_100776AA4((v36 > 1), v37 + 1, 1);
          a = v150.a;
        }

        ++v24;
        *(*&a + 16) = v37 + 1;
        v38 = (*&a + 32 * v37);
        v38[4] = v29;
        v38[5] = v31;
        v38[6] = v33;
        v38[7] = v35;
      }

      while (v23 != v24);
    }

    else
    {

      a = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    }

    v39 = *(*&a + 16);
    if (v39)
    {
      *&v150.a = _swiftEmptyArrayStorage;
      sub_100776AA4(0, v39, 0);
      v40 = v150.a;
      v41 = (*&a + 56);
      do
      {
        v42 = *(v41 - 3);
        v43 = *(v41 - 2);
        v44 = *(v41 - 1);
        v45 = *v41;
        v153.origin.x = v42;
        v153.origin.y = v43;
        v153.size.width = v44;
        v153.size.height = *v41;
        MinX = CGRectGetMinX(v153);
        v154.origin.x = v42;
        v154.origin.y = v43;
        v154.size.width = v44;
        v154.size.height = v45;
        MaxY = CGRectGetMaxY(v154);
        v155.origin.x = v42;
        v155.origin.y = v43;
        v155.size.width = v44;
        v155.size.height = v45;
        Width = CGRectGetWidth(v155);
        v150.a = v40;
        v50 = *(*&v40 + 16);
        v49 = *(*&v40 + 24);
        if (v50 >= v49 >> 1)
        {
          v52 = Width;
          sub_100776AA4((v49 > 1), v50 + 1, 1);
          Width = v52;
          v40 = v150.a;
        }

        *(*&v40 + 16) = v50 + 1;
        v51 = *&v40 + 32 * v50;
        *(v51 + 32) = MinX;
        *(v51 + 40) = MaxY;
        *(v51 + 48) = Width;
        *(v51 + 56) = 0x4000000000000000;
        v41 += 4;
        --v39;
      }

      while (v39);

      v53 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    }

    else
    {

      v53 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
      v40 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    }

    *&v150.a = _swiftEmptyArrayStorage;
    v54 = *(*&v40 + 16);
    if (v54)
    {
      v55 = objc_opt_self();
      v56 = (*&v40 + 56);
      do
      {
        if ([v55 bezierPathWithRect:{*(v56 - 3), *(v56 - 2), *(v56 - 1), *v56}])
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v150.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v150.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v53 = v150.a;
        }

        v56 += 4;
        --v54;
      }

      while (v54);
    }

    if (*&v53 >> 62)
    {
      v57 = _CocoaArrayWrapper.endIndex.getter();
      v58 = v135;
      v59 = &selRef_isEnumeratingForUserSearch;
      if (!v57)
      {
LABEL_65:

        v90 = _swiftEmptyArrayStorage;
        v89 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_55;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v57 = *((*&v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v58 = v135;
      v59 = &selRef_isEnumeratingForUserSearch;
      if (!v57)
      {
        goto LABEL_65;
      }
    }

    v151 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v57 < 0)
    {
      goto LABEL_113;
    }

    v133 = v16;
    v60 = 0;
    v61 = *&v53 & 0xC000000000000001;
    v62 = v141;
    v139 = v57;
    v140 = v53;
    v137 = *&v53 & 0xC000000000000001;
    do
    {
      if (v61)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v64 = *(*&v53 + 8 * v60 + 32);
      }

      v65 = v64;
      v66 = [v62 v59[343]];
      if (v66)
      {
        v63 = v66;
        [v66 transformInRoot];
        *v145 = *&v150.c;
        v148 = *&v150.a;
        v143 = *&v150.tx;

        *&v150.a = v148;
        *&v150.c = *v145;
        *&v150.tx = v143;
        [v65 transformUsingAffineTransform:&v150];
      }

      else
      {
        v146 = objc_opt_self();
        v67 = [v146 _atomicIncrementAssertCount];
        *&v150.a = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v150, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("underlineBezierPaths(for:storage:provider:)", 43, 2);
        v68 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingToolsHandler.swift", 90, 2);
        v69 = String._bridgeToObjectiveC()();

        v70 = [v69 lastPathComponent];

        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v74 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v67;
        v76 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v76;
        v77 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(inited + 104) = v77;
        *(inited + 72) = v68;
        *(inited + 136) = &type metadata for String;
        v78 = sub_1000053B0();
        *(inited + 112) = v71;
        *(inited + 120) = v73;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v78;
        *(inited + 152) = 678;
        v79 = v150.a;
        *(inited + 216) = v76;
        *(inited + 224) = v77;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v79;
        v80 = v68;
        v81 = *&v79;
        v82 = static os_log_type_t.error.getter();
        sub_100005404(v74, &_mh_execute_header, v82, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v83 = static os_log_type_t.error.getter();
        sub_100005404(v74, &_mh_execute_header, v83, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v84 = swift_allocObject();
        v84[2] = 8;
        v84[3] = 0;
        v84[4] = 0;
        v84[5] = 0;
        v85 = __VaListBuilder.va_list()();
        StaticString.description.getter("underlineBezierPaths(for:storage:provider:)", 43, 2);
        v86 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPWritingToolsHandler.swift", 90, 2);
        v87 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v88 = String._bridgeToObjectiveC()();

        [v146 handleFailureInFunction:v86 file:v87 lineNumber:678 isFatal:0 format:v88 args:v85];

        v59 = &selRef_isEnumeratingForUserSearch;
        v53 = v140;
        v62 = v141;
        v61 = v137;
        v57 = v139;
      }

      ++v60;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v57 != v60);

    v89 = v151;
    v16 = v133;
    v58 = v135;
    v90 = _swiftEmptyArrayStorage;
    if (!(v151 >> 62))
    {
LABEL_55:
      v91 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v91)
      {
        goto LABEL_67;
      }

      goto LABEL_56;
    }

LABEL_66:
    v91 = _CocoaArrayWrapper.endIndex.getter();
    if (!v91)
    {
LABEL_67:

      goto LABEL_68;
    }

LABEL_56:
    v151 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v91 < 0)
    {
      goto LABEL_114;
    }

    v92 = 0;
    do
    {
      if ((v89 & 0xC000000000000001) != 0)
      {
        v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v93 = *(v89 + 8 * v92 + 32);
      }

      v94 = v93;
      ++v92;
      v95 = [v58 canvas];
      [v95 viewScale];
      v97 = v96;

      CGAffineTransformMakeScale(&v150, v97, v97);
      [v94 transformUsingAffineTransform:&v150];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v91 != v92);

    v90 = v151;
LABEL_68:
    v152 = v16;
    v99 = v16[2];
    v98 = v16[3];
    if (v99 >= v98 >> 1)
    {
      sub_100776D44((v98 > 1), v99 + 1, 1);
      v16 = v152;
    }

    v16[2] = v99 + 1;
    v16[v99 + 4] = v90;
    v17 = v136;
  }

  while (v136 != v129);

  v100 = v16[2];
  if (v100)
  {
    goto LABEL_72;
  }

LABEL_108:
}

void sub_10100C3C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t (*a7)(uint64_t, uint64_t, id, void *, void *), const char *a8)
{
  v53 = a8;
  v57 = a7;
  v59 = a6;
  v61 = a5;
  v12 = type metadata accessor for UUID();
  v60 = *(v12 - 1);
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_logger;
  v16 = a3;
  v54 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v55 = a1;
  v56 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v58 = v12;
    v21 = v20;
    v63[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = _NSRange.description.getter();
    v24 = sub_101007640(v22, v23, v63);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = sub_101002CA8();
    v27 = sub_101007640(v25, v26, v63);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, v59, v21, 0x16u);
    swift_arrayDestroy();

    v12 = v58;
  }

  sub_101005268(v16, v63);
  v28 = v63[0];
  if (!v63[0])
  {
    goto LABEL_11;
  }

  v29 = v63[1];
  v30 = v63[4];
  v58 = v63[3];
  v59 = v63[2];
  v31 = v63[5];
  v32 = [v16 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  swift_beginAccess();
  v34 = *(a4 + v33);
  if (!*(v34 + 16))
  {
LABEL_10:

    (*(v60 + 8))(v14, v12);
LABEL_11:
    sub_100006370(0, &qword_101A27FC0, UIBezierPath_ptr);
    v50.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (*(v61 + 16))(v61, v50.super.isa);
    goto LABEL_12;
  }

  v35 = sub_10003E994(v14);
  if ((v36 & 1) == 0)
  {

    goto LABEL_10;
  }

  v52 = v31;
  v37 = *(*(v34 + 56) + 8 * v35);
  v38 = *(v60 + 8);

  v38(v14, v12);

  v60 = v37;
  v39 = *(v37 + 16);
  v40 = v57(v55, v56, v39, v28, v29);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v57 = v30;
    v45 = v44;
    v62 = v44;
    *v43 = 136315138;
    sub_100006370(0, &qword_101A02480, off_10182F728);
    v46 = Array.description.getter();
    v48 = sub_101007640(v46, v47, &v62);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, v53, v43, 0xCu);
    sub_100005070(v45);
    v30 = v57;
  }

  v49 = v52;
  sub_101003330(v40);

  sub_100006370(0, &qword_101A27FC0, UIBezierPath_ptr);
  v50.super.isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v61 + 16))(v61, v50.super.isa);

LABEL_12:
}

void sub_10100C8C8(uint64_t a1, NSUInteger a2, NSUInteger a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v41 = *(v12 - 8);
  v42 = v12;
  __chkstk_darwin(v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a4;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v39 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v40 = a3;
    v20 = v19;
    v38 = swift_slowAlloc();
    v43[0] = v38;
    *v20 = 136315650;
    v21 = sub_101003708(a1);
    v23 = sub_101007640(v21, v22, v43);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v24 = _NSRange.description.getter();
    v26 = sub_101007640(v24, v25, v43);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v27 = sub_101002CA8();
    v29 = sub_101007640(v27, v28, v43);

    *(v20 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "writingToolsCoordinator(prepareForTextAnimation:) animation: %s, range: %s, in: %s", v20, 0x20u);
    swift_arrayDestroy();

    a3 = v40;
  }

  v30 = [v15 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  swift_beginAccess();
  v32 = *(a5 + v31);
  if (*(v32 + 16))
  {

    v33 = sub_10003E994(v14);
    if (v34)
    {
      v35 = *(*(v32 + 56) + 8 * v33);
      v36 = *(v41 + 8);

      v36(v14, v42);

      v37 = *(v35 + 16);
      sub_10100625C(v37, v39, a3);

      (*(a6 + 16))(a6);

      return;
    }
  }

  (*(v41 + 8))(v14, v42);
}

void sub_10100CBE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v39 = a3;
  v10 = type metadata accessor for UUID();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = a6;
    v17 = v16;
    v42[0] = swift_slowAlloc();
    *v17 = 136315650;
    v18 = sub_101003708(a1);
    v20 = sub_101007640(v18, v19, v42);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = _NSRange.description.getter();
    v23 = sub_101007640(v21, v22, v42);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    v24 = sub_101002CA8();
    v26 = sub_101007640(v24, v25, v42);

    *(v17 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "writingToolsCoordinator(finishTextAnimation:) animation: %s, range: %s, in: %s", v17, 0x20u);
    swift_arrayDestroy();

    a6 = v38;
  }

  v27 = [v13 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  swift_beginAccess();
  v29 = *(a5 + v28);
  if (*(v29 + 16))
  {

    v30 = sub_10003E994(v12);
    if (v31)
    {
      v32 = *(*(v29 + 56) + 8 * v30);
      v33 = *(v40 + 8);

      v33(v12, v41);

      v34 = *(v32 + 16);
      v35 = [v34 range];
      sub_101006584(v34, v35, v36);

      (*(a6 + 16))(a6);

      return;
    }
  }

  (*(v40 + 8))(v12, v41);
}

id sub_10100CF0C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = [*(a5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v10 = sub_100F22994(v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_100BC17E0(v10);

  if (!v11)
  {
    return 0;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12 || (v13 = v12, (v14 = [objc_allocWithZone(CRLWPSelection) initWithRange:{a2, a3}]) == 0))
  {

    return 0;
  }

  v15 = v14;
  [a4 visibleUnscaledRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v13 frameInUnscaledCanvas];
  v51.origin.x = v24;
  v51.origin.y = v25;
  v51.size.width = v26;
  v51.size.height = v27;
  v50.origin.x = v17;
  v50.origin.y = v19;
  v50.size.width = v21;
  v50.size.height = v23;
  if (!CGRectIntersectsRect(v50, v51))
  {

    return 0;
  }

  v28 = [a4 renderingOverrideController];
  v29 = [v28 overrideWithKey:@"CRLWPRenderingOverrideAttributeHiddenText" forStorage:a1];

  v48 = v29;
  if (v29)
  {
    sub_101006584(a1, a2, a3);
  }

  [a4 layoutIfNeeded];
  v30 = v11;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v47 = v30;

  if (os_log_type_enabled(v31, v32))
  {
    buf = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v49[0] = v46;
    *buf = 136315138;
    v44 = v32;
    v33 = [v13 debugDescription];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    log = v31;
    v35 = v34;

    v36 = sub_101007640(v42, v35, v49);

    *(buf + 4) = v36;
    _os_log_impl(&_mh_execute_header, log, v44, "Text rep: %s", buf, 0xCu);
    sub_100005070(v46);
  }

  else
  {
  }

  size = CGRectNull.size;
  v49[0] = CGRectNull.origin;
  v49[1] = size;
  LOBYTE(v41) = 0;
  v39 = [v13 textImageForSelection:v15 frame:v49 usingGlyphRect:1 shouldPulsate:0 suppressInvisibles:1 suppressChildReps:0 drawBackground:0.0 inset:v41];
  if (v48)
  {
    v40 = [a4 renderingOverrideController];
    [v40 addOverride:v48 forStorage:a1];

    sub_101006C80(a2, a3, a1);
  }

  return v39;
}

void sub_10100D2FC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v98 = a6;
  v11 = type metadata accessor for UUID();
  v95 = *(v11 - 1);
  v96 = v11;
  __chkstk_darwin(v11);
  v94 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_logger;
  v14 = a4;
  v99 = a5;
  v97 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v92 = a2;
  v93 = a3;
  v91 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v101[0] = swift_slowAlloc();
    *v18 = 136315650;
    v19 = sub_101003708(a1);
    v21 = sub_101007640(v19, v20, v101);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = _NSRange.description.getter();
    v24 = sub_101007640(v22, v23, v101);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = sub_101002CA8();
    v27 = sub_101007640(v25, v26, v101);

    *(v18 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "writingToolsCoordinator(previewForTextAnimation:) animation: %s range: %s, in: %s", v18, 0x20u);
    swift_arrayDestroy();
  }

  v28 = v99;
  sub_101005268(v14, v101);
  if (!v101[0])
  {
    goto LABEL_17;
  }

  v90 = v101[0];
  v30 = v101[1];
  v29 = v101[2];
  v32 = v101[3];
  v31 = v101[4];
  v33 = v101[5];
  v34 = [v14 identifier];
  v35 = v94;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  swift_beginAccess();
  v37 = *(v28 + v36);
  if (!*(v37 + 16))
  {

LABEL_16:
    (v95)[1](v35, v96);
    goto LABEL_17;
  }

  v89 = v30;

  v38 = sub_10003E994(v35);
  if ((v39 & 1) == 0)
  {

    goto LABEL_16;
  }

  v87 = v33;
  v88 = v32;
  v40 = *(*(v37 + 56) + 8 * v38);
  v41 = v95[1];

  v41(v35, v96);

  v42 = v90;
  v43 = [v90 canvasView];
  if (v43)
  {
    v95 = v43;
    v96 = v29;
    v44 = [*(v40 + 16) range];
    v47 = v92;
    v46 = v93;
    if (v44 <= v92 && v44 + v45 >= v93 + v92)
    {
      v74 = *(v40 + 16);
      v75 = v96;
      v76 = sub_10100CF0C(v74, v47, v46, v42, v96);
      v77 = v87;
      if (v76)
      {
        v78 = v76;
        v79 = v47;
        v80 = v89;
        sub_10100A6F4(v79, v46, v74, v42, v89);
        v97 = v74;
        v81 = v95;
        v83 = sub_101003960(v78, v82, v95);

        (*(v98 + 16))(v98, v83);
      }

      else
      {
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "Unable to capture image from text rep.", v86, 2u);
        }

        (*(v98 + 16))(v98, 0);
      }
    }

    else
    {

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      v51 = os_log_type_enabled(v49, v50);
      v52 = v87;
      if (v51)
      {
        v53 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *v53 = 136315394;
        v54 = _NSRange.description.getter();
        v56 = sub_101007640(v54, v55, &v100);

        *(v53 + 4) = v56;
        *(v53 + 12) = 2080;
        [*(v40 + 16) range];
        v57 = _NSRange.description.getter();
        v59 = sub_101007640(v57, v58, &v100);

        *(v53 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v49, v50, "Writing tools requested preview for an illegal range: %s for storage range: %s", v53, 0x16u);
        swift_arrayDestroy();
      }

      v60 = v88;
      (*(v98 + 16))(v98, 0);
    }

    return;
  }

LABEL_17:
  v61 = v14;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v64 = 136315650;
    v65 = sub_101003708(v91);
    v67 = sub_101007640(v65, v66, &v100);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    v68 = _NSRange.description.getter();
    v70 = sub_101007640(v68, v69, &v100);

    *(v64 + 14) = v70;
    *(v64 + 22) = 2080;
    v71 = sub_101002CA8();
    v73 = sub_101007640(v71, v72, &v100);

    *(v64 + 24) = v73;
    _os_log_impl(&_mh_execute_header, v62, v63, "Unable to proview preview for animation: %s range: %s context: %s", v64, 0x20u);
    swift_arrayDestroy();
  }

  (*(v98 + 16))(v98, 0);
}

double sub_10100DB54(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "restoreViews()", v3, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0x190))();
  }

  swift_unknownObjectWeakAssign();
  return result;
}

void sub_10100DC64(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v8 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v8 - 8);
  v10 = v65 - v9;
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = &selRef_shouldQueueBeginScribbleMode;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v66 = v10;
    v67 = a4;
    v70[0] = v16;
    *v15 = 136315394;
    v17 = sub_101003EF0(a2);
    v19 = sub_101007640(v17, v18, v70);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_101003EF0([v11 state]);
    v22 = sub_101007640(v20, v21, v70);
    v14 = &selRef_shouldQueueBeginScribbleMode;

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "writingToolsCoordinator(willChangeTo:) state: %s from: %s", v15, 0x16u);
    swift_arrayDestroy();
    v10 = v66;
    a4 = v67;
  }

  v23 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_state;
  *&a3[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_state] = a2;
  if (a2)
  {
    if (![v11 v14[244]])
    {
      sub_10100607C(v11);
    }

    v24 = *&a3[v23];
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v45 = 0;
      }

      else
      {
        if (v24 != 3)
        {
          goto LABEL_21;
        }

        if ((a3[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended] & 1) == 0)
        {
          a3[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended] = 1;
          v41 = type metadata accessor for TaskPriority();
          (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
          type metadata accessor for MainActor();
          v42 = a3;
          v43 = static MainActor.shared.getter();
          v44 = swift_allocObject();
          v44[2] = v43;
          v44[3] = &protocol witness table for MainActor;
          v44[4] = v42;
          sub_100641C1C(0, 0, v10, &unk_1014C1BA8, v44);
        }

        v45 = 1;
      }

      sub_101005C20(v45);
LABEL_42:
      (*(a4 + 16))(a4);
      return;
    }

    if (v24)
    {
      if (v24 == 1)
      {
        if ((a3[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended] & 1) == 0)
        {
          a3[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended] = 1;
          v25 = type metadata accessor for TaskPriority();
          (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
          type metadata accessor for MainActor();
          v26 = a3;
          v27 = static MainActor.shared.getter();
          v28 = swift_allocObject();
          v28[2] = v27;
          v28[3] = &protocol witness table for MainActor;
          v28[4] = v26;
          sub_100641C1C(0, 0, v10, &unk_1014C1BB0, v28);
        }

        goto LABEL_42;
      }

LABEL_21:
      v46 = a3;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v70[0] = v50;
        *v49 = 136315138;
        v51 = sub_101003EF0(*&a3[v23]);
        v53 = sub_101007640(v51, v52, v70);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "Unknown state: %s", v49, 0xCu);
        sub_100005070(v50);
      }

      goto LABEL_42;
    }
  }

  if (![v11 v14[244]])
  {
    goto LABEL_42;
  }

  sub_101006784();
  if (a3[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended])
  {
    a3[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended] = 0;
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    type metadata accessor for MainActor();
    v30 = a3;
    v31 = static MainActor.shared.getter();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = &protocol witness table for MainActor;
    v32[4] = v30;
    sub_100641C1C(0, 0, v10, &unk_1014C1BC0, v32);
  }

  sub_101005C20(0);
  sub_10100DB54(v33);
  v34 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_observerSubscriptions;
  swift_beginAccess();
  v66 = v34;
  v67 = a4;
  v35 = *&a3[v34];
  if ((v35 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_101008CE4(&qword_1019FB8C0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    Set.Iterator.init(_cocoa:)();
    v37 = v70[0];
    v36 = v70[1];
    v38 = v70[2];
    v39 = v70[3];
    v40 = v70[4];
  }

  else
  {
    v54 = -1 << *(v35 + 32);
    v36 = v35 + 56;
    v38 = ~v54;
    v55 = -v54;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v40 = v56 & *(v35 + 56);
    swift_bridgeObjectRetain_n();
    v39 = 0;
    v37 = v35;
  }

  v65[1] = v38;
  v57 = (v38 + 64) >> 6;
  if (v37 < 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v58 = v39;
    v59 = v40;
    v60 = v39;
    if (!v40)
    {
      break;
    }

LABEL_35:
    v61 = (v59 - 1) & v59;
    v62 = *(*(v37 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v59)))));

    if (!v62)
    {
LABEL_41:
      sub_100035F90(v37);

      *&a3[v66] = _swiftEmptySetSingleton;

      v64 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
      swift_beginAccess();
      *&a3[v64] = _swiftEmptyDictionarySingleton;

      a4 = v67;
      goto LABEL_42;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v39 = v60;
      v40 = v61;
      if ((v37 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_37:
      v63 = __CocoaSet.Iterator.next()();
      if (v63)
      {
        v68 = v63;
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v60 = v39;
        v61 = v40;
        if (v69)
        {
          continue;
        }
      }

      goto LABEL_41;
    }
  }

  while (1)
  {
    v60 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v60 >= v57)
    {
      goto LABEL_41;
    }

    v59 = *(v36 + 8 * v60);
    ++v58;
    if (v59)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
}

uint64_t sub_10100E440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_101005D74(a1, v4, v5, v6);
}

uint64_t sub_10100E4F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_101005EF8(a1, v4, v5, v6);
}

void sub_10100E5B0(uint64_t a1)
{
  if (qword_1019F20C8 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlStatusHUD;
  v3 = static os_log_type_t.debug.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "CRLBaseHUDControllerProtocol_mi setupView", 41, 2, _swiftEmptyArrayStorage);
  v4 = [v1 contentView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [v1 hudView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [v1 containerView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10100E82C(v7);
  sub_10100E9D0(v8);
  sub_10100EB00(v9);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v10 = [v1 hudView];
    v11 = [v10 layer];

    [v11 setCornerRadius:20.0];
  }

  if ([v1 swipable])
  {
    v12 = [v1 swipeGestureRecognizer];
    if (!v12)
    {
      v13 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v1 action:"swipedWithSender:"];
      [v1 setSwipeGestureRecognizer:v13];
      v12 = v13;
    }

    v14 = [v1 containerView];
    v15 = [v1 swipeGestureRecognizer];
    if (v15)
    {
      v16 = v15;
      [v14 addGestureRecognizer:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10100E82C(uint64_t a1)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = [objc_opt_self() crl_popoverVibrantBackgroundEffect];
    v3 = [v1 contentView];
    v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];
    [v3 addSubview:v4];

    v5 = [v1 hudView];
    if (_UISolariumEnabled())
    {
      v6 = 0;
    }

    else
    {
      v6 = [objc_opt_self() systemBackgroundColor];
    }

    [v5 setBackgroundColor:v6];

    v7 = [v1 containerView];
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor:v8];
  }
}

void sub_10100E9D0(uint64_t a1)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = [v1 hudView];
    v6 = [v2 layer];

    if ((_UISolariumEnabled() & 1) != 0 || (v3 = [objc_opt_self() secondaryLabelColor], v4 = objc_msgSend(v3, "colorWithAlphaComponent:", 0.07), v3, !v4))
    {
      v5 = 0;
    }

    else
    {
      v5 = [v4 CGColor];
    }

    [v6 setBorderColor:v5];

    [v6 setBorderWidth:1.0];
  }
}

void sub_10100EB00(uint64_t a1)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = [v1 hudView];
    v8 = [v2 layer];

    v3 = [objc_opt_self() blackColor];
    v4 = [v3 CGColor];

    [v8 setShadowColor:v4];
    [v8 setShadowRadius:5.0];
    v5 = [v1 hudView];
    v6 = [v5 traitCollection];

    LODWORD(v5) = [v6 crl_isUserInterfaceStyleLight];
    LODWORD(v7) = 1047569367;
    if (v5)
    {
      *&v7 = 0.15;
    }

    [v8 setShadowOpacity:v7];
    [v8 setShadowOffset:{0.0, 0.01}];
  }
}

uint64_t sub_10100EC98(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for CRLBoardEntity(0);
    return a2;
  }

  return result;
}

void sub_10100ED2C(uint64_t a1)
{
  v28 = type metadata accessor for UUID();
  __chkstk_darwin(v28);
  v31 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v22 - v4;
  __chkstk_darwin(v5);
  v27 = &v22 - v7;
  v8 = *(a1 + 56);
  v24 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v8;
  v23 = (v9 + 63) >> 6;
  v30 = v6;
  v25 = v6 + 8;
  v26 = v6 + 16;
  v32 = a1;

  v12 = 0;
  v13 = v28;
  while (v11)
  {
    v14 = v12;
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v30;
    v17 = *(v30 + 16);
    v18 = v27;
    v17(v27, *(v32 + 48) + *(v30 + 72) * (v15 | (v14 << 6)), v13);
    v19 = v31;
    v17(v31, v18, v13);
    v20 = v29;
    sub_100E6AF38(v29, v19);
    v21 = *(v16 + 8);
    v21(v20, v13);
    v21(v18, v13);
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v23)
    {

      return;
    }

    v11 = *(v24 + 8 * v14);
    ++v12;
    if (v11)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10100EF9C(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_101A28650, &unk_101477C40);
  sub_10001A2F8(&unk_101A09E10, &unk_101A28650, &unk_101477C40, &protocol conformance descriptor for CROrderedSet<A>);
  dispatch thunk of Collection._customIndexOfEquatableElement(_:)();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = dispatch thunk of Collection.subscript.read();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_100006760(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LOBYTE(v8) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_10100F218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for UUID() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_100006760(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_10100F338(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    a3(0);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_10100F44C(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    sub_100006370(0, a3, a4);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10100F56C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_167;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = (a1 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task);
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (j = 0; ; ++j)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (static OSSignpostID.== infix(_:_:)())
        {
          v8 = *(v7 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task);
          if (*(v7 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task + 8))
          {
            v9 = "DragItem";
            v10 = 8;
            switch(v8)
            {
              case 1:
                v11 = StaticString.description.getter("MarqueeDrag", 11, 2);
                break;
              case 2:
                goto LABEL_13;
              case 3:
                v11 = StaticString.description.getter("FreeTransformItem", 17, 2);
                break;
              case 4:
              case 5:
              case 8:
              case 33:
              case 34:
                goto LABEL_12;
              case 6:
                v11 = StaticString.description.getter("SingleTapItem", 13, 2);
                break;
              case 7:
                v11 = StaticString.description.getter("DoubleTapItem", 13, 2);
                break;
              case 9:
                v11 = StaticString.description.getter("AddShape", 8, 2);
                break;
              case 10:
                v11 = StaticString.description.getter("AddSticky", 9, 2);
                break;
              case 11:
                v11 = StaticString.description.getter("AddTextbox", 10, 2);
                break;
              case 12:
                v11 = StaticString.description.getter("ImportMedia", 11, 2);
                break;
              case 13:
                v11 = StaticString.description.getter("ImportFile", 10, 2);
                break;
              case 14:
                v11 = StaticString.description.getter("ImportURL", 9, 2);
                break;
              case 15:
                v11 = StaticString.description.getter("modelCompression", 16, 2);
                break;
              case 16:
                v11 = StaticString.description.getter("MarkupDrag", 10, 2);
                break;
              case 17:
                v11 = StaticString.description.getter("MiniFormatterOperationLatency", 29, 2);
                break;
              case 18:
                v11 = StaticString.description.getter("SharedBoardChange", 17, 2);
                break;
              case 19:
                v11 = StaticString.description.getter("SharedItemChange", 16, 2);
                break;
              case 20:
                v11 = StaticString.description.getter("sharedAuxiliaryChange", 21, 2);
                break;
              case 21:
                v11 = StaticString.description.getter("sharedCollabCursorChange", 24, 2);
                break;
              case 22:
                v11 = StaticString.description.getter("SendSharedChanges", 17, 2);
                break;
              case 23:
                v11 = StaticString.description.getter("LoadBoard", 9, 2);
                break;
              case 24:
                v11 = StaticString.description.getter("NewBoard", 8, 2);
                break;
              case 25:
                v11 = StaticString.description.getter("IncomingRealTimeMessage", 23, 2);
                break;
              case 26:
                v11 = StaticString.description.getter("IncomingEncryptedRealTimeMessage", 32, 2);
                break;
              case 27:
                v11 = StaticString.description.getter("IncomingChunkedRealtimeMessage", 30, 2);
                break;
              case 28:
                v11 = StaticString.description.getter("OutgoingRealTimeMessage", 23, 2);
                break;
              case 29:
                v11 = StaticString.description.getter("OutgoingEncryptedRealTimeMessage", 32, 2);
                break;
              case 30:
                v11 = StaticString.description.getter("fetchAllBoardItemsUnder", 23, 2);
                break;
              case 31:
                v11 = StaticString.description.getter("usdAppExtensionConnect", 22, 2);
                break;
              case 32:
                v11 = StaticString.description.getter("usdAppExtensionCreateSnapshot", 29, 2);
                break;
              default:
                v11 = StaticString.description.getter("CanvasZoom", 10, 2);
                break;
            }
          }

          else if (v8)
          {
            v11 = StaticString.description.getter("KeyboardInput", 13, 2);
          }

          else
          {
LABEL_12:
            v9 = "MISC";
            v10 = 4;
LABEL_13:
            v11 = StaticString.description.getter(v9, v10, 2);
          }

          v13 = v11;
          v14 = v12;
          v15 = *v5;
          if (v5[1])
          {
            v16 = "DragItem";
            v17 = 8;
            switch(v15)
            {
              case 1:
                v18 = StaticString.description.getter("MarqueeDrag", 11, 2);
                break;
              case 2:
                goto LABEL_20;
              case 3:
                v18 = StaticString.description.getter("FreeTransformItem", 17, 2);
                break;
              case 4:
              case 5:
              case 8:
              case 33:
              case 34:
                goto LABEL_19;
              case 6:
                v18 = StaticString.description.getter("SingleTapItem", 13, 2);
                break;
              case 7:
                v18 = StaticString.description.getter("DoubleTapItem", 13, 2);
                break;
              case 9:
                v18 = StaticString.description.getter("AddShape", 8, 2);
                break;
              case 10:
                v18 = StaticString.description.getter("AddSticky", 9, 2);
                break;
              case 11:
                v18 = StaticString.description.getter("AddTextbox", 10, 2);
                break;
              case 12:
                v18 = StaticString.description.getter("ImportMedia", 11, 2);
                break;
              case 13:
                v18 = StaticString.description.getter("ImportFile", 10, 2);
                break;
              case 14:
                v18 = StaticString.description.getter("ImportURL", 9, 2);
                break;
              case 15:
                v18 = StaticString.description.getter("modelCompression", 16, 2);
                break;
              case 16:
                v18 = StaticString.description.getter("MarkupDrag", 10, 2);
                break;
              case 17:
                v18 = StaticString.description.getter("MiniFormatterOperationLatency", 29, 2);
                break;
              case 18:
                v18 = StaticString.description.getter("SharedBoardChange", 17, 2);
                break;
              case 19:
                v18 = StaticString.description.getter("SharedItemChange", 16, 2);
                break;
              case 20:
                v18 = StaticString.description.getter("sharedAuxiliaryChange", 21, 2);
                break;
              case 21:
                v18 = StaticString.description.getter("sharedCollabCursorChange", 24, 2);
                break;
              case 22:
                v18 = StaticString.description.getter("SendSharedChanges", 17, 2);
                break;
              case 23:
                v18 = StaticString.description.getter("LoadBoard", 9, 2);
                break;
              case 24:
                v18 = StaticString.description.getter("NewBoard", 8, 2);
                break;
              case 25:
                v18 = StaticString.description.getter("IncomingRealTimeMessage", 23, 2);
                break;
              case 26:
                v18 = StaticString.description.getter("IncomingEncryptedRealTimeMessage", 32, 2);
                break;
              case 27:
                v18 = StaticString.description.getter("IncomingChunkedRealtimeMessage", 30, 2);
                break;
              case 28:
                v18 = StaticString.description.getter("OutgoingRealTimeMessage", 23, 2);
                break;
              case 29:
                v18 = StaticString.description.getter("OutgoingEncryptedRealTimeMessage", 32, 2);
                break;
              case 30:
                v18 = StaticString.description.getter("fetchAllBoardItemsUnder", 23, 2);
                break;
              case 31:
                v18 = StaticString.description.getter("usdAppExtensionConnect", 22, 2);
                break;
              case 32:
                v18 = StaticString.description.getter("usdAppExtensionCreateSnapshot", 29, 2);
                break;
              default:
                v18 = StaticString.description.getter("CanvasZoom", 10, 2);
                break;
            }
          }

          else if (v15)
          {
            v18 = StaticString.description.getter("KeyboardInput", 13, 2);
          }

          else
          {
LABEL_19:
            v16 = "MISC";
            v17 = 4;
LABEL_20:
            v18 = StaticString.description.getter(v16, v17, 2);
          }

          if (v13 == v18 && v14 == v19)
          {

            swift_unknownObjectRelease();
            return j;
          }

          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          swift_unknownObjectRelease();
          if (v20)
          {
            return j;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v21 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (v21 == i)
        {
          return 0;
        }
      }

      __break(1u);
    }

    else
    {
      j = 0;
      v22 = v2 + 32;
      v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v38 = v2 + 32;
      while (v23 != j)
      {
        v2 = *(v22 + 8 * j);

        if (static OSSignpostID.== infix(_:_:)())
        {
          v24 = *(v2 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task);
          if (*(v2 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task + 8))
          {
            v25 = "DragItem";
            v26 = 8;
            switch(v24)
            {
              case 1:
                v27 = StaticString.description.getter("MarqueeDrag", 11, 2);
                break;
              case 2:
                goto LABEL_94;
              case 3:
                v27 = StaticString.description.getter("FreeTransformItem", 17, 2);
                break;
              case 4:
              case 5:
              case 8:
              case 33:
              case 34:
                goto LABEL_93;
              case 6:
                v27 = StaticString.description.getter("SingleTapItem", 13, 2);
                break;
              case 7:
                v27 = StaticString.description.getter("DoubleTapItem", 13, 2);
                break;
              case 9:
                v27 = StaticString.description.getter("AddShape", 8, 2);
                break;
              case 10:
                v27 = StaticString.description.getter("AddSticky", 9, 2);
                break;
              case 11:
                v27 = StaticString.description.getter("AddTextbox", 10, 2);
                break;
              case 12:
                v27 = StaticString.description.getter("ImportMedia", 11, 2);
                break;
              case 13:
                v27 = StaticString.description.getter("ImportFile", 10, 2);
                break;
              case 14:
                v27 = StaticString.description.getter("ImportURL", 9, 2);
                break;
              case 15:
                v27 = StaticString.description.getter("modelCompression", 16, 2);
                break;
              case 16:
                v27 = StaticString.description.getter("MarkupDrag", 10, 2);
                break;
              case 17:
                v27 = StaticString.description.getter("MiniFormatterOperationLatency", 29, 2);
                break;
              case 18:
                v27 = StaticString.description.getter("SharedBoardChange", 17, 2);
                break;
              case 19:
                v27 = StaticString.description.getter("SharedItemChange", 16, 2);
                break;
              case 20:
                v27 = StaticString.description.getter("sharedAuxiliaryChange", 21, 2);
                break;
              case 21:
                v27 = StaticString.description.getter("sharedCollabCursorChange", 24, 2);
                break;
              case 22:
                v27 = StaticString.description.getter("SendSharedChanges", 17, 2);
                break;
              case 23:
                v27 = StaticString.description.getter("LoadBoard", 9, 2);
                break;
              case 24:
                v27 = StaticString.description.getter("NewBoard", 8, 2);
                break;
              case 25:
                v27 = StaticString.description.getter("IncomingRealTimeMessage", 23, 2);
                break;
              case 26:
                v27 = StaticString.description.getter("IncomingEncryptedRealTimeMessage", 32, 2);
                break;
              case 27:
                v27 = StaticString.description.getter("IncomingChunkedRealtimeMessage", 30, 2);
                break;
              case 28:
                v27 = StaticString.description.getter("OutgoingRealTimeMessage", 23, 2);
                break;
              case 29:
                v27 = StaticString.description.getter("OutgoingEncryptedRealTimeMessage", 32, 2);
                break;
              case 30:
                v27 = StaticString.description.getter("fetchAllBoardItemsUnder", 23, 2);
                break;
              case 31:
                v27 = StaticString.description.getter("usdAppExtensionConnect", 22, 2);
                break;
              case 32:
                v27 = StaticString.description.getter("usdAppExtensionCreateSnapshot", 29, 2);
                break;
              default:
                v27 = StaticString.description.getter("CanvasZoom", 10, 2);
                break;
            }
          }

          else if (v24)
          {
            v27 = StaticString.description.getter("KeyboardInput", 13, 2);
          }

          else
          {
LABEL_93:
            v25 = "MISC";
            v26 = 4;
LABEL_94:
            v27 = StaticString.description.getter(v25, v26, 2);
          }

          v29 = v27;
          v30 = v28;
          v31 = *v5;
          if (v5[1])
          {
            v32 = "DragItem";
            v33 = 8;
            switch(v31)
            {
              case 1:
                v34 = StaticString.description.getter("MarqueeDrag", 11, 2);
                break;
              case 2:
                goto LABEL_101;
              case 3:
                v34 = StaticString.description.getter("FreeTransformItem", 17, 2);
                break;
              case 4:
              case 5:
              case 8:
              case 33:
              case 34:
                goto LABEL_100;
              case 6:
                v34 = StaticString.description.getter("SingleTapItem", 13, 2);
                break;
              case 7:
                v34 = StaticString.description.getter("DoubleTapItem", 13, 2);
                break;
              case 9:
                v34 = StaticString.description.getter("AddShape", 8, 2);
                break;
              case 10:
                v34 = StaticString.description.getter("AddSticky", 9, 2);
                break;
              case 11:
                v34 = StaticString.description.getter("AddTextbox", 10, 2);
                break;
              case 12:
                v34 = StaticString.description.getter("ImportMedia", 11, 2);
                break;
              case 13:
                v34 = StaticString.description.getter("ImportFile", 10, 2);
                break;
              case 14:
                v34 = StaticString.description.getter("ImportURL", 9, 2);
                break;
              case 15:
                v34 = StaticString.description.getter("modelCompression", 16, 2);
                break;
              case 16:
                v34 = StaticString.description.getter("MarkupDrag", 10, 2);
                break;
              case 17:
                v34 = StaticString.description.getter("MiniFormatterOperationLatency", 29, 2);
                break;
              case 18:
                v34 = StaticString.description.getter("SharedBoardChange", 17, 2);
                break;
              case 19:
                v34 = StaticString.description.getter("SharedItemChange", 16, 2);
                break;
              case 20:
                v34 = StaticString.description.getter("sharedAuxiliaryChange", 21, 2);
                break;
              case 21:
                v34 = StaticString.description.getter("sharedCollabCursorChange", 24, 2);
                break;
              case 22:
                v34 = StaticString.description.getter("SendSharedChanges", 17, 2);
                break;
              case 23:
                v34 = StaticString.description.getter("LoadBoard", 9, 2);
                break;
              case 24:
                v34 = StaticString.description.getter("NewBoard", 8, 2);
                break;
              case 25:
                v34 = StaticString.description.getter("IncomingRealTimeMessage", 23, 2);
                break;
              case 26:
                v34 = StaticString.description.getter("IncomingEncryptedRealTimeMessage", 32, 2);
                break;
              case 27:
                v34 = StaticString.description.getter("IncomingChunkedRealtimeMessage", 30, 2);
                break;
              case 28:
                v34 = StaticString.description.getter("OutgoingRealTimeMessage", 23, 2);
                break;
              case 29:
                v34 = StaticString.description.getter("OutgoingEncryptedRealTimeMessage", 32, 2);
                break;
              case 30:
                v34 = StaticString.description.getter("fetchAllBoardItemsUnder", 23, 2);
                break;
              case 31:
                v34 = StaticString.description.getter("usdAppExtensionConnect", 22, 2);
                break;
              case 32:
                v34 = StaticString.description.getter("usdAppExtensionCreateSnapshot", 29, 2);
                break;
              default:
                v34 = StaticString.description.getter("CanvasZoom", 10, 2);
                break;
            }
          }

          else if (v31)
          {
            v34 = StaticString.description.getter("KeyboardInput", 13, 2);
          }

          else
          {
LABEL_100:
            v32 = "MISC";
            v33 = 4;
LABEL_101:
            v34 = StaticString.description.getter(v32, v33, 2);
          }

          if (v29 == v34 && v30 == v35)
          {

            return j;
          }

          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v22 = v38;
          if (v36)
          {
            return j;
          }
        }

        else
        {
        }

        if (i == ++j)
        {
          return 0;
        }
      }
    }

    __break(1u);
LABEL_167:
    ;
  }

  return 0;
}

void sub_1010100AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v53 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  v19 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
  if (v19)
  {
    v48 = v16;
    v49 = v9;
    v50 = v8;
    v54 = v19;
    v20 = [v3 presentedViewController];
    if (v20)
    {
      v21 = v20;
      sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v51 = v54;
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {

        v23 = v51;
LABEL_13:

        return;
      }
    }

    else
    {
      v26 = v54;
    }

    v27 = [v54 isBeingPresented];

    if (v27)
    {
      v23 = v54;
      goto LABEL_13;
    }

    v46 = v4;
    v51 = v5;
    v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_willPresentCompactScenesNavigator] = 1;
    v28 = [objc_opt_self() isReduceMotionEnabled];
    v29 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
    [v29 leaveQuickSelectModeIfNeeded];
    [v3 endDrawingModeIfNeeded];
    v30 = [v29 miniFormatterPresenter];
    if (v30)
    {
      v31 = v30;
      if ([v30 isPresentingMiniFormatter])
      {
        [v31 dismissMiniFormatterWithAnimated:v28 ^ 1];
      }

      swift_unknownObjectRelease();
    }

    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v45 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v32 = *(v48 + 1);
    v47 = v12;
    v48 = v32;
    v32(v14, v12);
    v33 = swift_allocObject();
    v35 = v53;
    v34 = v54;
    *(v33 + 16) = v3;
    *(v33 + 24) = v34;
    *(v33 + 32) = v28;
    *(v33 + 40) = v52;
    *(v33 + 48) = v35;
    aBlock[4] = sub_10104DDB8;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018ADE40;
    v36 = _Block_copy(aBlock);
    v54 = v54;
    v37 = v3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100006760(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    v38 = v37;
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
    v39 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v40 = v45;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v36);

    (*(v51 + 1))(v7, v39);
    (*(v49 + 8))(v11, v50);
    v48(v18, v47);
    if (v38[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] == 1)
    {
      v41 = v54;
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v42 = static OS_os_log.crlDefault;
      v43 = static os_log_type_t.info.getter();
      sub_100005404(v42, &_mh_execute_header, v43, "Skipping request to update toolbar buttons after teardown.", 58, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v44 = [v38 traitCollection];
      sub_100642864(v44, [*&v38[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly], aBlock);
      sub_100642CDC(aBlock, 0);

      sub_1005EB2D4(aBlock);
    }
  }

  else
  {
    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlScenes;
    v25 = static os_log_type_t.error.getter();

    sub_100005404(v24, &_mh_execute_header, v25, "Attempted to present compact scenes navigator when its view controller was nil.", 79, 2, _swiftEmptyArrayStorage);
  }
}

void sub_1010107F4(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v4 = [v3 layerHost];
  if (v4 && (v45 = [v4 canvasLayer], swift_unknownObjectRelease(), v45))
  {
    [v45 minimumPinchViewScale];
    v6 = v5;
    [v45 maximumPinchViewScale];
    v8 = sub_1004C3240(a1, v6, v7);
    [v3 visibleUnscaledRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v3 viewScale];
    v18 = v17 / v8;
    v19 = sub_100120414(v10, v12, v14, v16);
    v21 = v20;
    v22 = sub_10011F340(v14, v16, v18);
    [v3 zoomWithAnimationToUnscaledRect:{sub_10011EC70(v19, v21, v22)}];
  }

  else
  {
    v46 = objc_opt_self();
    v23 = [v46 _atomicIncrementAssertCount];
    v47 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v47, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("viewScale", 9, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v25 = String._bridgeToObjectiveC()();

    v26 = [v25 lastPathComponent];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v23;
    v32 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v32;
    v33 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v33;
    *(inited + 72) = v24;
    *(inited + 136) = &type metadata for String;
    v34 = sub_1000053B0();
    *(inited + 112) = v27;
    *(inited + 120) = v29;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v34;
    *(inited + 152) = 4318;
    v35 = v47;
    *(inited + 216) = v32;
    *(inited + 224) = v33;
    *(inited + 192) = v35;
    v36 = v24;
    v37 = v35;
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v39, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v40 = swift_allocObject();
    v40[2] = 8;
    v40[3] = 0;
    v40[4] = 0;
    v40[5] = 0;
    v41 = __VaListBuilder.va_list()();
    StaticString.description.getter("viewScale", 9, 2);
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v44 = String._bridgeToObjectiveC()();

    [v46 handleFailureInFunction:v42 file:v43 lineNumber:4318 isFatal:0 format:v44 args:v41];

    [v3 setViewScale:a1];
  }
}

void sub_101010D34()
{
  v1 = [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] pencilMediator];
  if (v1)
  {
    v2 = [v1 pencilModeToBeginFromToolbarItem];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = [v0 pencilDocumentModeFor:v2];
      v27 = sub_101012FD4();
      [v27 setMode:v3 animated:1];
    }

    else
    {
      v4 = objc_opt_self();
      v5 = [v4 _atomicIncrementAssertCount];
      v28 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v28, "Should not be asked to begin pencil mode from toolbar item if we cannot begin a pencil mode.", 92, 2u);
      StaticString.description.getter("beginPencilModeFromToolbarItem()", 32, 2);
      v6 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
      v7 = String._bridgeToObjectiveC()();

      v8 = [v7 lastPathComponent];

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v12 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v5;
      v14 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v14;
      v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v15;
      *(inited + 72) = v6;
      *(inited + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(inited + 112) = v9;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v16;
      *(inited + 152) = 3904;
      v17 = v28;
      *(inited + 216) = v14;
      *(inited + 224) = v15;
      *(inited + 192) = v17;
      v18 = v6;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v21, "Should not be asked to begin pencil mode from toolbar item if we cannot begin a pencil mode.", 92, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v22[2] = 8;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 0;
      v23 = __VaListBuilder.va_list()();
      StaticString.description.getter("beginPencilModeFromToolbarItem()", 32, 2);
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Should not be asked to begin pencil mode from toolbar item if we cannot begin a pencil mode.", 92, 2);
      v26 = String._bridgeToObjectiveC()();

      [v4 handleFailureInFunction:v24 file:v25 lineNumber:3904 isFatal:0 format:v26 args:v23];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1010111B0()
{
  v28 = &type metadata for CRLFeatureFlags;
  v1 = sub_100004D60();
  v29 = v1;
  LOBYTE(aBlock[0]) = 10;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if (v2)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 crl_isCompactWidth];

    if ((v4 & 1) == 0)
    {
      v5 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
      if (v5)
      {
        v6 = v0;
        v7 = v5;
        v8 = sub_100ACC400();

        v28 = &type metadata for CRLFeatureFlags;
        v29 = v1;
        LOBYTE(aBlock[0]) = 0;
        LOBYTE(v7) = isFeatureEnabled(_:)();
        sub_100005070(aBlock);
        if ((v7 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (qword_1019F2098 != -1)
        {
          swift_once();
        }

        v9 = static OS_os_log.crlDefault;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v11 = sub_10067E168();
        v12 = dispatch thunk of Tip.id.getter();
        v14 = v13;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v12;
        *(inited + 40) = v14;
        v15 = static os_log_type_t.info.getter();
        sub_100005404(v9, &_mh_execute_header, v15, "presenting tip on canvas: %{public}@", 36, 2, inited);
        swift_setDeallocating();
        sub_100005070((inited + 32));
        if (sub_101039428())
        {
          type metadata accessor for TipUIPopoverViewController();
          v28 = &type metadata for CRLTipConnectionLinesEntryPointFull;
          v29 = v11;
          swift_unknownObjectRetain();
          v16 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
          swift_unknownObjectRetain();
          TipUIPopoverViewController.presentationDelegate.setter();
          v17 = TipUIPopoverViewController.popoverPresentationController.getter();
          if (v17)
          {
            v18 = v17;
            v19 = [v6 traitCollection];
            v20 = [v19 verticalSizeClass];

            if (v20 != 1)
            {
              [v18 setPermittedArrowDirections:3];
            }
          }

          v21 = swift_allocObject();
          v21[2] = v6;
          v21[3] = v16;
          v21[4] = sub_101039CF8;
          v21[5] = 0;
          v29 = sub_10105B11C;
          v30 = v21;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = *"";
          aBlock[2] = sub_100007638;
          v28 = &unk_1018AF150;
          v22 = _Block_copy(aBlock);
          v23 = v6;
          v24 = v16;

          [v23 presentViewController:v24 animated:1 completion:v22];

          _Block_release(v22);
        }

        else
        {
LABEL_13:
        }
      }

      else
      {
        if (qword_1019F20A8 != -1)
        {
          swift_once();
        }

        v25 = static OS_os_log.crlError;
        v26 = static os_log_type_t.error.getter();
        sub_100005404(v25, &_mh_execute_header, v26, "Unable to present connection lines entry point tip because relative rect not found", 82, 2, _swiftEmptyArrayStorage);
      }
    }
  }
}

void sub_101011590(char a1, char a2)
{
  v12[3] = &type metadata for CRLFeatureFlags;
  v12[4] = sub_100004D60();
  LOBYTE(v12[0]) = 0;
  v5 = isFeatureEnabled(_:)();
  sub_100005070(v12);
  if (v5)
  {
    v6 = [v2 presentedViewController];
    if (v6)
    {
      v7 = v6;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
        v10 = v7;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          [v10 dismissViewControllerAnimated:a1 & 1 completion:0];
          sub_10103ADB8(a2 & 1);
        }
      }
    }
  }
}

void sub_1010116A8()
{
  v32 = &type metadata for CRLFeatureFlags;
  v1 = sub_100004D60();
  v33 = v1;
  LOBYTE(aBlock[0]) = 0;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v4 = v0;
      sub_10103A88C(v35);
      if (v36)
      {
        if (qword_1019F20A8 != -1)
        {
          swift_once();
        }

        v5 = static OS_os_log.crlError;
        v6 = static os_log_type_t.error.getter();
        sub_100005404(v5, &_mh_execute_header, v6, "Unable to present connection line on selection because there is no connection line knob position to present off of", 114, 2, _swiftEmptyArrayStorage);
      }

      else
      {
        v7 = v35[4];
        v8 = [objc_allocWithZone(UIView) initWithFrame:{v35[0], v35[1], v35[2], v35[3]}];
        v9 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPresentationView];
        *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPresentationView] = v8;
        v10 = v8;

        if (v10)
        {
          v11 = [*&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] view];
          if (v11)
          {
            v12 = v11;
            [v11 addSubview:v10];

            v32 = &type metadata for CRLFeatureFlags;
            v33 = v1;
            LOBYTE(aBlock[0]) = 0;
            LOBYTE(v12) = isFeatureEnabled(_:)();
            sub_100005070(aBlock);
            if ((v12 & 1) == 0)
            {
              goto LABEL_19;
            }

            v30 = v7;
            if (qword_1019F2098 != -1)
            {
              swift_once();
            }

            v13 = static OS_os_log.crlDefault;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C6B0;
            v15 = sub_10067E1BC();
            v16 = dispatch thunk of Tip.id.getter();
            v18 = v17;
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v16;
            *(inited + 40) = v18;
            v19 = static os_log_type_t.info.getter();
            sub_100005404(v13, &_mh_execute_header, v19, "presenting tip on canvas: %{public}@", 36, 2, inited);
            swift_setDeallocating();
            sub_100005070((inited + 32));
            if (sub_101039428())
            {
              type metadata accessor for TipUIPopoverViewController();
              v32 = &type metadata for CRLTipConnectionLinesOnSelection;
              v33 = v15;
              swift_unknownObjectRetain();
              v20 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
              swift_unknownObjectRetain();
              TipUIPopoverViewController.presentationDelegate.setter();
              v21 = TipUIPopoverViewController.popoverPresentationController.getter();
              v22 = v4;
              if (v21)
              {
                v23 = v21;
                v24 = [v4 traitCollection];
                v25 = [v24 verticalSizeClass];

                if (v25 != 1)
                {
                  [v23 setPermittedArrowDirections:*&v30];
                }
              }

              v26 = swift_allocObject();
              v26[2] = v4;
              v26[3] = v20;
              v26[4] = 0;
              v26[5] = 0;
              v33 = sub_10105ABD0;
              v34 = v26;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = *"";
              aBlock[2] = sub_100007638;
              v32 = &unk_1018AEE58;
              v27 = _Block_copy(aBlock);
              v28 = v22;
              v29 = v20;

              [v28 presentViewController:v29 animated:1 completion:v27];

              _Block_release(v27);
            }

            else
            {
LABEL_19:
            }
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_101011AFC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &type metadata for CRLFeatureFlags;
  v34 = sub_100004D60();
  LOBYTE(aBlock[0]) = 20;
  v12 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if (v12)
  {
    v30 = v2;
    v13 = [v0 traitCollection];
    v14 = [v13 crl_isCompactWidth];

    if (v14)
    {
      v15 = [v0 navigationItem];
      v16 = [v15 overflowPresentationSource];

      if (v16)
      {
        sub_101039A5C(v16, 0, 0);
        if (qword_1019F16C8 != -1)
        {
          swift_once();
        }

        v17 = sub_1005B981C(&unk_101A287C0, &unk_10147A120);
        sub_1005EB3DC(v17, qword_101AD6818);
        Tips.Event.sendDonation<>(_:)();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v18 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController];
      if (v18)
      {
        v19 = v18;
        v20 = v0;
        if (sub_101039428())
        {
          v21 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
          sub_10091FD94(1);

          sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
          v29 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          v22 = swift_allocObject();
          *(v22 + 16) = v20;
          *(v22 + 24) = v19;
          v34 = sub_10105B158;
          v35 = v22;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = *"";
          aBlock[2] = sub_100007638;
          v33 = &unk_1018AF1A0;
          v27 = _Block_copy(aBlock);
          v28 = v19;
          v23 = v20;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          v26 = sub_100006760(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
          sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v24 = v27;
          v25 = v29;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v24);

          (*(v30 + 8))(v4, v1);
          (*(v31 + 8))(v7, v5);
          (*(v9 + 8))(v11, v8);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_10101200C()
{
  v13 = &type metadata for CRLFeatureFlags;
  v14 = sub_100004D60();
  LOBYTE(v12[0]) = 24;
  v1 = isFeatureEnabled(_:)();
  result = sub_100005070(v12);
  if (v1)
  {
    v3 = [v0 traitCollection];
    if ([v3 horizontalSizeClass] == 1)
    {
    }

    else
    {
      v4 = [objc_opt_self() crl_phoneUI];

      if (!v4)
      {
        v5 = sub_101013310();
        v6 = &type metadata for CRLTipStencilLibraryFull;
        v13 = &type metadata for CRLTipStencilLibraryFull;
        v7 = sub_10103AD30;
        v8 = sub_10067E9D0();
        goto LABEL_7;
      }
    }

    v5 = sub_101013290();
    v6 = &type metadata for CRLTipStencilLibraryCompact;
    v13 = &type metadata for CRLTipStencilLibraryCompact;
    v7 = sub_10103AD0C;
    v8 = sub_10067E97C();
LABEL_7:
    v9 = v8;
    v14 = v8;
    v10 = sub_100020E58(v12, v6);
    v11 = v5;
    sub_1010395E4(v10, v11, v7, 0, v6, v9);

    return sub_100005070(v12);
  }

  return result;
}

void sub_101012178(uint64_t a1@<X8>)
{
  URL.init(string:)();
  v2 = type metadata accessor for URL();
  if ((*(*(v2 - 8) + 48))(a1, 1, v2) == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v26 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v26, "Cloud Quota Exceeded Change Plan URL is nil", 43, 2u);
    StaticString.description.getter("cloudQuotaExceededChangePlanURL", 31, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardLibraryViewController.swift", 101, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v13;
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 31;
    v16 = v26;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Cloud Quota Exceeded Change Plan URL is nil", 43, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("cloudQuotaExceededChangePlanURL", 31, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardLibraryViewController.swift", 101, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Cloud Quota Exceeded Change Plan URL is nil", 43, 2);
    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:31 isFatal:0 format:v25 args:v22];
  }
}

uint64_t sub_1010125B4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v2;
  static Published.subscript.setter();
  return sub_1007D40B4();
}

uint64_t sub_101012638(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  type metadata accessor for MainActor();
  v2[14] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v4;
  v2[16] = v3;

  return _swift_task_switch(sub_1010126D0, v4, v3);
}

uint64_t sub_1010126D0()
{
  v1 = objc_allocWithZone(type metadata accessor for CRLFileWriteAssetDownloadAlertViewController(0));
  *(v0 + 152) = 0;
  State.init(wrappedValue:)();
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 24) = *(v0 + 88);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  v2 = UIHostingController.init(rootView:)();
  *(v0 + 136) = v2;
  [v2 setModalPresentationStyle:2];
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_1010127C8;
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  return sub_101228C4C(v5, v4);
}

uint64_t sub_1010127C8()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1010128E8, v3, v2);
}

uint64_t sub_1010128E8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_101012978(char a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  [v4 setDocumentIsSharedReadOnly:a1 & 1];
  if (a1)
  {
    sub_101029C04(0);
  }

  v5 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
  if (v5)
  {
    v6 = v5;
    sub_100ACD0A8();
  }

  *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem] = sub_10064E0E4();

  v7 = [v2 traitCollection];
  sub_100642864(v7, [v4 documentIsSharedReadOnly], v18);
  sub_100642CDC(v18, 0);
  sub_1005EB2D4(v18);

  v8 = [v2 traitCollection];
  sub_10067AD3C(v8, [v4 documentIsSharedReadOnly]);

  v9 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  static Published.subscript.setter();
  v11 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1006A4EF0();
    v14 = OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu;
    v15 = *&v12[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu];
    *&v12[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu] = v13;

    v16 = sub_1006A4738();
    v17 = *&v12[v14];
    [v16 setMenu:v17];
  }
}

id sub_101012B64()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___editorController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___editorController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___editorController);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
    v5 = sub_101013094();
    v6 = objc_allocWithZone(CRLEditorController);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithEditingCoordinator:v4 rootEditor:v5 debugName:v7];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_101012C40@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v15 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v16 = *&v14[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_100050004(v16 + v17, v5, type metadata accessor for CRLBoardCRDTData);
    v18 = v14;
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    CRRegister.wrappedValue.getter();
    sub_10003D7BC(v5, type metadata accessor for CRLBoardCRDTData);
    v19 = (*&v14[v15] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v20 = *v19;
    v21 = v19[1];

    sub_10084BD4C(v8, v20, v21, v11);

    sub_1010AB99C(v11, a1);
    sub_10003D7BC(v11, type metadata accessor for CRLBoardIdentifier);

    v24 = _s5BoardVMa(0);
    return (*(*(v24 - 8) + 56))(a1, 0, 1, v24);
  }

  else
  {
    v22 = _s5BoardVMa(0);
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }
}

id sub_101012FD4()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController);
  }

  else
  {
    v4 = [objc_allocWithZone(CRLiOSDocumentModeController) initWithDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_101013094()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardEditor;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardEditor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardEditor);
  }

  else
  {
    v4 = [objc_allocWithZone(CRLBoardEditor) initWithInteractiveCanvasController:*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_101013118()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertingHelper;
  if (*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertingHelper))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertingHelper);
  }

  else
  {
    type metadata accessor for CRLBoardItemInsertingHelper();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_101013350()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem;
  if (*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem);
  }

  else
  {
    v2 = sub_10064E0E4();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1010133D4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

objc_class *sub_101013474(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = v2;
    v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
    v12.value.super.super.isa = v7;
    v12.is_nil = 0;
    v8.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v12, v13).super.super.isa;
    v9 = *(v2 + v3);
    *(v6 + v3) = v8;
    v5 = v8.super.super.isa;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_1010135A8()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___viewOnlyToolbarItem;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___viewOnlyToolbarItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___viewOnlyToolbarItem);
  }

  else
  {
    v4 = sub_100678AC0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_101013608()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___collaborationButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___collaborationButtonItem);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController);
    if (v4)
    {
      v5 = v4;
      v3 = sub_100FA0048();

      v6 = *(v0 + v1);
    }

    else
    {
      v3 = 0;
      v6 = 1;
    }

    *(v0 + v1) = v3;
    v7 = v3;
    sub_1000505D0(v6);
  }

  sub_1000505E0(v2);
  return v3;
}

id sub_1010136CC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    type metadata accessor for CRLCanvasLayerSnapshotHostingView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1010137CC()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController);
  }

  else
  {
    v4 = [objc_allocWithZone(CRLFindReplaceController) initWithEditingCoordinator:*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) delegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_10101389C(void *a1, uint64_t a2)
{
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v53 = sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  sub_1005B981C(&qword_101A28718, &qword_1014C2358);
  String.init<A>(describing:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v5;
  v6 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v4;
  v7 = inited + 32;
  *(inited + 64) = v6;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v49 = objc_opt_self();
    v50 = [v49 _atomicIncrementAssertCount];
    v53 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v53, "expected equality between two values of type %{public}@", 55, 2u);
    StaticString.description.getter("findInteraction(_:sessionFor:)", 30, 2);
    v52 = inited;
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v21 = static OS_os_log.crlAssert;
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_10146CA70;
      *(v22 + 56) = &type metadata for Int32;
      *(v22 + 64) = &protocol witness table for Int32;
      *(v22 + 32) = v50;
      *(v22 + 96) = v5;
      *(v22 + 104) = v6;
      *(v22 + 72) = v15;
      *(v22 + 136) = &type metadata for String;
      v23 = sub_1000053B0();
      *(v22 + 112) = v18;
      *(v22 + 120) = v20;
      *(v22 + 176) = &type metadata for UInt;
      *(v22 + 184) = &protocol witness table for UInt;
      *(v22 + 144) = v23;
      *(v22 + 152) = 208;
      v24 = v53;
      *(v22 + 216) = v5;
      *(v22 + 224) = v6;
      *(v22 + 192) = v24;
      v25 = v15;
      v26 = v24;
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v22);
      swift_setDeallocating();
      v50 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v28, "expected equality between two values of type %{public}@", 55, 2, v52);

      type metadata accessor for __VaListBuilder();
      v6 = swift_allocObject();
      v6[2] = 8;
      v6[3] = 0;
      v29 = v6 + 3;
      v6[4] = 0;
      v6[5] = 0;
      v5 = *(v52 + 16);
      if (!v5)
      {
LABEL_31:
        v44 = __VaListBuilder.va_list()();
        StaticString.description.getter("findInteraction(_:sessionFor:)", 30, 2);
        v45 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
        v46 = String._bridgeToObjectiveC()();

        StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
        v47 = String._bridgeToObjectiveC()();

        [v49 handleFailureInFunction:v45 file:v46 lineNumber:208 isFatal:0 format:v47 args:v44];

        swift_setDeallocating();
        swift_arrayDestroy();
        return 0;
      }

      v30 = 0;
      while (1)
      {
        v31 = (v7 + 40 * v30);
        v18 = v31[3];
        v20 = sub_100020E58(v31, v18);
        v32 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v15 = *v29;
        v33 = *(v32 + 16);
        v34 = __OFADD__(*v29, v33);
        v35 = *v29 + v33;
        if (v34)
        {
          break;
        }

        v20 = v6[4];
        if (v20 >= v35)
        {
          goto LABEL_23;
        }

        if (v20 + 0x4000000000000000 < 0)
        {
          goto LABEL_35;
        }

        v18 = v6[5];
        if (2 * v20 > v35)
        {
          v35 = 2 * v20;
        }

        v6[4] = v35;
        if ((v35 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_36;
        }

        v36 = v32;
        v37 = swift_slowAlloc();
        v38 = v37;
        v6[5] = v37;
        if (v18)
        {
          if (v37 != v18 || v37 >= &v18[8 * v15])
          {
            memmove(v37, v18, 8 * v15);
          }

          v20 = v6;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v32 = v36;
LABEL_23:
          v38 = v6[5];
          if (!v38)
          {
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        v32 = v36;
        if (!v38)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_24:
        v40 = *(v32 + 16);
        if (v40)
        {
          v41 = (v32 + 32);
          v42 = *v29;
          while (1)
          {
            v43 = *v41++;
            *&v38[8 * v42] = v43;
            v42 = *v29 + 1;
            if (__OFADD__(*v29, 1))
            {
              break;
            }

            *v29 = v42;
            if (!--v40)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_8:

        if (++v30 == v5)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
    }
  }

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v8 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_findSession;
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_findSession);
  if (!v9)
  {
    v10 = sub_1010137CC();
    v11 = objc_allocWithZone(type metadata accessor for CRLiOSFindSession());
    v12 = sub_100FB1CC8(v10, a1);
    v13 = *(v2 + v8);
    *(v2 + v8) = v12;

    v9 = *(v2 + v8);
  }

  v14 = v9;
  return v9;
}

id sub_10101412C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UILayoutGuide) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

char *sub_101014204(char *a1, void *a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___editorController] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardEditor] = 0;
  v8 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_selectionModelTranslator;
  *&v4[v8] = [objc_allocWithZone(CRLSelectionModelTranslator) init];
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertingHelper] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertingCancellableToken] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_traitChangeRegistration] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isSuppressingBottomToolTrayForPresentationController] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressTimer] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressViewController] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardHasSyncedAtLeastOnce] = 0;
  v9 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_cloudQuotaMessagingObserver;
  type metadata accessor for CRLCloudQuotaMessagingObserver();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = ICQCurrentInAppMessageChangedNotification;
  *(v10 + 32) = 0;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController] = 0;
  v12 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSyncAwaitTask];
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundLayer] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView] = 0;
  v13 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_CRLUpdateInfoKey];
  strcpy(&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_CRLUpdateInfoKey], "iOSUpdateInfo");
  *(v13 + 7) = -4864;
  v14 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_CRLUnsupportedDevicesKey];
  *v14 = 0xD000000000000012;
  v14[1] = 0x80000001015935E0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_subscriptions] = _swiftEmptySetSingleton;
  v15 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastContentOffset];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastCanvasCenter];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_toolbarButtonState];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 8) = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___undoToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertTextBoxToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertAVMediaToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertStickyNoteToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertShapeToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___togglePencilModeToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertStencilToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___shareToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___newBoardToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___doneToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___doneWithModeToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___doneWithScenesNavigatorToolbarItem] = 0;
  *(v10 + 80) = 0x4122750000000000;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___viewOnlyToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___collaborationButtonItem] = 1;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_photoPickerLoadingProgress] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_gpHelper] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert] = 0;
  v18 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView;
  v19 = objc_allocWithZone(CRLScrollView);
  v20 = v11;
  *&v4[v18] = [v19 init];
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasScrollViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomToolTray] = 0;
  v21 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_snapshotViewWrapper;
  *&v4[v21] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___bottomSceneCaptureSnapshotHostingView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___topSceneCaptureSnapshotHostingView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___sceneNavigationSnapshotHostingView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomAndScenesContainerView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewController] = 0;
  v22 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewState;
  *&v4[v22] = [objc_allocWithZone(type metadata accessor for CRLConnectorModeMessageViewState(0)) init];
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_skipNextToolbarUpdate] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController] = 0;
  v23 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState;
  *&v4[v23] = [objc_allocWithZone(type metadata accessor for CRLScenesNavigatorState(0)) init];
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigationCrossfadeSnapshotLayers] = _swiftEmptyArrayStorage;
  v24 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
  *&v4[v24] = [objc_allocWithZone(type metadata accessor for CRLScenesPopoverState(0)) init];
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPresenter] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesPresenter] = 0;
  v25 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex];
  *v25 = 0;
  v25[8] = 1;
  v26 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_sceneToContentDict;
  *&v4[v26] = sub_100BD99E8(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_presentedSceneAlert] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_willPresentCompactScenesNavigator] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_findSession] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_keyboardTopEdgeLayoutGuideConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_topUnobscuredRectLayoutGuideConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomUnobscuredRectLayoutGuideConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_leadingUnobscuredRectLayoutGuideConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_trailingUnobscuredRectLayoutGuideConstraint] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isChangingDocumentModeToHandwriting] = 0;
  v27 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shapeLibrarySearchTerm];
  *v27 = 0;
  v27[1] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipObservation] = 0;
  swift_unknownObjectWeakInit();
  v28 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentlyPresentedTip];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPresentationView] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_wantsToRestoreModeAfterGP] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_mediaReplacer] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___unobscuredRectLayout] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___keyboardFrameLayoutGuide] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosing] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosed] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followHUD] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followBorderHighlightView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_stateRestorationHelper] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_viewScaleObservation] = 0;
  v29 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollObserver];
  *v29 = 0u;
  v29[1] = 0u;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_didRestoreCanvasViewState] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled] = 2;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled] = 2;
  v30 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastPrintContentDate;
  v31 = type metadata accessor for Date();
  (*(*(v31 - 8) + 56))(&v4[v30], 1, 1, v31);
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] = a1;
  *(*&a1[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator] + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_delegate + 8) = &off_10188DDF0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] = a3;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] = a4;
  v32 = *&a1[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];
  v33 = type metadata accessor for CRLGelatoShareSheetProvider();
  v34 = objc_allocWithZone(v33);
  v35 = &v34[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_thumbnailProvider];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v34[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_presentingViewController] = 0;
  *&v34[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_icc] = a3;
  *&v34[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_board] = v32;
  *&v34[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_boardLibrary] = a2;
  *v35 = 0;
  *(v35 + 1) = 0;
  v79.receiver = v34;
  v79.super_class = v33;
  v36 = a3;
  v73 = a1;
  v37 = a4;
  v38 = v32;
  v39 = a2;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSheetProvider] = objc_msgSendSuper2(&v79, "init");
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_statusHUDManager] = [objc_allocWithZone(type metadata accessor for CRLStatusHUDManager()) init];
  v78.receiver = v4;
  v78.super_class = type metadata accessor for CRLiOSBoardViewController(0);
  v40 = objc_msgSendSuper2(&v78, "initWithNibName:bundle:", 0, 0);
  v41 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator;
  v42 = *(*&v40[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  type metadata accessor for CRLViewStateRestorationHelper();
  swift_allocObject();
  v43 = v40;
  v44 = v36;
  v45 = v39;
  v46 = v43;
  v47 = v42;
  v48 = sub_10075335C(v47, v45, v44);

  *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_stateRestorationHelper] = v48;

  v49 = objc_allocWithZone(type metadata accessor for CRLGelatoInterstitialUIController(0));
  v50 = sub_100FA2D34(v46);

  v51 = *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController];
  *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController] = v50;

  sub_101014DFC();
  v52 = *(*&v40[v41] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager);
  [v52 addDelegate:v46];

  v76 = &type metadata for CRLFeatureFlags;
  v53 = sub_100004D60();
  v77 = v53;
  LOBYTE(v75[0]) = 13;
  LOBYTE(v52) = isFeatureEnabled(_:)();
  sub_100005070(v75);
  if (v52)
  {
    v72 = v45;
    v54 = *(*&v40[v41] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    v55 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates;
    v56 = *&v54[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates];
    v57 = v54;
    if (([v56 containsObject:v46] & 1) == 0)
    {
      [*&v54[v55] addObject:v46];
    }

    v58 = *(*&v40[v41] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    v59 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers;
    v60 = *&v58[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers];
    v61 = v58;
    if (([v60 containsObject:v44] & 1) == 0)
    {
      [*&v58[v59] addObject:v44];
    }

    v45 = v72;
  }

  if ([objc_opt_self() isOSFeatureEnabled:5])
  {
    v62 = objc_allocWithZone(type metadata accessor for CRLiOSFreehandDrawingItemsSearchTarget());
    v63 = v44;
    v64 = sub_100712620(v63);

    v65 = *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget];
    *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget] = v64;

    v66 = [objc_allocWithZone(CRLiOSFreehandDrawingHighlightManager) initWithInteractiveCanvasController:v63];
    v67 = *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager];
    *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager] = v66;
  }

  v76 = &type metadata for CRLFeatureFlags;
  v77 = v53;
  LOBYTE(v75[0]) = 1;
  v68 = isFeatureEnabled(_:)();
  sub_100005070(v75);
  if (v68)
  {
    v69 = *(*&v40[v41] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
    type metadata accessor for CRLAASBoardTracker();
    swift_allocObject();
    v70 = sub_10074DC30(v46, v69);

    *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker] = v70;
  }

  else
  {
  }

  return v46;
}

void sub_101014DFC()
{
  v1 = sub_101012FD4();
  [v1 addModeObserver:v0];

  v2 = [objc_opt_self() defaultCenter];
  v3 = qword_1019F1710;
  v4 = *(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_101AD6898;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_10105AAFC;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = *"";
  v10[2] = sub_100059694;
  v10[3] = &unk_1018AED90;
  v7 = _Block_copy(v10);
  v8 = v4;

  v9 = [v2 addObserverForName:v5 object:v8 queue:0 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();

  if (qword_1019F1F48 != -1)
  {
    swift_once();
  }

  [v2 addObserver:v0 selector:? name:? object:?];
  if (qword_1019F28A0 != -1)
  {
    swift_once();
  }

  [v2 addObserver:v0 selector:? name:? object:?];
  if (qword_1019F1AA8 != -1)
  {
    swift_once();
  }

  [v2 addObserver:v0 selector:? name:? object:?];
}

void sub_1010150C8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = *(v13 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController);

      v16 = *(*&v12[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
      v17 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v18 = *&v16[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
      v19 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_100050004(v18 + v19, v4, type metadata accessor for CRLBoardCRDTData);
      v20 = v16;
      sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
      CRRegister.wrappedValue.getter();
      sub_10003D7BC(v4, type metadata accessor for CRLBoardCRDTData);
      v21 = (*&v16[v17] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v22 = *v21;
      v23 = v21[1];

      sub_10084BD4C(v7, v22, v23, v10);

      v24 = *&v15[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights];
      __chkstk_darwin(v25);
      *&v30[-16] = v10;

      v26 = sub_101107CA8(sub_1008F65DC, &v30[-32], v24);

      if (v26)
      {
        v27 = [objc_allocWithZone(SWHighlightChangeEvent) initWithHighlight:*&v26[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight] trigger:1];
        v28 = *&v15[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_highlightCenter];
        v29 = v27;
        [v28 postNoticeForHighlightEvent:v29];
      }

      else
      {
        v29 = v12;
        v12 = v15;
      }

      sub_10003D7BC(v10, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
    }
  }
}

id sub_10101542C()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v89 - v3;
  v5 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown;
  if (v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] != 1)
  {
    goto LABEL_4;
  }

  v92 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown;
  v91 = objc_opt_self();
  LODWORD(i) = [v91 _atomicIncrementAssertCount];
  *&v99[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v99, "Should not call tearDown() twice.", 33, 2u);
  StaticString.description.getter("tearDown()", 10, 2);
  v93 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v7 lastPathComponent];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v10;

  if (qword_1019F20A0 == -1)
  {
    goto LABEL_3;
  }

  while (1)
  {
    swift_once();
LABEL_3:
    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = i;
    v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v13;
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v14;
    v15 = v93;
    *(inited + 72) = v93;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    v17 = v90;
    *(inited + 112) = v9;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 387;
    v18 = *&v99[0];
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v18;
    v19 = v15;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v22, "Should not call tearDown() twice.", 33, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter("tearDown()", 10, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Should not call tearDown() twice.", 33, 2);
    v27 = String._bridgeToObjectiveC()();

    [v91 handleFailureInFunction:v25 file:v26 lineNumber:387 isFatal:0 format:v27 args:v24];

    v5 = v92;
LABEL_4:
    v1[v5] = 1;
    sub_10102231C(v99);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = v1;
    v30 = v99[0];
    *(v29 + 56) = v99[1];
    v31 = v100[0];
    *(v29 + 72) = v99[2];
    *(v29 + 88) = v31;
    *(v29 + 97) = *(v100 + 9);
    *(v29 + 40) = v30;
    v1 = v1;
    sub_1006D62AC(v99, v96);
    sub_100CA64C8(0, 0, v4, &unk_1014C2350, v29);

    sub_1006D62E4(v99);
    sub_10000CAAC(v4, &qword_1019FB750, &qword_10146F1B0);
    v32 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
    [*(v32 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager) removeDelegate:v1];
    v33 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator;
    v34 = *(v32 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    v35 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates;
    v36 = *&v34[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates];
    v37 = v34;
    if ([v36 containsObject:v1])
    {
      [*&v34[v35] removeObject:v1];
    }

    v38 = *(v32 + v33);
    v39 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
    v40 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers;
    v41 = *&v38[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers];
    v42 = v38;
    if ([v41 containsObject:v39])
    {
      [*&v38[v40] removeObject:v39];
    }

    v43 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray];
    if (v43)
    {
      v44 = v43;
      sub_100F08C7C();
    }

    v45 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController;
    v46 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController];
    if (v46)
    {
      v47 = v46;
      sub_1008F69BC();

      v46 = *&v1[v45];
    }

    *&v1[v45] = 0;

    v48 = sub_101012FD4();
    v49 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
    [v48 removeModeObserver:v49];

    [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController] removeModeObserver:v1];
    v97 = &type metadata for CRLFeatureFlags;
    v98 = sub_100004D60();
    LOBYTE(v96[0]) = 20;
    LOBYTE(v48) = isFeatureEnabled(_:)();
    sub_100005070(v96);
    if (v48)
    {
      v50 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController];
      if (v50)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v52 = *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
          v53 = Strong;
          v54 = v50;
          v55 = v52;

          [v55 removeDecorator:v54];
        }
      }

      v56 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPresenter];
      if (v56)
      {
        v57 = v56;
        sub_100697070();
      }

      v58 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesPresenter];
      if (v58)
      {
        v59 = v58;
        sub_1006984F8();
      }
    }

    [v49 teardown];
    v60 = [v39 textInputResponder];
    [v60 resignFirstResponder];

    [v39 teardown];
    [v39 setDelegate:0];
    [v49 setUserDialogPresenter:0];
    [v49 setDelegate:0];
    [v39 setLayerHost:0];
    v61 = sub_101012B64();
    [v61 teardown];

    result = [v1 view];
    if (!result)
    {
      break;
    }

    v63 = result;
    type metadata accessor for CRLiOSBoardView();
    *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform15CRLiOSBoardView_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();

    v64 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController;
    v65 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController];
    if (v65)
    {
      v66 = v65;
      sub_100FA05F0();

      v65 = *&v1[v64];
    }

    *&v1[v64] = 0;

    v67 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
    *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController] = 0;

    v68 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewController];
    *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewController] = 0;

    v69 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget;
    v70 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget];
    if (v70)
    {
      v71 = v70;
      sub_10070F334();

      v70 = *&v1[v69];
    }

    *&v1[v69] = 0;

    v72 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager;
    [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager] teardown];
    v73 = *&v1[v72];
    *&v1[v72] = 0;

    v74 = [objc_opt_self() sharedPrintController];
    [v74 dismissAnimated:0];

    v75 = [objc_opt_self() defaultCenter];
    [v75 removeObserver:v1];

    [objc_opt_self() removeKeyboardObserver:v1];
    sub_100C86398();
    v76 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_subscriptions;
    swift_beginAccess();
    v92 = *&v1[v76];
    v93 = v76;
    if ((v92 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      sub_100006760(&qword_1019FB8C0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      Set.Iterator.init(_cocoa:)();
      v78 = v96[0];
      v77 = v96[1];
      v79 = v96[2];
      v9 = v97;
      v4 = v98;
    }

    else
    {
      v80 = -1 << *(v92 + 32);
      v77 = v92 + 56;
      v79 = ~v80;
      v81 = -v80;
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      else
      {
        v82 = -1;
      }

      v4 = (v82 & *(v92 + 56));
      v78 = v92;
      swift_bridgeObjectRetain_n();
      v9 = 0;
    }

    v91 = v79;
    for (i = (v79 + 64) >> 6; v78 < 0; v4 = v86)
    {
      v88 = __CocoaSet.Iterator.next()();
      if (!v88)
      {
        goto LABEL_42;
      }

      v94 = v88;
      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      v85 = v9;
      v86 = v4;
      if (!v95)
      {
        goto LABEL_42;
      }

LABEL_40:
      AnyCancellable.cancel()();

      v9 = v85;
    }

    v83 = v9;
    v84 = v4;
    v85 = v9;
    if (v4)
    {
LABEL_36:
      v86 = (v84 - 1) & v84;
      v87 = *(*(v78 + 48) + ((v85 << 9) | (8 * __clz(__rbit64(v84)))));

      if (v87)
      {
        goto LABEL_40;
      }

LABEL_42:
      sub_100035F90(v78);

      *&v93[v1] = _swiftEmptySetSingleton;
    }

    while (1)
    {
      v85 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v85 >= i)
      {
        goto LABEL_42;
      }

      v84 = *(v77 + 8 * v85);
      ++v83;
      if (v84)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_101016020()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown) & 1) == 0)
  {
    v25 = objc_opt_self();
    v2 = [v25 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27, "Must call tearDown() before deallocation occurs.", 48, 2u);
    StaticString.description.getter("deinit", 6, 2);
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v11;
    v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 445;
    v14 = v27;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Must call tearDown() before deallocation occurs.", 48, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter("deinit", 6, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Must call tearDown() before deallocation occurs.", 48, 2);
    v23 = String._bridgeToObjectiveC()();

    [v25 handleFailureInFunction:v21 file:v22 lineNumber:445 isFatal:0 format:v23 args:v20];
  }

  v26.receiver = v1;
  v26.super_class = type metadata accessor for CRLiOSBoardViewController(0);
  return objc_msgSendSuper2(&v26, "dealloc");
}

uint64_t type metadata accessor for CRLiOSBoardViewController(uint64_t a1)
{
  result = qword_101A28570;
  if (!qword_101A28570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101016B0C()
{
  v1[87] = v0;
  type metadata accessor for MainActor();
  v1[88] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[89] = v3;
  v1[90] = v2;

  return _swift_task_switch(sub_101016BA8, v3, v2);
}

uint64_t sub_101016BA8()
{
  v1 = v0[87];
  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_didRestoreCanvasViewState;
  v0[91] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_didRestoreCanvasViewState;
  if ((*(v1 + v2) & 1) != 0 || (v3 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_stateRestorationHelper), (v0[92] = v3) == 0))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_101016C78, v3, 0);
  }
}

uint64_t sub_101016C78()
{
  v1 = *(v0 + 736);
  if (*(v1 + 144) == 1)
  {
    *(v0 + 416) = *(v1 + 152);
    v2 = *(v1 + 168);
    v3 = *(v1 + 184);
    v4 = *(v1 + 200);
    *(v0 + 473) = *(v1 + 209);
    *(v0 + 448) = v3;
    *(v0 + 464) = v4;
    *(v0 + 432) = v2;
    sub_10000BE14(v0 + 416, v0 + 496, &qword_1019FE618, &qword_1014B6B70);

    v5 = *(v0 + 464);
    *(v0 + 48) = *(v0 + 448);
    *(v0 + 64) = v5;
    *(v0 + 73) = *(v0 + 473);
    v6 = *(v0 + 432);
    *(v0 + 16) = *(v0 + 416);
    *(v0 + 32) = v6;
    v7 = *(v0 + 720);
    v8 = *(v0 + 712);

    return _swift_task_switch(sub_101016F84, v8, v7);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 744) = v9;
    *v9 = v0;
    v9[1] = sub_101016DB0;

    return sub_1007528DC();
  }
}

uint64_t sub_101016DB0()
{
  v1 = *v0;

  v2 = *(v1 + 736);

  return _swift_task_switch(sub_101016EC0, v2, 0);
}

uint64_t sub_101016EC0()
{
  v1 = *(v0 + 736);
  *(v0 + 96) = *(v1 + 152);
  v2 = *(v1 + 184);
  v3 = *(v1 + 200);
  v4 = *(v1 + 168);
  *(v0 + 153) = *(v1 + 209);
  *(v0 + 128) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v4;
  sub_10000BE14(v0 + 96, v0 + 176, &qword_1019FE618, &qword_1014B6B70);

  v5 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v5;
  *(v0 + 73) = *(v0 + 153);
  v6 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v6;
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);

  return _swift_task_switch(sub_101016F84, v8, v7);
}

uint64_t sub_101016F84()
{

  v1 = *(v0 + 88);
  if (v1 != 2)
  {
    v2 = *(v0 + 728);
    v3 = *(v0 + 696);
    v4 = *(v0 + 64);
    *(v0 + 608) = *(v0 + 48);
    *(v0 + 624) = v4;
    *(v0 + 640) = *(v0 + 80);
    v5 = *(v0 + 32);
    *(v0 + 576) = *(v0 + 16);
    *(v0 + 592) = v5;
    v6 = *(v3 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v9 = *(v0 + 576);
    *(v8 + 40) = *(v0 + 592);
    v10 = *(v0 + 624);
    *(v8 + 56) = *(v0 + 608);
    *(v8 + 72) = v10;
    *(v8 + 16) = v7;
    *(v8 + 88) = *(v0 + 640);
    *(v8 + 24) = v9;
    *(v8 + 96) = v1;
    *(v0 + 680) = sub_10105AA80;
    *(v0 + 688) = v8;
    *(v0 + 648) = _NSConcreteStackBlock;
    *(v0 + 656) = *"";
    *(v0 + 664) = sub_100007638;
    *(v0 + 672) = &unk_1018AED40;
    v11 = _Block_copy((v0 + 648));
    v12 = *(v0 + 64);
    *(v0 + 288) = *(v0 + 48);
    *(v0 + 304) = v12;
    *(v0 + 313) = *(v0 + 73);
    v13 = *(v0 + 32);
    *(v0 + 256) = *(v0 + 16);
    *(v0 + 272) = v13;
    sub_1006D62AC(v0 + 256, v0 + 336);

    [v6 performBlockOnMainThreadAfterLayoutIfNecessary:v11];
    sub_10000CAAC(v0 + 16, &qword_1019FE618, &qword_1014B6B70);
    _Block_release(v11);
    *(v3 + v2) = 1;
  }

  v14 = *(v0 + 8);

  return v14();
}

void sub_101017174()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v122 - v2;
  type metadata accessor for CRLiOSBoardView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8Freeform15CRLiOSBoardView_delegate + 8] = &off_1018ADDD8;
  swift_unknownObjectWeakAssign();
  v130 = v4;
  [v0 setView:v4];
  v5 = [objc_allocWithZone(CRLCanvasView) init];
  v6 = [v5 canvasLayer];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v0;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_10064191C(0, 0, v3, &unk_1014C24D0, v10);

  v11 = *&v8[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
  [v11 setView:v5];
  v12 = *&v8[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView];
  v128 = v5;
  [v12 addSubview:v5];
  v13 = [objc_opt_self() iOSBoardViewControllerScrollViewIdentifier];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  [v12 setAccessibilityIdentifier:v13];

  v14 = *&v8[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  [v11 setInteractiveCanvasController:v14];
  [v14 setLayerHost:v11];
  [v14 setDelegate:v8];
  [v11 setDelegate:v8];
  [v11 setUserDialogPresenter:v8];
  v15 = sub_101012FD4();
  [v15 addModeObserver:v11];

  [v14 setShouldCanvasScrollingSizeGrowToFitBoardContent:1];
  v129 = v6;
  [v6 setUnscaledSize:0 fixFrame:{1000.0, 500.0}];
  [v14 setCreateRepsForOffscreenLayouts:0];
  v16 = [objc_allocWithZone(CRLFreehandDrawingToolkitUIState) init];
  v17 = objc_allocWithZone(CRLFreehandDrawingToolkit);
  v127 = v16;
  v18 = [v17 initWithDelegate:v8 uiState:v16];
  [v14 setFreehandDrawingToolkit:v18];

  v19 = objc_allocWithZone(type metadata accessor for CRLiOSPencilKitCanvasViewController());
  v20 = v8;
  v21 = sub_101050084(v20, v19);
  [v20 addChildViewController:v21];
  [v21 didMoveToParentViewController:v20];
  v22 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController];
  *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController] = v21;
  v23 = v21;

  v126 = v23;
  if (![v23 view])
  {
    __break(1u);
    return;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClassUnconditional();
  v25 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView];
  *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView] = v24;

  v26 = [objc_allocWithZone(UIViewController) initWithNibName:0 bundle:0];
  [v20 addChildViewController:v26];
  [v26 didMoveToParentViewController:v20];
  [v26 setView:v12];
  v27 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasScrollViewController];
  *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasScrollViewController] = v26;
  v28 = v26;

  [v28 addChildViewController:v11];
  [v11 didMoveToParentViewController:v28];
  v125 = v28;

  [v12 setContentInsetAdjustmentBehavior:3];
  v29 = [v14 canvasBackground];
  (*((swift_isaMask & *v29) + 0x80))();

  type metadata accessor for CRLCanvasBackgroundView();
  v30 = swift_dynamicCastMetatype();
  v131 = v14;
  v132 = v12;
  if (!v30)
  {
    v124 = objc_opt_self();
    v41 = [v124 _atomicIncrementAssertCount];
    v133[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v133, "Unable to determine canvas background view class!", 49, 2u);
    StaticString.description.getter("loadView()", 10, 2);
    v123 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v42 = String._bridgeToObjectiveC()();

    v43 = [v42 lastPathComponent];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v47 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v41;
    v49 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v49;
    v50 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v50;
    v51 = v123;
    *(inited + 72) = v123;
    *(inited + 136) = &type metadata for String;
    v52 = sub_1000053B0();
    *(inited + 112) = v44;
    *(inited + 120) = v46;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v52;
    *(inited + 152) = 533;
    v53 = v133[0];
    *(inited + 216) = v49;
    *(inited + 224) = v50;
    *(inited + 192) = v53;
    v54 = v51;
    v55 = v53;
    v56 = static os_log_type_t.error.getter();
    sub_100005404(v47, &_mh_execute_header, v56, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v57 = static os_log_type_t.error.getter();
    sub_100005404(v47, &_mh_execute_header, v57, "Unable to determine canvas background view class!", 49, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v58 = swift_allocObject();
    v58[2] = 8;
    v58[3] = 0;
    v58[4] = 0;
    v58[5] = 0;
    v59 = __VaListBuilder.va_list()();
    StaticString.description.getter("loadView()", 10, 2);
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v61 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unable to determine canvas background view class!", 49, 2);
    v39 = String._bridgeToObjectiveC()();

    [v124 handleFailureInFunction:v60 file:v61 lineNumber:533 isFatal:0 format:v39 args:v59];
    goto LABEL_13;
  }

  v31 = v30;
  v32 = v14;
  [v12 frame];
  v37 = [objc_allocWithZone(v31) initWithFrame:{v33, v34, v35, v36}];
  v38 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundView];
  *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundView] = v37;
  v39 = v37;

  if (!v39)
  {
    v124 = objc_opt_self();
    v62 = [v124 _atomicIncrementAssertCount];
    v133[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v133, "Unable to load canvas background view!", 38, 2u);
    StaticString.description.getter("loadView()", 10, 2);
    v123 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v63 = String._bridgeToObjectiveC()();

    v64 = [v63 lastPathComponent];

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v68 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v69 = swift_initStackObject();
    *(v69 + 16) = xmmword_10146CA70;
    *(v69 + 56) = &type metadata for Int32;
    *(v69 + 64) = &protocol witness table for Int32;
    *(v69 + 32) = v62;
    v70 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v69 + 96) = v70;
    v71 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v69 + 104) = v71;
    v72 = v123;
    *(v69 + 72) = v123;
    *(v69 + 136) = &type metadata for String;
    v73 = sub_1000053B0();
    *(v69 + 112) = v65;
    *(v69 + 120) = v67;
    *(v69 + 176) = &type metadata for UInt;
    *(v69 + 184) = &protocol witness table for UInt;
    *(v69 + 144) = v73;
    *(v69 + 152) = 530;
    v74 = v133[0];
    *(v69 + 216) = v70;
    *(v69 + 224) = v71;
    *(v69 + 192) = v74;
    v75 = v72;
    v76 = v74;
    v77 = static os_log_type_t.error.getter();
    sub_100005404(v68, &_mh_execute_header, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v69);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v78 = static os_log_type_t.error.getter();
    sub_100005404(v68, &_mh_execute_header, v78, "Unable to load canvas background view!", 38, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v79 = swift_allocObject();
    v79[2] = 8;
    v79[3] = 0;
    v79[4] = 0;
    v79[5] = 0;
    v80 = __VaListBuilder.va_list()();
    StaticString.description.getter("loadView()", 10, 2);
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v61 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unable to load canvas background view!", 38, 2);
    v39 = String._bridgeToObjectiveC()();

    [v124 handleFailureInFunction:v60 file:v61 lineNumber:530 isFatal:0 format:v39 args:v80];
LABEL_13:

    v32 = v131;
    v12 = v132;
    goto LABEL_14;
  }

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_snapshotViewWrapper];
  [v40 addSubview:v39];
  [v40 addSubview:v12];
LABEL_14:

  v81 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundView];
  if (!v81)
  {
    goto LABEL_21;
  }

  v82 = [v81 layer];
  if (!v82)
  {
    goto LABEL_21;
  }

  v83 = v82;
  type metadata accessor for CRLCanvasBackgroundLayer();
  v84 = swift_dynamicCastClass();
  if (!v84)
  {

LABEL_21:
    v124 = objc_opt_self();
    v91 = [v124 _atomicIncrementAssertCount];
    v133[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v133, "Unable to load canvas background layer!", 39, 2u);
    StaticString.description.getter("loadView()", 10, 2);
    v123 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v92 = String._bridgeToObjectiveC()();

    v93 = [v92 lastPathComponent];

    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v97 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v98 = swift_initStackObject();
    *(v98 + 16) = xmmword_10146CA70;
    *(v98 + 56) = &type metadata for Int32;
    *(v98 + 64) = &protocol witness table for Int32;
    *(v98 + 32) = v91;
    v99 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v98 + 96) = v99;
    v100 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v98 + 104) = v100;
    v101 = v123;
    *(v98 + 72) = v123;
    *(v98 + 136) = &type metadata for String;
    v102 = sub_1000053B0();
    *(v98 + 112) = v94;
    *(v98 + 120) = v96;
    *(v98 + 176) = &type metadata for UInt;
    *(v98 + 184) = &protocol witness table for UInt;
    *(v98 + 144) = v102;
    *(v98 + 152) = 544;
    v103 = v133[0];
    *(v98 + 216) = v99;
    *(v98 + 224) = v100;
    *(v98 + 192) = v103;
    v104 = v101;
    v105 = v103;
    v106 = static os_log_type_t.error.getter();
    sub_100005404(v97, &_mh_execute_header, v106, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v98);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v107 = static os_log_type_t.error.getter();
    sub_100005404(v97, &_mh_execute_header, v107, "Unable to load canvas background layer!", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v108 = swift_allocObject();
    v108[2] = 8;
    v108[3] = 0;
    v108[4] = 0;
    v108[5] = 0;
    v109 = __VaListBuilder.va_list()();
    StaticString.description.getter("loadView()", 10, 2);
    v110 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v88 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unable to load canvas background layer!", 39, 2);
    v90 = String._bridgeToObjectiveC()();

    [v124 handleFailureInFunction:v110 file:v88 lineNumber:544 isFatal:0 format:v90 args:v109];

    v89 = v129;
    v32 = v131;
    v12 = v132;
    goto LABEL_24;
  }

  v85 = v84;
  v84[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] = 0;
  [v84 setNeedsLayout];
  *&v85[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale] = 0x3FF0000000000000;
  v86 = OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled;
  if (v85[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1)
  {
    [v85 setNeedsLayout];
  }

  swift_unknownObjectWeakAssign();
  v85[v86] = 1;
  [v85 setNeedsLayout];
  v87 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundLayer];
  *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundLayer] = v85;
  v88 = v83;

  v89 = v129;
  [v129 setAssociatedBackgroundLayer:v85];
  v90 = v88;
LABEL_24:

  v111 = *(*&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  sub_100EB8D4C();

  sub_1005B981C(&qword_1019F5720, &unk_101474E20);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 setInfosToDisplay:isa];

  v113 = sub_101012B64();
  v114 = [*&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_selectionModelTranslator] selectionPathForInfos:0];
  [v113 setSelectionPath:v114];

  v115 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray;
  v116 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray];
  if (v116)
  {
    v117 = v116;
    sub_100F08C7C();
  }

  v118 = sub_101023BFC();
  v119 = *&v20[v115];
  *&v20[v115] = v118;

  sub_1010259A4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v121 = Strong;
  }

  else
  {
    v121 = [objc_allocWithZone(UIFindInteraction) initWithSessionDelegate:v20];
    [v12 addInteraction:v121];

    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_10101853C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1010185EC;

  return sub_101016B0C();
}

uint64_t sub_1010185EC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101018728, v1, v0);
}

uint64_t sub_101018728()
{
  v1 = *(v0 + 16);

  v2 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v4 = v2;
  v5 = [v3 versionFidelityAlertWasShown];
  v6 = sub_10001FF1C();
  v7 = sub_100EC7A40();

  if (v6 < v7 && v6 != v5)
  {
    sub_10101EDB0();
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_10101884C()
{
  v1 = v0;
  swift_getObjectType();
  v60.receiver = v0;
  v60.super_class = type metadata accessor for CRLiOSBoardViewController(0);
  objc_msgSendSuper2(&v60, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
    v5 = [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] canvasView];
    if (v5)
    {
      v6 = v5;
      v7 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView];
      if (v7)
      {
        v8 = v7;
        v9 = [v4 canvasLayer];
        if (v9)
        {
          v10 = v9;
          [v4 viewDidLoad];
          v11 = [v1 navigationItem];
          sub_100006760(&qword_101A28740, type metadata accessor for CRLiOSBoardViewController, byte_10146F83C);
          swift_unknownObjectRetain();
          UINavigationItem.renameDelegate.setter();

          v12 = objc_opt_self();
          v13 = [v12 whiteColor];
          [v3 setBackgroundColor:v13];

          [v10 setAllowsPinchZoom:1];
          v14 = v10;
          v15 = [v12 clearColor];
          v16 = [v15 CGColor];

          [v14 setBackgroundColor:v16];
          v57 = v14;

          v17 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView];
          v18 = [v12 clearColor];
          [v17 setBackgroundColor:v18];

          [v17 setIndicatorStyle:1];
          [v17 setDecelerationRate:UIScrollViewDecelerationRateFast];
          [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
          v19 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_snapshotViewWrapper];
          [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v3 addSubview:v19];
          v20 = sub_1010136C0();
          [v3 addSubview:v20];

          v21 = sub_1010136A8();
          [v3 addSubview:v21];

          v22 = sub_1010136B4();
          [v3 addSubview:v22];

          [v3 addSubview:v8];
          isa = [v19 crl_constraintsToAllSidesOfItem:v17];
          if (!isa)
          {
            sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            isa = Array._bridgeToObjectiveC()().super.isa;
          }

          v24 = objc_opt_self();
          [v24 activateConstraints:isa];

          v25 = [v3 crl_constraintsToAllSidesOfItem:v19];
          if (!v25)
          {
            sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = Array._bridgeToObjectiveC()().super.isa;
          }

          [v24 activateConstraints:{v25, v57}];

          v26 = [v3 crl_constraintsToAllSidesOfItem:*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___sceneNavigationSnapshotHostingView]];
          if (!v26)
          {
            sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = Array._bridgeToObjectiveC()().super.isa;
          }

          [v24 activateConstraints:v26];

          v27 = [v3 crl_constraintsToAllSidesOfItem:*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___bottomSceneCaptureSnapshotHostingView]];
          if (!v27)
          {
            sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = Array._bridgeToObjectiveC()().super.isa;
          }

          [v24 activateConstraints:v27];

          v28 = [v3 crl_constraintsToAllSidesOfItem:*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___topSceneCaptureSnapshotHostingView]];
          if (!v28)
          {
            sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v28 = Array._bridgeToObjectiveC()().super.isa;
          }

          [v24 activateConstraints:v28];

          sub_1010196BC();
          v29 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundView];
          if (v29)
          {
            v30 = v29;
            v31 = [v3 crl_constraintsToAllSidesOfItem:v30];
            if (!v31)
            {
              sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
              static Array._unconditionallyBridgeFromObjectiveC(_:)();
              v31 = Array._bridgeToObjectiveC()().super.isa;
            }

            [v24 activateConstraints:v31];
          }

          [v17 setScrollsToTop:0];
          v32 = [objc_opt_self() defaultCenter];
          if (qword_1019F2748 != -1)
          {
            swift_once();
          }

          [v32 addObserver:v1 selector:? name:? object:?];

          sub_100006370(0, &qword_1019F66C0, UITraitCollection_ptr);
          static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
          UIViewController.registerForTraitChanges<A>(_:handler:)();
          swift_unknownObjectRelease();

          sub_1005B981C(&unk_101A150B0, &qword_10146F280);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_10146BDE0;
          *(v33 + 32) = type metadata accessor for UITraitVerticalSizeClass();
          *(v33 + 40) = &protocol witness table for UITraitVerticalSizeClass;
          *(v33 + 48) = type metadata accessor for UITraitHorizontalSizeClass();
          *(v33 + 56) = &protocol witness table for UITraitHorizontalSizeClass;
          UIViewController.registerForTraitChanges<A>(_:handler:)();

          swift_unknownObjectRelease();

          return;
        }

        v3 = v6;
      }

      else
      {
        v8 = v5;
      }

      v3 = v8;
    }
  }

  v34 = objc_opt_self();
  v35 = [v34 _atomicIncrementAssertCount];
  v59 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v59, "Unable to load view hierarchy!", 30, 2u);
  StaticString.description.getter("viewDidLoad()", 13, 2);
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v37 = String._bridgeToObjectiveC()();

  v38 = [v37 lastPathComponent];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v42 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v35;
  v44 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v44;
  v45 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v45;
  *(inited + 72) = v36;
  *(inited + 136) = &type metadata for String;
  v46 = sub_1000053B0();
  *(inited + 112) = v39;
  *(inited + 120) = v41;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v46;
  *(inited + 152) = 572;
  v47 = v59;
  *(inited + 216) = v44;
  *(inited + 224) = v45;
  *(inited + 192) = v47;
  v48 = v36;
  v49 = v47;
  v50 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v51 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v51, "Unable to load view hierarchy!", 30, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v52 = swift_allocObject();
  v52[2] = 8;
  v52[3] = 0;
  v52[4] = 0;
  v52[5] = 0;
  v53 = __VaListBuilder.va_list()();
  StaticString.description.getter("viewDidLoad()", 13, 2);
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
  v55 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unable to load view hierarchy!", 30, 2);
  v56 = String._bridgeToObjectiveC()();

  [v34 handleFailureInFunction:v54 file:v55 lineNumber:572 isFatal:0 format:v56 args:v53];
}

void sub_1010193C0()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A28650, &unk_101477C40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(*(*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v7 = type metadata accessor for CRLBoardCRDTData(0);
  (*(v3 + 16))(v5, v6 + *(v7 + 36), v2);
  v8 = CROrderedSet.count.getter();
  (*(v3 + 8))(v5, v2);
  v9 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
  if (v9[OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState_isAnimatingToScene])
  {
LABEL_4:
    v10 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
    v11 = 0;
    goto LABEL_5;
  }

  if (v8 != 1)
  {
    if (v8)
    {
      v10 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
      v11 = 1;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v19 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v19;
  v20 = v9;
  static Published.subscript.getter();

  v21 = v22;
  if (v22)
  {
  }

  v11 = v21 == 0;
LABEL_5:
  sub_10091FF38(v11);

  v12 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState;
  v13 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
  v14 = [v1 traitCollection];
  v15 = [v14 crl_isCompactWidth];

  sub_10091FDBC(v15);
  v16 = *&v1[v12];
  v17 = objc_opt_self();
  v18 = v16;
  sub_10091FDE4([v17 crl_landscapePhoneUI]);
}

void sub_1010196BC()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView];
  if (!v1)
  {
    v36 = objc_opt_self();
    v37 = [v36 _atomicIncrementAssertCount];
    v56 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v56, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("updatePencilKitCanvasViewConstraints()", 38, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v37;
    v46 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v46;
    v47 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v47;
    *(inited + 72) = v38;
    *(inited + 136) = &type metadata for String;
    v48 = sub_1000053B0();
    *(inited + 112) = v41;
    *(inited + 120) = v43;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v48;
    *(inited + 152) = 627;
    v49 = v56;
    *(inited + 216) = v46;
    *(inited + 224) = v47;
    *(inited + 192) = v49;
    v50 = v38;
    v51 = v49;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v53, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v54 = swift_allocObject();
    v54[2] = 8;
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = 0;
    v55 = __VaListBuilder.va_list()();
    StaticString.description.getter("updatePencilKitCanvasViewConstraints()", 38, 2);
    v35.super.isa = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v28 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v35.super.isa file:v32 lineNumber:627 isFatal:0 format:v28 args:v55];

    goto LABEL_21;
  }

  v2 = v0;
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewConstraints;
  swift_beginAccess();
  sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);

  v5 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 deactivateConstraints:isa];

  *&v2[v4] = _swiftEmptyArrayStorage;

  v7 = v5;
  v8 = [v2 view];
  if (!v8)
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

  v9 = v8;
  type metadata accessor for CRLiOSBoardView();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = v7;
  v12 = [v3 constraintWithItem:v11 attribute:1 relatedBy:0 toItem:v10 attribute:1 multiplier:1.0 constant:0.0];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v13 = v11;
  v14 = [v2 view];
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  v16 = swift_dynamicCastClassUnconditional();
  v17 = v13;
  v18 = [v3 constraintWithItem:v17 attribute:2 relatedBy:0 toItem:v16 attribute:2 multiplier:1.0 constant:0.0];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v19 = v17;
  v20 = [v2 view];
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = v20;
  v22 = swift_dynamicCastClassUnconditional();
  v23 = v19;
  v24 = [v3 constraintWithItem:v23 attribute:3 relatedBy:0 toItem:v22 attribute:3 multiplier:1.0 constant:0.0];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v25 = [v2 view];
  if (!v25)
  {
    goto LABEL_25;
  }

  v26 = v25;
  v27 = [v25 window];

  v28 = v27;
  if (v27)
  {
LABEL_15:
    v32 = v23;
    v33 = v27;
    v34 = [v3 constraintWithItem:v32 attribute:4 relatedBy:0 toItem:v28 attribute:4 multiplier:1.0 constant:0.0];

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 activateConstraints:v35.super.isa];
LABEL_21:

    return;
  }

  v29 = [v2 view];
  if (v29)
  {
    v30 = v29;
    v28 = swift_dynamicCastClassUnconditional();
    v31 = v30;
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
}

void sub_101019FA0(char a1)
{
  v2 = v1;
  v40.receiver = v2;
  v40.super_class = type metadata accessor for CRLiOSBoardViewController(0);
  objc_msgSendSuper2(&v40, "viewWillAppear:", a1 & 1);
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  v6 = [v5 isRunningTest];

  if (v6)
  {
    v7 = [v4 sharedApplication];
    v8 = [v7 delegate];

    if (!v8)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    swift_unknownObjectRelease();
    v9 = qword_101AD75D0;
    if (qword_101AD75D0)
    {
      v10 = qword_101AD75E0;
      ObjectType = swift_getObjectType();
      v39[0] = v9;
      v12 = *(v10 + 24);
      swift_unknownObjectRetain();
      v12(v2, ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }

  if (_UISolariumEnabled())
  {
    goto LABEL_12;
  }

  v13 = [v2 navigationController];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 navigationBar];
  v16 = [v15 standardAppearance];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = [v17 clearColor];
  [v18 setShadowColor:v20];

  [v15 setStandardAppearance:v18];
  [v15 setScrollEdgeAppearance:v18];
  v21 = [v14 toolbar];
  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = v21;
  v23 = [v21 standardAppearance];

  v24 = v23;
  v25 = [v17 systemBackgroundColor];
  [v24 setBackgroundColor:v25];

  v26 = [v17 clearColor];
  [v24 setShadowColor:v26];

  v27 = [v14 toolbar];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  [v27 setStandardAppearance:v24];

  v29 = [v14 toolbar];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  [v29 setScrollEdgeAppearance:v24];

  v31 = [v14 toolbar];
  if (!v31)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v32 = v31;
  [v31 setTranslucent:0];

LABEL_12:
  sub_10101D2F8();
  sub_1006632BC();
  v33 = [objc_opt_self() defaultCenter];
  if (qword_1019F16E8 != -1)
  {
    swift_once();
  }

  [v33 addObserver:v2 selector:? name:? object:?];

  v34 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  [v34 updateCanvasDotGridVisibilityIfNeeded];
  v39[3] = &type metadata for CRLFeatureFlags;
  v39[4] = sub_100004D60();
  LOBYTE(v39[0]) = 10;
  v35 = isFeatureEnabled(_:)();
  sub_100005070(v39);
  if (v35)
  {
    v36 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
    if (v36)
    {
      v37 = v36;
      sub_100ACD8C0(0);
    }
  }

  v38 = [v2 traitCollection];
  sub_10067AD3C(v38, [v34 documentIsSharedReadOnly]);
}

void sub_10101A4F0(char a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v164 = v144 - v5;
  v6 = sub_1005B981C(&qword_1019FB7D8, &qword_10147D190);
  __chkstk_darwin(v6 - 8);
  v160 = v144 - v7;
  v8 = sub_1005B981C(&unk_1019FB7E0, &unk_101474E60);
  __chkstk_darwin(v8 - 8);
  v153 = v144 - v9;
  v10 = sub_1005B981C(&unk_101A19AE0, &qword_1014C2440);
  v151 = *(v10 - 8);
  v152 = v10;
  __chkstk_darwin(v10);
  v150 = (v144 - v11);
  v12 = sub_1005B981C(&qword_101A28770, &qword_1014C2448);
  v155 = *(v12 - 8);
  v156 = v12;
  __chkstk_darwin(v12);
  v154 = v144 - v13;
  v14 = sub_1005B981C(&qword_101A28778, &unk_1014C2450);
  v158 = *(v14 - 8);
  v159 = v14;
  __chkstk_darwin(v14);
  v157 = v144 - v15;
  v16 = sub_1005B981C(&qword_101A28780, &qword_1014BD030);
  v148 = *(v16 - 8);
  v149 = v16;
  __chkstk_darwin(v16);
  v147 = v144 - v17;
  v18 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v18 - 8);
  v162 = v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  __chkstk_darwin(v20 - 8);
  v161 = v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v22 - 8);
  v166 = v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CRLiOSBoardViewController(0);
  v171.receiver = v2;
  v171.super_class = v24;
  v163 = v24;
  objc_msgSendSuper2(&v171, "viewDidAppear:", a1 & 1);
  v25 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  [v25 setupTextInputResponder];
  v26 = objc_opt_self();
  v27 = [v26 sharedApplication];
  v28 = [v27 delegate];

  if (!v28)
  {
    __break(1u);
    goto LABEL_32;
  }

  type metadata accessor for CRLiOSAppDelegate();
  v29 = swift_dynamicCastClassUnconditional();
  v30 = [v26 sharedApplication];
  if ([v30 shouldRecordExtendedLaunchTime] && (v31 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime, (*(v29 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime) & 1) == 0))
  {
    v32 = [v30 _launchTestName];
    [v30 finishedTest:v32];

    *(v29 + v31) = 1;
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v33 = [v26 sharedApplication];
  v34 = [v33 isRunningTest];

  if (v34)
  {
    v35 = [v26 sharedApplication];
    v36 = [v35 delegate];

    if (v36)
    {
      swift_unknownObjectRelease();
      v37 = qword_101AD75D0;
      if (qword_101AD75D0)
      {
        v38 = qword_101AD75E0;
        ObjectType = swift_getObjectType();
        v167[0] = v37;
        v40 = *(v38 + 32);
        swift_unknownObjectRetain();
        v40(v2, ObjectType, v38);
        swift_unknownObjectRelease();
      }

      goto LABEL_10;
    }

LABEL_32:
    __break(1u);
    return;
  }

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v167[0] = v25;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = v25;
    v44 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v45 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_viewScaleObservation];
    *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_viewScaleObservation] = v44;

    v46 = [objc_opt_self() defaultCenter];
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v169 = sub_10105AE80;
    v170 = v47;
    v167[0] = _NSConcreteStackBlock;
    v167[1] = *"";
    v167[2] = sub_100059694;
    v168 = &unk_1018AF060;
    v48 = _Block_copy(v167);

    v165 = v43;
    v49 = [v46 addObserverForName:@"CRLCanvasUpdateScrollNotification" object:v43 queue:0 usingBlock:v48];
    _Block_release(v48);

    v168 = swift_getObjectType();
    v167[0] = v49;
    v50 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollObserver;
    swift_beginAccess();
    sub_10002C638(v167, &v2[v50], &unk_1019F4D00, &unk_10146E7F0);
    swift_endAccess();
    v51 = *&v42[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers];
    if (([v51 containsObject:v2] & 1) == 0)
    {
      [v51 addObject:v2];
    }

    v52 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
    v53 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
    v54 = *(v52 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v55 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v56 = *&v54[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v57 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v58 = v56 + v57;
    v59 = v162;
    sub_100050004(v58, v162, type metadata accessor for CRLBoardCRDTData);
    v60 = v54;
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    v61 = v161;
    CRRegister.wrappedValue.getter();
    sub_10003D7BC(v59, type metadata accessor for CRLBoardCRDTData);
    v62 = (*&v54[v55] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v63 = *v62;
    v64 = v62[1];

    v65 = v166;
    sub_10084BD4C(v61, v63, v64, v166);

    v66 = sub_1010BBCA0(v65);
    [v165 updateCanvasDotGridVisibilityIfNeeded];
    v168 = &type metadata for CRLFeatureFlags;
    v67 = sub_100004D60();
    v169 = v67;
    LOBYTE(v167[0]) = 10;
    LOBYTE(v63) = isFeatureEnabled(_:)();
    sub_100005070(v167);
    if (v63)
    {
      v68 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
      if (v68)
      {
        v69 = v68;
        sub_100ACD8C0(0);
      }
    }

    v162 = v53;
    v70 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController];
    if (v70)
    {
      v71 = v70;
      sub_100FA1294();
    }

    v72 = [v2 traitCollection];
    sub_100642864(v72, [v165 documentIsSharedReadOnly], v172);
    sub_100642CDC(v172, 1);
    sub_1005EB2D4(v172);

    v168 = &type metadata for CRLFeatureFlags;
    v169 = v67;
    LOBYTE(v167[0]) = 20;
    v73 = isFeatureEnabled(_:)();
    sub_100005070(v167);
    v74 = [v2 traitCollection];
    v75 = v74;
    if (v73)
    {
      v146 = v67;
      sub_1010309F0(v74);

      sub_101032280();
      v76 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
      swift_beginAccess();
      v77 = v76;
      sub_1005B981C(&unk_101A08DC0, &unk_101474840);
      v78 = v147;
      Published.projectedValue.getter();
      swift_endAccess();

      v79 = swift_allocObject();
      *(v79 + 16) = v2;
      *(v79 + 24) = v42;
      sub_10001A2F8(&qword_101A28788, &qword_101A28780, &qword_1014BD030, &protocol conformance descriptor for Published<A>.Publisher);
      v80 = v2;
      v161 = v42;
      v81 = v42;
      v82 = v149;
      Publisher<>.sink(receiveValue:)();

      (*(v148 + 8))(v78, v82);
      v148 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_subscriptions;
      v145 = v80;
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v149 = v52;
      v167[0] = *(*(v52 + v162) + OBJC_IVAR____TtC8Freeform8CRLBoard_changeSummaryPublisher);
      v147 = v167[0];
      sub_1005B981C(&qword_101A19B40, &qword_101474E90);
      v144[1] = sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);

      v83 = static OS_dispatch_queue.main.getter();
      v84 = v150;
      *v150 = v83;
      static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
      v86 = v151;
      v85 = v152;
      (*(v151 + 104))(v84, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v152);
      v87 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v88 = v153;
      (*(*(v87 - 8) + 56))(v153, 1, 1, v87);
      sub_1005B981C(&qword_101A12970, &unk_1014B7610);
      sub_10001A2F8(&qword_101A28790, &qword_101A12970, &unk_1014B7610, &protocol conformance descriptor for PassthroughSubject<A, B>);
      sub_10000FDE0(&qword_1019FB828, &qword_1019F2D90, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
      v89 = v154;
      Publisher.collect<A>(_:options:)();
      sub_10000CAAC(v88, &unk_1019FB7E0, &unk_101474E60);
      (*(v86 + 8))(v84, v85);

      v90 = [objc_opt_self() mainRunLoop];
      v167[0] = v90;
      v91 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v92 = v160;
      (*(*(v91 - 8) + 56))(v160, 1, 1, v91);
      sub_100006370(0, &qword_1019FB830, NSRunLoop_ptr);
      sub_10001A2F8(&unk_101A28798, &qword_101A28770, &qword_1014C2448, &protocol conformance descriptor for Publishers.CollectByTime<A, B>);
      sub_10000FDE0(&qword_1019FB840, &qword_1019FB830, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
      v93 = v156;
      v94 = v157;
      Publisher.receive<A>(on:options:)();
      sub_10000CAAC(v92, &qword_1019FB7D8, &qword_10147D190);

      (*(v155 + 8))(v89, v93);
      swift_allocObject();
      v95 = v145;
      swift_unknownObjectWeakInit();
      sub_10001A2F8(&qword_101A287A8, &qword_101A28778, &unk_1014C2450, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v96 = v159;
      Publisher<>.sink(receiveValue:)();

      (*(v158 + 8))(v94, v96);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v97 = sub_101066A04();
      v98 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
      v99 = *&v95[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
      swift_getKeyPath();
      swift_getKeyPath();
      v167[0] = v97;
      v100 = v97;
      v101 = v99;
      v102 = v95;
      static Published.subscript.setter();
      sub_1010193C0();

      v103 = *&v95[v98];
      swift_getKeyPath();
      swift_getKeyPath();
      v104 = v103;
      static Published.subscript.getter();

      v105 = v167[0];
      if (v167[0] && (v106 = *&v95[v98], swift_getKeyPath(), swift_getKeyPath(), v107 = v106, static Published.subscript.getter(), , , v107, v108 = sub_10100F338(v105, v167[0], type metadata accessor for CRLSceneInfo), LOBYTE(v107) = v109, v105, , (v107 & 1) == 0))
      {
        v133 = &v102[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex];
        *v133 = v108;
        v133[8] = 0;
      }

      else
      {
        sub_1010193C0();
      }

      v42 = v161;
      v132 = v162;
      v52 = v149;
      v67 = v146;
    }

    else
    {
      sub_101031D9C(v74);

      v132 = v162;
    }

    v168 = &type metadata for CRLFeatureFlags;
    v169 = v67;
    LOBYTE(v167[0]) = 10;
    v134 = isFeatureEnabled(_:)();
    sub_100005070(v167);
    if (v134)
    {
      v135 = [v2 traitCollection];
      sub_1010326E8(v135);

      sub_101032B94();
    }

    v136 = type metadata accessor for TaskPriority();
    v137 = v164;
    (*(*(v136 - 8) + 56))(v164, 1, 1, v136);
    type metadata accessor for MainActor();
    v138 = v2;
    v139 = static MainActor.shared.getter();
    v140 = swift_allocObject();
    v140[2] = v139;
    v140[3] = &protocol witness table for MainActor;
    v140[4] = v138;
    sub_10064191C(0, 0, v137, &unk_1014C2490, v140);

    [objc_opt_self() addKeyboardObserver:v138];
    sub_10101D0E4(1);
    sub_10065A048();
    sub_1005B981C(&unk_101A150B0, &qword_10146F280);
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_10146BDE0;
    *(v141 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v141 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v141 + 48) = type metadata accessor for UITraitVerticalSizeClass();
    *(v141 + 56) = &protocol witness table for UITraitVerticalSizeClass;
    v168 = v163;
    v167[0] = v138;
    v142 = v138;
    v143 = UIViewController.registerForTraitChanges(_:target:action:)();

    sub_100005070(v167);
    *&v142[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_traitChangeRegistration] = v143;
    swift_unknownObjectRelease();
    *(*&v142[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_cloudQuotaMessagingObserver] + 24) = &off_1018ADDE8;
    swift_unknownObjectWeakAssign();
    [*(v52 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_changeNotifier) addObserver:v142 forChangeSource:{*(v52 + v132), sub_100C857AC()}];
    sub_10101DAB8(1);

    sub_10003D7BC(v166, type metadata accessor for CRLBoardIdentifier);
  }

  else
  {
    v166 = objc_opt_self();
    v110 = [v166 _atomicIncrementAssertCount];
    v167[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v167, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("viewDidAppear(_:)", 17, 2);
    v111 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v112 = String._bridgeToObjectiveC()();

    v113 = [v112 lastPathComponent];

    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v117 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v110;
    v119 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v119;
    v120 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v120;
    *(inited + 72) = v111;
    *(inited + 136) = &type metadata for String;
    v121 = sub_1000053B0();
    *(inited + 112) = v114;
    *(inited + 120) = v116;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v121;
    *(inited + 152) = 725;
    v122 = v167[0];
    *(inited + 216) = v119;
    *(inited + 224) = v120;
    *(inited + 192) = v122;
    v123 = v111;
    v124 = v122;
    v125 = static os_log_type_t.error.getter();
    sub_100005404(v117, &_mh_execute_header, v125, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v126 = static os_log_type_t.error.getter();
    sub_100005404(v117, &_mh_execute_header, v126, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v127 = swift_allocObject();
    v127[2] = 8;
    v127[3] = 0;
    v127[4] = 0;
    v127[5] = 0;
    v128 = __VaListBuilder.va_list()();
    StaticString.description.getter("viewDidAppear(_:)", 17, 2);
    v129 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v130 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v131 = String._bridgeToObjectiveC()();

    [v166 handleFailureInFunction:v129 file:v130 lineNumber:725 isFatal:0 format:v131 args:v128];
  }
}

uint64_t sub_10101BC2C(char *a1, void *a2, void *a3)
{
  v6 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = *a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a3;
  *(v11 + 40) = a2;
  *(v11 + 48) = v9;
  v12 = a3;
  v13 = a2;
  sub_100CA6768(0, 0, v8, &unk_1014C24B8, v11);

  return sub_10000CAAC(v8, &qword_1019FB750, &qword_10146F1B0);
}

uint64_t sub_10101BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 140) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 40) = a1;
  type metadata accessor for CRLBoardCRDTData(0);
  *(v6 + 64) = swift_task_alloc();
  type metadata accessor for UUID();
  *(v6 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10101BE34, 0, 0);
}

uint64_t sub_10101BE34()
{
  sub_1005B981C(&qword_101A28700, &unk_101494A70);
  v1 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  *(v0 + 80) = v1;
  *(v0 + 136) = *(*(v1 - 8) + 80);
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = xmmword_10146C6B0;
  type metadata accessor for MainActor();
  *(v0 + 96) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10101BF60, v4, v3);
}

uint64_t sub_10101BF60()
{
  v1 = *(v0 + 56);

  v2 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  *(v0 + 104) = v2;
  v3 = v2;

  return _swift_task_switch(sub_10101BFF4, 0, 0);
}

uint64_t sub_10101BFF4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v16 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 140);
  v6 = v2 + ((*(v0 + 136) + 32) & ~*(v0 + 136));
  v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v8 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v8 + v9, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v3, type metadata accessor for CRLBoardCRDTData);
  v10 = (*&v1[v7] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v11 = *v10;
  v12 = v10[1];

  sub_10084BD4C(v4, v11, v12, v6);

  *(v6 + *(v16 + 20)) = v5;
  v13 = sub_1005BFFE8(v2);
  *(v0 + 112) = v13;
  swift_setDeallocating();
  sub_10003D7BC(v6, type metadata accessor for CRLBoardIdentifierAndValue);
  swift_deallocClassInstance();
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_10101C1DC;

  return sub_1010BC334(v13);
}

uint64_t sub_10101C1DC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_10105B430;
  }

  else
  {

    v2 = sub_10101C324;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10101C324()
{
  **(v0 + 40) = *(v0 + 128) != 0;

  v1 = *(v0 + 8);

  return v1();
}

double sub_10101C3A0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = *a1;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v7;
  v10[5] = a2;
  sub_10064191C(0, 0, v6, &unk_1014C24A0, v10);

  return result;
}

uint64_t sub_10101C4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return _swift_task_switch(sub_10101C56C, v7, v6);
}

uint64_t sub_10101C56C()
{
  v1 = sub_1012CE88C(v0[8]);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v0[13] = v1;
  v0[14] = v2;
  v0[15] = v4;
  v0[16] = v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_10101C75C;

    return sub_10101CB4C(v1, v3, v5, v7);
  }

  else
  {

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v11;
    if (v11)
    {
      v12 = swift_task_alloc();
      v0[20] = v12;
      *v12 = v0;
      v12[1] = sub_10101CA0C;

      return sub_10101DFF8();
    }

    else
    {

      v13 = v0[1];

      return v13();
    }
  }
}

uint64_t sub_10101C75C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_10101C91C, v4, v3);
}

uint64_t sub_10101C91C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_10101CA0C;

    return sub_10101DFF8();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10101CA0C()
{
  v1 = *v0;
  v2 = *(*v0 + 152);

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_100CEC2A0, v4, v3);
}

uint64_t sub_10101CB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return _swift_task_switch(sub_10101CBEC, v7, v6);
}

uint64_t sub_10101CBEC()
{
  v24 = v0;
  v1 = _swiftEmptySetSingleton;
  v2 = _swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[6];
    v6 = v0[7];
    v0[2] = v2;
    v0[3] = v1;
    v1 = 0;
    sub_10100ED2C(v5);
    sub_10100ED2C(v3);
    sub_10100ED2C(v6);
    v7 = *(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    static Published.subscript.getter();

    v9 = v0[4];
    v10 = v9 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v0[9];

    v12 = v11;
    if (!v10)
    {
      break;
    }

    v13 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(v9 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = v0[9];
      v18 = v0[5];
      v23[0] = v14;
      sub_1010523F8(v23, v18, v17, v0 + 2, v0 + 3);

      ++v13;
      if (v16 == v10)
      {
        v2 = v0[2];
        v19 = v0[9];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1005C1D24(_swiftEmptyArrayStorage);
      v2 = v22;
    }

    else
    {
      v2 = _swiftEmptySetSingleton;
    }
  }

  v19 = v12;
LABEL_14:
  v0[13] = v2;

  sub_101048558(v2);
  v20 = swift_task_alloc();
  v0[14] = v20;
  *v20 = v0;
  v20[1] = sub_10101CEA4;

  return sub_1010250B8(v2);
}

uint64_t sub_10101CEA4()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_10101CFC4, v3, v2);
}

uint64_t sub_10101CFC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10101D038()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10007EE50;

  return sub_10101E5FC();
}

void sub_10101D0E4(char a1)
{
  v3 = [objc_opt_self() sharedKeyboardMonitor];
  [v3 keyboardFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = sub_1010462B8(v5, v7, v9, v11);
  v13 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_keyboardTopEdgeLayoutGuideConstraint;
  v14 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_keyboardTopEdgeLayoutGuideConstraint];
  if (!v14)
  {
LABEL_9:
    v22 = [v1 view];
    if (v22)
    {
      v23 = v22;
      [v22 setNeedsUpdateConstraints];

      v20 = [v1 view];
      if (v20)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v15 = v12;
  [v14 constant];
  v17 = v16;
  v12 = -v15;
  if (v17 != -v15)
  {
LABEL_7:
    v21 = *(v13 + v1);
    if (v21)
    {
      [v21 setConstant:?];
    }

    goto LABEL_9;
  }

  if ((a1 & 1) == 0)
  {
    return;
  }

  v13 = &selRef_tailLineEndAngle;
  v18 = [v1 view];
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  [v18 setNeedsUpdateConstraints];

  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v24 = v20;
  [v20 setNeedsLayout];
}

void sub_10101D2F8()
{
  if (qword_1019F20C8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlStatusHUD;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLiOSBoardViewController(0);
  *(inited + 64) = sub_100006760(&qword_101A28710, type metadata accessor for CRLiOSBoardViewController, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v0;
  v3 = v0;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v4, "setupStatusHUDView: self: %p", 28, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10101D51C(v5);
  v6 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_statusHUDManager;
  v7 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_statusHUDManager];
  v8 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  v9 = *&v7[v8];
  *&v7[v8] = v5;
  v10 = v5;
  v11 = v7;

  v12 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  if (v11[v12] == 1)
  {
    sub_10106EB14();
  }

  v13 = *&v3[v6];
  v14 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  v13[v14] = 1;
  v15 = v13;
  sub_10106EB14();
}

void sub_10101D51C(void *a1)
{
  v2 = v1;
  v4 = [v1 viewIfLoaded];
  if (v4)
  {
  }

  else
  {
    v41 = objc_opt_self();
    v5 = [v41 _atomicIncrementAssertCount];
    v42 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v42, "Adding collaboration notification view too early.", 49, 2u);
    StaticString.description.getter("addStatusHUDView(statusHUDView:)", 32, 2);
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v13;
    *(inited + 72) = v40;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v39;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 823;
    v15 = v42;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v40;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Adding collaboration notification view too early.", 49, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("addStatusHUDView(statusHUDView:)", 32, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSBoardViewController.swift", 95, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Adding collaboration notification view too early.", 49, 2);
    v24 = String._bridgeToObjectiveC()();

    [v41 handleFailureInFunction:v22 file:v23 lineNumber:823 isFatal:0 format:v24 args:v21];
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints:{0, v39}];
  v25 = [v2 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_11;
  }

  v26 = v25;
  [v25 addSubview:a1];

  v27 = [a1 topAnchor];
  v28 = [v2 view];
  if (!v28)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v29 = v28;
  v30 = [v28 safeAreaLayoutGuide];

  v31 = [v30 topAnchor];
  v32 = [v27 constraintEqualToAnchor:v31];

  [v32 setActive:1];
  v33 = [a1 trailingAnchor];
  v34 = [v2 view];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 safeAreaLayoutGuide];

    v37 = [v36 trailingAnchor];
    v38 = [v33 constraintEqualToAnchor:v37];

    [v38 setActive:1];
    return;
  }

LABEL_12:
  __break(1u);
}

double sub_10101DAB8(char a1)
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s5BoardVMa(0);
  __chkstk_darwin(v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v40[3] = &type metadata for CRLFeatureFlags;
  v40[4] = sub_100004D60();
  LOBYTE(v40[0]) = 1;
  v18 = isFeatureEnabled(_:)();
  sub_100005070(v40);
  if (v18)
  {
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    type metadata accessor for MainActor();
    v21 = v1;
    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v21;
    sub_10064191C(0, 0, v17, &unk_1014C2340, v23);

    if (a1)
    {
      if (!*&v21[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker])
      {
        return result;
      }

      sub_10074E09C(v24);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v26 = *(*&v21[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard), v39 = OBJC_IVAR____TtC8Freeform8CRLBoard_data, v27 = *&v26[OBJC_IVAR____TtC8Freeform8CRLBoard_data], v28 = Strong, v29 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, swift_beginAccess(), v30 = v27 + v29, v31 = v28, sub_100050004(v30, v5, type metadata accessor for CRLBoardCRDTData), v32 = v26, sub_1005B981C(&unk_1019F5250, &qword_101470FB0), CRRegister.wrappedValue.getter(), sub_10003D7BC(v5, type metadata accessor for CRLBoardCRDTData), v33 = (*&v26[v39] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName), v34 = *v33, v35 = v33[1], , sub_10084BD4C(v8, v34, v35, v11), v32, sub_1010AB99C(v11, v14), sub_10003D7BC(v11, type metadata accessor for CRLBoardIdentifier), v31, v36 = v14[*(v12 + 52)], sub_10003D7BC(v14, _s5BoardVMa), v36 == 1))
      {
        if (!*&v21[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker])
        {
          return result;
        }

        sub_10074E904();
      }

      else
      {
        if (!*&v21[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker])
        {
          return result;
        }

        sub_10074E22C(v37);
      }
    }
  }

  return result;
}

uint64_t sub_10101DF4C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1005F1164;

  return sub_10101DFF8();
}

uint64_t sub_10101DFF8()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10101E090, v3, v2);
}

uint64_t sub_10101E090()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_stateRestorationHelper);
  v0[6] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_10101E254, v1, 0);
  }

  else
  {

    v2 = v0[2];
    v3 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    [v3 viewScale];
    v4 = [v3 canvas];
    [v4 unscaledRectOfLayouts];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    if (*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker))
    {
      v13 = *(*(v0[2] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);

      v14 = v13;
      v20.origin.x = v6;
      v20.origin.y = v8;
      v20.size.width = v10;
      v20.size.height = v12;
      Height = CGRectGetHeight(v20);
      v21.origin.x = v6;
      v21.origin.y = v8;
      v21.size.width = v10;
      v21.size.height = v12;
      Width = CGRectGetWidth(v21);
      sub_10074E3CC(Height, Width, v14);
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_10101E254()
{
  if (*(v0[6] + 144) == 1)
  {

    v1 = v0[4];
    v2 = v0[5];

    return _swift_task_switch(sub_10101E4A0, v1, v2);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_10101E32C;

    return sub_1007528DC();
  }
}

uint64_t sub_10101E32C()
{
  v1 = *v0;

  v2 = *(v1 + 48);

  return _swift_task_switch(sub_10101E43C, v2, 0);
}

uint64_t sub_10101E43C()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_10101E4A0, v1, v2);
}

uint64_t sub_10101E4A0()
{

  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  [v2 viewScale];
  v3 = [v2 canvas];
  [v3 unscaledRectOfLayouts];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker))
  {
    v12 = *(*(*(v0 + 16) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);

    v13 = v12;
    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    Height = CGRectGetHeight(v19);
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    Width = CGRectGetWidth(v20);
    sub_10074E3CC(Height, Width, v13);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10101E5FC()
{
  v1[2] = v0;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v1[3] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10101E6CC, v3, v2);
}

uint64_t sub_10101E6CC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_stateRestorationHelper);
  v0[7] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_10101E950, v1, 0);
  }

  else
  {

    v2 = v0[2];
    v3 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    [v3 viewScale];
    v5 = v4;
    v6 = [v3 canvas];
    [v6 unscaledRectOfLayouts];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = *(*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v28.origin.x = v8;
    v28.origin.y = v10;
    v28.size.width = v12;
    v28.size.height = v14;
    Height = CGRectGetHeight(v28);
    v29.origin.x = v8;
    v29.origin.y = v10;
    v29.size.width = v12;
    v29.size.height = v14;
    Width = CGRectGetWidth(v29);
    v18 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled;
    v19 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled);
    if (v19 == 2)
    {
      v20 = sub_10102983C() & 1;
      *(v2 + v18) = v20;
    }

    else
    {
      v20 = v19 & 1;
    }

    v21 = v0[3];
    v22 = type metadata accessor for CRLAnalyticsBoardOpened();
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v15;
    *(v24 + 40) = v22;
    *(v24 + 48) = Height;
    *(v24 + 56) = Width;
    *(v24 + 64) = v5;
    *(v24 + 72) = v20;
    sub_100796D54(0, 0, v21, &unk_1014C2330, v24);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10101E950()
{
  if (*(v0[7] + 144) == 1)
  {

    v1 = v0[5];
    v2 = v0[6];

    return _swift_task_switch(sub_10101EB9C, v1, v2);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10101EA28;

    return sub_1007528DC();
  }
}

uint64_t sub_10101EA28()
{
  v1 = *v0;

  v2 = *(v1 + 56);

  return _swift_task_switch(sub_10101EB38, v2, 0);
}

uint64_t sub_10101EB38()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_10101EB9C, v1, v2);
}

uint64_t sub_10101EB9C()
{

  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  [v2 viewScale];
  v4 = v3;
  v5 = [v2 canvas];
  [v5 unscaledRectOfLayouts];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  Height = CGRectGetHeight(v27);
  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  Width = CGRectGetWidth(v28);
  v17 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled;
  v18 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled);
  if (v18 == 2)
  {
    v19 = sub_10102983C() & 1;
    *(v1 + v17) = v19;
  }

  else
  {
    v19 = v18 & 1;
  }

  v20 = v0[3];
  v21 = type metadata accessor for CRLAnalyticsBoardOpened();
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v14;
  *(v23 + 40) = v21;
  *(v23 + 48) = Height;
  *(v23 + 56) = Width;
  *(v23 + 64) = v4;
  *(v23 + 72) = v19;
  sub_100796D54(0, 0, v20, &unk_1014C2330, v23);

  v24 = v0[1];

  return v24();
}

void sub_10101EDB0()
{
  v0 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v0 - 8);
  v48 = v47 - v1;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_100EA63DC();
  v8 = objc_opt_self();
  if ([v8 crl_iPadDevice])
  {
    if (v7)
    {
LABEL_3:
      v9 = [v2 mainBundle];
      v10 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  [v8 crl_iPadDevice];
  v9 = [v2 mainBundle];
  v10 = String._bridgeToObjectiveC()();
LABEL_6:
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  if (v7)
  {
    v16 = [v2 mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();

    *&v52 = sub_1000A2100;
    *(&v52 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = *"";
    *&v51 = sub_10068B39C;
    *(&v51 + 1) = &unk_1018AECA0;
    v21 = _Block_copy(&aBlock);

    v22 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];
    _Block_release(v21);

    [v15 addAction:v22];
    [v15 setPreferredAction:v22];
  }

  v23 = [v2 mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = swift_allocObject();
  v28 = v2;
  v29 = v47[1];
  swift_unknownObjectWeakInit();

  v30 = String._bridgeToObjectiveC()();

  *&v52 = sub_10105A8D8;
  *(&v52 + 1) = v27;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = *"";
  *&v51 = sub_10068B39C;
  *(&v51 + 1) = &unk_1018AEC50;
  v31 = _Block_copy(&aBlock);

  v32 = objc_opt_self();
  v33 = [v32 actionWithTitle:v30 style:0 handler:v31];
  _Block_release(v31);

  [v15 addAction:v33];
  v34 = [v28 mainBundle];
  v35 = String._bridgeToObjectiveC()();
  v36 = String._bridgeToObjectiveC()();
  v37 = [v34 localizedStringForKey:v35 value:v36 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = String._bridgeToObjectiveC()();

  v39 = [v32 actionWithTitle:v38 style:1 handler:0];

  [v15 addAction:v39];
  [v29 presentViewController:v15 animated:1 completion:0];
  v40 = *&v29[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  [v40 setVersionFidelityAlertWasShownIsValid:1];
  [v40 setVersionFidelityAlertWasShown:sub_10001FF1C()];
  sub_10102231C(&aBlock);
  v41 = type metadata accessor for TaskPriority();
  v42 = v48;
  (*(*(v41 - 8) + 56))(v48, 1, 1, v41);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v29;
  v44 = aBlock;
  *(v43 + 56) = v51;
  v45 = v53[0];
  *(v43 + 72) = v52;
  *(v43 + 88) = v45;
  *(v43 + 97) = *(v53 + 9);
  *(v43 + 40) = v44;
  v46 = v29;
  sub_1006D62AC(&aBlock, v49);
  sub_100CA64C8(0, 0, v42, &unk_1014A0E70, v43);

  sub_1006D62E4(&aBlock);
  sub_10000CAAC(v42, &qword_1019FB750, &qword_10146F1B0);
  sub_1011047E4(v15);
}