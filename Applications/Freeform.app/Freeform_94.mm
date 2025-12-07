uint64_t sub_100C3EB98(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16250, &qword_1014A2C80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100C4874C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v39) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v39) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v39) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v39) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = *(v3 + 72);
    v10 = *(v3 + 56);
    v39 = *(v3 + 40);
    v40 = v10;
    *&v41 = v9;
    LOBYTE(v31) = 4;
    sub_100C4532C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v3 + 112);
    v12 = *(v3 + 96);
    v39 = *(v3 + 80);
    v40 = v12;
    *&v41 = v11;
    LOBYTE(v31) = 5;
    sub_100C4577C();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v13 = *(v3 + 136);
    v39 = *(v3 + 120);
    *&v40 = v13;
    LOBYTE(v31) = 6;
    sub_100C45BCC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = *(v3 + 176);
    v15 = *(v3 + 160);
    v48 = *(v3 + 144);
    v49 = v15;
    v50 = v14;
    v47 = 7;
    sub_100C4601C();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v16 = *(v3 + 264);
    v17 = *(v3 + 280);
    v43 = *(v3 + 248);
    v44 = v16;
    v18 = *(v3 + 264);
    v19 = *(v3 + 296);
    v45 = *(v3 + 280);
    v46 = v19;
    v20 = *(v3 + 200);
    v39 = *(v3 + 184);
    v40 = v20;
    v21 = *(v3 + 232);
    v41 = *(v3 + 216);
    v42 = v21;
    v35 = *(v3 + 248);
    v36 = v18;
    v22 = *(v3 + 296);
    v37 = v17;
    v38 = v22;
    v23 = *(v3 + 200);
    v31 = *(v3 + 184);
    v32 = v23;
    v24 = *(v3 + 232);
    v33 = *(v3 + 216);
    v34 = v24;
    v30 = 8;
    sub_10000BE14(&v39, v29, &qword_101A16218, &qword_1014A2C58);
    sub_100C481EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29[4] = v35;
    v29[5] = v36;
    v29[6] = v37;
    v29[7] = v38;
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v29[3] = v34;
    sub_10000CAAC(v29, &qword_101A16218, &qword_1014A2C58);
    v25 = type metadata accessor for CRLPathSourceData(0);
    LOBYTE(v28) = 9;
    type metadata accessor for CRLEditableBezierPathSourceData(0);
    sub_100C44E20(&qword_101A15F20, type metadata accessor for CRLEditableBezierPathSourceData, byte_1014A1658);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28 = *(v3 + *(v25 + 56));
    v27[7] = 10;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C3F0C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1005B981C(&qword_101A15D00, &unk_1014A1060);
  __chkstk_darwin(v4 - 8);
  v6 = v32 - v5;
  v37 = sub_1005B981C(&qword_101A16248, &unk_1014A2C70);
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = v32 - v8;
  v10 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v49 = a1;
  sub_100020E58(a1, v13);
  sub_100C4874C();
  v36 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100005070(v49);
    return sub_100B98A0C(0);
  }

  else
  {
    v34 = v6;
    LOBYTE(v41) = 0;
    *v12 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v41) = 1;
    v12[1] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v41) = 2;
    *(v12 + 1) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v12 + 2) = v14;
    LOBYTE(v41) = 3;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v12;
    *(v12 + 3) = v15;
    *(v12 + 4) = v16;
    LOBYTE(v39) = 4;
    sub_100C452D4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v43;
    v18 = v42;
    *(v12 + 40) = v41;
    *(v12 + 56) = v18;
    *(v12 + 9) = v17;
    LOBYTE(v39) = 5;
    sub_100C45724();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v43;
    v20 = v42;
    *(v12 + 5) = v41;
    *(v12 + 6) = v20;
    *(v12 + 14) = v19;
    LOBYTE(v39) = 6;
    sub_100C45B74();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = *(&v41 + 1);
    v22 = v42;
    v32[1] = v41;
    *(v12 + 15) = v41;
    *(v12 + 16) = v21;
    v32[3] = v21;
    v32[2] = v22;
    *(v12 + 17) = v22;
    LOBYTE(v39) = 7;
    sub_100C45FC4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v43;
    v24 = v42;
    *(v12 + 9) = v41;
    *(v12 + 10) = v24;
    *(v12 + 22) = v23;
    v40 = 8;
    sub_100C48194();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v46;
    v26 = v33;
    *(v33 + 248) = v45;
    v27 = v42;
    *(v26 + 184) = v41;
    *(v26 + 200) = v27;
    v28 = v44;
    *(v26 + 216) = v43;
    *(v26 + 232) = v28;
    v29 = v47;
    *(v26 + 264) = v25;
    *(v26 + 280) = v29;
    *(v26 + 296) = v48;
    type metadata accessor for CRLEditableBezierPathSourceData(0);
    LOBYTE(v39) = 9;
    sub_100C44E20(&qword_101A15F18, type metadata accessor for CRLEditableBezierPathSourceData, byte_1014A1680);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100C4CA70(v34, &v12[*(v10 + 52)]);
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    v38 = 10;
    sub_100600EA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = *(v10 + 56);
    (*(v7 + 8))(v36, v37);
    *&v12[v30] = v39;
    sub_100C4F994(v12, v35, type metadata accessor for CRLPathSourceData);
    sub_100005070(v49);
    return sub_100C4CAE0(v12, type metadata accessor for CRLPathSourceData);
  }
}

uint64_t sub_100C3F9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16258, type metadata accessor for CRLPathSourceData, byte_1014A2C10);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C3FA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16258, type metadata accessor for CRLPathSourceData, byte_1014A2C10);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C3FAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C44E20(&qword_101A161B0, type metadata accessor for CRLPathSourceData, byte_1014A2A28);
  v7 = sub_100C44E20(&qword_101A16260, type metadata accessor for CRLPathSourceData, byte_1014A2BE8);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100C3FB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16258, type metadata accessor for CRLPathSourceData, byte_1014A2C10);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C3FD10(uint64_t a1)
{
  v2 = sub_100C44E20(&qword_101A161F8, type metadata accessor for CRLPathSourceData, byte_1014A2A60);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

id sub_100C3FD8C(float *a1)
{
  if (a1[2])
  {
    v27 = objc_opt_self();
    v2 = [v27 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28, "Unknown point path source type. Falling back to left single arrow.", 66, 2u);
    StaticString.description.getter("init(unarchiving:)", 18, 2);
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
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
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 317;
    v14 = v28;
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
    sub_100005404(v9, &_mh_execute_header, v18, "Unknown point path source type. Falling back to left single arrow.", 66, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(unarchiving:)", 18, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unknown point path source type. Falling back to left single arrow.", 66, 2);
    v23 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v21 file:v22 lineNumber:317 isFatal:0 format:v23 args:v20];

    v24 = 0;
  }

  else
  {
    v24 = qword_1014A4508[*a1];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100C4FC3C(a1);
  return [objc_allocWithZone(ObjCClassFromMetadata) initWithType:v24 point:a1[3] naturalSize:{a1[4], a1[5], a1[6]}];
}

id sub_100C4018C(uint64_t a1)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100006370(0, &qword_101A02480, off_10182F728);

  v6 = sub_100C58684(v5);

  v7 = [v4 initWithBezierPath:v6];

  if (!v7)
  {
    sub_100C4F450(a1);
    return v7;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    v27 = *a1 & 1;
    goto LABEL_7;
  }

  v36 = objc_opt_self();
  v8 = [v36 _atomicIncrementAssertCount];
  v38 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v38, "Unknown connection line path source type. Falling back to quadratic.", 68, 2u);
  StaticString.description.getter("init(unarchiving:)", 18, 2);
  p_info = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v12;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = p_info;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v1;
    *(inited + 120) = v2;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 800;
    v18 = v38;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = p_info;
    v1 = v18;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "Unknown connection line path source type. Falling back to quadratic.", 68, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(unarchiving:)", 18, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unknown connection line path source type. Falling back to quadratic.", 68, 2);
    v26 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v24 file:v25 lineNumber:800 isFatal:0 format:v26 args:v23];

    v27 = 0;
LABEL_7:
    [v7 setType:v27];
    [v7 setOutsetTo:*(a1 + 44)];
    [v7 setOutsetFrom:*(a1 + 40)];
    p_info = CRLMovieRenderingOperation.info;
    if (!*(a1 + 72))
    {
      break;
    }

    v28 = *(a1 + 60);
    v29 = *(a1 + 64);
    v38 = *(a1 + 48);
    v39 = *(a1 + 56);
    sub_1005B981C(&qword_101A16400, &unk_1014A2D20);
    CRExtensible.rawValue.getter();
    v8 = v37;
    if (v37 < 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    v30 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v37 normalizedPosition:{v28, v29}];
    [v7 setHeadMagnet:v30];

    if (!*(a1 + 104))
    {
      goto LABEL_13;
    }

LABEL_10:
    v31 = *(a1 + 92);
    v32 = *(a1 + 96);
    v38 = *(a1 + 80);
    v39 = *(a1 + 88);
    sub_1005B981C(&qword_101A16400, &unk_1014A2D20);
    CRExtensible.rawValue.getter();
    v8 = v37;
    if ((v37 & 0x8000000000000000) == 0)
    {
      v33 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v37 normalizedPosition:{v31, v32}];
      [v7 setTailMagnet:v33];

      goto LABEL_14;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  [v7 setHeadMagnet:0];
  if (*(a1 + 104))
  {
    goto LABEL_10;
  }

LABEL_13:
  [v7 setTailMagnet:0];
LABEL_14:
  sub_100C4F450(a1);
  v34 = *(a1 + 112);
  if (v34 == 2)
  {
    [v7 setUserDidSetControlPoint:1];
  }

  else
  {
    [v7 setUserDidSetControlPoint:v34 & 1];
  }

  return v7;
}

id sub_100C40790(uint64_t a1)
{
  v2 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  v3 = *(a1 + *(v2 + 20));
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_100006370(0, &qword_101A16200, off_10182F738);
    v5 = v3 + 48;
    do
    {
      v6 = *(v5 - 16);
      v7 = *(v5 - 8);

      sub_100C46308(v6, v7);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 += 24;
      --v4;
    }

    while (v4);
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v8 setPersistedUUID:isa];

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }

LABEL_10:

    v12 = [objc_allocWithZone(CRLBezierSubpath) init];
    v13 = [objc_opt_self() bezierNodeWithPoint:{0.0, 0.0}];
    [v12 addNode:v13];

    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101465920;
    *(v14 + 32) = v12;
    sub_100006370(0, &qword_101A16200, off_10182F738);
    v15 = v8;
    v16 = v12;
    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setSubpaths:v11.super.isa];

    goto LABEL_11;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_100006370(0, &qword_101A16200, off_10182F738);
  v10 = v8;
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setSubpaths:v11.super.isa];
LABEL_11:

  [v8 setNaturalSize:{*(a1 + *(v2 + 24)), *(a1 + *(v2 + 24) + 4)}];
  sub_100C4CAE0(a1, type metadata accessor for CRLEditableBezierPathSourceData);
  return v8;
}

unint64_t sub_100C40AC4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C4CB40(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C40CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4C5AC();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_100C40D24()
{
  v1 = 1701869940;
  v2 = 0x536C61727574616ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x746E696F70;
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

uint64_t sub_100C40DA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100C4CB50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100C40E04(uint64_t a1)
{
  v2 = sub_100C4548C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C40E40(uint64_t a1)
{
  v2 = sub_100C4548C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C40E80(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16350, &qword_1014A2CE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4548C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 8);
  v11 = 0;
  sub_1005B981C(&qword_101A16340, &qword_1014A2CE0);
  sub_100B99DB0(&qword_101A16358, &qword_101A16340, &qword_1014A2CE0, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 12);
    v11 = 1;
    sub_1009CF3B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 20);
    v11 = 2;
    sub_100C4F638();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[4];
    v11 = 3;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_100C4113C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100C4CCBC(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100C4119C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F8EC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C411F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F8EC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C41270(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F8EC();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C41354(uint64_t a1)
{
  v2 = sub_100C455C4();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C41580(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4C600();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_100C415D4()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000011;
  v4 = 0x6853646C756F6873;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72616C616373;
  if (v1 != 1)
  {
    v5 = 0x536C61727574616ELL;
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

uint64_t sub_100C416A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100C4CF88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100C41708(uint64_t a1)
{
  v2 = sub_100C458DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C41744(uint64_t a1)
{
  v2 = sub_100C458DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C41784(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16318, &qword_1014A2CD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C458DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 8);
  v11 = 0;
  sub_1005B981C(&qword_101A16308, &qword_1014A2CC8);
  sub_100B99DB0(&qword_101A16320, &qword_101A16308, &qword_1014A2CC8, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[2];
    v11 = 2;
    sub_100C4F638();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[4];
    v11 = 5;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_100C41AA4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100C4D19C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100C41B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F844();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C41B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F844();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C41BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F844();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C41CBC(uint64_t a1)
{
  v2 = sub_100C45A14();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C41D0C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A162C0, &qword_1014A2CA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4617C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_1009CF3B0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 20);
    HIBYTE(v10) = 4;
    sub_100C4F638();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3[4];
    HIBYTE(v10) = 5;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C41F98()
{
  v1 = *v0;
  v2 = 0x69736F506C696174;
  v3 = 0x61547265746E6563;
  v4 = 0x536C61727574616ELL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657A69536C696174;
  if (v1 != 1)
  {
    v5 = 0x615272656E726F63;
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

uint64_t sub_100C42074@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100C4D508(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100C420D8(uint64_t a1)
{
  v2 = sub_100C4617C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C42114(uint64_t a1)
{
  v2 = sub_100C4617C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100C4219C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100C4D720(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100C421FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F68C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C42250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F68C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C422D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v10 = a5(a1, a2, a3, a4);
  v11 = a6();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v10, v11);
}

uint64_t sub_100C42354(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F68C();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C42438(uint64_t a1)
{
  v2 = sub_100C462B4();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C42484(void *a1, unint64_t a2, unint64_t a3, float a4, float a5)
{
  v11 = sub_1005B981C(&qword_101A162E8, &qword_1014A2CB8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  sub_100020E58(a1, a1[3]);
  sub_100C45D2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v17 = 0;
  sub_1009CF2EC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v18 = __PAIR64__(LODWORD(a5), LODWORD(a4));
    v17 = 1;
    sub_100C4F638();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = a3;
    v17 = 2;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_100C4267C()
{
  v1 = 0x536C61727574616ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61507265697A6562;
  }
}

uint64_t sub_100C426F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100C4DA30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100C42754(uint64_t a1)
{
  v2 = sub_100C45D2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C42790(uint64_t a1)
{
  v2 = sub_100C45D2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100C427CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(a2 + 12);
  v7 = *(a2 + 16);
  if (sub_10067063C(*a1, *a2) && v2 == v5 && v3 == v6)
  {

    sub_100B3216C(v4, v7);
  }
}

void sub_100C4285C(uint64_t a1@<X8>, void *a2@<X0>)
{
  v6 = sub_100C4DB5C(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 12) = v7;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_100C428B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F734();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C42908(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F734();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C42988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F734();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C42A6C(uint64_t a1)
{
  v2 = sub_100C45E64();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C42C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10067CE54();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

Swift::Int sub_100C42D10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A4560[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100C42D98(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A4560[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100C42DFC()
{
  v1 = *v0;
  v2 = 0x6F72746E6F436E69;
  v3 = 0x72746E6F4374756FLL;
  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E696F5065646F6ELL;
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

uint64_t sub_100C42EB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100C4DDBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100C42F2C(uint64_t a1)
{
  v2 = sub_100C4FF78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C42F68(uint64_t a1)
{
  v2 = sub_100C4FF78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C42FA4(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A165B8, qword_1014A4360);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4FF78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *v3;
  v12 = 0;
  sub_1009CF3B0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3[1];
    v12 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v3[2];
    v12 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v3[3];
    v11 = *(v3 + 32);
    v12 = 3;
    sub_1005B981C(&qword_101A165A8, &qword_1014A4358);
    sub_100B99DB0(&qword_101A165C0, &qword_101A165A8, &qword_1014A4358, &protocol conformance descriptor for <> CRExtensible<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = v3[5];
    v12 = 4;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C4328C(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_100C432B8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_100C4896C(v7, v8) & 1;
}

double sub_100C43300@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100C4DF8C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_100C4335C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50EE0();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C433B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50EE0();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C43404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C4FE10();
  v7 = sub_100C50F34();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100C43474(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50EE0();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C43558(uint64_t a1)
{
  v2 = sub_100C500B0();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100C435A4()
{
  v1 = 0x6465736F6C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

uint64_t sub_100C435FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100C4E2E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100C43660(uint64_t a1)
{
  v2 = sub_100C446B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C4369C(uint64_t a1)
{
  v2 = sub_100C446B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C436D8(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v13[2] = a3;
  v8 = sub_1005B981C(&qword_101A163C8, &qword_1014A2D18);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_100020E58(a1, a1[3]);
  sub_100C446B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_1005B981C(&qword_101A163B0, &qword_1014A2D10);
  sub_100C4FA74(&qword_101A163D0, sub_100C4FB40, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = a4;
    v14 = 2;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100C43938(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16388, &qword_1014A2D00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4504C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_100C44E20(&qword_1019F43C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLEditableBezierPathSourceData(0);
    v12 = *(v3 + v9[5]);
    HIBYTE(v11) = 1;
    sub_1005B981C(&qword_101A16378, &qword_1014A2CF8);
    sub_100C4F9FC(&qword_101A16390, sub_100C44550, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + v9[6]);
    HIBYTE(v11) = 2;
    sub_100C4F638();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C43BEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A16370, &qword_1014A2CF0);
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100C4504C();
  v24 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v12 = v11;
  v13 = v20;
  LOBYTE(v26) = 0;
  sub_100C44E20(&qword_1019F43A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v21;
  v15 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v14, v4);
  sub_1005B981C(&qword_101A16378, &qword_1014A2CF8);
  v25 = 1;
  sub_100C4F9FC(&qword_101A16380, sub_100C444F8, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v12 + v9[5]) = v26;
  v25 = 2;
  sub_100C4F57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v12 + v9[6]) = v26;
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v25 = 3;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v9[7];
  (*(v22 + 8))(v24, v15);
  *(v12 + v16) = v26;
  sub_100C4F994(v12, v19, type metadata accessor for CRLEditableBezierPathSourceData);
  sub_100005070(a1);
  return sub_100C4CAE0(v12, type metadata accessor for CRLEditableBezierPathSourceData);
}

void sub_100C44088(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_10066CC84(*a1, *a2) & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {

    sub_100B3216C(v3, v5);
  }
}

uint64_t sub_100C44108@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100C4E400(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100C44164(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4FB94();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C441B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4FB94();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C44238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v10 = a5(a1, a2, a3, a4);
  v11 = a6();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v10, v11);
}

uint64_t sub_100C442BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4FB94();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C443A0(uint64_t a1)
{
  v2 = sub_100C447E8();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100C443F0()
{
  result = qword_101A15E90;
  if (!qword_101A15E90)
  {
    result = swift_getWitnessTable(byte_1014A1250, &type metadata for CRLEditableBezierPathSourceData.Subpath, v0, v1);
    atomic_store(result, &qword_101A15E90);
  }

  return result;
}

unint64_t sub_100C44448()
{
  result = qword_101A15E98;
  if (!qword_101A15E98)
  {
    result = swift_getWitnessTable(byte_1014A12A8, &type metadata for CRLEditableBezierPathSourceData.Subpath, v0, v1);
    atomic_store(result, &qword_101A15E98);
  }

  return result;
}

unint64_t sub_100C444A0()
{
  result = qword_101A15EA0;
  if (!qword_101A15EA0)
  {
    result = swift_getWitnessTable(byte_1014A1368, &type metadata for CRLEditableBezierPathSourceData.Subpath, v0, v1);
    atomic_store(result, &qword_101A15EA0);
  }

  return result;
}

unint64_t sub_100C444F8()
{
  result = qword_101A15EA8;
  if (!qword_101A15EA8)
  {
    result = swift_getWitnessTable(byte_1014A1340, &type metadata for CRLEditableBezierPathSourceData.Subpath, v0, v1);
    atomic_store(result, &qword_101A15EA8);
  }

  return result;
}

unint64_t sub_100C44550()
{
  result = qword_101A15EB0;
  if (!qword_101A15EB0)
  {
    result = swift_getWitnessTable(byte_1014A1318, &type metadata for CRLEditableBezierPathSourceData.Subpath, v0, v1);
    atomic_store(result, &qword_101A15EB0);
  }

  return result;
}

unint64_t sub_100C445A8()
{
  result = qword_101A15EB8;
  if (!qword_101A15EB8)
  {
    result = swift_getWitnessTable(byte_1014A13E8, &type metadata for CRLEditableBezierPathSourceData.Subpath.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15EB8);
  }

  return result;
}

unint64_t sub_100C44600()
{
  result = qword_101A15EC0;
  if (!qword_101A15EC0)
  {
    result = swift_getWitnessTable(byte_1014A1500, &type metadata for CRLEditableBezierPathSourceData.Subpath.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15EC0);
  }

  return result;
}

unint64_t sub_100C44658()
{
  result = qword_101A15EC8;
  if (!qword_101A15EC8)
  {
    result = swift_getWitnessTable(byte_1014A14C8, &type metadata for CRLEditableBezierPathSourceData.Subpath.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15EC8);
  }

  return result;
}

unint64_t sub_100C446B0()
{
  result = qword_101A15ED0;
  if (!qword_101A15ED0)
  {
    result = swift_getWitnessTable("9%9", &type metadata for CRLEditableBezierPathSourceData.Subpath.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15ED0);
  }

  return result;
}

unint64_t sub_100C44708()
{
  result = qword_101A15ED8;
  if (!qword_101A15ED8)
  {
    result = swift_getWitnessTable(byte_1014A1498, &type metadata for CRLEditableBezierPathSourceData.Subpath.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15ED8);
  }

  return result;
}

unint64_t sub_100C44760()
{
  result = qword_101A15EE0;
  if (!qword_101A15EE0)
  {
    result = swift_getWitnessTable(byte_1014A1470, &type metadata for CRLEditableBezierPathSourceData.Subpath.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15EE0);
  }

  return result;
}

unint64_t sub_100C447E8()
{
  result = qword_101A15EF8;
  if (!qword_101A15EF8)
  {
    result = swift_getWitnessTable(byte_1014A13A0, &type metadata for CRLEditableBezierPathSourceData.Subpath, v0, v1);
    atomic_store(result, &qword_101A15EF8);
  }

  return result;
}

unint64_t sub_100C4483C()
{
  v1 = 1684632949;
  v2 = 0x536C61727574616ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x7368746170627573;
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

uint64_t sub_100C448BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100C4E680(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100C44920(uint64_t a1)
{
  v2 = sub_100C4504C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C4495C(uint64_t a1)
{
  v2 = sub_100C4504C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C449CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16398, type metadata accessor for CRLEditableBezierPathSourceData, "a'9");

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C44A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16398, type metadata accessor for CRLEditableBezierPathSourceData, "a'9");

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C44AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C44E20(&qword_101A15F10, type metadata accessor for CRLEditableBezierPathSourceData, byte_1014A16A8);
  v7 = sub_100C44E20(&qword_101A163A0, type metadata accessor for CRLEditableBezierPathSourceData, aQ_91);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100C44BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C44E20(&qword_101A16398, type metadata accessor for CRLEditableBezierPathSourceData, "a'9");

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C44D14(uint64_t a1)
{
  v2 = sub_100C44E20(&qword_101A15F68, type metadata accessor for CRLEditableBezierPathSourceData, byte_1014A16E0);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C44E20(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_100C44F44()
{
  result = qword_101A15F28;
  if (!qword_101A15F28)
  {
    result = swift_getWitnessTable(byte_1014A1728, &type metadata for CRLEditableBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15F28);
  }

  return result;
}

unint64_t sub_100C44F9C()
{
  result = qword_101A15F30;
  if (!qword_101A15F30)
  {
    result = swift_getWitnessTable(byte_1014A1840, &type metadata for CRLEditableBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15F30);
  }

  return result;
}

unint64_t sub_100C44FF4()
{
  result = qword_101A15F38;
  if (!qword_101A15F38)
  {
    result = swift_getWitnessTable("q&9", &type metadata for CRLEditableBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15F38);
  }

  return result;
}

unint64_t sub_100C4504C()
{
  result = qword_101A15F40;
  if (!qword_101A15F40)
  {
    result = swift_getWitnessTable(byte_1014A1760, &type metadata for CRLEditableBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15F40);
  }

  return result;
}

unint64_t sub_100C450A4()
{
  result = qword_101A15F48;
  if (!qword_101A15F48)
  {
    result = swift_getWitnessTable("a!9", &type metadata for CRLEditableBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15F48);
  }

  return result;
}

unint64_t sub_100C450FC()
{
  result = qword_101A15F50;
  if (!qword_101A15F50)
  {
    result = swift_getWitnessTable(byte_1014A17B0, &type metadata for CRLEditableBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15F50);
  }

  return result;
}

unint64_t sub_100C451CC()
{
  result = qword_101A15F70;
  if (!qword_101A15F70)
  {
    result = swift_getWitnessTable("1!9", &type metadata for CRLPointPathSourceData, v0, v1);
    atomic_store(result, &qword_101A15F70);
  }

  return result;
}

unint64_t sub_100C45224()
{
  result = qword_101A15F78;
  if (!qword_101A15F78)
  {
    result = swift_getWitnessTable("I!9", &type metadata for CRLPointPathSourceData, v0, v1);
    atomic_store(result, &qword_101A15F78);
  }

  return result;
}

unint64_t sub_100C4527C()
{
  result = qword_101A15F80;
  if (!qword_101A15F80)
  {
    result = swift_getWitnessTable("A#9", &type metadata for CRLPointPathSourceData, v0, v1);
    atomic_store(result, &qword_101A15F80);
  }

  return result;
}

unint64_t sub_100C452D4()
{
  result = qword_101A15F88;
  if (!qword_101A15F88)
  {
    result = swift_getWitnessTable(aQ_86, &type metadata for CRLPointPathSourceData, v0, v1);
    atomic_store(result, &qword_101A15F88);
  }

  return result;
}

unint64_t sub_100C4532C()
{
  result = qword_101A15F90;
  if (!qword_101A15F90)
  {
    result = swift_getWitnessTable(aI_83, &type metadata for CRLPointPathSourceData, v0, v1);
    atomic_store(result, &qword_101A15F90);
  }

  return result;
}

unint64_t sub_100C45384()
{
  result = qword_101A15F98;
  if (!qword_101A15F98)
  {
    result = swift_getWitnessTable("A%9", &type metadata for CRLPointPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15F98);
  }

  return result;
}

unint64_t sub_100C453DC()
{
  result = qword_101A15FA0;
  if (!qword_101A15FA0)
  {
    result = swift_getWitnessTable("a$9", &type metadata for CRLPointPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15FA0);
  }

  return result;
}

unint64_t sub_100C45434()
{
  result = qword_101A15FA8;
  if (!qword_101A15FA8)
  {
    result = swift_getWitnessTable("1#9", &type metadata for CRLPointPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15FA8);
  }

  return result;
}

unint64_t sub_100C4548C()
{
  result = qword_101A15FB0;
  if (!qword_101A15FB0)
  {
    result = swift_getWitnessTable(byte_1014A1AA0, &type metadata for CRLPointPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15FB0);
  }

  return result;
}

unint64_t sub_100C454E4()
{
  result = qword_101A15FB8;
  if (!qword_101A15FB8)
  {
    result = swift_getWitnessTable(asc_1014A1B18, &type metadata for CRLPointPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15FB8);
  }

  return result;
}

unint64_t sub_100C4553C()
{
  result = qword_101A15FC0;
  if (!qword_101A15FC0)
  {
    result = swift_getWitnessTable(aY_80, &type metadata for CRLPointPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A15FC0);
  }

  return result;
}

unint64_t sub_100C455C4()
{
  result = qword_101A15FD8;
  if (!qword_101A15FD8)
  {
    result = swift_getWitnessTable("Y%9", &type metadata for CRLPointPathSourceData, v0, v1);
    atomic_store(result, &qword_101A15FD8);
  }

  return result;
}

unint64_t sub_100C4561C()
{
  result = qword_101A15FE0;
  if (!qword_101A15FE0)
  {
    result = swift_getWitnessTable(byte_1014A1C10, &type metadata for CRLScalarPathSourceData, v0, v1);
    atomic_store(result, &qword_101A15FE0);
  }

  return result;
}

unint64_t sub_100C45674()
{
  result = qword_101A15FE8;
  if (!qword_101A15FE8)
  {
    result = swift_getWitnessTable(asc_1014A1C68, &type metadata for CRLScalarPathSourceData, v0, v1);
    atomic_store(result, &qword_101A15FE8);
  }

  return result;
}

unint64_t sub_100C456CC()
{
  result = qword_101A15FF0;
  if (!qword_101A15FF0)
  {
    result = swift_getWitnessTable(byte_1014A1D28, &type metadata for CRLScalarPathSourceData, v0, v1);
    atomic_store(result, &qword_101A15FF0);
  }

  return result;
}

unint64_t sub_100C45724()
{
  result = qword_101A15FF8;
  if (!qword_101A15FF8)
  {
    result = swift_getWitnessTable(byte_1014A1D00, &type metadata for CRLScalarPathSourceData, v0, v1);
    atomic_store(result, &qword_101A15FF8);
  }

  return result;
}

unint64_t sub_100C4577C()
{
  result = qword_101A16000;
  if (!qword_101A16000)
  {
    result = swift_getWitnessTable(asc_1014A1CD8, &type metadata for CRLScalarPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16000);
  }

  return result;
}

unint64_t sub_100C457D4()
{
  result = qword_101A16008;
  if (!qword_101A16008)
  {
    result = swift_getWitnessTable(byte_1014A1DA8, &type metadata for CRLScalarPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16008);
  }

  return result;
}

unint64_t sub_100C4582C()
{
  result = qword_101A16010;
  if (!qword_101A16010)
  {
    result = swift_getWitnessTable("!!9", &type metadata for CRLScalarPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16010);
  }

  return result;
}

unint64_t sub_100C45884()
{
  result = qword_101A16018;
  if (!qword_101A16018)
  {
    result = swift_getWitnessTable(byte_1014A1E88, &type metadata for CRLScalarPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16018);
  }

  return result;
}

unint64_t sub_100C458DC()
{
  result = qword_101A16020;
  if (!qword_101A16020)
  {
    result = swift_getWitnessTable("y\x1B9", &type metadata for CRLScalarPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16020);
  }

  return result;
}

unint64_t sub_100C45934()
{
  result = qword_101A16028;
  if (!qword_101A16028)
  {
    result = swift_getWitnessTable(byte_1014A1E58, &type metadata for CRLScalarPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16028);
  }

  return result;
}

unint64_t sub_100C4598C()
{
  result = qword_101A16030;
  if (!qword_101A16030)
  {
    result = swift_getWitnessTable(byte_1014A1E30, &type metadata for CRLScalarPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16030);
  }

  return result;
}

unint64_t sub_100C45A14()
{
  result = qword_101A16048;
  if (!qword_101A16048)
  {
    result = swift_getWitnessTable(byte_1014A1D60, &type metadata for CRLScalarPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16048);
  }

  return result;
}

unint64_t sub_100C45A6C()
{
  result = qword_101A16050;
  if (!qword_101A16050)
  {
    result = swift_getWitnessTable(byte_1014A1F50, &type metadata for CRLBezierPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16050);
  }

  return result;
}

unint64_t sub_100C45AC4()
{
  result = qword_101A16058;
  if (!qword_101A16058)
  {
    result = swift_getWitnessTable(byte_1014A1FA8, &type metadata for CRLBezierPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16058);
  }

  return result;
}

unint64_t sub_100C45B1C()
{
  result = qword_101A16060;
  if (!qword_101A16060)
  {
    result = swift_getWitnessTable(byte_1014A2068, &type metadata for CRLBezierPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16060);
  }

  return result;
}

unint64_t sub_100C45B74()
{
  result = qword_101A16068;
  if (!qword_101A16068)
  {
    result = swift_getWitnessTable(byte_1014A2040, &type metadata for CRLBezierPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16068);
  }

  return result;
}

unint64_t sub_100C45BCC()
{
  result = qword_101A16070;
  if (!qword_101A16070)
  {
    result = swift_getWitnessTable(byte_1014A2018, &type metadata for CRLBezierPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16070);
  }

  return result;
}

unint64_t sub_100C45C24()
{
  result = qword_101A16078;
  if (!qword_101A16078)
  {
    result = swift_getWitnessTable(byte_1014A20E8, &type metadata for CRLBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16078);
  }

  return result;
}

unint64_t sub_100C45C7C()
{
  result = qword_101A16080;
  if (!qword_101A16080)
  {
    result = swift_getWitnessTable(byte_1014A2200, &type metadata for CRLBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16080);
  }

  return result;
}

unint64_t sub_100C45CD4()
{
  result = qword_101A16088;
  if (!qword_101A16088)
  {
    result = swift_getWitnessTable(byte_1014A21C8, &type metadata for CRLBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16088);
  }

  return result;
}

unint64_t sub_100C45D2C()
{
  result = qword_101A16090;
  if (!qword_101A16090)
  {
    result = swift_getWitnessTable(a9_38, &type metadata for CRLBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16090);
  }

  return result;
}

unint64_t sub_100C45D84()
{
  result = qword_101A16098;
  if (!qword_101A16098)
  {
    result = swift_getWitnessTable(byte_1014A2198, &type metadata for CRLBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16098);
  }

  return result;
}

unint64_t sub_100C45DDC()
{
  result = qword_101A160A0;
  if (!qword_101A160A0)
  {
    result = swift_getWitnessTable(byte_1014A2170, &type metadata for CRLBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A160A0);
  }

  return result;
}

unint64_t sub_100C45E64()
{
  result = qword_101A160B8;
  if (!qword_101A160B8)
  {
    result = swift_getWitnessTable(byte_1014A20A0, &type metadata for CRLBezierPathSourceData, v0, v1);
    atomic_store(result, &qword_101A160B8);
  }

  return result;
}

unint64_t sub_100C45EBC()
{
  result = qword_101A160C0;
  if (!qword_101A160C0)
  {
    result = swift_getWitnessTable(aQ_92, &type metadata for CRLCalloutPathSourceData, v0, v1);
    atomic_store(result, &qword_101A160C0);
  }

  return result;
}

unint64_t sub_100C45F14()
{
  result = qword_101A160C8;
  if (!qword_101A160C8)
  {
    result = swift_getWitnessTable(byte_1014A22E8, &type metadata for CRLCalloutPathSourceData, v0, v1);
    atomic_store(result, &qword_101A160C8);
  }

  return result;
}

unint64_t sub_100C45F6C()
{
  result = qword_101A160D0;
  if (!qword_101A160D0)
  {
    result = swift_getWitnessTable(byte_1014A23A8, &type metadata for CRLCalloutPathSourceData, v0, v1);
    atomic_store(result, &qword_101A160D0);
  }

  return result;
}

unint64_t sub_100C45FC4()
{
  result = qword_101A160D8;
  if (!qword_101A160D8)
  {
    result = swift_getWitnessTable(byte_1014A2380, &type metadata for CRLCalloutPathSourceData, v0, v1);
    atomic_store(result, &qword_101A160D8);
  }

  return result;
}

unint64_t sub_100C4601C()
{
  result = qword_101A160E0;
  if (!qword_101A160E0)
  {
    result = swift_getWitnessTable(byte_1014A2358, &type metadata for CRLCalloutPathSourceData, v0, v1);
    atomic_store(result, &qword_101A160E0);
  }

  return result;
}

unint64_t sub_100C46074()
{
  result = qword_101A160E8;
  if (!qword_101A160E8)
  {
    result = swift_getWitnessTable(byte_1014A2428, &type metadata for CRLCalloutPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A160E8);
  }

  return result;
}

unint64_t sub_100C460CC()
{
  result = qword_101A160F0;
  if (!qword_101A160F0)
  {
    result = swift_getWitnessTable(byte_1014A2540, &type metadata for CRLCalloutPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A160F0);
  }

  return result;
}

unint64_t sub_100C46124()
{
  result = qword_101A160F8;
  if (!qword_101A160F8)
  {
    result = swift_getWitnessTable(aQ_88, &type metadata for CRLCalloutPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A160F8);
  }

  return result;
}

unint64_t sub_100C4617C()
{
  result = qword_101A16100;
  if (!qword_101A16100)
  {
    result = swift_getWitnessTable(byte_1014A2460, &type metadata for CRLCalloutPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16100);
  }

  return result;
}

unint64_t sub_100C461D4()
{
  result = qword_101A16108;
  if (!qword_101A16108)
  {
    result = swift_getWitnessTable(aA_74, &type metadata for CRLCalloutPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16108);
  }

  return result;
}

unint64_t sub_100C4622C()
{
  result = qword_101A16110;
  if (!qword_101A16110)
  {
    result = swift_getWitnessTable(byte_1014A24B0, &type metadata for CRLCalloutPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16110);
  }

  return result;
}

unint64_t sub_100C462B4()
{
  result = qword_101A16128;
  if (!qword_101A16128)
  {
    result = swift_getWitnessTable(byte_1014A23E0, &type metadata for CRLCalloutPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16128);
  }

  return result;
}

id sub_100C46308(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setClosed:a2 & 1];
  v52 = _swiftEmptyArrayStorage;

  v5 = *(a1 + 16);
  if (v5)
  {
    v47 = v4;
    v6 = objc_opt_self();
    v46 = a1;
    v7 = a1 + 36;
    v8 = &selRef_allowResizeDelegate;
    v48 = v6;
    do
    {
      v9 = *(v7 + 20);
      v10 = *(v7 + 28);
      v11 = *(v7 + 4);
      v12 = *(v7 + 8);
      v13 = *(v7 - 4);
      v14 = *v7;
      v15 = *(v7 + 12);
      v16 = *(v7 + 16);
      v17 = v8[347];

      v18 = [v6 v17];
      v19 = v18;
      if (v10)
      {
        v50 = v18;

        v49 = objc_opt_self();
        v20 = [v49 _atomicIncrementAssertCount];
        v51 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v51, "Unknown bezier node type. Falling back to sharp.", 48, 2u);
        StaticString.description.getter("init(unarchiving:)", 18, 2);
        v21 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
        v22 = String._bridgeToObjectiveC()();

        v23 = [v22 lastPathComponent];

        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v27 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v20;
        v29 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v29;
        v30 = sub_1005CF04C();
        *(inited + 104) = v30;
        *(inited + 72) = v21;
        *(inited + 136) = &type metadata for String;
        v31 = sub_1000053B0();
        *(inited + 112) = v24;
        *(inited + 120) = v26;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v31;
        *(inited + 152) = 639;
        v32 = v51;
        *(inited + 216) = v29;
        *(inited + 224) = v30;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v32;
        v33 = v21;
        v34 = v32;
        v35 = static os_log_type_t.error.getter();
        sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v36 = static os_log_type_t.error.getter();
        sub_100005404(v27, &_mh_execute_header, v36, "Unknown bezier node type. Falling back to sharp.", 48, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v37 = swift_allocObject();
        v37[2] = 8;
        v37[3] = 0;
        v37[4] = 0;
        v37[5] = 0;
        v38 = __VaListBuilder.va_list()();
        StaticString.description.getter("init(unarchiving:)", 18, 2);
        v39 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Unknown bezier node type. Falling back to sharp.", 48, 2);
        v41 = String._bridgeToObjectiveC()();

        [v49 handleFailureInFunction:v39 file:v40 lineNumber:639 isFatal:0 format:v41 args:v38];

        v19 = v50;
        [v50 setType:1];
        v6 = v48;
        v8 = &selRef_allowResizeDelegate;
      }

      else
      {
        if (v9)
        {
          if (v9 == 1)
          {
            v42 = 2;
          }

          else
          {
            v42 = 3;
          }
        }

        else
        {
          v42 = 1;
        }

        [v18 setType:{v42, v46}];
      }

      v43 = v19;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v7 += 48;
      --v5;
    }

    while (v5);

    v4 = v47;
  }

  else
  {
  }

  sub_100006370(0, &qword_101A16208, off_10182F720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setNodes:isa];

  return v4;
}

unint64_t sub_100C468F4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C4B4B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C46A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  a4();
  a5();
  return CRValue<>.init(from:)();
}

uint64_t sub_100C46B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100AF35C8();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

unint64_t sub_100C46BCC()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x795474656E67616DLL;
  }
}

uint64_t sub_100C46C38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100C4E7F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100C46C9C(uint64_t a1)
{
  v2 = sub_100C50638();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C46CD8(uint64_t a1)
{
  v2 = sub_100C50638();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C46D14(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16590, &qword_1014A4348);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C50638();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = *(v3 + 8);
  v11 = 0;
  sub_1005B981C(&qword_101A16400, &unk_1014A2D20);
  sub_100B99DB0(&qword_101A16598, &qword_101A16400, &unk_1014A2D20, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 12);
    v11 = 1;
    sub_1009CF3B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[3];
    v11 = 2;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C46F44(float *a1, float *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = *(a1 + 3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = *(a2 + 3);
  sub_100AF35C8();
  v8 = static CRExtensible.== infix(_:_:)();
  v9 = 0;
  if ((v8 & 1) != 0 && v2 == v5 && v3 == v6)
  {
    sub_100B3216C(v4, v7);
  }

  return v9 & 1;
}

double sub_100C46FFC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100C4E920(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100C47050(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50D3C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C470A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50D3C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C470F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C504D0();
  v7 = sub_100C50D90();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100C47168(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C50D3C();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C4724C(uint64_t a1)
{
  v2 = sub_100C50770();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100C47374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v10 = a5(a1, a2, a3, a4);
  v11 = a6();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v10, v11);
}

uint64_t sub_100C473F8(uint64_t a1, uint64_t a2)
{
  sub_100C50DE4();
  sub_100C4C654();
  return CRValue<>.init(from:)();
}

uint64_t sub_100C474A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  a4();
  a5();
  return CRValue<>.encode(to:)();
}

uint64_t sub_100C47540(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v6 = a3(a1, a2);
  v7 = a4();

  return CRValue<>.minEncodingVersion.getter(a1, v6, v7, &protocol witness table for Int);
}

uint64_t sub_100C4760C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4C654();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

Swift::Int sub_100C47684()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A45C0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100C4770C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014A45C0[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100C47758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C4EBA8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100C4779C()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000016;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6E67614D64616568;
  if (v1 != 4)
  {
    v4 = 0x6E67614D6C696174;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x724674657374756FLL;
  if (v1 != 2)
  {
    v5 = 0x6F5474657374756FLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_100C478A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100C4EBD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100C478E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100C4EBA8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100C47948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static CodingKey<>.intCases.getter(a1, a2, v7, v8);
}

uint64_t sub_100C479B4(uint64_t a1)
{
  v2 = sub_100C4834C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C479F0(uint64_t a1)
{
  v2 = sub_100C4834C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C47A30(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A16288, &qword_1014A2C98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4834C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v12 = *v3;
  BYTE8(v12) = *(v3 + 8);
  v14 = 0;
  sub_1005B981C(&qword_101A16270, &qword_1014A2C90);
  sub_100B99DB0(&qword_101A16290, &qword_101A16270, &qword_1014A2C90, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 16);
    *&v13 = *(v3 + 32);
    v14 = 1;
    sub_100C45BCC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + 64);
    v12 = *(v3 + 48);
    v13 = v9;
    v14 = 4;
    sub_100C4F480();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 96);
    v12 = *(v3 + 80);
    v13 = v10;
    v14 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v12 = *(v3 + 120);
    v14 = 7;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_100C47DD4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100C4EE78(a2, v9);
  if (!v2)
  {
    v5 = v13;
    a1[4] = v12;
    a1[5] = v5;
    v6 = v15;
    a1[6] = v14;
    a1[7] = v6;
    v7 = v9[1];
    *a1 = v9[0];
    a1[1] = v7;
    result = *&v10;
    v8 = v11;
    a1[2] = v10;
    a1[3] = v8;
  }

  return result;
}

uint64_t sub_100C47E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F4D4();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C47E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F4D4();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100C47EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C4813C();
  v7 = sub_100C4F528();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100C47F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100C4F4D4();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100C4803C(uint64_t a1)
{
  v2 = sub_100C48484();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100C4808C()
{
  result = qword_101A16130;
  if (!qword_101A16130)
  {
    result = swift_getWitnessTable(a1_43, &type metadata for CRLConnectionLinePathSourceData, v0, v1);
    atomic_store(result, &qword_101A16130);
  }

  return result;
}

unint64_t sub_100C480E4()
{
  result = qword_101A16138;
  if (!qword_101A16138)
  {
    result = swift_getWitnessTable(aI_87, &type metadata for CRLConnectionLinePathSourceData, v0, v1);
    atomic_store(result, &qword_101A16138);
  }

  return result;
}

unint64_t sub_100C4813C()
{
  result = qword_101A16140;
  if (!qword_101A16140)
  {
    result = swift_getWitnessTable(aA_75, &type metadata for CRLConnectionLinePathSourceData, v0, v1);
    atomic_store(result, &qword_101A16140);
  }

  return result;
}

unint64_t sub_100C48194()
{
  result = qword_101A16148;
  if (!qword_101A16148)
  {
    result = swift_getWitnessTable(aQ_87, &type metadata for CRLConnectionLinePathSourceData, v0, v1);
    atomic_store(result, &qword_101A16148);
  }

  return result;
}

unint64_t sub_100C481EC()
{
  result = qword_101A16150;
  if (!qword_101A16150)
  {
    result = swift_getWitnessTable(aI_84, &type metadata for CRLConnectionLinePathSourceData, v0, v1);
    atomic_store(result, &qword_101A16150);
  }

  return result;
}

unint64_t sub_100C48244()
{
  result = qword_101A16158;
  if (!qword_101A16158)
  {
    result = swift_getWitnessTable(aA_76, &type metadata for CRLConnectionLinePathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16158);
  }

  return result;
}

unint64_t sub_100C4829C()
{
  result = qword_101A16160;
  if (!qword_101A16160)
  {
    result = swift_getWitnessTable(aA_77, &type metadata for CRLConnectionLinePathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16160);
  }

  return result;
}

unint64_t sub_100C482F4()
{
  result = qword_101A16168;
  if (!qword_101A16168)
  {
    result = swift_getWitnessTable(a1_42, &type metadata for CRLConnectionLinePathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16168);
  }

  return result;
}

unint64_t sub_100C4834C()
{
  result = qword_101A16170;
  if (!qword_101A16170)
  {
    result = swift_getWitnessTable(byte_1014A27A0, &type metadata for CRLConnectionLinePathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16170);
  }

  return result;
}

unint64_t sub_100C483A4()
{
  result = qword_101A16178;
  if (!qword_101A16178)
  {
    result = swift_getWitnessTable(asc_1014A2818, &type metadata for CRLConnectionLinePathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16178);
  }

  return result;
}

unint64_t sub_100C483FC()
{
  result = qword_101A16180;
  if (!qword_101A16180)
  {
    result = swift_getWitnessTable(aY_82, &type metadata for CRLConnectionLinePathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16180);
  }

  return result;
}

unint64_t sub_100C48484()
{
  result = qword_101A16198;
  if (!qword_101A16198)
  {
    result = swift_getWitnessTable(aY_81, &type metadata for CRLConnectionLinePathSourceData, v0, v1);
    atomic_store(result, &qword_101A16198);
  }

  return result;
}

unint64_t sub_100C48644()
{
  result = qword_101A161B8;
  if (!qword_101A161B8)
  {
    result = swift_getWitnessTable(byte_1014A2AA8, &type metadata for CRLPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A161B8);
  }

  return result;
}

unint64_t sub_100C4869C()
{
  result = qword_101A161C0;
  if (!qword_101A161C0)
  {
    result = swift_getWitnessTable(asc_1014A2BC0, &type metadata for CRLPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A161C0);
  }

  return result;
}

unint64_t sub_100C486F4()
{
  result = qword_101A161C8;
  if (!qword_101A161C8)
  {
    result = swift_getWitnessTable(byte_1014A2B88, &type metadata for CRLPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A161C8);
  }

  return result;
}

unint64_t sub_100C4874C()
{
  result = qword_101A161D0;
  if (!qword_101A161D0)
  {
    result = swift_getWitnessTable(aY_77, &type metadata for CRLPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A161D0);
  }

  return result;
}

unint64_t sub_100C487A4()
{
  result = qword_101A161D8;
  if (!qword_101A161D8)
  {
    result = swift_getWitnessTable(byte_1014A2B58, &type metadata for CRLPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A161D8);
  }

  return result;
}

unint64_t sub_100C487FC()
{
  result = qword_101A161E0;
  if (!qword_101A161E0)
  {
    result = swift_getWitnessTable(byte_1014A2B30, &type metadata for CRLPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A161E0);
  }

  return result;
}

void sub_100C488C8(uint64_t a1, uint64_t a2)
{
  if (static UUID.== infix(_:_:)())
  {
    v4 = type metadata accessor for CRLEditableBezierPathSourceData(0);
    if (sub_1006737E0(*(a1 + v4[5]), *(a2 + v4[5])))
    {
      v5 = v4[6];
      v6 = *(a1 + v5);
      v7 = *(a1 + v5 + 4);
      v8 = (a2 + v5);
      if (v6 == *v8 && v7 == v8[1])
      {
        v10 = v4[7];
        v11 = *(a1 + v10);
        v12 = *(a2 + v10);

        sub_100B3216C(v11, v12);
      }
    }
  }
}

uint64_t sub_100C4896C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  sub_10067CE54();
  if (static CRExtensible.== infix(_:_:)())
  {
    sub_100B3216C(*(a1 + 40), *(a2 + 40));
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100C48A6C(uint64_t *a1, uint64_t *a2)
{
  v28 = *a1;
  LOBYTE(v29) = *(a1 + 8);
  v36 = *a2;
  v37 = *(a2 + 8);
  sub_100C4C654();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v5 = *(a1 + 6);
  v4 = *(a1 + 7);
  v6 = a1[4];
  v8 = *(a2 + 6);
  v7 = *(a2 + 7);
  v9 = a2[4];
  v10 = sub_10067063C(a1[2], a2[2]);
  v11 = 0;
  if (!v10 || v5 != v8 || v4 != v7)
  {
    return v11 & 1;
  }

  sub_100B3216C(v6, v9);
  if ((v12 & 1) == 0 || *(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11))
  {
    goto LABEL_25;
  }

  v13 = a1[6];
  v14 = a1[7];
  v16 = a1[8];
  v15 = a1[9];
  v17 = a2[6];
  v18 = a2[7];
  v20 = a2[8];
  v19 = a2[9];
  if (v15)
  {
    if (!v19)
    {
      goto LABEL_16;
    }

    v28 = a1[6];
    LOBYTE(v29) = v14 & 1;
    v36 = v17;
    v37 = v18 & 1;
    sub_100AF35C8();

    if ((static CRExtensible.== infix(_:_:)() & 1) == 0 || *(&v14 + 1) != *(&v18 + 1) || *&v16 != *&v20)
    {
      goto LABEL_24;
    }

    sub_100B3216C(v15, v19);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v19)
  {
    goto LABEL_16;
  }

  v13 = a1[10];
  v14 = a1[11];
  v16 = a1[12];
  v15 = a1[13];
  v17 = a2[10];
  v18 = a2[11];
  v20 = a2[12];
  v19 = a2[13];
  if (v15)
  {
    if (v19)
    {
      v28 = a1[10];
      LOBYTE(v29) = v14 & 1;
      v36 = v17;
      v37 = v18 & 1;
      sub_100AF35C8();

      if ((static CRExtensible.== infix(_:_:)() & 1) != 0 && *(&v14 + 1) == *(&v18 + 1) && *&v16 == *&v20)
      {
        sub_100B3216C(v15, v19);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_28;
      }

LABEL_24:

      goto LABEL_25;
    }

LABEL_16:
    v28 = v13;
    v29 = v14;
    v30 = v16;
    v31 = v15;
    v32 = v17;
    v33 = v18;
    v34 = v20;
    v35 = v19;

    sub_10000CAAC(&v28, &qword_101A16240, &qword_1014A2C68);
    goto LABEL_25;
  }

  if (v19)
  {
    goto LABEL_16;
  }

LABEL_28:
  v26 = *(a1 + 112);
  v27 = *(a2 + 112);
  if (v26 == 2)
  {
    if (v27 == 2)
    {
LABEL_33:
      sub_100B3216C(a1[15], a2[15]);
      return v11 & 1;
    }

LABEL_25:
    v11 = 0;
    return v11 & 1;
  }

  v11 = 0;
  if (v27 != 2 && ((v27 ^ v26) & 1) == 0)
  {
    goto LABEL_33;
  }

  return v11 & 1;
}

void sub_100C48DA4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0 && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24))
  {
    sub_100B3216C(*(a1 + 32), *(a2 + 32));
  }
}

uint64_t sub_100C48E28(float *a1, float *a2, uint64_t a3, uint64_t a4)
{
  sub_100C4C600();
  if ((static CRExtensible.== infix(_:_:)() & 1) != 0 && a1[3] == a2[3] && a1[4] == a2[4] && a1[5] == a2[5] && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && ((*(a1 + 25) ^ *(a2 + 25)) & 1) == 0)
  {
    sub_100B3216C(*(a1 + 4), *(a2 + 4));
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100C48F0C(float *a1, float *a2, uint64_t a3, uint64_t a4)
{
  sub_100C4C5AC();
  if ((static CRExtensible.== infix(_:_:)() & 1) != 0 && a1[3] == a2[3] && a1[4] == a2[4] && a1[5] == a2[5] && a1[6] == a2[6])
  {
    sub_100B3216C(*(a1 + 4), *(a2 + 4));
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100C48FE0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v103[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1005B981C(&qword_101A15D00, &unk_1014A1060);
  __chkstk_darwin(v8 - 8);
  v10 = &v103[-v9];
  v11 = sub_1005B981C(&qword_101A16210, &qword_1014A2C50);
  __chkstk_darwin(v11);
  v14 = &v103[-v13];
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2))
  {
    goto LABEL_2;
  }

  v17 = *(a1 + 2);
  v18 = *(a2 + 2);
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_2;
    }

    if (*(a1 + 1) != *(a2 + 1) || v17 != v18)
    {
      v19 = v12;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v19;
      if ((v20 & 1) == 0)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v18)
  {
    goto LABEL_2;
  }

  v21 = *(a1 + 4);
  v22 = *(a2 + 4);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_2;
    }

    if (*(a1 + 3) != *(a2 + 3) || v21 != v22)
    {
      v23 = v12;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v23;
      if ((v24 & 1) == 0)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_2;
  }

  v25 = *(a2 + 9);
  if (*(a1 + 9))
  {
    if (!v25)
    {
      goto LABEL_2;
    }

    v26 = *(a1 + 5);
    v27 = *(a1 + 6);
    v28 = *(a1 + 7);
    v29 = *(a1 + 8);
    v30 = *(a2 + 5);
    v31 = *(a2 + 6);
    v32 = *(a2 + 7);
    v33 = *(a2 + 8);
    v169 = *(a1 + 9);
    v170 = v30;
    v171 = v31 & 1;
    v172 = HIDWORD(v31);
    v173 = v32;
    v174 = v33;
    v175 = v25;
    v164 = v26;
    v165 = v27 & 1;
    v166 = HIDWORD(v27);
    v167 = v28;
    v168 = v29;
    v109 = v12;

    LODWORD(v108) = sub_100C48F0C(&v164, &v170, v34, v35);

    v12 = v109;
    if ((v108 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (v25)
  {
    goto LABEL_2;
  }

  v36 = *(a1 + 14);
  v37 = *(a2 + 14);
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_2;
    }

    v109 = v12;
    v38 = *(a1 + 5);
    v39 = *(a1 + 6);
    v40 = *(a2 + 6);
    v162[0] = *(a2 + 5);
    v162[1] = v40;
    v163 = v37;
    v160[0] = v38;
    v160[1] = v39;
    v161 = v36;

    LODWORD(v108) = sub_100C48E28(v160, v162, v41, v42);

    if ((v108 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (v37)
    {
      goto LABEL_2;
    }

    v109 = v12;
  }

  v44 = *(a1 + 15);
  v43 = *(a1 + 16);
  v108 = *(a1 + 17);
  v45 = *(a2 + 15);
  v46 = *(a2 + 16);
  if (!v44)
  {
    if (!v45)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (!v45)
  {
LABEL_37:
    v52 = v44;
    v53 = v43;
    sub_100C4C508(*(a2 + 15), *(a2 + 16), *(a2 + 17));
    sub_100C4C508(v52, v53, v108);
    sub_100B98A0C(v52);
    v54 = v45;
LABEL_44:
    sub_100B98A0C(v54);
    goto LABEL_2;
  }

  v105 = *(a2 + 17);
  v106 = v44;
  v107 = v43;
  if (!sub_10067063C(v44, v45))
  {
    sub_100C4C508(v45, v46, v105);
    v55 = v106;
    sub_100C4C508(v106, v107, v108);

    v54 = v55;
    goto LABEL_44;
  }

  if (*&v107 != *&v46)
  {
    v62 = v107;
    sub_100C4C508(v45, v46, v105);
    v63 = v106;
    sub_100C4C508(v106, v62, v108);

    v54 = v63;
    goto LABEL_44;
  }

  v47 = *(&v46 + 1);
  v48 = *(&v107 + 1);
  v49 = v46;
  v50 = v105;
  sub_100C4C508(v45, v49, v105);
  sub_100C4C508(v106, v107, v108);
  if (v48 != v47)
  {

    v54 = v106;
    goto LABEL_44;
  }

  sub_100B3216C(v108, v50);
  v104 = v51;

  sub_100B98A0C(v106);
  if ((v104 & 1) == 0)
  {
    goto LABEL_2;
  }

LABEL_39:
  v56 = *(a1 + 22);
  v57 = *(a2 + 22);
  if (v56)
  {
    if (!v57)
    {
      goto LABEL_2;
    }

    v58 = *(a1 + 9);
    v59 = *(a1 + 10);
    v60 = *(a2 + 10);
    v158[0] = *(a2 + 9);
    v158[1] = v60;
    v159 = v57;
    v156[0] = v58;
    v156[1] = v59;
    v157 = v56;

    sub_100C48DA4(v156, v158);
    LODWORD(v108) = v61;

    if ((v108 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (v57)
    {
      goto LABEL_2;
    }
  }

  v65 = *(a1 + 264);
  v64 = *(a1 + 280);
  v145[4] = *(a1 + 248);
  v145[5] = v65;
  v66 = *(a1 + 264);
  v67 = *(a1 + 280);
  v68 = *(a1 + 296);
  v145[6] = v64;
  v145[7] = v68;
  v69 = *(a1 + 200);
  v145[0] = *(a1 + 184);
  v145[1] = v69;
  v70 = *(a1 + 232);
  v145[2] = *(a1 + 216);
  v145[3] = v70;
  v71 = *(a2 + 184);
  v72 = *(a2 + 200);
  v73 = *(a2 + 216);
  v146[3] = *(a2 + 232);
  v146[2] = v73;
  v146[1] = v72;
  v146[0] = v71;
  v74 = *(a2 + 248);
  v75 = *(a2 + 264);
  v76 = *(a2 + 280);
  v77 = v75;
  v78 = v76;
  v146[7] = *(a2 + 296);
  v146[6] = v76;
  v146[5] = v75;
  v146[4] = v74;
  v79 = *(a1 + 264);
  v133 = *(a1 + 248);
  v134 = v79;
  v80 = *(a1 + 296);
  v135 = *(a1 + 280);
  v136 = v80;
  v81 = *(a1 + 200);
  v129 = *(a1 + 184);
  v130 = v81;
  v82 = *(a1 + 232);
  v131 = *(a1 + 216);
  v132 = v82;
  v83 = *(a2 + 184);
  v84 = *(a2 + 232);
  v139 = *(a2 + 216);
  v140 = v84;
  v85 = *(a2 + 200);
  v137 = v83;
  v138 = v85;
  v86 = *(a2 + 248);
  v87 = *(a2 + 296);
  v143 = v78;
  v144 = v87;
  v141 = v86;
  v142 = v77;
  v88 = *(a1 + 184);
  v89 = *(a1 + 216);
  v147[3] = *(a1 + 232);
  v147[2] = v89;
  v147[1] = *(a1 + 200);
  v147[0] = v88;
  v90 = *(a1 + 248);
  v147[7] = *(a1 + 296);
  v147[6] = v67;
  v147[5] = v66;
  v147[4] = v90;
  if (sub_100A03AB8(v147) != 1)
  {
    v112[4] = v141;
    v112[5] = v142;
    v112[6] = v143;
    v112[7] = v144;
    v112[0] = v137;
    v112[1] = v138;
    v112[2] = v139;
    v112[3] = v140;
    if (sub_100A03AB8(v112) != 1)
    {
      v110[4] = v141;
      v110[5] = v142;
      v110[6] = v143;
      v110[7] = v144;
      v110[0] = v137;
      v110[1] = v138;
      v110[2] = v139;
      v110[3] = v140;
      v115 = v139;
      v116 = v140;
      v113 = v137;
      v114 = v138;
      v119 = v143;
      v120 = v144;
      v117 = v141;
      v118 = v142;
      v151 = v132;
      v150 = v131;
      v149 = v130;
      v148 = v129;
      v155 = v136;
      v154 = v135;
      v153 = v134;
      v152 = v133;
      sub_10000BE14(v145, v111, &qword_101A16218, &qword_1014A2C58);
      sub_10000BE14(v146, v111, &qword_101A16218, &qword_1014A2C58);
      LODWORD(v108) = sub_100C48A6C(&v148, &v113);
      sub_10000CAAC(v110, &qword_101A16218, &qword_1014A2C58);
      v111[4] = v133;
      v111[5] = v134;
      v111[6] = v135;
      v111[7] = v136;
      v111[0] = v129;
      v111[1] = v130;
      v111[2] = v131;
      v111[3] = v132;
      sub_10000CAAC(v111, &qword_101A16218, &qword_1014A2C58);
      if ((v108 & 1) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_54;
    }

LABEL_52:
    v125 = v141;
    v126 = v142;
    v127 = v143;
    v128 = v144;
    v121 = v137;
    v122 = v138;
    v123 = v139;
    v124 = v140;
    v117 = v133;
    v118 = v134;
    v119 = v135;
    v120 = v136;
    v113 = v129;
    v114 = v130;
    v115 = v131;
    v116 = v132;
    sub_10000BE14(v145, &v148, &qword_101A16218, &qword_1014A2C58);
    sub_10000BE14(v146, &v148, &qword_101A16218, &qword_1014A2C58);
    v91 = &unk_101A16220;
    v92 = &unk_1014A2C60;
    v93 = &v113;
LABEL_69:
    sub_10000CAAC(v93, v91, v92);
    goto LABEL_2;
  }

  v117 = v141;
  v118 = v142;
  v119 = v143;
  v120 = v144;
  v113 = v137;
  v114 = v138;
  v115 = v139;
  v116 = v140;
  if (sub_100A03AB8(&v113) != 1)
  {
    goto LABEL_52;
  }

  v152 = v133;
  v153 = v134;
  v154 = v135;
  v155 = v136;
  v148 = v129;
  v149 = v130;
  v150 = v131;
  v151 = v132;
  sub_10000BE14(v145, v112, &qword_101A16218, &qword_1014A2C58);
  sub_10000BE14(v146, v112, &qword_101A16218, &qword_1014A2C58);
  sub_10000CAAC(&v148, &qword_101A16218, &qword_1014A2C58);
LABEL_54:
  v108 = type metadata accessor for CRLPathSourceData(0);
  v94 = *(v108 + 52);
  v95 = *(v109 + 48);
  sub_10000BE14(&a1[v94], v14, &qword_101A15D00, &unk_1014A1060);
  v109 = v95;
  sub_10000BE14(&a2[v94], v14 + v95, &qword_101A15D00, &unk_1014A1060);
  v96 = *(v5 + 48);
  if (v96(v14, 1, v4) == 1)
  {
    if (v96(v14 + v109, 1, v4) == 1)
    {
      sub_10000CAAC(v14, &qword_101A15D00, &unk_1014A1060);
LABEL_57:
      sub_100B3216C(*&a1[*(v108 + 56)], *&a2[*(v108 + 56)]);
      return v15 & 1;
    }

    goto LABEL_60;
  }

  sub_10000BE14(v14, v10, &qword_101A15D00, &unk_1014A1060);
  if (v96(v14 + v109, 1, v4) == 1)
  {
    sub_100C4CAE0(v10, type metadata accessor for CRLEditableBezierPathSourceData);
LABEL_60:
    v91 = &qword_101A16210;
    v92 = &qword_1014A2C50;
LABEL_68:
    v93 = v14;
    goto LABEL_69;
  }

  sub_100C4C548(v14 + v109, v7);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (sub_1006737E0(*&v10[v4[5]], *&v7[v4[5]]) & 1) == 0 || (v97 = v4[6], v98 = &v10[v97], v99 = *&v10[v97], v100 = &v7[v97], v99 != *v100) || v98[1] != v100[1])
  {
    sub_100C4CAE0(v7, type metadata accessor for CRLEditableBezierPathSourceData);
    sub_100C4CAE0(v10, type metadata accessor for CRLEditableBezierPathSourceData);
    v91 = &qword_101A15D00;
    v92 = &unk_1014A1060;
    goto LABEL_68;
  }

  sub_100B3216C(*&v10[v4[7]], *&v7[v4[7]]);
  v102 = v101;
  sub_100C4CAE0(v7, type metadata accessor for CRLEditableBezierPathSourceData);
  sub_100C4CAE0(v10, type metadata accessor for CRLEditableBezierPathSourceData);
  sub_10000CAAC(v14, &qword_101A15D00, &unk_1014A1060);
  if (v102)
  {
    goto LABEL_57;
  }

LABEL_2:
  v15 = 0;
  return v15 & 1;
}

id sub_100C49B24(float *a1)
{
  if (a1[2])
  {
    v27 = objc_opt_self();
    v2 = [v27 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28, "Unknown scalar path source type. Falling back to rounded rectangle.", 67, 2u);
    StaticString.description.getter("init(unarchiving:)", 18, 2);
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
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
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 396;
    v14 = v28;
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
    sub_100005404(v9, &_mh_execute_header, v18, "Unknown scalar path source type. Falling back to rounded rectangle.", 67, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(unarchiving:)", 18, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unknown scalar path source type. Falling back to rounded rectangle.", 67, 2);
    v23 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v21 file:v22 lineNumber:396 isFatal:0 format:v23 args:v20];

    v24 = 0;
  }

  else
  {
    v24 = *a1;
  }

  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:v24 scalar:*(a1 + 24) naturalSize:a1[3] continuousCurve:{a1[4], a1[5]}];
  [v25 setShouldShowKnob:*(a1 + 25)];
  return v25;
}

char *sub_100C49F20(unsigned __int8 *a1)
{
  v2 = sub_1005B981C(&qword_101A15D00, &unk_1014A1060);
  __chkstk_darwin(v2 - 8);
  v4 = &v93 - v3;
  v5 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v93 - v11;
  v13 = *(a1 + 9);
  if (v13)
  {
    v15 = *(a1 + 7);
    v14 = *(a1 + 8);
    v16 = *(a1 + 6);
    v104 = *(a1 + 5);
    v105 = v16 & 1;
    v106 = HIDWORD(v16);
    v107 = v15;
    v108 = v14;
    v109 = v13;
    sub_100006370(0, &qword_101A163F8, off_10182F910);

    v17 = sub_100C3FD8C(&v104);
LABEL_6:
    v4 = v17;
    [v17 setHasHorizontalFlip:*a1];
    [v4 setHasVerticalFlip:a1[1]];
    if (*(a1 + 2))
    {
      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
    }

    [v4 setLocalizationKey:v23];

    if (*(a1 + 4))
    {
      v24 = String._bridgeToObjectiveC()();
    }

    else
    {
      v24 = 0;
    }

    [v4 setUserDefinedName:v24];

    return v4;
  }

  v18 = *(a1 + 14);
  if (v18)
  {
    v20 = *(a1 + 12);
    v19 = *(a1 + 13);
    v22 = *(a1 + 10);
    v21 = *(a1 + 11);
    v94 = v21 & 1;
    v104 = v22;
    v105 = v21 & 1;
    v106 = HIDWORD(v21);
    v107 = v20;
    LOWORD(v108) = v19 & 0x101;
    v109 = v18;
    sub_100006370(0, &qword_101A163F0, off_10182F928);
    *&v96 = v22;
    *(&v96 + 1) = v21;
    *&v97 = v20;
    *(&v97 + 1) = v19;
    *&v98 = v18;
    sub_100C4F7DC(&v96, v95);
    v4 = sub_100C49B24(&v104);

LABEL_5:
    v17 = v4;
    goto LABEL_6;
  }

  v26 = v10;
  v27 = &v96;
  v28 = *(a1 + 248);
  v29 = *(a1 + 200);
  v96 = *(a1 + 184);
  v97 = v29;
  v30 = *(a1 + 232);
  v98 = *(a1 + 216);
  v99 = v30;
  v31 = *(a1 + 264);
  v32 = *(a1 + 280);
  v100 = v28;
  v101 = v31;
  v33 = *(a1 + 296);
  v102 = v32;
  v103 = v33;
  if (sub_100A03AB8(&v96) == 1)
  {
    v27 = *(a1 + 15);
    if (!v27)
    {
      if (*(a1 + 22))
      {
        v17 = [objc_allocWithZone(CRLCalloutPathSource) initWithCornerRadius:*(a1 + 40) & 1 tailPosition:*(a1 + 39) tailSize:*(a1 + 36) naturalSize:*(a1 + 37) tailAtCenter:{*(a1 + 38), *(a1 + 41), *(a1 + 42)}];
        goto LABEL_6;
      }

      goto LABEL_26;
    }

    v34 = objc_allocWithZone(CRLBezierPathSource);
    sub_100006370(0, &qword_101A02480, off_10182F728);

    v36 = sub_100C58684(v35);

    v4 = [v34 initWithBezierPath:v36];

    if (v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v37 = v27[5];
  v27[12] = v27[4];
  v27[13] = v37;
  v38 = v27[7];
  v27[14] = v27[6];
  v27[15] = v38;
  v39 = v27[1];
  v27[8] = *v27;
  v27[9] = v39;
  v40 = v27[3];
  v27[10] = v27[2];
  v27[11] = v40;
  sub_100006370(0, &unk_101A10770, off_10182F7E8);
  sub_100C4F418(&v96, v95);
  v41 = sub_100C4018C(&v104);
  if (v41)
  {
    v17 = v41;
    goto LABEL_6;
  }

  v93 = objc_opt_self();
  v42 = [v93 _atomicIncrementAssertCount];
  v95[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v95, "Unable to make connection line path source from connection line path data. Falling back to rectangle.", 101, 2u);
  StaticString.description.getter("createPathSource(data:)", 23, 2);
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
  v44 = String._bridgeToObjectiveC()();

  v45 = [v44 lastPathComponent];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v49 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v42;
  v51 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v51;
  v52 = sub_1005CF04C();
  *(inited + 104) = v52;
  *(inited + 72) = v43;
  *(inited + 136) = &type metadata for String;
  v53 = sub_1000053B0();
  *(inited + 112) = v46;
  *(inited + 120) = v48;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v53;
  *(inited + 152) = 222;
  v54 = v95[0];
  *(inited + 216) = v51;
  *(inited + 224) = v52;
  *(inited + 192) = v54;
  v55 = v43;
  v56 = v54;
  v57 = static os_log_type_t.error.getter();
  sub_100005404(v49, &_mh_execute_header, v57, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v58 = static os_log_type_t.error.getter();
  sub_100005404(v49, &_mh_execute_header, v58, "Unable to make connection line path source from connection line path data. Falling back to rectangle.", 101, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v59 = swift_allocObject();
  v59[2] = 8;
  v59[3] = 0;
  v59[4] = 0;
  v59[5] = 0;
  v26 = __VaListBuilder.va_list()();
  StaticString.description.getter("createPathSource(data:)", 23, 2);
  v60 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
  v6 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unable to make connection line path source from connection line path data. Falling back to rectangle.", 101, 2);
  v8 = String._bridgeToObjectiveC()();

  [v93 handleFailureInFunction:v60 file:v6 lineNumber:222 isFatal:0 format:v8 args:v26];

  v61 = sub_10011ECB4();
  v12 = [objc_opt_self() bezierPathWithRect:{v61, v62, v63, v64}];
  v4 = [objc_allocWithZone(CRLBezierPathSource) initWithBezierPath:v12];

  if (v4)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_26:
  v65 = type metadata accessor for CRLPathSourceData(0);
  sub_10000BE14(&a1[*(v65 + 52)], v4, &qword_101A15D00, &unk_1014A1060);
  if ((*(v6 + 6))(v4, 1, v26) != 1)
  {
LABEL_31:
    sub_100C4C548(v4, v12);
    sub_100006370(0, &unk_101A10750, off_10182F7F8);
    sub_100C4F994(v12, v8, type metadata accessor for CRLEditableBezierPathSourceData);
    v4 = sub_100C40790(v8);
    sub_100C4CAE0(v12, type metadata accessor for CRLEditableBezierPathSourceData);
    goto LABEL_5;
  }

  sub_10000CAAC(v4, &qword_101A15D00, &unk_1014A1060);
  v66 = objc_opt_self();
  v67 = [v66 _atomicIncrementAssertCount];
  v104 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v104, "Missing path source type specific data. Falling back to rectangle.", 66, 2u);
  StaticString.description.getter("createPathSource(data:)", 23, 2);
  v68 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
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
  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_10146CA70;
  *(v75 + 56) = &type metadata for Int32;
  *(v75 + 64) = &protocol witness table for Int32;
  *(v75 + 32) = v67;
  v76 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v75 + 96) = v76;
  v77 = sub_1005CF04C();
  *(v75 + 104) = v77;
  *(v75 + 72) = v68;
  *(v75 + 136) = &type metadata for String;
  v78 = sub_1000053B0();
  *(v75 + 112) = v71;
  *(v75 + 120) = v73;
  *(v75 + 176) = &type metadata for UInt;
  *(v75 + 184) = &protocol witness table for UInt;
  *(v75 + 144) = v78;
  *(v75 + 152) = 232;
  v79 = v104;
  *(v75 + 216) = v76;
  *(v75 + 224) = v77;
  *(v75 + 192) = v79;
  v80 = v68;
  v81 = v79;
  v82 = static os_log_type_t.error.getter();
  sub_100005404(v74, &_mh_execute_header, v82, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v75);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v83 = static os_log_type_t.error.getter();
  sub_100005404(v74, &_mh_execute_header, v83, "Missing path source type specific data. Falling back to rectangle.", 66, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v84 = swift_allocObject();
  v84[2] = 8;
  v84[3] = 0;
  v84[4] = 0;
  v84[5] = 0;
  v8 = __VaListBuilder.va_list()();
  StaticString.description.getter("createPathSource(data:)", 23, 2);
  v85 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
  v86 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Missing path source type specific data. Falling back to rectangle.", 66, 2);
  v12 = v87;
  v88 = String._bridgeToObjectiveC()();

  [v66 handleFailureInFunction:v85 file:v86 lineNumber:232 isFatal:0 format:v88 args:v8];

  v89 = sub_10011ECB4();
  a1 = [objc_opt_self() bezierPathWithRect:{v89, v90, v91, v92}];
  v4 = [objc_allocWithZone(CRLBezierPathSource) initWithBezierPath:a1];

  if (!v4)
  {
    __break(1u);
    goto LABEL_31;
  }

  return v4;
}

float sub_100C4ABF4@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 type];
  v5 = v4;
  if (v4 > 99)
  {
    if (v4 == 100)
    {
      v5 = 3;
      goto LABEL_12;
    }

    if (v4 == 200)
    {
      v5 = 4;
      goto LABEL_12;
    }
  }

  else
  {
    if (v4 < 2)
    {
      goto LABEL_12;
    }

    if (v4 == 10)
    {
      v5 = 2;
      goto LABEL_12;
    }
  }

  v35 = objc_opt_self();
  v6 = [v35 _atomicIncrementAssertCount];
  v36 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v36, "Unknown point path source type. Falling back to left single arrow.", 66, 2u);
  StaticString.description.getter("init(archiving:)", 16, 2);
  v7 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v8 lastPathComponent];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v6;
  v15 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v15;
  v16 = sub_1005CF04C();
  *(inited + 104) = v16;
  *(inited + 72) = v7;
  *(inited + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 112) = v10;
  *(inited + 120) = v12;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v17;
  *(inited + 152) = 292;
  v18 = v36;
  *(inited + 216) = v15;
  *(inited + 224) = v16;
  *(inited + 192) = v18;
  v19 = v7;
  v20 = v18;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v22, "Unknown point path source type. Falling back to left single arrow.", 66, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v23 = swift_allocObject();
  v23[2] = 8;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = 0;
  v24 = __VaListBuilder.va_list()();
  StaticString.description.getter("init(archiving:)", 16, 2);
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unknown point path source type. Falling back to left single arrow.", 66, 2);
  v27 = String._bridgeToObjectiveC()();

  [v35 handleFailureInFunction:v25 file:v26 lineNumber:292 isFatal:0 format:v27 args:v24];

  v5 = 0;
LABEL_12:
  [a1 point];
  v29 = v28;
  v31 = v30;
  [a1 naturalSize];
  result = v32;
  *&v34 = v34;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 12) = v29;
  *(a2 + 16) = v31;
  *(a2 + 20) = result;
  *(a2 + 24) = LODWORD(v34);
  *(a2 + 32) = _swiftEmptyDictionarySingleton;
  return result;
}

id sub_100C4B038@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 type];
  if (v4 == 2)
  {
    v5 = 0;
    LOBYTE(v38) = 0;
    v6 = 2;
  }

  else if (v4 == 1)
  {
    v5 = 0;
    LOBYTE(v38) = 0;
    v6 = 1;
  }

  else if (v4)
  {
    v37 = objc_opt_self();
    v7 = [v37 _atomicIncrementAssertCount];
    v38 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v38, "Unknown point path source type. Falling back to rounded rectangle.", 66, 2u);
    StaticString.description.getter("init(archiving:)", 16, 2);
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
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
    v16 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v16;
    v17 = sub_1005CF04C();
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 373;
    v19 = v38;
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
    sub_100005404(v14, &_mh_execute_header, v23, "Unknown point path source type. Falling back to rounded rectangle.", 66, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(archiving:)", 16, 2);
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unknown point path source type. Falling back to rounded rectangle.", 66, 2);
    v28 = String._bridgeToObjectiveC()();

    [v37 handleFailureInFunction:v26 file:v27 lineNumber:373 isFatal:0 format:v28 args:v25];

    v6 = 0;
    LOBYTE(v38) = 0;
    v5 = 1;
  }

  else
  {
    LOBYTE(v38) = 0;
    v5 = [a1 isCurveContinuous];
    v6 = 0;
  }

  [a1 scalar];
  v30 = v29;
  [a1 naturalSize];
  v32 = v31;
  v34 = v33;
  result = [a1 shouldShowKnob];
  v36 = v38;
  *a2 = v6;
  *(a2 + 8) = v36;
  *(a2 + 12) = v30;
  *(a2 + 16) = v32;
  *(a2 + 20) = v34;
  *(a2 + 24) = v5;
  *(a2 + 25) = result;
  *(a2 + 32) = _swiftEmptyDictionarySingleton;
  return result;
}

unint64_t sub_100C4B4B4(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t sub_100C4B4C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = &vars0;
  v6 = a1;
  v4 = a2;
  result = sub_100C4B4B4(a1);
  if ((LODWORD(a3) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(a4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v34 = result;
    v33 = objc_opt_self();
    v5 = [v33 _atomicIncrementAssertCount];
    v35 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v35, "Found non-finite normalized magnet position. Falling back to (0.5, 0.5).", 72, 2u);
    StaticString.description.getter("init(magnetType:magnetNormalizedPosition:)", 42, 2);
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v16;

    if (qword_1019F20A0 == -1)
    {
LABEL_5:
      v17 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v5;
      v19 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v19;
      v20 = sub_1005CF04C();
      *(inited + 104) = v20;
      *(inited + 72) = v8;
      *(inited + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(inited + 112) = v9;
      *(inited + 120) = v7;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v21;
      *(inited + 152) = 711;
      v22 = *(v10 - 14);
      *(inited + 216) = v19;
      *(inited + 224) = v20;
      *(inited + 192) = v22;
      v23 = v8;
      v24 = v22;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v26, "Found non-finite normalized magnet position. Falling back to (0.5, 0.5).", 72, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v27 = swift_allocObject();
      v27[2] = 8;
      v27[3] = 0;
      v27[4] = 0;
      v27[5] = 0;
      v28 = __VaListBuilder.va_list()();
      StaticString.description.getter("init(magnetType:magnetNormalizedPosition:)", 42, 2);
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Found non-finite normalized magnet position. Falling back to (0.5, 0.5).", 72, 2);
      v31 = String._bridgeToObjectiveC()();

      [v33 handleFailureInFunction:v29 file:v30 lineNumber:711 isFatal:0 format:v31 args:v28];

      a3 = 0.5;
      a4 = 0.5;
      result = v34;
      goto LABEL_6;
    }

LABEL_10:
    swift_once();
    goto LABEL_5;
  }

LABEL_6:
  v32 = result;
  if (result == 8)
  {
    v32 = v6;
  }

  *v4 = v32;
  *(v4 + 8) = result == 8;
  *(v4 + 12) = a3;
  *(v4 + 16) = a4;
  *(v4 + 24) = _swiftEmptyDictionarySingleton;
  return result;
}

id sub_100C4B8E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 type];
  if (v4 == 1)
  {
    v85 = 0;
    v76 = 1;
  }

  else if (v4)
  {
    v77 = objc_opt_self();
    v5 = [v77 _atomicIncrementAssertCount];
    aBlock = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &aBlock, "Unknown point path source type. Falling back to quadratic.", 58, 2u);
    StaticString.description.getter("init(archiving:)", 16, 2);
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
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
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 763;
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
    sub_100005404(v12, &_mh_execute_header, v21, "Unknown point path source type. Falling back to quadratic.", 58, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(archiving:)", 16, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unknown point path source type. Falling back to quadratic.", 58, 2);
    v26 = String._bridgeToObjectiveC()();

    [v77 handleFailureInFunction:v24 file:v25 lineNumber:763 isFatal:0 format:v26 args:v23];

    v76 = 0;
    v85 = 0;
  }

  else
  {
    v76 = 0;
    v85 = 0;
  }

  [a1 outsetFrom];
  v28 = v27;
  [a1 outsetTo];
  v30 = v29;
  v31 = a1;
  v32 = [v31 bezierPathWithoutFlips];
  v33 = swift_allocObject();
  *(v33 + 16) = _swiftEmptyArrayStorage;
  v34 = (v33 + 16);
  v83 = sub_100C51078;
  v84 = v33;
  aBlock = _NSConcreteStackBlock;
  v80 = *"";
  v81 = sub_100CD0AFC;
  v82 = &unk_10189B950;
  v35 = _Block_copy(&aBlock);

  [v32 iteratePathElementsWithBlock:v35];

  _Block_release(v35);
  swift_beginAccess();
  v36 = *v34;

  [v31 naturalSize];
  v38 = v37;
  v40 = v39;

  v78 = v31;
  v41 = [v31 headMagnet];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 magnetType];
    [v42 magnetNormalizedPosition];
    *&v44 = v44;
    *&v45 = v45;
    sub_100C4B4C4(v43, &v86, *&v44, *&v45);
    v46 = v86;
    v47 = v87;
    v48 = v90;
    v49 = v88;
    v50 = v89;

    v51 = v47 | (v49 << 32);
  }

  else
  {
    v46 = 0;
    v51 = 0;
    v50 = 0;
    v48 = 0;
  }

  v52 = [v78 tailMagnet];
  if (v52)
  {
    v53 = v52;
    v75 = v51;
    v54 = [v52 magnetType];
    [v53 magnetNormalizedPosition];
    *&v55 = v55;
    *&v56 = v56;
    sub_100C4B4C4(v54, &aBlock, *&v55, *&v56);
    v74 = aBlock;
    v57 = v48;
    v58 = v46;
    v59 = v80;
    v60 = v82;
    v61 = a2;
    v62 = v50;
    v63 = v36;
    v65 = HIDWORD(v80);
    v64 = v81;

    v66 = v59 | (v65 << 32);
    v46 = v58;
    v48 = v57;
    v36 = v63;
    v50 = v62;
    a2 = v61;
    v67 = v74;
    v51 = v75;
  }

  else
  {
    v67 = 0;
    v66 = 0;
    v64 = 0;
    v60 = 0;
  }

  result = [v78 userDidSetControlPoint];
  v73 = v85;
  *a2 = v76;
  *(a2 + 8) = v73;
  *(a2 + 16) = v36;
  v69 = v38;
  *(a2 + 24) = v69;
  v68 = v40;
  *(a2 + 28) = v68;
  *(a2 + 32) = _swiftEmptyDictionarySingleton;
  v71 = v28;
  *(a2 + 40) = v71;
  v70 = v30;
  *(a2 + 44) = v70;
  *(a2 + 48) = v46;
  *(a2 + 56) = v51;
  *(a2 + 64) = v50;
  *(a2 + 72) = v48;
  *(a2 + 80) = v67;
  *(a2 + 88) = v66;
  *(a2 + 96) = v64;
  *(a2 + 104) = v60;
  *(a2 + 112) = result;
  *(a2 + 120) = _swiftEmptyDictionarySingleton;
  return result;
}

float sub_100C4BFB4@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 rawTailPosition];
  v5 = v4;
  v7 = v6;
  [a1 tailSize];
  v9 = v8;
  [a1 cornerRadius];
  v11 = v10;
  v12 = [a1 isTailAtCenter];
  [a1 naturalSize];
  result = v13;
  *&v15 = v15;
  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v9;
  *(a2 + 12) = v11;
  *(a2 + 16) = v12;
  *(a2 + 20) = result;
  *(a2 + 24) = LODWORD(v15);
  *(a2 + 32) = _swiftEmptyDictionarySingleton;
  return result;
}

float sub_100C4C074@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 inControlPoint];
  v5 = v4;
  v7 = v6;
  [a1 nodePoint];
  v9 = v8;
  v11 = v10;
  [a1 outControlPoint];
  v13 = v12;
  v15 = v14;
  v16 = [a1 type];
  if (v16 < 2)
  {

    goto LABEL_10;
  }

  if ((v16 - 3) >= 2)
  {
    if (v16 == 2)
    {

      LOBYTE(v48) = 0;
      v17 = 1;
      goto LABEL_11;
    }

    v47 = objc_opt_self();
    v18 = [v47 _atomicIncrementAssertCount];
    v48 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v48, "Unknown bezier node type. Falling back to sharp.", 48, 2u);
    StaticString.description.getter("init(archiving:)", 16, 2);
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v18;
    v27 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v27;
    v28 = sub_1005CF04C();
    *(inited + 104) = v28;
    *(inited + 72) = v19;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 552;
    v30 = v48;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v19;
    v32 = v30;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "Unknown bezier node type. Falling back to sharp.", 48, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
    v35[2] = 8;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
    v36 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(archiving:)", 16, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPathSourceData.swift", 87, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unknown bezier node type. Falling back to sharp.", 48, 2);
    v39 = String._bridgeToObjectiveC()();

    [v47 handleFailureInFunction:v37 file:v38 lineNumber:552 isFatal:0 format:v39 args:v36];

LABEL_10:
    v17 = 0;
    LOBYTE(v48) = 0;
    goto LABEL_11;
  }

  LOBYTE(v48) = 0;
  v17 = 2;
LABEL_11:
  result = v15;
  v41 = v13;
  v42 = v11;
  v43 = v9;
  v44 = v7;
  v45 = v5;
  v46 = v48;
  *a2 = v45;
  *(a2 + 4) = v44;
  *(a2 + 8) = v43;
  *(a2 + 12) = v42;
  *(a2 + 16) = v41;
  *(a2 + 20) = result;
  *(a2 + 24) = v17;
  *(a2 + 32) = v46;
  *(a2 + 40) = _swiftEmptyDictionarySingleton;
  return result;
}

double sub_100C4C508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100C4C548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLEditableBezierPathSourceData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100C4C5AC()
{
  result = qword_101A16228;
  if (!qword_101A16228)
  {
    result = swift_getWitnessTable(byte_1014A4308, &type metadata for CRLPointPathSourceData.PointPathSourceType, v0, v1);
    atomic_store(result, &qword_101A16228);
  }

  return result;
}

unint64_t sub_100C4C600()
{
  result = qword_101A16230;
  if (!qword_101A16230)
  {
    result = swift_getWitnessTable(byte_1014A42D0, &type metadata for CRLScalarPathSourceData.ScalarPathSourceType, v0, v1);
    atomic_store(result, &qword_101A16230);
  }

  return result;
}

unint64_t sub_100C4C654()
{
  result = qword_101A16238;
  if (!qword_101A16238)
  {
    result = swift_getWitnessTable(aQ_77, &type metadata for CRLConnectionLinePathSourceData.ConnectionLinePathSourceType, v0, v1);
    atomic_store(result, &qword_101A16238);
  }

  return result;
}

uint64_t sub_100C4C6A8(uint64_t a1)
{
  if ((a1 + 1) > 0xA)
  {
    return 11;
  }

  else
  {
    return byte_1014A4600[a1 + 1];
  }
}

uint64_t sub_100C4C6CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x8000000101593D50 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974726556736168 && a2 == 0xEF70696C466C6163 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEF79654B6E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6966654472657375 && a2 == 0xEF656D614E64656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101593D70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101593D90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101593DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101593DD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101593DF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101593E10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100C4CA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A15D00, &unk_1014A1060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C4CAE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100C4CB40(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_100C4CB50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536C61727574616ELL && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100C4CCBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A16338, &qword_1014A2CD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4548C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  sub_1005B981C(&qword_101A16340, &qword_1014A2CE0);
  v17 = 0;
  sub_100B99DB0(&qword_101A16348, &qword_101A16340, &qword_1014A2CE0, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v15;
  v10 = v16;
  v17 = 1;
  sub_1009CF230();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v15;
  v17 = 2;
  sub_100C4F57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v15;
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v17 = 3;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v15;
  result = sub_100005070(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v11;
  *(a2 + 20) = v12;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_100C4CF88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C616373 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536C61727574616ELL && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101593E50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6853646C756F6873 && a2 == 0xEE00626F6E4B776FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100C4D19C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A16300, &qword_1014A2CC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C458DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  sub_1005B981C(&qword_101A16308, &qword_1014A2CC8);
  LOBYTE(v21) = 0;
  sub_100B99DB0(&qword_101A16310, &qword_101A16308, &qword_1014A2CC8, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v24;
  v33 = v25;
  LOBYTE(v24) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v21) = 2;
  sub_100C4F57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v24;
  LOBYTE(v24) = 3;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v24) = 4;
  HIDWORD(v20) = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v31 = 5;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v13 & 1;
  v15 = BYTE4(v20) & 1;
  (*(v6 + 8))(v8, v5);
  v16 = v32;
  *&v21 = v9;
  v17 = v33;
  BYTE8(v21) = v33;
  HIDWORD(v21) = v11;
  *&v22 = v12;
  BYTE8(v22) = v14;
  BYTE9(v22) = v15;
  v23 = v32;
  sub_100C4F7DC(&v21, &v24);
  sub_100005070(a1);
  v24 = v9;
  v25 = v17;
  v26 = v11;
  v27 = v12;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  result = sub_100C4F814(&v24);
  v19 = v22;
  *a2 = v21;
  *(a2 + 16) = v19;
  *(a2 + 32) = v23;
  return result;
}

uint64_t sub_100C4D508(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69736F506C696174 && a2 == 0xEC0000006E6F6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A69536C696174 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61547265746E6563 && a2 == 0xEA00000000006C69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x536C61727574616ELL && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100C4D720@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A162B0, &qword_1014A2CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4617C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v22) = 0;
  sub_1009CF230();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v25;
  v10 = v26;
  LOBYTE(v25) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v25) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  LOBYTE(v25) = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v22) = 4;
  sub_100C4F57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v25;
  v17 = v26;
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v33 = 5;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v18 = v34;
  *&v22 = __PAIR64__(v10, v9);
  *(&v22 + 1) = __PAIR64__(v14, v12);
  LOBYTE(v23) = v15 & 1;
  *(&v23 + 4) = __PAIR64__(v17, v16);
  v24 = v34;
  sub_100C4F5D0(&v22, &v25);
  sub_100005070(a1);
  v25 = v9;
  v26 = v10;
  v27 = v12;
  v28 = v14;
  v29 = v15 & 1;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  result = sub_100C4F608(&v25);
  v20 = v23;
  *a2 = v22;
  *(a2 + 16) = v20;
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_100C4DA30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61507265697A6562 && a2 == 0xEE00617461446874;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536C61727574616ELL && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

float sub_100C4DB5C(void *a1)
{
  v2 = sub_1005B981C(&qword_101A162E0, &qword_1014A2CB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100C45D2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  HIBYTE(v8) = 0;
  sub_1009CF1DC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  HIBYTE(v8) = 1;
  sub_100C4F57C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = *&v9;
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  HIBYTE(v8) = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v6;
}

uint64_t sub_100C4DDBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72746E6F436E69 && a2 == 0xEE00746E696F506CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696F5065646F6ELL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72746E6F4374756FLL && a2 == 0xEF746E696F506C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_100C4DF8C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A165A0, &qword_1014A4350);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C4FF78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  LOBYTE(v20) = 0;
  sub_1009CF230();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v9 = v23;
  v19 = v9;
  LOBYTE(v20) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v10 = v23;
  v18 = v10;
  LOBYTE(v20) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v23;
  sub_1005B981C(&qword_101A165A8, &qword_1014A4358);
  LOBYTE(v20) = 3;
  sub_100B99DB0(&qword_101A165B0, &qword_101A165A8, &qword_1014A4358, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v23;
  v30 = v24;
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v31 = 4;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v29;
  *&v14 = v19;
  *(&v14 + 1) = v18;
  v20 = v14;
  *&v21 = v11;
  *(&v21 + 1) = v12;
  v15 = v30;
  LOBYTE(v22) = v30;
  *(&v22 + 1) = v29;
  sub_10067CDF8(&v20, &v23);
  sub_100005070(a1);
  v23 = v19;
  v24 = v18;
  v25 = v11;
  v26 = v12;
  v27 = v15;
  v28 = v13;
  result = sub_10067CEA8(&v23);
  v17 = v21;
  *a2 = v20;
  a2[1] = v17;
  a2[2] = v22;
  return result;
}

uint64_t sub_100C4E2E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365646F6ELL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465736F6C63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100C4E400(void *a1)
{
  v2 = sub_1005B981C(&qword_101A163A8, &qword_1014A2D08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100C446B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1005B981C(&qword_101A163B0, &qword_1014A2D10);
  HIBYTE(v8) = 0;
  sub_100C4FA74(&qword_101A163B8, sub_100C4FAEC, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v9;
  LOBYTE(v9) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  HIBYTE(v8) = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v6;
}

uint64_t sub_100C4E680(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7368746170627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536C61727574616ELL && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100C4E7F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x795474656E67616DLL && a2 == 0xEA00000000006570;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101593FF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100C4E920@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A16580, &qword_1014A4340);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C50638();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  sub_1005B981C(&qword_101A16400, &unk_1014A2D20);
  v15 = 0;
  sub_100B99DB0(&qword_101A16588, &qword_101A16400, &unk_1014A2D20, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v16;
  v10 = v17;
  v15 = 1;
  sub_1009CF230();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v16;
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v15 = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = v16;
  result = sub_100005070(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v11;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_100C4EBA8(uint64_t a1)
{
  if ((a1 + 1) >= 8)
  {
    return 8;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_100C4EBD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101593DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x724674657374756FLL && a2 == 0xEA00000000006D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5474657374756FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E67614D64616568 && a2 == 0xEA00000000007465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E67614D6C696174 && a2 == 0xEA00000000007465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101593E30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_100C4EE78@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A16268, &qword_1014A2C88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v39 = a1;
  sub_100020E58(a1, v9);
  sub_100C4834C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v39);
  }

  v38 = v6;
  sub_1005B981C(&qword_101A16270, &qword_1014A2C90);
  LOBYTE(v40) = 0;
  sub_100B99DB0(&qword_101A16278, &qword_101A16270, &qword_1014A2C90, &protocol conformance descriptor for <> CRExtensible<A>);
  v10 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v48;
  v66 = v49;
  LOBYTE(v40) = 1;
  sub_100C45B74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v48;
  v13 = v49;
  v14 = v50;
  LOBYTE(v48) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  LOBYTE(v48) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  LOBYTE(v40) = 4;
  v37 = sub_100C4F3C4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v48;
  v34 = v50;
  v35 = v49;
  v36 = v51;
  LOBYTE(v40) = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v49;
  v32 = v48;
  v30 = v50;
  v37 = v51;
  LOBYTE(v48) = 6;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v67 = 7;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v38 + 8))(v8, v10);
  v38 = v65;
  *&v40 = v11;
  v28 = v66;
  BYTE8(v40) = v66;
  *&v41 = v12;
  *(&v41 + 1) = v13;
  *&v42 = v14;
  *(&v42 + 1) = __PAIR64__(v18, v16);
  v19 = v33;
  *&v43 = v33;
  *(&v43 + 1) = v35;
  v21 = v36;
  v20 = v37;
  *&v44 = v34;
  *(&v44 + 1) = v36;
  *&v45 = v32;
  *(&v45 + 1) = v31;
  *&v46 = v30;
  *(&v46 + 1) = v37;
  LOBYTE(v47) = v29;
  *(&v47 + 1) = v65;
  sub_100C4F418(&v40, &v48);
  sub_100005070(v39);
  v48 = v11;
  LOBYTE(v49) = v28;
  v50 = v12;
  v51 = v13;
  v52 = v14;
  v53 = v16;
  v54 = v18;
  v55 = v19;
  v56 = v35;
  v57 = v34;
  v58 = v21;
  v59 = v32;
  v60 = v31;
  v61 = v30;
  v62 = v20;
  v63 = v29;
  v64 = v38;
  result = sub_100C4F450(&v48);
  v23 = v45;
  a2[4] = v44;
  a2[5] = v23;
  v24 = v47;
  a2[6] = v46;
  a2[7] = v24;
  v25 = v41;
  *a2 = v40;
  a2[1] = v25;
  v26 = v43;
  a2[2] = v42;
  a2[3] = v26;
  return result;
}

unint64_t sub_100C4F3C4()
{
  result = qword_101A16280;
  if (!qword_101A16280)
  {
    result = swift_getWitnessTable(byte_1014A4200, &type metadata for CRLConnectionLineMagnetData, v0, v1);
    atomic_store(result, &qword_101A16280);
  }

  return result;
}

unint64_t sub_100C4F480()
{
  result = qword_101A16298;
  if (!qword_101A16298)
  {
    result = swift_getWitnessTable(asc_1014A41D8, &type metadata for CRLConnectionLineMagnetData, v0, v1);
    atomic_store(result, &qword_101A16298);
  }

  return result;
}

unint64_t sub_100C4F4D4()
{
  result = qword_101A162A0;
  if (!qword_101A162A0)
  {
    result = swift_getWitnessTable(asc_1014A28D0, &type metadata for CRLConnectionLinePathSourceData, v0, v1);
    atomic_store(result, &qword_101A162A0);
  }

  return result;
}

unint64_t sub_100C4F528()
{
  result = qword_101A162A8;
  if (!qword_101A162A8)
  {
    result = swift_getWitnessTable("1\r9", &type metadata for CRLConnectionLinePathSourceData, v0, v1);
    atomic_store(result, &qword_101A162A8);
  }

  return result;
}

unint64_t sub_100C4F57C()
{
  result = qword_101A162B8;
  if (!qword_101A162B8)
  {
    result = swift_getWitnessTable(byte_10149425C, &type metadata for CRLSizeData, v0, v1);
    atomic_store(result, &qword_101A162B8);
  }

  return result;
}

unint64_t sub_100C4F638()
{
  result = qword_101A162C8;
  if (!qword_101A162C8)
  {
    result = swift_getWitnessTable(byte_101494234, &type metadata for CRLSizeData, v0, v1);
    atomic_store(result, &qword_101A162C8);
  }

  return result;
}

unint64_t sub_100C4F68C()
{
  result = qword_101A162D0;
  if (!qword_101A162D0)
  {
    result = swift_getWitnessTable(aA_69, &type metadata for CRLCalloutPathSourceData, v0, v1);
    atomic_store(result, &qword_101A162D0);
  }

  return result;
}

unint64_t sub_100C4F6E0()
{
  result = qword_101A162D8;
  if (!qword_101A162D8)
  {
    result = swift_getWitnessTable(aQ_89, &type metadata for CRLCalloutPathSourceData, v0, v1);
    atomic_store(result, &qword_101A162D8);
  }

  return result;
}

unint64_t sub_100C4F734()
{
  result = qword_101A162F0;
  if (!qword_101A162F0)
  {
    result = swift_getWitnessTable(byte_1014A2250, &type metadata for CRLBezierPathSourceData, v0, v1);
    atomic_store(result, &qword_101A162F0);
  }

  return result;
}

unint64_t sub_100C4F788()
{
  result = qword_101A162F8;
  if (!qword_101A162F8)
  {
    result = swift_getWitnessTable(byte_1014A2228, &type metadata for CRLBezierPathSourceData, v0, v1);
    atomic_store(result, &qword_101A162F8);
  }

  return result;
}

unint64_t sub_100C4F844()
{
  result = qword_101A16328;
  if (!qword_101A16328)
  {
    result = swift_getWitnessTable(byte_1014A1F10, &type metadata for CRLScalarPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16328);
  }

  return result;
}

unint64_t sub_100C4F898()
{
  result = qword_101A16330;
  if (!qword_101A16330)
  {
    result = swift_getWitnessTable(byte_1014A1EE8, &type metadata for CRLScalarPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16330);
  }

  return result;
}

unint64_t sub_100C4F8EC()
{
  result = qword_101A16360;
  if (!qword_101A16360)
  {
    result = swift_getWitnessTable("!$9", &type metadata for CRLPointPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16360);
  }

  return result;
}

unint64_t sub_100C4F940()
{
  result = qword_101A16368;
  if (!qword_101A16368)
  {
    result = swift_getWitnessTable(a1_39, &type metadata for CRLPointPathSourceData, v0, v1);
    atomic_store(result, &qword_101A16368);
  }

  return result;
}

uint64_t sub_100C4F994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C4F9FC(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1005C4E5C(&qword_101A16378, &qword_1014A2CF8);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100C4FA74(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1005C4E5C(&qword_101A163B0, &qword_1014A2D10);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100C4FAEC()
{
  result = qword_101A163C0;
  if (!qword_101A163C0)
  {
    result = swift_getWitnessTable(aA_73, &type metadata for CRLEditableBezierPathSourceData.Node, v0, v1);
    atomic_store(result, &qword_101A163C0);
  }

  return result;
}

unint64_t sub_100C4FB40()
{
  result = qword_101A163D8;
  if (!qword_101A163D8)
  {
    result = swift_getWitnessTable(aY_79, &type metadata for CRLEditableBezierPathSourceData.Node, v0, v1);
    atomic_store(result, &qword_101A163D8);
  }

  return result;
}

unint64_t sub_100C4FB94()
{
  result = qword_101A163E0;
  if (!qword_101A163E0)
  {
    result = swift_getWitnessTable(byte_1014A1550, &type metadata for CRLEditableBezierPathSourceData.Subpath, v0, v1);
    atomic_store(result, &qword_101A163E0);
  }

  return result;
}

unint64_t sub_100C4FBE8()
{
  result = qword_101A163E8;
  if (!qword_101A163E8)
  {
    result = swift_getWitnessTable(byte_1014A1528, &type metadata for CRLEditableBezierPathSourceData.Subpath, v0, v1);
    atomic_store(result, &qword_101A163E8);
  }

  return result;
}

unint64_t sub_100C4FD60()
{
  result = qword_101A16408;
  if (!qword_101A16408)
  {
    result = swift_getWitnessTable(byte_1014A2E10, &type metadata for CRLEditableBezierPathSourceData.Node, v0, v1);
    atomic_store(result, &qword_101A16408);
  }

  return result;
}

unint64_t sub_100C4FDB8()
{
  result = qword_101A16410;
  if (!qword_101A16410)
  {
    result = swift_getWitnessTable(asc_1014A2E68, &type metadata for CRLEditableBezierPathSourceData.Node, v0, v1);
    atomic_store(result, &qword_101A16410);
  }

  return result;
}

unint64_t sub_100C4FE10()
{
  result = qword_101A16418;
  if (!qword_101A16418)
  {
    result = swift_getWitnessTable(aQ_90, &type metadata for CRLEditableBezierPathSourceData.Node, v0, v1);
    atomic_store(result, &qword_101A16418);
  }

  return result;
}

unint64_t sub_100C4FE70()
{
  result = qword_101A16420;
  if (!qword_101A16420)
  {
    result = swift_getWitnessTable(aQ_93, &type metadata for CRLEditableBezierPathSourceData.Node.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16420);
  }

  return result;
}

unint64_t sub_100C4FEC8()
{
  result = qword_101A16428;
  if (!qword_101A16428)
  {
    result = swift_getWitnessTable(aQ_94, &type metadata for CRLEditableBezierPathSourceData.Node.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16428);
  }

  return result;
}

unint64_t sub_100C4FF20()
{
  result = qword_101A16430;
  if (!qword_101A16430)
  {
    result = swift_getWitnessTable(aA_71, &type metadata for CRLEditableBezierPathSourceData.Node.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16430);
  }

  return result;
}

unint64_t sub_100C4FF78()
{
  result = qword_101A16438;
  if (!qword_101A16438)
  {
    result = swift_getWitnessTable(byte_1014A2F90, &type metadata for CRLEditableBezierPathSourceData.Node.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16438);
  }

  return result;
}

unint64_t sub_100C4FFD0()
{
  result = qword_101A16440;
  if (!qword_101A16440)
  {
    result = swift_getWitnessTable("1\t9", &type metadata for CRLEditableBezierPathSourceData.Node.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16440);
  }

  return result;
}

unint64_t sub_100C50028()
{
  result = qword_101A16448;
  if (!qword_101A16448)
  {
    result = swift_getWitnessTable("i\t9", &type metadata for CRLEditableBezierPathSourceData.Node.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16448);
  }

  return result;
}

unint64_t sub_100C500B0()
{
  result = qword_101A16460;
  if (!qword_101A16460)
  {
    result = swift_getWitnessTable(aI_86, &type metadata for CRLEditableBezierPathSourceData.Node, v0, v1);
    atomic_store(result, &qword_101A16460);
  }

  return result;
}

unint64_t sub_100C50108()
{
  result = qword_101A16468;
  if (!qword_101A16468)
  {
    result = swift_getWitnessTable(byte_1014A3100, &type metadata for CRLPointPathSourceData.PointPathSourceType, v0, v1);
    atomic_store(result, &qword_101A16468);
  }

  return result;
}

unint64_t sub_100C50160()
{
  result = qword_101A16470;
  if (!qword_101A16470)
  {
    result = swift_getWitnessTable(byte_1014A3158, &type metadata for CRLPointPathSourceData.PointPathSourceType, v0, v1);
    atomic_store(result, &qword_101A16470);
  }

  return result;
}

unint64_t sub_100C501B8()
{
  result = qword_101A16478;
  if (!qword_101A16478)
  {
    result = swift_getWitnessTable(aI_85, &type metadata for CRLPointPathSourceData.PointPathSourceType, v0, v1);
    atomic_store(result, &qword_101A16478);
  }

  return result;
}

unint64_t sub_100C50210()
{
  result = qword_101A16480;
  if (!qword_101A16480)
  {
    result = swift_getWitnessTable("I\a9", &type metadata for CRLScalarPathSourceData.ScalarPathSourceType, v0, v1);
    atomic_store(result, &qword_101A16480);
  }

  return result;
}

unint64_t sub_100C50268()
{
  result = qword_101A16488;
  if (!qword_101A16488)
  {
    result = swift_getWitnessTable("a\a9", &type metadata for CRLScalarPathSourceData.ScalarPathSourceType, v0, v1);
    atomic_store(result, &qword_101A16488);
  }

  return result;
}

unint64_t sub_100C502C0()
{
  result = qword_101A16490;
  if (!qword_101A16490)
  {
    result = swift_getWitnessTable(byte_1014A3448, &type metadata for CRLScalarPathSourceData.ScalarPathSourceType, v0, v1);
    atomic_store(result, &qword_101A16490);
  }

  return result;
}

unint64_t sub_100C50318()
{
  result = qword_101A16498;
  if (!qword_101A16498)
  {
    result = swift_getWitnessTable(byte_1014A3470, &type metadata for CRLConnectionLinePathSourceData.ConnectionLinePathSourceType, v0, v1);
    atomic_store(result, &qword_101A16498);
  }

  return result;
}

unint64_t sub_100C50370()
{
  result = qword_101A164A0;
  if (!qword_101A164A0)
  {
    result = swift_getWitnessTable(byte_1014A34C8, &type metadata for CRLConnectionLinePathSourceData.ConnectionLinePathSourceType, v0, v1);
    atomic_store(result, &qword_101A164A0);
  }

  return result;
}

unint64_t sub_100C503C8()
{
  result = qword_101A164A8;
  if (!qword_101A164A8)
  {
    result = swift_getWitnessTable(byte_1014A3600, &type metadata for CRLConnectionLinePathSourceData.ConnectionLinePathSourceType, v0, v1);
    atomic_store(result, &qword_101A164A8);
  }

  return result;
}

unint64_t sub_100C50420()
{
  result = qword_101A164B0;
  if (!qword_101A164B0)
  {
    result = swift_getWitnessTable(byte_1014A3628, &type metadata for CRLConnectionLineMagnetData, v0, v1);
    atomic_store(result, &qword_101A164B0);
  }

  return result;
}

unint64_t sub_100C50478()
{
  result = qword_101A164B8;
  if (!qword_101A164B8)
  {
    result = swift_getWitnessTable(byte_1014A3680, &type metadata for CRLConnectionLineMagnetData, v0, v1);
    atomic_store(result, &qword_101A164B8);
  }

  return result;
}

unint64_t sub_100C504D0()
{
  result = qword_101A164C0;
  if (!qword_101A164C0)
  {
    result = swift_getWitnessTable(a9_40, &type metadata for CRLConnectionLineMagnetData, v0, v1);
    atomic_store(result, &qword_101A164C0);
  }

  return result;
}

unint64_t sub_100C50530()
{
  result = qword_101A164C8;
  if (!qword_101A164C8)
  {
    result = swift_getWitnessTable("9\b9", &type metadata for CRLConnectionLineMagnetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A164C8);
  }

  return result;
}

unint64_t sub_100C50588()
{
  result = qword_101A164D0;
  if (!qword_101A164D0)
  {
    result = swift_getWitnessTable("Y\a9", &type metadata for CRLConnectionLineMagnetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A164D0);
  }

  return result;
}

unint64_t sub_100C505E0()
{
  result = qword_101A164D8;
  if (!qword_101A164D8)
  {
    result = swift_getWitnessTable(asc_1014A3850, &type metadata for CRLConnectionLineMagnetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A164D8);
  }

  return result;
}

unint64_t sub_100C50638()
{
  result = qword_101A164E0;
  if (!qword_101A164E0)
  {
    result = swift_getWitnessTable(byte_1014A37A8, &type metadata for CRLConnectionLineMagnetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A164E0);
  }

  return result;
}

unint64_t sub_100C50690()
{
  result = qword_101A164E8;
  if (!qword_101A164E8)
  {
    result = swift_getWitnessTable(byte_1014A3820, &type metadata for CRLConnectionLineMagnetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A164E8);
  }

  return result;
}

unint64_t sub_100C506E8()
{
  result = qword_101A164F0;
  if (!qword_101A164F0)
  {
    result = swift_getWitnessTable(aQ_95, &type metadata for CRLConnectionLineMagnetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A164F0);
  }

  return result;
}

unint64_t sub_100C50770()
{
  result = qword_101A16508;
  if (!qword_101A16508)
  {
    result = swift_getWitnessTable("Q\b9", &type metadata for CRLConnectionLineMagnetData, v0, v1);
    atomic_store(result, &qword_101A16508);
  }

  return result;
}

unint64_t sub_100C507C8()
{
  result = qword_101A16510;
  if (!qword_101A16510)
  {
    result = swift_getWitnessTable(aI_88, &type metadata for CRLEditableBezierPathSourceData.Subpath.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16510);
  }

  return result;
}

unint64_t sub_100C50820()
{
  result = qword_101A16518;
  if (!qword_101A16518)
  {
    result = swift_getWitnessTable(byte_1014A3A30, &type metadata for CRLEditableBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16518);
  }

  return result;
}

unint64_t sub_100C50878()
{
  result = qword_101A16520;
  if (!qword_101A16520)
  {
    result = swift_getWitnessTable(asc_1014A3AD0, &type metadata for CRLPointPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16520);
  }

  return result;
}

unint64_t sub_100C508D0()
{
  result = qword_101A16528;
  if (!qword_101A16528)
  {
    result = swift_getWitnessTable(aI_89, &type metadata for CRLScalarPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16528);
  }

  return result;
}

unint64_t sub_100C50928()
{
  result = qword_101A16530;
  if (!qword_101A16530)
  {
    result = swift_getWitnessTable(byte_1014A3C10, &type metadata for CRLBezierPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16530);
  }

  return result;
}

unint64_t sub_100C50980()
{
  result = qword_101A16538;
  if (!qword_101A16538)
  {
    result = swift_getWitnessTable(asc_1014A3CB0, &type metadata for CRLCalloutPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16538);
  }

  return result;
}

unint64_t sub_100C509D8()
{
  result = qword_101A16540;
  if (!qword_101A16540)
  {
    result = swift_getWitnessTable(byte_1014A3D50, &type metadata for CRLConnectionLinePathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16540);
  }

  return result;
}

unint64_t sub_100C50A30()
{
  result = qword_101A16548;
  if (!qword_101A16548)
  {
    result = swift_getWitnessTable(byte_1014A3DF0, &type metadata for CRLPathSourceData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16548);
  }

  return result;
}

unint64_t sub_100C50A88()
{
  result = qword_101A16550;
  if (!qword_101A16550)
  {
    result = swift_getWitnessTable(byte_1014A3E18, &type metadata for CRLConnectionLineMagnetData.MagnetType, v0, v1);
    atomic_store(result, &qword_101A16550);
  }

  return result;
}

unint64_t sub_100C50AE0()
{
  result = qword_101A16558;
  if (!qword_101A16558)
  {
    result = swift_getWitnessTable(byte_1014A3E70, &type metadata for CRLConnectionLineMagnetData.MagnetType, v0, v1);
    atomic_store(result, &qword_101A16558);
  }

  return result;
}

unint64_t sub_100C50B38()
{
  result = qword_101A16560;
  if (!qword_101A16560)
  {
    result = swift_getWitnessTable(a1_41, &type metadata for CRLConnectionLineMagnetData.MagnetType, v0, v1);
    atomic_store(result, &qword_101A16560);
  }

  return result;
}

unint64_t sub_100C50B90()
{
  result = qword_101A16568;
  if (!qword_101A16568)
  {
    result = swift_getWitnessTable(a1_44, &type metadata for CRLEditableBezierPathSourceData.NodeType, v0, v1);
    atomic_store(result, &qword_101A16568);
  }

  return result;
}

unint64_t sub_100C50BE8()
{
  result = qword_101A16570;
  if (!qword_101A16570)
  {
    result = swift_getWitnessTable(aI_90, &type metadata for CRLEditableBezierPathSourceData.NodeType, v0, v1);
    atomic_store(result, &qword_101A16570);
  }

  return result;
}

unint64_t sub_100C50C40()
{
  result = qword_101A16578;
  if (!qword_101A16578)
  {
    result = swift_getWitnessTable(aY_78, &type metadata for CRLEditableBezierPathSourceData.NodeType, v0, v1);
    atomic_store(result, &qword_101A16578);
  }

  return result;
}

unint64_t sub_100C50C94()
{
  result = qword_101A165C8;
  if (!qword_101A165C8)
  {
    result = swift_getWitnessTable(aA_70, &type metadata for CRLEditableBezierPathSourceData.NodeType, v0, v1);
    atomic_store(result, &qword_101A165C8);
  }

  return result;
}

unint64_t sub_100C50CE8()
{
  result = qword_101A165D0;
  if (!qword_101A165D0)
  {
    result = swift_getWitnessTable(byte_1014A3F30, &type metadata for CRLConnectionLineMagnetData.MagnetType, v0, v1);
    atomic_store(result, &qword_101A165D0);
  }

  return result;
}

unint64_t sub_100C50D3C()
{
  result = qword_101A165D8;
  if (!qword_101A165D8)
  {
    result = swift_getWitnessTable(byte_1014A38D8, &type metadata for CRLConnectionLineMagnetData, v0, v1);
    atomic_store(result, &qword_101A165D8);
  }

  return result;
}

unint64_t sub_100C50D90()
{
  result = qword_101A165E0;
  if (!qword_101A165E0)
  {
    result = swift_getWitnessTable(asc_1014A38B0, &type metadata for CRLConnectionLineMagnetData, v0, v1);
    atomic_store(result, &qword_101A165E0);
  }

  return result;
}

unint64_t sub_100C50DE4()
{
  result = qword_101A165E8;
  if (!qword_101A165E8)
  {
    result = swift_getWitnessTable(byte_1014A3588, &type metadata for CRLConnectionLinePathSourceData.ConnectionLinePathSourceType, v0, v1);
    atomic_store(result, &qword_101A165E8);
  }

  return result;
}

unint64_t sub_100C50E38()
{
  result = qword_101A165F0;
  if (!qword_101A165F0)
  {
    result = swift_getWitnessTable("Y\t9", &type metadata for CRLScalarPathSourceData.ScalarPathSourceType, v0, v1);
    atomic_store(result, &qword_101A165F0);
  }

  return result;
}

unint64_t sub_100C50E8C()
{
  result = qword_101A165F8;
  if (!qword_101A165F8)
  {
    result = swift_getWitnessTable(byte_1014A3218, &type metadata for CRLPointPathSourceData.PointPathSourceType, v0, v1);
    atomic_store(result, &qword_101A165F8);
  }

  return result;
}

unint64_t sub_100C50EE0()
{
  result = qword_101A16600;
  if (!qword_101A16600)
  {
    result = swift_getWitnessTable(a1_40, &type metadata for CRLEditableBezierPathSourceData.Node, v0, v1);
    atomic_store(result, &qword_101A16600);
  }

  return result;
}

unint64_t sub_100C50F34()
{
  result = qword_101A16608;
  if (!qword_101A16608)
  {
    result = swift_getWitnessTable(aA_72, &type metadata for CRLEditableBezierPathSourceData.Node, v0, v1);
    atomic_store(result, &qword_101A16608);
  }

  return result;
}

unint64_t sub_100C50FAC()
{
  result = qword_101A16610;
  if (!qword_101A16610)
  {
    result = swift_getWitnessTable(byte_1014A43E0, &type metadata for CRLEditableBezierPathSourceData.Node.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16610);
  }

  return result;
}

unint64_t sub_100C51004()
{
  result = qword_101A16618;
  if (!qword_101A16618)
  {
    result = swift_getWitnessTable(aY_83, &type metadata for CRLConnectionLineMagnetData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A16618);
  }

  return result;
}

void sub_100C510EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1012E0400(a1, &off_1018A75D0);
  if (!v4)
  {
    sub_100EC90D0(v3 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_sceneID, v10, *(v3 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_savedRect), *(v3 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_savedRect + 8), *(v3 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_savedRect + 16), *(v3 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_savedRect + 24));
    (*(v8 + 8))(v10, v7);
    sub_1012CF6CC(a1, &off_1018A75D0, v5);
  }
}

uint64_t sub_100C51268()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_sceneID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_100C512E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandCreateScene(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandCreateScene(uint64_t a1)
{
  result = qword_101A16650;
  if (!qword_101A16650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100C513F0(uint64_t a1)
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

uint64_t sub_100C51494()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform21CRLCommandCreateScene_actionString);

  return v1;
}

uint64_t sub_100C514E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100C5152C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100C515A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A286B0, &qword_1014C2180);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100C54644(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorSchemeContrast();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_100C51790@<D0>(uint64_t a1@<X8>)
{
  LabelStyleConfiguration.icon.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v2 = (a1 + *(sub_1005B981C(&qword_101A168E0, &qword_1014A49A8) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_100C51810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = a1;
  v2 = type metadata accessor for ColorSchemeContrast();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin(v2);
  v57 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = &v54 - v5;
  v6 = type metadata accessor for RoundedRectangle();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1005B981C(&qword_101A16868, &qword_1014A48E0) - 8;
  __chkstk_darwin(v61);
  v11 = &v54 - v10;
  v60 = sub_1005B981C(&qword_101A16870, &qword_1014A48E8) - 8;
  __chkstk_darwin(v60);
  v58 = &v54 - v12;
  v13 = type metadata accessor for ButtonStyleConfiguration.Label();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_101A16878, &qword_1014A48F0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v54 - v19;
  v21 = sub_1005B981C(&qword_101A16880, &qword_1014A48F8);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v56 = &v54 - v23;
  ButtonStyleConfiguration.label.getter();
  sub_100C5394C(&qword_101A16888, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
  sub_100C54588();
  v55 = v20;
  View.labelStyle<A>(_:)();
  (*(v14 + 8))(v16, v13);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = &v20[*(v18 + 44)];
  v25 = v67;
  *v24 = v66;
  *(v24 + 1) = v25;
  *(v24 + 2) = v68;
  v26 = *(v7 + 28);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(&v9[v26], v27, v28);
  __asm { FMOV            V0.2D, #8.0 }

  *v9 = _Q0;
  v34 = static HierarchicalShapeStyle.quaternary.getter();
  v35 = v59;
  sub_100C515A8(v59);
  v37 = v62;
  v36 = v63;
  v38 = v57;
  (*(v62 + 104))(v57, enum case for ColorSchemeContrast.increased(_:), v63);
  LOBYTE(v26) = static ColorSchemeContrast.== infix(_:_:)();
  v39 = *(v37 + 8);
  v39(v38, v36);
  v39(v35, v36);
  if (v26)
  {
    v40 = 0.2;
  }

  else
  {
    v40 = 1.0;
  }

  sub_100C545DC(v9, v11, &type metadata accessor for RoundedRectangle);
  v41 = v61;
  v42 = &v11[*(v61 + 60)];
  *v42 = v34;
  *(v42 + 1) = v40;
  *&v11[*(v41 + 64)] = 256;
  v43 = v58;
  sub_10003DFF8(v11, v58, &qword_101A16868, &qword_1014A48E0);
  v44 = v43 + *(v60 + 44);
  *v44 = 0;
  *(v44 + 8) = 257;
  v45 = static Alignment.center.getter();
  v47 = v46;
  v48 = v56;
  v49 = &v56[*(v22 + 44)];
  sub_10003DFF8(v43, v49, &qword_101A16870, &qword_1014A48E8);
  v50 = (v49 + *(sub_1005B981C(&qword_101A16898, &qword_1014A4900) + 36));
  *v50 = v45;
  v50[1] = v47;
  sub_10003DFF8(v55, v48, &qword_101A16878, &qword_1014A48F0);
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v51 = 0.5;
  }

  else
  {
    v51 = 1.0;
  }

  v52 = v64;
  sub_10003DFF8(v48, v64, &qword_101A16880, &qword_1014A48F8);
  result = sub_1005B981C(&qword_101A168A0, &qword_1014A4908);
  *(v52 + *(result + 36)) = v51;
  return result;
}

void sub_100C51DFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v24 = a2;
  v3 = a1;
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A168A8, &qword_1014A4910);
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = v21 - v9;
  v21[3] = v2;
  if (v3 == 8)
  {
    sub_100D3F5D8(8u);
    v11 = Image.init(systemName:)();
  }

  else
  {
    sub_100D3F5D8(v2);
    v11 = Image.init(_:bundle:)();
  }

  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() colorNamed:v13];

  if (v14)
  {
    v15 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    v27 = v12;
    v28 = KeyPath;
    v29 = v15;
    (*(v5 + 104))(v7, enum case for DynamicTypeSize.large(_:), v4);
    v17 = sub_1005B981C(&qword_101A08AB8, &qword_101487C08);
    v18 = sub_100920A5C();
    View.dynamicTypeSize(_:)();
    (*(v5 + 8))(v7, v4);

    v27 = sub_100D3F704();
    v28 = v19;
    v25 = v17;
    v26 = v18;
    swift_getOpaqueTypeConformance2();
    sub_100017CD8();
    v20 = v23;
    View.accessibilityLabel<A>(_:)();

    (*(v22 + 8))(v10, v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100C52108@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = sub_1005B981C(&qword_101A16770, &qword_1014A47A0);
  __chkstk_darwin(v3);
  v5 = &v42 - v4;
  v6 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  v7 = v6 - 8;
  v49 = *(v6 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin(v6);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A16778, &qword_1014A47A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v52 = sub_1005B981C(&qword_101A16780, &qword_1014A47B0);
  __chkstk_darwin(v52);
  v14 = &v42 - v13;
  v15 = *(v2 + *(v7 + 36));
  sub_100C527C0(v12);
  v51 = v5;
  if (v15 == 1)
  {
    sub_1005B981C(&qword_101A166A0, &qword_1014A4730);
    AccessibilityFocusState.projectedValue.getter();
    v45 = v55;
    v46 = v54;
    v47 = v56;
    v43 = sub_1005C4E5C(&qword_101A16790, &qword_1014A47B8);
    v42 = type metadata accessor for AutomaticHoverEffect();
    v16 = sub_1005C4E5C(&qword_101A16798, &qword_1014A47C0);
    v44 = v9;
    v17 = sub_1005C4E5C(&qword_101A167A0, &unk_1014A47C8);
    v18 = type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle(255);
    v48 = v3;
    v19 = v18;
    v20 = sub_10001A2F8(&qword_101A167A8, &qword_101A167A0, &unk_1014A47C8, &protocol conformance descriptor for Button<A>);
    v21 = sub_100C5394C(&qword_101A167B0, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle, "y49");
    v54 = v17;
    v55 = v19;
    v56 = v20;
    v57 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v54 = v16;
    v55 = OpaqueTypeConformance2;
    v23 = swift_getOpaqueTypeConformance2();
    v24 = sub_100C5394C(&qword_101A167B8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    v54 = v43;
    v55 = v42;
    v56 = v23;
    v57 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v44;
    View.accessibilityFocused(_:)();

    (*(v10 + 8))(v12, v25);
    v26 = v50;
    sub_100C53E70(v2, v50);
    v27 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v28 = swift_allocObject();
    sub_100C545DC(v26, v28 + v27, type metadata accessor for CRLMiniShapePickerUI.ShapeButton);
    v29 = &v14[*(v52 + 36)];
    *v29 = sub_100C53ED4;
    v29[1] = v28;
    v29[2] = 0;
    v29[3] = 0;
    sub_1000A40EC(v14, v51);
    swift_storeEnumTagMultiPayload();
    sub_100C53BF8();
    _ConditionalContent<>.init(storage:)();
    return sub_1000A415C(v14);
  }

  else
  {
    (*(v10 + 16))(v5, v12, v9);
    swift_storeEnumTagMultiPayload();
    v50 = sub_100C53BF8();
    v31 = sub_1005C4E5C(&qword_101A16790, &qword_1014A47B8);
    v32 = type metadata accessor for AutomaticHoverEffect();
    v33 = sub_1005C4E5C(&qword_101A16798, &qword_1014A47C0);
    v34 = v9;
    v35 = sub_1005C4E5C(&qword_101A167A0, &unk_1014A47C8);
    v36 = type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle(255);
    v37 = sub_10001A2F8(&qword_101A167A8, &qword_101A167A0, &unk_1014A47C8, &protocol conformance descriptor for Button<A>);
    v38 = sub_100C5394C(&qword_101A167B0, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle, "y49");
    v54 = v35;
    v55 = v36;
    v56 = v37;
    v57 = v38;
    v39 = swift_getOpaqueTypeConformance2();
    v54 = v33;
    v55 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    v41 = sub_100C5394C(&qword_101A167B8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    v54 = v31;
    v55 = v32;
    v56 = v40;
    v57 = v41;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v10 + 8))(v12, v34);
  }
}

uint64_t sub_100C527C0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for AutomaticHoverEffect();
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  __chkstk_darwin(v2);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle(0);
  __chkstk_darwin(v32);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_1005B981C(&qword_101A167A0, &unk_1014A47C8);
  v29 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = sub_1005B981C(&qword_101A16798, &qword_1014A47C0);
  v30 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v31 = sub_1005B981C(&qword_101A16790, &qword_1014A47B8);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v28 - v16;
  sub_100C53E70(v1, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_100C545DC(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CRLMiniShapePickerUI.ShapeButton);
  v38 = v1;
  sub_100C54184();
  Button.init(action:label:)();
  *v6 = swift_getKeyPath();
  sub_1005B981C(&unk_101A286B0, &qword_1014C2180);
  swift_storeEnumTagMultiPayload();
  v19 = sub_10001A2F8(&qword_101A167A8, &qword_101A167A0, &unk_1014A47C8, &protocol conformance descriptor for Button<A>);
  v20 = sub_100C5394C(&qword_101A167B0, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle, "y49");
  v21 = v32;
  View.buttonStyle<A>(_:)();
  sub_100C541D8(v6, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle);
  (*(v29 + 8))(v12, v10);
  v39 = v10;
  v40 = v21;
  v41 = v19;
  v42 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  View.accessibilityShowsLargeContentViewer()();
  (*(v30 + 8))(v15, v13);
  v24 = v34;
  static CustomHoverEffect<>.automatic.getter();
  v39 = v13;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100C5394C(&qword_101A167B8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v25 = v31;
  v26 = v35;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v36 + 8))(v24, v26);
  return (*(v33 + 8))(v23, v25);
}

uint64_t sub_100C52D84(uint64_t a1)
{
  v25 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for DispatchTime();
  v26 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v10 + 8);
  v16(v12, v9);
  sub_100C53E70(v25, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_100C545DC(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CRLMiniShapePickerUI.ShapeButton);
  aBlock[4] = sub_100C54038;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_10189C458;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100C5394C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  v20 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v30 + 8))(v2, v20);
  (*(v28 + 8))(v5, v29);
  return (v16)(v15, v26);
}

uint64_t sub_100C531FC(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  v4 = (a1 + v3[6]);
  v5 = v4[3];
  v6 = v4[4];
  sub_100020E58(v4, v5);
  v7 = (a1 + v3[8]);
  v8 = *(a1 + v3[5]);
  (*(v6 + 16))(v8, v5, v6, *v7, v7[1]);
  sub_100D3F5D8(v8);
  sub_100043E40(_swiftEmptyArrayStorage);
  v9 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v9, 0x6564496570616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v11 = [objc_allocWithZone(NSNumber) initWithBool:1];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v11, 0xD000000000000011, 0x8000000101559D20, v12);
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 sendEventInDomain:v14 lazily:1 eventPayload:isa];
}

uint64_t sub_100C53408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  sub_1005B981C(&qword_101A16668, &qword_1014A4718);
  sub_100C537F4(a2, v9);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = v9[1];
  *(v5 + 24) = v9[0];
  *(v5 + 40) = v6;
  v7 = v9[3];
  *(v5 + 56) = v9[2];
  *(v5 + 72) = v7;
  sub_1005B981C(&qword_101A16680, &qword_1014A4728);
  sub_100C53840();
  return ForEach<>.init(_:content:)();
}

void sub_100C534F0(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v7 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 3 * a2;
  if ((a2 * 3) >> 64 != (3 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11 + a1;
  if (__OFADD__(v11, a1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = a3[7];
  if (v12 < *(v13 + 16))
  {
    v14 = *(v13 + v12 + 32);
    v15 = v8;
    sub_10000630C(a3, &v10[v8[6]]);
    v16 = a3[5];
    v17 = a3[6];
    AccessibilityFocusState.init<>()();
    v10[v15[5]] = v14;
    v18 = &v10[v15[8]];
    *v18 = v16;
    *(v18 + 1) = v17;
    v10[v15[7]] = v12 == 0;
    sub_100C5394C(&qword_101A16690, type metadata accessor for CRLMiniShapePickerUI.ShapeButton, byte_1014A4750);
    View.accessibilitySortPriority(_:)();
    sub_100C541D8(v10, type metadata accessor for CRLMiniShapePickerUI.ShapeButton);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_100C53680@<X0>(uint64_t a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  *(a1 + 8) = v4;
  *(a1 + 16) = 0x4024000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x4024000000000000;
  *(a1 + 40) = 0;
  sub_1005B981C(&qword_101A16660, &qword_1014A4710);
  sub_100C537F4(v2, v19);
  v5 = swift_allocObject();
  v6 = v19[1];
  v5[1] = v19[0];
  v5[2] = v6;
  v7 = v19[3];
  v5[3] = v19[2];
  v5[4] = v7;
  sub_1005B981C(&qword_101A16668, &qword_1014A4718);
  sub_10001A2F8(&qword_101A16670, &qword_101A16668, &qword_1014A4718, &protocol conformance descriptor for GridRow<A>);
  ForEach<>.init(_:content:)();
  v8 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = sub_1005B981C(&qword_101A16678, &qword_1014A4720);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

unint64_t sub_100C53840()
{
  result = qword_101A16688;
  if (!qword_101A16688)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A16680, &qword_1014A4728);
    v4[0] = sub_100C5394C(&qword_101A16690, type metadata accessor for CRLMiniShapePickerUI.ShapeButton, byte_1014A4750);
    v4[1] = sub_100C5394C(&qword_101A16698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A16688);
  }

  return result;
}

uint64_t sub_100C5394C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_100C539BC(uint64_t a1)
{
  sub_100C53A68();
  if (v1 <= 0x3F)
  {
    sub_100C53AC0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100C53A68()
{
  if (!qword_101A16710)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_101A16710);
    }
  }
}

unint64_t sub_100C53AC0()
{
  result = qword_101A16718;
  if (!qword_101A16718)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_101A16718);
  }

  return result;
}

unint64_t sub_100C53B24()
{
  result = qword_101A16758;
  if (!qword_101A16758)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A16678, &qword_1014A4720);
    v4[0] = sub_10001A2F8(&qword_101A16760, &qword_101A16768, &qword_1014A4748, &protocol conformance descriptor for Grid<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A16758);
  }

  return result;
}

unint64_t sub_100C53BF8()
{
  result = qword_101A16788;
  if (!qword_101A16788)
  {
    v5[16] = v0;
    v5[17] = v1;
    v3 = sub_1005C4E5C(&qword_101A16780, &qword_1014A47B0);
    v4 = sub_1005C4E5C(&qword_101A16778, &qword_1014A47A8);
    sub_1005C4E5C(&qword_101A16790, &qword_1014A47B8);
    type metadata accessor for AutomaticHoverEffect();
    sub_1005C4E5C(&qword_101A16798, &qword_1014A47C0);
    sub_1005C4E5C(&qword_101A167A0, &unk_1014A47C8);
    type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle(255);
    sub_10001A2F8(&qword_101A167A8, &qword_101A167A0, &unk_1014A47C8, &protocol conformance descriptor for Button<A>);
    sub_100C5394C(&qword_101A167B0, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle, "y49");
    swift_getOpaqueTypeConformance2();
    v5[4] = swift_getOpaqueTypeConformance2();
    v5[5] = sub_100C5394C(&qword_101A167B8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_101A16788);
  }

  return result;
}

uint64_t sub_100C53E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C53EEC()
{
  v1 = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for AccessibilityTechnologies();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  sub_1005B981C(&qword_101A166A0, &qword_1014A4730);

  sub_100005070((v0 + v3 + *(v1 + 24)));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100C54038()
{
  type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  sub_1005B981C(&qword_101A166A0, &qword_1014A4730);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_100C540D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100C5414C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = type metadata accessor for CRLMiniShapePickerUI.ShapeButton(0);
  *a1 = *(v3 + *(result + 20));
  return result;
}

unint64_t sub_100C54184()
{
  result = qword_101A167C0;
  if (!qword_101A167C0)
  {
    result = swift_getWitnessTable(byte_1014A4858, &type metadata for CRLMiniShapePickerUI.ShapeImage, v0, v1);
    atomic_store(result, &qword_101A167C0);
  }

  return result;
}

uint64_t sub_100C541D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100C54260(uint64_t a1)
{
  sub_100C542CC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100C542CC(uint64_t a1)
{
  if (!qword_101A10CA0)
  {
    type metadata accessor for ColorSchemeContrast();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_101A10CA0);
    }
  }
}

unint64_t sub_100C54334()
{
  result = qword_101A16858;
  if (!qword_101A16858)
  {
    v7[16] = v0;
    v7[17] = v1;
    v3 = sub_1005C4E5C(&qword_101A16860, &qword_1014A4850);
    v4 = sub_100C53BF8();
    v5 = sub_1005C4E5C(&qword_101A16790, &qword_1014A47B8);
    v6 = type metadata accessor for AutomaticHoverEffect();
    sub_1005C4E5C(&qword_101A16798, &qword_1014A47C0);
    sub_1005C4E5C(&qword_101A167A0, &unk_1014A47C8);
    type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle(255);
    sub_10001A2F8(&qword_101A167A8, &qword_101A167A0, &unk_1014A47C8, &protocol conformance descriptor for Button<A>);
    sub_100C5394C(&qword_101A167B0, type metadata accessor for CRLMiniShapePickerUI.ShapeButtonStyle, "y49");
    swift_getOpaqueTypeConformance2();
    v7[2] = v5;
    v7[3] = v6;
    v7[4] = swift_getOpaqueTypeConformance2();
    v7[5] = sub_100C5394C(&qword_101A167B8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    v7[0] = v4;
    v7[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v7);
    atomic_store(result, &qword_101A16858);
  }

  return result;
}

unint64_t sub_100C54588()
{
  result = qword_101A16890;
  if (!qword_101A16890)
  {
    result = swift_getWitnessTable(byte_1014A4970, &type metadata for CRLMiniShapePickerUI.ShapeButtonLabelStyle, v0, v1);
    atomic_store(result, &qword_101A16890);
  }

  return result;
}

uint64_t sub_100C545DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C54644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A286B0, &qword_1014C2180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100C546C4()
{
  result = qword_101A168B0;
  if (!qword_101A168B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A168A0, &qword_1014A4908);
    v4[0] = sub_100C54750();
    v4[1] = &protocol witness table for _OpacityEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A168B0);
  }

  return result;
}

unint64_t sub_100C54750()
{
  result = qword_101A168B8;
  if (!qword_101A168B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A16880, &qword_1014A48F8);
    v4[0] = sub_100C54808();
    v4[1] = sub_10001A2F8(&qword_101A168C8, &qword_101A16898, &qword_1014A4900, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A168B8);
  }

  return result;
}

unint64_t sub_100C54808()
{
  result = qword_101A168C0;
  if (!qword_101A168C0)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = sub_1005C4E5C(&qword_101A16878, &qword_1014A48F0);
    v4[2] = type metadata accessor for ButtonStyleConfiguration.Label();
    v4[3] = &type metadata for CRLMiniShapePickerUI.ShapeButtonLabelStyle;
    v4[4] = sub_100C5394C(&qword_101A16888, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    v4[5] = sub_100C54588();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A168C0);
  }

  return result;
}

unint64_t sub_100C54910()
{
  result = qword_101A168D0;
  if (!qword_101A168D0)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_1005C4E5C(&qword_101A168D8, &qword_1014A4968);
    v4[2] = sub_1005C4E5C(&qword_101A08AB8, &qword_101487C08);
    v4[3] = sub_100920A5C();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100C5394C(&qword_101A16698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A168D0);
  }

  return result;
}

unint64_t sub_100C54A24()
{
  result = qword_101A168E8;
  if (!qword_101A168E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A168E0, &qword_1014A49A8);
    v4[0] = sub_100C5394C(qword_101A168F0, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A168E8);
  }

  return result;
}

uint64_t sub_100C54AE0(uint64_t a1)
{
  result = type metadata accessor for CRLUnfairLock();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100C54B68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100C54CEC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_100C54F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100C54FA8()
{
  v1 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(*v0 + 80))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(v3, &unk_1019F33C0, &unk_101468A60);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = Data.init(contentsOf:options:)();
    (*(v5 + 8))(v8, v4);
    return v10;
  }
}

void sub_100C55194(void (*a1)(id))
{
  v3 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v21 - v12;
  (*(*v1 + 80))(v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000CAAC(v5, &unk_1019F33C0, &unk_101468A60);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v9, v13, v6);
    v14 = objc_allocWithZone(CRLFileIOChannel);
    v15 = sub_100AD54AC(v9);
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    v19 = [v17 crl_fileSize];

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v20 = [objc_allocWithZone(CRLReadChannelInputStreamAdapter) initWithReadChannel:v15 length:v19 closeChannelOnClose:1];

      a1(v20);
      [v20 close];

      (*(v7 + 8))(v13, v6);
    }
  }
}

id sub_100C55530()
{
  v1 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 80))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(v3, &unk_1019F33C0, &unk_101468A60);
    sub_1007348E0();
    swift_allocError();
    *v9 = xmmword_1014647B0;
    swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v11);
    v13 = v12;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v0 = [v10 initWithURL:v13 options:isa];

    (*(v5 + 8))(v8, v4);
  }

  return v0;
}

uint64_t sub_100C5577C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__url;
  v4 = type metadata accessor for URL();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a1, v1 + v3, v4);
  v5 = *(v7 + 56);

  return v5(a1, 0, 1, v4);
}

void sub_100C5587C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SHA256();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SHA256Digest();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v14 - 8);
  v35 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v38 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage_lock);
  os_unfair_lock_lock(*(v38 + 16));
  v19 = OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__assetUUID;
  swift_beginAccess();
  v34 = v19;
  sub_100060460(v1 + v19, v18);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    v27 = v13;
    v29 = a1;
    sub_10000CAAC(v18, &qword_1019F6990, &qword_10146D2F0);
    v20 = *(v36 + 16);
    v28 = v1;
    v20(v9, v1 + OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__url, v37);
    sub_10091E724();
    dispatch thunk of HashFunction.init()();
    sub_101093094(v9);
    v21 = (v33 + 8);
    v22 = v30;
    dispatch thunk of HashFunction.finalize()();
    (*v21)(v5, v3);
    v18 = v27;
    SHA256Digest.withUnsafeBytes<A>(_:)();
    (*(v31 + 8))(v22, v32);
    (*(v36 + 8))(v9, v37);
    v23 = v28;
    v24 = v35;
    (*(v11 + 16))(v35, v18, v10);
    (*(v11 + 56))(v24, 0, 1, v10);
    v25 = v34;
    swift_beginAccess();
    sub_100803880(v24, v23 + v25);
    swift_endAccess();
    a1 = v29;
  }

  (*(v11 + 32))(a1, v18, v10);
  os_unfair_lock_unlock(*(v38 + 16));
}

void sub_100C55EB8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 2) != 0)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a4;
    v10[4] = sub_10091E678;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = *"";
    v10[2] = sub_100007638;
    v10[3] = &unk_10189C688;
    v7 = _Block_copy(v10);

    v8 = v7;
    if (+[NSThread isMainThread])
    {
      v8[2](v8);
    }

    else
    {
      v9 = &_dispatch_main_q;
      dispatch_async(&_dispatch_main_q, v8);
    }

    _Block_release(v8);
  }
}

uint64_t sub_100C55FD8()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__assetUUID, &qword_1019F6990, &qword_10146D2F0);
}

uint64_t sub_100C56064()
{
  v1 = OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__url;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform19CRLFileAssetStorage__assetUUID, &qword_1019F6990, &qword_10146D2F0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLFileAssetStorage(uint64_t a1)
{
  result = qword_101A16B20;
  if (!qword_101A16B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C561A8(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10000E68C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_100C56584()
{
  v1 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v0 + 80))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(v3, &unk_1019F33C0, &unk_101468A60);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    v13 = [v11 crl_fileSize];

    (*(v5 + 8))(v8, v4);
    return v13;
  }
}

CGDataProviderRef sub_100C567F4()
{
  v1 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v0 + 80))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CAAC(v3, &unk_1019F33C0, &unk_101468A60);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    v13 = CGDataProviderCreateWithURL(v11);

    (*(v5 + 8))(v8, v4);
    return v13;
  }
}

uint64_t sub_100C56B50(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 24))(ObjectType, a3);
  if ((v9 & 0xFF00000000) == 0x200000000)
  {
    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.appIntents;
    v11 = static os_log_type_t.debug.getter();

    return sub_100005404(v10, &_mh_execute_header, v11, "Trying to set font size on non text selection", 45, 2, _swiftEmptyArrayStorage);
  }

  if ((~v9 & 0x7F800000) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (*&v9 <= -9.2234e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (*&v9 >= 9.2234e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v13 = sub_101255980(*&v9);
  if (v13 == 10)
  {
    a3 = objc_opt_self();
    v6 = [a3 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("changeSelectionFontSize(operation:using:)", 41, 2);
    ObjectType = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/AppIntents/Performers/Intents/CRLChangeSelectioFontSizeIntentPerformer.swift", 130, 2);
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v16;

    if (qword_1019F20A0 == -1)
    {
LABEL_12:
      v17 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v6;
      v19 = sub_1005CF000();
      *(inited + 96) = v19;
      v20 = sub_1005CF04C();
      *(inited + 104) = v20;
      *(inited + 72) = ObjectType;
      *(inited + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(inited + 112) = v3;
      *(inited + 120) = v4;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v21;
      *(inited + 152) = 28;
      v22 = v36;
      *(inited + 216) = v19;
      *(inited + 224) = v20;
      *(inited + 192) = v22;
      v23 = ObjectType;
      v24 = v22;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v26, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v27 = swift_allocObject();
      v27[2] = 8;
      v27[3] = 0;
      v27[4] = 0;
      v27[5] = 0;
      v28 = __VaListBuilder.va_list()();
      StaticString.description.getter("changeSelectionFontSize(operation:using:)", 41, 2);
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/AppIntents/Performers/Intents/CRLChangeSelectioFontSizeIntentPerformer.swift", 130, 2);
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v31 = String._bridgeToObjectiveC()();

      [a3 handleFailureInFunction:v29 file:v30 lineNumber:28 isFatal:0 format:v31 args:v28];

      if (qword_1019F2238 != -1)
      {
        swift_once();
      }

      v32 = static OS_os_log.appIntents;
      v33 = static os_log_type_t.error.getter();
      return sub_100005404(v32, &_mh_execute_header, v33, "Unsupported text size found", 27, 2, _swiftEmptyArrayStorage);
    }

LABEL_43:
    swift_once();
    goto LABEL_12;
  }

  if (a1)
  {
    result = sub_101255824(v13);
  }

  else
  {
    result = sub_1012556E0(v13);
  }

  if (result <= 4u)
  {
    if (result <= 1u)
    {
      v34.n128_u32[0] = 10.0;
      if (result)
      {
        v34.n128_u32[0] = 12.0;
      }
    }

    else if (result == 2)
    {
      v34.n128_u32[0] = 14.0;
    }

    else if (result == 3)
    {
      v34.n128_u32[0] = 18.0;
    }

    else
    {
      v34.n128_u32[0] = 24.0;
    }
  }

  else
  {
    if (result > 7u)
    {
      if (result == 8)
      {
        v35 = 1119879168;
      }

      else
      {
        if (result != 9)
        {
          return result;
        }

        v35 = 1125122048;
      }
    }

    else if (result == 5)
    {
      v35 = 1108344832;
    }

    else if (result == 6)
    {
      v35 = 1111490560;
    }

    else
    {
      v35 = 1116733440;
    }

    v34.n128_u32[0] = v35;
  }

  return (*(a3 + 32))(ObjectType, a3, v34);
}

id sub_100C572E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSurfaceUnknownInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100C573A0()
{
  result = qword_101A16D58;
  if (!qword_101A16D58)
  {
    result = swift_getWitnessTable(byte_1014A4C5C, &type metadata for CRLBezierPathData, v0, v1);
    atomic_store(result, &qword_101A16D58);
  }

  return result;
}

BOOL sub_100C573F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (*(a1 + 48) <= 1u)
  {
    if (*(a1 + 48))
    {
      if (v2 == 1)
      {
        return sub_10011ECC8(*a1, *(a1 + 8), *a2, *(a2 + 8));
      }
    }

    else if (!*(a2 + 48))
    {
      return sub_10011ECC8(*a1, *(a1 + 8), *a2, *(a2 + 8));
    }

    return 0;
  }

  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (*(a1 + 48) != 2)
  {
    return v2 == 3 && (*(a2 + 8) | *a2 | *&v3 | *&v4 | *&v6 | *&v5) == 0;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (!sub_10011ECC8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  result = sub_10011ECC8(v10, v9, v3, v4);
  if (result)
  {
    return sub_10011ECC8(v8, v7, v6, v5);
  }

  return result;
}

void sub_100C57500(uint64_t a1, uint64_t a2, double a3, double a4, __n128 a5, double a6, __n128 a7, double a8)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      a7.n128_f64[1] = a8;
      a5.n128_f64[1] = a6;
      v44 = a7;
      v45 = a5;
      v12 = 2;
      goto LABEL_14;
    }

    if (a1 == 3)
    {
      v11 = 0uLL;
      v45 = 0u;
      v12 = 3;
      a3 = 0.0;
      a4 = 0.0;
      goto LABEL_12;
    }
  }

  else
  {
    if (!a1)
    {
      v12 = 0;
      v11 = 0uLL;
      v45 = 0u;
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v11 = 0uLL;
      v45 = 0u;
      v12 = 1;
LABEL_12:
      v44 = v11;
LABEL_14:
      swift_beginAccess();
      v36 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_100B38BC8(0, *(v36 + 2) + 1, 1, v36);
        *(a2 + 16) = v36;
      }

      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      v41 = v44;
      v40 = v45;
      if (v39 >= v38 >> 1)
      {
        v43 = sub_100B38BC8((v38 > 1), v39 + 1, 1, v36);
        v41 = v44;
        v40 = v45;
        v36 = v43;
      }

      *(v36 + 2) = v39 + 1;
      v42 = &v36[56 * v39];
      *(v42 + 4) = a3;
      *(v42 + 5) = a4;
      *(v42 + 3) = v40;
      *(v42 + 4) = v41;
      v42[80] = v12;
      *(a2 + 16) = v36;
      swift_endAccess();
      return;
    }
  }

  v13 = objc_opt_self();
  v14 = [v13 _atomicIncrementAssertCount];
  v46 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v46, "Unknown path element type. Ignoring element.", 44, 2u);
  StaticString.description.getter("init(archiving:)", 16, 2);
  v15 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathData.swift", 88, 2);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v16 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v14;
  v23 = sub_1005CF000();
  *(inited + 96) = v23;
  v24 = sub_100C58578(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v24;
  *(inited + 72) = v15;
  *(inited + 136) = &type metadata for String;
  v25 = sub_1000053B0();
  *(inited + 112) = v18;
  *(inited + 120) = v20;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v25;
  *(inited + 152) = 64;
  v26 = v46;
  *(inited + 216) = v23;
  *(inited + 224) = v24;
  *(inited + 192) = v26;
  v27 = v15;
  v28 = v26;
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v30, "Unknown path element type. Ignoring element.", 44, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v31 = swift_allocObject();
  v31[2] = 8;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = 0;
  v32 = __VaListBuilder.va_list()();
  StaticString.description.getter("init(archiving:)", 16, 2);
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathData.swift", 88, 2);
  v34 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unknown path element type. Ignoring element.", 44, 2);
  v35 = String._bridgeToObjectiveC()();

  [v13 handleFailureInFunction:v33 file:v34 lineNumber:64 isFatal:0 format:v35 args:v32];
}

uint64_t sub_100C579E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Path(0);
  __chkstk_darwin(v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100C57B44(a2, v6);
  if (!v2)
  {
    sub_100C58578(&qword_101A16D68, type metadata accessor for CRLProto_Path, "\t48");
    v8 = Message.serializedData(partial:)();
    v10 = v9;
    sub_100C58624(v6, type metadata accessor for CRLProto_Path);
    dispatch thunk of CREncoder.valueContainer()();
    dispatch thunk of CREncoder.CRValueContainer.encode(_:)();

    return sub_10002640C(v8, v10);
  }

  return result;
}

uint64_t sub_100C57B44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for CRLProto_Path.Element(0);
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v79 - v8;
  *a2 = _swiftEmptyArrayStorage;
  type metadata accessor for CRLProto_Path(0);
  v89 = a2;
  result = UnknownStorage.init()();
  v11 = *(a1 + 16);
  if (v11)
  {
    v83 = &v98;
    v84 = v97;
    v81 = &v93;
    v82 = v92;
    v12 = (a1 + 80);
    v13 = _swiftEmptyArrayStorage;
    v86 = xmmword_10146F370;
    v85 = 0.0009;
    while (1)
    {
      v15 = *(v12 - 6);
      v14 = *(v12 - 5);
      v17 = *(v12 - 4);
      v16 = *(v12 - 3);
      v19 = *(v12 - 2);
      v18 = *(v12 - 1);
      v20 = *v12;
      v21 = v86;
      *(v9 + 1) = v86;
      *(v9 + 2) = v21;
      *(v9 + 3) = v21;
      UnknownStorage.init()();
      if (v20 <= 1)
      {
        break;
      }

      if (v20 == 2)
      {
        v29 = v15;
        *v9 = 2;
        v9[8] = 1;
        v109.x = 0.0;
        v109.y = 0.0;
        v106.x = v15;
        v106.y = v14;
        v30 = v15;
        v31 = v14;
        if (CGPointEqualToPoint(v106, v109))
        {
          v32 = 0;
          v33 = 0xC000000000000000;
        }

        else
        {
          v103[0] = v15;
          v103[1] = v14;
          v32 = sub_100AE5050(v103, &v104);
          v33 = v34;
        }

        sub_10002640C(*(v9 + 2), *(v9 + 3));
        *(v9 + 2) = v32;
        *(v9 + 3) = v33;
        _D0 = sub_10011F31C(v17, v16, v29);
        v37 = v30;
        __asm
        {
          FCVT            H2, D0
          FCVT            D2, H2
        }

        v44 = vabdd_f64(v37 + _D2, v17);
        v45 = v31;
        v46 = v85;
        if (v44 >= v85)
        {
          goto LABEL_20;
        }

        __asm
        {
          FCVT            H2, D1
          FCVT            D2, H2
        }

        if (vabdd_f64(v45 + _D2, v16) >= v85)
        {
LABEL_20:
          v111.x = 0.0;
          v111.y = 0.0;
          v52 = _D0;
          v53 = _D1;
          if (CGPointEqualToPoint(*&_D0, v111))
          {
            v49 = 0;
            v51 = 0xC000000000000000;
          }

          else
          {
            v58 = v52;
            v59 = v53;
            *v101 = v58;
            *&v101[1] = v59;
            v49 = sub_100AE5050(v101, v102);
            v51 = v60;
          }

          v46 = v85;
        }

        else
        {
          v49 = sub_100C5AD34(_D0, _D1);
          v51 = v50;
        }

        sub_10002640C(*(v9 + 4), *(v9 + 5));
        *(v9 + 4) = v49;
        *(v9 + 5) = v51;
        _D0 = sub_10011F31C(v19, v18, v29);
        __asm
        {
          FCVT            H2, D0
          FCVT            D2, H2
        }

        if (vabdd_f64(v37 + _D2, v19) < v46)
        {
          __asm
          {
            FCVT            H2, D1
            FCVT            D2, H2
          }

          if (vabdd_f64(v45 + _D2, v18) < v46)
          {
            v67 = sub_100C5AD34(_D0, _D1);
            goto LABEL_36;
          }
        }

        v112.x = 0.0;
        v112.y = 0.0;
        v69 = _D0;
        v70 = _D1;
        if (CGPointEqualToPoint(*&_D0, v112))
        {
          v71 = 0;
          v72 = 0xC000000000000000;
        }

        else
        {
          v73 = v69;
          v74 = v70;
          *v99 = v73;
          *&v99[1] = v74;
          v67 = sub_100AE5050(v99, v100);
LABEL_36:
          v71 = v67;
          v72 = v68;
        }

        sub_10002640C(*(v9 + 6), *(v9 + 7));
        *(v9 + 6) = v71;
        *(v9 + 7) = v72;
        goto LABEL_38;
      }

      *v9 = 3;
      v9[8] = 1;
LABEL_38:
      sub_100C5AD9C(v9, v6, type metadata accessor for CRLProto_Path.Element);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100B38CE0(0, v13[2] + 1, 1, v13);
      }

      v76 = v13[2];
      v75 = v13[3];
      if (v76 >= v75 >> 1)
      {
        v13 = sub_100B38CE0((v75 > 1), v76 + 1, 1, v13);
      }

      v12 += 7;
      v13[2] = v76 + 1;
      sub_100C585C0(v6, v13 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v76);
      *v89 = v13;
      result = sub_100C58624(v9, type metadata accessor for CRLProto_Path.Element);
      if (!--v11)
      {
        return result;
      }
    }

    if (v20)
    {
      *v9 = 1;
      v9[8] = 1;
      v110.x = 0.0;
      v110.y = 0.0;
      v107.x = v15;
      v107.y = v14;
      if (!CGPointEqualToPoint(v107, v110))
      {
        v54 = v15;
        v55 = v14;
        *v97 = v54;
        *&v97[1] = v55;
        v95 = &type metadata for UnsafeRawBufferPointer;
        v96 = &protocol witness table for UnsafeRawBufferPointer;
        v93 = v84;
        v94 = v83;
        v56 = sub_100020E58(&v93, &type metadata for UnsafeRawBufferPointer);
        v25 = *v56;
        if (*v56)
        {
          v57 = v56[1];
          v27 = v57 - v25;
          if (v57 != v25)
          {
            if (v27 <= 14)
            {
              memset(v90, 0, sizeof(v90));
              v91 = v57 - v25;
              memcpy(v90, v25, v57 - v25);
              v25 = *v90;
              v28 = v79 & 0xF00000000000000 | *&v90[8] | ((*&v90[12] | (v91 << 16)) << 32);
              v79 = v28;
              goto LABEL_26;
            }

            goto LABEL_45;
          }

          goto LABEL_24;
        }

LABEL_25:
        v28 = 0xC000000000000000;
        goto LABEL_26;
      }
    }

    else
    {
      *v9 = 0;
      v9[8] = 1;
      v108.x = 0.0;
      v108.y = 0.0;
      v105.x = v15;
      v105.y = v14;
      if (!CGPointEqualToPoint(v105, v108))
      {
        v22 = v15;
        v23 = v14;
        *v92 = v22;
        *&v92[1] = v23;
        v95 = &type metadata for UnsafeRawBufferPointer;
        v96 = &protocol witness table for UnsafeRawBufferPointer;
        v93 = v82;
        v94 = v81;
        v24 = sub_100020E58(&v93, &type metadata for UnsafeRawBufferPointer);
        v25 = *v24;
        if (*v24)
        {
          v26 = v24[1];
          v27 = v26 - v25;
          if (v26 != v25)
          {
            if (v27 <= 14)
            {
              memset(v90, 0, sizeof(v90));
              v91 = v26 - v25;
              memcpy(v90, v25, v26 - v25);
              v25 = *v90;
              v28 = v80 & 0xF00000000000000 | *&v90[8] | ((*&v90[12] | (v91 << 16)) << 32);
              v80 = v28;
LABEL_26:
              sub_100005070(&v93);
              goto LABEL_27;
            }

LABEL_45:
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v77 = __DataStorage.init(bytes:length:)();
            v78 = v77;
            if (v27 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v25 = swift_allocObject();
              *(v25 + 2) = 0;
              *(v25 + 3) = v27;
              v28 = v78 | 0x8000000000000000;
            }

            else
            {
              v25 = (v27 << 32);
              v28 = v77 | 0x4000000000000000;
            }

            goto LABEL_26;
          }

LABEL_24:
          v25 = 0;
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    v25 = 0;
    v28 = 0xC000000000000000;
LABEL_27:
    sub_10002640C(*(v9 + 2), *(v9 + 3));
    *(v9 + 2) = v25;
    *(v9 + 3) = v28;
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_100C581F4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLProto_Path(0);
  __chkstk_darwin(v5);
  v7 = (v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100C57B44(a2, v7);
  if (!v2)
  {
    sub_100C58578(&qword_101A16D68, type metadata accessor for CRLProto_Path, "\t48");
    v9 = Message.serializedData(partial:)();
    v11 = v10;
    sub_100C58624(v7, type metadata accessor for CRLProto_Path);
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    v12[1] = v9;
    v12[2] = v11;
    sub_10002A948(v13, v13[3]);
    sub_1006D63D4();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_10002640C(v9, v11);
    return sub_100005070(v13);
  }

  return result;
}

void sub_100C58390(char **a2@<X8>)
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (v3)
  {
  }

  else
  {
    v5 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
    v7 = v6;

    v8 = sub_100C5AB60(v5, v7);
    sub_10002640C(v5, v7);

    *a2 = v8;
  }
}

void *sub_100C5845C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100C5AE04(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100C584B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C5B090();
  v7 = sub_100C5B0E4();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

unint64_t sub_100C58524()
{
  result = qword_101A16D60;
  if (!qword_101A16D60)
  {
    result = swift_getWitnessTable(byte_1014A4B74, &type metadata for CRLBezierPathData, v0, v1);
    atomic_store(result, &qword_101A16D60);
  }

  return result;
}

uint64_t sub_100C58578(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100C585C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Path.Element(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C58624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100C58684(uint64_t a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = result;
    v5 = result;
    v6 = (a1 + 80);
    do
    {
      if (*v6 > 1u)
      {
        if (*v6 == 2)
        {
          [v5 curveToPoint:*(v6 - 6) controlPoint1:*(v6 - 5) controlPoint2:{*(v6 - 4), *(v6 - 3), *(v6 - 2), *(v6 - 1)}];
        }

        else
        {
          [v5 closePath];
        }
      }

      else
      {
        v7 = *(v6 - 6);
        v8 = *(v6 - 5);
        if (*v6)
        {
          [v5 lineToPoint:{v7, v8}];
        }

        else
        {
          [v5 moveToPoint:{v7, v8}];
        }
      }

      v6 += 7;
      --v3;
    }

    while (v3);

    return v4;
  }

  return result;
}

unint64_t sub_100C58780(char *a1, unint64_t a2, uint64_t a3)
{
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return 0;
    }

    v13 = *(a1 + 2);
    v12 = *(a1 + 3);
    _VF = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (_VF)
    {
      goto LABEL_121;
    }

    if (v11)
    {
      goto LABEL_8;
    }

    return v11;
  }

  if (v10)
  {
    goto LABEL_22;
  }

  v11 = BYTE6(a2);
  if (!BYTE6(a2))
  {
    return v11;
  }

LABEL_8:
  while (v11 != 4)
  {
    if (v11 != 8)
    {
      return 0;
    }

    if (v10 == 2)
    {
      goto LABEL_38;
    }

    if (v10 != 1)
    {
      __src = a1;
      LOWORD(v109) = a2;
      BYTE2(v109) = BYTE2(a2);
      BYTE3(v109) = BYTE3(a2);
      BYTE4(v109) = BYTE4(a2);
      v39 = (a2 >> 50) & 0x3F;
      BYTE5(v109) = BYTE5(a2);
      if (v39)
      {
        v3 = sub_100B39FD8((a2 >> 50) & 0x3F, 0);
        memcpy(v3 + 4, &__src, 4 * v39);
        goto LABEL_59;
      }

LABEL_58:
      v3 = _swiftEmptyArrayStorage;
      goto LABEL_59;
    }

    v15 = a1;
    v6 = ((a1 >> 32) - a1);
    if (a1 >> 32 < a1)
    {
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
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
    }

    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
      goto LABEL_57;
    }

    v17 = v16;
    v18 = __DataStorage._offset.getter();
    if (__OFSUB__(v15, v18))
    {
      goto LABEL_127;
    }

    v5 = (v15 - v18 + v17);
    v19 = __DataStorage._length.getter();
    if (!v5)
    {
      goto LABEL_58;
    }

    v20 = v19 >= v6 ? v6 : v19;
    if ((v20 + 3) < 7)
    {
      goto LABEL_58;
    }

    v4 = v20 / 4;
    v3 = sub_100B39FD8(v20 / 4, 0);
    a1 = sub_100F86748(v3 + 4, v4, v5, v4);
    if (a3 == v4)
    {
      goto LABEL_59;
    }

    __break(1u);
LABEL_22:
    LODWORD(v11) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_122;
    }

    v11 = v11;
    if (!v11)
    {
      return v11;
    }
  }

  if ((a3 & 1) == 0)
  {
    return 0;
  }

  if (v10 == 2)
  {
    v40 = *(a1 + 2);
    v41 = *(a1 + 3);
    v42 = __DataStorage._bytes.getter();
    if (v42)
    {
      v43 = v42;
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v40, v44))
      {
        goto LABEL_130;
      }

      v45 = (v40 - v44 + v43);
    }

    else
    {
      v45 = 0;
    }

    if (__OFSUB__(v41, v40))
    {
      goto LABEL_129;
    }

    v57 = __DataStorage._length.getter();
    if (!v45)
    {
      goto LABEL_75;
    }

    v58 = v57 >= v41 - v40 ? v41 - v40 : v57;
    if ((v58 + 1) < 3)
    {
      goto LABEL_75;
    }

    v59 = v58;
    v60 = v58 / 2;
    v31 = sub_100B39C1C(v58 / 2, 0);
    sub_100F867B8(v31 + 4, v59 / 2, v45, v59 / 2);
    if (v61 == v60)
    {
      goto LABEL_76;
    }

    __break(1u);
LABEL_74:
    __DataStorage._length.getter();
LABEL_75:
    v31 = _swiftEmptyArrayStorage;
    goto LABEL_76;
  }

  if (v10 != 1)
  {
    __src = a1;
    LOWORD(v109) = a2;
    BYTE2(v109) = BYTE2(a2);
    BYTE3(v109) = BYTE3(a2);
    BYTE4(v109) = BYTE4(a2);
    v46 = (a2 >> 49) & 0x7F;
    BYTE5(v109) = BYTE5(a2);
    if (v46)
    {
      v31 = sub_100B39C1C((a2 >> 49) & 0x7F, 0);
      memcpy(v31 + 4, &__src, 2 * v46);
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v21 = a1;
  v22 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    goto LABEL_128;
  }

  v23 = __DataStorage._bytes.getter();
  if (!v23)
  {
    goto LABEL_74;
  }

  v24 = v23;
  v25 = __DataStorage._offset.getter();
  if (__OFSUB__(v21, v25))
  {
    goto LABEL_131;
  }

  v26 = (v21 - v25 + v24);
  v27 = __DataStorage._length.getter();
  if (!v26)
  {
    goto LABEL_75;
  }

  v28 = v27 >= v22 ? v22 : v27;
  if ((v28 + 1) < 3)
  {
    goto LABEL_75;
  }

  v29 = v28;
  v30 = v28 / 2;
  v31 = sub_100B39C1C(v28 / 2, 0);
  a1 = sub_100F867B8(v31 + 4, v29 / 2, v26, v29 / 2);
  if (v32 != v30)
  {
    __break(1u);
LABEL_38:
    v33 = *(a1 + 2);
    v34 = *(a1 + 3);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = v35;
      v37 = __DataStorage._offset.getter();
      if (__OFSUB__(v33, v37))
      {
        goto LABEL_126;
      }

      v38 = (v33 - v37 + v36);
    }

    else
    {
      v38 = 0;
    }

    if (__OFSUB__(v34, v33))
    {
      goto LABEL_125;
    }

    v47 = __DataStorage._length.getter();
    if (!v38)
    {
      goto LABEL_58;
    }

    v48 = v47 >= v34 - v33 ? v34 - v33 : v47;
    if ((v48 + 3) < 7)
    {
      goto LABEL_58;
    }

    v49 = v48 / 4;
    v3 = sub_100B39FD8(v48 / 4, 0);
    sub_100F86748(v3 + 4, v49, v38, v49);
    if (v50 != v49)
    {
      __break(1u);
LABEL_57:
      __DataStorage._length.getter();
      goto LABEL_58;
    }

LABEL_59:
    v51 = v3[2];
    if (v51)
    {
      __src = _swiftEmptyArrayStorage;
      sub_100776504(0, v51, 0);
      v52 = __src;
      v53 = __src[2];
      v54 = 32;
      do
      {
        v55 = *(v3 + v54);
        __src = v52;
        v56 = v52[3];
        if (v53 >= v56 >> 1)
        {
          sub_100776504((v56 > 1), v53 + 1, 1);
          v52 = __src;
        }

        v52[2] = v53 + 1;
        *&v52[v53 + 4] = v55;
        v54 += 4;
        ++v53;
        --v51;
      }

      while (v51);
LABEL_81:

      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_76:
  v62 = v31[2];
  if (v62)
  {
    __src = _swiftEmptyArrayStorage;
    sub_100776504(0, v62, 0);
    v52 = __src;
    v63 = __src[2];
    v64 = 32;
    do
    {
      _H8 = *(v31 + v64);
      __src = v52;
      v66 = v52[3];
      if (v63 >= v66 >> 1)
      {
        sub_100776504((v66 > 1), v63 + 1, 1);
        v52 = __src;
      }

      __asm { FCVT            D0, H8 }

      v52[2] = v63 + 1;
      v52[v63 + 4] = _D0;
      v64 += 2;
      ++v63;
      --v62;
    }

    while (v62);
    goto LABEL_81;
  }

LABEL_82:

  v52 = _swiftEmptyArrayStorage;
LABEL_83:
  if (v52[2] != 2)
  {
LABEL_112:

    return 0;
  }

  v70 = v52[4];
  v71 = v52[5];

  v11 = v70;
  if ((~v70 & 0x7FF0000000000000) != 0 && (~v71 & 0x7FF0000000000000) != 0)
  {
    return v11;
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  __src = v70;
  v109 = v71;
  type metadata accessor for CGPoint(0);
  v72 = String.init<A>(describing:)();
  v7 = v73;
  *(inited + 56) = &type metadata for String;
  v4 = sub_1000053B0();
  *(inited + 32) = v72;
  v5 = (inited + 32);
  *(inited + 64) = v4;
  *(inited + 40) = v7;
  v107 = objc_opt_self();
  LODWORD(v7) = [v107 _atomicIncrementAssertCount];
  __src = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &__src, "Corrupt bezier path point detected %{public}@. Using a default (0, 0) point instead to avoid a crash.", 101, 2u);
  StaticString.description.getter("decodeRawPoint(fromPointData:allow16BitDecode:)", 47, 2);
  v8 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathData.swift", 88, 2);
  v74 = String._bridgeToObjectiveC()();

  v75 = [v74 lastPathComponent];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v76;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_123;
  }

LABEL_87:
  v77 = static OS_os_log.crlAssert;
  v78 = swift_initStackObject();
  *(v78 + 16) = xmmword_10146CA70;
  *(v78 + 56) = &type metadata for Int32;
  *(v78 + 64) = &protocol witness table for Int32;
  *(v78 + 32) = v7;
  v79 = sub_1005CF000();
  *(v78 + 96) = v79;
  v80 = sub_100C58578(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(v78 + 72) = v8;
  *(v78 + 136) = &type metadata for String;
  *(v78 + 144) = v4;
  *(v78 + 104) = v80;
  *(v78 + 112) = v3;
  *(v78 + 120) = v6;
  *(v78 + 176) = &type metadata for UInt;
  *(v78 + 184) = &protocol witness table for UInt;
  *(v78 + 152) = 279;
  v81 = __src;
  *(v78 + 216) = v79;
  *(v78 + 224) = v80;
  *(v78 + 192) = v81;
  v82 = v8;
  v83 = v81;
  v84 = static os_log_type_t.error.getter();
  sub_100005404(v77, &_mh_execute_header, v84, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v78);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v85 = static os_log_type_t.error.getter();
  sub_100005404(v77, &_mh_execute_header, v85, "Corrupt bezier path point detected %{public}@. Using a default (0, 0) point instead to avoid a crash.", 101, 2, inited);

  type metadata accessor for __VaListBuilder();
  v8 = swift_allocObject();
  v8[2] = 8;
  v8[3] = 0;
  v86 = v8 + 3;
  v8[4] = 0;
  v8[5] = 0;
  v7 = *(inited + 16);
  v3 = inited;
  if (v7)
  {
    inited = 0;
    while (1)
    {
      v87 = &v5[40 * inited];
      v6 = *(v87 + 3);
      v4 = sub_100020E58(v87, v6);
      v88 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v89 = *v86;
      v90 = *(v88 + 16);
      _VF = __OFADD__(*v86, v90);
      v91 = *v86 + v90;
      if (_VF)
      {
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        swift_once();
        goto LABEL_87;
      }

      v4 = v8[4];
      if (v4 >= v91)
      {
        goto LABEL_104;
      }

      if (v4 + 0x4000000000000000 < 0)
      {
        goto LABEL_119;
      }

      v6 = v8[5];
      if (2 * v4 > v91)
      {
        v91 = 2 * v4;
      }

      v8[4] = v91;
      if ((v91 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_120;
      }

      v92 = v5;
      v93 = v3;
      v94 = v88;
      v95 = swift_slowAlloc();
      v96 = v95;
      v8[5] = v95;
      if (v6)
      {
        break;
      }

      v88 = v94;
      v3 = v93;
      v5 = v92;
      if (!v96)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

LABEL_105:
      v98 = *(v88 + 16);
      if (v98)
      {
        v99 = (v88 + 32);
        v100 = *v86;
        while (1)
        {
          v101 = *v99++;
          *&v96[8 * v100] = v101;
          v100 = *v86 + 1;
          if (__OFADD__(*v86, 1))
          {
            break;
          }

          *v86 = v100;
          if (!--v98)
          {
            goto LABEL_89;
          }
        }

        __break(1u);
        goto LABEL_118;
      }

LABEL_89:

      if (++inited == v7)
      {
        goto LABEL_114;
      }
    }

    if (v95 != v6 || v95 >= &v6[8 * v89])
    {
      memmove(v95, v6, 8 * v89);
    }

    v4 = v8;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v88 = v94;
    v3 = v93;
    v5 = v92;
LABEL_104:
    v96 = v8[5];
    if (!v96)
    {
      goto LABEL_111;
    }

    goto LABEL_105;
  }

LABEL_114:
  v102 = __VaListBuilder.va_list()();
  StaticString.description.getter("decodeRawPoint(fromPointData:allow16BitDecode:)", 47, 2);
  v103 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathData.swift", 88, 2);
  v104 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Corrupt bezier path point detected %{public}@. Using a default (0, 0) point instead to avoid a crash.", 101, 2);
  v105 = String._bridgeToObjectiveC()();

  [v107 handleFailureInFunction:v103 file:v104 lineNumber:279 isFatal:0 format:v105 args:v102];

  swift_setDeallocating();
  swift_arrayDestroy();
  return 0;
}