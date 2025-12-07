void sub_100731D28(char a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) = 1;
  if (qword_1019F2108 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlAssetDownloadManager;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v6 = UUID.uuidString.getter();
  v8 = v7;
  *(inited + 56) = &type metadata for String;
  v9 = sub_1000053B0();
  *(inited + 64) = v9;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v10 = *(v2 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts);
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = v10;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v11, "Asset %{public}@ download was cancelled on the %d attempt", 57, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  if (*(v2 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask))
  {

    Task.cancel()();
  }

  else if (a1)
  {
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v34 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v34, "Download task was expected during cancellation.", 47, 2u);
    StaticString.description.getter("cancelDownload(expectDownloadTask:)", 35, 2);
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_10146CA70;
    *(v21 + 56) = &type metadata for Int32;
    *(v21 + 64) = &protocol witness table for Int32;
    *(v21 + 32) = v13;
    v22 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v21 + 96) = v22;
    v23 = sub_1005CF04C();
    *(v21 + 72) = v14;
    *(v21 + 136) = &type metadata for String;
    *(v21 + 144) = v9;
    *(v21 + 104) = v23;
    *(v21 + 112) = v17;
    *(v21 + 120) = v19;
    *(v21 + 176) = &type metadata for UInt;
    *(v21 + 184) = &protocol witness table for UInt;
    *(v21 + 152) = 471;
    v24 = v34;
    *(v21 + 216) = v22;
    *(v21 + 224) = v23;
    *(v21 + 192) = v24;
    v25 = v14;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
    swift_setDeallocating();
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "Download task was expected during cancellation.", 47, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter("cancelDownload(expectDownloadTask:)", 35, 2);
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Download task was expected during cancellation.", 47, 2);
    v33 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v31 file:v32 lineNumber:471 isFatal:0 format:v33 args:v30];
  }
}

void sub_100732218(uint64_t a1)
{
  v69 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin(v2);
  v61 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1005B981C(&qword_1019FD558, &qword_1014787E0);
  __chkstk_darwin(v66);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v58 - v7;
  v8 = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_observers;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v67 = v9;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  while (v13)
  {
    v68 = v16;
LABEL_11:
    v18 = __clz(__rbit64(v13)) | (v15 << 6);
    v19 = v67;
    v20 = *(v67 + 48);
    v21 = type metadata accessor for UUID();
    v22 = *(v21 - 8);
    v23 = v64;
    (*(v22 + 16))(v64, v20 + *(v22 + 72) * v18, v21);
    v24 = *(*(v19 + 56) + 8 * v18);
    v25 = v66;
    *&v23[*(v66 + 48)] = v24;
    v26 = v23;
    v27 = v65;
    sub_10003DFF8(v26, v65, &qword_1019FD558, &qword_1014787E0);
    v28 = *(v27 + *(v25 + 48));
    swift_beginAccess();
    v29 = *(v28 + 16);

    (*(v22 + 8))(v27, v21);
    v30 = *(v29 + 16);
    v16 = v68;
    v31 = v68[2];
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      aBlock[0] = v17;

      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v32 > v16[3] >> 1)
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      v16 = sub_100B36058(isUniquelyReferenced_nonNull_native, v34, 1, v16);
    }

    v13 &= v13 - 1;
    if (*(v29 + 16))
    {
      v17 = v16[2];
      if ((v16[3] >> 1) - v17 < v30)
      {
        goto LABEL_51;
      }

      sub_1005B981C(&qword_1019FD560, &unk_1014787E8);
      swift_arrayInitWithCopy();

      if (v30)
      {
        v35 = v16[2];
        v36 = __OFADD__(v35, v30);
        v17 = v35 + v30;
        if (v36)
        {
          goto LABEL_52;
        }

        v16[2] = v17;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_50;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v68 = v16;
      v15 = v17;
      goto LABEL_11;
    }
  }

  v37 = v16[2];
  v38 = _swiftEmptyArrayStorage;
  if (v37)
  {
    v39 = 0;
    v40 = v16 + 6;
    v67 = v37 - 1;
    v68 = v16 + 6;
LABEL_25:
    v41 = &v40[3 * v39];
    v42 = v39;
    do
    {
      v17 = v16[2];
      if (v42 >= v17)
      {
        goto LABEL_48;
      }

      v43 = *(v41 - 1);
      v44 = *v41;
      v45 = *(v41 - 2);
      v46 = swift_allocObject();
      *(v46 + 16) = v43;
      *(v46 + 24) = v44;
      type metadata accessor for CRLAssetDownloadObserverStatus(0);
      v17 = v69;
      if (v69 > 1)
      {
        if (v69 == 2)
        {
          if ((v45 & 4) != 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v69 != 3)
          {
            goto LABEL_53;
          }

          if ((v45 & 8) != 0)
          {
LABEL_39:
            v47 = swift_allocObject();
            *(v47 + 16) = sub_1005D9254;
            *(v47 + 24) = v46;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = sub_100B375C8(0, v38[2] + 1, 1, v38);
            }

            v49 = v38[2];
            v48 = v38[3];
            if (v49 >= v48 >> 1)
            {
              v38 = sub_100B375C8((v48 > 1), v49 + 1, 1, v38);
            }

            v39 = v42 + 1;
            v38[2] = v49 + 1;
            v50 = &v38[2 * v49];
            v50[4] = sub_1007349F4;
            v50[5] = v47;
            v40 = v68;
            if (v67 != v42)
            {
              goto LABEL_25;
            }

            break;
          }
        }
      }

      else if (v69)
      {
        if (v69 != 1)
        {
          goto LABEL_53;
        }

        if ((v45 & 2) != 0)
        {
          goto LABEL_39;
        }
      }

      else if (v45)
      {
        goto LABEL_39;
      }

      ++v42;

      v41 += 3;
    }

    while (v37 != v42);
  }

  if (v38[2])
  {
    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v51 = static OS_dispatch_queue.main.getter();
    v52 = swift_allocObject();
    v53 = v69;
    *(v52 + 16) = v38;
    *(v52 + 24) = v53;
    aBlock[4] = sub_100734A20;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_101884728;
    v54 = _Block_copy(aBlock);
    v55 = v58;
    static DispatchQoS.unspecified.getter();
    v70 = _swiftEmptyArrayStorage;
    sub_100734A28(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
    v56 = v61;
    v57 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);

    (*(v62 + 8))(v56, v57);
    (*(v59 + 8))(v55, v60);
  }

  else
  {
  }
}

void sub_100732A3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);
      v6 = a2;

      v5(&v6);

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

void sub_100732AB0(uint64_t a1)
{
  v5 = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask;
  if (!*&v1[OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask])
  {
    goto LABEL_4;
  }

  v29 = a1;
  v1 = objc_opt_self();

  v27 = v1;
  LODWORD(v1) = [v1 _atomicIncrementAssertCount];
  v30 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v30, "expected nil value, but non-nil found", 37, 2u);
  StaticString.description.getter("notifyDownloadStarted(downloadTask:)", 36, 2);
  v2 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v6 lastPathComponent];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v8;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v1;
    v11 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v2;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v3;
    *(inited + 120) = v4;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 499;
    v14 = v30;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v2;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    v4 = &_mh_execute_header;
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter("notifyDownloadStarted(downloadTask:)", 36, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
    v2 = v22;
    v23 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v21 file:v3 lineNumber:499 isFatal:0 format:v23 args:v20];

    v1 = v28;
    a1 = v29;
LABEL_4:
    *&v1[v5] = a1;

    v1[OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled] = 0;
    v24 = *&v1[OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  *&v1[OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts] = v26;
  sub_100732218(0);
}

void sub_100732EB8()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask) = 0;

  *(v0 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) = 0;
  if (qword_1019F2108 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlAssetDownloadManager;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = *(v1 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts);
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = v7;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v8, "Successful asset %{public}@ download on attempt %d", 50, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  sub_100732218(1);
}

void sub_100733038()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask;
  if (!*(v0 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask))
  {
    v32 = objc_opt_self();
    v3 = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33, "invalid nil value found", 23, 2u);
    StaticString.description.getter("notifyFailure()", 15, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 516;
    v15 = v33;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("notifyFailure()", 15, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil value found", 23, 2);
    v24 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v22 file:v23 lineNumber:516 isFatal:0 format:v24 args:v21];
  }

  *(v1 + v2) = 0;

  *(v1 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) = 0;
  if (qword_1019F2108 != -1)
  {
    swift_once();
  }

  v25 = static OS_os_log.crlAssetDownloadManager;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_10146BDE0;
  v27 = UUID.uuidString.getter();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_1000053B0();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v30 = *(v1 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts);
  *(v26 + 96) = &type metadata for Int;
  *(v26 + 104) = &protocol witness table for Int;
  *(v26 + 72) = v30;
  v31 = static os_log_type_t.default.getter();
  sub_100005404(v25, &_mh_execute_header, v31, "Failed asset %{public}@ download on attempt %d", 46, 2, v26);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  sub_100732218(2);
}

void sub_100733528()
{
  v1 = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask;
  v2 = *(v0 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask);
  if (!v2)
  {
    v68 = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask;
    v9 = v0;
    v10 = objc_opt_self();
    LODWORD(v0) = [v10 _atomicIncrementAssertCount];
    v69[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v69, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("notifyCancelled()", 17, 2);
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_5;
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v69[0] = v2;
  swift_retain_n();
  sub_1005B981C(&unk_101A13540, &qword_10149B6F0);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 32) = v4;
  v8 = inited + 32;
  *(inited + 64) = v7;
  *(inited + 40) = v6;
  if (swift_task_isCancelled())
  {

    swift_setDeallocating();
    sub_100005070((inited + 32));
    goto LABEL_35;
  }

  v68 = v1;
  v66 = objc_opt_self();
  v32 = [v66 _atomicIncrementAssertCount];
  v69[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, v69, "Task was expected to be cancelled. task=%@", 42, 2u);
  StaticString.description.getter("notifyCancelled()", 17, 2);
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
  v34 = String._bridgeToObjectiveC()();

  v35 = [v34 lastPathComponent];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v67 = v0;
  v39 = static OS_os_log.crlAssert;
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_10146CA70;
  *(v40 + 56) = &type metadata for Int32;
  *(v40 + 64) = &protocol witness table for Int32;
  *(v40 + 32) = v32;
  v41 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v40 + 96) = v41;
  v42 = sub_1005CF04C();
  v43 = v33;
  *(v40 + 72) = v33;
  *(v40 + 136) = &type metadata for String;
  *(v40 + 144) = v7;
  *(v40 + 104) = v42;
  *(v40 + 112) = v36;
  *(v40 + 120) = v38;
  *(v40 + 176) = &type metadata for UInt;
  *(v40 + 184) = &protocol witness table for UInt;
  *(v40 + 152) = 527;
  v10 = v69[0];
  *(v40 + 216) = v41;
  *(v40 + 224) = v42;
  *(v40 + 192) = v10;
  v44 = v43;
  v45 = v10;
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v39, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v40);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v47 = static os_log_type_t.error.getter();
  sub_100005404(v39, &_mh_execute_header, v47, "Task was expected to be cancelled. task=%@", 42, 2, inited);

  type metadata accessor for __VaListBuilder();
  v16 = swift_allocObject();
  v16[2] = 8;
  v16[3] = 0;
  v48 = v16 + 3;
  v16[4] = 0;
  v16[5] = 0;
  v14 = *(inited + 16);
  if (!v14)
  {
LABEL_33:
    v62 = __VaListBuilder.va_list()();
    StaticString.description.getter("notifyCancelled()", 17, 2);
    v63 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
    v64 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Task was expected to be cancelled. task=%@", 42, 2);
    v65 = String._bridgeToObjectiveC()();

    [v66 handleFailureInFunction:v63 file:v64 lineNumber:527 isFatal:0 format:v65 args:v62];

    swift_setDeallocating();
    swift_arrayDestroy();
    v0 = v67;
    goto LABEL_34;
  }

  v9 = 0;
  v11 = 40;
  while (1)
  {
    LODWORD(v0) = sub_100020E58((v8 + 40 * v9), *(v8 + 40 * v9 + 24));
    v49 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v50 = *v48;
    v51 = *(v49 + 16);
    v52 = __OFADD__(*v48, v51);
    v53 = *v48 + v51;
    if (v52)
    {
      break;
    }

    v0 = v16[4];
    if (v0 >= v53)
    {
      goto LABEL_25;
    }

    if (v0 + 0x4000000000000000 < 0)
    {
      goto LABEL_38;
    }

    v54 = v16[5];
    if (2 * v0 > v53)
    {
      v53 = 2 * v0;
    }

    v16[4] = v53;
    if ((v53 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_39;
    }

    v10 = v49;
    v55 = swift_slowAlloc();
    v56 = v55;
    v16[5] = v55;
    if (v54)
    {
      if (v55 != v54 || v55 >= &v54[8 * v50])
      {
        memmove(v55, v54, 8 * v50);
      }

      LODWORD(v0) = v16;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v49 = v10;
LABEL_25:
      v56 = v16[5];
      if (!v56)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    v49 = v10;
    if (!v56)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_26:
    v58 = *(v49 + 16);
    if (v58)
    {
      v59 = (v49 + 32);
      v60 = *v48;
      while (1)
      {
        v61 = *v59++;
        *&v56[8 * v60] = v61;
        v60 = *v48 + 1;
        if (__OFADD__(*v48, 1))
        {
          break;
        }

        *v48 = v60;
        if (!--v58)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      break;
    }

LABEL_10:

    if (++v9 == v14)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  swift_once();
LABEL_5:
  v17 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_10146CA70;
  *(v18 + 56) = &type metadata for Int32;
  *(v18 + 64) = &protocol witness table for Int32;
  *(v18 + 32) = v0;
  v19 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v18 + 96) = v19;
  v20 = sub_1005CF04C();
  *(v18 + 104) = v20;
  *(v18 + 72) = v11;
  *(v18 + 136) = &type metadata for String;
  v21 = sub_1000053B0();
  *(v18 + 112) = v14;
  *(v18 + 120) = v16;
  *(v18 + 176) = &type metadata for UInt;
  *(v18 + 184) = &protocol witness table for UInt;
  *(v18 + 144) = v21;
  *(v18 + 152) = 525;
  v22 = v69[0];
  *(v18 + 216) = v19;
  *(v18 + 224) = v20;
  *(v18 + 192) = v22;
  v23 = v11;
  v24 = v22;
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v18);
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
  StaticString.description.getter("notifyCancelled()", 17, 2);
  v29 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLAssetDownloadManager.swift", 95, 2);
  v30 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v31 = String._bridgeToObjectiveC()();

  [v10 handleFailureInFunction:v29 file:v30 lineNumber:525 isFatal:0 format:v31 args:v28];

  v0 = v9;
LABEL_34:
  v1 = v68;
LABEL_35:
  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) = 1;
  sub_100732218(3);
}

uint64_t sub_100733E6C()
{
  v1 = OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_assetUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100733F28(unint64_t a1)
{
  v27 = type metadata accessor for UUID();
  v2 = *(v27 - 8);
  __chkstk_darwin(v27);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (a1 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = _swiftEmptyArrayStorage;
    if (v10)
    {
      v28 = _swiftEmptyArrayStorage;
      result = sub_100776524(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v23 = v9;
      v24 = v7;
      v12 = 0;
      v11 = v28;
      v13 = a1;
      v25 = v2 + 32;
      v26 = a1 & 0xC000000000000001;
      do
      {
        if (v26)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v13 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = &v14[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
        v18 = *(v16 + 3);
        v17 = *(v16 + 4);
        sub_100020E58(v16, v18);
        (*(v17 + 24))(v18, v17);

        v28 = v11;
        v20 = v11[2];
        v19 = v11[3];
        if (v20 >= v19 >> 1)
        {
          sub_100776524((v19 > 1), v20 + 1, 1);
          v11 = v28;
        }

        ++v12;
        v11[2] = v20 + 1;
        (*(v2 + 32))(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v20, v4, v27);
        v13 = a1;
      }

      while (v10 != v12);
      v9 = v23;
      v7 = v24;
    }

    static TaskPriority.high.getter();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v9;
    v22[5] = v11;

    sub_100CA64C8(0, 0, v7, &unk_1014787D0, v22);

    return sub_10000CAAC(v7, &qword_1019FB750, &qword_10146F1B0);
  }

  return result;
}

uint64_t sub_100734264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v7 = type metadata accessor for UUID();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_100734328, a4, 0);
}

uint64_t sub_100734328()
{
  v1 = v0[20];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v4 = v0[19];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    swift_beginAccess();
    v7 = *(v3 + 16);
    v3 += 16;
    v6 = v7;
    v8 = (v3 - 8);
    v9 = *(v3 + 56);
    v26 = v4;
    v24 = v9;
    v25 = v7;
    v7(v0[23], v5, v0[21]);
    while (1)
    {
      v10 = *(v4 + 272);
      if (*(v10 + 16))
      {
        v11 = v0[23];

        v12 = sub_10003E994(v11);
        if (v13)
        {
          v14 = *(*(v10 + 56) + 8 * v12);

          *(v14 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_wasCancelled) = 1;
          if (qword_1019F2108 != -1)
          {
            swift_once();
          }

          v15 = static OS_os_log.crlAssetDownloadManager;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146BDE0;
          v17 = UUID.uuidString.getter();
          v19 = v18;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v17;
          *(inited + 40) = v19;
          v20 = *(v14 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadAttempts);
          *(inited + 96) = &type metadata for Int;
          *(inited + 104) = &protocol witness table for Int;
          *(inited + 72) = v20;
          v21 = static os_log_type_t.default.getter();
          sub_100005404(v15, &_mh_execute_header, v21, "Asset %{public}@ download was cancelled on the %d attempt", 57, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          if (*(v14 + OBJC_IVAR____TtCC8Freeform23CRLAssetDownloadManagerP33_57C3D83DDAF123485FE9A9EAF267205F16AssetRequestInfo_downloadTask))
          {

            Task.cancel()();
          }

          v4 = v26;
          v9 = v24;
          v6 = v25;
        }

        else
        {
        }
      }

      (*v8)(v0[23], v0[21]);
      v5 += v9;
      if (!--v2)
      {
        break;
      }

      v6(v0[23], v5, v0[21]);
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100734604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CRLAsset();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100733F28(v3);
}

uint64_t sub_10073466C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1007346A4()
{

  sub_10000CAAC(v0 + 176, &unk_1019FD5A0, &qword_101478868);

  sub_10000CAAC(v0 + 224, &qword_1019FD580, &qword_101478820);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100734724()
{
  sub_1007346A4();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for CRLAssetDownloadManager.AssetRequestInfo(uint64_t a1)
{
  result = qword_1019FD258;
  if (!qword_1019FD258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007347C8(uint64_t a1)
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

unint64_t sub_1007348E0()
{
  result = qword_1019FD548;
  if (!qword_1019FD548)
  {
    result = swift_getWitnessTable(byte_1014B0858, &type metadata for CRLAssetError, v0, v1);
    atomic_store(result, &qword_1019FD548);
  }

  return result;
}

uint64_t sub_100734934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100734264(a1, v4, v5, v7, v6);
}

uint64_t sub_100734A28(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_100734A9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D4C8;

  return sub_10072D864(v10, a1, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100734BE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100730650(a1, v4, v5, v6);
}

uint64_t sub_100734CA8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100734D98(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D3D4;

  return sub_10072D864(v10, a1, v8, v9, v1 + v6, v11, v12);
}

char *sub_100734EF4(uint64_t a1, void *a2)
{
  v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BC5DC(_swiftEmptyArrayStorage);
    v5 = v14;
  }

  else
  {
    v5 = _swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_observedObjects] = v5;
  *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting] = a1;
  v6 = [swift_unknownObjectRetain() interactiveCanvasController];
  v7 = [v6 changeNotifier];

  *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_changeNotifier] = v7;
  *&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CRLMiniFormatterStateManager();
  v8 = a2;
  v9 = objc_msgSendSuper2(&v15, "init");
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:"selectionPathDidChangeWithNotification:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:*&v11[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController]];

  sub_1007357AC();
  swift_unknownObjectRelease();

  return v11;
}

void *sub_100735088()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 editorController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = 0;
      v6 = (v5 + 16);
      v9[4] = sub_1007257EC;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = *"";
      v9[2] = sub_10066C70C;
      v9[3] = &unk_101884A40;
      v7 = _Block_copy(v9);

      [v4 enumerateEditorsOnStackUsingBlock:v7];

      _Block_release(v7);
      swift_beginAccess();
      v2 = *v6;
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

void sub_100735208(uint64_t a1, SEL *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_changeNotifier);
  if (v3)
  {
    v4 = v2;
    v5 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = v3;

      __CocoaSet.makeIterator()();
      type metadata accessor for CRLBoardItem(0);
      sub_1006D2240();
      Set.Iterator.init(_cocoa:)();
      v5 = v23;
      v7 = v24;
      v8 = v25;
      v9 = v26;
      v10 = v27;
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      v7 = a1 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(a1 + 56);
      v14 = v3;

      v9 = 0;
    }

    v15 = (v8 + 64) >> 6;
    if (v5 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v16 = v9;
      v17 = v10;
      v18 = v9;
      if (!v10)
      {
        break;
      }

LABEL_13:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v5 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
LABEL_19:
        sub_100035F90(v5);

        return;
      }

      while (1)
      {
        [v3 *a2];

        v9 = v18;
        v10 = v19;
        if ((v5 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for CRLBoardItem(0);
          swift_dynamicCast();
          v20 = v22;
          v18 = v9;
          v19 = v10;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_19;
      }

      v17 = *(v7 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void CRLMiniFormatterStateManager.processChanges(_:forChangeSource:)(uint64_t a1, uint64_t a2)
{
  if ((v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode] & 1) == 0)
  {
    v5 = [*&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting] interactiveCanvasController];
    if (v5)
    {
      v6 = v5;
      sub_100064288(a2, v11);
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = v2;
      sub_10000BF3C(v11, (v7 + 32));
      v10[4] = sub_100735CC4;
      v10[5] = v7;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = *"";
      v10[2] = sub_100007638;
      v10[3] = &unk_1018848E0;
      v8 = _Block_copy(v10);

      v9 = v2;

      [v6 performBlockOnMainThreadAfterLayoutIfNecessary:v8];
      _Block_release(v8);
    }
  }
}

void sub_10073554C(void *a1)
{
  v2 = v1;
  v3 = [a1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v6;
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v7 = sub_1000640CC(v18), (v8 & 1) != 0))
    {
      sub_100064288(*(v5 + 56) + 32 * v7, v21);
      sub_100064234(v18);

      sub_100006370(0, &qword_1019FCBC0, off_10182F938);
      if (swift_dynamicCast())
      {
        v9 = v19;
        v10 = [*&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController] selectionPath];
        if (v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode] == 1 || (v11 = [*&v2[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting] interactiveCanvasController]) == 0)
        {
        }

        else
        {
          v12 = v11;
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v2;
          v13[4] = v9;
          v18[4] = sub_100736534;
          v18[5] = v13;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = *"";
          v18[2] = sub_100007638;
          v18[3] = &unk_1018849F0;
          v14 = _Block_copy(v18);
          v15 = v10;
          v16 = v2;
          v17 = v9;

          [v12 performBlockOnMainThreadAfterLayoutIfNecessary:v14];

          _Block_release(v14);
        }
      }
    }

    else
    {

      sub_100064234(v18);
    }
  }
}

void sub_1007357AC()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1019F2368 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD80C8;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_10073652C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = *"";
  v5[2] = sub_100059694;
  v5[3] = &unk_1018849A0;
  v3 = _Block_copy(v5);

  v4 = [v0 addObserverForName:v1 object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

void sub_1007359FC(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    v17 = *((swift_isaMask & *a2) + 0x138);
    v16 = *((swift_isaMask & *a2) + 0x120);
    v15 = *((swift_isaMask & *a2) + 0x100);
    v14 = a3;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v17(&v18, v8, a3);
      if (v19)
      {
        sub_100050F74(&v18, v20);
        (*((swift_isaMask & *a2) + 0x140))(v20);
        sub_100005070(v20);
      }

      else
      {
        sub_10000CAAC(&v18, &qword_1019FD6C8, &unk_1014788F0);
      }

      if (v16(v9, a3))
      {
        (*((swift_isaMask & *a2) + 0x128))();
      }

      v10 = v15(v9, a3);
      if (v10)
      {
        v11 = v10;
        v12 = *((swift_isaMask & *a2) + 0x118);
        v13 = v9;
        v12(v11, v9, 0, 1);
        a3 = v14;
      }

      ++v7;
    }

    while (v6 != v7);
  }
}

void sub_100735D64(void *a1, void *a2, void *a3)
{
  sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
  v6 = [*(a2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController) selectionPath];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    (*((swift_isaMask & *a2) + 0x130))(&v13, a3, a1);
    if (v14)
    {
      sub_100050F74(&v13, v15);
      (*((swift_isaMask & *a2) + 0x140))(v15);
      sub_100005070(v15);
    }

    else
    {
      sub_10000CAAC(&v13, &qword_1019FD6C8, &unk_1014788F0);
    }

    v8 = (*((swift_isaMask & *a2) + 0xF8))(a3, a1);
    if (v8)
    {
      v9 = v8;
      v10 = *((swift_isaMask & *a2) + 0x118);
      v11 = a3;
      v12 = a1;
      v10(v9, a3, a1, 0);
    }
  }
}

double sub_100735FE8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id CRLMiniFormatterStateManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterStateManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10073611C()
{
  if ((*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode) = 1;
    v1 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 editingCoordinator];

      if (v3)
      {
        if (*&v3[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator])
        {
          sub_100833EBC(0xD00000000000001BLL, 0x8000000101562840);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_100736200()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode) == 1)
  {
    v1 = v0;
    *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode) = 0;
    v2 = [*(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting) interactiveCanvasController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 editingCoordinator];

      if (v4)
      {
        if (!*&v4[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator])
        {
          __break(1u);
          return;
        }

        sub_1008346E4(0xD00000000000001BLL, 0x8000000101562840);
      }
    }

    v5 = (*((swift_isaMask & *v1) + 0x110))();
    if (v5)
    {
      (*((swift_isaMask & *v1) + 0x118))(v5, 2, 0, 2);
    }
  }
}

void sub_100736378(uint64_t a1, uint64_t a2)
{
  v2 = Notification.userInfo.getter();
  if (v2)
  {
    v3 = v2;
    *&v10[0] = 0xD000000000000021;
    *(&v10[0] + 1) = 0x8000000101562810;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v4 = sub_1000640CC(v11), (v5 & 1) != 0))
    {
      sub_100064288(*(v3 + 56) + 32 * v4, v10);
      sub_100064234(v11);

      sub_10000CAAC(v10, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        if ((*(Strong + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode) & 1) == 0)
        {
          v9 = (*((swift_isaMask & *Strong) + 0x108))(Strong, v7);
          if (v9)
          {
            (*((swift_isaMask & *v8) + 0x118))(v9, 1);
          }
        }
      }
    }

    else
    {

      sub_100064234(v11);
      memset(v10, 0, sizeof(v10));
      sub_10000CAAC(v10, &unk_1019F4D00, &unk_10146E7F0);
    }
  }
}

void sub_100736558(void *a1, id a2)
{
  v4 = *(v2 + 16);
  v5 = [a2 ownerName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0xE000000000000000;
  }

  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_13;
  }

  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v10)
  {

LABEL_13:

    goto LABEL_14;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    v13 = &selRef_sharedCloudDatabase;
    goto LABEL_15;
  }

LABEL_14:
  v13 = &selRef_privateCloudDatabase;
LABEL_15:
  v14 = [v4 *v13];
  [a1 setDatabase:v14];
  [v14 addOperation:a1];
}

uint64_t sub_1007366B8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100736714(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v32 = a2;
  v7 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v33 = type metadata accessor for UUID();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v34 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3;
  if (a3)
  {
    v30 = v9;
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.assetManagement;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(inited + 56) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 64) = v16;
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v16;
    *(inited + 72) = v17;
    *(inited + 80) = v18;
    v19 = static os_log_type_t.default.getter();
    sub_100005404(v29, &_mh_execute_header, v19, "CRLCloudAssetDownloader _downloadFinished(assetUUID:%@, result: failed) - %@ ", 77, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v9 = v30;
  }

  else
  {
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.assetManagement;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_10146C6B0;
    v22 = UUID.uuidString.getter();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_1000053B0();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v25 = static os_log_type_t.default.getter();
    sub_100005404(v20, &_mh_execute_header, v25, "CRLCloudAssetDownloader _downloadFinished(assetUUID:%@, result: success) ", 73, 2, v21);
    swift_setDeallocating();
    sub_100005070((v21 + 32));
  }

  swift_beginAccess();
  if (*(*(v4 + 176) + 16))
  {

    sub_10003E994(a1);
    if (v26)
    {

      sub_10073AE24(v32, v31 & 1);
    }

    else
    {
    }
  }

  v27 = v34;
  (*(v10 + 16))(v34, a1, v33);
  swift_beginAccess();
  sub_100BC389C(0, v27);
  swift_endAccess();
  swift_beginAccess();
  sub_100ED6D70(a1, v9);
  sub_10000CAAC(v9, &qword_1019F6990, &qword_10146D2F0);
  return swift_endAccess();
}

uint64_t sub_100736B38(uint64_t a1)
{
  v2[51] = a1;
  v2[52] = v1;
  v3 = type metadata accessor for UUID();
  v2[53] = v3;
  v2[54] = *(v3 - 8);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();

  return _swift_task_switch(sub_100736C10, v1, 0);
}

uint64_t sub_100736C10()
{
  v1 = v0[51];
  v2 = v0[52];
  swift_beginAccess();
  v3 = *(v2 + 168);

  LOBYTE(v1) = sub_10079C3B4(v1, v3);

  if (v1)
  {
    v4 = v0[52];
    swift_beginAccess();
    v5 = *(v4 + 176);
    if (*(v5 + 16))
    {
      v6 = v0[51];

      v7 = sub_10003E994(v6);
      if (v8)
      {
        v9 = *(*(v5 + 56) + 8 * v7);
        swift_retain_n();

LABEL_10:
        v0[58] = v9;
        if (qword_1019F2270 != -1)
        {
          swift_once();
        }

        v19 = static OS_os_log.dataSync;
        v0[59] = static OS_os_log.dataSync;
        v0[60] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v21 = UUID.uuidString.getter();
        v23 = v22;
        *(inited + 56) = &type metadata for String;
        v24 = sub_1000053B0();
        v0[61] = v24;
        *(inited + 64) = v24;
        *(inited + 32) = v21;
        *(inited + 40) = v23;
        v25 = static os_log_type_t.default.getter();
        sub_100005404(v19, &_mh_execute_header, v25, "Waiting on an ongoing download for asset: %@", 44, 2, inited);
        swift_setDeallocating();
        sub_100005070((inited + 32));
        UUID.init()();
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_10146BDE0;
        v27 = UUID.uuidString.getter();
        *(v26 + 56) = &type metadata for String;
        *(v26 + 64) = v24;
        *(v26 + 32) = v27;
        *(v26 + 40) = v28;
        v29 = UUID.uuidString.getter();
        *(v26 + 96) = &type metadata for String;
        *(v26 + 104) = v24;
        *(v26 + 72) = v29;
        *(v26 + 80) = v30;
        v31 = static os_log_type_t.default.getter();
        sub_100005404(v19, &_mh_execute_header, v31, "Adding observer %{public}@ for asset %{public}@", 47, 2, v26);
        swift_setDeallocating();
        v0[62] = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v32 = swift_task_alloc();
        v0[63] = v32;
        *v32 = v0;
        v32[1] = sub_100737094;

        return sub_10073AA38();
      }
    }

    v17 = v0[51];
    sub_1005B981C(&qword_1019FD8B0, &qword_101478A38);
    v9 = swift_allocObject();
    *(v9 + 16) = _swiftEmptyArrayStorage;
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v4 + 176);
    *(v4 + 176) = 0x8000000000000000;
    sub_100A9E144(v9, v17, isUniquelyReferenced_nonNull_native);
    *(v4 + 176) = v33;
    swift_endAccess();
    goto LABEL_10;
  }

  v11 = v0[55];
  v10 = v0[56];
  v12 = v0[53];
  v13 = v0[54];
  (*(v13 + 16))(v11, v0[51], v12);
  swift_beginAccess();
  sub_100E6AF38(v10, v11);
  (*(v13 + 8))(v10, v12);
  swift_endAccess();
  v14 = swift_task_alloc();
  v0[66] = v14;
  *v14 = v0;
  v14[1] = sub_100737354;
  v15 = v0[51];

  return sub_100737690(v15);
}

uint64_t sub_100737094(uint64_t a1)
{
  v4 = *v2;
  v4[64] = v1;

  v5 = v4[52];

  if (v1)
  {
    v6 = sub_100737540;
  }

  else
  {
    v4[65] = a1;
    v6 = sub_1007371EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007371EC()
{
  v1 = v0[61];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[54];
  v14 = v0[53];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v6 = UUID.uuidString.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v6;
  *(inited + 40) = v7;
  v8 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v10, "Observer %{public}@ received asset download result for asset %{public}@", 71, 2, inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  (*(v4 + 8))(v3, v14);
  v11 = v0[65];

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_100737354(uint64_t a1)
{
  v4 = *v2;
  v4[67] = v1;

  v5 = v4[52];
  if (v1)
  {
    v6 = sub_1007375E4;
  }

  else
  {
    v4[68] = a1;
    v6 = sub_100737490;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100737490()
{
  v1 = v0[68];
  v2 = v0[51];

  sub_100736714(v2, v1, 0);

  v3 = v0[68];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100737540()
{
  v1 = v0[57];
  v2 = v0[53];
  v3 = v0[54];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1007375E4()
{
  v1 = v0[67];
  v2 = v0[51];
  swift_errorRetain();
  sub_100736714(v2, v1, 1);

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100737690(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = type metadata accessor for UUID();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = type metadata accessor for CRLAssetReferrerIdentifier(0);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = type metadata accessor for CRLCloudAssetDownloader.DownloadRequest(0);
  v2[54] = swift_task_alloc();
  v4 = type metadata accessor for CRLAssetAddress(0);
  v2[55] = v4;
  v2[56] = *(v4 - 8);
  v2[57] = swift_task_alloc();

  return _swift_task_switch(sub_10073785C, v1, 0);
}

uint64_t sub_10073785C()
{
  v38 = v0;
  static Task<>.checkCancellation()();
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.assetManagement;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v9, "CRLCloudAssetDownloader _downloadAsset(assetUUID:%@) ", 53, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[58] = Strong;
  if (Strong)
  {
    v11 = type metadata accessor for CRLBoardDataStore(0);
    v12 = swift_task_alloc();
    v0[59] = v12;
    *v12 = v0;
    v12[1] = sub_100737EB8;
    v13 = v0[42];

    return (sub_100DCCD2C)(v13, v11, &off_101884678);
  }

  else
  {
    v14 = objc_opt_self();
    v15 = [v14 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("_downloadAsset(assetUUID:)", 26, 2);
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLCloudAssetDownloader.swift", 88, 2);
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlAssert;
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_10146CA70;
    *(v23 + 56) = &type metadata for Int32;
    *(v23 + 64) = &protocol witness table for Int32;
    *(v23 + 32) = v15;
    v24 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v23 + 96) = v24;
    v25 = sub_1005CF04C();
    *(v23 + 72) = v16;
    *(v23 + 136) = &type metadata for String;
    *(v23 + 144) = v8;
    *(v23 + 104) = v25;
    *(v23 + 112) = v19;
    *(v23 + 120) = v21;
    *(v23 + 176) = &type metadata for UInt;
    *(v23 + 184) = &protocol witness table for UInt;
    *(v23 + 152) = 119;
    v26 = v37;
    *(v23 + 216) = v24;
    *(v23 + 224) = v25;
    *(v23 + 192) = v26;
    v27 = v16;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter("_downloadAsset(assetUUID:)", 26, 2);
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLCloudAssetDownloader.swift", 88, 2);
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v35 = String._bridgeToObjectiveC()();

    [v14 handleFailureInFunction:v33 file:v34 lineNumber:119 isFatal:0 format:v35 args:v32];

    sub_1007348E0();
    swift_allocError();
    *v36 = 0xD00000000000002CLL;
    v36[1] = 0x8000000101562C00;
    swift_willThrow();

    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_100737EB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 480) = a1;
  *(v4 + 488) = v1;

  v5 = *(v3 + 344);
  if (v1)
  {
    v6 = sub_100738820;
  }

  else
  {
    v6 = sub_100737FEC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100737FEC()
{
  v1 = *(v0 + 480);
  v2 = *(v1 + 16);
  *(v0 + 496) = v2;
  if (v2)
  {
    v4 = *(v0 + 440);
    v3 = *(v0 + 448);
    *(v0 + 504) = sub_100006370(0, &qword_1019F6E98, CKRecordID_ptr);
    v5 = *(v3 + 80);
    *(v0 + 568) = v5;
    result = sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
    *(v0 + 512) = result;
    *(v0 + 520) = CKCurrentUserDefaultName;
    *(v0 + 528) = 0u;
    if (*(v1 + 16))
    {
      v7 = (v5 + 32) & ~v5;
      v8 = *(v0 + 456);
      v9 = *(v0 + 400);
      sub_10073B2D4(v1 + v7, v8, type metadata accessor for CRLAssetAddress);
      v10 = *(v4 + 24);
      sub_10073B2D4(v8 + v10, v9, type metadata accessor for CRLAssetReferrerIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = *(v0 + 416);
      v13 = *(v0 + 400);
      if (EnumCaseMultiPayload == 1)
      {
        v14 = *(v0 + 352);
        v15 = *(v0 + 360);
        v16 = sub_1005B981C(&qword_1019F4720, &qword_101478A30);
        sub_10073B33C(v13 + *(v16 + 48), v12, type metadata accessor for CRLBoardIdentifier);
        (*(v15 + 8))(v13, v14);
      }

      else
      {
        sub_10073B33C(*(v0 + 400), *(v0 + 416), type metadata accessor for CRLBoardIdentifier);
      }

      sub_10073B2D4(v8 + v10, *(v0 + 392), type metadata accessor for CRLAssetReferrerIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = *(v0 + 392);
        v20 = *(v0 + 376);
        v22 = *(v0 + 352);
        v21 = *(v0 + 360);
        v23 = v19 + *(sub_1005B981C(&qword_1019F4720, &qword_101478A30) + 48);
        (*(v21 + 32))(v20, v19, v22);
      }

      else
      {
        v24 = *(v0 + 408);
        v25 = *(v0 + 376);
        v26 = *(v0 + 352);
        v27 = *(v0 + 360);
        sub_10073B33C(*(v0 + 392), v24, type metadata accessor for CRLBoardIdentifier);
        (*(v27 + 16))(v25, v24, v26);
        v23 = *(v0 + 408);
      }

      v28 = *(v0 + 416);
      v29 = *(v0 + 368);
      v31 = *(v0 + 352);
      v30 = *(v0 + 360);
      sub_100025C68(v23, type metadata accessor for CRLBoardIdentifier);
      v32 = UUID.uuidString.getter();
      v34 = v33;
      v35 = *(v30 + 16);
      v35(v29, v28, v31);
      v36 = (v28 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
      v37 = *v36;
      v38 = v36[1];
      v64 = v35;
      v62 = v34;
      v63 = v32;
      if (!*v36 && v38 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v39;
      }

      else
      {
      }

      v40 = *(v0 + 432);
      v60 = *(v0 + 440);
      v61 = *(v0 + 456);
      v41 = *(v0 + 424);
      v59 = *(v0 + 416);
      v42 = *(v0 + 368);
      v58 = *(v0 + 376);
      v44 = *(v0 + 352);
      v43 = *(v0 + 360);
      *(v0 + 320) = 0x5F6472616F42;
      *(v0 + 328) = 0xE600000000000000;
      v45._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v45);

      v46._countAndFlagsBits = v37;
      v46._object = v38;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(*(v0 + 320), v46).super.isa;
      v48 = *(v43 + 8);
      v48(v42, v44);
      v49._object = v62;
      v49._countAndFlagsBits = v63;
      v50 = CKRecordID.init(recordName:zoneID:)(v49, isa).super.isa;
      v48(v58, v44);
      sub_100025C68(v59, type metadata accessor for CRLBoardIdentifier);
      v51 = (v61 + *(v60 + 20));
      v53 = *v51;
      v52 = v51[1];
      v64(v40);
      *(v40 + v41[5]) = v50;
      v54 = (v40 + v41[6]);
      *v54 = v53;
      v54[1] = v52;
      v55 = (v40 + v41[7]);
      *v55 = v53;
      v55[1] = v52;
      swift_bridgeObjectRetain_n();
      v56 = swift_task_alloc();
      *(v0 + 544) = v56;
      *v56 = v0;
      v56[1] = sub_100738588;
      v57 = *(v0 + 432);

      return sub_100738E50(v57);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_1007348E0();
    swift_allocError();
    *v17 = xmmword_101478600;
    swift_willThrow();
    swift_unknownObjectRelease();

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

uint64_t sub_100738588(uint64_t a1)
{
  v4 = *v2;
  v4[69] = v1;

  v5 = v4[54];
  v6 = v4[43];
  if (v1)
  {
    sub_100025C68(v5, type metadata accessor for CRLCloudAssetDownloader.DownloadRequest);
    v7 = sub_1007388EC;
  }

  else
  {
    v4[70] = a1;
    sub_100025C68(v5, type metadata accessor for CRLCloudAssetDownloader.DownloadRequest);
    v7 = sub_10073870C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10073870C()
{
  sub_100025C68(v0[57], type metadata accessor for CRLAssetAddress);

  swift_unknownObjectRelease();

  v1 = v0[1];
  v2 = v0[70];

  return v1(v2);
}

uint64_t sub_100738820()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007388EC()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  v3 = *(v0 + 536) + 1;

  result = sub_100025C68(v2, type metadata accessor for CRLAssetAddress);
  v5 = *(v0 + 552);
  if (v3 == v1)
  {

    swift_willThrow();
    swift_unknownObjectRelease();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v7 = *(v0 + 536) + 1;
    *(v0 + 536) = v7;
    *(v0 + 528) = v5;
    v8 = *(v0 + 480);
    if (v7 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      v9 = *(v0 + 456);
      v10 = *(v0 + 440);
      v11 = *(v0 + 400);
      sub_10073B2D4(v8 + ((*(v0 + 568) + 32) & ~*(v0 + 568)) + *(*(v0 + 448) + 72) * v7, v9, type metadata accessor for CRLAssetAddress);
      v12 = *(v10 + 24);
      sub_10073B2D4(v9 + v12, v11, type metadata accessor for CRLAssetReferrerIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v14 = *(v0 + 416);
      v15 = *(v0 + 400);
      if (EnumCaseMultiPayload == 1)
      {
        v16 = *(v0 + 352);
        v17 = *(v0 + 360);
        v18 = sub_1005B981C(&qword_1019F4720, &qword_101478A30);
        sub_10073B33C(v15 + *(v18 + 48), v14, type metadata accessor for CRLBoardIdentifier);
        (*(v17 + 8))(v15, v16);
      }

      else
      {
        sub_10073B33C(*(v0 + 400), *(v0 + 416), type metadata accessor for CRLBoardIdentifier);
      }

      sub_10073B2D4(v9 + v12, *(v0 + 392), type metadata accessor for CRLAssetReferrerIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = *(v0 + 392);
        v20 = *(v0 + 376);
        v22 = *(v0 + 352);
        v21 = *(v0 + 360);
        v23 = v19 + *(sub_1005B981C(&qword_1019F4720, &qword_101478A30) + 48);
        (*(v21 + 32))(v20, v19, v22);
      }

      else
      {
        v24 = *(v0 + 408);
        v25 = *(v0 + 376);
        v26 = *(v0 + 352);
        v27 = *(v0 + 360);
        sub_10073B33C(*(v0 + 392), v24, type metadata accessor for CRLBoardIdentifier);
        (*(v27 + 16))(v25, v24, v26);
        v23 = *(v0 + 408);
      }

      v28 = *(v0 + 416);
      v29 = *(v0 + 368);
      v31 = *(v0 + 352);
      v30 = *(v0 + 360);
      sub_100025C68(v23, type metadata accessor for CRLBoardIdentifier);
      v32 = UUID.uuidString.getter();
      v34 = v33;
      v35 = *(v30 + 16);
      v35(v29, v28, v31);
      v36 = (v28 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
      v37 = *v36;
      v38 = v36[1];
      v64 = v35;
      v62 = v34;
      v63 = v32;
      if (!*v36 && v38 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v39;
      }

      else
      {
      }

      v40 = *(v0 + 432);
      v60 = *(v0 + 440);
      v61 = *(v0 + 456);
      v41 = *(v0 + 424);
      v59 = *(v0 + 416);
      v42 = *(v0 + 368);
      v58 = *(v0 + 376);
      v44 = *(v0 + 352);
      v43 = *(v0 + 360);
      *(v0 + 320) = 0x5F6472616F42;
      *(v0 + 328) = 0xE600000000000000;
      v45._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v45);

      v46._countAndFlagsBits = v37;
      v46._object = v38;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(*(v0 + 320), v46).super.isa;
      v48 = *(v43 + 8);
      v48(v42, v44);
      v49._object = v62;
      v49._countAndFlagsBits = v63;
      v50 = CKRecordID.init(recordName:zoneID:)(v49, isa).super.isa;
      v48(v58, v44);
      sub_100025C68(v59, type metadata accessor for CRLBoardIdentifier);
      v51 = (v61 + *(v60 + 20));
      v53 = *v51;
      v52 = v51[1];
      v64(v40);
      *(v40 + v41[5]) = v50;
      v54 = (v40 + v41[6]);
      *v54 = v53;
      v54[1] = v52;
      v55 = (v40 + v41[7]);
      *v55 = v53;
      v55[1] = v52;
      swift_bridgeObjectRetain_n();
      v56 = swift_task_alloc();
      *(v0 + 544) = v56;
      *v56 = v0;
      v56[1] = sub_100738588;
      v57 = *(v0 + 432);

      return sub_100738E50(v57);
    }
  }

  return result;
}

uint64_t sub_100738E50(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100738E70, v1, 0);
}

uint64_t sub_100738E70()
{
  v1 = v0[3];
  v23 = v0[4];
  v2 = [objc_allocWithZone(CKFetchRecordsOperation) init];
  v0[5] = v2;
  v3 = type metadata accessor for CRLCloudAssetDownloader.DownloadRequest(0);
  v4 = (v1 + v3[6]);
  v24 = *v4;
  v26 = v4[1];

  v5._countAndFlagsBits = 0x7465737341;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v6 = v24;
  v7 = v26;
  v8 = (v1 + v3[7]);
  v25 = *v8;
  v27 = v8[1];

  v9._countAndFlagsBits = 0x74654D7465737341;
  v9._object = 0xED00006174616461;
  String.append(_:)(v9);
  v10 = *(v1 + v3[5]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101465920;
  *(v11 + 32) = v10;
  sub_100006370(0, &qword_1019F6E98, CKRecordID_ptr);
  v12 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setRecordIDs:isa];

  sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146BDE0;
  *(v14 + 32) = v6;
  *(v14 + 40) = v7;
  *(v14 + 48) = v25;
  *(v14 + 56) = v27;
  CKFetchRecordsOperation.desiredKeys.setter();
  v15 = swift_task_alloc();
  v0[6] = v15;
  v15[2] = v2;
  v15[3] = v12;
  v15[4] = v1;
  v15[5] = v23;
  v16 = swift_task_alloc();
  v0[7] = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = v2;
  v18 = sub_10073B28C(&qword_1019FD8A0, v17, type metadata accessor for CRLCloudAssetDownloader, byte_1014789E0);
  v19 = v2;
  v20 = swift_task_alloc();
  v0[8] = v20;
  v21 = type metadata accessor for CRLAssetSyncRemoteRecord(0);
  *v20 = v0;
  v20[1] = sub_10073914C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_101478A20, v15, sub_10073A8EC, v16, v23, v18, v21);
}

uint64_t sub_10073914C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1007392F4;
  }

  else
  {
    v6 = v2 + 32;
    v5 = *(v2 + 32);

    v4 = sub_10073928C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10073928C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1007392F4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100739378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1007393A0, a5, 0);
}

uint64_t sub_1007393A0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 40);
  v3 = *(v2 + 48);
  v5 = sub_10073B28C(&qword_1019FD8A0, a2, type metadata accessor for CRLCloudAssetDownloader, byte_1014789E0);
  v6 = swift_task_alloc();
  *(v2 + 56) = v6;
  *(v6 + 16) = *(v2 + 24);
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  v7 = swift_task_alloc();
  *(v2 + 64) = v7;
  v8 = type metadata accessor for CRLAssetSyncRemoteRecord(0);
  *v7 = v2;
  v7[1] = sub_1007394E4;
  v9 = *(v2 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v3, v5, 0xD000000000000024, 0x8000000101562970, sub_10073B180, v6, v8);
}

uint64_t sub_1007394E4()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];

    return _swift_task_switch(sub_100739620, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_100739620()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100739684(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v27 = a5;
  v23 = a2;
  v24 = a4;
  v25 = a1;
  v6 = sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CRLCloudAssetDownloader.DownloadRequest(0);
  v11 = v10 - 8;
  v22 = *(v10 - 8);
  v12 = *(v22 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = _swiftEmptyDictionarySingleton;

  CKFetchRecordsOperation.perRecordResultBlock.setter();
  sub_10073B2D4(a4, v13, type metadata accessor for CRLCloudAssetDownloader.DownloadRequest);
  (*(v7 + 16))(v9, v25, v6);
  v15 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v18 = v26;
  *(v17 + 16) = v14;
  *(v17 + 24) = v18;
  sub_10073B33C(v13, v17 + v15, type metadata accessor for CRLCloudAssetDownloader.DownloadRequest);
  (*(v7 + 32))(v17 + v16, v9, v6);

  v19 = v18;
  v20 = v23;
  CKFetchRecordsOperation.fetchRecordsResultBlock.setter();
  [v20 setQueuePriority:4];
  sub_100020E58((v27 + 128), *(v27 + 152));
  v21 = [*(v24 + *(v11 + 28)) zoneID];
  sub_100736558(v20, v21);
}

uint64_t sub_100739970(void *a1, void *a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1;
  sub_1006CE2EC(a2, a3 & 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_100A9E2BC(a2, a3 & 1, v8, isUniquelyReferenced_nonNull_native);

  *(a4 + 16) = v11;
  return swift_endAccess();
}

void sub_100739A18(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 16);
  if (!*(v9 + 16) || (v10 = sub_1007C8B7C(a4), (v11 & 1) == 0))
  {
    swift_endAccess();
    if (a2)
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v29 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      v31 = [a4 recordName];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      *(inited + 56) = &type metadata for String;
      v35 = sub_1000053B0();
      *(inited + 64) = v35;
      *(inited + 32) = v32;
      *(inited + 40) = v34;
      v36 = [a4 zoneID];
      v37 = [v36 zoneName];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v35;
      *(inited + 72) = v38;
      *(inited + 80) = v40;
      swift_getErrorValue();
      v41 = Error.localizedDescription.getter();
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v35;
      *(inited + 112) = v41;
      *(inited + 120) = v42;
      v43 = static os_log_type_t.default.getter();
      sub_100005404(v29, &_mh_execute_header, v43, "Failed to download asset. RecordID: %@ zoneName: %@. Error %@", 61, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_errorRetain();
      sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
    }

    else
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v44 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v45 = swift_initStackObject();
      *(v45 + 16) = xmmword_10146C6B0;
      v46 = [a4 recordName];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_1000053B0();
      *(v45 + 32) = v47;
      *(v45 + 40) = v49;
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v50, "Encountered internal CloudKit logic error when fetching a record ID: %{public}@", 79, 2, v45);
      swift_setDeallocating();
      sub_100005070((v45 + 32));
      type metadata accessor for CKError(0);
      sub_1009F47A4(_swiftEmptyArrayStorage);
      sub_10073B28C(&qword_1019F3348, 255, type metadata accessor for CKError, byte_101468944);
      _BridgedStoredNSError.init(_:userInfo:)();
      sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
    }

    goto LABEL_14;
  }

  v12 = *(v9 + 56) + 16 * v10;
  v13 = *v12;
  v14 = *(v12 + 8);
  swift_endAccess();
  if (v14)
  {
    swift_errorRetain();
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v109 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_10146C4D0;
    v16 = [a4 recordName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v15 + 56) = &type metadata for String;
    v20 = sub_1000053B0();
    *(v15 + 64) = v20;
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    v21 = [a4 zoneID];
    v22 = [v21 zoneName];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v20;
    *(v15 + 72) = v23;
    *(v15 + 80) = v25;
    swift_getErrorValue();
    v26 = Error.localizedDescription.getter();
    *(v15 + 136) = &type metadata for String;
    *(v15 + 144) = v20;
    *(v15 + 112) = v26;
    *(v15 + 120) = v27;
    v28 = static os_log_type_t.default.getter();
    sub_100005404(v109, &_mh_execute_header, v28, "Failed to download asset. RecordID: %@ zoneName: %@. Error %@", 61, 2, v15);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
LABEL_14:
    CheckedContinuation.resume(throwing:)();
    return;
  }

  v108 = v13;
  v51 = qword_1019F2270;
  v13;
  if (v51 != -1)
  {
    swift_once();
  }

  v52 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_10146BDE0;
  v54 = [a4 recordName];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  *(v53 + 56) = &type metadata for String;
  v58 = sub_1000053B0();
  *(v53 + 64) = v58;
  *(v53 + 32) = v55;
  *(v53 + 40) = v57;
  v59 = [a4 zoneID];
  v60 = [v59 zoneName];

  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  *(v53 + 96) = &type metadata for String;
  *(v53 + 104) = v58;
  v64 = v58;
  *(v53 + 72) = v61;
  *(v53 + 80) = v63;
  v65 = static os_log_type_t.default.getter();
  sub_100005404(v52, &_mh_execute_header, v65, "Downloaded record containing asset. RecordID: %@ zoneName: %@", 61, 2, v53);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v66 = (a5 + *(type metadata accessor for CRLCloudAssetDownloader.DownloadRequest(0) + 24));
  v68 = *v66;
  v67 = v66[1];
  if (sub_100EE982C(*v66, v67))
  {
    v107 = v52;
    if (static UUID.== infix(_:_:)())
    {
      v69 = swift_initStackObject();
      *(v69 + 16) = xmmword_10146BDE0;
      v70 = [a4 recordName];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      *(v69 + 56) = &type metadata for String;
      *(v69 + 64) = v58;
      *(v69 + 32) = v71;
      *(v69 + 40) = v73;
      v74 = [a4 zoneID];
      v75 = [v74 zoneName];

      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      *(v69 + 96) = &type metadata for String;
      *(v69 + 104) = v58;
      *(v69 + 72) = v76;
      *(v69 + 80) = v78;
      v79 = static os_log_type_t.default.getter();
      sub_100005404(v107, &_mh_execute_header, v79, "Successfully downloaded asset. RecordID: %@ zoneName: %@", 56, 2, v69);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      v93 = swift_initStackObject();
      *(v93 + 16) = xmmword_10146C4D0;
      v94 = UUID.uuidString.getter();
      *(v93 + 56) = &type metadata for String;
      *(v93 + 64) = v64;
      *(v93 + 32) = v94;
      *(v93 + 40) = v95;
      v96 = [a4 recordName];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      *(v93 + 96) = &type metadata for String;
      *(v93 + 104) = v64;
      *(v93 + 72) = v97;
      *(v93 + 80) = v99;
      v100 = [a4 zoneID];
      v101 = [v100 zoneName];

      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      *(v93 + 136) = &type metadata for String;
      *(v93 + 144) = v64;
      *(v93 + 112) = v102;
      *(v93 + 120) = v104;
      v105 = static os_log_type_t.error.getter();
      sub_100005404(v52, &_mh_execute_header, v105, "Couldn't find asset with UUID %{public}@. RecordID: %@ zoneName: %@", 67, 2, v93);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1007348E0();
      swift_allocError();
      *v106 = xmmword_101478900;
      sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
      CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    v80 = swift_initStackObject();
    *(v80 + 16) = xmmword_10146C4D0;

    v81._countAndFlagsBits = 0x7465737341;
    v81._object = 0xE500000000000000;
    String.append(_:)(v81);
    *(v80 + 56) = &type metadata for String;
    *(v80 + 64) = v58;
    *(v80 + 32) = v68;
    *(v80 + 40) = v67;
    v82 = [a4 recordName];
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    *(v80 + 96) = &type metadata for String;
    *(v80 + 104) = v58;
    *(v80 + 72) = v83;
    *(v80 + 80) = v85;
    v86 = [a4 zoneID];
    v87 = [v86 zoneName];

    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    *(v80 + 136) = &type metadata for String;
    *(v80 + 144) = v58;
    *(v80 + 112) = v88;
    *(v80 + 120) = v90;
    v91 = static os_log_type_t.error.getter();
    sub_100005404(v52, &_mh_execute_header, v91, "Couldn't find asset with key %@. RecordID: %@ zoneName: %@", 58, 2, v80);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1007348E0();
    swift_allocError();
    *v92 = 0;
    v92[1] = 0;
    sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
    CheckedContinuation.resume(throwing:)();
  }

  sub_1006CCCD4(v108, 0);
}

id sub_10073A5AC(void *a1, void *a2)
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v6 = [a1 recordName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 56) = &type metadata for String;
  v10 = sub_1000053B0();
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v11 = [a1 zoneID];
  v12 = [v11 zoneName];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v10;
  *(inited + 72) = v13;
  *(inited + 80) = v15;
  v16 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v16, "Cancelling the asset fetch request because the task was cancelled. RecordID: %@ zoneName: %@", 92, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  return [a2 cancel];
}

uint64_t sub_10073A76C()
{
  sub_1000C1024(v0 + 112);
  sub_100005070((v0 + 128));

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for CRLCloudAssetDownloader.DownloadRequest(uint64_t a1)
{
  result = qword_1019FD920;
  if (!qword_1019FD920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10073A82C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_100739378(a1, v4, v5, v7, v6);
}

uint64_t sub_10073A8F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FD8C0, &unk_101478A50);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = *(*a2 + 88);
  swift_beginAccess();
  sub_10073B3AC(v6, a2 + v9);
  return swift_endAccess();
}

uint64_t sub_10073AA58()
{
  v1 = v0[6];
  sub_1005B981C(&qword_1019FD8B8, &qword_101478A48);
  v2 = swift_allocObject();
  v0[7] = v2;
  v3 = *(*v2 + 88);
  v4 = sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = type metadata accessor for CRLAssetSyncRemoteRecord(0);
  *v5 = v0;
  v5[1] = sub_10073AC3C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0x286576726573626FLL, 0xE900000000000029, sub_10073B3A4, v2, v6);
}

uint64_t sub_10073AC3C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10073ADC0;
  }

  else
  {
    *(v2 + 80) = *(v2 + 40);
    v3 = sub_10073AD58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10073AD58()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_10073ADC0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10073AE24(uint64_t a1, int a2)
{
  v3 = v2;
  v27 = a2;
  v26 = a1;
  v4 = sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_1005B981C(&qword_1019FD8C0, &unk_101478A50);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  swift_beginAccess();
  result = *(v3 + 16);
  if (result >> 62)
  {
    v22 = *(v3 + 16);
    v15 = _CocoaArrayWrapper.endIndex.getter();
    result = v22;
    if (!v15)
    {
      return result;
    }
  }

  else
  {
    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    v28 = result & 0xC000000000000001;
    v29 = result;
    v16 = (v5 + 48);
    v24 = (v5 + 8);
    v25 = (v5 + 16);
    v17 = (v5 + 56);

    v18 = 0;
    v19 = v15;
    do
    {
      if (v28)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v29 + 8 * v18 + 32);
      }

      v21 = *(*v20 + 88);
      swift_beginAccess();
      sub_10073B41C(v20 + v21, v13);
      if ((*v16)(v13, 1, v4))
      {
        sub_10000CAAC(v13, &qword_1019FD8C0, &unk_101478A50);
      }

      else
      {
        (*v25)(v7, v13, v4);
        sub_10000CAAC(v13, &qword_1019FD8C0, &unk_101478A50);
        v30 = v26;
        if (v27)
        {
          swift_errorRetain();
          CheckedContinuation.resume(throwing:)();
        }

        else
        {

          CheckedContinuation.resume(returning:)();
        }

        (*v24)(v7, v4);
      }

      ++v18;
      (*v17)(v10, 1, 1, v4);
      swift_beginAccess();
      sub_10073B3AC(v10, v20 + v21);
      swift_endAccess();
    }

    while (v19 != v18);
  }

  return result;
}

void sub_10073B198(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CRLCloudAssetDownloader.DownloadRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  sub_100739A18(a1, a2 & 1, v7, v8, v2 + v6);
}

uint64_t sub_10073B28C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_10073B2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10073B33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10073B3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FD8C0, &unk_101478A50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10073B41C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FD8C0, &unk_101478A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10073B4B4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = sub_100006370(319, &qword_1019F6E98, CKRecordID_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_10073B5B0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PKInkTypeSwiftHelper();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t *CRLAnalyticsActiveUseManager.shared.unsafeMutableAddressor()
{
  if (qword_1019F1518 != -1)
  {
    swift_once();
  }

  return &static CRLAnalyticsActiveUseManager.shared;
}

id static CRLAnalyticsActiveUseManager.shared.getter()
{
  if (qword_1019F1518 != -1)
  {
    swift_once();
  }

  v1 = static CRLAnalyticsActiveUseManager.shared;

  return v1;
}

void sub_10073B710(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v6 + 16))(&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v6 + 32))(v11 + v10, &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_10073C1B8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101884CB8;
  v12 = _Block_copy(aBlock);

  [a2 addOperationWithBlock:v12];
  _Block_release(v12);
}

void sub_10073B904(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10073BBF4(a2);
  }
}

id CRLAnalyticsActiveUseManager.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:UIApplicationWillEnterForegroundNotification object:0];
  v2 = qword_1019F1418;
  v3 = v0;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_dataStore;
  [v1 removeObserver:v3 name:qword_101AD60D8 object:*&v3[OBJC_IVAR____TtC8Freeform28CRLAnalyticsActiveUseManager_dataStore]];

  v5 = qword_1019F1420;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v6 name:qword_101AD60E0 object:*&v3[v4]];

  v7 = qword_1019F1428;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v8 name:qword_101AD60E8 object:*&v3[v4]];

  v10.receiver = v8;
  v10.super_class = type metadata accessor for CRLAnalyticsActiveUseManager();
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_10073BBF4(uint64_t a1)
{
  v1 = Notification.userInfo.getter();
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v3 = sub_1000640CC(v13), (v4 & 1) == 0))
  {

    sub_100064234(v13);
LABEL_9:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_10;
  }

  sub_100064288(*(v2 + 56) + 32 * v3, &v14);
  sub_100064234(v13);

  if (!*(&v15 + 1))
  {
LABEL_10:
    sub_1005E09AC(&v14);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v5 = sub_100059A4C(v13[0], v13[1], 0);

    if (*(v5 + 16))
    {
      v6 = objc_opt_self();
      v7 = String._bridgeToObjectiveC()();
      sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v6 sendEventInDomain:v7 lazily:1 eventPayload:{isa, 0xD000000000000010, 0x8000000101552EA0}];
    }

    else
    {
    }

    return;
  }

LABEL_11:
  if (qword_1019F2110 != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.crlAnalytics;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v11 = Notification._bridgeToObjectiveC()().super.isa;
  *(inited + 56) = sub_100006370(0, &qword_1019F8308, NSNotification_ptr);
  *(inited + 64) = sub_10005D590();
  *(inited + 32) = v11;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v9, &_mh_execute_header, v12, "Unable to get CRLAnalyticsDataStore.overriddenUserIDKey from notification: %@", 77, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
}

void sub_10073BF84(char a1)
{
  if (*(sub_100059A4C(0, 0xE000000000000000, a1) + 16))
  {
    v1 = objc_opt_self();
    v2 = String._bridgeToObjectiveC()();
    sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 sendEventInDomain:v2 lazily:1 eventPayload:isa];
  }

  else
  {
  }
}

uint64_t sub_10073C120()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10073C1B8()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10073B904(v2, v3);
}

uint64_t sub_10073C24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  v13 = static UUID.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if (v13)
  {
    v16 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, a3, v20, v15);
    v17 = sub_100746BE0(a2, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_10073C3E4(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v18 = type metadata accessor for UUID();
  v17 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v5 + 728), v9);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  v14 = *(v5 + 736);
  swift_beginAccess();
  sub_10074587C(a1, v10, &off_101884E38);
  result = swift_endAccess();
  if (!v2)
  {
    (*(v11 + 16))(v13, &v3[v14], v10);
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    CRRegister.wrappedValue.getter();
    (*(v11 + 8))(v13, v10);
    v16 = *(*v3 + 744);
    swift_beginAccess();
    (*(v17 + 40))(&v3[v16], v7, v18);
    return swift_endAccess();
  }

  return result;
}

uint64_t *sub_10073C67C()
{
  v1 = *v0;
  v2 = *(*v0 + 736);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v1 + 728), v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(*v0 + 744);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_10073C798()
{
  v1 = *v0;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v3 = v0[3];
  *(inited + 32) = v3;
  v4 = inited + 32;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  if (sub_10001FF1C() < v3)
  {
    v45 = v1;
    v44 = objc_opt_self();
    LODWORD(v1) = [v44 _atomicIncrementAssertCount];
    v47 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v47, "Call to computedMinRequiredVersion while current minRequiredVersion is higher than current: %{public}d", 102, 2u);
    StaticString.description.getter("computedMinRequiredVersion", 26, 2);
    v46 = inited;
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v11 = static OS_os_log.crlAssert;
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10146CA70;
      *(v12 + 56) = &type metadata for Int32;
      *(v12 + 64) = &protocol witness table for Int32;
      *(v12 + 32) = v1;
      v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v12 + 96) = v13;
      v14 = sub_1005CF04C();
      *(v12 + 104) = v14;
      *(v12 + 72) = v5;
      *(v12 + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(v12 + 112) = v8;
      *(v12 + 120) = v10;
      *(v12 + 176) = &type metadata for UInt;
      *(v12 + 184) = &protocol witness table for UInt;
      *(v12 + 144) = v15;
      *(v12 + 152) = 273;
      v16 = v47;
      *(v12 + 216) = v13;
      *(v12 + 224) = v14;
      *(v12 + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v12);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "Call to computedMinRequiredVersion while current minRequiredVersion is higher than current: %{public}d", 102, 2, v46);

      type metadata accessor for __VaListBuilder();
      v1 = swift_allocObject();
      *(v1 + 16) = 8;
      *(v1 + 24) = 0;
      v21 = (v1 + 24);
      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
      v22 = *(v46 + 16);
      if (!v22)
      {
LABEL_29:
        v39 = __VaListBuilder.va_list()();
        StaticString.description.getter("computedMinRequiredVersion", 26, 2);
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
        v41 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Call to computedMinRequiredVersion while current minRequiredVersion is higher than current: %{public}d", 102, 2);
        v42 = String._bridgeToObjectiveC()();

        [v44 handleFailureInFunction:v40 file:v41 lineNumber:273 isFatal:0 format:v42 args:v39];

        v1 = v45;
        return (*(v1 + 104))(v38);
      }

      v8 = 0;
      v10 = 40;
      while (1)
      {
        v23 = (v4 + 40 * v8);
        v5 = v23[4];
        sub_100020E58(v23, v23[3]);
        v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v25 = *v21;
        v26 = *(v24 + 16);
        v27 = __OFADD__(*v21, v26);
        v28 = *v21 + v26;
        if (v27)
        {
          break;
        }

        v29 = *(v1 + 32);
        if (v29 >= v28)
        {
          goto LABEL_20;
        }

        if (v29 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v5 = *(v1 + 40);
        if (2 * v29 > v28)
        {
          v28 = 2 * v29;
        }

        *(v1 + 32) = v28;
        if ((v28 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v30 = v24;
        v31 = swift_slowAlloc();
        v32 = v31;
        *(v1 + 40) = v31;
        if (v5)
        {
          if (v31 != v5 || v31 >= &v5[8 * v25])
          {
            memmove(v31, v5, 8 * v25);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v24 = v30;
LABEL_20:
          v32 = *(v1 + 40);
          if (!v32)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v24 = v30;
        if (!v32)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v34 = *(v24 + 16);
        if (v34)
        {
          v35 = (v24 + 32);
          v36 = *v21;
          while (1)
          {
            v37 = *v35++;
            *&v32[8 * v36] = v37;
            v36 = *v21 + 1;
            if (__OFADD__(*v21, 1))
            {
              break;
            }

            *v21 = v36;
            if (!--v34)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v8 == v22)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

LABEL_28:

  return (*(v1 + 104))(v38);
}

uint64_t sub_10073CD20()
{
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  v84 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = inited + 32;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  if (sub_10001FF1C() >= v2)
  {
LABEL_28:

    goto LABEL_30;
  }

  v82 = v0;
  v81 = objc_opt_self();
  LODWORD(v0) = [v81 _atomicIncrementAssertCount];
  v85 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v85, "Call to computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersion is higher than current: %{public}d", 123, 2u);
  StaticString.description.getter("computedMinRequiredVersionForGoodEnoughFidelity", 47, 2);
  v5 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
  v83 = inited;
  v6 = String._bridgeToObjectiveC()();

  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v9;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_69;
  }

LABEL_3:
  v10 = static OS_os_log.crlAssert;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_10146CA70;
  *(v11 + 56) = &type metadata for Int32;
  *(v11 + 64) = &protocol witness table for Int32;
  *(v11 + 32) = v0;
  v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v11 + 96) = v12;
  v13 = sub_1005CF04C();
  *(v11 + 104) = v13;
  *(v11 + 72) = v5;
  *(v11 + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(v11 + 112) = v8;
  *(v11 + 120) = v4;
  *(v11 + 176) = &type metadata for UInt;
  *(v11 + 184) = &protocol witness table for UInt;
  *(v11 + 144) = v14;
  *(v11 + 152) = 281;
  v15 = v85;
  *(v11 + 216) = v12;
  *(v11 + 224) = v13;
  *(v11 + 192) = v15;
  v16 = v5;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v11);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "Call to computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersion is higher than current: %{public}d", 123, 2, v83);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  *(v5 + 16) = 8;
  *(v5 + 24) = 0;
  v20 = (v5 + 24);
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  v21 = v83[2];
  if (v21)
  {
    v22 = 0;
    v8 = 40;
    while (1)
    {
      v23 = (v3 + 40 * v22);
      v4 = v23[4];
      LODWORD(v0) = sub_100020E58(v23, v23[3]);
      v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v25 = *v20;
      v26 = *(v24 + 16);
      v27 = __OFADD__(*v20, v26);
      v28 = *v20 + v26;
      if (v27)
      {
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
        swift_once();
        goto LABEL_3;
      }

      v0 = *(v5 + 32);
      if (v0 >= v28)
      {
        goto LABEL_20;
      }

      if (v0 + 0x4000000000000000 < 0)
      {
        goto LABEL_65;
      }

      v4 = *(v5 + 40);
      if (2 * v0 > v28)
      {
        v28 = 2 * v0;
      }

      *(v5 + 32) = v28;
      if ((v28 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_66;
      }

      v29 = v24;
      v30 = swift_slowAlloc();
      v31 = v30;
      *(v5 + 40) = v30;
      if (v4)
      {
        break;
      }

      v24 = v29;
      if (!v31)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v33 = *(v24 + 16);
      if (v33)
      {
        v34 = (v24 + 32);
        v35 = *v20;
        while (1)
        {
          v36 = *v34++;
          *&v31[8 * v35] = v36;
          v35 = *v20 + 1;
          if (__OFADD__(*v20, 1))
          {
            break;
          }

          *v20 = v35;
          if (!--v33)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_5:

      if (++v22 == v21)
      {
        goto LABEL_29;
      }
    }

    if (v30 != v4 || v30 >= &v4[8 * v25])
    {
      memmove(v30, v4, 8 * v25);
    }

    v0 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v24 = v29;
LABEL_20:
    v31 = *(v5 + 40);
    if (!v31)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_29:
  v37 = __VaListBuilder.va_list()();
  StaticString.description.getter("computedMinRequiredVersionForGoodEnoughFidelity", 47, 2);
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
  v39 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Call to computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersion is higher than current: %{public}d", 123, 2);
  v40 = String._bridgeToObjectiveC()();

  [v81 handleFailureInFunction:v38 file:v39 lineNumber:281 isFatal:0 format:v40 args:v37];

  v0 = v82;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
LABEL_30:
  v41 = swift_initStackObject();
  *(v41 + 16) = v84;
  v42 = *(v0 + 32);
  *(v41 + 32) = v42;
  v3 = v41 + 32;
  *(v41 + 56) = v4;
  *(v41 + 64) = v5;
  if (sub_10001FF1C() >= v42)
  {
LABEL_58:
  }

  else
  {
    v83 = objc_opt_self();
    v43 = [v83 _atomicIncrementAssertCount];
    v85 = [objc_allocWithZone(NSString) init];
    sub_100604538(v41, &v85, "Call to computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersionForGoodEnoughFidelity is higher than current: %{public}d", 144, 2u);
    StaticString.description.getter("computedMinRequiredVersionForGoodEnoughFidelity", 47, 2);
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
    *&v84 = v41;
    v45 = String._bridgeToObjectiveC()();

    v46 = [v45 lastPathComponent];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.crlAssert;
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_10146CA70;
    *(v51 + 56) = &type metadata for Int32;
    *(v51 + 64) = &protocol witness table for Int32;
    *(v51 + 32) = v43;
    v52 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v51 + 96) = v52;
    v53 = sub_1005CF04C();
    *(v51 + 104) = v53;
    *(v51 + 72) = v44;
    *(v51 + 136) = &type metadata for String;
    v54 = sub_1000053B0();
    *(v51 + 112) = v47;
    *(v51 + 120) = v49;
    *(v51 + 176) = &type metadata for UInt;
    *(v51 + 184) = &protocol witness table for UInt;
    *(v51 + 144) = v54;
    *(v51 + 152) = 282;
    v55 = v85;
    *(v51 + 216) = v52;
    *(v51 + 224) = v53;
    *(v51 + 192) = v55;
    v56 = v44;
    v57 = v55;
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v58, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v51);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v59, "Call to computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersionForGoodEnoughFidelity is higher than current: %{public}d", 144, 2, v84);

    type metadata accessor for __VaListBuilder();
    v60 = swift_allocObject();
    v60[2] = 8;
    v60[3] = 0;
    v61 = v60 + 3;
    v60[4] = 0;
    v60[5] = 0;
    v62 = *(v84 + 16);
    if (v62)
    {
      v63 = 0;
      v8 = 40;
      while (1)
      {
        v64 = (v3 + 40 * v63);
        v4 = v64[3];
        LODWORD(v0) = sub_100020E58(v64, v4);
        v65 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v5 = *v61;
        v66 = *(v65 + 16);
        v27 = __OFADD__(*v61, v66);
        v67 = *v61 + v66;
        if (v27)
        {
          goto LABEL_64;
        }

        v0 = v60[4];
        if (v0 >= v67)
        {
          goto LABEL_50;
        }

        if (v0 + 0x4000000000000000 < 0)
        {
          goto LABEL_67;
        }

        v4 = v60[5];
        if (2 * v0 > v67)
        {
          v67 = 2 * v0;
        }

        v60[4] = v67;
        if ((v67 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_68;
        }

        v68 = v65;
        v69 = swift_slowAlloc();
        v70 = v69;
        v60[5] = v69;
        if (v4)
        {
          break;
        }

        v65 = v68;
        if (!v70)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v72 = *(v65 + 16);
        if (v72)
        {
          v73 = (v65 + 32);
          v74 = *v61;
          do
          {
            v75 = *v73++;
            *&v70[8 * v74] = v75;
            v74 = *v61 + 1;
            if (__OFADD__(*v61, 1))
            {
              goto LABEL_62;
            }

            *v61 = v74;
          }

          while (--v72);
        }

        if (++v63 == v62)
        {
          goto LABEL_59;
        }
      }

      if (v69 != v4 || v69 >= &v4[8 * v5])
      {
        memmove(v69, v4, 8 * v5);
      }

      LODWORD(v0) = v60;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v65 = v68;
LABEL_50:
      v70 = v60[5];
      if (!v70)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_59:
    v76 = __VaListBuilder.va_list()();
    StaticString.description.getter("computedMinRequiredVersionForGoodEnoughFidelity", 47, 2);
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
    v78 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Call to computedMinRequiredVersionForGoodEnoughFidelity while current minRequiredVersionForGoodEnoughFidelity is higher than current: %{public}d", 144, 2);
    v79 = String._bridgeToObjectiveC()();

    [v83 handleFailureInFunction:v77 file:v78 lineNumber:282 isFatal:0 format:v79 args:v76];
  }

  return 0x2000400000000;
}

uint64_t sub_10073D758()
{
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = (inited + 32);
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  v85 = v0;
  if (sub_10001FF1C() >= v2)
  {
LABEL_28:

    goto LABEL_30;
  }

  v83 = objc_opt_self();
  LODWORD(v0) = [v83 _atomicIncrementAssertCount];
  v86 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v86, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersion is higher than current: %{public}d", 117, 2u);
  StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
  v5 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v6 lastPathComponent];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v9;

  v84 = inited;
  if (qword_1019F20A0 != -1)
  {
    goto LABEL_75;
  }

LABEL_3:
  v10 = static OS_os_log.crlAssert;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_10146CA70;
  *(v11 + 56) = &type metadata for Int32;
  *(v11 + 64) = &protocol witness table for Int32;
  *(v11 + 32) = v0;
  v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v11 + 96) = v12;
  v13 = sub_1005CF04C();
  *(v11 + 104) = v13;
  *(v11 + 72) = v5;
  *(v11 + 136) = &type metadata for String;
  v14 = sub_1000053B0();
  *(v11 + 112) = v8;
  *(v11 + 120) = v4;
  *(v11 + 176) = &type metadata for UInt;
  *(v11 + 184) = &protocol witness table for UInt;
  *(v11 + 144) = v14;
  *(v11 + 152) = 290;
  v15 = v86;
  *(v11 + 216) = v12;
  *(v11 + 224) = v13;
  *(v11 + 192) = v15;
  v16 = v5;
  v17 = v15;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v11);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v19 = static os_log_type_t.error.getter();
  sub_100005404(v10, &_mh_execute_header, v19, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersion is higher than current: %{public}d", 117, 2, v84);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v20 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v21 = *(v84 + 16);
  if (v21)
  {
    v22 = 0;
    v8 = 40;
    while (1)
    {
      v23 = &v3[40 * v22];
      v4 = *(v23 + 4);
      LODWORD(v0) = sub_100020E58(v23, *(v23 + 3));
      v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v25 = *v20;
      v26 = *(v24 + 16);
      v27 = __OFADD__(*v20, v26);
      v28 = *v20 + v26;
      if (v27)
      {
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
        swift_once();
        goto LABEL_3;
      }

      v0 = v5[4];
      if (v0 >= v28)
      {
        goto LABEL_20;
      }

      if (v0 + 0x4000000000000000 < 0)
      {
        goto LABEL_71;
      }

      v4 = v5[5];
      if (2 * v0 > v28)
      {
        v28 = 2 * v0;
      }

      v5[4] = v28;
      if ((v28 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_72;
      }

      v29 = v24;
      v30 = swift_slowAlloc();
      v31 = v30;
      v5[5] = v30;
      if (v4)
      {
        break;
      }

      v24 = v29;
      if (!v31)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v33 = *(v24 + 16);
      if (v33)
      {
        v34 = (v24 + 32);
        v35 = *v20;
        while (1)
        {
          v36 = *v34++;
          *&v31[8 * v35] = v36;
          v35 = *v20 + 1;
          if (__OFADD__(*v20, 1))
          {
            break;
          }

          *v20 = v35;
          if (!--v33)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_5:

      if (++v22 == v21)
      {
        goto LABEL_29;
      }
    }

    if (v30 != v4 || v30 >= &v4[8 * v25])
    {
      memmove(v30, v4, 8 * v25);
    }

    v0 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v24 = v29;
LABEL_20:
    v31 = v5[5];
    if (!v31)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_29:
  v37 = __VaListBuilder.va_list()();
  StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
  v39 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersion is higher than current: %{public}d", 117, 2);
  v40 = String._bridgeToObjectiveC()();

  [v83 handleFailureInFunction:v38 file:v39 lineNumber:290 isFatal:0 format:v40 args:v37];

  v0 = v85;
  v4 = &type metadata for UInt64;
  v5 = &protocol witness table for UInt64;
LABEL_30:
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_10146C6B0;
  v42 = *(v0 + 40);
  *(v41 + 32) = v42;
  v43 = v41 + 32;
  *(v41 + 56) = v4;
  *(v41 + 64) = v5;
  if (sub_10001FF1C() >= v42)
  {
LABEL_58:
  }

  else
  {
    v83 = objc_opt_self();
    v44 = [v83 _atomicIncrementAssertCount];
    v86 = [objc_allocWithZone(NSString) init];
    sub_100604538(v41, &v86, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 132, 2u);
    StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
    v46 = String._bridgeToObjectiveC()();

    v47 = [v46 lastPathComponent];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v84 = v41;
    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v51 = static OS_os_log.crlAssert;
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_10146CA70;
    *(v52 + 56) = &type metadata for Int32;
    *(v52 + 64) = &protocol witness table for Int32;
    *(v52 + 32) = v44;
    v53 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v52 + 96) = v53;
    v54 = sub_1005CF04C();
    *(v52 + 104) = v54;
    *(v52 + 72) = v45;
    *(v52 + 136) = &type metadata for String;
    v55 = sub_1000053B0();
    *(v52 + 112) = v48;
    *(v52 + 120) = v50;
    *(v52 + 176) = &type metadata for UInt;
    *(v52 + 184) = &protocol witness table for UInt;
    *(v52 + 144) = v55;
    *(v52 + 152) = 291;
    v3 = v86;
    *(v52 + 216) = v53;
    *(v52 + 224) = v54;
    *(v52 + 192) = v3;
    v56 = v45;
    v57 = v3;
    v58 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v58, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v52);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v59, "Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 132, 2, v84);

    type metadata accessor for __VaListBuilder();
    v5 = swift_allocObject();
    v5[2] = 8;
    v5[3] = 0;
    v60 = v5 + 3;
    v5[4] = 0;
    v5[5] = 0;
    v61 = *(v84 + 16);
    if (v61)
    {
      v62 = 0;
      v8 = 40;
      while (1)
      {
        v63 = (v43 + 40 * v62);
        v4 = v63[4];
        LODWORD(v0) = sub_100020E58(v63, v63[3]);
        v64 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v65 = *v60;
        v66 = *(v64 + 16);
        v27 = __OFADD__(*v60, v66);
        v67 = *v60 + v66;
        if (v27)
        {
          goto LABEL_70;
        }

        v0 = v5[4];
        if (v0 >= v67)
        {
          goto LABEL_50;
        }

        if (v0 + 0x4000000000000000 < 0)
        {
          goto LABEL_73;
        }

        v4 = v5[5];
        if (2 * v0 > v67)
        {
          v67 = 2 * v0;
        }

        v5[4] = v67;
        if ((v67 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_74;
        }

        v3 = v64;
        v68 = swift_slowAlloc();
        v69 = v68;
        v5[5] = v68;
        if (v4)
        {
          break;
        }

        v64 = v3;
        if (!v69)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_51:
        v71 = *(v64 + 16);
        if (v71)
        {
          v72 = (v64 + 32);
          v73 = *v60;
          do
          {
            v74 = *v72++;
            *&v69[8 * v73] = v74;
            v73 = *v60 + 1;
            if (__OFADD__(*v60, 1))
            {
              goto LABEL_68;
            }

            *v60 = v73;
          }

          while (--v71);
        }

        if (++v62 == v61)
        {
          goto LABEL_59;
        }
      }

      if (v68 != v4 || v68 >= &v4[8 * v65])
      {
        memmove(v68, v4, 8 * v65);
      }

      v0 = v5;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v64 = v3;
LABEL_50:
      v69 = v5[5];
      if (!v69)
      {
        goto LABEL_57;
      }

      goto LABEL_51;
    }

LABEL_59:
    v75 = __VaListBuilder.va_list()();
    StaticString.description.getter("computedMinRequiredVersionForFullFidelity", 41, 2);
    v76 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Call to computedMinRequiredVersionForFullFidelity while current minRequiredVersionForFullFidelity is higher than current: %{public}d", 132, 2);
    v78 = String._bridgeToObjectiveC()();

    [v83 handleFailureInFunction:v76 file:v77 lineNumber:291 isFatal:0 format:v78 args:v75];

    v0 = v85;
    v4 = &type metadata for UInt64;
    v5 = &protocol witness table for UInt64;
  }

  if (*(v0 + 40) >= 0x2000400000000uLL)
  {
    v79 = *(v0 + 40);
  }

  else
  {
    v79 = 0x2000400000000;
  }

  if (*(v0 + 32) == 0x2000400000000)
  {
    v80 = *(v0 + 40);
  }

  else
  {
    v80 = v79;
  }

  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_10146C6B0;
  *(v81 + 56) = v4;
  *(v81 + 64) = v5;
  *(v81 + 32) = v80;

  return v80;
}

uint64_t sub_10073E1D8()
{
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v2 = *(v0 + 24);
  *(inited + 32) = v2;
  v3 = inited + 32;
  *(inited + 56) = &type metadata for UInt64;
  *(inited + 64) = &protocol witness table for UInt64;
  if (sub_10001FF1C() < v2)
  {
    v42 = objc_opt_self();
    LODWORD(v4) = [v42 _atomicIncrementAssertCount];
    v44 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v44, "Call to computedMinRequiredVersionMakesBoardUnsupported while current minRequiredVersion is higher than current: %{public}d", 123, 2u);
    StaticString.description.getter("computedMinRequiredVersionMakesBoardUnsupported", 47, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
    v43 = inited;
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v11 = static OS_os_log.crlAssert;
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10146CA70;
      *(v12 + 56) = &type metadata for Int32;
      *(v12 + 64) = &protocol witness table for Int32;
      *(v12 + 32) = v4;
      v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v12 + 96) = v13;
      v14 = sub_1005CF04C();
      *(v12 + 104) = v14;
      *(v12 + 72) = v5;
      *(v12 + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(v12 + 112) = v8;
      *(v12 + 120) = v10;
      *(v12 + 176) = &type metadata for UInt;
      *(v12 + 184) = &protocol witness table for UInt;
      *(v12 + 144) = v15;
      *(v12 + 152) = 307;
      v16 = v44;
      *(v12 + 216) = v13;
      *(v12 + 224) = v14;
      *(v12 + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v12);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "Call to computedMinRequiredVersionMakesBoardUnsupported while current minRequiredVersion is higher than current: %{public}d", 123, 2, v43);

      type metadata accessor for __VaListBuilder();
      v4 = swift_allocObject();
      v4[2] = 8;
      v4[3] = 0;
      v21 = v4 + 3;
      v4[4] = 0;
      v4[5] = 0;
      v8 = *(v43 + 16);
      if (!v8)
      {
LABEL_29:
        v37 = __VaListBuilder.va_list()();
        StaticString.description.getter("computedMinRequiredVersionMakesBoardUnsupported", 47, 2);
        v38 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
        v39 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Call to computedMinRequiredVersionMakesBoardUnsupported while current minRequiredVersion is higher than current: %{public}d", 123, 2);
        v40 = String._bridgeToObjectiveC()();

        [v42 handleFailureInFunction:v38 file:v39 lineNumber:307 isFatal:0 format:v40 args:v37];

        return 0;
      }

      v10 = 0;
      while (1)
      {
        v22 = (v3 + 40 * v10);
        v5 = v22[3];
        sub_100020E58(v22, v5);
        v23 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v24 = *v21;
        v25 = *(v23 + 16);
        v26 = __OFADD__(*v21, v25);
        v27 = *v21 + v25;
        if (v26)
        {
          break;
        }

        v28 = v4[4];
        if (v28 >= v27)
        {
          goto LABEL_20;
        }

        if (v28 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v5 = v4[5];
        if (2 * v28 > v27)
        {
          v27 = 2 * v28;
        }

        v4[4] = v27;
        if ((v27 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v29 = v23;
        v30 = swift_slowAlloc();
        v31 = v30;
        v4[5] = v30;
        if (v5)
        {
          if (v30 != v5 || v30 >= &v5[8 * v24])
          {
            memmove(v30, v5, 8 * v24);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v23 = v29;
LABEL_20:
          v31 = v4[5];
          if (!v31)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v23 = v29;
        if (!v31)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v33 = *(v23 + 16);
        if (v33)
        {
          v34 = (v23 + 32);
          v35 = *v21;
          while (1)
          {
            v36 = *v34++;
            *&v31[8 * v35] = v36;
            v35 = *v21 + 1;
            if (__OFADD__(*v21, 1))
            {
              break;
            }

            *v21 = v35;
            if (!--v33)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v10 == v8)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

LABEL_28:

  return 0;
}

uint64_t sub_10073E718()
{
  v1 = *(v0 + 24);
  if (sub_10001FF1C() < v1)
  {
    return *(v0 + 16) & 1;
  }

  if ((*(v0 + 16) & 8) != 0)
  {
    v3 = (*(*v0 + 464))();
    if ((v5 & 0x100) != 0)
    {
      if (v3 | v4)
      {
        v6 = 0;
      }

      else
      {
        v6 = v5 == 0;
      }

      if (v6)
      {
        return *(v0 + 16) & 1;
      }

      v7 = v3 == 1 && v4 == 0;
      if (v7 && v5 == 0)
      {
        return *(v0 + 16) & 1;
      }

      v9 = v3 == 2 && v4 == 0;
      if (v9 && v5 == 0)
      {
        return *(v0 + 16) & 1;
      }

      v11 = v3 == 3 && v4 == 0;
      if (v11 && v5 == 0)
      {
        return *(v0 + 16) & 1;
      }

      v13 = v3 == 4 && v4 == 0;
      v14 = v13 && v5 == 0;
      if (v14 || v3 == 5 && !v4 && !v5 || v3 == 6 && !v4 && !v5 || v3 == 7 && !v4 && !v5 || v3 == 8 && !v4 && !v5 || v3 == 9 && !v4 && !v5 || v3 == 10 && !v4 && !v5)
      {
        return *(v0 + 16) & 1;
      }
    }

    else if ((v5 & 1) != 0 || !v4)
    {
      return *(v0 + 16) & 1;
    }
  }

  return 0;
}

unint64_t sub_10073E870(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  *(v2 + 24) = *a1;
  *(v2 + 40) = v4;
  *(v2 + 56) = *(a1 + 32);
  if (a2)
  {
    v5 = *(v2 + 16);
    if ((v5 & 1) == 0)
    {
      *(v2 + 16) = v5 | 1;
    }
  }

  result = sub_100747BB4();
  if ((a2 & 4) != 0)
  {
    v7 = *(v2 + 16);
    if ((v7 & 4) == 0)
    {
      *(v2 + 16) = v7 | 4;
    }
  }

  if ((a2 & 2) != 0)
  {
    v8 = *(v2 + 16);
    if ((v8 & 2) == 0)
    {
      *(v2 + 16) = v8 | 2;
    }
  }

  return result;
}

uint64_t sub_10073E8E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 744);
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10073E9B8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v2 + 728), v8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v61 - v11;
  v13 = *(v2 + 736);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v1[v13], v9);
  v14 = sub_100746020(v9, &v66);
  (*(v10 + 8))(v12, v9, v14);
  v15 = objc_allocWithZone(CRLCanvasInfoGeometry);
  v16 = [v15 initWithPosition:v68 size:v69 widthValid:v70 heightValid:v71 horizontalFlip:*&v66 verticalFlip:*(&v66 + 1) angle:{*(&v66 + 2), *(&v66 + 3), v67}];
  sub_10074A710(&v66);
  if (([v16 allValuesValidNumbers] & 1) == 0)
  {
    v63 = v16;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10073E8E4(v6);
    v18 = UUID.uuidString.getter();
    v20 = v19;
    (*(v4 + 8))(v6, v3);
    *(inited + 56) = &type metadata for String;
    v21 = sub_1000053B0();
    *(inited + 32) = v18;
    v22 = inited + 32;
    v64 = v21;
    *(inited + 64) = v21;
    *(inited + 40) = v20;
    v62 = objc_opt_self();
    LODWORD(v16) = [v62 _atomicIncrementAssertCount];
    v65 = [objc_allocWithZone(NSString) init];
    StaticString.description.getter("geometry", 8, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v29 = static OS_os_log.crlAssert;
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_10146CA70;
      *(v30 + 56) = &type metadata for Int32;
      *(v30 + 64) = &protocol witness table for Int32;
      *(v30 + 32) = v16;
      v31 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v30 + 96) = v31;
      v32 = sub_1005CF04C();
      *(v30 + 72) = v23;
      v33 = v64;
      *(v30 + 136) = &type metadata for String;
      *(v30 + 144) = v33;
      *(v30 + 104) = v32;
      *(v30 + 112) = v26;
      *(v30 + 120) = v28;
      *(v30 + 176) = &type metadata for UInt;
      *(v30 + 184) = &protocol witness table for UInt;
      *(v30 + 152) = 640;
      v34 = v65;
      *(v30 + 216) = v31;
      *(v30 + 224) = v32;
      *(v30 + 192) = v34;
      v35 = v23;
      v36 = v34;
      v37 = static os_log_type_t.error.getter();
      sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v30);
      swift_setDeallocating();
      v61[1] = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v38 = static os_log_type_t.error.getter();

      type metadata accessor for __VaListBuilder();
      v23 = swift_allocObject();
      v23[2] = 8;
      v23[3] = 0;
      v39 = v23 + 3;
      v23[4] = 0;
      v23[5] = 0;
      v64 = inited;
      v28 = *(inited + 16);
      if (!v28)
      {
LABEL_28:
        v56 = __VaListBuilder.va_list()();
        StaticString.description.getter("geometry", 8, 2);
        v57 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
        v58 = String._bridgeToObjectiveC()();

        v59 = String._bridgeToObjectiveC()();

        [v62 handleFailureInFunction:v57 file:v58 lineNumber:640 isFatal:0 format:v59 args:v56];

        swift_setDeallocating();
        swift_arrayDestroy();
        v16 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];

        return v16;
      }

      v40 = 0;
      inited = 40;
      while (1)
      {
        v41 = (v22 + 40 * v40);
        v26 = v41[3];
        LODWORD(v16) = sub_100020E58(v41, v26);
        v42 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v43 = *v39;
        v44 = *(v42 + 16);
        v45 = __OFADD__(*v39, v44);
        v46 = *v39 + v44;
        if (v45)
        {
          break;
        }

        v16 = v23[4];
        if (v16 >= v46)
        {
          goto LABEL_20;
        }

        if (v16 + 0x4000000000000000 < 0)
        {
          goto LABEL_32;
        }

        v26 = v23[5];
        if (2 * v16 > v46)
        {
          v46 = 2 * v16;
        }

        v23[4] = v46;
        if ((v46 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_33;
        }

        v47 = v22;
        v48 = v42;
        v49 = swift_slowAlloc();
        v50 = v49;
        v23[5] = v49;
        if (v26)
        {
          if (v49 != v26 || v49 >= &v26[8 * v43])
          {
            memmove(v49, v26, 8 * v43);
          }

          LODWORD(v16) = v23;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v42 = v48;
          v22 = v47;
          inited = 40;
LABEL_20:
          v50 = v23[5];
          if (!v50)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v42 = v48;
        v22 = v47;
        inited = 40;
        if (!v50)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v52 = *(v42 + 16);
        if (v52)
        {
          v53 = (v42 + 32);
          v54 = *v39;
          while (1)
          {
            v55 = *v53++;
            *&v50[8 * v54] = v55;
            v54 = *v39 + 1;
            if (__OFADD__(*v39, 1))
            {
              break;
            }

            *v39 = v54;
            if (!--v52)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v40 == v28)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      swift_once();
    }
  }

  return v16;
}

void sub_10073F188(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v2;
  if (([a1 allValuesValidNumbers] & 1) == 0)
  {
    v32 = v3;
    v31 = objc_opt_self();
    v5 = [v31 _atomicIncrementAssertCount];
    v33[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v33, "Setting a new geometry with invalid numbers (NaN).", 50, 2u);
    StaticString.description.getter("geometry", 8, 2);
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
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
    *(inited + 152) = 646;
    v17 = v33[0];
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
    sub_100005404(v12, &_mh_execute_header, v21, "Setting a new geometry with invalid numbers (NaN).", 50, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter("geometry", 8, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLBoardItemData.swift", 87, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Setting a new geometry with invalid numbers (NaN).", 50, 2);
    v26 = String._bridgeToObjectiveC()();

    [v31 handleFailureInFunction:v24 file:v25 lineNumber:646 isFatal:0 format:v26 args:v23];

    v3 = v32;
  }

  v27 = v3;
  sub_101271CCC(v27, v33);

  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v4 + 728), v29);
  sub_100746118(v33, v30);
  swift_endAccess();
}

__n128 sub_10073F5EC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v3 + 728), v5);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - v8 + 16;
  v10 = *(v3 + 736);
  swift_beginAccess();
  (*(v7 + 16))(v9, &v1[v10], v6);
  v11 = sub_1007461C0(v6, v15);
  (*(v7 + 8))(v9, v6, v11);
  v12 = v15[3];
  *(a1 + 32) = v15[2];
  *(a1 + 48) = v12;
  *(a1 + 64) = v16;
  result = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10073F77C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v3 + 728), v5);
  sub_1007462C8(a1, v6);
  return swift_endAccess();
}

uint64_t sub_10073F868(void (*a1)(uint64_t))
{
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v3 + 728), v5);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 736);
  swift_beginAccess();
  (*(v7 + 16))(v9, &v1[v10], v6);
  a1(v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10073FA18(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(_BYTE *, uint64_t))
{
  v9 = *v4;
  v10 = sub_1005B981C(a2, a3);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  sub_10000BE14(a1, &v17 - v11, a2, a3);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v9 + 728), v14);
  a4(v12, v15);
  swift_endAccess();
  return sub_10000CAAC(a1, a2, a3);
}

uint64_t sub_10073FB74()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v1 + 728), v3);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6];
  v8 = *(v1 + 736);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  v9 = v11[31];
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_10073FD04(char a1)
{
  v2 = *v1;
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v2 + 728), v4);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_10073FDF8()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v1 + 728), v3);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6];
  v8 = *(v1 + 736);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  v9 = v11[31];
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_10073FF88(char a1)
{
  v2 = *v1;
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v2 + 728), v4);
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_10074007C()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v1 + 728), v3);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 736);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  v9 = sub_100745D3C();
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_1007401FC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v3 + 728), v5);
  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.setter();
  return swift_endAccess();
}

id sub_1007402FC()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v1 + 728), v3);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-v6];
  v8 = *(v1 + 736);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v8], v4);
  sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  CRRegister.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  v26 = v21[4];
  v27 = v21[5];
  v28 = v21[6];
  v29 = v21[7];
  v22 = v21[0];
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v9 = sub_10074A978(&v22);
  result = 0;
  if (v9 != 1)
  {
    v30[2] = v24;
    v30[3] = v25;
    v30[4] = v26;
    v31 = v27;
    v30[0] = v22;
    v30[1] = v23;
    v11 = *(&v27 + 1);
    v12 = v28;
    v13 = *(&v28 + 2);
    v14 = v29;
    sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
    sub_10074A990(v30, v20);
    v15 = sub_1008B0490(v30);
    v16 = *&v11;
    v17 = *(&v11 + 1);
    if (v14)
    {
      v18 = [objc_allocWithZone(CRLCurvedShadow) initWithOffset:v15 angle:1 radius:v17 curve:v16 opacity:*&v12 color:v13 enabled:*(&v12 + 1)];
    }

    else
    {
      v18 = [objc_allocWithZone(CRLDropShadow) initWithAngle:v15 offset:1 radius:v16 opacity:v17 color:*&v12 enabled:*(&v12 + 1)];
    }

    v19 = v18;
    sub_10000CAAC(v21, &unk_101A09DE0, &qword_1014897A0);

    return v19;
  }

  return result;
}

void sub_1007405F0(void *a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = a1;
    sub_100A72CD4(v3, &v9);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v9, v4);
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    swift_beginAccess();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v2 + 728), v6);
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v32 = v24;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    sub_1005B981C(&unk_101A09DC0, &unk_101489790);
    CRRegister.wrappedValue.setter();
    swift_endAccess();
  }

  else
  {
    sub_1005D0C00(&v9);
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    swift_beginAccess();
    v7 = swift_getAssociatedTypeWitness();
    type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, v7, *(v2 + 728), v8);
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v32 = v24;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    sub_1005B981C(&unk_101A09DC0, &unk_101489790);
    CRRegister.wrappedValue.setter();
    swift_endAccess();
  }
}

void sub_10074081C(uint64_t a1)
{
  v2 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v2 + 728), v4);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  v9 = type metadata accessor for MergeResult();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = *(*v13 + 736);
    swift_beginAccess();
    (*(v6 + 16))(v8, v14 + v15, v5);
    swift_beginAccess();

    swift_getWitnessTable(byte_101478F7C, v5);
    CRStruct_6.merge(_:)();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100740B28(uint64_t a1, char a2)
{
  v4 = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v4 + 728), v6);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  v14 = *(v4 + 736);
  swift_beginAccess();
  if (a2)
  {
    (*(v8 + 16))(v10, &v2[v14], v7);
    swift_getWitnessTable(byte_101478D54, v7);
    CRType.copy(renamingReferences:)();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v8 + 16))(v13, &v2[v14], v7);
  }

  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v15, qword_101AD6348);
  swift_getWitnessTable(byte_101478DC4, v7);
  v16 = CRDT.serializedData(_:version:)();
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_100740DE8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v2 + 728), v5);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = *(v3 + 736);
    swift_beginAccess();
    v16 = *(v7 + 16);
    v16(v12, &v1[v15], v6);
    v17 = *(*v14 + 736);
    swift_beginAccess();
    v16(v9, (v14 + v17), v6);
    swift_getWitnessTable(byte_101478F7C, v6);
    LOBYTE(v17) = CRStruct_6.hasDelta(from:)();
    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    return v17 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100741090(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = *v2;
  v5 = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v4 + 728), v7);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v42 = &WitnessTable - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &WitnessTable - v13;
  WitnessTable = swift_getWitnessTable(byte_101478F7C, v8, v12);
  v44 = type metadata accessor for CRStructMergeableDelta_6();
  v43 = type metadata accessor for Optional();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &WitnessTable - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &WitnessTable - v17;
  v45 = a1;
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = *(v5 + 736);
    swift_beginAccess();
    v22 = *(v9 + 16);
    v22(v14, v2 + v21, v8);
    v23 = *(*v20 + 736);
    swift_beginAccess();
    v24 = (v20 + v23);
    v25 = v42;
    v22(v42, v24, v8);

    CRStruct_6.delta(_:from:)();
    v26 = *(v9 + 8);
    v26(v25, v8);
    v26(v14, v8);
    v27 = v40;
    v28 = v41;
    v29 = v43;
    (*(v41 + 16))(v40, v18, v43);
    v30 = *(v44 - 8);
    v31 = v44;
    v32 = v27;
    if ((*(v30 + 48))(v27, 1, v44) == 1)
    {
      v33 = *(v28 + 8);
      v33(v18, v29);

      v33(v27, v29);
      return 0;
    }

    else
    {
      v42 = v18;
      v35 = v47;
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v36, qword_101AD6348);
      swift_getWitnessTable(&protocol conformance descriptor for CRStructMergeableDelta_6<A>, v31);
      v37 = PartialCRDT.deltaSerializedData(_:version:)();
      if (v35)
      {
        (*(v28 + 8))(v42, v29);

        return (*(v30 + 8))(v32, v31);
      }

      else
      {
        v38 = v37;
        (*(v28 + 8))(v42, v29);

        (*(v30 + 8))(v32, v31);
        return v38;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1007415FC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v36 = type metadata accessor for UUID();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v5[89];
  v35 = v5[90];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = v5[91];
  v11 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(255, AssociatedTypeWitness, v9, v10);
  swift_getWitnessTable(byte_101478F7C, v11);
  v12 = type metadata accessor for CRStructMergeableDelta_6();
  v37 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  sub_100024E98(a1, a2);
  swift_getWitnessTable(&protocol conformance descriptor for CRStructMergeableDelta_6<A>, v12);
  LOBYTE(a2) = v12;
  v16 = v39;
  PartialCRDT.init(serializedData:)();
  if (!v16)
  {
    v31 = v9;
    v32 = v7;
    v17 = v36;
    v39 = 0;
    swift_beginAccess();
    LODWORD(a2) = CRStruct_6.merge(delta:)();
    swift_endAccess();
    if ((a2 & 1) == 0)
    {
      v30 = a2;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v29 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v19 = v33;
      sub_10073E8E4(v33);
      v20 = UUID.uuidString.getter();
      v22 = v21;
      (*(v34 + 8))(v19, v17);
      *(inited + 56) = &type metadata for String;
      v23 = sub_1000053B0();
      *(inited + 64) = v23;
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v38 = v3;
      type metadata accessor for CRLBoardItemCommonAbstractData(0, v32, v35, v31);

      v24 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v23;
      *(inited + 72) = v24;
      *(inited + 80) = v25;
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v29, &_mh_execute_header, v26, "Delta failed to apply for %{public}@%{public}@", 46, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      LOBYTE(a2) = v30;
    }

    (*(v37 + 8))(v14, v12);
  }

  return a2 & 1;
}

uint64_t sub_100741A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(*v3 + 568))();
  if (!v4)
  {
    v10 = result;
    v11 = v9;
    v12 = (*(*v3 + 584))(a1, a2);
    v14 = v13;
    v15 = (*(*v3 + 600))(a1, a2);
    if (v11 >> 60 == 15 && v14 >> 60 == 15 && v16 >> 60 == 15)
    {
      v33 = type metadata accessor for CRLBoardItemDeltaChange(0);
      return (*(*(v33 - 8) + 56))(a3, 1, 1, v33);
    }

    v44 = v15;
    v45 = v16;
    (*(*v3 + 264))();
    v19 = *(*v3 + 272);
    v20 = type metadata accessor for CRLBoardItemDeltaChange(0);
    v21 = v19();
    v42 = *(v3 + 40);
    v43 = *(v3 + 24);
    v22 = *(v3 + 56);
    v23 = *(v3 + 16);
    v24 = (*(*v3 + 464))(v21);
    if ((v26 & 0x100) != 0)
    {
      if (v24 | v25)
      {
        v34 = 0;
      }

      else
      {
        v34 = v26 == 0;
      }

      v27 = v11;
      v28 = v10;
      v29 = v14;
      v30 = v12;
      v31 = v44;
      v32 = v45;
      if (v34)
      {
        v25 = 0;
        LOBYTE(v26) = 0;
        v24 = 2;
        goto LABEL_23;
      }

      if (v24 == 1 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 3;
        goto LABEL_23;
      }

      if (v24 == 2 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 4;
        goto LABEL_23;
      }

      if (v24 == 3 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 5;
        goto LABEL_23;
      }

      if (v24 == 4 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 6;
        goto LABEL_23;
      }

      if (v24 == 5 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 7;
        goto LABEL_23;
      }

      if (v24 == 6 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 8;
        goto LABEL_23;
      }

      if (v24 == 7 && !v25 && !v26)
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 9;
        goto LABEL_23;
      }

      if (v24 != 8 || v25 || v26)
      {
        if (v24 != 9 || v25 || v26)
        {
          if (v24 != 10 || v25 || v26)
          {
            if (v26)
            {
              v40 = 0;
            }

            else
            {
              v40 = v25 == 0;
            }

            if (v40 && v24 == 11)
            {
              v25 = 1;
            }

            else
            {
              v25 = 2;
            }

            v24 = 2;
            LOBYTE(v26) = 0;
          }

          else
          {
            v25 = 0;
            LOBYTE(v26) = 1;
            v24 = 12;
          }
        }

        else
        {
          v25 = 0;
          LOBYTE(v26) = 1;
          v24 = 11;
        }
      }

      else
      {
        v25 = 0;
        LOBYTE(v26) = 1;
        v24 = 10;
      }
    }

    v27 = v11;
    v28 = v10;
    v29 = v14;
    v30 = v12;
    v31 = v44;
    v32 = v45;
LABEL_23:
    v35 = a3 + v20[6];
    *v35 = v43;
    *(v35 + 16) = v42;
    *(v35 + 32) = v22;
    *(a3 + v20[7]) = v23;
    v36 = a3 + v20[8];
    *v36 = v24;
    *(v36 + 8) = v25;
    *(v36 + 16) = v26 & 1;
    v37 = (a3 + v20[9]);
    *v37 = v28;
    v37[1] = v27;
    v38 = (a3 + v20[10]);
    *v38 = v30;
    v38[1] = v29;
    v39 = (a3 + v20[11]);
    *v39 = v31;
    v39[1] = v32;
    return (*(*(v20 - 1) + 56))(a3, 0, 1, v20);
  }

  return result;
}

void sub_100741EE8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v4 = *v2;
  v5 = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v4 + 728), v7);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v42 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v45 = sub_1005C4E5C(&qword_1019FDFB0, &qword_101479460);
  v41 = type metadata accessor for CRRegister.MutatingAction();
  v46 = type metadata accessor for Optional();
  v47 = sub_1005C4E5C(&qword_1019FDFB8, &qword_101479468);
  v48 = v47;
  v49 = sub_1005C4E5C(&qword_1019FDFC0, &qword_101479470);
  v50 = sub_1005C4E5C(&qword_1019FDFC8, &qword_101479478);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v15 = type metadata accessor for Optional();
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v44 = a1;
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = *(v5 + 736);
    swift_beginAccess();
    v21 = *(v9 + 16);
    v21(v13, v2 + v20, v8);
    v22 = *(*v19 + 736);
    swift_beginAccess();
    v23 = (v19 + v22);
    v24 = v42;
    v21(v42, v23, v8);

    swift_getWitnessTable(byte_101478F7C, v8);
    CRStruct_6.actionUndoingDifference(from:)();
    v25 = *(v9 + 8);
    v25(v24, v8);
    v25(v13, v8);
    if ((*(*(TupleTypeMetadata - 1) + 48))(v17, 1, TupleTypeMetadata) == 1)
    {

      (*(v39 + 8))(v17, v40);
      v26 = v43;
      *v43 = 0u;
      *(v26 + 1) = 0u;
    }

    else
    {
      v27 = TupleTypeMetadata[12];
      v28 = TupleTypeMetadata[16];
      v29 = TupleTypeMetadata[20];
      v40 = TupleTypeMetadata[24];
      v42 = TupleTypeMetadata[28];
      v30 = v43;
      v43[3] = TupleTypeMetadata;
      v31 = sub_10002C58C(v30);
      v32 = TupleTypeMetadata[12];
      v33 = TupleTypeMetadata[16];
      v34 = TupleTypeMetadata[20];
      v35 = TupleTypeMetadata[24];
      v36 = TupleTypeMetadata[28];
      sub_10003DFF8(v17, v31, &qword_1019FDFB0, &qword_101479460);
      v37 = type metadata accessor for Optional();
      (*(*(v37 - 8) + 32))(v31 + v32, &v17[v27], v37);
      sub_10003DFF8(&v17[v28], v31 + v33, &qword_1019FDFB8, &qword_101479468);
      sub_10003DFF8(&v17[v29], v31 + v34, &qword_1019FDFB8, &qword_101479468);
      sub_10003DFF8(&v17[v40], v31 + v35, &qword_1019FDFC0, &qword_101479470);
      sub_10003DFF8(&v42[v17], v31 + v36, &qword_1019FDFC8, &qword_101479478);
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

char *sub_100742450(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  strcpy(v153, "id parentAffinity locked aspectRatioLocked accessibilityDescription shadow ");
  v154 = sub_1005C4E5C(&qword_101A01F00, &unk_101492AB0);
  v5 = *(v3 + 728);
  v6 = *(*(*(*(v5 + 8) + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v138 = v6;
  v134 = swift_getAssociatedTypeWitness();
  v155 = type metadata accessor for Optional();
  v156 = v154;
  v157 = v154;
  v158 = v154;
  v159 = v154;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v148 = *(TupleTypeMetadata - 8);
  __chkstk_darwin(TupleTypeMetadata);
  v141 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v140 = &v132 - v11;
  __chkstk_darwin(v12);
  v139 = &v132 - v13;
  __chkstk_darwin(v14);
  v137 = &v132 - v15;
  __chkstk_darwin(v16);
  v136 = &v132 - v17;
  __chkstk_darwin(v18);
  v133 = &v132 - v19;
  __chkstk_darwin(v20);
  v151 = &v132 - v21;
  v135 = AssociatedTypeWitness;
  v23 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, v5, v22);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v132 - v28;
  v152 = TupleTypeMetadata;
  v146 = type metadata accessor for Optional();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v150 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v132 - v32;
  v147 = a1;
  v34 = swift_dynamicCastClass();
  if (v34)
  {
    v35 = v34;
    v36 = *(v4 + 736);
    swift_beginAccess();
    v37 = *(v24 + 16);
    v37(v29, v1 + v36, v23);
    v38 = *(*v35 + 736);
    swift_beginAccess();
    v37(v26, (v35 + v38), v23);

    swift_getWitnessTable(byte_101478D54, v23);
    CRType.observableDifference(from:)();
    v39 = *(v24 + 8);
    v39(v26, v23);
    v39(v29, v23);
    v40 = v145;
    v41 = v150;
    v42 = v146;
    (*(v145 + 16))(v150, v33, v146);
    v43 = v148;
    v44 = v152;
    if ((*(v148 + 48))(v41, 1, v152) == 1)
    {
      v45 = *(v40 + 8);
      v45(v33, v42);

      v45(v41, v42);
      return _swiftEmptyArrayStorage;
    }

    else
    {
      v132 = v33;
      v47 = v151;
      (*(v43 + 32))(v151, v41, v44);
      v48 = *(v43 + 16);
      v49 = v133;
      v150 = (v43 + 16);
      v149 = v48;
      v48(v133, v47, v44);
      v50 = v44[12];
      v51 = v44[16];
      v52 = v44[20];
      v53 = v44[24];
      v54 = v44[28];
      v55 = type metadata accessor for CRValueObservableDifference();
      v56 = *(v55 - 8);
      v57 = *(v56 + 48);
      v144 = v55;
      v143 = v57;
      v142 = v56 + 48;
      if ((v57)(v49, 1) == 1)
      {
        sub_10000CAAC(v49 + v54, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v49 + v53, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v49 + v52, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v49 + v51, &qword_101A01F00, &unk_101492AB0);
        v58 = type metadata accessor for Optional();
        (*(*(v58 - 8) + 8))(v49 + v50, v58);
        sub_10000CAAC(v49, &qword_101A01F00, &unk_101492AB0);
        v46 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000CAAC(v49, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v49 + v54, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v49 + v53, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v49 + v52, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v49 + v51, &qword_101A01F00, &unk_101492AB0);
        v59 = type metadata accessor for Optional();
        (*(*(v59 - 8) + 8))(v49 + v50, v59);
        v46 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v61 = *(v46 + 2);
        v60 = *(v46 + 3);
        if (v61 >= v60 >> 1)
        {
          v46 = sub_100024CBC((v60 > 1), v61 + 1, 1, v46);
        }

        *(v46 + 2) = v61 + 1;
        v62 = &v46[16 * v61];
        *(v62 + 4) = 25705;
        *(v62 + 5) = 0xE200000000000000;
      }

      v63 = v136;
      v149(v136, v47, v44);
      v64 = v44[12];
      v65 = v44[16];
      v66 = v44[20];
      v67 = v44[24];
      v68 = v44[28];
      v69 = swift_getAssociatedTypeWitness();
      if ((*(*(v69 - 8) + 48))(v63 + v64, 1, v69) == 1)
      {
        sub_10000CAAC(v63 + v68, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v63 + v67, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v63 + v66, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v63 + v65, &qword_101A01F00, &unk_101492AB0);
        v70 = type metadata accessor for Optional();
        (*(*(v70 - 8) + 8))(v63 + v64, v70);
        sub_10000CAAC(v63, &qword_101A01F00, &unk_101492AB0);
        v71 = v137;
      }

      else
      {
        v72 = type metadata accessor for Optional();
        (*(*(v72 - 8) + 8))(v63 + v64, v72);
        sub_10000CAAC(v63 + v68, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v63 + v67, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v63 + v66, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v63 + v65, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v63, &qword_101A01F00, &unk_101492AB0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100024CBC(0, *(v46 + 2) + 1, 1, v46);
        }

        v71 = v137;
        v74 = *(v46 + 2);
        v73 = *(v46 + 3);
        if (v74 >= v73 >> 1)
        {
          v46 = sub_100024CBC((v73 > 1), v74 + 1, 1, v46);
        }

        *(v46 + 2) = v74 + 1;
        v75 = &v46[16 * v74];
        strcpy(v75 + 32, "parentAffinity");
        v75[47] = -18;
      }

      v76 = v152;
      v149(v71, v151, v152);
      v77 = v76[12];
      v78 = v76[16];
      v79 = v76[20];
      v80 = v76[24];
      v81 = v76[28];
      v82 = v143(v71 + v78, 1, v144);
      v138 = v69;
      if (v82 == 1)
      {
        sub_10000CAAC(v71 + v81, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v71 + v80, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v71 + v79, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v71 + v78, &qword_101A01F00, &unk_101492AB0);
        v83 = type metadata accessor for Optional();
        (*(*(v83 - 8) + 8))(v71 + v77, v83);
        sub_10000CAAC(v71, &qword_101A01F00, &unk_101492AB0);
        v84 = v139;
        v85 = v151;
      }

      else
      {
        sub_10000CAAC(v71 + v78, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v71 + v81, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v71 + v80, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v71 + v79, &qword_101A01F00, &unk_101492AB0);
        v86 = type metadata accessor for Optional();
        (*(*(v86 - 8) + 8))(v71 + v77, v86);
        sub_10000CAAC(v71, &qword_101A01F00, &unk_101492AB0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100024CBC(0, *(v46 + 2) + 1, 1, v46);
        }

        v84 = v139;
        v85 = v151;
        v88 = *(v46 + 2);
        v87 = *(v46 + 3);
        if (v88 >= v87 >> 1)
        {
          v46 = sub_100024CBC((v87 > 1), v88 + 1, 1, v46);
        }

        *(v46 + 2) = v88 + 1;
        v89 = &v46[16 * v88];
        *(v89 + 4) = 0x64656B636F6CLL;
        *(v89 + 5) = 0xE600000000000000;
      }

      v90 = v152;
      v149(v84, v85, v152);
      v91 = v90[12];
      v92 = v90[16];
      v93 = v90[20];
      v94 = v90[24];
      v95 = v90[28];
      if (v143(v84 + v93, 1, v144) == 1)
      {
        sub_10000CAAC(v84 + v95, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v84 + v94, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v84 + v93, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v84 + v92, &qword_101A01F00, &unk_101492AB0);
        v96 = type metadata accessor for Optional();
        (*(*(v96 - 8) + 8))(v84 + v91, v96);
        sub_10000CAAC(v84, &qword_101A01F00, &unk_101492AB0);
        v97 = v140;
      }

      else
      {
        sub_10000CAAC(v84 + v93, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v84 + v95, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v84 + v94, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v84 + v92, &qword_101A01F00, &unk_101492AB0);
        v98 = type metadata accessor for Optional();
        (*(*(v98 - 8) + 8))(v84 + v91, v98);
        sub_10000CAAC(v84, &qword_101A01F00, &unk_101492AB0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100024CBC(0, *(v46 + 2) + 1, 1, v46);
        }

        v97 = v140;
        v100 = *(v46 + 2);
        v99 = *(v46 + 3);
        if (v100 >= v99 >> 1)
        {
          v46 = sub_100024CBC((v99 > 1), v100 + 1, 1, v46);
        }

        *(v46 + 2) = v100 + 1;
        v101 = &v46[16 * v100];
        *(v101 + 4) = 0xD000000000000011;
        *(v101 + 5) = 0x8000000101563140;
      }

      v102 = v152;
      v149(v97, v151, v152);
      v103 = v102[12];
      v104 = v102[16];
      v105 = v102[20];
      v106 = v102[24];
      v107 = v102[28];
      if (v143(v97 + v106, 1, v144) == 1)
      {
        sub_10000CAAC(v97 + v107, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v97 + v106, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v97 + v105, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v97 + v104, &qword_101A01F00, &unk_101492AB0);
        v108 = type metadata accessor for Optional();
        (*(*(v108 - 8) + 8))(v97 + v103, v108);
        sub_10000CAAC(v97, &qword_101A01F00, &unk_101492AB0);
        v109 = v151;
      }

      else
      {
        sub_10000CAAC(v97 + v106, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v97 + v107, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v97 + v105, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v97 + v104, &qword_101A01F00, &unk_101492AB0);
        v110 = type metadata accessor for Optional();
        (*(*(v110 - 8) + 8))(v97 + v103, v110);
        sub_10000CAAC(v97, &qword_101A01F00, &unk_101492AB0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100024CBC(0, *(v46 + 2) + 1, 1, v46);
        }

        v109 = v151;
        v112 = *(v46 + 2);
        v111 = *(v46 + 3);
        if (v112 >= v111 >> 1)
        {
          v46 = sub_100024CBC((v111 > 1), v112 + 1, 1, v46);
        }

        *(v46 + 2) = v112 + 1;
        v113 = &v46[16 * v112];
        *(v113 + 4) = 0xD000000000000018;
        *(v113 + 5) = 0x8000000101563120;
      }

      v114 = v141;
      v115 = v152;
      v149(v141, v109, v152);
      v116 = v115[12];
      v117 = v115[16];
      v118 = v115[20];
      v119 = v115[24];
      v120 = v115[28];
      if (v143(v114 + v120, 1, v144) == 1)
      {

        (*(v148 + 8))(v109, v115);
        (*(v145 + 8))(v132, v146);
        sub_10000CAAC(v114 + v120, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v114 + v119, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v114 + v118, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v114 + v117, &qword_101A01F00, &unk_101492AB0);
        v121 = type metadata accessor for Optional();
        (*(*(v121 - 8) + 8))(v114 + v116, v121);
        sub_10000CAAC(v114, &qword_101A01F00, &unk_101492AB0);
      }

      else
      {
        sub_10000CAAC(v114 + v120, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v114 + v119, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v114 + v118, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v114 + v117, &qword_101A01F00, &unk_101492AB0);
        v122 = type metadata accessor for Optional();
        (*(*(v122 - 8) + 8))(v114 + v116, v122);
        sub_10000CAAC(v114, &qword_101A01F00, &unk_101492AB0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100024CBC(0, *(v46 + 2) + 1, 1, v46);
        }

        v123 = v148;
        v124 = v146;
        v125 = v145;
        v126 = v132;
        v128 = *(v46 + 2);
        v127 = *(v46 + 3);
        v129 = v152;
        if (v128 >= v127 >> 1)
        {
          v46 = sub_100024CBC((v127 > 1), v128 + 1, 1, v46);
        }

        (*(v123 + 8))(v151, v129);
        (*(v125 + 8))(v126, v124);
        *(v46 + 2) = v128 + 1;
        v130 = &v46[16 * v128];
        *(v130 + 4) = 0x776F64616873;
        *(v130 + 5) = 0xE600000000000000;
      }
    }

    return v46;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1007439B0(uint64_t a1)
{
  v3 = *v1;
  v24[0] = sub_1005C4E5C(&qword_1019FDFB0, &qword_101479460);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(v3 + 728);
  type metadata accessor for CRRegister.MutatingAction();
  v24[1] = type metadata accessor for Optional();
  v25 = sub_1005C4E5C(&qword_1019FDFB8, &qword_101479468);
  v26 = v25;
  v27 = sub_1005C4E5C(&qword_1019FDFC0, &qword_101479470);
  v28 = sub_1005C4E5C(&qword_1019FDFC8, &qword_101479478);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = *(TupleTypeMetadata - 8);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_10000BE14(a1, v24, &unk_1019F4D00, &unk_10146E7F0);
  if (v26)
  {
    v22 = AssociatedTypeWitness;
    v17 = swift_dynamicCast();
    v18 = *(v13 + 56);
    v18(v12, v17 ^ 1u, 1, TupleTypeMetadata);
    if ((*(v13 + 48))(v12, 1, TupleTypeMetadata) != 1)
    {
      (*(v13 + 32))(v16, v12, TupleTypeMetadata);
      (*(v13 + 16))(v9, v16, TupleTypeMetadata);
      v18(v9, 0, 1, TupleTypeMetadata);
      swift_beginAccess();
      v20 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, v22, v23, v19);
      swift_getWitnessTable(byte_101478F7C, v20);
      CRStruct_6.apply(_:)();
      (*(v7 + 8))(v9, v6);
      swift_endAccess();
      return (*(v13 + 8))(v16, TupleTypeMetadata);
    }
  }

  else
  {
    sub_10000CAAC(v24, &unk_1019F4D00, &unk_10146E7F0);
    (*(v13 + 56))(v12, 1, 1, TupleTypeMetadata);
  }

  return (*(v7 + 8))(v12, v6);
}

void sub_100743DF0()
{
  v40 = type metadata accessor for UUID();
  v1 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = (*(*v0 + 664))(v7);
  v11 = (*(*v0 + 672))();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v10;
  sub_1010935A0(v11, sub_100E8FDF4, 0, isUniquelyReferenced_nonNull_native, &v41);

  v13 = v41;
  v14 = sub_100BD5554(_swiftEmptyArrayStorage);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v41 = v13;
  sub_1010935A0(v14, sub_100E8FDF4, 0, v15, &v41);

  v16 = v41;
  v17 = v41 + 64;
  v18 = 1 << *(v41 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v41 + 64);
  v21 = (v18 + 63) >> 6;
  v35 = v1;
  v36 = (v1 + 32);

  v22 = 0;
  v38 = _swiftEmptyArrayStorage;
  while (v20)
  {
    v23 = v22;
LABEL_9:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    sub_10000BE14(*(v16 + 56) + *(v39 + 72) * (v24 | (v23 << 6)), v9, &qword_1019F6990, &qword_10146D2F0);
    sub_10003DFF8(v9, v5, &qword_1019F6990, &qword_10146D2F0);
    if ((*(v1 + 48))(v5, 1, v40) == 1)
    {
      sub_10000CAAC(v5, &qword_1019F6990, &qword_10146D2F0);
      v22 = v23;
    }

    else
    {
      v34 = *v36;
      v34(v37, v5, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_100B356D0(0, *(v38 + 2) + 1, 1, v38);
      }

      v26 = *(v38 + 2);
      v25 = *(v38 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v32 = *(v38 + 2);
        v33 = v26 + 1;
        v30 = sub_100B356D0((v25 > 1), v26 + 1, 1, v38);
        v26 = v32;
        v27 = v33;
        v38 = v30;
      }

      v28 = v37;
      v29 = v38;
      *(v38 + 2) = v27;
      v34(&v29[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v26], v28, v40);
      v22 = v23;
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      sub_100E93A84(v38);

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);

  __break(1u);
}

uint64_t sub_100744280@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 736);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v3 + 728), v6);
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t sub_100744370()
{
  v0 = type metadata accessor for CRCodableVersion();
  sub_10061655C(v0, qword_101AD6348);
  v1 = sub_1005EB3DC(v0, qword_101AD6348);
  v2 = enum case for CRCodableVersion.version3(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

Swift::Int sub_10074441C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101479530[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1007444A4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101479530[v2]);
  return Hasher._finalize()();
}

unint64_t sub_100744508()
{
  v1 = *v0;
  v2 = 0x797274656D6F6567;
  v3 = 0xD000000000000010;
  v4 = 0x636E41656C626174;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1007445B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10074A548(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100744608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007497F4();
  v5 = sub_10074984C();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100744660(uint64_t a1)
{
  v2 = sub_10074984C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074469C(uint64_t a1)
{
  v2 = sub_10074984C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007446D8@<X0>(char *a1@<X8>)
{
  v2 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v2 - 8);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for UUID();
  v25 = *(*(v13 - 8) + 56);
  v25(v12, 1, 1, v13);
  v14 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  v24 = v14;
  v28 = 1;
  v15 = type metadata accessor for CRLTableAnchorHint(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v6, 1, 1, v15);
  sub_101271CCC(v14, v27);
  sub_10000BE14(v12, v9, &qword_1019F6990, &qword_10146D2F0);
  sub_10000BE14(v6, v26, &unk_101A09DD0, &unk_101478C10);
  v25(a1, 1, 1, v13);
  v17 = type metadata accessor for CRLBoardItemParentAffinity(0);
  v18 = v17[7];
  v19 = &a1[v17[6]];
  v16(&a1[v18], 1, 1, v15);
  *&a1[v17[8]] = _swiftEmptyDictionarySingleton;
  sub_10074A3BC(v9, a1);

  sub_10000CAAC(v9, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v6, &unk_101A09DD0, &unk_101478C10);
  sub_10000CAAC(v12, &qword_1019F6990, &qword_10146D2F0);
  v20 = &a1[v17[5]];
  v21 = v27[1];
  *v20 = v27[0];
  *(v20 + 1) = v21;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  v19[64] = v28;
  return sub_10002C638(v26, &a1[v18], &unk_101A09DD0, &unk_101478C10);
}

uint64_t sub_1007449FC(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FDF88, &unk_101479390);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100020E58(a1, a1[3]);
  sub_10074984C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = 0;
  type metadata accessor for UUID();
  sub_100749620(&qword_1019F43C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLBoardItemParentAffinity(0);
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v25[0] = *v10;
    v25[1] = v11;
    v12 = v10[1];
    v23 = *v10;
    v24 = v12;
    v22 = 1;
    sub_10074A4EC(v25, v19);
    sub_10074A8D0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21[0] = v23;
    v21[1] = v24;
    sub_10074A710(v21);
    v13 = (v3 + v9[6]);
    v14 = v13[3];
    v19[2] = v13[2];
    v19[3] = v14;
    v20 = *(v13 + 64);
    v15 = *v13;
    v19[1] = v13[1];
    v19[0] = v15;
    v18 = 2;
    sub_10074A924();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19[0]) = 3;
    type metadata accessor for CRLTableAnchorHint(0);
    sub_100749620(&qword_1019FDFA0, type metadata accessor for CRLTableAnchorHint, byte_1014D05EC);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v19[0] = *(v3 + v9[8]);
    v18 = 4;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100744D64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v6 - 8);
  v35 = &v32 - v7;
  v36 = sub_1005B981C(&qword_1019FDF68, &unk_101479380);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v32 - v8;
  v10 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v37 = v10;
  v14 = *(v10 + 28);
  v15 = type metadata accessor for CRLTableAnchorHint(0);
  v16 = *(*(v15 - 8) + 56);
  v39 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = a1[3];
  v40 = a1;
  sub_100020E58(a1, v17);
  sub_10074984C();
  v18 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v22 = v39;
    sub_100005070(v40);
    sub_10000CAAC(v12, &qword_1019F6990, &qword_10146D2F0);
    return sub_10000CAAC(&v12[v22], &unk_101A09DD0, &unk_101478C10);
  }

  else
  {
    v38 = v5;
    v19 = v34;
    LOBYTE(v42) = 0;
    sub_100749620(&qword_1019F43A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = v35;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10002C638(v20, v12, &qword_1019F6990, &qword_10146D2F0);
    v51 = 1;
    sub_10074A764();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v19;
    v23 = v37;
    v24 = &v12[*(v37 + 20)];
    v25 = v48;
    *v24 = v47;
    *(v24 + 1) = v25;
    v50 = 2;
    sub_10074A7B8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = &v12[*(v23 + 24)];
    v27 = v45;
    *(v26 + 2) = v44;
    *(v26 + 3) = v27;
    v26[64] = v46;
    v28 = v43;
    *v26 = v42;
    *(v26 + 1) = v28;
    LOBYTE(v41) = 3;
    sub_100749620(&qword_1019FDF80, type metadata accessor for CRLTableAnchorHint, byte_1014D0614);
    v29 = v38;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10002C638(v29, &v12[v39], &unk_101A09DD0, &unk_101478C10);
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    v49 = 4;
    sub_100600EA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = *(v37 + 32);
    (*(v21 + 8))(v9, v36);
    *&v12[v30] = v41;
    sub_10074A80C(v12, v33);
    sub_100005070(v40);
    return sub_10074A870(v12, type metadata accessor for CRLBoardItemParentAffinity);
  }
}

__n128 sub_1007453D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v4 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1007453FC(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 24);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t sub_1007454B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100749620(&qword_1019FDF58, type metadata accessor for CRLBoardItemParentAffinity, aI_63);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10074553C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100749620(&qword_1019FDF58, type metadata accessor for CRLBoardItemParentAffinity, aI_63);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1007455C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100749620(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity, aM_15);
  v7 = sub_100749620(&qword_1019FDF60, type metadata accessor for CRLBoardItemParentAffinity, aY_54);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_10074568C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100749620(&qword_1019FDF58, type metadata accessor for CRLBoardItemParentAffinity, aI_63);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100745800(uint64_t a1)
{
  v2 = sub_100749620(&qword_1019FDF50, type metadata accessor for CRLBoardItemParentAffinity, byte_1014790F4);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

void sub_10074587C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v7 - 8);
  v28 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  v12 = type metadata accessor for UUID();
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v15 = v25 - v14;
  v18 = __chkstk_darwin(v16);
  v20 = v25 - v19;
  v30 = a1;
  if (*(a1 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v26 = v17;
    v27 = v3;
    (*(a3 + 8))(a2, a3, v18);
    sub_100C03B78(v15, v20);
    v21 = v29;
    v25[0] = *(v29 + 8);
    v25[1] = v29 + 8;
    (v25[0])(v15, v12);
    (*(a3 + 16))(v20, a2, a3);
    (*(a3 + 32))(a2, a3);
    if ((*(v21 + 48))(v11, 1, v12) == 1)
    {
      sub_10000CAAC(v11, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v22 = v29;
      v23 = v26;
      (*(v29 + 32))(v26, v11, v12);
      v24 = v28;
      sub_100C03B78(v23, v28);
      (*(v22 + 56))(v24, 0, 1, v12);
      (*(a3 + 40))(v24, a2, a3);
      (v25[0])(v23, v12);
    }
  }
}

uint64_t sub_100745BA0()
{
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);

  return CRRegister.wrappedValue.getter();
}

uint64_t sub_100745BE8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_100745D3C()
{
  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t sub_100745D88(__int128 *a1)
{
  sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
  sub_1007492B8();
  return CRRegister.init(wrappedValue:)();
}

uint64_t sub_100745E00(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745CEC(v6);
  (*(*(a1 + 24) + 32))(v2);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100745EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-v5];
  sub_10000BE14(a1, &v11[-v5], &qword_1019F6990, &qword_10146D2F0);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for CRRegister();
  v9 = CRRegister.wrappedValue.modify();
  (*(v7 + 40))(v6, v8, v7);
  v9(v11, 0);
  return sub_10000CAAC(a1, &qword_1019F6990, &qword_10146D2F0);
}

double sub_100746020@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745CEC(v8);
  (*(*(a1 + 24) + 56))(v11, v4);
  (*(v5 + 8))(v7, v4);
  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  a2[1] = v10;
  return result;
}

uint64_t sub_100746118(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for CRRegister();
  v5 = CRRegister.wrappedValue.modify();
  (*(v4 + 64))(a1, v3, v4);
  return v5(&v7, 0);
}

__n128 sub_1007461C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745CEC(v8);
  (*(*(a1 + 24) + 80))(v11, v4);
  (*(v5 + 8))(v7, v4);
  v9 = v11[3];
  *(a2 + 32) = v11[2];
  *(a2 + 48) = v9;
  *(a2 + 64) = v12;
  result = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1007462C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for CRRegister();
  v5 = CRRegister.wrappedValue.modify();
  (*(v4 + 88))(a1, v3, v4);
  return v5(&v7, 0);
}

uint64_t sub_100746370(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745CEC(v6);
  (*(*(a1 + 24) + 104))(v2);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10074645C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-v5];
  sub_10000BE14(a1, &v11[-v5], &unk_101A09DD0, &unk_101478C10);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for CRRegister();
  v9 = CRRegister.wrappedValue.modify();
  (*(v7 + 112))(v6, v8, v7);
  v9(v11, 0);
  return sub_10000CAAC(a1, &unk_101A09DD0, &unk_101478C10);
}

uint64_t sub_100746590@<X0>(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = 97;
  a1[1] = 0xE100000000000000;
  a1[2] = KeyPath;
  a1[3] = 98;
  a1[4] = 0xE100000000000000;
  a1[5] = v3;
  a1[6] = 99;
  a1[7] = 0xE100000000000000;
  a1[8] = v4;
  a1[9] = 100;
  a1[10] = 0xE100000000000000;
  a1[11] = v5;
  a1[12] = 101;
  a1[13] = 0xE100000000000000;
  a1[14] = v6;
  a1[15] = 102;
  a1[16] = 0xE100000000000000;
  a1[17] = result;
  return result;
}

uint64_t sub_1007466A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __chkstk_darwin(a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8 - 8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  sub_1005D0C00(v13);
  v12[4] = v13[4];
  v12[5] = v13[5];
  v12[6] = v13[6];
  v12[7] = v13[7];
  v12[0] = v13[0];
  v12[1] = v13[1];
  v12[2] = v13[2];
  v12[3] = v13[3];
  (*(a2 + 24))(a1, a2);
  return sub_1007467F4(v10, v7, 0, 0, 0, 0xE000000000000000, v12, a1, a3, a2);
}

uint64_t sub_1007467F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *&v40 = a5;
  *(&v40 + 1) = a6;
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v44 = a1;
  v34[1] = a10;
  v13 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin(v13);
  v41 = v34 - v14;
  v34[0] = a8;
  v35 = *(a8 - 8);
  v15 = v35;
  __chkstk_darwin(v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, a8, a10, v23);
  v36 = *(v24 + 52);
  sub_1005D0C00(v47);
  v46[4] = v47[4];
  v46[5] = v47[5];
  v46[6] = v47[6];
  v46[7] = v47[7];
  v46[0] = v47[0];
  v46[1] = v47[1];
  v46[2] = v47[2];
  v46[3] = v47[3];
  sub_100745D88(v46);
  *(a9 + *(v24 + 56)) = _swiftEmptyDictionarySingleton;
  (*(v20 + 16))(v22, v44, v19);
  CRRegister.init(_:)();
  v25 = *(v15 + 16);
  v26 = v37;
  v27 = v34[0];
  v25(v18, v37, v34[0]);
  CRRegister.init(_:)();
  LOBYTE(v45[0]) = v38;
  CRRegister.init(_:)();
  LOBYTE(v45[0]) = v39;
  CRRegister.init(_:)();
  v45[0] = v40;
  CRRegister.init(_:)();
  v28 = a7[5];
  v45[4] = a7[4];
  v45[5] = v28;
  v29 = a7[7];
  v45[6] = a7[6];
  v45[7] = v29;
  v30 = a7[1];
  v45[0] = *a7;
  v45[1] = v30;
  v31 = a7[3];
  v45[2] = a7[2];
  v45[3] = v31;
  sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
  sub_1007492B8();
  v32 = v41;
  CRRegister.init(_:)();
  (*(v35 + 8))(v26, v27);
  (*(v20 + 8))(v44, v19);
  return (*(v42 + 40))(a9 + v36, v32, v43);
}

uint64_t sub_100746BE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  sub_100745CEC(v10);
  sub_100745CEC(a2);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v9, v3);
  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  v13 = v41;
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  if (v13 != v41)
  {
    goto LABEL_13;
  }

  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  v14 = v41;
  sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  CRRegister.wrappedValue.getter();
  if (v14 != v41)
  {
    goto LABEL_13;
  }

  v15 = sub_100745D3C();
  v17 = v16;
  if (v15 == sub_100745D3C() && v17 == v18)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
LABEL_13:
      v20 = 0;
      return v20 & 1;
    }
  }

  sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  CRRegister.wrappedValue.getter();
  sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  CRRegister.wrappedValue.getter();
  v45 = v62;
  v46 = v63;
  v47 = v64;
  v48 = v65;
  v41 = v58;
  v42 = v59;
  v43 = v60;
  v44 = v61;
  v51 = v66[2];
  v52 = v66[3];
  v49 = v66[0];
  v50 = v66[1];
  v55 = v66[6];
  v56 = v66[7];
  v53 = v66[4];
  v54 = v66[5];
  v57[2] = v60;
  v57[3] = v61;
  v57[0] = v58;
  v57[1] = v59;
  v57[6] = v64;
  v57[7] = v65;
  v57[4] = v62;
  v57[5] = v63;
  if (sub_10074A978(v57) != 1)
  {
    v24[4] = v53;
    v24[5] = v54;
    v24[6] = v55;
    v24[7] = v56;
    v24[0] = v49;
    v24[1] = v50;
    v24[2] = v51;
    v24[3] = v52;
    if (sub_10074A978(v24) != 1)
    {
      v22[4] = v53;
      v22[5] = v54;
      v22[6] = v55;
      v22[7] = v56;
      v22[0] = v49;
      v22[1] = v50;
      v22[2] = v51;
      v22[3] = v52;
      v27 = v51;
      v28 = v52;
      v25 = v49;
      v26 = v50;
      v31 = v55;
      v32 = v56;
      v29 = v53;
      v30 = v54;
      v69 = v43;
      v70 = v44;
      v67 = v41;
      v68 = v42;
      v73 = v47;
      v74 = v48;
      v71 = v45;
      v72 = v46;
      sub_10000BE14(&v58, v23, &unk_101A09DE0, &qword_1014897A0);
      sub_10000BE14(v66, v23, &unk_101A09DE0, &qword_1014897A0);
      v20 = sub_100A71A74(&v67, &v25);
      sub_10000CAAC(v22, &unk_101A09DE0, &qword_1014897A0);
      sub_10000CAAC(v66, &unk_101A09DE0, &qword_1014897A0);
      sub_10000CAAC(&v58, &unk_101A09DE0, &qword_1014897A0);
      v23[4] = v45;
      v23[5] = v46;
      v23[6] = v47;
      v23[7] = v48;
      v23[0] = v41;
      v23[1] = v42;
      v23[2] = v43;
      v23[3] = v44;
      sub_10000CAAC(v23, &unk_101A09DE0, &qword_1014897A0);
      return v20 & 1;
    }

    goto LABEL_12;
  }

  v29 = v53;
  v30 = v54;
  v31 = v55;
  v32 = v56;
  v25 = v49;
  v26 = v50;
  v27 = v51;
  v28 = v52;
  if (sub_10074A978(&v25) != 1)
  {
LABEL_12:
    v37 = v53;
    v38 = v54;
    v39 = v55;
    v40 = v56;
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v36 = v52;
    v29 = v45;
    v30 = v46;
    v31 = v47;
    v32 = v48;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    sub_10000CAAC(&v25, &qword_1019FDFA8, &qword_1014C4CC0);
    goto LABEL_13;
  }

  v71 = v45;
  v72 = v46;
  v73 = v47;
  v74 = v48;
  v67 = v41;
  v68 = v42;
  v69 = v43;
  v70 = v44;
  sub_10000CAAC(&v67, &unk_101A09DE0, &qword_1014897A0);
  v20 = 1;
  return v20 & 1;
}

__n128 sub_10074714C@<Q0>(uint64_t a1@<X8>)
{
  sub_100746590(&v13);
  v2 = v15;
  v3 = v17;
  v4 = v19;
  v5 = v21;
  v6 = v23;
  result = v14;
  v8 = v16;
  v9 = v18;
  v10 = v20;
  v11 = v22;
  v12 = v24;
  *a1 = v13;
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  *(a1 + 32) = v8;
  *(a1 + 48) = v3;
  *(a1 + 56) = v9;
  *(a1 + 72) = v4;
  *(a1 + 80) = v10;
  *(a1 + 96) = v5;
  *(a1 + 104) = v11;
  *(a1 + 120) = v6;
  *(a1 + 128) = v12;
  return result;
}

uint64_t sub_1007471E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_101478F7C, a1);

  return static CRStruct_6.fieldKeys.getter(a1, WitnessTable);
}

uint64_t sub_100747244(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1007472AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_101478D54, a1);

  return CRType.context.getter(a1, WitnessTable);
}

uint64_t sub_100747300(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.newRefs(from:)(a1, a2, WitnessTable);
}

uint64_t sub_100747360(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.actionUndoingDifference(from:)();
}

uint64_t sub_1007473C8(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.apply(_:)();
}

uint64_t sub_100747428(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.hasDelta(from:)();
}

uint64_t sub_100747488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(byte_101478F7C, a3);

  return CRStruct_6.delta(_:from:)();
}

uint64_t sub_100747504(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.canMerge(delta:)(a1, a2, WitnessTable);
}

uint64_t sub_100747564(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.merge(delta:)();
}

uint64_t sub_1007475C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.copy(renamingReferences:)(a1, a2, WitnessTable);
}

uint64_t sub_10074762C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.copy(renamingReferences:)(a1, a2, WitnessTable);
}

uint64_t sub_100747694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(byte_101478F7C, a3);

  return CRStruct_6.observableDifference(from:with:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100747710(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.visitReferences(_:)(a1, a2, WitnessTable);
}

BOOL sub_100747770(uint64_t a1)
{
  swift_getWitnessTable(byte_101478F7C, a1);

  return CRStruct_6.needToFinalizeTimestamps()();
}

uint64_t sub_1007477C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.finalizeTimestamps(_:)(a1, a2, WitnessTable);
}

uint64_t sub_100747824(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.merge(_:)();
}

uint64_t sub_10074788C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_101478F7C);

  return CRStruct_6.merge(_:)(a1, a2, WitnessTable);
}

uint64_t sub_100747A8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_101478F7C, a1);

  return CRStruct_6.minEncodingVersion.getter(a1, WitnessTable);
}

uint64_t *sub_100747AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *v2;
  v7 = *(a1 + 16);
  *(v2 + 3) = *a1;
  *(v2 + 5) = v7;
  *(v2 + 56) = *(a1 + 32);
  v8 = v6;
  if ((*(v5 + 128))())
  {
    a2 |= 2uLL;
  }

  v9 = (*(v8 + 136))();
  v10 = a2 | 4;
  if ((v9 & 1) == 0)
  {
    v10 = a2;
  }

  v3[2] = v10;
  return v3;
}

unint64_t sub_100747BB4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = [v1 BOOLForKey:@"CRLAllowInteractionWithUnsupportedBoardAndBoardItemsUserDefault"];

  v3 = v0[3];
  result = sub_10001FF1C();
  if (result < v3 && v2 == 0)
  {
    return result;
  }

  v0[3] = (*(*v0 + 216))();
  v6 = (*(*v0 + 240))();
  v7 = v0[2];
  if (v6)
  {
    if ((v7 & 1) == 0)
    {
      v8 = v7 | 1;
LABEL_10:
      v0[2] = v8;
    }
  }

  else if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    goto LABEL_10;
  }

  v9 = v0[4];
  if (sub_10001FF1C() >= v9)
  {
    v0[4] = (*(*v0 + 224))();
  }

  v10 = v0[5];
  result = sub_10001FF1C();
  if (result >= v10)
  {
    result = (*(*v0 + 232))();
    v0[5] = result;
  }

  return result;
}

uint64_t sub_100748A88(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(319, AssociatedTypeWitness, a1[91], v3);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 sub_100748C90@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 56);
  result = *(*v1 + 24);
  v4 = *(*v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_100748CE4()
{
  v1 = *v0;
  v2 = *(*v0 + 736);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for CRLBoardItemCommonAbstractCRDTData(0, AssociatedTypeWitness, *(v1 + 728), v4);
  (*(*(v5 - 8) + 8))(&v0[v2], v5);
  v6 = *(*v0 + 744);
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);

  return v8(&v0[v6], v7);
}

uint64_t sub_100748E08()
{
  sub_10073C67C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLBoardItemParentAffinity(uint64_t a1)
{
  result = qword_1019FDDE0;
  if (!qword_1019FDDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100748F04(uint64_t a1)
{
  sub_100749074(319, &qword_1019F44E0, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_100749024();
    if (v2 <= 0x3F)
    {
      sub_100749074(319, &unk_1019FDDF8, type metadata accessor for CRLTableAnchorHint);
      if (v3 <= 0x3F)
      {
        sub_100749390(319, &qword_1019F5D58, &type metadata accessor for AnyCRValue, &type metadata for Int, &protocol witness table for Int);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100749024()
{
  if (!qword_1019FDDF0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FDDF0);
    }
  }
}

void sub_100749074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1007490D0(uint64_t a1)
{
  sub_10007DE30(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRRegister();
    if (v2 <= 0x3F)
    {
      sub_100039D58(319, &qword_1019F7D40, &type metadata for Bool, &protocol witness table for Bool);
      if (v3 <= 0x3F)
      {
        sub_100039D58(319, &qword_1019F48D0, &type metadata for String, &protocol witness table for String);
        if (v4 <= 0x3F)
        {
          sub_100749248();
          if (v5 <= 0x3F)
          {
            sub_100749390(319, &qword_1019F48F8, &type metadata accessor for AnyCRDT, &type metadata for String, &protocol witness table for String);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100749248()
{
  if (!qword_1019FDEC0)
  {
    sub_1005C4E5C(&unk_101A09DE0, &qword_1014897A0);
    sub_1007492B8();
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FDEC0);
    }
  }
}

unint64_t sub_1007492B8()
{
  result = qword_101A106A0;
  if (!qword_101A106A0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&unk_101A09DE0, &qword_1014897A0);
    v4[0] = sub_10074933C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_101A106A0);
  }

  return result;
}

unint64_t sub_10074933C()
{
  result = qword_101A09DF0;
  if (!qword_101A09DF0)
  {
    result = swift_getWitnessTable("!&:", &type metadata for CRLShadowData, v0, v1);
    atomic_store(result, &qword_101A09DF0);
  }

  return result;
}

void sub_100749390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = type metadata accessor for Dictionary();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_100749620(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_100749744()
{
  result = qword_1019FDF10;
  if (!qword_1019FDF10)
  {
    result = swift_getWitnessTable(aM_31, &type metadata for CRLBoardItemParentAffinity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FDF10);
  }

  return result;
}

unint64_t sub_10074979C()
{
  result = qword_1019FDF18;
  if (!qword_1019FDF18)
  {
    result = swift_getWitnessTable(byte_101479258, &type metadata for CRLBoardItemParentAffinity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FDF18);
  }

  return result;
}

unint64_t sub_1007497F4()
{
  result = qword_1019FDF20;
  if (!qword_1019FDF20)
  {
    result = swift_getWitnessTable(aY_53, &type metadata for CRLBoardItemParentAffinity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FDF20);
  }

  return result;
}

unint64_t sub_10074984C()
{
  result = qword_1019FDF28;
  if (!qword_1019FDF28)
  {
    result = swift_getWitnessTable(byte_101479174, &type metadata for CRLBoardItemParentAffinity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FDF28);
  }

  return result;
}

unint64_t sub_1007498A4()
{
  result = qword_1019FDF30;
  if (!qword_1019FDF30)
  {
    result = swift_getWitnessTable(aM_32, &type metadata for CRLBoardItemParentAffinity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FDF30);
  }

  return result;
}

unint64_t sub_1007498FC()
{
  result = qword_1019FDF38;
  if (!qword_1019FDF38)
  {
    result = swift_getWitnessTable(byte_1014791C4, &type metadata for CRLBoardItemParentAffinity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FDF38);
  }

  return result;
}

uint64_t sub_1007499DC(uint64_t a1)
{
  *(a1 + 8) = sub_100749620(&qword_1019FDF58, type metadata accessor for CRLBoardItemParentAffinity, aI_63);
  result = sub_100749620(&qword_1019FDF60, type metadata accessor for CRLBoardItemParentAffinity, aY_54);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100749A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v64 - v7;
  v8 = type metadata accessor for CRLTableAnchorHint(0);
  v72 = *(v8 - 8);
  v73 = v8;
  __chkstk_darwin(v8);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v10 - 8);
  v70 = &v64 - v11;
  v71 = sub_1005B981C(&unk_101A0B010, &unk_101479370);
  __chkstk_darwin(v71);
  v74 = &v64 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v64 - v18;
  v20 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v20 - 8);
  v22 = &v64 - v21;
  v24 = *(v23 + 56);
  v75 = a1;
  sub_10000BE14(a1, &v64 - v21, &qword_1019F6990, &qword_10146D2F0);
  sub_10000BE14(a2, &v22[v24], &qword_1019F6990, &qword_10146D2F0);
  v25 = *(v14 + 48);
  if (v25(v22, 1, v13) == 1)
  {
    if (v25(&v22[v24], 1, v13) == 1)
    {
      sub_10000CAAC(v22, &qword_1019F6990, &qword_10146D2F0);
      goto LABEL_11;
    }

LABEL_6:
    v26 = &unk_101A0AFE0;
    v27 = &unk_10146F3C0;
    v28 = v22;
    goto LABEL_7;
  }

  sub_10000BE14(v22, v19, &qword_1019F6990, &qword_10146D2F0);
  if (v25(&v22[v24], 1, v13) == 1)
  {
    (*(v14 + 8))(v19, v13);
    goto LABEL_6;
  }

  (*(v14 + 32))(v16, &v22[v24], v13);
  sub_100749620(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v14 + 8);
  v32(v16, v13);
  v32(v19, v13);
  sub_10000CAAC(v22, &qword_1019F6990, &qword_10146D2F0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v33 = type metadata accessor for CRLBoardItemParentAffinity(0);
  v29 = 0;
  v34 = v33[5];
  v35 = v75;
  v36 = (v75 + v34);
  v37 = *(v75 + v34 + 16);
  v38 = (a2 + v34);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v36, *v38)))) & 1) == 0 && v37 == v38[1].f32[0] && ((v36[1].u8[4] ^ v38[1].u8[4]) & 1) == 0 && ((v36[1].u8[5] ^ v38[1].u8[5]) & 1) == 0 && ((v36[1].u8[6] ^ v38[1].u8[6]) & 1) == 0 && ((v36[1].u8[7] ^ v38[1].u8[7]) & 1) == 0)
  {
    sub_100B3216C(v36[1].i64[1], v38[1].i64[1]);
    if ((v39 & 1) == 0)
    {
      goto LABEL_8;
    }

    v40 = v33[6];
    v41 = (v35 + v40);
    v42 = *(v35 + v40 + 64);
    v43 = (a2 + v40);
    if (v42)
    {
      if ((v43[4].i8[0] & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if ((v43[4].i8[0] & 1) != 0 || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v41[1], v43[1]), vceqq_f32(*v41, *v43)), vandq_s8(vceqq_f32(v41[2], v43[2]), vceqq_f32(v41[3], v43[3])))) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    v44 = v33[7];
    v45 = *(v71 + 48);
    v46 = v74;
    sub_10000BE14(v35 + v44, v74, &unk_101A09DD0, &unk_101478C10);
    sub_10000BE14(a2 + v44, v46 + v45, &unk_101A09DD0, &unk_101478C10);
    v47 = v73;
    v48 = *(v72 + 6);
    if (v48(v46, 1, v73) == 1)
    {
      if (v48(v46 + v45, 1, v47) == 1)
      {
        sub_10000CAAC(v46, &unk_101A09DD0, &unk_101478C10);
LABEL_26:
        sub_100B3216C(*(v35 + v33[8]), *(a2 + v33[8]));
        return v29 & 1;
      }
    }

    else
    {
      v49 = v70;
      sub_10000BE14(v46, v70, &unk_101A09DD0, &unk_101478C10);
      if (v48(v46 + v45, 1, v47) != 1)
      {
        v72 = v33;
        v50 = v69;
        sub_10074A42C(v46 + v45, v69);
        _s6CellIDVMa(0);
        sub_100749620(&unk_101A0B020, _s6CellIDVMa, byte_1014D2118);
        v51 = v65;
        dispatch thunk of RawRepresentable.rawValue.getter();
        v52 = v66;
        v53 = v50;
        dispatch thunk of RawRepresentable.rawValue.getter();
        sub_100749620(&unk_101A2C5A0, &type metadata accessor for CRKeyPath, &protocol conformance descriptor for CRKeyPath);
        v54 = v68;
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v56 = *(v67 + 8);
        v56(v52, v54);
        v56(v51, v54);
        if (v55)
        {
          v57 = (v49 + *(v73 + 20));
          v58 = v57[1];
          v76[0] = *v57;
          v76[1] = v58;
          v59 = (v53 + *(v73 + 20));
          v60 = v59[1];
          v77[0] = *v59;
          v77[1] = v60;
          sub_101271C28(v76, v77);
          if (v61)
          {
            sub_100B3216C(*(v49 + *(v73 + 24)), *(v53 + *(v73 + 24)));
            v63 = v62;
            sub_10074A870(v53, type metadata accessor for CRLTableAnchorHint);
            sub_10074A870(v49, type metadata accessor for CRLTableAnchorHint);
            sub_10000CAAC(v74, &unk_101A09DD0, &unk_101478C10);
            v33 = v72;
            if (v63)
            {
              goto LABEL_26;
            }

            goto LABEL_8;
          }
        }

        sub_10074A870(v53, type metadata accessor for CRLTableAnchorHint);
        sub_10074A870(v49, type metadata accessor for CRLTableAnchorHint);
        v26 = &unk_101A09DD0;
        v27 = &unk_101478C10;
        v28 = v74;
        goto LABEL_7;
      }

      sub_10074A870(v49, type metadata accessor for CRLTableAnchorHint);
    }

    v26 = &unk_101A0B010;
    v27 = &unk_101479370;
    v28 = v46;
LABEL_7:
    sub_10000CAAC(v28, v26, v27);
LABEL_8:
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_10074A3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074A42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLTableAnchorHint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074A548(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000101563040 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797274656D6F6567 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101563060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E41656C626174 && a2 == 0xEF746E6948726F68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

unint64_t sub_10074A764()
{
  result = qword_1019FDF70;
  if (!qword_1019FDF70)
  {
    result = swift_getWitnessTable(byte_1014D731C, &type metadata for CRLCanvasInfoGeometryData, v0, v1);
    atomic_store(result, &qword_1019FDF70);
  }

  return result;
}

unint64_t sub_10074A7B8()
{
  result = qword_1019FDF78;
  if (!qword_1019FDF78)
  {
    result = swift_getWitnessTable(byte_1014BAB30, &type metadata for CRL3DTransform, v0, v1);
    atomic_store(result, &qword_1019FDF78);
  }

  return result;
}

uint64_t sub_10074A80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardItemParentAffinity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074A870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10074A8D0()
{
  result = qword_1019FDF90;
  if (!qword_1019FDF90)
  {
    result = swift_getWitnessTable(asc_1014D72F4, &type metadata for CRLCanvasInfoGeometryData, v0, v1);
    atomic_store(result, &qword_1019FDF90);
  }

  return result;
}

unint64_t sub_10074A924()
{
  result = qword_1019FDF98;
  if (!qword_1019FDF98)
  {
    result = swift_getWitnessTable(byte_1014BAB08, &type metadata for CRL3DTransform, v0, v1);
    atomic_store(result, &qword_1019FDF98);
  }

  return result;
}

uint64_t sub_10074A978(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_10074AA00()
{
  result = qword_1019FDFD0;
  if (!qword_1019FDFD0)
  {
    result = swift_getWitnessTable("ՠ;", &type metadata for CRLBoardItemParentAffinity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FDFD0);
  }

  return result;
}

uint64_t sub_10074AA58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10074D924(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10074AA80(uint64_t a1)
{
  v2 = sub_10005E280();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074AABC(uint64_t a1)
{
  v2 = sub_10005E280();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AASUserInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FDFD8, &qword_101479580);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_10005E280();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_1005B981C(&qword_1019FDFE8, &unk_101479588);
  sub_10074AD54();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for AASUserInfo(0);
    v10[6] = 1;
    type metadata accessor for UUID();
    sub_10005C8B0(&qword_1019F43C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[5] = 2;
    type metadata accessor for Date();
    sub_10005C8B0(&qword_101A19AD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10074AD54()
{
  result = qword_1019FDFF0;
  if (!qword_1019FDFF0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_1019FDFE8, &unk_101479588);
    v4[0] = sub_10074AE10();
    v4[1] = sub_10005C8B0(&qword_101A19AD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_1019FDFF0);
  }

  return result;
}

unint64_t sub_10074AE10()
{
  result = qword_1019FDFF8;
  if (!qword_1019FDFF8)
  {
    result = swift_getWitnessTable("ɟ;", &type metadata for AASApplicationVariant, v0, v1);
    atomic_store(result, &qword_1019FDFF8);
  }

  return result;
}

void sub_10074AE7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:isa forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t sub_10074AF18()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_10074B220;
  }

  else
  {
    v3 = sub_10074B080;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10074B080()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10074B144, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10074B144(uint64_t a1)
{
  v2 = *(v1 + 96);
  sub_10074B5F4();
  *(v2 + 208) = 0;
  sub_100060F08();

  return _swift_task_switch(sub_10074B1B4, 0, 0);
}

uint64_t sub_10074B1B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10074B220()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_10074B284()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for AASUserInfo(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  [*sub_100020E58(v0 + 16 v0[19])];
  sub_1005B981C(&qword_1019FE200, &qword_1014799F8);
  v8 = *(sub_1005B981C(&qword_1019FE208, &qword_101479A00) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10146C6B0;
  static Date.now.getter();
  v11 = sub_100BD6064(v10);
  swift_setDeallocating();
  sub_10000CAAC(v10 + v9, &qword_1019FE208, &qword_101479A00);
  swift_deallocClassInstance();
  UUID.init()();
  v12 = *(v5 + 32);
  static Date.now.getter();
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v7 + v12, 0, 1, v13);
  *v7 = v11;
  sub_10074C368(v7);
  sub_10005EC10(v7);
  if (v0[27])
  {

    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    Task.cancel()();
  }

  sub_100060F08();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;

  sub_10064191C(0, 0, v3, &unk_101479A30, v17);

  return result;
}

void sub_10074B5F4()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v41[-v2];
  v4 = sub_1005B981C(&qword_1019FBE50, &unk_101476290);
  __chkstk_darwin(v4 - 8);
  v6 = &v41[-v5];
  v7 = type metadata accessor for AASUserInfo(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v41[-v12];
  [*sub_100020E58(v0 + 16 v0[19])];
  sub_10005A4B8(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CAAC(v6, &qword_1019FBE50, &unk_101476290);
    sub_10074B284();
    v14 = objc_opt_self();
    v15 = [v14 _atomicIncrementAssertCount];
    v42 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v42, "UserInfo is nil, creating new UserInfo", 38, 2u);
    StaticString.description.getter("resetIdentifiers()", 18, 2);
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAppAnalyticsSupports/Shared/AASUserInfoManager.swift", 109, 2);
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
    v25 = sub_10005C8B0(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v25;
    *(inited + 72) = v16;
    *(inited + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 112) = v19;
    *(inited + 120) = v21;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v26;
    *(inited + 152) = 246;
    v27 = v42;
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
    sub_100005404(v22, &_mh_execute_header, v31, "UserInfo is nil, creating new UserInfo", 38, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
    v33 = __VaListBuilder.va_list()();
    StaticString.description.getter("resetIdentifiers()", 18, 2);
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLAppAnalyticsSupports/Shared/AASUserInfoManager.swift", 109, 2);
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter("UserInfo is nil, creating new UserInfo", 38, 2);
    v36 = String._bridgeToObjectiveC()();

    [v14 handleFailureInFunction:v34 file:v35 lineNumber:246 isFatal:0 format:v36 args:v33];
  }

  else
  {
    sub_10005EC6C(v6, v13);
    sub_10074C670(v13, v10);
    sub_10074C368(v10);
    sub_10005EC10(v10);
    if (v0[27])
    {

      sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
      Task.cancel()();
    }

    sub_100060F08();
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v3, 1, 1, v37);
    v38 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v39 = static MainActor.shared.getter();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = &protocol witness table for MainActor;
    v40[4] = v38;

    sub_10064191C(0, 0, v3, &unk_101479A18, v40);

    sub_10005EC10(v13);
  }
}

uint64_t sub_10074BCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_1005B981C(&qword_1019FBE50, &unk_101476290);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[24] = v7;
  v4[25] = v6;

  return _swift_task_switch(sub_10074BDE0, v7, v6);
}

uint64_t sub_10074BDE0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 208) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_10074BEBC, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_10074BEBC()
{
  sub_10005A4B8(v0[18]);

  v1 = v0[24];
  v2 = v0[25];

  return _swift_task_switch(sub_10074BF2C, v1, v2);
}

uint64_t sub_10074BF2C()
{
  v1 = v0[18];

  v2 = type metadata accessor for AASUserInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000CAAC(v0[18], &qword_1019FBE50, &unk_101476290);
  }

  else
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[19];
    v6 = v0[20];
    v7 = v0[18];
    v8 = *(v6 + 16);
    v8(v4, v7 + *(v2 + 20), v5);
    sub_10005EC10(v7);
    (*(v6 + 32))(v3, v4, v5);
    sub_1005B981C(&qword_1019FE220, &qword_101479A20);
    v9 = (sub_1005B981C(&qword_1019FE228, &qword_101479A28) - 8);
    v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10146C6B0;
    v12 = (v11 + v10);
    v13 = v9[14];
    *v12 = 0x444972657375;
    v12[1] = 0xE600000000000000;
    v8(v12 + v13, v3, v5);
    v14 = sub_100BD6224(v11);
    swift_setDeallocating();
    sub_10000CAAC(v12, &qword_1019FE228, &qword_101479A28);
    swift_deallocClassInstance();
    v15 = [objc_opt_self() defaultCenter];
    if (qword_1019F14F8 != -1)
    {
      swift_once();
    }

    v16 = static NSNotificationName.AASUserIdentifierDidResetNotification;
    sub_1010A8348(v14);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 postNotificationName:v16 object:0 userInfo:isa];

    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    v18 = v0[22];
    v19 = v0[19];
    v20 = v0[20];
    swift_beginAccess();
    v21 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v23 = v21;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v24;
    *(inited + 40) = v26;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v23, &_mh_execute_header, v27, "UserID did reset to: %@", 23, 2, inited);

    swift_setDeallocating();
    sub_100005070((inited + 32));
    (*(v20 + 8))(v18, v19);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_10074C368(uint64_t a1)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for AASUserInfo(0);
  sub_10005C8B0(&qword_1019FE210, type metadata accessor for AASUserInfo, protocol conformance descriptor for AASUserInfo);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  v5 = v2;

  v6 = *sub_100020E58((v1 + 128), *(v1 + 152));
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 ubiquityIdentityToken];

  if (v8)
  {
    swift_unknownObjectRelease();

    v9 = &off_101885218;
  }

  else
  {
    v10 = v6;
    v9 = &off_1018850C8;
  }

  swift_getObjectType();
  v11 = v9[2];
  sub_100024E98(v5, v4);
  v11(v5, v4);
  sub_10002640C(v5, v4);
  swift_unknownObjectRelease();

  return sub_10002640C(v5, v4);
}

uint64_t sub_10074C670@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = static OS_os_log.crlAppAnalytics;
    v5 = static os_log_type_t.default.getter();
    sub_100005404(v4, &_mh_execute_header, v5, "update user info", 16, 2, _swiftEmptyArrayStorage);

    v6 = type metadata accessor for AASUserInfo(0);
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = static OS_os_log.crlAppAnalytics;
    v8 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v8, "update user info with new date", 30, 2, _swiftEmptyArrayStorage);

    sub_1005B981C(&qword_1019FE200, &qword_1014799F8);
    v9 = *(sub_1005B981C(&qword_1019FE208, &qword_101479A00) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10146C6B0;
    static Date.now.getter();
    v3 = sub_100BD6064(v11);
    swift_setDeallocating();
    sub_10000CAAC(v11 + v10, &qword_1019FE208, &qword_101479A00);
    swift_deallocClassInstance();
    v6 = type metadata accessor for AASUserInfo(0);
  }

  UUID.init()();
  v12 = *(v6 + 24);
  static Date.now.getter();
  v13 = type metadata accessor for Date();
  result = (*(*(v13 - 8) + 56))(a2 + v12, 0, 1, v13);
  *a2 = v3;
  return result;
}

uint64_t sub_10074C920()
{

  sub_100005070((v0 + 128));
  sub_100005070((v0 + 168));

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

unint64_t sub_10074C974()
{
  result = qword_1019FE180;
  if (!qword_1019FE180)
  {
    result = swift_getWitnessTable(byte_1014797F4, &type metadata for AASUserInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FE180);
  }

  return result;
}

unint64_t sub_10074C9CC()
{
  result = qword_1019FE188;
  if (!qword_1019FE188)
  {
    v3 = sub_1005C4E5C(&qword_1019FE190, qword_101479830);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1019FE188);
  }

  return result;
}

uint64_t sub_10074CA30(uint64_t a1)
{
  v2 = sub_10005EA24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074CA6C(uint64_t a1)
{
  v2 = sub_10005EA24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10074CAA8(uint64_t a1)
{
  v2 = sub_10005EB00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10074CAE4(uint64_t a1)
{
  v2 = sub_10005EB00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10074CB20(void *a1)
{
  v2 = sub_1005B981C(&qword_1019FE1B0, &qword_1014799B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = sub_1005B981C(&qword_1019FE1B8, &qword_1014799B8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100020E58(a1, a1[3]);
  sub_10005EA24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10005EB00();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10074CD08()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

uint64_t sub_10074CD3C()
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

uint64_t sub_10074CD70()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
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

uint64_t sub_10074CDA4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
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

uint64_t sub_10074CDD8()
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

uint64_t sub_10074CE0C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
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

uint64_t sub_10074CE40()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_10074CE74(uint64_t a1, unint64_t a2)
{
  result = 0;
  sub_1005B981C(&qword_1019FE1E0, &qword_1014799D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrApplicationTag;
  v6 = kSecClass;
  v7 = kSecClassKey;
  v8 = kSecAttrApplicationTag;

  *(inited + 80) = sub_1000607F0(a1, a2);
  *(inited + 88) = v9;
  *(inited + 104) = &type metadata for Data;
  *(inited + 112) = kSecAttrSynchronizable;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecReturnData;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = 1;
  v10 = kSecAttrSynchronizable;
  v11 = kSecReturnData;
  sub_100BD5F3C(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_1019FE1E8, &qword_1014799E0);
  swift_arrayDestroy();
  sub_10005C8B0(&qword_1019F3BC8, type metadata accessor for CFString, byte_10146B770);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = SecItemCopyMatching(isa, &result);

  if (v13)
  {
    v14 = SecCopyErrorMessageString(v13, 0);
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_10146C4D0;
    *(v18 + 56) = &type metadata for String;
    v19 = sub_1000053B0();
    *(v18 + 64) = v19;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;
    *(v18 + 96) = &type metadata for Int32;
    *(v18 + 104) = &protocol witness table for Int32;
    *(v18 + 72) = v13;
    *(v18 + 136) = &type metadata for String;
    *(v18 + 144) = v19;
    *(v18 + 112) = 0;
    *(v18 + 120) = 0xE000000000000000;

    v20 = v17;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v21, "Error reading data from Keychain, tag=%{public}@, status=%{public}d, error=%{public}@", 85, 2, v18);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v16 = 0;
  }

  else if (result)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v16 = v23;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_10074D264(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  v46 = a3;
  v47 = a4;
  v6 = sub_1000607F0(a3, a4);
  v8 = v7;
  sub_1005B981C(&qword_1019FE1E0, &qword_1014799D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  v11 = v10;
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v10;
  *(inited + 72) = kSecAttrApplicationTag;
  *(inited + 80) = v6;
  *(inited + 88) = v8;
  *(inited + 104) = &type metadata for Data;
  *(inited + 112) = kSecAttrSynchronizable;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecReturnData;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = 1;
  v44 = kSecClass;
  v43 = kSecClassKey;
  v12 = v8;
  v13 = v6;
  v42 = kSecAttrApplicationTag;
  sub_100024E98(v6, v12);
  v41 = kSecAttrSynchronizable;
  v14 = kSecReturnData;
  sub_100BD5F3C(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_1019FE1E8, &qword_1014799E0);
  swift_arrayDestroy();
  sub_10005C8B0(&qword_1019F3BC8, type metadata accessor for CFString, byte_10146B770);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = SecItemDelete(isa);

  if (v16)
  {
    v17 = SecCopyErrorMessageString(v16, 0);
    if (v17)
    {
      v18 = v17;
      objc_opt_self();
      v19 = v12;
      if (swift_dynamicCastObjCClass())
      {
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    else
    {
      v19 = v12;
    }

    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_10146C4D0;
    *(v21 + 56) = &type metadata for String;
    v22 = sub_1000053B0();
    *(v21 + 64) = v22;
    *(v21 + 32) = a3;
    *(v21 + 40) = v47;
    *(v21 + 96) = &type metadata for Int32;
    *(v21 + 104) = &protocol witness table for Int32;
    *(v21 + 72) = v16;
    *(v21 + 136) = &type metadata for String;
    *(v21 + 144) = v22;
    *(v21 + 112) = 0;
    *(v21 + 120) = 0xE000000000000000;

    v23 = v20;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v24, "Error deleting data from Keychain, tag=%{public}@, status=%{public}d, error=%{public}@", 86, 2, v21);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v12 = v19;
    v13 = v6;
  }

  if (a2 >> 60 == 15)
  {
    return sub_10002640C(v13, v12);
  }

  v26 = swift_initStackObject();
  *(v26 + 32) = v44;
  *(v26 + 16) = xmmword_10146D2A0;
  *(v26 + 40) = v43;
  *(v26 + 64) = v11;
  *(v26 + 72) = v42;
  *(v26 + 80) = v13;
  *(v26 + 88) = v12;
  *(v26 + 104) = &type metadata for Data;
  *(v26 + 112) = v41;
  *(v26 + 120) = 1;
  *(v26 + 144) = &type metadata for Bool;
  *(v26 + 152) = kSecValueData;
  *(v26 + 184) = &type metadata for Data;
  *(v26 + 160) = a1;
  *(v26 + 168) = a2;
  sub_100024E84(a1, a2);
  v27 = v44;
  v28 = v43;
  v29 = v42;
  sub_100024E98(v13, v12);
  v30 = v41;
  sub_100024E84(a1, a2);
  v31 = kSecValueData;
  sub_100BD5F3C(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = SecItemAdd(v32, 0);

  if (v33)
  {
    v34 = SecCopyErrorMessageString(v33, 0);
    if (v34)
    {
      v35 = v34;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v36 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_10146C4D0;
    *(v37 + 56) = &type metadata for String;
    v38 = sub_1000053B0();
    *(v37 + 64) = v38;
    *(v37 + 32) = v46;
    *(v37 + 40) = v47;
    *(v37 + 96) = &type metadata for Int32;
    *(v37 + 104) = &protocol witness table for Int32;
    *(v37 + 72) = v33;
    *(v37 + 136) = &type metadata for String;
    *(v37 + 144) = v38;
    *(v37 + 112) = 0;
    *(v37 + 120) = 0xE000000000000000;

    v39 = v36;
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v39, &_mh_execute_header, v40, "Error writing data to Keychain, tag=%{public}@, status=%{public}d, error=%{public}@", 83, 2, v37);
    sub_100025870(a1, a2);

    sub_10002640C(v13, v12);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    return swift_arrayDestroy();
  }

  else
  {
    sub_10002640C(v13, v12);
    return sub_100025870(a1, a2);
  }
}