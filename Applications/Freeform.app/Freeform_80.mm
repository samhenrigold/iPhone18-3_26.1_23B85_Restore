uint64_t sub_100AF2878(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_100AF296C(a2, a3);
  v8 = v7;
  sub_100AF2D00(a2, a3);
  v10 = v9;
  if (v8 && (type metadata accessor for CRLBoardItem(0), v11 = v8, v12 = a1, v13 = static NSObject.== infix(_:_:)(), v12, v11, (v13 & 1) != 0))
  {
    v14 = 1;
    v8 = v10;
  }

  else
  {
    if (!v10)
    {
      v14 = 0;
      goto LABEL_8;
    }

    type metadata accessor for CRLBoardItem(0);
    v15 = a1;
    v11 = v10;
    v14 = static NSObject.== infix(_:_:)();
  }

LABEL_8:
  return v14 & 1;
}

void sub_100AF296C(void *a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v14 == &off_101A0C0B8)
  {
    v15 = qword_101A0C430;
    swift_beginAccess();
    sub_100AF36DC(v14 + v15, v9, type metadata accessor for CRLConnectionLineCRDTData);
    sub_1005B981C(&qword_101A06128, &unk_10148D3C0);
    CRRegister.wrappedValue.getter();
    sub_100AF3744(v9, type metadata accessor for CRLConnectionLineCRDTData);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      sub_10000CAAC(v6, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      (*(v11 + 32))(v13, v6, v10);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v17 = [a1 getBoardItemForUUID:isa];

      if (v17)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v19 = swift_unknownObjectWeakLoadStrong();
        v20 = v19;
        if (Strong)
        {
          if (v19)
          {
            type metadata accessor for CRLBoardItem(0);
            v21 = static NSObject.== infix(_:_:)();
            (*(v11 + 8))(v13, v10);

            if ((v21 & 1) == 0)
            {
            }
          }

          else
          {

            (*(v11 + 8))(v13, v10);
          }
        }

        else
        {
          (*(v11 + 8))(v13, v10);
          if (v20)
          {
          }
        }
      }

      else
      {
        (*(v11 + 8))(v13, v10);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100AF2D00(void *a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v4);
  v6 = &v56 - v5;
  v7 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v7 - 8);
  v62 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v56 - v10;
  __chkstk_darwin(v11);
  v68 = &v56 - v12;
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  v16 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  __chkstk_darwin(v24);
  v28 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v69 = a2;
  v29 = *(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v29 != &off_101A0C0B8)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v64 = v18;
  v65 = v4;
  v59 = v27;
  v66 = v6;
  v70 = &v56 - v26;
  v61 = a1;
  v30 = v25;
  v31 = qword_101A0C430;
  swift_beginAccess();
  sub_100AF36DC(v29 + v31, v21, type metadata accessor for CRLConnectionLineCRDTData);
  sub_1005B981C(&qword_101A06128, &unk_10148D3C0);
  CRRegister.wrappedValue.getter();
  sub_100AF3744(v21, type metadata accessor for CRLConnectionLineCRDTData);
  v63 = *(v23 + 48);
  if (v63(v15, 1, v30) == 1)
  {
    sub_10000CAAC(v15, &qword_1019F6990, &qword_10146D2F0);
    return;
  }

  v32 = v23;
  v33 = v23 + 32;
  v34 = *(v23 + 32);
  v35 = v70;
  v57 = v34;
  v58 = v33;
  v34(v70, v15, v30);
  v36 = v68;
  (*(v32 + 16))(v68, v35, v30);
  v60 = v32;
  (*(v32 + 56))(v36, 0, 1, v30);
  v37 = *(v69 + v28);
  if (*v37 != &off_101A0C0B8)
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  v38 = v64;
  sub_100AF36DC(v37 + v31, v64, type metadata accessor for CRLConnectionLineCRDTData);
  v39 = v67;
  CRRegister.wrappedValue.getter();
  sub_100AF3744(v38, type metadata accessor for CRLConnectionLineCRDTData);
  v40 = v66;
  v41 = *(v65 + 48);
  sub_10000BE14(v36, v66, &qword_1019F6990, &qword_10146D2F0);
  sub_10000BE14(v39, v40 + v41, &qword_1019F6990, &qword_10146D2F0);
  v42 = v63;
  if (v63(v40, 1, v30) == 1)
  {
    sub_10000CAAC(v39, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v36, &qword_1019F6990, &qword_10146D2F0);
    v43 = v42(v40 + v41, 1, v30);
    v44 = v70;
    if (v43 == 1)
    {
      sub_10000CAAC(v40, &qword_1019F6990, &qword_10146D2F0);
      (*(v60 + 8))(v44, v30);
      return;
    }

    goto LABEL_10;
  }

  v45 = v62;
  sub_10000BE14(v40, v62, &qword_1019F6990, &qword_10146D2F0);
  v46 = v42(v40 + v41, 1, v30);
  v44 = v70;
  if (v46 == 1)
  {
    sub_10000CAAC(v39, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v36, &qword_1019F6990, &qword_10146D2F0);
    (*(v60 + 8))(v45, v30);
LABEL_10:
    sub_10000CAAC(v40, &unk_101A0AFE0, &unk_10146F3C0);
    goto LABEL_11;
  }

  v54 = v59;
  v57(v59, v40 + v41, v30);
  sub_100AF361C(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  LODWORD(v65) = dispatch thunk of static Equatable.== infix(_:_:)();
  v55 = *(v60 + 8);
  v55(v54, v30);
  sub_10000CAAC(v39, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v36, &qword_1019F6990, &qword_10146D2F0);
  v55(v62, v30);
  sub_10000CAAC(v40, &qword_1019F6990, &qword_10146D2F0);
  if (v65)
  {
    v55(v44, v30);
    return;
  }

LABEL_11:
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v48 = [v61 getBoardItemForUUID:isa];

  if (!v48)
  {
    (*(v60 + 8))(v44, v30);
    return;
  }

  v49 = v48;
  Strong = swift_unknownObjectWeakLoadStrong();
  v51 = swift_unknownObjectWeakLoadStrong();
  v52 = v51;
  if (!Strong)
  {
    (*(v60 + 8))(v44, v30);
    if (!v52)
    {
      return;
    }

LABEL_21:
    return;
  }

  if (!v51)
  {

    (*(v60 + 8))(v44, v30);
    return;
  }

  type metadata accessor for CRLBoardItem(0);
  v53 = static NSObject.== infix(_:_:)();
  (*(v60 + 8))(v44, v30);

  if ((v53 & 1) == 0)
  {
    goto LABEL_21;
  }
}

uint64_t sub_100AF354C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1005C4E5C(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100AF35C8()
{
  result = qword_101A106F8;
  if (!qword_101A106F8)
  {
    result = swift_getWitnessTable(byte_1014A4260, &type metadata for CRLConnectionLineMagnetData.MagnetType, v0, v1);
    atomic_store(result, &qword_101A106F8);
  }

  return result;
}

uint64_t sub_100AF361C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100AF3678(uint64_t a1, uint64_t a2)
{
  v4 = _s6CellIDVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AF36DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100AF3744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100AF37A4(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    type metadata accessor for CRLBoardItem(0);
    v8 = a1;
    v9 = a2;
    v10 = static NSObject.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (a2)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
    if (!a4)
    {
      return a4;
    }

    goto LABEL_12;
  }

  if (!a4 || (type metadata accessor for CRLBoardItem(0), v11 = a3, v12 = a4, v13 = static NSObject.== infix(_:_:)(), v11, v12, (v13 & 1) == 0))
  {
LABEL_12:
    v14 = [objc_opt_self() mainBundle];
    v15 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return a4;
  }

  return 0;
}

uint64_t sub_100AF39E0()
{
  v1 = [v0 activityType];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if ((sub_100080A80(v2, v4) | 2) == 0xA)
  {
    return 1;
  }

  v6 = [v0 userInfo];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v9 = sub_1000640CC(v11), (v10 & 1) == 0))
  {

    sub_100064234(v11);
LABEL_12:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_13;
  }

  sub_100064288(*(v8 + 56) + 32 * v9, &v12);
  sub_100064234(v11);

  if (!*(&v13 + 1))
  {
LABEL_13:
    sub_10000CAAC(&v12, &unk_1019F4D00, &unk_10146E7F0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v11[0];
  }

  else
  {
    return 0;
  }
}

BOOL sub_100AF3B84()
{
  v1 = sub_100AF39E0();
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("crl_isCurrentOrOlderVersion", 27, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Extensions/NSUserActivity_Extensions.swift", 112, 2);
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
    v13 = sub_1005CF000();
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 183;
    v16 = v33;
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
    sub_100005404(v11, &_mh_execute_header, v20, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("crl_isCurrentOrOlderVersion", 27, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Extensions/NSUserActivity_Extensions.swift", 112, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:183 isFatal:0 format:v25 args:v22];
  }

  else
  {
    v26 = v1;
    v27 = [v0 activityType];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_100080A80(v28, v30);
    if (v31 <= 0xAu && ((0x7BFu >> v31) & 1) != 0)
    {
      return qword_1014950C0[v31] >= v26;
    }
  }

  return 0;
}

uint64_t sub_100AF3F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v39 - v7;
  v9 = [v2 activityType];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (sub_100080A80(v10, v12) == 7)
  {
    v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }

  else
  {
    sub_1007591B0(v2, a1, v8);
    v16 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
    if ((*(*(v16 - 8) + 48))(v8, 1, v16) == 1)
    {
      v39 = objc_opt_self();
      v17 = [v39 _atomicIncrementAssertCount];
      v40 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v40, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("crl_viewModelItem(boardLibrary:)", 32, 2);
      v18 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Extensions/NSUserActivity_Extensions.swift", 112, 2);
      v19 = String._bridgeToObjectiveC()();

      v20 = [v19 lastPathComponent];

      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v24 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v17;
      v26 = sub_1005CF000();
      *(inited + 96) = v26;
      v27 = sub_1005CF04C();
      *(inited + 104) = v27;
      *(inited + 72) = v18;
      *(inited + 136) = &type metadata for String;
      v28 = sub_1000053B0();
      *(inited + 112) = v21;
      *(inited + 120) = v23;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v28;
      *(inited + 152) = 243;
      v29 = v40;
      *(inited + 216) = v26;
      *(inited + 224) = v27;
      *(inited + 192) = v29;
      v30 = v18;
      v31 = v29;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v34 = swift_allocObject();
      v34[2] = 8;
      v34[3] = 0;
      v34[4] = 0;
      v34[5] = 0;
      v35 = __VaListBuilder.va_list()();
      StaticString.description.getter("crl_viewModelItem(boardLibrary:)", 32, 2);
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Extensions/NSUserActivity_Extensions.swift", 112, 2);
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v38 = String._bridgeToObjectiveC()();

      [v39 handleFailureInFunction:v36 file:v37 lineNumber:243 isFatal:0 format:v38 args:v35];
    }

    return sub_10075F5F8(v8, a2);
  }
}

id sub_100AF4544(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC8Freeform44CRLPasteboardObjectItemProviderReadAssistant_readAssistant);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = objc_opt_self();
  v10 = @"com.apple.freeform.CRLNativeData";

  v11 = [v9 progressWithTotalUnitCount:2];
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = sub_100AF4960;
  v12[4] = v8;
  v12[5] = v7;
  v17[4] = sub_100AF496C;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = *"";
  v17[2] = sub_100AF4978;
  v17[3] = &unk_101894D10;
  v13 = _Block_copy(v17);
  v14 = v11;

  v15 = [a1 loadFileRepresentationForTypeIdentifier:v10 completionHandler:v13];
  _Block_release(v13);

  return v14;
}

void sub_100AF46F4(uint64_t a1, uint64_t a2, char a3, void (*a4)(__n128))
{
  if (a3)
  {
    (a4)(0, a1);
  }

  else
  {
    type metadata accessor for CRLPasteboardObject();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v8 = v5;
      swift_unknownObjectRetain();
      v6 = v8;
    }

    else
    {
      sub_1006B305C();
      swift_allocError();
      v6 = 0;
      *v7 = 1;
    }

    v9 = v6;
    (a4)();
  }
}

void sub_100AF4884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100AF4978(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_10000CAAC(v8, &unk_1019F33C0, &unk_101468A60);
}

id sub_100AF4ACC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_photoPickerLoadingProgress] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController] = a1;
  *&v2[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CRLiOSMediaReplacer();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100AF4BDC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLiOSMediaReplacer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100AF4CF0(void *a1)
{
  v2 = v1;
  if ([v2 isShowingUI])
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    aBlock = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &aBlock, "Already showing media replacer UI", 33, 2u);
    StaticString.description.getter("show(forMediaReplacing:)", 24, 2);
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
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
    v15 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 34;
    v17 = aBlock;
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
    sub_100005404(v12, &_mh_execute_header, v21, "Already showing media replacer UI", 33, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter("show(forMediaReplacing:)", 24, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Already showing media replacer UI", 33, 2);
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:34 isFatal:0 format:v26 args:v23];
  }

  else
  {
    swift_getObjectType();
    if ([a1 supportedMediaTypes] == 2)
    {
      sub_100B53268();
      v27 = objc_allocWithZone(UIDocumentPickerViewController);
      type metadata accessor for UTType();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v114 = [v27 initForOpeningContentTypes:isa asCopy:1];

      [v114 setDelegate:v2];
      swift_unknownObjectWeakAssign();
      [*&v2[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController] presentViewController:v114 animated:1 completion:0];
    }

    else
    {
      v115 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
      v29 = objc_opt_self();
      v30 = [v29 mainBundle];
      v31 = String._bridgeToObjectiveC()();
      v32 = String._bridgeToObjectiveC()();
      v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

      if (!v33)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = String._bridgeToObjectiveC()();
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = a1;
      v121 = sub_100B003B4;
      v122 = v35;
      aBlock = _NSConcreteStackBlock;
      v118 = *"";
      v119 = sub_10068B39C;
      v120 = &unk_101895058;
      v36 = _Block_copy(&aBlock);

      v37 = a1;

      v38 = objc_opt_self();
      v39 = [v38 actionWithTitle:v33 style:0 handler:v36];
      _Block_release(v36);

      [v115 addAction:v39];
      v40 = [v29 mainBundle];
      v41 = String._bridgeToObjectiveC()();
      v42 = String._bridgeToObjectiveC()();
      v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

      if (!v43)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = String._bridgeToObjectiveC()();
      }

      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = v37;
      v121 = sub_100B003BC;
      v122 = v45;
      aBlock = _NSConcreteStackBlock;
      v118 = *"";
      v119 = sub_10068B39C;
      v120 = &unk_1018950A8;
      v46 = _Block_copy(&aBlock);
      v47 = v37;

      v112 = v38;
      v48 = [v38 actionWithTitle:v43 style:0 handler:v46];
      _Block_release(v46);

      [v115 addAction:v48];
      v120 = &type metadata for CRLFeatureFlags;
      v121 = sub_100004D60();
      LOBYTE(aBlock) = 14;
      LOBYTE(v48) = isFeatureEnabled(_:)();
      sub_100005070(&aBlock);
      if ((v48 & 1) != 0 && [type metadata accessor for ImagePlaygroundViewController() available])
      {
        v49 = [v29 mainBundle];
        v50 = String._bridgeToObjectiveC()();
        v51 = String._bridgeToObjectiveC()();
        v52 = [v49 localizedStringForKey:v50 value:v51 table:0];

        if (!v52)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = String._bridgeToObjectiveC()();
        }

        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v121 = sub_100B0042C;
        v122 = v53;
        aBlock = _NSConcreteStackBlock;
        v118 = *"";
        v119 = sub_10068B39C;
        v120 = &unk_101895210;
        v54 = _Block_copy(&aBlock);

        v55 = [v38 actionWithTitle:v52 style:0 handler:v54];
        _Block_release(v54);

        [v115 addAction:v55];
      }

      if ([objc_opt_self() isOSFeatureEnabled:13])
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass() || (objc_opt_self(), (v108 = swift_dynamicCastObjCClass()) != 0) && (v109 = [v108 movieItem], v110 = sub_100D9AFEC(), v109, (v110 & 1) != 0))
        {
          v56 = [v29 mainBundle];
          v57 = String._bridgeToObjectiveC()();
          v58 = String._bridgeToObjectiveC()();
          v59 = [v56 localizedStringForKey:v57 value:v58 table:0];

          if (!v59)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = String._bridgeToObjectiveC()();
          }

          v60 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v61 = swift_allocObject();
          *(v61 + 16) = v60;
          *(v61 + 24) = v47;
          v121 = sub_100B00424;
          v122 = v61;
          aBlock = _NSConcreteStackBlock;
          v118 = *"";
          v119 = sub_10068B39C;
          v120 = &unk_1018951E8;
          v62 = _Block_copy(&aBlock);
          v63 = v47;

          v64 = [v38 actionWithTitle:v59 style:0 handler:v62];
          _Block_release(v62);

          [v115 addAction:v64];
        }
      }

      v65 = [v29 mainBundle];
      v66 = String._bridgeToObjectiveC()();
      v67 = String._bridgeToObjectiveC()();
      v68 = [v65 localizedStringForKey:v66 value:v67 table:0];

      if (!v68)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = String._bridgeToObjectiveC()();
      }

      v69 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *(v70 + 24) = v47;
      v121 = sub_100B003C4;
      v122 = v70;
      aBlock = _NSConcreteStackBlock;
      v118 = *"";
      v119 = sub_10068B39C;
      v120 = &unk_1018950F8;
      v71 = _Block_copy(&aBlock);
      v72 = v47;

      v73 = [v38 actionWithTitle:v68 style:0 handler:v71];
      _Block_release(v71);

      [v115 addAction:v73];
      v74 = [v29 mainBundle];
      v75 = String._bridgeToObjectiveC()();
      v76 = String._bridgeToObjectiveC()();
      v77 = [v74 localizedStringForKey:v75 value:v76 table:0];

      if (!v77)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = String._bridgeToObjectiveC()();
      }

      v78 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v121 = sub_100B003CC;
      v122 = v78;
      aBlock = _NSConcreteStackBlock;
      v118 = *"";
      v119 = sub_10068B39C;
      v120 = &unk_101895148;
      v79 = _Block_copy(&aBlock);
      v80 = v115;

      v81 = [v112 actionWithTitle:v77 style:1 handler:v79];
      _Block_release(v79);

      [v80 addAction:v81];
      v82 = v80;
      [v82 setModalPresentationStyle:7];
      v83 = [v82 popoverPresentationController];

      if (v83)
      {
        v84 = [*&v2[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController] canvasView];
        [v83 setSourceView:v84];

        [v83 setDelegate:v2];
      }

      else
      {
        v116 = objc_opt_self();
        v85 = [v116 _atomicIncrementAssertCount];
        aBlock = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &aBlock, "invalid nil found when unwrapping value", 39, 2u);
        StaticString.description.getter("show(forMediaReplacing:)", 24, 2);
        v113 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
        v86 = String._bridgeToObjectiveC()();

        v87 = [v86 lastPathComponent];

        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v90 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v91 = swift_initStackObject();
        *(v91 + 16) = xmmword_10146CA70;
        *(v91 + 56) = &type metadata for Int32;
        *(v91 + 64) = &protocol witness table for Int32;
        *(v91 + 32) = v85;
        v92 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v91 + 96) = v92;
        v93 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
        *(v91 + 104) = v93;
        *(v91 + 72) = v113;
        *(v91 + 136) = &type metadata for String;
        v94 = sub_1000053B0();
        *(v91 + 112) = v111;
        *(v91 + 120) = v89;
        *(v91 + 176) = &type metadata for UInt;
        *(v91 + 184) = &protocol witness table for UInt;
        *(v91 + 144) = v94;
        *(v91 + 152) = 79;
        v95 = aBlock;
        *(v91 + 216) = v92;
        *(v91 + 224) = v93;
        *(v91 + 192) = v95;
        v96 = v113;
        v97 = v95;
        v98 = static os_log_type_t.error.getter();
        sub_100005404(v90, &_mh_execute_header, v98, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v91);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v99 = static os_log_type_t.error.getter();
        sub_100005404(v90, &_mh_execute_header, v99, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v100 = swift_allocObject();
        v100[2] = 8;
        v100[3] = 0;
        v100[4] = 0;
        v100[5] = 0;
        v101 = __VaListBuilder.va_list()();
        StaticString.description.getter("show(forMediaReplacing:)", 24, 2);
        v102 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
        v103 = String._bridgeToObjectiveC()();

        StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
        v83 = String._bridgeToObjectiveC()();

        [v116 handleFailureInFunction:v102 file:v103 lineNumber:79 isFatal:0 format:v83 args:v101];
      }

      swift_unknownObjectWeakAssign();
      v104 = swift_allocObject();
      *(v104 + 16) = v2;
      *(v104 + 24) = v82;
      v121 = sub_100B003D4;
      v122 = v104;
      aBlock = _NSConcreteStackBlock;
      v118 = *"";
      v119 = sub_100007638;
      v120 = &unk_101895198;
      v105 = _Block_copy(&aBlock);
      v106 = v82;
      v107 = v2;

      sub_10016A460(v105);
      _Block_release(v105);
    }
  }
}

void sub_100AF6168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = type metadata accessor for PHPickerConfiguration.AssetRepresentationMode();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PHPickerConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v23 - v11;
  v13 = sub_1005B981C(&qword_101A10B10, &unk_1014C20E0);
  __chkstk_darwin(v13 - 8);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v23 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    swift_getObjectType();
    sub_100B531D4(v18);
    v23[1] = sub_100B0035C(&qword_101A10B18, v21, type metadata accessor for CRLiOSMediaReplacer, byte_101495174);
    PHPickerConfiguration.init()();
    (*(v3 + 104))(v5, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v24);
    PHPickerConfiguration.preferredAssetRepresentationMode.setter();
    sub_10000BE14(v18, v15, &qword_101A10B10, &unk_1014C20E0);
    PHPickerConfiguration.filter.setter();
    sub_100006370(0, &unk_1019F6BC0, PHPickerViewController_ptr);
    (*(v7 + 16))(v9, v12, v6);
    v22 = PHPickerViewController.init(configuration:)();
    swift_unknownObjectRetain();
    PHPickerViewController.delegate.setter();
    (*(v7 + 8))(v12, v6);
    sub_10000CAAC(v18, &qword_101A10B10, &unk_1014C20E0);
    swift_unknownObjectWeakAssign();
    [*&v20[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController] presentViewController:v22 animated:1 completion:0];
  }
}

char *sub_100AF64C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController];
    v4 = result;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    v7[2] = v4;
    v7[3] = v3;
    v7[4] = sub_100B00448;
    v7[5] = v5;
    aBlock[4] = sub_10067E154;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_1005CC4AC;
    aBlock[3] = &unk_1018952B0;
    v8 = _Block_copy(aBlock);
    swift_retain_n();
    v9 = v4;
    v10 = v3;

    [v6 crl_checkAuthorizationForMediaType:AVMediaTypeVideo completion:v8];
    _Block_release(v8);
  }

  return result;
}

void sub_100AF665C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong presentGenerativePlaygroundForCurrentSelection:a1];
  }
}

void sub_100AF66C0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100AF671C(a3);
  }
}

void sub_100AF671C(void *a1)
{
  v4 = [objc_allocWithZone(_UIStickerPickerViewController) init];
  [v4 setDelegate:v1];
  v3 = [*(v1 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController) canvasView];
  [v4 setSourceView:v3];

  sub_100AFDFF8(a1);
  [v4 setSourceRect:?];
  swift_unknownObjectWeakAssign();
  [*(v1 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController) presentViewController:v4 animated:1 completion:0];
}

void sub_100AF6818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getObjectType();
    sub_100B53268();
    v5 = objc_allocWithZone(UIDocumentPickerViewController);
    type metadata accessor for UTType();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [v5 initForOpeningContentTypes:isa asCopy:1];

    [v7 setDelegate:v4];
    swift_unknownObjectWeakAssign();
    [*&v4[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController] presentViewController:v7 animated:1 completion:0];
  }
}

void sub_100AF6924(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_100AF6988(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_100B00434;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = *"";
  v7[2] = sub_100007638;
  v7[3] = &unk_101895260;
  v5 = _Block_copy(v7);
  v6 = a2;

  [v3 presentViewController:v6 animated:1 completion:v5];
  _Block_release(v5);
}

double sub_100AF6AE0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];

    swift_unknownObjectWeakAssign();
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 dismissViewControllerAnimated:1 completion:0];

    swift_unknownObjectWeakAssign();
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 dismissViewControllerAnimated:1 completion:0];

    swift_unknownObjectWeakAssign();
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 dismissViewControllerAnimated:1 completion:0];

    swift_unknownObjectWeakAssign();
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v14 = v12;
    [v12 dismissViewControllerAnimated:1 completion:0];

    swift_unknownObjectWeakAssign();
  }

  if (a1)
  {
    v16[4] = a1;
    v16[5] = a2;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = *"";
    v16[2] = sub_100007638;
    v16[3] = &unk_101895008;
    v15 = _Block_copy(v16);
    sub_10067F2EC(a1, a2);

    sub_10016A460(v15);
    _Block_release(v15);
    return sub_1000C1014(a1, a2);
  }

  return result;
}

BOOL sub_100AF6DB8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            return *(v0 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper) != 0;
          }
        }
      }
    }
  }

  return 1;
}

void sub_100AF6E54(char a1)
{
  v2 = v1;
  v59 = OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper);
  if (v3)
  {
    v55 = objc_opt_self();
    v57 = v3;
    v4 = [v55 _atomicIncrementAssertCount];
    v61[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v61, "expected nil value, but non-nil found", 37, 2u);
    StaticString.description.getter("presentGenerativePlayground(forCurrentSection:)", 47, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
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
    v14 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 147;
    v16 = v61[0];
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("presentGenerativePlayground(forCurrentSection:)", 47, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
    v25 = String._bridgeToObjectiveC()();

    [v55 handleFailureInFunction:v23 file:v24 lineNumber:147 isFatal:0 format:v25 args:v22];
  }

  v26 = [objc_allocWithZone(type metadata accessor for CRLGenerativePlaygroundHelper()) init];
  swift_unknownObjectWeakAssign();
  v58 = OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController;
  v27 = [*&v26[OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController] presentationController];
  if (v27)
  {
    v28 = v27;
    [v27 setDelegate:v2];
  }

  else
  {
    v56 = objc_opt_self();
    v29 = [v56 _atomicIncrementAssertCount];
    v61[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v61, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("presentGenerativePlayground(forCurrentSection:)", 47, 2);
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v35 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_10146CA70;
    *(v36 + 56) = &type metadata for Int32;
    *(v36 + 64) = &protocol witness table for Int32;
    *(v36 + 32) = v29;
    v37 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v36 + 96) = v37;
    v38 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(v36 + 104) = v38;
    *(v36 + 72) = v54;
    *(v36 + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    *(v36 + 112) = v32;
    *(v36 + 120) = v34;
    *(v36 + 176) = &type metadata for UInt;
    *(v36 + 144) = v39;
    *(v36 + 152) = 151;
    v40 = v61[0];
    *(v36 + 216) = v37;
    *(v36 + 224) = v38;
    *(v36 + 184) = &protocol witness table for UInt;
    *(v36 + 192) = v40;
    v41 = v54;
    v42 = v40;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v36);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v44, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter("presentGenerativePlayground(forCurrentSection:)", 47, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v28 = String._bridgeToObjectiveC()();

    [v56 handleFailureInFunction:v47 file:v48 lineNumber:151 isFatal:0 format:v28 args:v46];
  }

  v49 = *(v2 + v59);
  *(v2 + v59) = v26;
  v50 = v26;

  if (a1)
  {
    v51 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController);
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = v50;
    sub_10126C374(v51, v53, v52, v53);
  }

  else
  {
    [*(v2 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController) presentViewController:*&v26[v58] animated:1 completion:0];
  }
}

uint64_t sub_100AF76D0(void *a1, uint64_t a2, uint64_t a3, char a4)
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
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_100AF6E54(a4 & 1);

  return sub_10000CAAC(v9, &unk_1019F4D00, &unk_10146E7F0);
}

void sub_100AF775C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController);

    [v5 presentViewController:*(a2 + OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController) animated:1 completion:0];
  }
}

id sub_100AF77F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController);
  result = [v1 editorController];
  if (result)
  {
    v3 = result;
    v4 = [result mostSpecificCurrentEditorOfClass:0];

    if (v4 && swift_dynamicCastObjCProtocolConditional() && (v5 = swift_dynamicCastObjCProtocolConditional()) != 0 && (v6 = v5, ([v5 respondsToSelector:"selectedObjectsSupportingReplacement"] & 1) != 0) && (v7 = objc_msgSend(v6, "selectedObjectsSupportingReplacement")) != 0 && (v8 = v7, type metadata accessor for CRLBoardItem(0), sub_100B0035C(&qword_1019FCB80, 255, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject), v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v8, v10 = sub_100BC17C8(v9), , v10))
    {
      v11 = [v1 repForInfo:v10];

      swift_unknownObjectRelease();
      if (v11)
      {
        result = swift_dynamicCastObjCProtocolConditional();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

void sub_100AF79C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;

  sub_100AF7AA0(a1, sub_10002AAEC, v8);

  v9 = OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper;
  v10 = *(a4 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper);
  if (v10)
  {
    [*(v10 + OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController) dismissViewControllerAnimated:1 completion:0];
    v11 = *(a4 + v9);
  }

  else
  {
    v11 = 0;
  }

  *(a4 + v9) = 0;
}

void sub_100AF7AA0(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100AFEE80();
  if (v5)
  {
    v6 = v5;
    type metadata accessor for URL();
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
      v30[4] = a2;
      v30[5] = a3;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = *"";
      v30[2] = sub_100007638;
      v30[3] = &unk_101894E00;
      a2 = _Block_copy(v30);
    }

    [v6 replaceCanvasElementInfo:0 withFilesAtURLs:v7.super.isa allowedTypes:0 actionString:0 completion:a2];
    _Block_release(a2);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 _atomicIncrementAssertCount];
    v30[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v30, "No replacing editor", 19, 2u);
    StaticString.description.getter("insertMedia(from:completion:)", 29, 2);
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v18;
    v19 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 479;
    v21 = v30[0];
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "No replacing editor", 19, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter("insertMedia(from:completion:)", 29, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter("No replacing editor", 19, 2);
    v7.super.isa = String._bridgeToObjectiveC()();

    [v8 handleFailureInFunction:v28 file:v29 lineNumber:479 isFatal:0 format:v7.super.isa args:v27];
  }
}

double sub_100AF80B8(void *a1, uint64_t a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v72 = sub_1005B981C(&qword_101A10A78, &qword_1014951A8);
  sub_1005B981C(&unk_101A10A80, &unk_1014951B0);
  String.init<A>(describing:)();
  v7 = String._bridgeToObjectiveC()();

  v8 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v8;
  v9 = inited;
  v10 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
  *(inited + 32) = v7;
  v11 = inited + 32;
  *(v9 + 64) = v10;
  if (Strong)
  {
    sub_100006370(0, &unk_1019F6BC0, PHPickerViewController_ptr);
    v12 = a1;
    v13 = Strong;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {

      goto LABEL_31;
    }
  }

  v67 = Strong;
  v68 = a1;
  v69 = v3;
  v66 = objc_opt_self();
  LODWORD(v15) = [v66 _atomicIncrementAssertCount];
  v72 = [objc_allocWithZone(NSString) init];
  sub_100604538(v9, &v72, "expected equality between two values of type %{public}@", 55, 2u);
  StaticString.description.getter("picker(_:didFinishPicking:)", 27, 2);
  v16 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
  v71 = v9;
  v17 = String._bridgeToObjectiveC()();

  v18 = [v17 lastPathComponent];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_42;
  }

LABEL_5:
  v22 = static OS_os_log.crlAssert;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10146CA70;
  *(v23 + 56) = &type metadata for Int32;
  *(v23 + 64) = &protocol witness table for Int32;
  *(v23 + 32) = v15;
  *(v23 + 96) = v8;
  *(v23 + 104) = v10;
  *(v23 + 72) = v16;
  *(v23 + 136) = &type metadata for String;
  v24 = sub_1000053B0();
  *(v23 + 112) = v19;
  *(v23 + 120) = v21;
  *(v23 + 176) = &type metadata for UInt;
  *(v23 + 184) = &protocol witness table for UInt;
  *(v23 + 144) = v24;
  *(v23 + 152) = 193;
  v25 = v72;
  *(v23 + 216) = v8;
  *(v23 + 224) = v10;
  *(v23 + 192) = v25;
  v26 = v16;
  v27 = v25;
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v29, "expected equality between two values of type %{public}@", 55, 2, v71);

  type metadata accessor for __VaListBuilder();
  v8 = swift_allocObject();
  v8[2] = 8;
  v8[3] = 0;
  v30 = v8 + 3;
  v8[4] = 0;
  v8[5] = 0;
  v31 = *(v71 + 16);
  if (v31)
  {
    v21 = 0;
    v16 = 40;
    while (1)
    {
      v32 = (v11 + 40 * v21);
      v19 = v32[3];
      LODWORD(v15) = sub_100020E58(v32, v19);
      v33 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v34 = *v30;
      v35 = *(v33 + 16);
      v36 = __OFADD__(*v30, v35);
      v37 = *v30 + v35;
      if (v36)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        swift_once();
        goto LABEL_5;
      }

      v19 = v8[4];
      if (v19 >= v37)
      {
        goto LABEL_22;
      }

      if (v19 + 0x4000000000000000 < 0)
      {
        goto LABEL_40;
      }

      v15 = v8[5];
      if (2 * v19 > v37)
      {
        v37 = 2 * v19;
      }

      v8[4] = v37;
      if ((v37 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_41;
      }

      v10 = v33;
      v38 = swift_slowAlloc();
      v39 = v38;
      v8[5] = v38;
      if (v15)
      {
        break;
      }

      v33 = v10;
      if (!v39)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_23:
      v41 = *(v33 + 16);
      if (v41)
      {
        v42 = (v33 + 32);
        v43 = *v30;
        while (1)
        {
          v44 = *v42++;
          *&v39[8 * v43] = v44;
          v43 = *v30 + 1;
          if (__OFADD__(*v30, 1))
          {
            break;
          }

          *v30 = v43;
          if (!--v41)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_7:

      if (++v21 == v31)
      {
        goto LABEL_30;
      }
    }

    if (v38 != v15 || v38 >= &v15[8 * v34])
    {
      memmove(v38, v15, 8 * v34);
    }

    LODWORD(v15) = v8;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v33 = v10;
LABEL_22:
    v39 = v8[5];
    if (!v39)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_30:
  v45 = __VaListBuilder.va_list()();
  StaticString.description.getter("picker(_:didFinishPicking:)", 27, 2);
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
  v13 = String._bridgeToObjectiveC()();

  [v66 handleFailureInFunction:v46 file:v47 lineNumber:193 isFatal:0 format:v13 args:v45];

  a1 = v68;
  v3 = v69;
LABEL_31:

  if (*(a2 + 16))
  {
    v48 = objc_opt_self();
    v49 = [v48 supportedImageTypes];
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = [v48 supportedMovieTypes];
    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = v50;
    sub_100798D48(v52);
    v53 = v72;
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = a1;
    v55[4] = a2;
    v56 = a1;

    v58 = PHPickerViewController.crl_loadFileRepresentations(for:supportedTypeIdentifiers:completionHandler:)(v57, v53, sub_100AFEFA4, v55);

    v59 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_photoPickerLoadingProgress);
    *(v3 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_photoPickerLoadingProgress) = v58;
  }

  else
  {
    if (qword_1019F21A0 != -1)
    {
      swift_once();
    }

    v61 = static OS_os_log.crlInsertMedia;
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_10146C6B0;
    *(v62 + 56) = sub_100006370(0, &unk_1019F6BC0, PHPickerViewController_ptr);
    *(v62 + 64) = sub_10000FE24(&unk_101A10A90, &unk_1019F6BC0, PHPickerViewController_ptr);
    *(v62 + 32) = a1;
    v63 = a1;
    v64 = static os_log_type_t.default.getter();
    sub_100005404(v61, &_mh_execute_header, v64, "Dismissing photo picker (%p) with empty results.", 48, 2, v62);
    swift_setDeallocating();
    sub_100005070((v62 + 32));
    v65 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_photoPickerLoadingProgress);
    if (v65)
    {
      [v65 cancel];
    }

    else
    {
      [v63 dismissViewControllerAnimated:1 completion:0];
      swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

void sub_100AF8920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_10098EABC(&_mh_execute_header, "picker(_:didFinishPicking:)", 27, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2, 210);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_unknownObjectWeakAssign();
  }

  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a2;
  v14[5] = a1;
  v14[6] = a3;
  v14[7] = a6;
  aBlock[4] = sub_100AFEFB0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101894DB0;
  v15 = _Block_copy(aBlock);

  v16 = a5;

  v17 = a1;
  swift_errorRetain();

  [v16 dismissViewControllerAnimated:1 completion:v15];
  _Block_release(v15);
}

void sub_100AF8ABC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_photoPickerLoadingProgress);
    v13 = Strong;
    v14 = v12;

    if (v12)
    {
      LODWORD(v12) = [v14 isCancelled];
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = *&v15[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_photoPickerLoadingProgress];
    *&v15[OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_photoPickerLoadingProgress] = 0;
  }

  if (v12)
  {
    if (qword_1019F21A0 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlInsertMedia;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = sub_100006370(0, &unk_1019F6BC0, PHPickerViewController_ptr);
    *(inited + 64) = sub_10000FE24(&unk_101A10A90, &unk_1019F6BC0, PHPickerViewController_ptr);
    *(inited + 32) = a2;
    v19 = a2;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v17, &_mh_execute_header, v20, "Photo picker (%p) loading progress was cancelled.", 49, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
  }

  else if (a3 && *(a3 + 16) && (swift_beginAccess(), (v21 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v22 = v21;
    v23 = swift_allocObject();
    v23[2] = a4;
    v24 = a4;
    sub_100AF7AA0(a3, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), v23);
  }

  else if (a5)
  {
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    sub_100006370(0, &qword_1019F6BD0, NSError_ptr);
    if (swift_dynamicCast())
    {
      v25 = v38;
      if (([v38 crl_isCancelError] & 1) == 0)
      {
        if (qword_1019F21A0 != -1)
        {
          swift_once();
        }

        v26 = static OS_os_log.crlInsertMedia;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v27 = swift_initStackObject();
        *(v27 + 16) = xmmword_10146C6B0;
        v25 = v38;
        v28 = [v25 description];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = sub_1000053B0();
        *(v27 + 32) = v29;
        *(v27 + 40) = v31;
        v32 = static os_log_type_t.error.getter();
        sub_100005404(v26, &_mh_execute_header, v32, "Error loading files from photo picker: %@", 41, 2, v27);
        swift_setDeallocating();
        sub_100005070((v27 + 32));
        v33 = sub_101307814(a6);
        swift_beginAccess();
        v34 = swift_unknownObjectWeakLoadStrong();
        if (v34)
        {
          v35 = v34;
          v36 = *(v34 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController);

          v33 = v33;
          v37 = _convertErrorToNSError(_:)();

          [v36 presentError:v37 completionHandler:0];
        }
      }
    }
  }
}

double sub_100AF8F18(void *a1, uint64_t a2)
{
  v3 = v2;
  v62 = a1;
  v63 = a2;
  v4 = type metadata accessor for URL();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60[1] = OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_filePicker;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v69 = sub_1005B981C(&qword_101A10AF0, &qword_1014951E0);
  sub_1005B981C(&qword_101A10AF8, qword_1014951E8);
  String.init<A>(describing:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v9;
  v10 = inited;
  v11 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
  *(v10 + 32) = v8;
  v67 = v3;
  v68 = v10 + 32;
  *(v10 + 64) = v11;
  v12 = Strong;
  if (Strong)
  {
    sub_100006370(0, &unk_101A10B00, UIDocumentPickerViewController_ptr);
    v13 = v62;
    v14 = Strong;
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {

      goto LABEL_31;
    }
  }

  v62 = v12;
  v60[0] = objc_opt_self();
  LODWORD(v61) = [v60[0] _atomicIncrementAssertCount];
  v69 = [objc_allocWithZone(NSString) init];
  sub_100604538(v10, &v69, "expected equality between two values of type %{public}@", 55, 2u);
  StaticString.description.getter("documentPicker(_:didPickDocumentsAt:)", 37, 2);
  v16 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
  v17 = v10;
  v18 = String._bridgeToObjectiveC()();

  v19 = [v18 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_43;
  }

LABEL_5:
  v23 = static OS_os_log.crlAssert;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_10146CA70;
  *(v24 + 56) = &type metadata for Int32;
  *(v24 + 64) = &protocol witness table for Int32;
  *(v24 + 32) = v61;
  *(v24 + 96) = v9;
  *(v24 + 104) = v11;
  *(v24 + 72) = v16;
  *(v24 + 136) = &type metadata for String;
  v25 = sub_1000053B0();
  *(v24 + 112) = v20;
  *(v24 + 120) = v22;
  *(v24 + 176) = &type metadata for UInt;
  *(v24 + 184) = &protocol witness table for UInt;
  *(v24 + 144) = v25;
  *(v24 + 152) = 239;
  v26 = v69;
  *(v24 + 216) = v9;
  *(v24 + 224) = v11;
  *(v24 + 192) = v26;
  v27 = v16;
  v28 = v26;
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v30, "expected equality between two values of type %{public}@", 55, 2, v17);

  type metadata accessor for __VaListBuilder();
  v31 = swift_allocObject();
  v31[2] = 8;
  v31[3] = 0;
  v32 = v31 + 3;
  v31[4] = 0;
  v31[5] = 0;
  v61 = v17;
  v9 = *(v17 + 16);
  v11 = v62;
  if (v9)
  {
    v20 = 0;
    v17 = 40;
    while (1)
    {
      v22 = sub_100020E58((v68 + 40 * v20), *(v68 + 40 * v20 + 24));
      v33 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v16 = *v32;
      v34 = *(v33 + 16);
      v35 = __OFADD__(*v32, v34);
      v36 = *v32 + v34;
      if (v35)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        swift_once();
        goto LABEL_5;
      }

      v22 = v31[4];
      if (v22 >= v36)
      {
        goto LABEL_22;
      }

      if (v22 + 0x4000000000000000 < 0)
      {
        goto LABEL_41;
      }

      v37 = v31[5];
      if (2 * v22 > v36)
      {
        v36 = 2 * v22;
      }

      v31[4] = v36;
      if ((v36 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_42;
      }

      v38 = v33;
      v39 = swift_slowAlloc();
      v40 = v39;
      v31[5] = v39;
      if (v37)
      {
        break;
      }

      v33 = v38;
      v17 = 40;
      if (!v40)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_23:
      v42 = *(v33 + 16);
      if (v42)
      {
        v43 = (v33 + 32);
        v44 = *v32;
        while (1)
        {
          v45 = *v43++;
          *&v40[8 * v44] = v45;
          v44 = *v32 + 1;
          if (__OFADD__(*v32, 1))
          {
            break;
          }

          *v32 = v44;
          if (!--v42)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_7:

      if (++v20 == v9)
      {
        goto LABEL_30;
      }
    }

    if (v39 != v37 || v39 >= &v37[8 * v16])
    {
      memmove(v39, v37, 8 * v16);
    }

    v22 = v31;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v33 = v38;
    v17 = 40;
LABEL_22:
    v40 = v31[5];
    if (!v40)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_30:
  v46 = __VaListBuilder.va_list()();
  StaticString.description.getter("documentPicker(_:didPickDocumentsAt:)", 37, 2);
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
  v48 = String._bridgeToObjectiveC()();

  StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
  v14 = String._bridgeToObjectiveC()();

  [v60[0] handleFailureInFunction:v47 file:v48 lineNumber:239 isFatal:0 format:v14 args:v46];

LABEL_31:

  v51 = v63;
  v50 = v64;
  v53 = v65;
  v52 = v66;
  if (*(v63 + 16))
  {
    (*(v65 + 16))(v64, v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v66);
    v54 = sub_100AF77F8();
    if (v54)
    {
      v55 = v54;
      swift_getObjectType();
      URL._bridgeToObjectiveC()(v56);
      v58 = v57;
      v59 = sub_100B5305C(v57);

      if (v59)
      {
        sub_100AF7AA0(v51, 0, 0);
      }

      else
      {
        sub_100AF96B8();
      }

      (*(v53 + 8))(v50, v52);
      swift_unknownObjectWeakAssign();
    }

    else
    {
      (*(v53 + 8))(v50, v52);
    }
  }

  return result;
}

void sub_100AF96B8()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = [v1 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = [v1 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() actionWithTitle:v17 style:0 handler:0];

  [v12 addAction:v18];
  [*(v0 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_boardViewController) presentViewController:v12 animated:1 completion:0];
}

double sub_100AF9A30(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v51 = sub_1005B981C(&qword_101A10AF0, &qword_1014951E0);
  sub_1005B981C(&qword_101A10AF8, qword_1014951E8);
  String.init<A>(describing:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v5;
  v6 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
  *(inited + 32) = v4;
  v7 = inited + 32;
  *(inited + 64) = v6;
  if (!Strong || (sub_100006370(0, &unk_101A10B00, UIDocumentPickerViewController_ptr), v8 = a1, v9 = Strong, v10 = static NSObject.== infix(_:_:)(), v8, v9, (v10 & 1) == 0))
  {
    v49 = Strong;
    v50 = v5;
    v48 = objc_opt_self();
    LODWORD(Strong) = [v48 _atomicIncrementAssertCount];
    v51 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v51, "expected equality between two values of type %{public}@", 55, 2u);
    StaticString.description.getter("documentPickerWasCancelled(_:)", 30, 2);
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = inited;
    if (qword_1019F20A0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v18 = static OS_os_log.crlAssert;
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_10146CA70;
      *(v19 + 56) = &type metadata for Int32;
      *(v19 + 64) = &protocol witness table for Int32;
      *(v19 + 32) = Strong;
      *(v19 + 96) = v50;
      *(v19 + 104) = v6;
      *(v19 + 72) = v11;
      *(v19 + 136) = &type metadata for String;
      v20 = sub_1000053B0();
      *(v19 + 112) = v14;
      *(v19 + 120) = v16;
      *(v19 + 176) = &type metadata for UInt;
      *(v19 + 184) = &protocol witness table for UInt;
      *(v19 + 144) = v20;
      *(v19 + 152) = 265;
      v21 = v51;
      *(v19 + 216) = v50;
      *(v19 + 224) = v6;
      *(v19 + 192) = v21;
      v22 = v11;
      v23 = v21;
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v25, "expected equality between two values of type %{public}@", 55, 2, v17);

      type metadata accessor for __VaListBuilder();
      v26 = swift_allocObject();
      v26[2] = 8;
      v26[3] = 0;
      v27 = v26 + 3;
      v26[4] = 0;
      v26[5] = 0;
      v6 = *(v17 + 16);
      v28 = v17;
      if (!v6)
      {
LABEL_30:
        v44 = __VaListBuilder.va_list()();
        StaticString.description.getter("documentPickerWasCancelled(_:)", 30, 2);
        v45 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
        v46 = String._bridgeToObjectiveC()();

        StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
        v9 = String._bridgeToObjectiveC()();

        [v48 handleFailureInFunction:v45 file:v46 lineNumber:265 isFatal:0 format:v9 args:v44];

        goto LABEL_31;
      }

      v17 = 0;
      v11 = 40;
      while (1)
      {
        v29 = (v7 + 40 * v17);
        v14 = v29[3];
        LODWORD(Strong) = sub_100020E58(v29, v14);
        v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v16 = *v27;
        v31 = *(v30 + 16);
        v32 = __OFADD__(*v27, v31);
        v33 = *v27 + v31;
        if (v32)
        {
          break;
        }

        v14 = v26[4];
        if (v14 >= v33)
        {
          goto LABEL_22;
        }

        if (v14 + 0x4000000000000000 < 0)
        {
          goto LABEL_34;
        }

        Strong = v26[5];
        if (2 * v14 > v33)
        {
          v33 = 2 * v14;
        }

        v26[4] = v33;
        if ((v33 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_35;
        }

        v34 = v7;
        v35 = v28;
        v36 = v30;
        v37 = swift_slowAlloc();
        v38 = v37;
        v26[5] = v37;
        if (Strong)
        {
          if (v37 != Strong || v37 >= &Strong[8 * v16])
          {
            memmove(v37, Strong, 8 * v16);
          }

          LODWORD(Strong) = v26;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v30 = v36;
          v28 = v35;
          v7 = v34;
          v11 = 40;
LABEL_22:
          v38 = v26[5];
          if (!v38)
          {
            goto LABEL_29;
          }

          goto LABEL_23;
        }

        v30 = v36;
        v28 = v35;
        v7 = v34;
        v11 = 40;
        if (!v38)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_23:
        v40 = *(v30 + 16);
        if (v40)
        {
          v41 = (v30 + 32);
          v42 = *v27;
          while (1)
          {
            v43 = *v41++;
            *&v38[8 * v42] = v43;
            v42 = *v27 + 1;
            if (__OFADD__(*v27, 1))
            {
              break;
            }

            *v27 = v42;
            if (!--v40)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
          break;
        }

LABEL_7:

        if (++v17 == v6)
        {
          goto LABEL_30;
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

LABEL_31:

  swift_unknownObjectWeakAssign();
  return result;
}

id sub_100AFA0C8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v51 = sub_1005B981C(&qword_101A10AD0, &qword_1014951D0);
  sub_1005B981C(&qword_101A10AD8, &qword_1014951D8);
  String.init<A>(describing:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v5;
  v6 = inited;
  v7 = Strong;
  v8 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
  *(v6 + 32) = v4;
  v49 = v6 + 32;
  *(v6 + 64) = v8;
  if (!Strong || (sub_100006370(0, &unk_101A10AE0, UIImagePickerController_ptr), v9 = v6, v10 = a1, v11 = Strong, v12 = static NSObject.== infix(_:_:)(), v10, v6 = v9, v11, (v12 & 1) == 0))
  {
    v50 = v6;
    v47 = v7;
    v48 = a1;
    v46 = objc_opt_self();
    LODWORD(v13) = [v46 _atomicIncrementAssertCount];
    v51 = [objc_allocWithZone(NSString) init];
    sub_100604538(v6, &v51, "expected equality between two values of type %{public}@", 55, 2u);
    StaticString.description.getter("imagePickerControllerDidCancel(_:)", 34, 2);
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v20 = static OS_os_log.crlAssert;
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_10146CA70;
      *(v21 + 56) = &type metadata for Int32;
      *(v21 + 64) = &protocol witness table for Int32;
      *(v21 + 32) = v13;
      *(v21 + 96) = v5;
      *(v21 + 104) = v8;
      *(v21 + 72) = v14;
      *(v21 + 136) = &type metadata for String;
      v22 = sub_1000053B0();
      *(v21 + 112) = v17;
      *(v21 + 120) = v19;
      *(v21 + 176) = &type metadata for UInt;
      *(v21 + 184) = &protocol witness table for UInt;
      *(v21 + 144) = v22;
      *(v21 + 152) = 274;
      v23 = v51;
      *(v21 + 216) = v5;
      *(v21 + 224) = v8;
      *(v21 + 192) = v23;
      v24 = v14;
      v25 = v23;
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v27, "expected equality between two values of type %{public}@", 55, 2, v50);

      type metadata accessor for __VaListBuilder();
      v28 = swift_allocObject();
      v28[2] = 8;
      v28[3] = 0;
      v19 = v28 + 3;
      v28[4] = 0;
      v28[5] = 0;
      v29 = *(v50 + 16);
      if (!v29)
      {
LABEL_30:
        v42 = __VaListBuilder.va_list()();
        StaticString.description.getter("imagePickerControllerDidCancel(_:)", 34, 2);
        v43 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
        v44 = String._bridgeToObjectiveC()();

        StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
        v11 = String._bridgeToObjectiveC()();

        [v46 handleFailureInFunction:v43 file:v44 lineNumber:274 isFatal:0 format:v11 args:v42];

        a1 = v48;
        goto LABEL_31;
      }

      v5 = 0;
      v8 = 40;
      while (1)
      {
        LODWORD(v13) = sub_100020E58((v49 + 40 * v5), *(v49 + 40 * v5 + 24));
        v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v17 = *v19;
        v31 = *(v30 + 16);
        v32 = __OFADD__(*v19, v31);
        v33 = *v19 + v31;
        if (v32)
        {
          break;
        }

        v34 = v28[4];
        if (v34 >= v33)
        {
          goto LABEL_22;
        }

        if (v34 + 0x4000000000000000 < 0)
        {
          goto LABEL_34;
        }

        v13 = v28[5];
        if (2 * v34 > v33)
        {
          v33 = 2 * v34;
        }

        v28[4] = v33;
        if ((v33 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_35;
        }

        v14 = v30;
        v35 = swift_slowAlloc();
        v36 = v35;
        v28[5] = v35;
        if (v13)
        {
          if (v35 != v13 || v35 >= &v13[8 * v17])
          {
            memmove(v35, v13, 8 * v17);
          }

          LODWORD(v13) = v28;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v30 = v14;
LABEL_22:
          v36 = v28[5];
          if (!v36)
          {
            goto LABEL_29;
          }

          goto LABEL_23;
        }

        v30 = v14;
        if (!v36)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_23:
        v38 = *(v30 + 16);
        if (v38)
        {
          v39 = (v30 + 32);
          v40 = *v19;
          while (1)
          {
            v41 = *v39++;
            *&v36[8 * v40] = v41;
            v40 = *v19 + 1;
            if (__OFADD__(*v19, 1))
            {
              break;
            }

            *v19 = v40;
            if (!--v38)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
          break;
        }

LABEL_7:

        if (++v5 == v29)
        {
          goto LABEL_30;
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

LABEL_31:

  swift_unknownObjectWeakAssign();
  return [a1 dismissViewControllerAnimated:1 completion:0];
}

void sub_100AFA798(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  aBlock[0] = sub_1005B981C(&qword_101A10AD0, &qword_1014951D0);
  sub_1005B981C(&qword_101A10AD8, &qword_1014951D8);
  String.init<A>(describing:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v7;
  v8 = inited;
  v9 = Strong;
  v10 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
  *(inited + 32) = v6;
  v11 = inited + 32;
  *(v8 + 64) = v10;
  v57 = v2;
  if (!Strong || (sub_100006370(0, &unk_101A10AE0, UIImagePickerController_ptr), v12 = v8, v13 = a1, v14 = Strong, v15 = static NSObject.== infix(_:_:)(), v13, v8 = v12, v14, (v15 & 1) == 0))
  {
    v56 = v8;
    v53 = v9;
    v54 = a1;
    v52 = objc_opt_self();
    LODWORD(v16) = [v52 _atomicIncrementAssertCount];
    aBlock[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v8, aBlock, "expected equality between two values of type %{public}@", 55, 2u);
    StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
    v17 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v23 = static OS_os_log.crlAssert;
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_10146CA70;
      *(v24 + 56) = &type metadata for Int32;
      *(v24 + 64) = &protocol witness table for Int32;
      *(v24 + 32) = v16;
      *(v24 + 96) = v7;
      *(v24 + 104) = v10;
      *(v24 + 72) = v17;
      *(v24 + 136) = &type metadata for String;
      v25 = sub_1000053B0();
      *(v24 + 112) = v20;
      *(v24 + 120) = v22;
      *(v24 + 176) = &type metadata for UInt;
      *(v24 + 184) = &protocol witness table for UInt;
      *(v24 + 144) = v25;
      *(v24 + 152) = 280;
      v26 = aBlock[0];
      *(v24 + 216) = v7;
      *(v24 + 224) = v10;
      *(v24 + 192) = v26;
      v27 = v17;
      v28 = v26;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v30, "expected equality between two values of type %{public}@", 55, 2, v56);

      type metadata accessor for __VaListBuilder();
      v31 = swift_allocObject();
      v31[2] = 8;
      v31[3] = 0;
      v32 = v31 + 3;
      v31[4] = 0;
      v31[5] = 0;
      v20 = *(v56 + 16);
      if (!v20)
      {
LABEL_30:
        v46 = __VaListBuilder.va_list()();
        StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
        v47 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
        v48 = String._bridgeToObjectiveC()();

        StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
        v14 = String._bridgeToObjectiveC()();

        [v52 handleFailureInFunction:v47 file:v48 lineNumber:280 isFatal:0 format:v14 args:v46];

        a1 = v54;
        v2 = v57;
        goto LABEL_31;
      }

      v33 = 0;
      v7 = 40;
      while (1)
      {
        v34 = (v11 + 40 * v33);
        v17 = v34[3];
        LODWORD(v16) = sub_100020E58(v34, v17);
        v35 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v22 = *v32;
        v36 = *(v35 + 16);
        v37 = __OFADD__(*v32, v36);
        v38 = *v32 + v36;
        if (v37)
        {
          break;
        }

        v17 = v31[4];
        if (v17 >= v38)
        {
          goto LABEL_22;
        }

        if (v17 + 0x4000000000000000 < 0)
        {
          goto LABEL_34;
        }

        v16 = v31[5];
        if (2 * v17 > v38)
        {
          v38 = 2 * v17;
        }

        v31[4] = v38;
        if ((v38 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_35;
        }

        v10 = v35;
        v39 = swift_slowAlloc();
        v40 = v39;
        v31[5] = v39;
        if (v16)
        {
          if (v39 != v16 || v39 >= &v16[8 * v22])
          {
            memmove(v39, v16, 8 * v22);
          }

          LODWORD(v16) = v31;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v35 = v10;
LABEL_22:
          v40 = v31[5];
          if (!v40)
          {
            goto LABEL_29;
          }

          goto LABEL_23;
        }

        v35 = v10;
        if (!v40)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_23:
        v42 = *(v35 + 16);
        if (v42)
        {
          v43 = (v35 + 32);
          v44 = *v32;
          while (1)
          {
            v45 = *v43++;
            *&v40[8 * v44] = v45;
            v44 = *v32 + 1;
            if (__OFADD__(*v32, 1))
            {
              break;
            }

            *v32 = v44;
            if (!--v42)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
          break;
        }

LABEL_7:

        if (++v33 == v20)
        {
          goto LABEL_30;
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

LABEL_31:

  swift_unknownObjectWeakAssign();
  v49 = swift_allocObject();
  v49[2] = a2;
  v49[3] = v2;
  aBlock[4] = sub_100B003AC;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101894F68;
  v50 = _Block_copy(aBlock);

  v51 = v2;

  [a1 dismissViewControllerAnimated:1 completion:v50];
  _Block_release(v50);
}

void sub_100AFAE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v4 - 8);
  v269 = v261 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v266 = v261 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v267 = v261 - v10;
  __chkstk_darwin(v11);
  v270 = v261 - v12;
  __chkstk_darwin(v13);
  v268 = v261 - v14;
  __chkstk_darwin(v15);
  v17 = v261 - v16;
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v261 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v22 = sub_10006E4C8(UIImagePickerControllerMediaType), (v23 & 1) == 0) || (sub_100064288(*(a1 + 56) + 32 * v22, &v274), (swift_dynamicCast() & 1) == 0))
  {
    v270 = objc_opt_self();
    v33 = [v270 _atomicIncrementAssertCount];
    *&v274 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v274, "No media type", 13, 2u);
    StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v35 = String._bridgeToObjectiveC()();

    v36 = [v35 lastPathComponent];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v40 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v33;
    v42 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v42;
    v43 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v43;
    *(inited + 72) = v34;
    *(inited + 136) = &type metadata for String;
    v44 = sub_1000053B0();
    *(inited + 112) = v37;
    *(inited + 120) = v39;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v44;
    *(inited + 152) = 285;
    v45 = v274;
    *(inited + 216) = v42;
    *(inited + 224) = v43;
    *(inited + 192) = v45;
    v46 = v34;
    v47 = v45;
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v48, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v49 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v49, "No media type", 13, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v50 = swift_allocObject();
    v50[2] = 8;
    v50[3] = 0;
    v50[4] = 0;
    v50[5] = 0;
    v51 = __VaListBuilder.va_list()();
    StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter("No media type", 13, 2);
    v54 = String._bridgeToObjectiveC()();

    [v270 handleFailureInFunction:v52 file:v53 lineNumber:285 isFatal:0 format:v54 args:v51];

    return;
  }

  v262 = v6;
  v263 = v17;
  v261[1] = a2;
  v264 = v272;
  v265 = v7;
  v24 = *(&v272 + 1);
  v25 = String._bridgeToObjectiveC()();
  static UTType.image.getter();
  UTType.identifier.getter();
  v26 = *(v19 + 8);
  v26(v21, v18);
  v27 = String._bridgeToObjectiveC()();

  v28 = [v25 crl_conformsToUTI:v27];

  if (v28)
  {

    if (*(a1 + 16))
    {
      v29 = sub_10006E4C8(UIImagePickerControllerEditedImage);
      v30 = v265;
      v31 = v263;
      if (v32)
      {
        sub_100064288(*(a1 + 56) + 32 * v29, &v272);
        sub_10000BF3C(&v272, &v274);
LABEL_57:
        if (*(&v275 + 1))
        {
          sub_100006370(0, &qword_1019F6EC8, UIImage_ptr);
          if (swift_dynamicCast())
          {
            v81 = v272;
            v151 = UIImageJPEGRepresentation(v272, 0.8);
            if (v151)
            {
              v152 = v151;
              v267 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v270 = v153;

              v154 = [objc_opt_self() mainBundle];
              v155 = String._bridgeToObjectiveC()();
              v156 = String._bridgeToObjectiveC()();
              v157 = [v154 localizedStringForKey:v155 value:v156 table:0];

              v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v160 = v159;

              *&v274 = 1735420462;
              *(&v274 + 1) = 0xE400000000000000;
              *&v272 = v158;
              *(&v272 + 1) = v160;
              v86 = &type metadata for String;
              *&v272 = String.init<A>(_:)();
              *(&v272 + 1) = v161;
              String.append<A>(contentsOf:)();
              v162 = objc_allocWithZone(CRLTemporaryDirectory);
              v163 = String._bridgeToObjectiveC()();
              *&v274 = 0;
              v164 = [v162 initWithSignature:v163 error:&v274];

              v84 = v274;
              if (!v164)
              {
                goto LABEL_108;
              }

              v269 = v81;
              v165 = v274;
              v166 = [v164 URL];
              v167 = v268;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              URL.appendingPathComponent(_:isDirectory:)();

              v168 = v167;
              v169 = v262;
              v268 = *(v30 + 8);
              (v268)(v168, v262);
              v170 = v267;
              Data.write(to:options:)();
              sub_1005B981C(&unk_1019F6B30, &qword_10146F930);
              v256 = v170;
              v257 = (*(v30 + 80) + 32) & ~*(v30 + 80);
              v258 = swift_allocObject();
              *(v258 + 16) = xmmword_10146C6B0;
              (*(v30 + 16))(v258 + v257, v31, v169);
              v259 = swift_allocObject();
              v259[2] = v164;
              v260 = v164;
              sub_100AF7AA0(v258, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), v259);

              sub_10002640C(v256, v270);
              (v268)(v31, v169);
              return;
            }

            v269 = v81;
            v270 = objc_opt_self();
            v214 = [v270 _atomicIncrementAssertCount];
            *&v274 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v274, "Unable to get image data", 24, 2u);
            StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
            v215 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
            v216 = String._bridgeToObjectiveC()();

            v217 = [v216 lastPathComponent];

            v218 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v220 = v219;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v221 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v222 = swift_allocObject();
            *(v222 + 16) = xmmword_10146CA70;
            *(v222 + 56) = &type metadata for Int32;
            *(v222 + 64) = &protocol witness table for Int32;
            *(v222 + 32) = v214;
            v223 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
            *(v222 + 96) = v223;
            v224 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
            *(v222 + 104) = v224;
            *(v222 + 72) = v215;
            *(v222 + 136) = &type metadata for String;
            v225 = sub_1000053B0();
            *(v222 + 112) = v218;
            *(v222 + 120) = v220;
            *(v222 + 176) = &type metadata for UInt;
            *(v222 + 184) = &protocol witness table for UInt;
            *(v222 + 144) = v225;
            *(v222 + 152) = 291;
            v226 = v274;
            *(v222 + 216) = v223;
            *(v222 + 224) = v224;
            *(v222 + 192) = v226;
            v227 = v215;
            v228 = v226;
            v229 = static os_log_type_t.error.getter();
            sub_100005404(v221, &_mh_execute_header, v229, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v222);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v230 = static os_log_type_t.error.getter();
            sub_100005404(v221, &_mh_execute_header, v230, "Unable to get image data", 24, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v231 = swift_allocObject();
            v231[2] = 8;
            v231[3] = 0;
            v231[4] = 0;
            v231[5] = 0;
            v232 = __VaListBuilder.va_list()();
            StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
            v207 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
            v208 = String._bridgeToObjectiveC()();

            StaticString.description.getter("Unable to get image data", 24, 2);
            v209 = String._bridgeToObjectiveC()();

            [v270 handleFailureInFunction:v207 file:v208 lineNumber:291 isFatal:0 format:v209 args:v232];

LABEL_91:

            if (qword_1019F2098 != -1)
            {
LABEL_117:
              swift_once();
            }

            v210 = static OS_os_log.crlDefault;
            v211 = static os_log_type_t.error.getter();
            sub_100005404(v210, &_mh_execute_header, v211, "No image to insert", 18, 2, _swiftEmptyArrayStorage);
            return;
          }
        }

        else
        {
          sub_10000CAAC(&v274, &unk_1019F4D00, &unk_10146E7F0);
        }

        v268 = objc_opt_self();
        v171 = [v268 _atomicIncrementAssertCount];
        *&v274 = [objc_allocWithZone(NSString) init];
        v172 = _swiftEmptyArrayStorage;
        sub_100604538(_swiftEmptyArrayStorage, &v274, "Bad image info", 14, 2u);
        StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
        v270 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
        v173 = String._bridgeToObjectiveC()();

        v174 = [v173 lastPathComponent];

        v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v176 = v175;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v177 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v178 = swift_allocObject();
        *(v178 + 16) = xmmword_10146CA70;
        *(v178 + 56) = &type metadata for Int32;
        *(v178 + 64) = &protocol witness table for Int32;
        *(v178 + 32) = v171;
        v179 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v178 + 96) = v179;
        v180 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
        *(v178 + 104) = v180;
        v181 = v270;
        *(v178 + 72) = v270;
        *(v178 + 136) = &type metadata for String;
        v182 = sub_1000053B0();
        *(v178 + 112) = v269;
        *(v178 + 120) = v176;
        *(v178 + 176) = &type metadata for UInt;
        *(v178 + 184) = &protocol witness table for UInt;
        *(v178 + 144) = v182;
        *(v178 + 152) = 290;
        v183 = v274;
        *(v178 + 216) = v179;
        *(v178 + 224) = v180;
        *(v178 + 192) = v183;
        v184 = v181;
        v185 = v183;
        v186 = static os_log_type_t.error.getter();
        sub_100005404(v177, &_mh_execute_header, v186, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v178);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v187 = static os_log_type_t.error.getter();
        sub_100005404(v177, &_mh_execute_header, v187, "Bad image info", 14, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v188 = swift_allocObject();
        v188[2] = 8;
        v188[3] = 0;
        v189 = v188 + 3;
        v188[4] = 0;
        v188[5] = 0;
        v190 = _swiftEmptyArrayStorage[2];
        if (!v190)
        {
LABEL_90:
          v206 = __VaListBuilder.va_list()();
          StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
          v207 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
          v208 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Bad image info", 14, 2);
          v209 = String._bridgeToObjectiveC()();

          [v268 handleFailureInFunction:v207 file:v208 lineNumber:290 isFatal:0 format:v209 args:v206];

          goto LABEL_91;
        }

        v30 = 0;
        while (1)
        {
          v191 = &v172[5 * v30];
          v31 = v191[8];
          sub_100020E58(v191 + 4, v191[7]);
          v192 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v193 = *v189;
          v194 = *(v192 + 16);
          v88 = __OFADD__(*v189, v194);
          v195 = *v189 + v194;
          if (v88)
          {
            __break(1u);
            goto LABEL_112;
          }

          v196 = v188[4];
          if (v196 >= v195)
          {
            goto LABEL_82;
          }

          if (v196 + 0x4000000000000000 < 0)
          {
            goto LABEL_113;
          }

          v31 = v188[5];
          if (2 * v196 > v195)
          {
            v195 = 2 * v196;
          }

          v188[4] = v195;
          if ((v195 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_114;
          }

          v197 = v172;
          v198 = v192;
          v199 = swift_slowAlloc();
          v200 = v199;
          v188[5] = v199;
          if (v31)
          {
            break;
          }

          v192 = v198;
          v172 = v197;
          if (!v200)
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

LABEL_83:
          v202 = *(v192 + 16);
          if (v202)
          {
            v203 = (v192 + 32);
            v204 = *v189;
            while (1)
            {
              v205 = *v203++;
              *&v200[8 * v204] = v205;
              v204 = *v189 + 1;
              if (__OFADD__(*v189, 1))
              {
                break;
              }

              *v189 = v204;
              if (!--v202)
              {
                goto LABEL_67;
              }
            }

            __break(1u);
LABEL_101:
            v274 = 0u;
            v275 = 0u;
            goto LABEL_55;
          }

LABEL_67:

          if (++v30 == v190)
          {
            goto LABEL_90;
          }
        }

        if (v199 != v31 || v199 >= &v31[8 * v193])
        {
          memmove(v199, v31, 8 * v193);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v192 = v198;
        v172 = v197;
LABEL_82:
        v200 = v188[5];
        if (!v200)
        {
          goto LABEL_89;
        }

        goto LABEL_83;
      }

      v148 = *(a1 + 16);
      v105 = 0uLL;
      v272 = 0u;
      v273 = 0u;
      if (v148)
      {
        v149 = sub_10006E4C8(UIImagePickerControllerOriginalImage);
        if ((v150 & 1) == 0)
        {
          goto LABEL_101;
        }

        sub_100064288(*(a1 + 56) + 32 * v149, &v274);
LABEL_55:
        if (*(&v273 + 1))
        {
          sub_10000CAAC(&v272, &unk_1019F4D00, &unk_10146E7F0);
        }

        goto LABEL_57;
      }
    }

    else
    {
      v105 = 0uLL;
      v273 = 0u;
      v272 = 0u;
      v30 = v265;
      v31 = v263;
    }

    v274 = v105;
    v275 = v105;
    goto LABEL_55;
  }

  v55 = v24;
  v56 = String._bridgeToObjectiveC()();
  static UTType.movie.getter();
  UTType.identifier.getter();
  v26(v21, v18);
  v57 = String._bridgeToObjectiveC()();

  v58 = [v56 crl_conformsToUTI:v57];

  if (!v58)
  {
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_10146C6B0;
    *(v61 + 56) = &type metadata for String;
    v62 = sub_1000053B0();
    *(v61 + 32) = v264;
    v269 = v62;
    v270 = (v61 + 32);
    *(v61 + 64) = v62;
    *(v61 + 40) = v55;
    v267 = objc_opt_self();
    v63 = [v267 _atomicIncrementAssertCount];
    *&v274 = [objc_allocWithZone(NSString) init];
    v268 = v61;
    sub_100604538(v61, &v274, "Bad media type: %@", 18, 2u);
    StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
    v64 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v65 = String._bridgeToObjectiveC()();

    v66 = [v65 lastPathComponent];

    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v70 = static OS_os_log.crlAssert;
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_10146CA70;
    *(v71 + 56) = &type metadata for Int32;
    *(v71 + 64) = &protocol witness table for Int32;
    *(v71 + 32) = v63;
    v72 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v71 + 96) = v72;
    v73 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(v71 + 72) = v64;
    v74 = v269;
    *(v71 + 136) = &type metadata for String;
    *(v71 + 144) = v74;
    *(v71 + 104) = v73;
    *(v71 + 112) = v67;
    *(v71 + 120) = v69;
    *(v71 + 176) = &type metadata for UInt;
    *(v71 + 184) = &protocol witness table for UInt;
    *(v71 + 152) = 323;
    v75 = v274;
    *(v71 + 216) = v72;
    *(v71 + 224) = v73;
    *(v71 + 192) = v75;
    v76 = v64;
    v77 = v75;
    v78 = static os_log_type_t.error.getter();
    sub_100005404(v70, &_mh_execute_header, v78, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v71);
    swift_setDeallocating();
    v269 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v79 = static os_log_type_t.error.getter();
    v80 = v268;
    sub_100005404(v70, &_mh_execute_header, v79, "Bad media type: %@", 18, 2, v268);

    type metadata accessor for __VaListBuilder();
    v81 = swift_allocObject();
    v81[2] = 8;
    v81[3] = 0;
    v82 = v81 + 3;
    v81[4] = 0;
    v81[5] = 0;
    v83 = *(v80 + 2);
    if (!v83)
    {
LABEL_42:
      v101 = __VaListBuilder.va_list()();
      StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
      v102 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
      v103 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Bad media type: %@", 18, 2);
      v104 = String._bridgeToObjectiveC()();

      [v267 handleFailureInFunction:v102 file:v103 lineNumber:323 isFatal:0 format:v104 args:v101];

      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }

    v84 = 0;
    while (1)
    {
      sub_100020E58(&v270[40 * v84], *&v270[40 * v84 + 24]);
      v85 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v86 = *v82;
      v87 = *(v85 + 16);
      v88 = __OFADD__(*v82, v87);
      v89 = *v82 + v87;
      if (v88)
      {
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
        goto LABEL_117;
      }

      v90 = v81[4];
      if (v90 >= v89)
      {
        goto LABEL_34;
      }

      if (v90 + 0x4000000000000000 < 0)
      {
        goto LABEL_115;
      }

      v91 = v81[5];
      if (2 * v90 > v89)
      {
        v89 = 2 * v90;
      }

      v81[4] = v89;
      if ((v89 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_116;
      }

      v92 = v80;
      v93 = v85;
      v94 = swift_slowAlloc();
      v95 = v94;
      v81[5] = v94;
      if (v91)
      {
        break;
      }

      v85 = v93;
      v80 = v92;
      if (!v95)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_35:
      v97 = *(v85 + 16);
      if (v97)
      {
        v98 = (v85 + 32);
        v99 = *v82;
        while (1)
        {
          v100 = *v98++;
          *&v95[8 * v99] = v100;
          v99 = *v82 + 1;
          if (__OFADD__(*v82, 1))
          {
            break;
          }

          *v82 = v99;
          if (!--v97)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_108:
        v248 = v270;
        v249 = v84;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1019F2098 != -1)
        {
          swift_once();
        }

        v250 = static OS_os_log.crlDefault;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v251 = swift_initStackObject();
        *(v251 + 16) = xmmword_10146C6B0;
        swift_getErrorValue();
        v252 = Error.localizedDescription.getter();
        v254 = v253;
        *(v251 + 56) = v86;
        *(v251 + 64) = sub_1000053B0();
        *(v251 + 32) = v252;
        *(v251 + 40) = v254;
        v255 = static os_log_type_t.error.getter();
        sub_100005404(v250, &_mh_execute_header, v255, "Error writing file to temporary directory: %@", 45, 2, v251);

        sub_10002640C(v267, v248);
        swift_setDeallocating();
        sub_100005070((v251 + 32));
        return;
      }

LABEL_19:

      v84 = v84 + 1;
      if (v84 == v83)
      {
        goto LABEL_42;
      }
    }

    if (v94 != v91 || v94 >= &v91[8 * v86])
    {
      memmove(v94, v91, 8 * v86);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v85 = v93;
    v80 = v92;
LABEL_34:
    v95 = v81[5];
    if (!v95)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (*(a1 + 16) && (v59 = sub_10006E4C8(UIImagePickerControllerMediaURL), (v60 & 1) != 0))
  {
    sub_100064288(*(a1 + 56) + 32 * v59, &v272);
  }

  else
  {
    v273 = 0u;
    v272 = 0u;
    v264 = objc_opt_self();
    v106 = [v264 _atomicIncrementAssertCount];
    v271 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v271, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
    v107 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v108 = String._bridgeToObjectiveC()();

    v109 = [v108 lastPathComponent];

    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v113 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_10146CA70;
    *(v114 + 56) = &type metadata for Int32;
    *(v114 + 64) = &protocol witness table for Int32;
    *(v114 + 32) = v106;
    v115 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v114 + 96) = v115;
    v116 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(v114 + 104) = v116;
    *(v114 + 72) = v107;
    *(v114 + 136) = &type metadata for String;
    v117 = sub_1000053B0();
    *(v114 + 112) = v110;
    *(v114 + 120) = v112;
    *(v114 + 176) = &type metadata for UInt;
    *(v114 + 184) = &protocol witness table for UInt;
    *(v114 + 144) = v117;
    *(v114 + 152) = 308;
    v118 = v271;
    *(v114 + 216) = v115;
    *(v114 + 224) = v116;
    *(v114 + 192) = v118;
    v119 = v107;
    v120 = v118;
    v121 = static os_log_type_t.error.getter();
    sub_100005404(v113, &_mh_execute_header, v121, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v114);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v122 = static os_log_type_t.error.getter();
    sub_100005404(v113, &_mh_execute_header, v122, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v123 = swift_allocObject();
    v123[2] = 8;
    v123[3] = 0;
    v123[4] = 0;
    v123[5] = 0;
    v124 = __VaListBuilder.va_list()();
    StaticString.description.getter("imagePickerController(_:didFinishPickingMediaWithInfo:)", 55, 2);
    v125 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v126 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v127 = String._bridgeToObjectiveC()();

    [v264 handleFailureInFunction:v125 file:v126 lineNumber:308 isFatal:0 format:v127 args:v124];
  }

  v274 = v272;
  v275 = v273;
  v128 = v262;
  v129 = v269;
  v130 = v270;
  if (*(&v273 + 1))
  {
    v131 = swift_dynamicCast();
    v132 = v265;
    (*(v265 + 56))(v129, v131 ^ 1u, 1, v128);
    if ((*(v132 + 48))(v129, 1, v128) != 1)
    {
      (*(v132 + 32))(v130, v129, v128);
      v133 = [objc_opt_self() mainBundle];
      v134 = String._bridgeToObjectiveC()();
      v135 = String._bridgeToObjectiveC()();
      v136 = [v133 localizedStringForKey:v134 value:v135 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v137 = v266;
      URL.deletingLastPathComponent()();
      v138 = v268;
      URL.appendingPathComponent(_:)();

      v139 = *(v132 + 8);
      v140 = v137;
      v141 = v267;
      v139(v140, v128);
      URL.pathExtension.getter();
      URL.appendingPathExtension(_:)();

      v139(v138, v128);
      v142 = objc_opt_self();
      v143 = [v142 defaultManager];
      URL._bridgeToObjectiveC()(v144);
      v146 = v145;
      *&v274 = 0;
      LODWORD(v134) = [v143 removeItemAtURL:v145 error:&v274];

      if (v134)
      {
        v147 = v274;
      }

      else
      {
        v233 = v274;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v234 = [v142 defaultManager];
      v235 = v270;
      URL._bridgeToObjectiveC()(v236);
      v238 = v237;
      URL._bridgeToObjectiveC()(v239);
      v241 = v240;
      *&v274 = 0;
      v242 = [v234 moveItemAtURL:v238 toURL:v240 error:&v274];

      if (v242)
      {
        v243 = v274;
        v139(v235, v128);
        v244 = v265;
        (*(v265 + 16))(v235, v141, v128);
      }

      else
      {
        v245 = v274;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v244 = v265;
      }

      sub_1005B981C(&unk_1019F6B30, &qword_10146F930);
      v246 = (*(v244 + 80) + 32) & ~*(v244 + 80);
      v247 = swift_allocObject();
      *(v247 + 16) = xmmword_10146C6B0;
      (*(v244 + 16))(v247 + v246, v235, v128);
      sub_100AF7AA0(v247, 0, 0);

      v139(v141, v128);
      v139(v235, v128);
      return;
    }
  }

  else
  {
    sub_10000CAAC(&v274, &unk_1019F4D00, &unk_10146E7F0);
    (*(v265 + 56))(v129, 1, 1, v128);
  }

  sub_10000CAAC(v129, &unk_1019F33C0, &unk_101468A60);
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v212 = static OS_os_log.crlDefault;
  v213 = static os_log_type_t.error.getter();
  sub_100005404(v212, &_mh_execute_header, v213, "No movie URL to insert", 22, 2, _swiftEmptyArrayStorage);
}

id sub_100AFD2A4(void *a1)
{
  v2 = a1;
  v3 = [a1 sourceView];
  v4 = [*(v1 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController) canvasView];
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v61 = sub_1005B981C(&qword_101A172E0, &unk_1014951C0);
  sub_1005B981C(&unk_101A10AC0, &unk_1014B92F0);
  String.init<A>(describing:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v7;
  v8 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
  *(inited + 32) = v6;
  v60 = inited + 32;
  *(inited + 64) = v8;
  if (!v3)
  {
    if (!v4)
    {

      goto LABEL_34;
    }

    goto LABEL_6;
  }

  if (!v4 || (sub_100006370(0, &qword_1019F6D00, UIView_ptr), v9 = v3, v10 = v4, v11 = static NSObject.== infix(_:_:)(), v9, v10, (v11 & 1) == 0))
  {
LABEL_6:
    v59 = v4;
    v57 = v3;
    v58 = v2;
    v56 = objc_opt_self();
    LODWORD(v12) = [v56 _atomicIncrementAssertCount];
    v61 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v61, "expected equality between two values of type %{public}@", 55, 2u);
    StaticString.description.getter("prepareForPopoverPresentation(_:)", 33, 2);
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v19 = static OS_os_log.crlAssert;
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_10146CA70;
      *(v20 + 56) = &type metadata for Int32;
      *(v20 + 64) = &protocol witness table for Int32;
      *(v20 + 32) = v12;
      *(v20 + 96) = v7;
      *(v20 + 104) = v8;
      *(v20 + 72) = v13;
      *(v20 + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(v20 + 112) = v16;
      *(v20 + 120) = v18;
      *(v20 + 176) = &type metadata for UInt;
      *(v20 + 184) = &protocol witness table for UInt;
      *(v20 + 144) = v21;
      *(v20 + 152) = 339;
      v22 = v61;
      *(v20 + 216) = v7;
      *(v20 + 224) = v8;
      *(v20 + 192) = v22;
      v23 = v13;
      v24 = v22;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v20);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v26, "expected equality between two values of type %{public}@", 55, 2, inited);

      type metadata accessor for __VaListBuilder();
      v27 = swift_allocObject();
      v27[2] = 8;
      v27[3] = 0;
      v28 = v27 + 3;
      v27[4] = 0;
      v27[5] = 0;
      v16 = *(inited + 16);
      v8 = v59;
      if (!v16)
      {
LABEL_32:
        v42 = __VaListBuilder.va_list()();
        StaticString.description.getter("prepareForPopoverPresentation(_:)", 33, 2);
        v43 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
        v44 = String._bridgeToObjectiveC()();

        StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
        v45 = String._bridgeToObjectiveC()();

        [v56 handleFailureInFunction:v43 file:v44 lineNumber:339 isFatal:0 format:v45 args:v42];

        v2 = v58;
        goto LABEL_34;
      }

      v13 = 0;
      v7 = 40;
      inited = 0x4000000000000000;
      while (1)
      {
        LODWORD(v12) = sub_100020E58((v60 + 40 * v13), *(v60 + 40 * v13 + 24));
        v29 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v18 = *v28;
        v30 = *(v29 + 16);
        v31 = __OFADD__(*v28, v30);
        v32 = *v28 + v30;
        if (v31)
        {
          break;
        }

        v33 = v27[4];
        if (v33 >= v32)
        {
          goto LABEL_24;
        }

        if (v33 + 0x4000000000000000 < 0)
        {
          goto LABEL_37;
        }

        v12 = v27[5];
        if (2 * v33 > v32)
        {
          v32 = 2 * v33;
        }

        v27[4] = v32;
        if ((v32 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_38;
        }

        v34 = v29;
        v35 = swift_slowAlloc();
        v36 = v35;
        v27[5] = v35;
        if (v12)
        {
          if (v35 != v12 || v35 >= &v12[8 * v18])
          {
            memmove(v35, v12, 8 * v18);
          }

          LODWORD(v12) = v27;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v29 = v34;
          v8 = v59;
LABEL_24:
          v36 = v27[5];
          if (!v36)
          {
            goto LABEL_31;
          }

          goto LABEL_25;
        }

        v29 = v34;
        v8 = v59;
        if (!v36)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_25:
        v38 = *(v29 + 16);
        if (v38)
        {
          v39 = (v29 + 32);
          v40 = *v28;
          while (1)
          {
            v41 = *v39++;
            *&v36[8 * v40] = v41;
            v40 = *v28 + 1;
            if (__OFADD__(*v28, 1))
            {
              break;
            }

            *v28 = v40;
            if (!--v38)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          break;
        }

LABEL_9:

        v13 = v13 + 1;
        if (v13 == v16)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }
  }

LABEL_34:
  v46 = sub_100AF77F8();
  sub_100AFDFF8(v46);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  return [v2 setSourceRect:{v48, v50, v52, v54}];
}

void sub_100AFDA30(void *a1)
{
  v2 = v1;
  v4 = [a1 presentedViewController];
  v5 = v4;
  v6 = OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper;
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_gpHelper);
  if (!v7)
  {
    if (!v4)
    {
LABEL_8:
      v11 = 0;
LABEL_20:
      *(v2 + v6) = 0;

      return;
    }

    goto LABEL_10;
  }

  v8 = *(v7 + OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController);
  v9 = v8;
  if (!v5)
  {
    v5 = v8;
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (!v8)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v7 = *(v2 + v6);
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_19:
    [*(v7 + OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController) dismissViewControllerAnimated:1 completion:0];
    v11 = *(v2 + v6);
    goto LABEL_20;
  }

LABEL_11:
  v12 = [a1 presentedViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = Strong;
  if (!v12)
  {
    if (!Strong)
    {
      goto LABEL_16;
    }

LABEL_24:

LABEL_25:
    v16 = objc_opt_self();
    v17 = [v16 _atomicIncrementAssertCount];
    v39 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v39, "Unexpected presentation controller being dismissed", 50, 2u);
    StaticString.description.getter("presentationControllerDidDismiss(_:)", 36, 2);
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v17;
    v26 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v26;
    v27 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v27;
    *(inited + 72) = v18;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 360;
    v29 = v39;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    *(inited + 192) = v29;
    v30 = v18;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v33, "Unexpected presentation controller being dismissed", 50, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter("presentationControllerDidDismiss(_:)", 36, 2);
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unexpected presentation controller being dismissed", 50, 2);
    v38 = String._bridgeToObjectiveC()();

    [v16 handleFailureInFunction:v36 file:v37 lineNumber:360 isFatal:0 format:v38 args:v35];

    return;
  }

  if (!Strong)
  {
    v14 = v12;
    goto LABEL_24;
  }

  sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
  v15 = static NSObject.== infix(_:_:)();

  if ((v15 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:

  swift_unknownObjectWeakAssign();
}

void sub_100AFDFF8(void *a1)
{
  if (!a1)
  {
LABEL_4:
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v53 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v53, "media replacing rep is no longer valid", 38, 2u);
    StaticString.description.getter("sourceRect(forMediaReplacing:)", 30, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
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
    v14 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 370;
    v16 = v53;
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
    sub_100005404(v11, &_mh_execute_header, v20, "media replacing rep is no longer valid", 38, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("sourceRect(forMediaReplacing:)", 30, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("media replacing rep is no longer valid", 38, 2);
    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:370 isFatal:0 format:v25 args:v22];

    return;
  }

  v2 = a1;
  if ([v2 hasBeenRemoved])
  {

    goto LABEL_4;
  }

  v26 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController);
  [v2 frameInUnscaledCanvas];
  [v26 convertUnscaledToBoundsRect:?];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [v26 visibleScaledRectForCanvasUI];
  v61.origin.x = v35;
  v51 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v54.origin.x = v28;
  v54.origin.y = v30;
  v54.size.width = v32;
  v54.size.height = v34;
  v61.origin.y = v37;
  v61.size.width = v39;
  v61.size.height = v41;
  v55 = CGRectIntersection(v54, v61);
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  v46 = CGRectGetWidth(v55);
  v52 = y;
  v56.origin.x = x;
  v56.origin.y = y;
  v47 = width;
  v56.size.width = width;
  v48 = height;
  v56.size.height = height;
  v49 = v46 * CGRectGetHeight(v56);
  v57.origin.x = v51;
  v57.origin.y = v37;
  v57.size.width = v39;
  v57.size.height = v41;
  v50 = CGRectGetWidth(v57);
  v58.origin.x = v51;
  v58.origin.y = v37;
  v58.size.width = v39;
  v58.size.height = v41;
  if (v50 * CGRectGetHeight(v58) < v49 + v49)
  {
    v59.origin.x = x;
    v59.origin.y = v52;
    v59.size.width = v47;
    v59.size.height = v48;
    CGRectGetMidX(v59);
    v60.origin.x = x;
    v60.origin.y = v52;
    v60.size.width = v47;
    v60.size.height = v48;
    CGRectGetMidY(v60);
  }
}

void sub_100AFE550(uint64_t a1, void *a2, NSObject *a3, void *a4, void *a5, uint64_t a6)
{
  v89 = a6;
  v90 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v14 - 8);
  v16 = &v78 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v22 = &v78 - v21;
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  if (a2)
  {
    swift_willThrow();
    v30 = a2;
LABEL_3:
    swift_errorRetain();
    if (qword_1019F21A0 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlInsertMedia;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v91[0] = v30;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v33;
    *(inited + 40) = v35;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v36, "Error loading sticker from provider: %@", 39, 2, inited);

    swift_setDeallocating();
    sub_100005070((inited + 32));
    return;
  }

  v83 = a4;
  v82 = 0;
  v84 = a5;
  v81 = v29;
  v85 = v28;
  v86 = &v78 - v26;
  v87 = a3;
  v88 = v27;
  v37 = v25;
  sub_10000BE14(v90, v16, &unk_1019F33C0, &unk_101468A60);
  if ((*(v18 + 48))(v16, 1, v37) == 1)
  {
    sub_10000CAAC(v16, &unk_1019F33C0, &unk_101468A60);
    dispatch_group_leave(v87);
    return;
  }

  v38 = v18;
  v39 = *(v18 + 32);
  v40 = v86;
  v80 = v18 + 32;
  v79 = v39;
  (v39)(v86, v16, v37);
  v41 = v37;
  v42 = [v83 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v11 + 8))(v13, v10);
  v43 = v40;
  v44 = v88;
  URL.appendingPathComponent(_:isDirectory:)();

  v90 = v38;
  v45 = *(v38 + 8);
  v46 = v22;
  v47 = v41;
  v45(v46, v41);
  URL.lastPathComponent.getter();
  v48 = v85;
  URL.appendingPathComponent(_:)();

  URL._bridgeToObjectiveC()(v49);
  v51 = v50;
  v91[0] = 0;
  v52 = v84;
  v53 = [v84 createDirectoryAtURL:v50 withIntermediateDirectories:1 attributes:0 error:v91];

  if (!v53)
  {
    v72 = v91[0];
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v45(v48, v47);
    v45(v44, v47);
    v73 = v43;
    v74 = v47;
LABEL_17:
    v45(v73, v74);
    goto LABEL_3;
  }

  v83 = v47;
  v54 = v91[0];
  URL._bridgeToObjectiveC()(v55);
  v57 = v56;
  URL._bridgeToObjectiveC()(v58);
  v60 = v59;
  v91[0] = 0;
  v61 = [v52 copyItemAtURL:v57 toURL:v59 error:v91];

  v62 = v91[0];
  if (!v61)
  {
    v75 = v91[0];
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v76 = v48;
    v77 = v83;
    v45(v76, v83);
    v45(v88, v77);
    v73 = v43;
    v74 = v77;
    goto LABEL_17;
  }

  (*(v90 + 16))(v81, v48, v83);
  v63 = v89;
  swift_beginAccess();
  v64 = *(v63 + 16);
  v65 = v62;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v63 + 16) = v64;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v64 = sub_100B364FC(0, *(v64 + 2) + 1, 1, v64);
    *(v63 + 16) = v64;
  }

  v67 = v87;
  v69 = *(v64 + 2);
  v68 = *(v64 + 3);
  v70 = v48;
  if (v69 >= v68 >> 1)
  {
    v64 = sub_100B364FC((v68 > 1), v69 + 1, 1, v64);
  }

  *(v64 + 2) = v69 + 1;
  v71 = v83;
  v79(&v64[((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v69]);
  *(v63 + 16) = v64;
  dispatch_group_leave(v67);
  v45(v70, v71);
  v45(v88, v71);
  v45(v86, v71);
}

uint64_t sub_100AFECF0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  v7 = *(a2 + 16);

  sub_100AF7AA0(v7, sub_100B003A4, a3);

  return a4(1);
}

id sub_100AFEDA4(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    return [result removeDirectory];
  }

  return result;
}

id sub_100AFEE80()
{
  result = [*(v0 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController) editorController];
  if (result)
  {
    v2 = result;
    v3 = [result mostSpecificCurrentEditorOfClass:0];

    if (!v3 || !swift_dynamicCastObjCProtocolConditional() || (result = swift_dynamicCastObjCProtocolConditional()) == 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void sub_100AFEF3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_100AFEFC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100AF77F8();
  if (v4)
  {
    v5 = v4;
    swift_getObjectType();
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    v9 = sub_100B5305C(v7);

    if (v9)
    {
      sub_1005B981C(&unk_1019F6B30, &qword_10146F930);
      v10 = type metadata accessor for URL();
      v11 = *(v10 - 8);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10146C6B0;
      (*(v11 + 16))(v13 + v12, a1, v10);
      v14 = v2;
      sub_10126E3B8(v13, v14);

      swift_setDeallocating();
      (*(v11 + 8))(v13 + v12, v10);

      return swift_deallocClassInstance();
    }
  }

  if (qword_1019F21A0 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.crlInsertMedia;
  v17 = static os_log_type_t.default.getter();

  return sub_100005404(v16, &_mh_execute_header, v17, "No media replacing rep or image not allowed.", 44, 2, _swiftEmptyArrayStorage);
}

void sub_100AFF1D4(void *a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    return;
  }

  if (*a2)
  {
    swift_unknownObjectRetain();
  }

  v6 = [*(v2 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController) canvasView];
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v61 = sub_1005B981C(&qword_101A172E0, &unk_1014951C0);
  sub_1005B981C(&unk_101A10AC0, &unk_1014B92F0);
  String.init<A>(describing:)();
  v8 = String._bridgeToObjectiveC()();

  v9 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v9;
  v10 = inited;
  v11 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr);
  *(inited + 32) = v8;
  v12 = inited + 32;
  *(v10 + 64) = v11;
  if (v6)
  {
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    swift_unknownObjectRetain();
    v13 = v6;
    v14 = static NSObject.== infix(_:_:)();
    swift_unknownObjectRelease();

    if (v14)
    {
      swift_unknownObjectRelease();
      goto LABEL_37;
    }
  }

  v60 = v6;
  v58 = a1;
  v57 = objc_opt_self();
  v59 = [v57 _atomicIncrementAssertCount];
  v61 = [objc_allocWithZone(NSString) init];
  sub_100604538(v10, &v61, "expected equality between two values of type %{public}@", 55, 2u);
  StaticString.description.getter("popoverPresentationController(_:willRepositionPopoverTo:in:)", 60, 2);
  v15 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v16 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v10;
  v21 = v20;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_42;
  }

LABEL_11:
  v22 = static OS_os_log.crlAssert;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10146CA70;
  *(v23 + 56) = &type metadata for Int32;
  *(v23 + 64) = &protocol witness table for Int32;
  *(v23 + 32) = v59;
  *(v23 + 96) = v9;
  *(v23 + 104) = v11;
  *(v23 + 72) = v15;
  *(v23 + 136) = &type metadata for String;
  v24 = sub_1000053B0();
  *(v23 + 112) = v18;
  *(v23 + 120) = v21;
  *(v23 + 176) = &type metadata for UInt;
  *(v23 + 184) = &protocol witness table for UInt;
  *(v23 + 144) = v24;
  *(v23 + 152) = 350;
  v25 = v61;
  *(v23 + 216) = v9;
  *(v23 + 224) = v11;
  *(v23 + 192) = v25;
  v26 = v15;
  v27 = v25;
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v29, "expected equality between two values of type %{public}@", 55, 2, v19);

  type metadata accessor for __VaListBuilder();
  v9 = swift_allocObject();
  v9[2] = 8;
  v9[3] = 0;
  v30 = v9 + 3;
  v9[4] = 0;
  v9[5] = 0;
  v31 = v19[2];
  v19 = v60;
  if (v31)
  {
    v15 = 0;
    v11 = 40;
    while (1)
    {
      v18 = sub_100020E58((v12 + 40 * v15), *(v12 + 40 * v15 + 24));
      v32 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v21 = *v30;
      v33 = *(v32 + 16);
      v34 = __OFADD__(*v30, v33);
      v35 = *v30 + v33;
      if (v34)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        swift_once();
        goto LABEL_11;
      }

      v36 = v9[4];
      if (v36 >= v35)
      {
        goto LABEL_28;
      }

      if (v36 + 0x4000000000000000 < 0)
      {
        goto LABEL_40;
      }

      v18 = v9[5];
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      v9[4] = v35;
      if ((v35 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_41;
      }

      v37 = v32;
      v38 = swift_slowAlloc();
      v39 = v38;
      v9[5] = v38;
      if (v18)
      {
        break;
      }

      v32 = v37;
      v19 = v60;
      if (!v39)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_29:
      v41 = *(v32 + 16);
      if (v41)
      {
        v42 = (v32 + 32);
        v43 = *v30;
        while (1)
        {
          v44 = *v42++;
          *&v39[8 * v43] = v44;
          v43 = *v30 + 1;
          if (__OFADD__(*v30, 1))
          {
            break;
          }

          *v30 = v43;
          if (!--v41)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_13:

      v15 = v15 + 1;
      if (v15 == v31)
      {
        goto LABEL_36;
      }
    }

    if (v38 != v18 || v38 >= &v18[8 * v21])
    {
      memmove(v38, v18, 8 * v21);
    }

    v18 = v9;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v32 = v37;
    v19 = v60;
LABEL_28:
    v39 = v9[5];
    if (!v39)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

LABEL_36:
  v45 = __VaListBuilder.va_list()();
  StaticString.description.getter("popoverPresentationController(_:willRepositionPopoverTo:in:)", 60, 2);
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSMediaReplacer.swift", 87, 2);
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter("expected equality between two values of type %{public}@", 55, 2);
  v13 = String._bridgeToObjectiveC()();

  [v57 handleFailureInFunction:v46 file:v47 lineNumber:350 isFatal:0 format:v13 args:v45];
  swift_unknownObjectRelease();

  a1 = v58;
LABEL_37:

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v48 = sub_100AF77F8();
  sub_100AFDFF8(v48);
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  *a1 = v50;
  a1[1] = v52;
  a1[2] = v54;
  a1[3] = v56;
}

void sub_100AFF8C4(void *a1, void *a2, void *a3)
{
  v57 = a2;
  v63 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = swift_allocObject();
  *(v66 + 16) = a3;
  v64 = a3;
  _Block_copy(a3);
  v65 = a1;
  v7 = [a1 registeredTypeIdentifiers];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v8 + 40;
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v12 = String._bridgeToObjectiveC()();
      isa = [objc_opt_self() supportedMovieAnimatedImageTypes];
      if (!isa)
      {
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      v14 = [v12 crl_conformsToAnyUTI:isa];

      if (v14)
      {
        break;
      }

      ++v10;

      v11 += 16;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = [objc_opt_self() defaultManager];
    v22 = swift_allocObject();
    *(v22 + 16) = _swiftEmptyArrayStorage;
    v23 = dispatch_group_create();
    v24 = objc_allocWithZone(CRLTemporaryDirectory);
    v25 = String._bridgeToObjectiveC()();
    aBlock = 0;
    v26 = [v24 initWithSignature:v25 error:&aBlock];

    v27 = aBlock;
    if (v26)
    {
      [v26 leakTemporaryDirectory];
      v28 = *(v20 + 16);
      *(v20 + 16) = v26;
      v29 = v20;
      v30 = v26;

      dispatch_group_enter(v23);
      v31 = v22;
      v32 = String._bridgeToObjectiveC()();

      v33 = swift_allocObject();
      v33[2] = v23;
      v33[3] = v30;
      v33[4] = v21;
      v33[5] = v31;
      v72 = sub_100B00340;
      v73 = v33;
      aBlock = _NSConcreteStackBlock;
      v69 = *"";
      v70 = sub_100AF4978;
      v71 = &unk_101894EC8;
      v34 = _Block_copy(&aBlock);
      v64 = v30;
      v55 = v23;
      v56 = v21;

      v35 = [v65 loadFileRepresentationForTypeIdentifier:v32 completionHandler:v34];
      _Block_release(v34);

      sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
      v36 = static OS_dispatch_queue.main.getter();
      v37 = swift_allocObject();
      v38 = v57;
      v37[2] = v57;
      v37[3] = v31;
      v54[1] = v31;
      v37[4] = v29;
      v37[5] = sub_100B00328;
      v37[6] = v66;
      v72 = sub_100B0034C;
      v73 = v37;
      aBlock = _NSConcreteStackBlock;
      v69 = *"";
      v70 = sub_100007638;
      v71 = &unk_101894F18;
      v39 = _Block_copy(&aBlock);

      v40 = v38;

      v41 = v58;
      static DispatchQoS.unspecified.getter();
      v67 = _swiftEmptyArrayStorage;
      sub_100B0035C(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
      sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
      v42 = v60;
      v43 = v63;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v44 = v55;
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v39);

      (*(v62 + 8))(v42, v43);
      (*(v59 + 8))(v41, v61);
    }

    else
    {
      v45 = v21;
      v46 = v27;
      v47 = _convertNSErrorToError(_:)();

      swift_willThrow();

      if (qword_1019F21A0 != -1)
      {
        swift_once();
      }

      v48 = static OS_os_log.crlInsertMedia;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      aBlock = v47;
      swift_errorRetain();
      sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
      v50 = String.init<A>(describing:)();
      v52 = v51;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v50;
      *(inited + 40) = v52;
      v53 = static os_log_type_t.error.getter();
      sub_100005404(v48, &_mh_execute_header, v53, "Error attempting to replace sticker: %@", 39, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      [*(v20 + 16) removeDirectory];
      (*(v64 + 2))(v64, 1);
    }
  }

  else
  {
LABEL_8:

    (*(v64 + 2))(v64, 1);
    if (qword_1019F21A0 != -1)
    {
LABEL_17:
      swift_once();
    }

    v15 = static OS_os_log.crlInsertMedia;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_10146C6B0;
    v17 = [v65 registeredTypeIdentifiers];
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v16 + 56) = sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
    *(v16 + 64) = sub_10001A2F8(&unk_101A10AA0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
    *(v16 + 32) = v18;
    v19 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v19, "Dismissing sticker picker. Provider does not contain any valid type identifiers (%p).", 85, 2, v16);
    swift_setDeallocating();
    sub_100005070((v16 + 32));
  }
}

uint64_t sub_100B0035C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_100B003DC(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_100B005BC(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_10085E048;

  return sub_100B0084C(a1);
}

uint64_t sub_100B00678()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10085E048;

  return sub_100B01B1C();
}

uint64_t sub_100B00724(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_10085FA90;

  return sub_100B0084C(a1);
}

uint64_t sub_100B0084C(uint64_t a1)
{
  v2[76] = v1;
  v2[75] = a1;
  type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v2[77] = swift_task_alloc();
  v2[78] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[79] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  _s4NodeVMa(0);
  v2[82] = swift_task_alloc();
  sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();

  return _swift_task_switch(sub_100B009B8, 0, 0);
}

uint64_t sub_100B009B8()
{
  v38 = v0;
  v1 = v0[84];
  v2 = v0[76];
  v3 = OBJC_IVAR____TtC8Freeform34CRLBoardLibraryCommandCreateFolder_newFolderIdentifier;
  v0[85] = OBJC_IVAR____TtC8Freeform34CRLBoardLibraryCommandCreateFolder_newFolderIdentifier;
  swift_beginAccess();
  sub_10069646C(v2 + v3, v1);
  v4 = type metadata accessor for CRLFolderIdentifier(0);
  v0[86] = v4;
  v5 = *(v4 - 8);
  v0[87] = v5;
  if ((*(v5 + 48))(v1, 1, v4) != 1)
  {
    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37, "expected nil value, but non-nil found", 37, 2u);
    StaticString.description.getter("createNewFolderAndCacheIdentifier(boardLibrary:)", 48, 2);
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLBoardLibraryCommandCreateFolder.swift", 106, 2);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_1005CF000();
    *(inited + 96) = v16;
    v17 = sub_100B02420(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 42;
    v19 = v37;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter("createNewFolderAndCacheIdentifier(boardLibrary:)", 48, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLBoardLibraryCommandCreateFolder.swift", 106, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
    v28 = String._bridgeToObjectiveC()();

    [v6 handleFailureInFunction:v26 file:v27 lineNumber:42 isFatal:0 format:v28 args:v25];
  }

  v29 = v0[76];
  sub_100B01AB4(v0[84]);
  v30 = OBJC_IVAR____TtC8Freeform34CRLBoardLibraryCommandCreateFolder_parentFolderIdentifier;
  v31 = *(v29 + OBJC_IVAR____TtC8Freeform34CRLBoardLibraryCommandCreateFolder_itemIdentifiersToReparent);
  v32 = *(v29 + OBJC_IVAR____TtC8Freeform34CRLBoardLibraryCommandCreateFolder_title);
  v33 = *(v29 + OBJC_IVAR____TtC8Freeform34CRLBoardLibraryCommandCreateFolder_title + 8);
  v34 = swift_task_alloc();
  v0[88] = v34;
  *v34 = v0;
  v34[1] = sub_100B00EB0;
  v35 = v0[82];

  return sub_1010CF78C(v35, v29 + v30, v31, v32, v33);
}

uint64_t sub_100B00EB0()
{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = sub_100B017BC;
  }

  else
  {
    v2 = sub_100B00FC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B00FC4()
{
  v62 = v0;
  sub_100B022F0(v0[82], v0[79], type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item;
  if (EnumCaseMultiPayload != 1)
  {
    v7 = v0 + 79;
LABEL_5:
    sub_100B023C0(*v7, v2);
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v9 = sub_100F8903C();
    v11 = v10;
    *(inited + 56) = &type metadata for String;
    v12 = sub_1000053B0();
    *(inited + 32) = v9;
    v60 = inited + 32;
    *(inited + 64) = v12;
    *(inited + 40) = v11;
    v58 = objc_opt_self();
    LODWORD(v13) = [v58 _atomicIncrementAssertCount];
    v61 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v61, "Expected a folder node to be returned from createNewFolder; instead got %@", 74, 2u);
    StaticString.description.getter("createNewFolderAndCacheIdentifier(boardLibrary:)", 48, 2);
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLBoardLibraryCommandCreateFolder.swift", 106, 2);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v20 = static OS_os_log.crlAssert;
      v59 = v0;
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_10146CA70;
      *(v21 + 56) = &type metadata for Int32;
      *(v21 + 64) = &protocol witness table for Int32;
      *(v21 + 32) = v13;
      v22 = sub_1005CF000();
      *(v21 + 96) = v22;
      v23 = sub_100B02420(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
      *(v21 + 72) = v14;
      *(v21 + 136) = &type metadata for String;
      *(v21 + 144) = v12;
      *(v21 + 104) = v23;
      *(v21 + 112) = v17;
      *(v21 + 120) = v19;
      *(v21 + 176) = &type metadata for UInt;
      *(v21 + 184) = &protocol witness table for UInt;
      *(v21 + 152) = 46;
      v24 = v61;
      *(v21 + 216) = v22;
      *(v21 + 224) = v23;
      *(v21 + 192) = v24;
      v25 = v14;
      v26 = v24;
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v28, "Expected a folder node to be returned from createNewFolder; instead got %@", 74, 2, inited);

      type metadata accessor for __VaListBuilder();
      v19 = swift_allocObject();
      v19[2] = 8;
      v19[3] = 0;
      v29 = v19 + 3;
      v19[4] = 0;
      v19[5] = 0;
      v14 = *(inited + 16);
      v0 = inited;
      if (!v14)
      {
LABEL_31:
        v0 = v59;
        v44 = v59[82];
        v45 = __VaListBuilder.va_list()();
        StaticString.description.getter("createNewFolderAndCacheIdentifier(boardLibrary:)", 48, 2);
        v46 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLBoardLibraryCommandCreateFolder.swift", 106, 2);
        v47 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Expected a folder node to be returned from createNewFolder; instead got %@", 74, 2);
        v48 = String._bridgeToObjectiveC()();

        [v58 handleFailureInFunction:v46 file:v47 lineNumber:46 isFatal:0 format:v48 args:v45];

        swift_setDeallocating();
        swift_arrayDestroy();
        sub_100B023C0(v44, _s4NodeVMa);
        goto LABEL_33;
      }

      v30 = 0;
      v12 = 40;
      while (1)
      {
        v31 = (v60 + 40 * v30);
        v17 = v31[3];
        LODWORD(v13) = sub_100020E58(v31, v17);
        v32 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v33 = *v29;
        v34 = *(v32 + 16);
        v35 = __OFADD__(*v29, v34);
        v36 = *v29 + v34;
        if (v35)
        {
          break;
        }

        v13 = v19[4];
        if (v13 >= v36)
        {
          goto LABEL_23;
        }

        if (v13 + 0x4000000000000000 < 0)
        {
          goto LABEL_38;
        }

        v17 = v19[5];
        if (2 * v13 > v36)
        {
          v36 = 2 * v13;
        }

        v19[4] = v36;
        if ((v36 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_39;
        }

        inited = v32;
        v37 = swift_slowAlloc();
        v38 = v37;
        v19[5] = v37;
        if (v17)
        {
          if (v37 != v17 || v37 >= &v17[8 * v33])
          {
            memmove(v37, v17, 8 * v33);
          }

          LODWORD(v13) = v19;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v32 = inited;
LABEL_23:
          v38 = v19[5];
          if (!v38)
          {
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        v32 = inited;
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

        if (++v30 == v14)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
    }
  }

  v3 = v0[81];
  v4 = v0[80];
  sub_100B02358(v0[79], v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_100B02358(v3, v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v5 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  v6 = (*(*(v5 - 8) + 48))(v4, 5, v5);
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
  if (v6)
  {
    v7 = v0 + 80;
    goto LABEL_5;
  }

  v49 = v0[87];
  v50 = v0[86];
  v51 = v0[85];
  v52 = v0[83];
  v53 = v0[80];
  v54 = v0[77];
  v55 = v0[76];
  sub_100B023C0(v0[82], _s4NodeVMa);
  sub_100B02358(v53, v54, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  sub_100B022F0(v54, v52, type metadata accessor for CRLFolderIdentifier);
  sub_100B023C0(v54, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  (*(v49 + 56))(v52, 0, 1, v50);
  swift_beginAccess();
  sub_100696654(v52, v55 + v51);
  swift_endAccess();
LABEL_33:

  v56 = v0[1];

  return v56();
}

uint64_t sub_100B017BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B018A8()
{

  sub_100B01AB4(v0 + OBJC_IVAR____TtC8Freeform34CRLBoardLibraryCommandCreateFolder_parentFolderIdentifier);

  v1 = v0 + OBJC_IVAR____TtC8Freeform34CRLBoardLibraryCommandCreateFolder_newFolderIdentifier;

  return sub_100B01AB4(v1);
}

id sub_100B0190C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLBoardLibraryCommandCreateFolder(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLBoardLibraryCommandCreateFolder(uint64_t a1)
{
  result = qword_101A10B80;
  if (!qword_101A10B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100B01A08(uint64_t a1)
{
  sub_100039B50(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100B01AB4(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B01B1C()
{
  v1[34] = v0;
  sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  v1[35] = swift_task_alloc();
  v2 = type metadata accessor for CRLFolderIdentifier(0);
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_100B01C14, 0, 0);
}

uint64_t sub_100B01C14()
{
  v38 = v0;
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = OBJC_IVAR____TtC8Freeform34CRLBoardLibraryCommandCreateFolder_newFolderIdentifier;
  swift_beginAccess();
  sub_10069646C(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100B01AB4(v0[35]);
    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37, "Tried to undo a create folder command, but could not determine the folder's identifier.", 87, 2u);
    StaticString.description.getter("deleteNewFolderAndClearCachedIdentifier(boardLibrary:)", 54, 2);
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLBoardLibraryCommandCreateFolder.swift", 106, 2);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_1005CF000();
    *(inited + 96) = v16;
    v17 = sub_100B02420(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 56;
    v19 = v37;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "Tried to undo a create folder command, but could not determine the folder's identifier.", 87, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter("deleteNewFolderAndClearCachedIdentifier(boardLibrary:)", 54, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLBoardLibraryCommandCreateFolder.swift", 106, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Tried to undo a create folder command, but could not determine the folder's identifier.", 87, 2);
    v28 = String._bridgeToObjectiveC()();

    [v6 handleFailureInFunction:v26 file:v27 lineNumber:56 isFatal:0 format:v28 args:v25];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v31 = v0[37];
    v32 = v0[38];
    sub_100B02358(v0[35], v32, type metadata accessor for CRLFolderIdentifier);
    sub_1005B981C(&qword_1019F66B0, &qword_10146F240);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10146C6B0;
    sub_100B022F0(v32, v34 + v33, type metadata accessor for CRLFolderIdentifier);
    sub_1005C19E0(v34);
    swift_setDeallocating();
    sub_100B023C0(v34 + v33, type metadata accessor for CRLFolderIdentifier);
    swift_deallocClassInstance();

    type metadata accessor for MainActor();
    v0[39] = static MainActor.shared.getter();
    v36 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100B021C0, v36, v35);
  }
}

uint64_t sub_100B021C0()
{

  sub_1006A3EB0();
  *(v0 + 320) = swift_allocError();
  *v1 = 11;
  swift_willThrow();

  return _swift_task_switch(sub_100B02260, 0, 0);
}

uint64_t sub_100B02260()
{
  sub_100B023C0(*(v0 + 304), type metadata accessor for CRLFolderIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B022F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B02358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B023C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B02420(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

id sub_100B02468()
{
  result = [objc_opt_self() systemGroupedBackgroundColor];
  qword_101AD72A0 = result;
  return result;
}

uint64_t sub_100B024A4(uint64_t a1)
{
  result = _UISolariumEnabled();
  v2 = 20.0;
  if (result)
  {
    v2 = 16.0;
  }

  qword_101AD72A8 = *&v2;
  return result;
}

uint64_t sub_100B024D4(uint64_t a1)
{
  result = _UISolariumEnabled();
  v2 = INFINITY;
  if (!result)
  {
    v2 = 8.0;
  }

  qword_101AD72B0 = *&v2;
  return result;
}

uint64_t sub_100B02508@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v3 = type metadata accessor for ColorSchemeContrast();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v71 = &v62 - v6;
  v78 = type metadata accessor for ColorScheme();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BorderedProminentButtonStyle();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for CRLScenesPopoverUI(0);
  v11 = *(v70 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v70);
  v13 = sub_1005B981C(&qword_101A10D18, &qword_1014954E8);
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v64 = sub_1005B981C(&qword_101A10D20, &qword_1014954F0);
  __chkstk_darwin(v64);
  v17 = &v62 - v16;
  v67 = sub_1005B981C(&qword_101A10D28, &qword_1014954F8);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v62 - v18;
  v63 = sub_1005B981C(&qword_101A10D30, &unk_101495500);
  __chkstk_darwin(v63);
  v20 = &v62 - v19;
  v77 = v2;
  sub_100B04EF8(v2, &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  sub_100B04F5C(&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_1005B981C(&qword_101A10D38, &qword_101495518);
  sub_100B05020();
  Button.init(action:label:)();
  if (qword_1019F1C58 != -1)
  {
    swift_once();
  }

  v23 = qword_101AD72B0;
  v24 = &v15[*(v13 + 36)];
  v25 = *(type metadata accessor for RoundedRectangle() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = v23;
  v24[1] = v23;
  *(v24 + *(sub_1005B981C(&qword_101A10DC0, &qword_1014D9D00) + 36)) = 256;
  sub_1005B981C(&qword_101A07218, &qword_101486410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  LOBYTE(v24) = static Edge.Set.top.getter();
  *(inited + 32) = v24;
  v29 = static Edge.Set.leading.getter();
  *(inited + 33) = v29;
  v30 = static Edge.Set.bottom.getter();
  *(inited + 34) = v30;
  v31 = static Edge.Set.trailing.getter();
  *(inited + 35) = v31;
  v32 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v32 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v29)
  {
    v32 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v32 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v31)
  {
    v32 = Edge.Set.init(rawValue:)();
  }

  if (qword_1019F1C50 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10003DFF8(v15, v17, &qword_101A10D18, &qword_1014954E8);
  v41 = &v17[*(v64 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  BorderedProminentButtonStyle.init()();
  sub_100B05410();
  sub_100B05580(&qword_101A10DF0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v42 = v65;
  v43 = v69;
  View.buttonStyle<A>(_:)();
  (*(v68 + 8))(v10, v43);
  sub_10000CAAC(v17, &qword_101A10D20, &qword_1014954F0);
  v44 = &v20[*(v63 + 36)];
  v45 = *(sub_1005B981C(&qword_101A10DF8, &qword_101495560) + 28);
  v46 = enum case for ControlSize.large(_:);
  v47 = type metadata accessor for ControlSize();
  (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
  *v44 = swift_getKeyPath();
  (*(v66 + 32))(v20, v42, v67);
  KeyPath = swift_getKeyPath();
  v49 = v71;
  sub_100FBD180(v71);
  v51 = v72;
  v50 = v73;
  v52 = v74;
  (*(v73 + 104))(v72, enum case for ColorSchemeContrast.increased(_:), v74);
  LOBYTE(v44) = static ColorSchemeContrast.== infix(_:_:)();
  v53 = *(v50 + 8);
  v53(v51, v52);
  v53(v49, v52);
  if (v44)
  {
    v54 = v75;
    v55 = v76;
    v56 = v78;
    (*(v76 + 104))(v75, enum case for ColorScheme.light(_:), v78);
  }

  else
  {
    v54 = v75;
    sub_100FBD1A8(v75);
    v56 = v78;
    v55 = v76;
  }

  v57 = sub_1005B981C(&qword_101A10E00, &qword_1014955C8);
  v58 = v79;
  v59 = (v79 + *(v57 + 36));
  v60 = sub_1005B981C(&qword_101A10E08, &qword_1014955D0);
  (*(v55 + 32))(v59 + *(v60 + 28), v54, v56);
  *v59 = KeyPath;
  return sub_10003DFF8(v20, v58, &qword_101A10D30, &unk_101495500);
}

double sub_100B02E94(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10103A51C();
    sub_101048E40(0);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100B02EE8@<X0>(uint64_t a1@<X8>)
{
  v43 = sub_1005B981C(&qword_101A10E10, &qword_1014955D8);
  __chkstk_darwin(v43);
  v3 = &v41 - v2;
  v4 = sub_1005B981C(&qword_101A10D70, &qword_101495530);
  __chkstk_darwin(v4);
  v6 = &v41 - v5;
  v7 = sub_1005B981C(&qword_101A10D60, &qword_101495528);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v42 = sub_1005B981C(&qword_101A10D50, &qword_101495520);
  __chkstk_darwin(v42);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  if (_UISolariumEnabled())
  {
    v41 = a1;
    if (qword_1019F1C60 != -1)
    {
      swift_once();
    }

    v45 = xmmword_101AD72B8;
    sub_100017CD8();

    Label<>.init<A>(_:systemImage:)();
    v15 = &v6[*(sub_1005B981C(&qword_101A10D80, &qword_101495538) + 36)];
    v16 = *(sub_1005B981C(&qword_101A10D90, &unk_1014D9650) + 28);
    v17 = enum case for Image.Scale.large(_:);
    v18 = type metadata accessor for Image.Scale();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = swift_getKeyPath();
    *&v6[*(v4 + 36)] = static Color.white.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10003DFF8(v6, v9, &qword_101A10D70, &qword_101495530);
    v19 = &v9[*(v7 + 36)];
    v20 = v50;
    v19[4] = v49;
    v19[5] = v20;
    v19[6] = v51;
    v21 = v46;
    *v19 = v45;
    v19[1] = v21;
    v22 = v48;
    v19[2] = v47;
    v19[3] = v22;
    KeyPath = swift_getKeyPath();
    sub_10003DFF8(v9, v11, &qword_101A10D60, &qword_101495528);
    v24 = &v11[*(v42 + 36)];
    *v24 = KeyPath;
    *(v24 + 1) = 1;
    v24[16] = 0;
    sub_10003DFF8(v11, v14, &qword_101A10D50, &qword_101495520);
    sub_100B055C8(v14, v3);
    swift_storeEnumTagMultiPayload();
    sub_1005B981C(&qword_101A10DB8, &qword_101495550);
    sub_100B050AC();
    sub_100B0538C();
    _ConditionalContent<>.init(storage:)();
    return sub_10000CAAC(v14, &qword_101A10D50, &qword_101495520);
  }

  else
  {
    if (qword_1019F1C60 != -1)
    {
      swift_once();
    }

    v45 = xmmword_101AD72B8;
    sub_100017CD8();

    v26 = Text.init<A>(_:)();
    v28 = v27;
    v30 = v29;
    LODWORD(v45) = static HierarchicalShapeStyle.primary.getter();
    v31 = Text.foregroundStyle<A>(_:)();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_10007441C(v26, v28, v30 & 1);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v44 = v35 & 1;
    *v3 = v31;
    *(v3 + 1) = v33;
    v3[16] = v35 & 1;
    *(v3 + 3) = v37;
    v38 = v50;
    *(v3 + 6) = v49;
    *(v3 + 7) = v38;
    *(v3 + 8) = v51;
    v39 = v46;
    *(v3 + 2) = v45;
    *(v3 + 3) = v39;
    v40 = v48;
    *(v3 + 4) = v47;
    *(v3 + 5) = v40;
    swift_storeEnumTagMultiPayload();
    sub_1005B981C(&qword_101A10DB8, &qword_101495550);
    sub_100B050AC();
    sub_100B0538C();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100B034E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A10CD8, &qword_1014953E8);
  __chkstk_darwin(v4 - 8);
  v6 = v25 - v5;
  v7 = sub_1005B981C(&qword_101A10CE0, &qword_1014953F0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v25 - v9;
  v11 = sub_1005B981C(&qword_101A10CE8, &qword_1014953F8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v25 - v13;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v15 = sub_1005B981C(&qword_101A10CF0, &qword_101495400);
  sub_100B03794(v2, &v6[*(v15 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003DFF8(v6, v10, &qword_101A10CD8, &qword_1014953E8);
  v16 = &v10[*(v8 + 44)];
  v17 = v25[5];
  *(v16 + 4) = v25[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v25[6];
  v18 = v25[1];
  *v16 = v25[0];
  *(v16 + 1) = v18;
  v19 = v25[3];
  *(v16 + 2) = v25[2];
  *(v16 + 3) = v19;
  sub_10003DFF8(v10, v14, &qword_101A10CE0, &qword_1014953F0);
  *&v14[*(v12 + 44)] = 1;
  if (qword_1019F1C48 != -1)
  {
    swift_once();
  }

  v20 = qword_101AD72A0;
  v21 = Color.init(_:)();
  v22 = static Edge.Set.all.getter();
  sub_10003DFF8(v14, a1, &qword_101A10CE8, &qword_1014953F8);
  result = sub_1005B981C(&qword_101A10CF8, &qword_101495408);
  v24 = a1 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v22;
  return result;
}

uint64_t sub_100B03794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_101A10D00, &qword_101495410);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-v6 - 8];
  v8 = sub_1005B981C(&qword_101A10D08, &qword_101495418);
  __chkstk_darwin(v8 - 8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v11);
  v13 = &v25[-v12 - 8];
  swift_unknownObjectWeakLoadStrong();
  v14 = *(a1 + 24);
  v29 = *(a1 + 8);
  swift_unknownObjectWeakInit();
  v15 = v14;
  swift_unknownObjectRelease();
  type metadata accessor for CRLScenesPopoverState(0);
  sub_100B05580(&qword_101A10C98, type metadata accessor for CRLScenesPopoverState, byte_1014953B0);
  v30 = ObservedObject.init(wrappedValue:)();
  v31 = v16;
  v27 = 0;
  State.init(wrappedValue:)();
  v32 = v25[0];
  v33 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25[0])
  {
    v17 = 1;
  }

  else
  {
    sub_100B02508(v7);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v18 = v25[0];
    KeyPath = swift_getKeyPath();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v21 = &v7[*(v4 + 36)];
    *v21 = KeyPath;
    v21[1] = sub_1009207D0;
    v21[2] = v20;
    sub_10003DFF8(v7, v13, &qword_101A10D00, &qword_101495410);
    v17 = 0;
  }

  (*(v5 + 56))(v13, v17, 1, v4);
  sub_100B04E48(v28, v25);
  sub_10009EBF8(v13, v10);
  sub_100B04E48(v25, a2);
  v22 = sub_1005B981C(&qword_101A10D10, &qword_1014954E0);
  sub_10009EBF8(v10, a2 + *(v22 + 48));
  sub_10009EC68(v13);
  sub_100B04EA4(v28);
  sub_10009EC68(v10);
  return sub_100B04EA4(v25);
}

uint64_t sub_100B03B14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100B03B88(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = sub_10067400C(v4, a1);

  if ((v3 & 1) == 0)
  {
    ObservableObjectPublisher.send()();
  }
}

double sub_100B03CC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100B03D38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_100B03DE8()
{
  v1 = v0;
  v31 = sub_1005B981C(&unk_101A08DC0, &unk_101474840);
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v27 - v3;
  v5 = sub_1005B981C(&qword_101A10E18, &qword_101495768);
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v28 = &v27 - v6;
  v27 = sub_1005B981C(&qword_101A10E20, &qword_101495770);
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v27 - v8;
  v10 = sub_1005B981C(&qword_101A10E28, &qword_101495778);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState_objectDidChange;
  type metadata accessor for ObservableObjectPublisher();
  swift_allocObject();
  *&v0[v14] = ObservableObjectPublisher.init()();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005C1D24(_swiftEmptyArrayStorage);
  }

  else
  {
    v15 = _swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState_sceneInfosToDelete] = v15;
  v16 = OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState__sceneInfos;
  v33 = _swiftEmptyArrayStorage;
  sub_1005B981C(&qword_101A22710, &unk_1014D96F0);
  Published.init(initialValue:)();
  (*(v11 + 32))(&v0[v16], v13, v10);
  v17 = OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState__sceneThumbnailImageSizeAspectRatio;
  v33 = 0x3FF0000000000000;
  Published.init(initialValue:)();
  (*(v7 + 32))(&v1[v17], v9, v27);
  v18 = OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState__activeScene;
  v33 = 0;
  sub_1005B981C(&qword_101A286D0, &qword_101495300);
  v19 = v28;
  Published.init(initialValue:)();
  (*(v29 + 32))(&v1[v18], v19, v30);
  v20 = OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState__isReadOnly;
  LOBYTE(v33) = 0;
  Published.init(initialValue:)();
  v21 = *(v2 + 32);
  v22 = v31;
  v21(&v1[v20], v4, v31);
  v23 = OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState__isCurrentlyEditing;
  LOBYTE(v33) = 0;
  Published.init(initialValue:)();
  v21(&v1[v23], v4, v22);
  v24 = OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState__toggleToUpdateSceneThumbnails;
  LOBYTE(v33) = 1;
  Published.init(initialValue:)();
  v21(&v1[v24], v4, v22);
  v1[OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState_isAnimatingToScene] = 0;
  v25 = type metadata accessor for CRLScenesPopoverState(0);
  v32.receiver = v1;
  v32.super_class = v25;
  return objc_msgSendSuper2(&v32, "init");
}

id sub_100B04274(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLScenesPopoverState(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100B044AC(uint64_t a1)
{
  sub_10003A3A0(319, &qword_101A10C08, &qword_101A22710, &unk_1014D96F0);
  if (v1 <= 0x3F)
  {
    sub_10006BBA8(319, &qword_101A10C10, &type metadata for CGFloat);
    if (v2 <= 0x3F)
    {
      sub_10003A3A0(319, &qword_101A10C18, &qword_101A286D0, &qword_101495300);
      if (v3 <= 0x3F)
      {
        sub_10006BBA8(319, &qword_1019FB370, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100B046AC(uint64_t a1)
{
  sub_100B04794(319);
  if (v1 <= 0x3F)
  {
    sub_100B04828(319, &qword_101A10CA0, &type metadata accessor for ColorSchemeContrast);
    if (v2 <= 0x3F)
    {
      sub_100B04828(319, &qword_101A0A758, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100B04794(uint64_t a1)
{
  if (!qword_101A10C90)
  {
    type metadata accessor for CRLScenesPopoverState(255);
    sub_100B05580(&qword_101A10C98, type metadata accessor for CRLScenesPopoverState, byte_1014953B0);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_101A10C90);
    }
  }
}

void sub_100B04828(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100B04898@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CRLScenesPopoverState(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100B04928()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD72D8 = v4;
  unk_101AD72E0 = v6;
}

void sub_100B049F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD72E8 = v4;
  unk_101AD72F0 = v6;
}

void sub_100B04BA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD7348 = v4;
  unk_101AD7350 = v6;
}

void sub_100B04C88()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  qword_101AD7358 = v4;
  unk_101AD7360 = v6;
}

void sub_100B04D58(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100B04DD8(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100B04EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLScenesPopoverUI(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B04F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLScenesPopoverUI(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100B04FC0()
{
  v1 = *(type metadata accessor for CRLScenesPopoverUI(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100B02E94(v2);
}

unint64_t sub_100B05020()
{
  result = qword_101A10D40;
  if (!qword_101A10D40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A10D38, &qword_101495518);
    v4[0] = sub_100B050AC();
    v4[1] = sub_100B0538C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A10D40);
  }

  return result;
}

unint64_t sub_100B050AC()
{
  result = qword_101A10D48;
  if (!qword_101A10D48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A10D50, &qword_101495520);
    v4[0] = sub_100B05164();
    v4[1] = sub_10001A2F8(&qword_101A10DA0, &qword_101A10DA8, &qword_1014D9BE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A10D48);
  }

  return result;
}

unint64_t sub_100B05164()
{
  result = qword_101A10D58;
  if (!qword_101A10D58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A10D60, &qword_101495528);
    v4[0] = sub_100B051F0();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A10D58);
  }

  return result;
}

unint64_t sub_100B051F0()
{
  result = qword_101A10D68;
  if (!qword_101A10D68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A10D70, &qword_101495530);
    v4[0] = sub_100B052A8();
    v4[1] = sub_10001A2F8(&unk_101A1CFD0, &qword_101A10D98, &unk_101495540, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A10D68);
  }

  return result;
}

unint64_t sub_100B052A8()
{
  result = qword_101A10D78;
  if (!qword_101A10D78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A10D80, &qword_101495538);
    v4[0] = sub_10001A2F8(&qword_101A03870, &qword_101A03878, &qword_101480230, &protocol conformance descriptor for Label<A, B>);
    v4[1] = sub_10001A2F8(&qword_101A10D88, &qword_101A10D90, &unk_1014D9650, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A10D78);
  }

  return result;
}

unint64_t sub_100B0538C()
{
  result = qword_101A10DB0;
  if (!qword_101A10DB0)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_1005C4E5C(&qword_101A10DB8, &qword_101495550);
    v4[0] = &protocol witness table for Text;
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A10DB0);
  }

  return result;
}

unint64_t sub_100B05410()
{
  result = qword_101A10DC8;
  if (!qword_101A10DC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A10D20, &qword_1014954F0);
    v4[0] = sub_100B0549C();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A10DC8);
  }

  return result;
}

unint64_t sub_100B0549C()
{
  result = qword_101A10DD0;
  if (!qword_101A10DD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A10D18, &qword_1014954E8);
    v4[0] = sub_10001A2F8(&qword_101A10DD8, &qword_101A10DE0, &qword_101495558, &protocol conformance descriptor for Button<A>);
    v4[1] = sub_10001A2F8(&qword_101A10DE8, &qword_101A10DC0, &qword_1014D9D00, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A10DD0);
  }

  return result;
}

uint64_t sub_100B05580(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100B055C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A10D50, &qword_101495520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B05638(void *a1)
{
  v2 = sub_1005B981C(&qword_101A287F0, &qword_101495780);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = a1;
  DynamicTypeSize.init(_:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CAAC(v4, &qword_101A287F0, &qword_101495780);
  }

  v14 = *(v6 + 32);
  v14(v11, v4, v5);
  v14(v8, v11, v5);
  result = (*(v6 + 88))(v8, v5);
  v16 = result == enum case for DynamicTypeSize.accessibility1(_:) || result == enum case for DynamicTypeSize.accessibility2(_:);
  if (!v16 && result != enum case for DynamicTypeSize.accessibility3(_:))
  {
    v15.n128_u64[0] = 3.0;
    if (result != enum case for DynamicTypeSize.accessibility4(_:) && result != enum case for DynamicTypeSize.accessibility5(_:))
    {
      return (*(v6 + 8))(v8, v5, v15);
    }
  }

  return result;
}

double sub_100B05884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 currentTraitCollection];
    v5 = [v4 preferredContentSizeCategory];

    sub_100B05638(v5);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return 375.0;
}

unint64_t sub_100B05A60()
{
  result = qword_101A10E30;
  if (!qword_101A10E30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A10CF8, &qword_101495408);
    v4[0] = sub_100B05B18();
    v4[1] = sub_10001A2F8(&qword_101A10E50, &qword_101A10E58, &qword_101495788, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A10E30);
  }

  return result;
}

unint64_t sub_100B05B18()
{
  result = qword_101A10E38;
  if (!qword_101A10E38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A10CE8, &qword_1014953F8);
    v4[0] = sub_100B05BA4();
    v4[1] = &protocol witness table for _FixedSizeLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A10E38);
  }

  return result;
}

unint64_t sub_100B05BA4()
{
  result = qword_101A10E40;
  if (!qword_101A10E40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A10CE0, &qword_1014953F0);
    v4[0] = sub_10001A2F8(&qword_101A10E48, &qword_101A10CD8, &qword_1014953E8, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A10E40);
  }

  return result;
}

uint64_t sub_100B05C5C()
{
  v1 = *(v0 + 40);
  *(v0 + 40) = 0;
  sub_1000505D0(v1);

  swift_unknownObjectUnownedDestroy();

  sub_1000505D0(*(v0 + 40));

  return v0;
}

uint64_t sub_100B05CB0()
{
  sub_100B05C5C();

  return swift_deallocClassInstance();
}

uint64_t sub_100B05D08()
{
  if (v0[6])
  {
    v1 = v0[6];
  }

  else
  {
    v1 = sub_100B05D90(v0, *v0);
    v0[6] = v1;
  }

  return v1;
}

uint64_t sub_100B05D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  if (qword_1019F14B8 != -1)
  {
    swift_once();
  }

  v7 = qword_101AD6208;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = *&Strong[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];

  v10 = [objc_allocWithZone(CRLCanvasImager) initWithBoard:v9];
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = v7;
  v12[7] = a2;

  v13 = v7;
  return sub_10079706C(0, 0, v6, &unk_1014957E0, v12);
}

uint64_t sub_100B05F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  return _swift_task_switch(sub_100B05F54, 0, 0);
}

uint64_t sub_100B05F54()
{
  v1 = sub_1006768FC(*(v0[5] + 16));
  if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    sub_1005B981C(&qword_1019F5720, &unk_101474E20);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  v2 = v0[6];
  v3 = v0[4];

  sub_1005B981C(&qword_1019F5720, &unk_101474E20);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setInfos:isa];

  [v3 setBackgroundColor:v2];
  [v3 setScaledImageSize:{500.0, 500.0}];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = 0;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = sub_1005B981C(&unk_1019FB790, &unk_1014820B0);
  *v6 = v0;
  v6[1] = sub_100B06134;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000019, 0x8000000101589600, sub_100B063D0, v5, v7);
}

uint64_t sub_100B06134()
{

  return _swift_task_switch(sub_100B0624C, 0, 0);
}

uint64_t sub_100B0624C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    **(v0 + 24) = v1;
  }

  else
  {
    sub_100B063D8();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100B062FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100B05F30(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100B063D8()
{
  result = qword_101A10FC0;
  if (!qword_101A10FC0)
  {
    result = swift_getWitnessTable(byte_101495874, &_s12DataArchiverC24StencilDataArchiverErrorON, v0, v1);
    atomic_store(result, &qword_101A10FC0);
  }

  return result;
}

unint64_t sub_100B06440()
{
  result = qword_101A10FC8;
  if (!qword_101A10FC8)
  {
    result = swift_getWitnessTable(byte_10149584C, &_s12DataArchiverC24StencilDataArchiverErrorON, v0, v1);
    atomic_store(result, &qword_101A10FC8);
  }

  return result;
}

id sub_100B065A4(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8Freeform19CRLCommandSetLocked_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  v5[OBJC_IVAR____TtC8Freeform19CRLCommandSetLocked_locked] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v8 + 8))(a1, v7);
  return v9;
}

void sub_100B0690C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    v10 = v9;
    sub_1012E0400(v10, &off_10188FE10);

    if (v4)
    {
    }

    else
    {
      (*((swift_isaMask & *v10) + 0x168))(*(v5 + OBJC_IVAR____TtC8Freeform19CRLCommandSetLocked_locked));
      v11 = v10;
      sub_1012CF6CC(v11, &off_10188FE10, v6);
    }
  }

  else
  {
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37, "Unable to retrieve board item", 29, 2u);
    StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetLocked.swift", 91, 2);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_1005CF000();
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 27;
    v25 = v37;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "Unable to retrieve board item", 29, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve board item");
    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetLocked.swift", 91, 2);
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unable to retrieve board item", 29, 2);
    v34 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v32 file:v33 lineNumber:27 isFatal:1 format:v34 args:v31];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v35, v36);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100B06DE0()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLCommandSetLocked_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100B06E48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetLocked(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetLocked(uint64_t a1)
{
  result = qword_101A10FF8;
  if (!qword_101A10FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B06F40(uint64_t a1)
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

unint64_t sub_100B06FDC()
{
  result = qword_101A11008;
  if (!qword_101A11008)
  {
    result = swift_getWitnessTable(aY_72, &type metadata for CRLOpenBoardIntent, v0, v1);
    atomic_store(result, &qword_101A11008);
  }

  return result;
}

unint64_t sub_100B07034()
{
  result = qword_101A11010;
  if (!qword_101A11010)
  {
    result = swift_getWitnessTable(aA_63, &type metadata for CRLOpenBoardIntent, v0, v1);
    atomic_store(result, &qword_101A11010);
  }

  return result;
}

unint64_t sub_100B0708C()
{
  result = qword_101A11018;
  if (!qword_101A11018)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Never, &type metadata for Never, v0, v1);
    atomic_store(result, &qword_101A11018);
  }

  return result;
}

uint64_t sub_100B07130(uint64_t a1)
{
  v2 = sub_100B07C4C();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_100B0717C(uint64_t a1)
{
  v2 = sub_100B07BA4();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_100B071B8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100B07BA4();
  v6 = sub_100B07BF8();
  v7 = sub_10003FCB8(&qword_101A07630, aQ_68);
  *v4 = v2;
  v4[1] = sub_100B072A0;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100B072A0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100B073A8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100B0768C();
  *a2 = result;
  return result;
}

unint64_t sub_100B073D4()
{
  result = qword_101A11020;
  if (!qword_101A11020)
  {
    result = swift_getWitnessTable(asc_101495A54, &type metadata for CRLOpenBoardIntent, v0, v1);
    atomic_store(result, &qword_101A11020);
  }

  return result;
}

uint64_t sub_100B0745C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_1006B05D0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_100689004(a1);
}

void (*sub_100B074EC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100615F00;
}

uint64_t sub_100B07560(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B07BA4();
  v5 = sub_10003FCB8(&qword_101A07630, aQ_68);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100B075E4(uint64_t a1)
{
  v2 = sub_10068984C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100B07624()
{
  result = qword_101A11028;
  if (!qword_101A11028)
  {
    result = swift_getWitnessTable(byte_101495AAC, &type metadata for CRLOpenBoardIntent, v0, v1);
    atomic_store(result, &qword_101A11028);
  }

  return result;
}

uint64_t sub_100B0768C()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v29 = *(v0 - 8);
  v30 = v0;
  __chkstk_darwin(v0);
  v28 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  v15 = sub_1005B981C(&qword_1019F6268, &unk_101471D00);
  __chkstk_darwin(v15 - 8);
  v17 = v25 - v16;
  v18 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v18 - 8);
  v20 = v25 - v19;
  v25[1] = sub_1005B981C(&qword_1019F6278, &unk_101471D10);
  (*(v8 + 56))(v20, 1, 1, v7);
  v21 = type metadata accessor for CRLBoardEntity(0);
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v27);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  IntentDialog.init(_:)();
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v14, 0, 1, v22);
  v23(v11, 1, 1, v22);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  sub_10003FCB8(&qword_1019F6290, aQ_25);
  return IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t sub_100B07BA4()
{
  result = qword_101A11030;
  if (!qword_101A11030)
  {
    result = swift_getWitnessTable(byte_101495990, &type metadata for CRLOpenBoardIntent, v0, v1);
    atomic_store(result, &qword_101A11030);
  }

  return result;
}

unint64_t sub_100B07BF8()
{
  result = qword_101A11038;
  if (!qword_101A11038)
  {
    result = swift_getWitnessTable(byte_1014959E0, &type metadata for CRLOpenBoardIntent, v0, v1);
    atomic_store(result, &qword_101A11038);
  }

  return result;
}

unint64_t sub_100B07C4C()
{
  result = qword_101A11040;
  if (!qword_101A11040)
  {
    result = swift_getWitnessTable(byte_101495A7C, &type metadata for CRLOpenBoardIntent, v0, v1);
    atomic_store(result, &qword_101A11040);
  }

  return result;
}

void sub_100B07CA4(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - v3;
  v5 = _s4NodeVMa(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v49 - v19;
  sub_10006520C(v1, &v49 - v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10000BAA4(v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v21 = sub_1005B981C(&qword_1019F6700, &qword_10146F2F0);
    (*(*(v21 - 8) + 56))(v55, 1, 1, v21);
    return;
  }

  v59 = v15;
  v56 = v8;
  v57 = v6;
  v53 = v4;
  v54 = v5;
  v22 = *v20;
  v23 = sub_1005B981C(&qword_1019F6700, &qword_10146F2F0);
  v24 = swift_allocBox();
  v26 = v25;
  type metadata accessor for UUID();
  sub_100B082B8();
  NSDiffableDataSourceSectionSnapshot.init()();
  if (v22)
  {
    v27 = v53;
    (*(v57 + 56))(v53, 1, 1, v54);
    sub_100B08310(v1, v27, v24);
    sub_10000CAAC(v27, &unk_1019FB770, &unk_10146FA30);
    v28 = v55;
LABEL_21:
    swift_beginAccess();
    v48 = *(v23 - 8);
    (*(v48 + 16))(v28, v26, v23);
    (*(v48 + 56))(v28, 0, 1, v23);

    return;
  }

  v50 = v26;
  v51 = v24;
  v52 = v23;
  v29 = *(v1 + *(v54 + 20));
  v30 = v57;
  v58 = *(v29 + 16);
  if (!v58)
  {
    v32 = _swiftEmptyArrayStorage;
LABEL_17:
    v40 = v32[2];
    v41 = v53;
    if (v40)
    {
      v42 = v32 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v43 = v30;
      v44 = *(v30 + 72);
      v45 = (v43 + 56);
      v46 = v54;
      v47 = v51;
      do
      {
        sub_10006520C(v42, v11, _s4NodeVMa);
        (*v45)(v41, 1, 1, v46);
        sub_100B08310(v11, v41, v47);
        sub_10000CAAC(v41, &unk_1019FB770, &unk_10146FA30);
        sub_10000BAA4(v11, _s4NodeVMa);
        v42 += v44;
        --v40;
      }

      while (v40);
    }

    v28 = v55;
    v23 = v52;
    v26 = v50;
    goto LABEL_21;
  }

  v31 = 0;
  v32 = _swiftEmptyArrayStorage;
  v33 = v56;
  while (v31 < *(v29 + 16))
  {
    v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v35 = *(v30 + 72);
    sub_10006520C(v29 + v34 + v35 * v31, v14, _s4NodeVMa);
    sub_10006520C(v14, v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10000BAA4(v17, _s5BoardVMa);
      sub_10000BAA4(v14, _s4NodeVMa);
    }

    else
    {
      sub_10000BAA4(v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10078829C(v14, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776804(0, v32[2] + 1, 1);
        v32 = v60;
      }

      v38 = v32[2];
      v37 = v32[3];
      if (v38 >= v37 >> 1)
      {
        sub_100776804((v37 > 1), v38 + 1, 1);
        v32 = v60;
      }

      v32[2] = v38 + 1;
      v39 = v32 + v34 + v38 * v35;
      v33 = v56;
      sub_10078829C(v56, v39);
      v30 = v57;
    }

    if (v58 == ++v31)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

unint64_t sub_100B082B8()
{
  result = qword_1019FB870;
  if (!qword_1019FB870)
  {
    v3 = type metadata accessor for UUID();
    result = swift_getWitnessTable(&protocol conformance descriptor for UUID, v3, v0, v1);
    atomic_store(result, &qword_1019FB870);
  }

  return result;
}

void sub_100B08310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v54 = a2;
  v4 = _s4NodeVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v47 - v8;
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v56 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v56);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v47 - v15;
  v16 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v16 - 8);
  v48 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  v21 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v21 - 8);
  v23 = &v47 - v22;
  v52 = sub_1005B981C(&qword_1019F6700, &qword_10146F2F0);
  v55 = a3;
  v51 = swift_projectBox();
  sub_1005B981C(&qword_101A1DBB0, &unk_101480620);
  v50 = type metadata accessor for UUID();
  v24 = *(v50 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10146C6B0;
  v27 = v26 + v25;
  v28 = v53;
  sub_100F87E04(v27);
  sub_100B089C0(v54, v20);
  if ((*(v5 + 48))(v20, 1, v4) == 1)
  {
    sub_10000CAAC(v20, &unk_1019FB770, &unk_10146FA30);
    v29 = 1;
  }

  else
  {
    v30 = v47;
    sub_10006520C(v20, v47, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000BAA4(v20, _s4NodeVMa);
    sub_100F87E04(v23);
    sub_10000BAA4(v30, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v29 = 0;
  }

  (*(v24 + 56))(v23, v29, 1, v50);
  swift_beginAccess();
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();
  swift_endAccess();

  sub_10000CAAC(v23, &qword_1019F6990, &qword_10146D2F0);
  v52 = v4;
  v31 = *(v28 + *(v4 + 20));
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = 0;
    v34 = _swiftEmptyArrayStorage;
    v35 = v55;
    v54 = *(v31 + 16);
    while (v33 < *(v31 + 16))
    {
      v36 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v37 = *(v5 + 72);
      sub_10006520C(v31 + v36 + v37 * v33, v11, _s4NodeVMa);
      sub_10006520C(v11, v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_10000BAA4(v13, _s5BoardVMa);
        sub_10000BAA4(v11, _s4NodeVMa);
      }

      else
      {
        sub_10000BAA4(v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10078829C(v11, v57);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776804(0, v34[2] + 1, 1);
          v34 = v58;
        }

        v40 = v34[2];
        v39 = v34[3];
        if (v40 >= v39 >> 1)
        {
          sub_100776804((v39 > 1), v40 + 1, 1);
          v34 = v58;
        }

        v34[2] = v40 + 1;
        sub_10078829C(v57, v34 + v36 + v40 * v37);
        v32 = v54;
        v35 = v55;
      }

      if (v32 == ++v33)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
    v35 = v55;
LABEL_16:
    v41 = v34[2];
    if (v41)
    {
      v42 = v34 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v57 = *(v5 + 72);
      v44 = v52;
      v43 = v53;
      v46 = v48;
      v45 = v49;
      do
      {
        sub_10006520C(v42, v45, _s4NodeVMa);
        sub_10006520C(v43, v46, _s4NodeVMa);
        (*(v5 + 56))(v46, 0, 1, v44);
        sub_100B08310(v45, v46, v35);
        sub_10000CAAC(v46, &unk_1019FB770, &unk_10146FA30);
        sub_10000BAA4(v45, _s4NodeVMa);
        v42 += v57;
        --v41;
      }

      while (v41);
    }
  }
}

uint64_t sub_100B089C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100B08A80(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v7 manager];
  if (v14)
  {
    v15 = v14;
    v16 = [v7 hideTimer];
    [v16 invalidate];

    [v7 setHideTimer:0];
    if (([v7 hiding] & 1) == 0)
    {
      if ((a1 & 1) == 0)
      {
        v17 = [v7 timeStartedShowing];
        if (v17)
        {
          v18 = v17;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          Date.timeIntervalSinceNow.getter();
          v20 = fabs(v19);
          [v7 minimumShowDuration];
          if (v20 >= v21 || ([v7 minimumShowDuration], v22 <= v20))
          {
            [v15 hideWithHudController:v7];
            [v7 setHiding:1];
            swift_unknownObjectRelease();
          }

          else
          {
            v23 = objc_opt_self();
            [v7 timeLeftToShow];
            v25 = v24;
            v26 = swift_allocObject();
            *(v26 + 16) = v15;
            *(v26 + 24) = v7;
            aBlock[4] = a3;
            aBlock[5] = v26;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = *"";
            aBlock[2] = sub_10068B39C;
            aBlock[3] = a4;
            v27 = _Block_copy(aBlock);
            swift_unknownObjectRetain();
            v28 = v7;

            v29 = [v23 scheduledTimerWithTimeInterval:0 repeats:v27 block:v25];
            _Block_release(v27);
            [v28 setHideTimer:v29];
            swift_unknownObjectRelease();
          }

          (*(v10 + 8))(v13, v9);
          return;
        }
      }

      [v15 hideWithHudController:v7];
      [v7 setHiding:1];
    }

    swift_unknownObjectRelease();
  }

  else if ([v7 showing])
  {
    if (qword_1019F20C8 != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.crlStatusHUD;
    v31 = static os_log_type_t.error.getter();

    sub_100005404(v30, &_mh_execute_header, v31, "Trying to hide while showing without a manager", 46, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100B09330()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_timeStartedShowing;
  swift_beginAccess();
  sub_10000BE14(v1 + v9, v4, &qword_101A0A320, &qword_10146D650);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CAAC(v4, &qword_101A0A320, &qword_10146D650);
  }

  (*(v6 + 32))(v8, v4, v5);
  Date.timeIntervalSinceNow.getter();
  return (*(v6 + 8))(v8, v5);
}

void sub_100B095D8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
  __chkstk_darwin(v5 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = aBlock - v10;
  if (v0[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_showing] == 1 && v0[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_shouldAutoHide] == 1)
  {
    v12 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideTimer;
    [*&v0[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideTimer] invalidate];
    v13 = *&v0[v12];
    *&v0[v12] = 0;

    Date.init()();
    (*(v2 + 56))(v11, 0, 1, v1);
    v14 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_timeStartedShowing;
    swift_beginAccess();
    sub_100015CDC(v11, &v0[v14]);
    swift_endAccess();
    sub_10000BE14(&v0[v14], v7, &qword_101A0A320, &qword_10146D650);
    if ((*(v2 + 48))(v7, 1, v1) == 1)
    {
      sub_10000CAAC(v7, &qword_101A0A320, &qword_10146D650);
      v15 = 0.0;
    }

    else
    {
      (*(v2 + 32))(v4, v7, v1);
      Date.timeIntervalSinceNow.getter();
      v17 = fabs(v16);
      (*(v2 + 8))(v4, v1);
      v18 = *&v0[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_maximumShowDuration];
      v19 = v17 < v18;
      v20 = v18 - v17;
      if (v19)
      {
        v15 = v20;
      }

      else
      {
        v15 = 0.0;
      }
    }

    v21 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = v0;
    aBlock[4] = sub_100B0C480;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_101895520;
    v23 = _Block_copy(aBlock);
    v24 = v0;

    v25 = [v21 scheduledTimerWithTimeInterval:0 repeats:v23 block:v15];
    _Block_release(v23);
    v26 = *&v0[v12];
    *&v0[v12] = v25;
  }
}

void sub_100B09950(uint64_t a1, uint64_t a2)
{
  sub_100B08A80(0, &unk_101895490, sub_100B0C464, &unk_1018954A8);
  v3 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideTimer;
  [*(a2 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideTimer) invalidate];
  v4 = *(a2 + v3);
  *(a2 + v3) = 0;
}

id sub_100B09C74()
{
  v1 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController____lazy_storage___participantColor;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController____lazy_storage___participantColor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController____lazy_storage___participantColor);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_followingParticipant) collaboratorColorForType:2];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100B09CF4()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [objc_opt_self() systemFontOfSize:13.0 weight:UIFontWeightMedium];
  if ([objc_opt_self() isIncreaseContrastEnabled])
  {
    v3 = sub_100B09C74();
    v4 = [v3 UIColor];

    v5 = [v4 CGColor];
    v6 = [objc_allocWithZone(CRLColor) initWithCGColor:v5];

    [v6 brightnessComponent];
    v8 = v7;

    if (v8 > 0.5)
    {
      v9 = [v0 blackColor];

      v4 = v1;
      v1 = v9;
    }
  }

  sub_1005B981C(&unk_101A11100, &unk_101471490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = NSFontAttributeName;
  v11 = sub_100006370(0, &qword_101A0DE60, UIFont_ptr);
  *(inited + 40) = v2;
  *(inited + 64) = v11;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = sub_100006370(0, &qword_101A11110, UIColor_ptr);
  *(inited + 80) = v1;
  v12 = NSFontAttributeName;
  v13 = v2;
  v14 = NSForegroundColorAttributeName;
  v15 = v1;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0DE70, "nd%");
  swift_arrayDestroy();
  v16 = [objc_opt_self() mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = objc_allocWithZone(NSAttributedString);
  v21 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [v20 initWithString:v21 attributes:isa];

  return v23;
}

id sub_100B0A070()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F4D90, &unk_101490C60);
  __chkstk_darwin(v2 - 8);
  v41 = &v40 - v3;
  v4 = sub_1005B981C(&unk_1019F4CD0, &unk_10146CEE0);
  __chkstk_darwin(v4 - 8);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = sub_1005B981C(&unk_1019F4CE0, &qword_10146F270);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for UIButton.Configuration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  static UIButton.Configuration.tinted()();
  v19 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_resumeFollowingString);
  v20 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_resumeFollowingString + 8);

  v43 = v20;
  v44 = v19;
  UIButton.Configuration.title.setter();
  v21 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v21(v46, 0);
  v22 = objc_opt_self();
  v23 = [v22 whiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v24 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v24 - 8) + 56))(v11, 0, 1, v24);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  swift_allocObject();
  v45 = v1;
  swift_unknownObjectWeakInit();
  v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6E10, UIButton_ptr);
  (*(v13 + 16))(v15, v18, v12);
  v26 = v25;
  v27 = UIButton.init(configuration:primaryAction:)();
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = [v22 blackColor];
  v29 = [v28 colorWithAlphaComponent:0.3];

  UIButton.configuration.getter();
  if ((*(v13 + 48))(v8, 1, v12))
  {
    sub_10000BE14(v8, v42, &unk_1019F4CD0, &unk_10146CEE0);
    UIButton.configuration.setter();
    sub_10000CAAC(v8, &unk_1019F4CD0, &unk_10146CEE0);
  }

  else
  {
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;
    v32 = v29;
    v33 = v41;
    UIConfigurationColorTransformer.init(_:)();
    v34 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    v35 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColorTransformer.setter();
    v35(v46, 0);
    UIButton.configuration.setter();
  }

  [v27 setShowsLargeContentViewer:1];
  v36 = String._bridgeToObjectiveC()();
  [v27 setLargeContentTitle:v36];

  v37 = objc_allocWithZone(UILargeContentViewerInteraction);
  v38 = [v37 initWithDelegate:v45];
  [v27 addInteraction:v38];

  (*(v13 + 8))(v18, v12);
  return v27;
}

void sub_100B0A690(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler);
    if (v4)
    {
      v5 = *(Strong + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler + 8);

      v4(v6);
      sub_1000C1014(v4, v5);
    }

    if (v3[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideOnTouch] == 1)
    {
      sub_100B08A80(1, &unk_101895490, sub_100B0C464, &unk_1018954A8);
    }
  }
}

void sub_100B0A760()
{
  v1 = v0;
  v103 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_contentView;
  v2 = [*(v0 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_contentView) subviews];
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = [objc_allocWithZone(CNAvatarViewController) init];
  v10 = *(*(v1 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_followingParticipant) + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101465920;
    *(v11 + 32) = v10;
    sub_100006370(0, &qword_101A00EC0, CNContact_ptr);
    v12 = v10;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setContacts:isa];
  }

  v101 = v9;
  v14 = [v9 view];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = v103;
  [*(v1 + v103) addSubview:v14];
  v16 = [v14 leadingAnchor];
  v17 = [*(v1 + v103) leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:8.0];

  [v18 setActive:1];
  v19 = [v14 widthAnchor];
  v20 = [v19 constraintEqualToConstant:26.0];

  [v20 setActive:1];
  v21 = [v14 heightAnchor];
  v22 = [v21 constraintEqualToConstant:26.0];

  [v22 setActive:1];
  v23 = [v14 centerYAnchor];
  v24 = [*(v1 + v103) centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  [v25 setActive:1];
  v26 = [objc_allocWithZone(UIStackView) init];
  [v26 setAlignment:3];
  [v26 setAxis:1];
  [v26 setDistribution:1];
  [v26 setSpacing:3.0];
  v27 = v26;
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v1 + v103) addSubview:v27];
  v28 = sub_100B0B7C8();
  [v28 setNumberOfLines:2];
  v29 = sub_100B09CF4();
  v102 = v14;
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v104 = objc_opt_self();
    v31 = [v104 _atomicIncrementAssertCount];
    v106 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v106, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("setupAndLayoutAdaptableView()", 29, 2);
    v100 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLTransientRefollowHUDController.swift", 108, 2);
    v32 = String._bridgeToObjectiveC()();

    v33 = [v32 lastPathComponent];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v35;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v31;
    v38 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v38;
    v39 = sub_1005CF04C();
    *(inited + 104) = v39;
    *(inited + 72) = v100;
    *(inited + 136) = &type metadata for String;
    v40 = sub_1000053B0();
    *(inited + 112) = v34;
    *(inited + 120) = v99;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v40;
    *(inited + 152) = 265;
    v41 = v106;
    *(inited + 216) = v38;
    *(inited + 224) = v39;
    *(inited + 192) = v41;
    v42 = v100;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v45, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v46 = swift_allocObject();
    v46[2] = 8;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
    v47 = __VaListBuilder.va_list()();
    StaticString.description.getter("setupAndLayoutAdaptableView()", 29, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLTransientRefollowHUDController.swift", 108, 2);
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v50 = String._bridgeToObjectiveC()();

    [v104 handleFailureInFunction:v48 file:v49 lineNumber:265 isFatal:0 format:v50 args:v47];

    v51 = objc_allocWithZone(NSAttributedString);
    v52 = String._bridgeToObjectiveC()();
    v30 = [v51 initWithString:v52];

    v14 = v102;
    v15 = v103;
  }

  v105 = v30;
  [v28 setAttributedText:v30];
  v53 = qword_1019F1FF0;
  v54 = v28;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = String._bridgeToObjectiveC()();
  [v54 setAccessibilityHint:v55];

  v56 = [v27 leadingAnchor];
  v57 = [v14 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:8.0];

  [v58 setActive:1];
  v59 = [v27 heightAnchor];
  v60 = [v59 constraintEqualToConstant:24.0];

  [v60 setActive:1];
  v61 = [v27 centerYAnchor];
  v62 = [*(v1 + v15) centerYAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  [v63 setActive:1];
  [v27 setShowsLargeContentViewer:1];
  v64 = [v105 string];
  if (!v64)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = String._bridgeToObjectiveC()();
  }

  [v27 setLargeContentTitle:v64];

  v65 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v1];
  [v27 addInteraction:v65];

  [v27 addArrangedSubview:v54];
  [v54 setTextAlignment:0];

  v66 = sub_100B0A070();
  [*(v1 + v15) addSubview:v66];
  v67 = [v66 leadingAnchor];
  v68 = [v27 trailingAnchor];

  v69 = [v67 constraintEqualToAnchor:v68 constant:8.0];
  [v69 setActive:1];

  v70 = [v66 trailingAnchor];
  v71 = [*(v1 + v15) trailingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:-8.0];

  [v72 setActive:1];
  v73 = [v66 heightAnchor];
  v74 = [v73 constraintEqualToConstant:24.0];

  [v74 setActive:1];
  v75 = [v66 centerYAnchor];
  v76 = [*(v1 + v15) centerYAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];

  [v77 setActive:1];
  v78 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hudView;
  v79 = [*(v1 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hudView) leadingAnchor];
  v80 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_containerView;
  v81 = [*(v1 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_containerView) leadingAnchor];
  v82 = [v79 constraintEqualToAnchor:v81];

  [v82 setActive:1];
  v83 = [*(v1 + v78) heightAnchor];
  v84 = [v83 constraintEqualToConstant:40.0];

  [v84 setActive:1];
  v85 = [*(v1 + v78) topAnchor];
  v86 = [*(v1 + v80) topAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  [v87 setActive:1];
  v88 = [*(v1 + v78) trailingAnchor];
  v89 = [*(v1 + v80) trailingAnchor];
  v90 = [v88 constraintEqualToAnchor:v89];

  [v90 setActive:1];
  v91 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_height;
  *(v1 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_height) = 0x404C000000000000;
  v92 = [*(v1 + v80) heightAnchor];
  v93 = [v92 constraintEqualToConstant:*(v1 + v91)];

  [v93 setActive:1];
  v94 = [objc_opt_self() constraintWithItem:*(v1 + v80) attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:*(v1 + v91)];
  v95 = *(v1 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_heightConstraint);
  *(v1 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_heightConstraint) = v94;

  v96 = [*(v1 + v78) layer];
  [v96 setMasksToBounds:0];

  v97 = [*(v1 + v78) layer];
  [v97 setCornerCurve:kCACornerCurveContinuous];

  v98 = [*(v1 + v78) layer];
  [v98 setCornerRadius:20.0];
}

id sub_100B0B7C8()
{
  v1 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController____lazy_storage____label;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController____lazy_storage____label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController____lazy_storage____label);
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10109C74C();
    v9 = v8;

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

char *sub_100B0B8F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = objc_allocWithZone(type metadata accessor for CRLTransientRefollowHUDController(0));
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = a2;
  v14 = sub_100B0C054(a1, v13, a3, v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v15 = &v14[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_canvasWidth];
  *v15 = a6;
  *(v15 + 8) = 0;
  v16 = &v14[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler];
  v17 = *&v14[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler];
  v18 = *&v14[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler + 8];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19 = v14;
  sub_10067F2EC(a4, a5);
  sub_1000C1014(v17, v18);
  if ((v19[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_setupDone] & 1) == 0)
  {
    v19[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_setupDone] = 1;
    sub_10105B418();
    [*&v19[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_containerView] addSubview:*&v19[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hudView]];
    sub_100B0A760();
  }

  v20 = [objc_opt_self() mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  sub_1000C1014(a4, a5);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v27 = &v19[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_accessibilityAnnouncement];
  *v27 = v24;
  v27[1] = v26;

  return v19;
}

id sub_100B0BC54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTransientRefollowHUDController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLTransientRefollowHUDController(uint64_t a1)
{
  result = qword_101A110E8;
  if (!qword_101A110E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100B0BE38(uint64_t a1)
{
  sub_10000D990(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100B0C054(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_type] = 2;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_minimumShowDuration] = 0x3FF0000000000000;
  v6 = [objc_opt_self() isVoiceOverOrSwitchControlEnabled];
  v7 = 6.0;
  if (v6)
  {
    v7 = 30.0;
  }

  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_maximumShowDuration] = v7;
  v8 = OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_timeStartedShowing;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideTimer] = 0;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_shouldAutoHide] = 1;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_showing] = 0;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_animating] = 0;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hiding] = 0;
  v10 = &a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_accessibilityAnnouncement];
  *v10 = 0;
  v10[1] = 0;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_swipable] = 1;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_swipeGestureRecognizer] = 0;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hideOnTouch] = 1;
  a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_setupDone] = 0;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_height] = 0x4045000000000000;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_width] = 0;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_heightConstraint] = 0;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_constraints] = _swiftEmptyArrayStorage;
  v11 = &a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_refollowClickedHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = &a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_canvasWidth];
  *v12 = 0;
  v12[8] = 1;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController____lazy_storage___participantColor] = 0;
  v13 = &a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_resumeFollowingString];
  v14 = [objc_opt_self() mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *v13 = v18;
  v13[1] = v20;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController____lazy_storage____label] = 0;
  swift_unknownObjectWeakAssign();
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_followingParticipant] = a2;
  swift_unknownObjectWeakAssign();
  v21 = objc_allocWithZone(UIView);
  v22 = a2;
  v23 = [v21 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = [objc_allocWithZone(type metadata accessor for HUDView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = v23;
  sub_1005CAFC0(v23);
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_contentView] = v25;
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_hudView] = v24;
  v26 = objc_allocWithZone(UIView);
  v27 = v25;
  v28 = v24;
  v29 = [v26 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a4[OBJC_IVAR____TtC8Freeform33CRLTransientRefollowHUDController_containerView] = v29;
  v32.receiver = a4;
  v32.super_class = type metadata accessor for CRLTransientRefollowHUDController(0);
  v30 = objc_msgSendSuper2(&v32, "init");

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v30;
}

uint64_t sub_100B0C488()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100B0C554(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

id sub_100B0C5E0()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Position.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Position.version.unsafeMutableAddressor()
{
  if (qword_1019F1CB8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Position.version;
}

id static TSContentLanguage.Models.Position.version.getter()
{
  if (qword_1019F1CB8 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Position.version;

  return v1;
}

Swift::Int sub_100B0C71C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B0C7D4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100B0C878(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100B0C92C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B0CE54(*a1);
  *a2 = result;
  return result;
}

void sub_100B0C95C(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 120;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 121;
    v2 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100B0C9D0()
{
  v1 = 120;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 121;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100B0CA40@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100B0CE54(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B0CA68(uint64_t a1)
{
  v2 = sub_100B0D4EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B0CAA4(uint64_t a1)
{
  v2 = sub_100B0D4EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Position.encode(to:)(void *a1, double a2, double a3)
{
  v5 = sub_1005B981C(&qword_101A11118, &qword_101495BE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B0D4EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1CB8 != -1)
  {
    swift_once();
  }

  v10[1] = static TSContentLanguage.Models.Position.version;
  v11 = 3;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458, protocol conformance descriptor for TSCLVersion);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.Position.isEquivalent(to:)(double a1, double a2, double a3, double a4)
{
  result = sub_1007C87EC(a3, a1);
  if (result)
  {
    return sub_1007C87EC(a4, a2);
  }

  return result;
}

void sub_100B0CDA4(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_100B0CEA0(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

BOOL sub_100B0CE18(double *a1)
{
  result = sub_1007C87EC(*v1, *a1);
  if (result)
  {
    return sub_1007C87EC(v1[1], a1[1]);
  }

  return result;
}

unint64_t sub_100B0CE54(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018752C0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

double sub_100B0CEA0(void *a1)
{
  v4 = sub_1005B981C(&qword_101A11158, &qword_101495E28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100B0D4EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_35;
  }

  LOBYTE(v41) = 2;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v9)
  {
    if (v8 == 0xD000000000000028 && v9 == 0x8000000101589860)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v12[1] = 0;
        v12[2] = 0;
        *v12 = 0;
LABEL_33:
        swift_willThrow();
        goto LABEL_34;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v44) = 3;
  sub_100969804(&qword_101A00400, protocol conformance descriptor for TSCLVersion);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v41;
  if (!v41)
  {
LABEL_16:
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Decoder.userInfo.getter();

    v45 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v42)
    {
      v15 = KeyedDecodingContainer.codingPath.getter();
      v16 = *(v15 + 16);
      if (v16)
      {
        v39 = v5;
        v44 = _swiftEmptyArrayStorage;
        sub_100034080(0, v16, 0);
        v17 = v44;
        v38 = v15;
        v18 = v15 + 32;
        do
        {
          sub_10000630C(v18, &v41);
          sub_100020E58(&v41, v43);
          v19 = dispatch thunk of CodingKey.stringValue.getter();
          v40 = v20;
          sub_100005070(&v41);
          v44 = v17;
          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            sub_100034080((v21 > 1), v22 + 1, 1);
            v17 = v44;
          }

          v17[2] = v22 + 1;
          v23 = &v17[2 * v22];
          v24 = v40;
          v23[4] = v19;
          v23[5] = v24;
          v18 += 40;
          --v16;
        }

        while (v16);

        v5 = v39;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      sub_1007CDECC();
      swift_allocError();
      v35 = 120;
    }

    else
    {
      v2 = *&v41;
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Decoder.userInfo.getter();

      v45 = 1;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      if ((v42 & 1) == 0)
      {
        (*(v5 + 8))(v7, v4);
        sub_100005070(a1);
        return v2;
      }

      v25 = KeyedDecodingContainer.codingPath.getter();
      v26 = *(v25 + 16);
      if (v26)
      {
        v39 = v5;
        v44 = _swiftEmptyArrayStorage;
        sub_100034080(0, v26, 0);
        v17 = v44;
        v38 = v25;
        v27 = v25 + 32;
        do
        {
          sub_10000630C(v27, &v41);
          sub_100020E58(&v41, v43);
          v28 = dispatch thunk of CodingKey.stringValue.getter();
          v40 = v29;
          sub_100005070(&v41);
          v44 = v17;
          v31 = v17[2];
          v30 = v17[3];
          if (v31 >= v30 >> 1)
          {
            sub_100034080((v30 > 1), v31 + 1, 1);
            v17 = v44;
          }

          v17[2] = v31 + 1;
          v32 = &v17[2 * v31];
          v33 = v40;
          v32[4] = v28;
          v32[5] = v33;
          v27 += 40;
          --v26;
        }

        while (v26);

        v5 = v39;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      sub_1007CDECC();
      swift_allocError();
      v35 = 121;
    }

    *v34 = v35;
    v34[1] = 0xE100000000000000;
    v34[2] = v17;
    swift_willThrow();
    goto LABEL_33;
  }

  if (qword_1019F1CB8 != -1)
  {
    swift_once();
  }

  if (*(static TSContentLanguage.Models.Position.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) >= *&v13[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
  {

    goto LABEL_16;
  }

  sub_1007C8648();
  swift_allocError();
  *v14 = xmmword_101463530;
  *(v14 + 16) = 0;
  swift_willThrow();

LABEL_34:
  (*(v5 + 8))(v7, v4);
LABEL_35:
  sub_100005070(a1);
  return v2;
}

unint64_t sub_100B0D4EC()
{
  result = qword_101A11120;
  if (!qword_101A11120)
  {
    result = swift_getWitnessTable(byte_101495DD4, &_s8PositionV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A11120);
  }

  return result;
}

unint64_t sub_100B0D540(uint64_t a1)
{
  result = sub_100B0D568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B0D568()
{
  result = qword_101A11128;
  if (!qword_101A11128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Position, &type metadata for TSContentLanguage.Models.Position, v0, v1);
    atomic_store(result, &qword_101A11128);
  }

  return result;
}

unint64_t sub_100B0D5BC(void *a1)
{
  a1[2] = sub_1007CEB2C();
  a1[3] = sub_100B0D5F4();
  result = sub_100B0D648();
  a1[4] = result;
  return result;
}

unint64_t sub_100B0D5F4()
{
  result = qword_101A11130;
  if (!qword_101A11130)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Position, &type metadata for TSContentLanguage.Models.Position, v0, v1);
    atomic_store(result, &qword_101A11130);
  }

  return result;
}

unint64_t sub_100B0D648()
{
  result = qword_101A11138;
  if (!qword_101A11138)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Position, &type metadata for TSContentLanguage.Models.Position, v0, v1);
    atomic_store(result, &qword_101A11138);
  }

  return result;
}

unint64_t sub_100B0D6C0()
{
  result = qword_101A11140;
  if (!qword_101A11140)
  {
    result = swift_getWitnessTable(asc_101495DAC, &_s8PositionV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A11140);
  }

  return result;
}

unint64_t sub_100B0D718()
{
  result = qword_101A11148;
  if (!qword_101A11148)
  {
    result = swift_getWitnessTable(aU_39, &_s8PositionV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A11148);
  }

  return result;
}

unint64_t sub_100B0D770()
{
  result = qword_101A11150;
  if (!qword_101A11150)
  {
    result = swift_getWitnessTable(asc_101495D0C, &_s8PositionV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A11150);
  }

  return result;
}

ValueMetadata *sub_100B0D7C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000025 && 0x8000000101589890 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = type metadata accessor for TSContentLanguage.Models.Shape(0);
    v6 = &qword_101A11420;
    v7 = type metadata accessor for TSContentLanguage.Models.Shape;
    v8 = protocol conformance descriptor for TSContentLanguage.Models.Shape;
  }

  else
  {
    if (a1 == 0xD00000000000002FLL && 0x80000001015898C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B1110C();
      return &type metadata for TSContentLanguage.Models.ConnectionLine;
    }

    if (a1 == 0xD000000000000039 && 0x80000001015898F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B110B8();
      return &type metadata for TSContentLanguage.Models.ConnectionLine.LineType;
    }

    if (a1 == 0xD000000000000033 && 0x8000000101589930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B11064();
      return &type metadata for TSContentLanguage.Models.ConnectionLine.End;
    }

    if (a1 == 0xD00000000000003ALL && 0x8000000101589970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B11010();
      return &type metadata for TSContentLanguage.Models.ConnectionLine.End.Anchor;
    }

    if (a1 == 0xD000000000000041 && 0x80000001015899B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B10FBC();
      return &type metadata for TSContentLanguage.Models.ConnectionLine.End.Anchor.Magnet;
    }

    if (a1 == 0xD000000000000025 && 0x8000000101589A00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B10F68();
      return &type metadata for TSContentLanguage.Models.Group;
    }

    if (a1 == 0xD000000000000025 && 0x8000000101589A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B10F14();
      return &type metadata for TSContentLanguage.Models.Image;
    }

    if (a1 == 0xD00000000000002ALL && 0x8000000101589A60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B10EC0();
      return &type metadata for TSContentLanguage.Models.Image.Mask;
    }

    if (a1 == 0xD000000000000038 && 0x8000000101589A90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100B10E6C();
      return &type metadata for TSContentLanguage.Models.Image.InstantAlphaPath;
    }

    if (a1 == 0xD000000000000027 && 0x8000000101567CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v5 = type metadata accessor for TSContentLanguage.Models.Textbox(0);
      v6 = &qword_101A00468;
      v7 = type metadata accessor for TSContentLanguage.Models.Textbox;
      v8 = protocol conformance descriptor for TSContentLanguage.Models.Textbox;
    }

    else
    {
      if (a1 == 0xD000000000000025 && 0x8000000101589AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10E18();
        return &type metadata for TSContentLanguage.Models.Color;
      }

      if (a1 == 0xD00000000000002ALL && 0x8000000101589B00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10DC4();
        return &type metadata for TSContentLanguage.Models.Color.RGBA;
      }

      if (a1 == 0xD000000000000036 && 0x8000000101589B30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10D70();
        return &type metadata for TSContentLanguage.Models.Color.RGBA.ColorSpace;
      }

      if (a1 == 0xD000000000000028 && 0x8000000101589B70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10D1C();
        return &type metadata for TSContentLanguage.Models.LineEnd;
      }

      if (a1 == 0xD00000000000002ELL && 0x8000000101589BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10CC8();
        return &type metadata for TSContentLanguage.Models.ContactShadow;
      }

      if (a1 == 0xD00000000000002BLL && 0x8000000101589BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10C74();
        return &type metadata for TSContentLanguage.Models.DropShadow;
      }

      if (a1 == 0xD000000000000026 && 0x8000000101589C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10C20();
        return &type metadata for TSContentLanguage.Models.Stroke;
      }

      if (a1 == 0xD00000000000002BLL && 0x8000000101589C30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10BCC();
        return &type metadata for TSContentLanguage.Models.Stroke.Line;
      }

      if (a1 == 0xD000000000000033 && 0x8000000101589C60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10B78();
        return &type metadata for TSContentLanguage.Models.Stroke.Line.Pattern;
      }

      if (a1 == 0xD00000000000002CLL && 0x8000000101589CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10B24();
        return &type metadata for TSContentLanguage.Models.Stroke.Frame;
      }

      if (a1 == 0xD000000000000031 && 0x8000000101589CD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10AD0();
        return &type metadata for TSContentLanguage.Models.Stroke.Frame.Name;
      }

      if (a1 == 0xD00000000000002DLL && 0x8000000101589D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10A7C();
        return &type metadata for TSContentLanguage.Models.CurvedShadow;
      }

      if (a1 == 0xD000000000000024 && 0x8000000101589D40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10A28();
        return &type metadata for TSContentLanguage.Models.Fill;
      }

      if (a1 == 0xD00000000000002DLL && 0x8000000101589D70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B109D4();
        return &type metadata for TSContentLanguage.Models.Fill.Gradient;
      }

      if (a1 == 0xD000000000000032 && 0x8000000101589DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10980();
        return &type metadata for TSContentLanguage.Models.Fill.Gradient.Stop;
      }

      if (a1 == 0xD000000000000034 && 0x8000000101589DE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B1092C();
        return &type metadata for TSContentLanguage.Models.Fill.Gradient.Flavor;
      }

      if (a1 == 0xD00000000000003BLL && 0x8000000101589E20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B108D8();
        return &type metadata for TSContentLanguage.Models.Fill.Gradient.Flavor.Linear;
      }

      if (a1 == 0xD00000000000003BLL && 0x8000000101589E60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10884();
        return &type metadata for TSContentLanguage.Models.Fill.Gradient.Flavor.Radial;
      }

      if (a1 == 0xD00000000000002FLL && 0x8000000101589EA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10830();
        return &type metadata for TSContentLanguage.Models.Fill.ImageFill;
      }

      if (a1 == 0xD000000000000039 && 0x8000000101589ED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B107DC();
        return &type metadata for TSContentLanguage.Models.Fill.ImageFill.Technique;
      }

      if (a1 == 0xD000000000000028 && 0x8000000101589F10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10788();
        return &type metadata for TSContentLanguage.Models.Resource;
      }

      if (a1 == 0xD00000000000003ALL && 0x8000000101589F40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10734();
        return &type metadata for TSContentLanguage.Models.Resource.IndirectResource;
      }

      if (a1 == 0xD000000000000040 && 0x8000000101589F80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B106E0();
        return &type metadata for TSContentLanguage.Models.Resource.Base64EncodedResource;
      }

      if (a1 == 0xD000000000000024 && 0x8000000101589FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B1068C();
        return &type metadata for TSContentLanguage.Models.Path;
      }

      if (a1 == 0xD000000000000030 && 0x800000010158A000 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10638();
        return &type metadata for TSContentLanguage.Models.Path.BezierPath;
      }

      if (a1 == 0xD000000000000028 && 0x800000010158A040 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B105E4();
        return &type metadata for TSContentLanguage.Models.Geometry;
      }

      if (a1 == 0xD000000000000024 && 0x800000010158A070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10590();
        return &type metadata for TSContentLanguage.Models.Rect;
      }

      if (a1 == 0xD000000000000028 && 0x8000000101589860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0D568();
        return &type metadata for TSContentLanguage.Models.Position;
      }

      if (a1 == 0xD000000000000024 && 0x800000010158A0A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B1053C();
        return &type metadata for TSContentLanguage.Models.Size;
      }

      if (a1 == 0xD000000000000031 && 0x800000010158A0D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B104E8();
        return &type metadata for TSContentLanguage.Models.ScaffoldGradient;
      }

      if (a1 == 0xD000000000000031 && 0x800000010158A110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10494();
        return &type metadata for TSContentLanguage.Models.LayoutProperties;
      }

      if (a1 == 0xD000000000000034 && 0x800000010158A150 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10440();
        return &type metadata for TSContentLanguage.Models.ParagraphStyleType;
      }

      if (a1 == 0xD00000000000002FLL && 0x800000010158A190 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B103EC();
        return &type metadata for TSContentLanguage.Models.ScaffoldShadow;
      }

      if (a1 == 0xD000000000000044 && 0x800000010158A1C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10398();
        return &type metadata for TSContentLanguage.Models.ScaffoldShadow.ScaffoldShadowType;
      }

      if (a1 == 0xD000000000000031 && 0x800000010158A210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10344();
        return &type metadata for TSContentLanguage.Models.LineSpacingType;
      }

      if (a1 == 0xD000000000000048 && 0x800000010158A250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B102F0();
        return &type metadata for TSContentLanguage.Models.LineSpacingType.LineSpacingKindType;
      }

      if (a1 == 0xD000000000000034 && 0x800000010158A2A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B1029C();
        return &type metadata for TSContentLanguage.Models.CharacterStyleType;
      }

      if (a1 == 0xD000000000000029 && 0x800000010158A2E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10248();
        return &type metadata for TSContentLanguage.Models.Paragraph;
      }

      if (a1 == 0xD000000000000034 && 0x800000010158A310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B101F4();
        return &type metadata for TSContentLanguage.Models.Paragraph.BreakType;
      }

      if (a1 == 0xD000000000000031 && 0x800000010158A350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B101A0();
        return &type metadata for TSContentLanguage.Models.LayoutStyleType;
      }

      if (a1 == 0xD000000000000028 && 0x800000010158A390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B1014C();
        return &type metadata for TSContentLanguage.Models.TextRun;
      }

      if (a1 == 0xD00000000000002FLL && 0x800000010158A3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B100F8();
        return &type metadata for TSContentLanguage.Models.ListLevelType;
      }

      if (a1 == 0xD000000000000033 && 0x800000010158A3F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B100A4();
        return &type metadata for TSContentLanguage.Models.ScaffoldListStyle;
      }

      if (a1 == 0xD000000000000038 && 0x800000010158A430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B10050();
        return &type metadata for TSContentLanguage.Models.ScaffoldParagraphStyle;
      }

      if (a1 == 0xD000000000000034 && 0x800000010158A470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FFFC();
        return &type metadata for TSContentLanguage.Models.CharacterProperties;
      }

      if (a1 == 0xD000000000000042 && 0x800000010158A4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FFA8();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.BaselineType;
      }

      if (a1 == 0xD000000000000048 && 0x800000010158A500 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FF54();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.CapitalizationType;
      }

      if (a1 == 0xD000000000000047 && 0x800000010158A550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FF00();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.FontFeaturesType;
      }

      if (a1 == 0xD000000000000042 && 0x800000010158A5A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FEAC();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.LigatureType;
      }

      if (a1 == 0xD000000000000047 && 0x800000010158A5F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FE58();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.StrikethroughType;
      }

      if (a1 == 0xD000000000000043 && 0x800000010158A640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FE04();
        return &type metadata for TSContentLanguage.Models.CharacterProperties.UnderlineType;
      }

      if (a1 == 0xD00000000000002ELL && 0x800000010158A690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FDB0();
        return &type metadata for TSContentLanguage.Models.ColumnMetrics;
      }

      if (a1 == 0xD000000000000048 && 0x800000010158A6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FD5C();
        return &type metadata for TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription;
      }

      if (a1 == 0xD00000000000004ALL && 0x800000010158A710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FD08();
        return &type metadata for TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription;
      }

      if (a1 == 0xD00000000000002DLL && 0x800000010158A760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FCB4();
        return &type metadata for TSContentLanguage.Models.TabStopType;
      }

      if (a1 == 0xD000000000000045 && 0x800000010158A790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FC60();
        return &type metadata for TSContentLanguage.Models.TabStopType.TabAlignmentKindType;
      }

      if (a1 == 0xD000000000000032 && 0x800000010158A7E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FC0C();
        return &type metadata for TSContentLanguage.Models.NumberFormatType;
      }

      if (a1 == 0xD000000000000037 && 0x800000010158A820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FBB8();
        return &type metadata for TSContentLanguage.Models.NumberFormatType.Kind;
      }

      if (a1 == 0xD000000000000039 && 0x800000010158A860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FB64();
        return &type metadata for TSContentLanguage.Models.NumberFormatType.Format;
      }

      if (a1 == 0xD00000000000002FLL && 0x800000010158A8A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FB10();
        return &type metadata for TSContentLanguage.Models.ListStyleType;
      }

      if (a1 == 0xD00000000000002BLL && 0x800000010157C340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100969438();
        return &type metadata for TSContentLanguage.Models.TextStroke;
      }

      if (a1 == 0xD000000000000036 && 0x800000010158A8D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FABC();
        return &type metadata for TSContentLanguage.Models.WritingDirectionType;
      }

      if (a1 == 0xD000000000000026 && 0x800000010158A910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FA68();
        return &type metadata for TSContentLanguage.Models.Offset;
      }

      if (a1 == 0xD000000000000026 && 0x800000010158A940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0FA14();
        return &type metadata for TSContentLanguage.Models.Insets;
      }

      if (a1 == 0xD00000000000002FLL && 0x800000010158A970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F9C0();
        return &type metadata for TSContentLanguage.Models.ListProperties;
      }

      if (a1 == 0xD000000000000034 && 0x800000010158A9A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F96C();
        return &type metadata for TSContentLanguage.Models.ParagraphProperties;
      }

      if (a1 == 0xD000000000000043 && 0x800000010158A9E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F918();
        return &type metadata for TSContentLanguage.Models.ParagraphProperties.AlignmentType;
      }

      if (a1 == 0xD000000000000047 && 0x800000010158AA30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F8C4();
        return &type metadata for TSContentLanguage.Models.ParagraphProperties.OutlineStyleType;
      }

      if (a1 == 0xD000000000000046 && 0x800000010158AA80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F870();
        return &type metadata for TSContentLanguage.Models.ParagraphProperties.BorderStyleType;
      }

      if (a1 == 0xD000000000000035 && 0x800000010158AAD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F81C();
        return &type metadata for TSContentLanguage.Models.ScaffoldColumnStyle;
      }

      if (a1 == 0xD00000000000002FLL && 0x800000010158AB10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F7C8();
        return &type metadata for TSContentLanguage.Models.ListLabelType;
      }

      if (a1 == 0xD000000000000041 && 0x800000010158AB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F774();
        return &type metadata for TSContentLanguage.Models.ListLabelType.ListNumberLabel;
      }

      if (a1 == 0xD000000000000041 && 0x800000010158AB90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F720();
        return &type metadata for TSContentLanguage.Models.ListLabelType.ListStringLabel;
      }

      if (a1 == 0xD000000000000040 && 0x800000010158ABE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F6CC();
        return &type metadata for TSContentLanguage.Models.ListLabelType.ListImageLabel;
      }

      if (a1 == 0xD00000000000002DLL && 0x800000010158AC30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F678();
        return &type metadata for TSContentLanguage.Models.ScaffoldFill;
      }

      if (a1 == 0xD000000000000040 && 0x800000010158AC60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F624();
        return &type metadata for TSContentLanguage.Models.ScaffoldFill.ScaffoldFillType;
      }

      if (a1 == 0xD000000000000035 && 0x800000010158ACB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100B0F5D0();
        return &type metadata for TSContentLanguage.Models.ScaffoldLayoutStyle;
      }

      if (a1 == 0xD000000000000024 && 0x800000010158ACF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v5 = type metadata accessor for TSContentLanguage.Models.Text(0);
        v6 = &qword_101A11178;
        v7 = type metadata accessor for TSContentLanguage.Models.Text;
        v8 = protocol conformance descriptor for TSContentLanguage.Models.Text;
      }

      else
      {
        if (a1 == 0xD000000000000038 && 0x800000010158AD20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_100B0F57C();
          return &type metadata for TSContentLanguage.Models.ScaffoldCharacterStyle;
        }

        if (a1 == 0xD000000000000037 && 0x800000010158AD60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_100B0F528();
          return &type metadata for TSContentLanguage.Models.VerticalAlignmentType;
        }

        if ((a1 != 0xD000000000000036 || 0x800000010156EB70 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v5 = type metadata accessor for AttributedString();
        v6 = &unk_101A11160;
        v7 = &type metadata accessor for AttributedString;
        v8 = &protocol conformance descriptor for AttributedString;
      }
    }
  }

  sub_100B11160(v6, v7, v8);
  return v5;
}