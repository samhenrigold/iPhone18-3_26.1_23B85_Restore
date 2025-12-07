void sub_10019929C(char *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_streamingRequestCount] >= 3)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008A14(v8, &unk_1003B8820);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "EnhancedEmergency: fetchAllPendingRequest, pendingVideoStreamingRequest, reached maxRequestCountPerRequestType for streaming. Reject the new request", v11, 2u);
    }

    v12 = *&a1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
    if (v12)
    {
      v13 = v12;
      v14 = [a2 ID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v5 + 8))(v7, v4);
      v16 = swift_allocObject();
      *(v16 + 16) = a2;
      *(v16 + 24) = a1;
      aBlock[4] = sub_1001A07E0;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001A0960;
      aBlock[3] = &unk_10035CD48;
      v17 = _Block_copy(aBlock);
      v18 = a2;
      v19 = a1;

      [v13 handleResponse:0 forRequest:isa completion:v17];
      _Block_release(v17);
    }
  }

  else
  {
    sub_100197C6C();
  }
}

void sub_100199550(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8820);
    swift_errorRetain();
    v6 = a3;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v6;
      *v9 = v6;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v10 = v6;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      v9[1] = v11;
      _os_log_impl(&_mh_execute_header, oslog, v7, "EnhancedEmergency: fetchAllPendingRequest, pendingVideoStreamingRequest, EED returned error while updating state:Rejected for video streaming request: %@, error: %@", v8, 0x16u);
      sub_10014EA98(&qword_1003B0230, &qword_1002FC550);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (a1)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = *(a4 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest);
        *(a4 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest) = v14;
        v16 = a1;

        if (qword_1003A9F40 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100008A14(v17, &unk_1003B8820);
        v18 = a3;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412546;
          *(v21 + 4) = v18;
          *(v21 + 12) = 2112;
          *(v21 + 14) = 0;
          *v22 = v18;
          v22[1] = 0;
          v23 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "EnhancedEmergency: fetchAllPendingRequest, pendingVideoStreamingRequest, finished updating state:Rejected for video streaming request: %@, error: %@", v21, 0x16u);
          sub_10014EA98(&qword_1003B0230, &qword_1002FC550);
          swift_arrayDestroy();
        }

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "EnhancedEmergency: fetchAllPendingRequest, pendingVideoStreamingRequest, reset videoStreamingRequest due to rate limiting", v26, 2u);
        }
      }
    }

    sub_1001984D8();
  }
}

void sub_100199938(char *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequestCount] >= 3)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008A14(v8, &unk_1003B8820);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "EnhancedEmergency: fetchAllPendingRequest, reached maxRequestCountPerRequestType for media upload. Reject the new request", v11, 2u);
    }

    v12 = *&a1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
    if (v12)
    {
      v13 = v12;
      v14 = [a2 ID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v5 + 8))(v7, v4);
      v16 = swift_allocObject();
      *(v16 + 16) = a2;
      *(v16 + 24) = a1;
      aBlock[4] = sub_1001A07E8;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001A0960;
      aBlock[3] = &unk_10035CD98;
      v17 = _Block_copy(aBlock);
      v18 = a2;
      v19 = a1;

      [v13 handleResponse:0 forRequest:isa completion:v17];
      _Block_release(v17);
    }
  }

  else
  {
    sub_1001980D0();
  }
}

void sub_100199BEC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8820);
    swift_errorRetain();
    v6 = a3;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v6;
      *v9 = v6;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v10 = v6;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      v9[1] = v11;
      _os_log_impl(&_mh_execute_header, oslog, v7, "EnhancedEmergency: fetchAllPendingRequest, pendingMediaUploadRequest, EED returned error while updating state:Rejected for media upload request: %@, error: %@", v8, 0x16u);
      sub_10014EA98(&qword_1003B0230, &qword_1002FC550);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (a1)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = *(a4 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest);
        *(a4 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest) = v14;
        v16 = a1;

        if (qword_1003A9F40 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100008A14(v17, &unk_1003B8820);
        v18 = a3;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412546;
          *(v21 + 4) = v18;
          *(v21 + 12) = 2112;
          *(v21 + 14) = 0;
          *v22 = v18;
          v22[1] = 0;
          v23 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "EnhancedEmergency: fetchAllPendingRequest,pendingMediaUploadRequest, finished updating state:Rejected for media upload request: %@, error: %@", v21, 0x16u);
          sub_10014EA98(&qword_1003B0230, &qword_1002FC550);
          swift_arrayDestroy();
        }

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "EnhancedEmergency: fetchAllPendingRequest,pendingMediaUploadRequest, reset mediaUploadRequest due to rate limiting", v26, 2u);
        }
      }
    }

    sub_1001984A8();
  }
}

uint64_t sub_100199FD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_10019A074()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_100007F34();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_10000558C();
  }

  if (*&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper])
  {
    sub_100005C44();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v15[4] = sub_1001A074C;
    v15[5] = v11;
    sub_100006C90();
    sub_1001A0AA4();
    v15[2] = sub_1001A0960;
    v15[3] = &unk_10035CBB8;
    _Block_copy(v15);
    v12 = sub_1001A0D4C();
    v13 = v1;

    sub_1001A0D04(v14, "fetchCurrentStreamingRequestWithCompletion:");
    _Block_release(v3);
  }
}

void sub_10019A1AC()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_100007F34();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_10000558C();
  }

  if (*&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper])
  {
    sub_100005C44();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v15[4] = sub_1001A06D0;
    v15[5] = v11;
    sub_100006C90();
    sub_1001A0AA4();
    v15[2] = sub_1001A0960;
    v15[3] = &unk_10035CB18;
    _Block_copy(v15);
    v12 = sub_1001A0D4C();
    v13 = v1;

    sub_1001A0D04(v14, "fetchCurrentMediaUploadRequestWithCompletion:");
    _Block_release(v3);
  }
}

void sub_10019A2E4()
{
  sub_100005D28();
  v36 = v2;
  v38 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100005BD0();
  sub_1001A09DC();
  v15 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  __chkstk_darwin(v16);
  sub_100005BD0();
  v20 = v19 - v18;
  if (v8)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v21 = type metadata accessor for Logger();
    sub_1000058D0(v21, &unk_1003B8820);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v22))
    {
      v23 = sub_100005384();
      v24 = sub_100008A70();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v39, v22, v36, v23, 0xCu);
      sub_1000306A4(v24, &qword_1003B0230, &qword_1002FC550);
      sub_100005368();
      sub_1000088EC();
    }

    sub_100007B28();
  }

  else
  {
    v37 = v17;
    sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
    v35 = static OS_dispatch_queue.main.getter();
    sub_100006BE8();
    v28 = swift_allocObject();
    *(v28 + 16) = v10;
    *(v28 + 24) = v6;
    v40[4] = v4;
    v40[5] = v28;
    sub_10000694C();
    sub_1000095A4(COERCE_DOUBLE(1107296256));
    v40[2] = v29;
    v40[3] = v38;
    v30 = _Block_copy(v40);
    v31 = v10;
    v32 = v6;

    static DispatchQoS.unspecified.getter();
    v40[0] = _swiftEmptyArrayStorage;
    sub_100008604();
    sub_1001A04EC(v33, v34, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
    sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0, &unk_1002FB790);
    sub_1001A09C0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v13 + 8))(v0, v11);
    (*(v37 + 8))(v20, v15);
    sub_100007B28();
  }
}

void sub_10019A640(void *a1, uint64_t a2, void *a3, void *a4, SEL *a5)
{
  if (a1)
  {
    *(a2 + *a3) = 3;
    v6 = *(a2 + *a4);
    *(a2 + *a4) = a1;
    v8 = a1;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong *a5];
      swift_unknownObjectRelease();
    }
  }
}

void sub_10019A6E0()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_100007F34();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_10000558C();
  }

  if (*&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper])
  {
    sub_100005C44();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v15[4] = sub_1001A06C8;
    v15[5] = v11;
    sub_100006C90();
    sub_1001A0AA4();
    v15[2] = sub_1001A0960;
    v15[3] = &unk_10035CAC8;
    _Block_copy(v15);
    v12 = sub_1001A0D4C();
    v13 = v1;

    sub_1001A0D04(v14, "fetchMitigationsWithCompletion:");
    _Block_release(v3);
  }
}

void sub_10019A818(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008A14(v2, &unk_1003B8820);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v3, "EnhancedEmergency: fetchMitigations, failed with error: %@", v4, 0xCu);
      sub_1000306A4(v5, &qword_1003B0230, &qword_1002FC550);

LABEL_6:
    }
  }

  else if (a1)
  {
    oslog = a1;
    sub_10019AAC4();
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008A14(v7, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "EnhancedEmergency: fetchMitigations, but mitigations is nil", v9, 2u);
      goto LABEL_6;
    }
  }
}

void sub_10019AA3C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  a2;
  v6 = a3;
  v5(a2, a3);

  sub_100005D80();
}

void sub_10019AAC4()
{
  sub_100005D28();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v22 = v5;
  __chkstk_darwin(v6);
  sub_100005BD0();
  sub_1001A09DC();
  v21 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100005BD0();
  v12 = v11 - v10;
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  sub_100006BE8();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  *(v14 + 24) = v3;
  v23[4] = sub_1001A06C0;
  v23[5] = v14;
  sub_10000694C();
  sub_1000095A4(COERCE_DOUBLE(1107296256));
  v23[2] = v15;
  v23[3] = &unk_10035CA78;
  v16 = _Block_copy(v23);
  v17 = v0;
  v18 = v3;

  static DispatchQoS.unspecified.getter();
  v23[0] = _swiftEmptyArrayStorage;
  sub_100008604();
  sub_1001A04EC(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
  sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0, &unk_1002FB790);
  sub_1001A09C0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v1, v4);
  (*(v8 + 8))(v12, v21);
  sub_100007B28();
}

void sub_10019AD1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  *(a1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation) = a2;
  v3 = a2;

  sub_10019AD70(v3);
  sub_10019AEC4();
}

void sub_10019AD70(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
  if (v2)
  {
    v14 = v2;
    if ([a1 uploadMigitation] != 2)
    {
      goto LABEL_11;
    }

    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v4 = type metadata accessor for Logger();
    sub_1000058D0(v4, &unk_1003B8820);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (sub_100005908(v6))
    {
      v7 = sub_100005924();
      sub_10000539C(v7);
      sub_100007F34();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_10000558C();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong requestToDisableMediaUploadButton];

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_11:
    }
  }
}

void sub_10019AEC4()
{
  sub_100190A04();
  v1 = v0;
  v3 = v2;
  if ([v2 dropStreaming])
  {
    sub_100193CA8();
    if (v4)
    {
      v5 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingState];
      if (v5 == 1)
      {
        if (qword_1003A9F40 != -1)
        {
          sub_10000755C(&qword_1003A9F40);
        }

        v40 = type metadata accessor for Logger();
        sub_1000058D0(v40, &unk_1003B8820);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (sub_100005908(v42))
        {
          v43 = sub_100005924();
          sub_10000539C(v43);
          sub_100007F34();
          _os_log_impl(v44, v45, v46, v47, v48, 2u);
          sub_10000558C();
        }

        v49 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
        if (!v49)
        {
          goto LABEL_33;
        }

        v18 = v49;
        sub_100187F40();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong hideWebRTCViewController:v18];
          swift_unknownObjectRelease();
        }

        v51 = swift_unknownObjectWeakLoadStrong();
        if (!v51)
        {
          goto LABEL_32;
        }

        [v51 requestToAddMitigationLabel];

        swift_unknownObjectRelease();
      }

      else if (v5 == 3)
      {
        v6 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
        if (v6)
        {
          v7 = qword_1003A9F40;
          v8 = v6;
          if (v7 != -1)
          {
            sub_10000755C(&qword_1003A9F40);
          }

          v9 = type metadata accessor for Logger();
          sub_1000058D0(v9, &unk_1003B8820);
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();
          if (sub_100014274(v11))
          {
            v12 = sub_100005924();
            *v12 = 0;
            sub_1001A0998();
            _os_log_impl(v13, v14, v15, v16, v12, 2u);
            sub_100005340();
          }

          sub_100187F40();
          sub_10018D1F8();
        }

        if (qword_1003A9F40 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_52;
      }

LABEL_33:
      v52 = swift_unknownObjectWeakLoadStrong();
      if (v52)
      {
        [v52 requestToDisableVideoStreamingButton];
        swift_unknownObjectRelease();
      }

      *(*&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector] + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingDropped) = 1;
      goto LABEL_36;
    }
  }

  v26 = [v3 dropStreaming];
  v27 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController;
  v28 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v26)
  {
    if (!v28)
    {
LABEL_36:
      sub_100007F98();
      return;
    }

    goto LABEL_33;
  }

  if (!v28)
  {
    goto LABEL_36;
  }

  v29 = v28;
  p_opt_class_meths = &OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource.opt_class_meths;
  if ([v3 streamingFPS] >= 1)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v31 = type metadata accessor for Logger();
    sub_1000058D0(v31, &unk_1003B8820);
    v32 = v3;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (sub_100014274(v34))
    {
      v35 = sub_100005384();
      *v35 = 134217984;
      *(v35 + 4) = [v32 streamingFPS];

      sub_1000089EC();
      _os_log_impl(v36, v37, v38, v39, v35, 0xCu);
      p_opt_class_meths = (&OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource + 48);
      sub_100005BB8(v35);
    }

    else
    {

      v33 = v32;
    }

    [v32 streamingFPS];
    sub_10018A4E4();
  }

  v53 = *&v1[v27];
  if (!v53)
  {
    goto LABEL_36;
  }

  v53;
  if ([v3 streamingBitrate] >= 1)
  {
    if (p_opt_class_meths[488] != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v54 = type metadata accessor for Logger();
    sub_1000058D0(v54, &unk_1003B8820);
    v1 = v3;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (sub_100005908(v56))
    {
      v57 = sub_100005384();
      *v57 = 134217984;
      *(v57 + 4) = [v1 streamingBitrate];

      sub_100007F34();
      _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
      sub_10000558C();
    }

    else
    {

      v55 = v1;
    }

    v63 = [v1 streamingBitrate];
    if ((v63 * 1000) >> 64 != (1000 * v63) >> 63)
    {
      __break(1u);
LABEL_52:
      sub_10000755C(&qword_1003A9F40);
LABEL_12:
      v17 = type metadata accessor for Logger();
      sub_1000058D0(v17, &unk_1003B8820);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (sub_100005908(v19))
      {
        v20 = sub_100005924();
        sub_10000539C(v20);
        sub_100007F34();
        _os_log_impl(v21, v22, v23, v24, v25, 2u);
        sub_10000558C();
      }

LABEL_32:

      goto LABEL_33;
    }

    sub_10018AB2C();
  }

  sub_100007F98();
}

id sub_10019B3CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnhancedEmergencyCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10019B520()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
  if (v1 && *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState) != 4 && swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1;
    v3 = sub_1001A0C44();
    [v3 v4];

    swift_unknownObjectRelease();
  }
}

void sub_10019B608()
{
  v1 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v1)
  {
    v2 = v0;
    v24 = v1;
    sub_100196E70();
    v3 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_tuCall];
    if (v3)
    {
      [v3 setHasEmergencyVideoStream:1];
    }

    sub_100193CA8();
    if (v4)
    {
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v5 = type metadata accessor for Logger();
      sub_1000058D0(v5, &unk_1003B8820);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (sub_100005908(v7))
      {
        v8 = sub_100005924();
        sub_10000539C(v8);
        sub_100007F34();
        _os_log_impl(v9, v10, v11, v12, v13, 2u);
        sub_10000558C();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong insertWebViewUnderButtonControls:v24];
        swift_unknownObjectRelease();
      }

      [v2 transitionToRTTState:2];
    }

    else
    {
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v15 = type metadata accessor for Logger();
      sub_1000058D0(v15, &unk_1003B8820);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (sub_100005908(v17))
      {
        v18 = sub_100005924();
        sub_10000539C(v18);
        sub_100007F34();
        _os_log_impl(v19, v20, v21, v22, v23, 2u);
        sub_10000558C();
      }

      sub_100194F14();
    }
  }
}

void sub_10019B820()
{
  sub_1001A0D94();
  sub_1001A0D1C();
  sub_10000688C();
  __chkstk_darwin(v2);
  sub_100005BD0();
  sub_1001A0A5C();
  v3 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = qword_1003A9F40;
  v24 = v3;
  if (v4 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v5 = type metadata accessor for Logger();
  sub_1000058D0(v5, &unk_1003B8820);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (sub_100014274(v7))
  {
    v8 = sub_100005924();
    sub_1001906F0(v8);
    sub_100007B74(&_mh_execute_header, v9, v10, "EnhancedEmergency: emergency coordinator gets notified cancelVideoStreamingRequest");
    sub_1000053DC();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong hideWebRTCViewController:v24];
    swift_unknownObjectRelease();
  }

  sub_1001984D8();
  sub_100196E70();
  v12 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  if (![v13 dropStreaming])
  {

LABEL_13:
    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {
      goto LABEL_16;
    }

    [v15 requestToAddResumeCameraLabel];
    goto LABEL_15;
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    [v14 requestToAddMitigationLabel];

LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

LABEL_16:
  v16 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest);
  if (v16)
  {
    v17 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
    v18 = v16;
    v19 = v17;
    sub_1001A0AF8([v18 ID]);

    UUID.uuidString.getter();
    sub_1001A0A80();
    v20 = sub_1000055C0();
    v21(v20);
    sub_100016FD8();

LABEL_18:
    sub_1001A0B10();
    return;
  }

  sub_1001A0B10();
}

void sub_10019BAF4()
{
  sub_100005D28();
  v1 = v0;
  v2 = type metadata accessor for UUID();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100005BD0();
  v8 = v7 - v6;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v9 = type metadata accessor for Logger();
  sub_100008A14(v9, &unk_1003B8820);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (sub_100014274(v11))
  {
    v12 = sub_100005924();
    *v12 = 0;
    sub_1000089EC();
    _os_log_impl(v13, v14, v15, v16, v12, 2u);
    sub_100005BB8(v12);
  }

  v17 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest);
  if (v17)
  {
    v18 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
    v19 = v17;
    v20 = v18;
    v21 = [v19 ID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = UUID.uuidString.getter();
    v24 = v23;
    (*(v4 + 8))(v8, v2);
    sub_1001A3CB0(v22, v24);
  }

  v25 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  if (v25)
  {
    v26 = v25;
    if ([v26 dropStreaming])
    {
      v27 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
      if (v27)
      {
        v28 = v27;
        sub_100187F40();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong hideWebRTCViewController:v28];
          swift_unknownObjectRelease();
        }

        v30 = swift_unknownObjectWeakLoadStrong();
        if (v30)
        {
          [v30 requestToAddMitigationLabel];
          swift_unknownObjectRelease();
        }

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (sub_100007DC4(v32))
        {
          v33 = sub_100005924();
          sub_100005DF4(v33);
          sub_100007F44(&_mh_execute_header, v34, v35, "EnhancedEmergency: continueVideoStreamingRequest, drop streaming because mitigation is being applied");
          sub_100005368();
        }
      }

      goto LABEL_22;
    }
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (sub_100005908(v37))
  {
    v38 = sub_100005924();
    sub_10000539C(v38);
    sub_100007F34();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    sub_10000558C();
  }

  v44 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
  if (v44)
  {
    v26 = v44;
    sub_10016FC20();
    sub_1001878E0();
LABEL_22:
  }

  sub_100007B28();
}

void sub_10019BE4C()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v0 = type metadata accessor for Logger();
  sub_1000058D0(v0, &unk_1003B8820);
  oslog = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005E00();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = sub_100005924();
    sub_100006810(v2);
    sub_100006D40(&_mh_execute_header, v3, v4, "EnhancedEmergency: emergency coordinator gets notified camera is turned off for remote side", v5, v6, v7, v8, v9, oslog);
    sub_1000088EC();
  }
}

void *sub_10019BF30(const char *a1, SEL *a2)
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v5 = type metadata accessor for Logger();
  sub_1000058D0(v5, &unk_1003B8820);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (sub_100014274(v7))
  {
    v8 = sub_100005924();
    sub_1001906F0(v8);
    sub_1001A0980();
    _os_log_impl(v9, v10, v11, a1, v2, 2u);
    sub_1000053DC();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10019C084()
{
  sub_100193CA8();
  if (v0)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v1 = type metadata accessor for Logger();
    sub_1000058D0(v1, &unk_1003B8820);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (sub_100005908(v3))
    {
      v4 = sub_100005924();
      sub_10000539C(v4);
      sub_100007F34();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      sub_10000558C();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong requestAnimationToFullScreenWebView];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v11 = type metadata accessor for Logger();
    sub_1000058D0(v11, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100005E00();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = sub_100005924();
      sub_100006810(v13);
      sub_100006D40(&_mh_execute_header, v14, v15, "EnhancedEmergency: emergency coordinator gets notified to requestAnimationToFullScreenWebView, but webview is already removed", v16, v17, v18, v19, v20, oslog);
      sub_1000088EC();
    }
  }
}

void sub_10019C250()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_100007F34();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_10000558C();
  }

  [v1 cameraTurnedOffForRemoteSide];
  v11 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController;
  v12 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v12)
  {
    v13 = v12;
    sub_100189F94();

    v14 = *&v1[v11];
    if (v14)
    {
      v17 = v14;
      sub_100196E70();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong hideWebRTCViewController:v17];
        swift_unknownObjectRelease();
      }

      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        [v16 requestToAddErrorLabelWithRetryable:1];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_10019C438()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
  v2 = sub_100008908();
  sub_1001A307C(v2);
}

void sub_10019C544()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
  v2 = sub_100008908();
  sub_1001A3474(v2);
}

void sub_10019C5EC()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
  sub_100008908();
  sub_1001A36EC(v2);
}

void sub_10019C6A8()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
  v2 = sub_100008908();
  sub_1001A35C4(v2);
}

void sub_10019C750(uint64_t a1)
{
  v2 = v1;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v4 = type metadata accessor for Logger();
  sub_1000058D0(v4, &unk_1003B8820);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_100005384();
    v8 = sub_100005D4C();
    v17 = v8;
    *v7 = 136315138;
    v9 = Array.description.getter();
    v11 = sub_100008ADC(v9, v10, &v17);

    *(v7 + 4) = v11;
    sub_1001A0998();
    _os_log_impl(v12, v13, v14, v15, v7, 0xCu);
    sub_100005B2C(v8);
    sub_1000053DC();
    sub_100005340();
  }

  v16 = *(v2 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
  sub_1001A3ED8(a1);
}

void sub_10019C914()
{
  sub_1001A0D94();
  v1 = v0;
  type metadata accessor for UUID();
  sub_10000688C();
  __chkstk_darwin(v2);
  sub_100005BD0();
  v3 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
    v5 = v3;
    v6 = v4;
    v7 = [v5 ID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = UUID.uuidString.getter();
    v10 = v9;
    v11 = sub_100019DB0();
    v12(v11);
    sub_1001A3CB0(v8, v10);
  }

  v13 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  if (v13)
  {
    v14 = v13;
    if ([v14 uploadMigitation] == 2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong requestToAddPhotoMitigationLabel];
        swift_unknownObjectRelease();
      }

      v16 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
      if (v16)
      {
        v17 = qword_1003A9F40;
        v18 = v16;
        if (v17 != -1)
        {
          sub_10000755C(&qword_1003A9F40);
        }

        v19 = type metadata accessor for Logger();
        sub_1000058D0(v19, &unk_1003B8820);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (sub_100014274(v21))
        {
          v22 = sub_100005924();
          sub_1001906F0(v22);
          sub_100007B74(&_mh_execute_header, v23, v24, "EnhancedEmergency: continueMediaUploadRequest, cannot start upload request due to upload mitigation to drop request");
          sub_1000053DC();
        }

        v25 = swift_unknownObjectWeakLoadStrong();
        if (v25)
        {
          [v25 removeMediaRequestViewController:v18];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }

      goto LABEL_22;
    }
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v26 = type metadata accessor for Logger();
  sub_1000058D0(v26, &unk_1003B8820);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (sub_100005908(v28))
  {
    v29 = sub_100005924();
    sub_10000539C(v29);
    sub_100007F34();
    _os_log_impl(v30, v31, v32, v33, v34, 2u);
    sub_10000558C();
  }

  v35 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
  if (v35)
  {
    v36 = v35;
    sub_10023C99C();
  }

  sub_100197388();
LABEL_22:
  sub_1001A0B10();
}

void sub_10019CC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005D28();
  v21 = v20;
  v23 = v22;
  v24 = type metadata accessor for UUID();
  sub_10000688C();
  v271 = v25;
  __chkstk_darwin(v26);
  sub_100005BD0();
  v270 = v28 - v27;
  sub_100008A4C();
  v29 = type metadata accessor for String.Encoding();
  v30 = sub_100005568(v29);
  __chkstk_darwin(v30);
  sub_100005BD0();
  v280 = (v32 - v31);
  v33 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  v34 = sub_100005568(v33);
  __chkstk_darwin(v34);
  v294 = &v265 - v35;
  sub_100008A4C();
  v290 = type metadata accessor for URL();
  sub_10000688C();
  v306 = v36;
  __chkstk_darwin(v37);
  sub_10000693C();
  v40 = v38 - v39;
  __chkstk_darwin(v41);
  sub_100005E0C();
  sub_10000713C();
  v43 = __chkstk_darwin(v42);
  v45 = &v265 - v44;
  __chkstk_darwin(v43);
  sub_1001A0C24();
  v293 = v46;
  v47 = sub_10014EA98(&qword_1003ABC98, &qword_1002FC740);
  v48 = sub_100005568(v47);
  __chkstk_darwin(v48);
  sub_10000693C();
  v51 = v49 - v50;
  __chkstk_darwin(v52);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v53);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v54);
  sub_1001A0C24();
  v281 = v55;
  sub_100008A4C();
  v56 = type metadata accessor for UTType();
  sub_10000688C();
  v305 = v57;
  __chkstk_darwin(v58);
  sub_10000693C();
  sub_10000713C();
  __chkstk_darwin(v59);
  sub_1001A0C24();
  v304 = v60;
  sub_100008A4C();
  v299 = type metadata accessor for PHPickerResult();
  sub_10000688C();
  v62 = v61;
  __chkstk_darwin(v63);
  sub_10000693C();
  sub_10000713C();
  __chkstk_darwin(v64);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v65);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v66);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v67);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v68);
  sub_1001A0C24();
  v303 = v69;
  v70 = *&v21[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest];
  if (!v70)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v80 = type metadata accessor for Logger();
    sub_1000058D0(v80, &unk_1003B8820);
    v308 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(v308, v81))
    {
      v82 = sub_100005924();
      sub_100006810(v82);
      _os_log_impl(&_mh_execute_header, v308, &OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource.opt_class_meths, "EnhancedEmergency: trying to upload media, but mediaUploadRequest is nil", v24, 2u);
      sub_1000088EC();
    }

    goto LABEL_18;
  }

  v266 = v24;
  v71 = *&v21[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation];
  v277 = v51;
  if (!v71)
  {
    v85 = v70;
    goto LABEL_23;
  }

  v72 = v70;
  v307 = v71;
  if ([v307 uploadMigitation] != 2)
  {

LABEL_23:
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v86 = type metadata accessor for Logger();
    sub_1000058D0(v86, &unk_1003B8820);

    v296 = v71;
    v87 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100005E00();
    v89 = os_log_type_enabled(v87, v88);
    v275 = v21;
    v268 = v40;
    v295 = v45;
    v308 = v56;
    if (v89)
    {
      v90 = sub_100005384();
      *v90 = 134217984;
      *(v90 + 4) = *(v23 + 16);

      sub_1001A0D64(&_mh_execute_header, v87, &OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource.opt_class_meths, "EnhancedEmergency: the media to be uploaded has count of %ld ");
      sub_100005368();
    }

    else
    {
    }

    v91 = v303;
    v267 = v70;
    v92 = *(v23 + 16);
    sub_1001A0A2C();
    sub_1001A0A38();
    if (v92)
    {
      v97 = *(v94 + 16);
      v96 = v94 + 16;
      v302 = v97;
      v98 = v93 + ((*(v96 + 64) + 32) & ~*(v96 + 64));
      v307 = (v305 + 8);
      v298 = (v96 - 8);
      v274 = v96 + 16;
      v292 = v305 + 32;
      v269 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaSet;
      v286 = v306 + 4;
      v285 = APP_SANDBOX_READ;
      v284 = v306 + 1;
      v283 = SANDBOX_EXTENSION_DEFAULT;
      v297 = *(v96 + 56);
      *&v95 = 136315138;
      v287 = v95;
      v300 = v96;
      p_isa = &v306[2].isa;
      do
      {
        v305 = v98;
        v306 = v92;
        v302(v91);
        static UTType.image.getter();
        v99 = v91;
        v100 = PHPickerResult.itemProvider.getter();
        static UTType.image.getter();
        UTType.identifier.getter();
        v101 = v308;
        v102 = *v307;
        (*v307)(v70, v308);
        sub_100019DB0();
        v103 = String._bridgeToObjectiveC()();

        v104 = sub_1001A0C44();
        v106 = [v104 v105];

        if (v106)
        {
          static UTType.image.getter();
          v107 = 1;
          v108 = v102;
        }

        else
        {
          v109 = PHPickerResult.itemProvider.getter();
          static UTType.movie.getter();
          UTType.identifier.getter();
          v102(v70, v101);
          sub_100019DB0();
          v110 = String._bridgeToObjectiveC()();

          v111 = sub_1001A0C44();
          v113 = [v111 v112];

          v108 = v102;
          if ((v113 & 1) == 0)
          {
            v301 = v102;
            v154 = v288;
            v155 = v299;
            v156 = v302;
            v157 = (v302)(v288, v99, v299);
            v158 = sub_1001A0AB0(v157);
            LODWORD(isa) = static os_log_type_t.error.getter();
            if (sub_100014274(isa))
            {
              v159 = v154;
              v160 = v155;
              v161 = sub_100005384();
              v282 = sub_100005D4C();
              *v161 = sub_10000C178(v282).n128_u32[0];
              v162 = v281;
              v156(v281, v159, v155);
              sub_100006848(v162, 0, 1, v155);
              v163 = v162;
              v164 = v276;
              sub_10019F00C(v163, v276);
              if (sub_100006AC0(v164, 1, v155) == 1)
              {
                v62 = &qword_1003ABC98;
                sub_1000306A4(v164, &qword_1003ABC98, &qword_1002FC740);
                v165 = 0xE300000000000000;
                v166 = 7104878;
                v167 = v298;
                v168 = v288;
              }

              else
              {
                sub_1001A0BF0();
                v203 = v273;
                v204 = sub_1001A0BC4();
                v205(v204);
                v206 = sub_1001A0B58();
                (v156)(v206);
                v166 = String.init<A>(reflecting:)();
                v165 = v207;
                v167 = v298;
                v168 = v288;
                (*v298)(v203, v160);
                v62 = &qword_1003ABC98;
              }

              sub_1000306A4(v281, &qword_1003ABC98, &qword_1002FC740);
              v70 = *v167;
              (*v167)(v168, v160);
              v208 = sub_100008ADC(v166, v165, v309);

              *(v161 + 4) = v208;
              sub_1001A0AE0(&_mh_execute_header, v158, isa, "EnhancedEmergency: can't save result: %s, it's not image or video", v265);
              v209 = v282;
              sub_100005B2C(v282);
              sub_100005BB8(v209);
              sub_1001A0964();

              v210 = sub_1001A098C();
              v301(v210, v308);
              v91 = v303;
              (v70)(v303, v160);
              sub_1001A0A38();
              sub_1001A0A2C();
            }

            else
            {

              v180 = *v298;
              (*v298)(v154, v155);
              sub_1001A098C();
              sub_1001A0B8C();
              v181();
              v182 = sub_1001A0BB8();
              v180(v182);
              v91 = v99;
            }

            goto LABEL_63;
          }

          static UTType.movie.getter();
          v107 = 2;
        }

        v114 = v294;
        v115 = v304;
        v116 = v308;
        v108(v304, v308);
        sub_1001A0BF0();
        v117(v115, v70, v116);
        v118 = v303;
        PHPickerResult._filePromiseURL(contentType:)();
        if (sub_100006AC0(v114, 1, v62) == 1)
        {
          v301 = v108;
          sub_1000306A4(v114, &qword_1003AAF20, &unk_1002FABA0);
          v119 = v291;
          v120 = sub_1001A0BC4();
          v121 = v299;
          v122 = v302;
          v123 = (v302)(v120);
          v124 = sub_1001A0AB0(v123);
          LODWORD(isa) = static os_log_type_t.error.getter();
          if (sub_100014274(isa))
          {
            v125 = sub_100005384();
            v62 = sub_100005D4C();
            *v125 = sub_10000C178(v62).n128_u32[0];
            v126 = v279;
            v122(v279, v119, v121);
            sub_100006848(v126, 0, 1, v121);
            v127 = v277;
            sub_10019F00C(v126, v277);
            v128 = sub_100006AC0(v127, 1, v121);
            v129 = v298;
            v282 = (v298 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            if (v128 == 1)
            {
              sub_1000306A4(v127, &qword_1003ABC98, &qword_1002FC740);
              sub_1000306A4(v126, &qword_1003ABC98, &qword_1002FC740);
              v70 = *v129;
              v130 = sub_1001A0BB8();
              (v70)(v130);
              v131 = 0xE300000000000000;
              v132 = 7104878;
            }

            else
            {
              sub_1001A0BF0();
              v183 = sub_1001A0BC4();
              v184(v183);
              v185 = sub_1001A0B58();
              (v122)(v185);
              v132 = String.init<A>(reflecting:)();
              v186 = v129;
              v131 = v187;
              v70 = *v186;
              v188 = sub_1001A0BB8();
              (v70)(v188);
              sub_1000306A4(v126, &qword_1003ABC98, &qword_1002FC740);
              (v70)(v291, v121);
            }

            v189 = sub_100008ADC(v132, v131, v309);

            *(v125 + 4) = v189;
            _os_log_impl(&_mh_execute_header, v124, isa, "EnhancedEmergency: can't save result: %s, filePromise url is nil", v125, 0xCu);
            sub_100005B2C(v62);
            sub_10000558C();
            sub_100005340();

            sub_1001A0B8C();
            v190();
            v91 = v303;
            v191 = sub_100019DB0();
            (v70)(v191);
            sub_1001A0A38();
            sub_1001A0A2C();
            goto LABEL_63;
          }

          v169 = v118;

          v170 = *v298;
          v171 = sub_1001A0BB8();
          v170(v171);
          sub_1001A0B8C();
          v172();
          (v170)(v169, v121);
          v91 = v169;
          v173 = v306;
        }

        else
        {
          sub_1001A0BF0();
          v133(v293, v114, v62);
          URL.path.getter();
          URL.init(fileURLWithPath:)();

          URL.path.getter();
          v135 = v134;
          String.utf8CString.getter();

          v136 = sandbox_extension_issue_file();

          if (!v136)
          {
            v91 = sub_1001A0AB0(v137);
            static os_log_type_t.error.getter();
            sub_100005E00();
            if (os_log_type_enabled(v91, v174))
            {
              v175 = sub_100005924();
              sub_100005DF4(v175);
              _os_log_impl(&_mh_execute_header, v91, v135, "EnhancedEmergency: sandbox_extension_issue_file failed", v107, 2u);
              sub_100005368();
            }

            v176 = sub_100026F14();
            v135(v176);
            v177 = sub_100030230();
            v135(v177);
            v178 = sub_1001A098C();
            v179 = v116;
LABEL_62:
            v108(v178, v179);
            v227 = sub_100008A58();
            v228(v227);
LABEL_63:
            v173 = v306;
            goto LABEL_67;
          }

          v138 = v280;
          static String.Encoding.utf8.getter();
          v139 = String.init(cString:encoding:)();
          if (v140)
          {
            v301 = v108;
            v70 = *p_isa;
            v141 = v278;
            (*p_isa)(v278, v295, v62);
            v142 = v303;
            PHPickerResult.assetIdentifier.getter();
            if (v143)
            {
              v144 = v143;
            }

            else
            {
              v144 = 0xE000000000000000;
            }

            v145 = objc_allocWithZone(CLEEDMediaItem);
            v147 = sub_10019EE9C(v141, v144, v107, v146);
            if (v147)
            {
              v148 = v147;
              swift_beginAccess();
              v149 = v148;
              sub_10019F328(&v310, v149, &qword_1003ABCA0, CLEEDMediaItem_ptr, &unk_1003ABCB8, &unk_1002FC750);
              v150 = v310;
              swift_endAccess();

              v151 = sub_100026F14();
              (v149)(v151);
              v152 = sub_100030230();
              (v149)(v152);
              sub_1001A098C();
              sub_1001A0B8C();
              v153();
              (*v298)(v142, v299);
              sub_1001A0A2C();
              v91 = v142;
            }

            else
            {
              v211 = v268;
              v212 = v295;
              v213 = (v70)(v268, v295, v62);
              v214 = sub_1001A0AB0(v213);
              v215 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v214, v215))
              {
                v216 = v211;
                v217 = sub_100005384();
                v218 = sub_100005D4C();
                *v217 = sub_10000C178(v218).n128_u32[0];
                v70 = URL.path.getter();
                v219 = v212;
                v221 = v220;
                isa = v284->isa;
                isa(v216, v290);
                v91 = sub_100008ADC(v70, v221, v309);
                sub_1001A0A38();

                *(v217 + 4) = v91;
                _os_log_impl(&_mh_execute_header, v214, v215, "EnhancedEmergency: trying to create a CLEEDMediaItem with url: %s, but it's nil", v217, 0xCu);
                sub_100005B2C(v218);
                sub_100005BB8(v218);
                sub_100005BB8(v217);

                v222 = isa;
                isa(v219, v62);
              }

              else
              {

                v91 = v284;
                v222 = v284->isa;
                (v284->isa)(v211, v62);
                v222(v212, v62);
              }

              v223 = sub_100030230();
              (v222)(v223);
              v224 = sub_1001A098C();
              v301(v224, v308);
              v229 = sub_100008A58();
              v230(v229);
              sub_1001A0A2C();
            }

            v173 = v306;
            goto LABEL_67;
          }

          v91 = sub_1001A0AB0(v139);
          v192 = static os_log_type_t.error.getter();
          if (!sub_100014274(v192))
          {

            v225 = sub_100026F14();
            v138(v225);
            v226 = sub_100030230();
            v138(v226);
            v178 = sub_1001A098C();
            v179 = v308;
            goto LABEL_62;
          }

          v193 = sub_100005384();
          v194 = sub_100005D4C();
          *v193 = sub_10000C178(v194).n128_u32[0];
          v310 = v136;
          sub_10014EA98(&qword_1003ABCB0, &qword_1002FC748);
          v195 = String.init<A>(reflecting:)();
          v197 = sub_100008ADC(v195, v196, v309);

          *(v193 + 4) = v197;
          v173 = v306;
          sub_1001A0A38();
          sub_1001A0D64(&_mh_execute_header, v91, v192, "EnhancedEmergency: Unable to create string from sandbox_extension token:%s");
          sub_100005B2C(v194);
          sub_100005BB8(v194);
          sub_100005368();

          v198 = sub_100026F14();
          v194(v198);
          v199 = sub_100030230();
          v194(v199);
          v200 = sub_1001A098C();
          v108(v200, v308);
          v201 = sub_100008A58();
          v202(v201);
        }

LABEL_67:
        v98 = v305 + v297;
        v92 = (v173 - 1);
      }

      while (v92);
    }

    v231 = v275;
    swift_beginAccess();

    v233 = sub_1001933C8(v232);

    if (v233 < 1)
    {
      v260 = sub_1001A0AB0(v234);
      v261 = static os_log_type_t.error.getter();
      if (sub_100007DC4(v261))
      {
        v262 = sub_100005924();
        sub_100005DF4(v262);
        sub_100007F44(&_mh_execute_header, v263, v264, "EnhancedEmergency: mediaSet count is 0");
        sub_100005368();
      }
    }

    else
    {
      v235 = v231;
      v236 = sub_1001A0AB0(v235);
      v237 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v236, v237))
      {
        v238 = sub_100005384();
        v239 = sub_100005D4C();
        v309[0] = v239;
        *v238 = 136315138;
        sub_1000064BC(0, &qword_1003ABCA0, CLEEDMediaItem_ptr);
        sub_10019EF9C();

        v240 = Set.description.getter();
        v242 = v241;

        v243 = sub_100008ADC(v240, v242, v309);

        *(v238 + 4) = v243;
        sub_100007F34();
        _os_log_impl(v244, v245, v246, v247, v248, 0xCu);
        sub_100005B2C(v239);
        sub_100005340();
        sub_10000558C();
      }

      v249 = *&v235[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
      if (v249)
      {
        sub_1000064BC(0, &qword_1003ABCA0, CLEEDMediaItem_ptr);
        sub_10019EF9C();
        v250 = v249;

        v251 = Set._bridgeToObjectiveC()().super.isa;

        v252 = v267;
        v253 = [v267 ID];
        v254 = v270;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v255 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v271 + 8))(v254, v266);
        sub_100006BE8();
        v256 = swift_allocObject();
        *(v256 + 16) = v252;
        *(v256 + 24) = v235;
        v309[4] = sub_10019F004;
        v309[5] = v256;
        v309[0] = _NSConcreteStackBlock;
        v309[1] = 1107296256;
        v309[2] = sub_10019E9EC;
        v309[3] = &unk_10035C9D8;
        v257 = _Block_copy(v309);
        v258 = v252;
        v259 = v235;

        [v250 mediaUploadList:v251 forRequestID:v255 completion:v257];

        _Block_release(v257);
LABEL_77:
        sub_100007B28();
        return;
      }
    }

    goto LABEL_77;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v73 = type metadata accessor for Logger();
  sub_1000058D0(v73, &unk_1003B8820);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (sub_100007DC4(v75))
  {
    v76 = sub_100005924();
    sub_10000539C(v76);
    _os_log_impl(&_mh_execute_header, v74, v71, "EnhancedEmergency: uploadMedia, cannot uplaod media due to upload mitigation.", v62, 2u);
    sub_10000558C();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong requestToDisableMediaUploadButton];
    swift_unknownObjectRelease();
  }

  v78 = swift_unknownObjectWeakLoadStrong();
  if (v78)
  {
    [v78 requestToAddPhotoMitigationLabel];

    sub_100007B28();

    swift_unknownObjectRelease();
    return;
  }

LABEL_18:
  sub_100007B28();
}

uint64_t sub_10019E3CC(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_1001A04E0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E570;
  aBlock[3] = &unk_10035CA28;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  swift_errorRetain();
  v16 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001A04EC(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
  sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0, &unk_1002FB790);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_10019E6C4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008A14(v10, &unk_1003B8820);
  v11 = a1;
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v27 = a3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28[0] = v26;
    *v14 = 136315394;
    v16 = [v11 ID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001A04EC(&qword_1003AAC80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_100008ADC(v17, v19, v28);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v14 + 14) = v21;
    *v15 = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "EnhancedEmergency: finished sending mediaSet for media upload request: %s, error: %@", v14, 0x16u);
    sub_1000306A4(v15, &qword_1003B0230, &qword_1002FC550);

    sub_100005B2C(v26);

    a3 = v27;
  }

  else
  {
  }

  v23 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaSet;
  swift_beginAccess();
  *(a3 + v23) = &_swiftEmptySetSingleton;
}

void sub_10019E9EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10019EA58()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
  if (v1)
  {
    v2 = qword_1003A9F40;
    v13 = v1;
    if (v2 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v3 = type metadata accessor for Logger();
    sub_1000058D0(v3, &unk_1003B8820);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (sub_100005908(v5))
    {
      v6 = sub_100005924();
      sub_10000539C(v6);
      sub_100007F34();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      sub_10000558C();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong removeMediaRequestViewController:v13];
      swift_unknownObjectRelease();
    }

    sub_1001984A8();
  }
}

void sub_10019EB74()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8820);
  v3 = sub_1001A0D7C(v1);
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100190988();
    v6 = sub_1001A0AC8();
    *v5 = 138412546;
    *(v5 + 4) = v0;
    *v6 = v0;
    *(v5 + 12) = 2112;
    v7 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
    *(v5 + 14) = v7;
    v6[1] = v7;
    v8 = v0;
    v9 = v7;
    sub_1001A0998();
    _os_log_impl(v10, v11, v12, v13, v5, 0x16u);
    sub_10014EA98(&qword_1003B0230, &qword_1002FC550);
    swift_arrayDestroy();
    sub_100005340();
    sub_100005368();
  }

  sub_1001988F0();
}

void sub_10019ECEC(uint64_t a1)
{
  sub_1001A0D94();
  v3 = v2;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B8820);
  v5 = v1;
  v6 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_100005D4C();
    v10 = swift_slowAlloc();
    v11 = sub_1001A0A44(v10, 5.7781e-34);
    v12 = *&v5[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
    *(v9 + 14) = v12;
    *(v9 + 22) = v13;
    *(v9 + 24) = v6;
    v11[1] = v12;
    v11[2] = v6;
    v14 = v5;
    v15 = v6;
    v16 = v12;
    sub_1001A0980();
    _os_log_impl(v17, v18, v19, v20, v9, 0x20u);
    sub_10014EA98(&qword_1003B0230, &qword_1002FC550);
    sub_1001A0BAC();
    swift_arrayDestroy();
    sub_1000053DC();
    sub_10000558C();
  }

  sub_10019AAC4();
  sub_1001A0B10();
}

id sub_10019EE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X5>, NSURL *a5@<X8>)
{
  v6 = v5;
  URL._bridgeToObjectiveC()(a5);
  v11 = v10;
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = String._bridgeToObjectiveC()();

  v14 = [v6 initWithURL:v11 assetIdentifier:v12 sandboxExtension:v13 mediaType:a4];

  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

unint64_t sub_10019EF9C()
{
  result = qword_1003ABCA8;
  if (!qword_1003ABCA8)
  {
    sub_1000064BC(255, &qword_1003ABCA0, CLEEDMediaItem_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABCA8);
  }

  return result;
}

uint64_t sub_10019F00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003ABC98, &qword_1002FC740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019F0F0(uint64_t *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      v18 = (a3)(0);
      sub_1001A0CC4(v18, v19, v20, v18);
      result = 0;
      *a1 = v43;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_10019F734(v15, result + 1, a4, a5, a6, v28, v29, v30, v37, v38, v39, v40, v42, v43, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
        v32 = v31;
        v44 = v31;
        if (v31[3] <= v31[2])
        {
          sub_10019FB48();
          v32 = v44;
        }

        v33 = v16;
        sub_10019FCE0(v33, v32);

        *v11 = v32;
        *a1 = v33;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    NSObject._rawHashValue(seed:)(*(v14 + 40));
    sub_10000664C();
    v24 = ~v23;
    while (1)
    {
      v25 = v22 & v24;
      if (((*(v14 + 56 + (((v22 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v24)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v45 = *v11;
        v34 = a2;
        sub_10019FE98();
        *v11 = v45;
        *a1 = v34;
        return 1;
      }

      v26 = *(*(v14 + 48) + 8 * v25);
      v27 = static NSObject.== infix(_:_:)();

      if (v27)
      {
        break;
      }

      v22 = v25 + 1;
    }

    v35 = *(*(v14 + 48) + 8 * v25);
    *a1 = v35;
    v36 = v35;
    return 0;
  }

  return result;
}

uint64_t sub_10019F328(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    sub_1001A0BC4();
    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      v18 = sub_1000064BC(0, a3, a4);
      sub_1001A0CC4(v18, v19, v20, v18);
      result = 0;
      *a1 = v42;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_10019F598(v15, result + 1, a5, a6, a3, a4, v28, v29, v36, v37, v38, v39, v41, v42, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
        v31 = v30;
        v43 = v30;
        if (v30[3] <= v30[2])
        {
          sub_10019FB48();
          v31 = v43;
        }

        v32 = v16;
        sub_10019FCE0(v32, v31);

        *v11 = v31;
        *a1 = v32;
        return 1;
      }
    }
  }

  else
  {
    sub_1000064BC(0, a3, a4);
    NSObject._rawHashValue(seed:)(*(v14 + 40));
    sub_10000664C();
    v24 = ~v23;
    while (1)
    {
      v25 = v22 & v24;
      if (((*(v14 + 56 + (((v22 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v24)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v44 = *v11;
        v33 = a2;
        sub_10019FD60();
        *v11 = v44;
        *a1 = v33;
        return 1;
      }

      v26 = *(*(v14 + 48) + 8 * v25);
      v27 = static NSObject.== infix(_:_:)();

      if (v27)
      {
        break;
      }

      v22 = v25 + 1;
    }

    v34 = *(*(v14 + 48) + 8 * v25);
    *a1 = v34;
    v35 = v34;
    return 0;
  }

  return result;
}

void sub_10019F598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100008E10();
  if (v28)
  {
    v29 = v27;
    v30 = v26;
    sub_10014EA98(v24, v25);
    v31 = static _SetStorage.convert(_:capacity:)();
    v41 = v31;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        goto LABEL_18;
      }

      sub_1000064BC(0, v30, v29);
      swift_dynamicCast();
      if (*(v31 + 24) <= *(v31 + 16))
      {
        sub_10019FB48();
      }

      v31 = v41;
      v32 = NSObject._rawHashValue(seed:)(*(v41 + 40));
      v33 = -1 << *(v41 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v41 + 56 + 8 * (v34 >> 6))) == 0)
      {
        break;
      }

      sub_1001A0B38();
LABEL_15:
      sub_1001A09A4(v36);
      *(*(v41 + 48) + 8 * v40) = a11;
      ++*(v41 + 16);
    }

    v37 = 0;
    v38 = (63 - v33) >> 6;
    while (++v35 != v38 || (v37 & 1) == 0)
    {
      v39 = v35 == v38;
      if (v35 == v38)
      {
        v35 = 0;
      }

      v37 |= v39;
      if (*(v41 + 56 + 8 * v35) != -1)
      {
        sub_1001A0B24();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    sub_10000681C();
  }
}

void sub_10019F734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100008E10();
  if (v27)
  {
    v28 = v26;
    sub_10014EA98(v24, v25);
    sub_1001A0BAC();
    v29 = static _SetStorage.convert(_:capacity:)();
    v39 = v29;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        goto LABEL_18;
      }

      v28(0);
      swift_dynamicCast();
      if (*(v29 + 24) <= *(v29 + 16))
      {
        sub_10019FB48();
      }

      v29 = v39;
      v30 = NSObject._rawHashValue(seed:)(*(v39 + 40));
      v31 = -1 << *(v39 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v39 + 56 + 8 * (v32 >> 6))) == 0)
      {
        break;
      }

      sub_1001A0B38();
LABEL_15:
      sub_1001A09A4(v34);
      *(*(v39 + 48) + 8 * v38) = a11;
      ++*(v39 + 16);
    }

    v35 = 0;
    v36 = (63 - v31) >> 6;
    while (++v33 != v36 || (v35 & 1) == 0)
    {
      v37 = v33 == v36;
      if (v33 == v36)
      {
        v33 = 0;
      }

      v35 |= v37;
      if (*(v39 + 56 + 8 * v33) != -1)
      {
        sub_1001A0B24();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    sub_10000681C();
  }
}

void sub_10019F8EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10014EA98(&qword_1003ABCD0, &qword_1002FC770);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_10019FFCC(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    v19 = Hasher._finalize()();
    v20 = -1 << *(v5 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_10019FB48()
{
  sub_100005D28();
  sub_10000CDCC(v2, v3, v4);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v6;
    sub_100007B28();
    return;
  }

  v7 = 0;
  v8 = (v1 + 56);
  v9 = 1 << *(v1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v1 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v14;
      if (v8[v7])
      {
        sub_1001A09EC();
        v11 = v16 & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v1 + 32);
    if (v25 >= 64)
    {
      sub_10019FFCC(0, (v25 + 63) >> 6, v1 + 56);
    }

    else
    {
      sub_10000664C();
      *v8 = v26;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1001A0C50();
LABEL_12:
    v17 = NSObject._rawHashValue(seed:)(*(v6 + 40)) & ~(-1 << *(v6 + 32));
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    sub_1001A0C30();
LABEL_21:
    sub_1001A0BDC();
    *(v13 + v22) |= v23;
    sub_1001A0A8C(v24);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  sub_1001A0C10();
  while (++v18 != v20 || (v19 & 1) == 0)
  {
    v21 = v18 == v20;
    if (v18 == v20)
    {
      v18 = 0;
    }

    v19 |= v21;
    if (*(v13 + 8 * v18) != -1)
    {
      sub_1001A0BFC();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

unint64_t sub_10019FCE0(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  sub_10000664C();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_10019FD60()
{
  sub_100190A04();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_100034470();
  if (!(!v13 & v12) || (v8 & 1) == 0)
  {
    if (v8)
    {
      sub_1001A0B4C();
      sub_10019FB48();
      goto LABEL_9;
    }

    if (v11 <= v10)
    {
      sub_1001A0B4C();
      sub_1001A0534();
LABEL_9:
      v14 = *v1;
      NSObject._rawHashValue(seed:)(*(*v1 + 40));
      sub_10000664C();
      v17 = ~v16;
      while (1)
      {
        v7 = v15 & v17;
        if (((*(v14 + 56 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v17)) & 1) == 0)
        {
          goto LABEL_13;
        }

        sub_1000064BC(0, v5, v3);
        v18 = *(*(v14 + 48) + 8 * v7);
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          goto LABEL_16;
        }

        v15 = v7 + 1;
      }
    }

    sub_1001A0188(v9);
  }

LABEL_13:
  sub_1001A0B98();
  *(v21 + 8 * v7) = v0;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
    sub_100007F98();
  }
}

void sub_10019FE98()
{
  sub_100005D28();
  v3 = v2;
  v5 = v4;
  sub_100034470();
  if (!(!v11 & v10) || (v6 & 1) == 0)
  {
    if (v6)
    {
      sub_1001A0B4C();
      sub_10019FB48();
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      sub_1001A0B4C();
      sub_1001A0534();
LABEL_11:
      v17 = *v1;
      NSObject._rawHashValue(seed:)(*(*v1 + 40));
      sub_10000664C();
      v20 = ~v19;
      while (1)
      {
        v5 = v18 & v20;
        if (((*(v17 + 56 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v20)) & 1) == 0)
        {
          goto LABEL_8;
        }

        v3(0);
        v21 = *(*(v17 + 48) + 8 * v5);
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          goto LABEL_16;
        }

        v18 = v5 + 1;
      }
    }

    sub_1001A0188(v7);
  }

LABEL_8:
  sub_1001A0B98();
  *(v13 + 8 * v5) = v0;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
    sub_100007B28();
  }
}

uint64_t sub_10019FFCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1002FBF10;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1001A0030()
{
  v1 = v0;
  sub_10014EA98(&qword_1003ABCD0, &qword_1002FC770);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1001A0188(uint64_t a1)
{
  sub_1001A0D94();
  v2 = v1;
  sub_10014EA98(v3, v4);
  v5 = *v1;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 56 + 8 * v9)
    {
      memmove(v8, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        sub_1001A0C50();
LABEL_17:
        v21 = v17 | (v11 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        *(*(v7 + 48) + 8 * v21) = v22;
        v23 = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      ++v18;
      if (*(v5 + 56 + 8 * v11))
      {
        sub_1001A09EC();
        v15 = v20 & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v7;
    sub_1001A0B10();
  }
}

void sub_1001A02AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10014EA98(&qword_1003ABCD0, &qword_1002FC770);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v18 = Hasher._finalize()();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v16;
        v27[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

uint64_t sub_1001A04EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001A0534()
{
  sub_100190A04();
  sub_10000CDCC(v2, v3, v4);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v1 + 16))
  {
    v26 = v0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = *(v6 + 40);
        *(*(v1 + 48) + 8 * (v13 | (v7 << 6)));
        v18 = NSObject._rawHashValue(seed:)(v17) & ~(-1 << *(v6 + 32));
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        sub_1001A0C30();
LABEL_21:
        sub_1001A0BDC();
        *(v12 + v23) |= v24;
        sub_1001A0A8C(v25);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      sub_1001A0C10();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v12 + 8 * v19) != -1)
        {
          sub_1001A0BFC();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v0 = v26;
          goto LABEL_25;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v7))
        {
          sub_1001A09EC();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v6;
    sub_100007F98();
  }
}

uint64_t sub_1001A0964()
{
}

void sub_1001A09FC()
{
  *(v1 - 88) = v0;

  type metadata accessor for CLEEDRequestState(0);
}

uint64_t sub_1001A0A14(uint64_t a1)
{

  return String.init<A>(reflecting:)();
}

void *sub_1001A0A44(void *result, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *result = v2;
  *(v3 + 12) = 2112;
  return result;
}

uint64_t sub_1001A0AB0(uint64_t a1)
{

  return Logger.logObject.getter();
}

uint64_t sub_1001A0AC8()
{

  return swift_slowAlloc();
}

void sub_1001A0AE0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1001A0AF8(uint64_t a1)
{

  return static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_1001A0C64(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 88);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

id sub_1001A0C84(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

unint64_t sub_1001A0CA4(uint64_t a1, unint64_t a2)
{

  return sub_100008ADC(a1, a2, (v2 - 136));
}

uint64_t sub_1001A0CC4(uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

void sub_1001A0CE4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 144);

  _os_log_impl(a1, v8, v5, a4, v4, 0xCu);
}

id sub_1001A0D04(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1001A0D1C()
{

  return type metadata accessor for UUID();
}

unint64_t sub_1001A0D34(uint64_t a1, unint64_t a2)
{

  return sub_100008ADC(a1, a2, (v2 - 136));
}

id sub_1001A0D4C()
{

  return v0;
}

void sub_1001A0D64(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1001A0D7C(uint64_t a1)
{

  return Logger.logObject.getter();
}

id sub_1001A0DA8()
{
  *&v0[OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_carPlayWindow] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_hardwareControlsBroadcaster] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlaySceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001A0E18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlaySceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A0EC4(uint64_t a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x66664F6F65646976;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

void *sub_1001A0FA4()
{
  sub_100196364();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result requestToAddResumeCameraLabel];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1001A108C(char a1)
{
  v2 = v1;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B8820);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (a1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = sub_100008ADC(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: updating for RTT enabled: %s", v7, 0xCu);
    sub_100005B2C(v8);
    sub_100005BB8(v8);
    sub_10000558C();
  }

  if (a1)
  {
    sub_100193CA8();
    if (v12)
    {
      v13 = v2;
      v14 = 2;
    }

    else
    {
      v13 = v2;
      v14 = 1;
    }
  }

  else
  {
    v13 = v2;
    v14 = 0;
  }

  return [v13 transitionToRTTState:v14];
}

void sub_1001A127C(uint64_t a1)
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v3 = type metadata accessor for Logger();
  sub_100008A14(v3, &unk_1003B8820);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    v9 = sub_1001A0EC4(*&v4[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState]);
    v11 = sub_100008ADC(v9, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_1001A0EC4(a1);
    v14 = sub_100008ADC(v12, v13, &v21);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: transitioning from RTT state %s to %s", v7, 0x16u);
    swift_arrayDestroy();
    sub_100005BB8(v8);
    sub_10000558C();
  }

  v15 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState;
  v16 = *&v4[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState];
  if (v16 != a1)
  {
    if (a1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v18 = [Strong getCurrentCall];
      swift_unknownObjectRelease();
      if (!v18)
      {
        return;
      }

      v19 = [v18 isRTT];

      if (!v19)
      {
        return;
      }

      v16 = *&v4[v15];
    }

    *&v4[v15] = a1;
    if (v16 == 4)
    {
      sub_1001A153C();
    }

    switch(a1)
    {
      case 0:
      case 1:
      case 3:
        sub_1001A1DEC();
        goto LABEL_18;
      case 2:
        sub_1001A17B8();
        goto LABEL_18;
      case 4:
        sub_1001A19F0();
LABEL_18:
        v20 = UIAccessibilityLayoutChangedNotification;

        UIAccessibilityPostNotification(v20, 0);
        break;
      default:
        v21 = a1;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        break;
    }
  }
}

void sub_1001A153C()
{
  v1 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v1)
  {
    v2 = v0;
    v3 = qword_1003A9F40;
    v21 = v1;
    if (v3 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8820);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_100005924();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: leaving pip state, stopping pip and restoring UI", v7, 2u);
      sub_100005BB8(v7);
    }

    if ([v2 isShownAboveCoverSheet])
    {
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (sub_100005908(v9))
      {
        v10 = sub_100005924();
        sub_10000539C(v10);
        sub_1000070F8(&_mh_execute_header, v11, v12, "EnhancedEmergency: ICS shown above cover sheet, resuming video streaming");
        sub_10000558C();
      }

      sub_1001882FC(0, 0);
    }

    v13 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_pipCoordinator;
    v14 = *&v2[OBJC_IVAR___PHEnhancedEmergencyCoordinator_pipCoordinator];
    if (v14)
    {
      v15 = v14;
      sub_10017AE7C();
    }

    sub_10018D110();
    v16 = *&v21[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
    if (v16)
    {
      [v16 setAccessibilityActivateBlock:0];
    }

    v17 = *&v2[v13];
    *&v2[v13] = 0;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong addWebRTCViewController:v21];
      swift_unknownObjectRelease();
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      [v19 hideRTTConversationIfNeeded];
      swift_unknownObjectRelease();
    }

    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      [v20 insertWebViewUnderButtonControls:v21];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1001A17B8()
{
  v1 = v0;
  v2 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_rttRecentMessageViewController;
  v3 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_rttRecentMessageViewController);
  if (v3)
  {
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v24 = [v4 superview];

    v6 = v24;
    if (v24)
    {
      goto LABEL_21;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = [Strong getCurrentCall];
  swift_unknownObjectRelease();
  if (!v25)
  {
    return;
  }

  v8 = *(v1 + v2);
  if (v8)
  {
    v9 = *(v1 + v2);
LABEL_11:
    v11 = qword_1003A9F40;
    v12 = v8;
    if (v11 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v13 = type metadata accessor for Logger();
    sub_100008A14(v13, &unk_1003B8820);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_100005924();
      *v16 = 0;
      sub_100008530(&_mh_execute_header, v17, v18, "EnhancedEmergency: showing RTT message view");
      sub_100005BB8(v16);
    }

    v19 = *(v1 + v2);
    *(v1 + v2) = v9;
    v20 = v9;

    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      [v21 hideCallControls];
      swift_unknownObjectRelease();
    }

    v22 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
    if (v22)
    {
      v23 = v22;
      sub_10015821C(v20);
    }

    goto LABEL_20;
  }

  v10 = [objc_opt_self() viewControllerForCall:v25];
  if (v10)
  {
    v9 = v10;
    v8 = 0;
    goto LABEL_11;
  }

LABEL_20:
  v6 = v25;
LABEL_21:
}

void sub_1001A19F0()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100005924();
    *v5 = 0;
    sub_100008530(&_mh_execute_header, v6, v7, "EnhancedEmergency: showing RTT conversation and starting pip");
    sub_100005BB8(v5);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong showRTTConversation];
    swift_unknownObjectRelease();
  }

  v9 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v9 && swift_unknownObjectWeakLoadStrong())
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v34 = v9;
      v32 = [v11 view];
      swift_unknownObjectRelease();
      if (v32)
      {
        v12 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_rttRecentMessageViewController];
        if (v12)
        {
          v13 = v12;
          sub_10015884C(v13);
        }

        if ([v1 isShownAboveCoverSheet])
        {
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.default.getter();
          if (sub_100005908(v15))
          {
            v16 = sub_100005924();
            sub_10000539C(v16);
            sub_1000070F8(&_mh_execute_header, v17, v18, "EnhancedEmergency: ICS shown above cover sheet, pausing video streaming and not starting pip");
            sub_10000558C();
          }

          sub_1001888F4();
        }

        else
        {
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            [v20 removeWebRTCViewControllerForPIP:v34];
            swift_unknownObjectRelease();
          }

          v21 = objc_allocWithZone(type metadata accessor for EnhancedEmergencyPIPCoordinator());
          v22 = sub_1001A24A0(v33, v34, v21);
          v23 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_pipCoordinator;
          v24 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_pipCoordinator];
          *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_pipCoordinator] = v22;
          v25 = v22;

          *&v25[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_delegate + 8] = &off_10035CFE8;
          swift_unknownObjectWeakAssign();

          v26 = *&v1[v23];
          if (v26)
          {
            v27 = v26;
            sub_10017ADA4();
          }
        }

        sub_10018CE00();
        v28 = *&v34[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
        if (v28)
        {
          v29 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_1001A25DC;
          aBlock[5] = v29;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1001CC768;
          aBlock[3] = &unk_10035D020;
          v30 = _Block_copy(aBlock);
          v31 = v28;

          [v31 setAccessibilityActivateBlock:v30];

          _Block_release(v30);
          return;
        }

        v19 = v33;
      }

      else
      {
        v19 = v34;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1001A1DEC()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_rttRecentMessageViewController);
  if (v1)
  {
    v2 = v0;
    v3 = qword_1003A9F40;
    v13 = v1;
    if (v3 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8820);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (sub_100005908(v6))
    {
      v7 = sub_100005924();
      sub_10000539C(v7);
      sub_1000070F8(&_mh_execute_header, v8, v9, "EnhancedEmergency: showing call controls");
      sub_10000558C();
    }

    v10 = *(v2 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
    if (v10)
    {
      v11 = v10;
      sub_10015884C(v13);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong showCallControls];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

BOOL sub_1001A1FA4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong transitionToRTTState:2];
  }

  return v2 != 0;
}

void sub_1001A2010()
{
  if (*&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState] == 4)
  {
    v1 = v0;
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v2 = type metadata accessor for Logger();
    sub_100008A14(v2, &unk_1003B8820);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (sub_100005908(v4))
    {
      v5 = sub_100005924();
      sub_10000539C(v5);
      sub_1000070F8(&_mh_execute_header, v6, v7, "EnhancedEmergency: got appWillResignActive notification, stopping pip");
      sub_10000558C();
    }

    [v1 transitionToRTTState:2];
  }
}

id sub_1001A2138()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong getAudioRouteMenu];
  swift_unknownObjectRelease();
  return v1;
}

void sub_1001A21E0()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
  if (v1)
  {
    v2 = v1;
    sub_1001576F8();
  }
}

uint64_t sub_1001A2294()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v2;
  if (!v2)
  {
    swift_unknownObjectRelease();
    return v3;
  }

  v4 = [v2 currentInCallScene];
  if (!v4)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  if ([v4 isBeingShownAboveCoverSheet])
  {
    swift_unknownObjectRelease();

    return 1;
  }

  else
  {
    v3 = [v3 isPresentingFullScreenOverlayCallUI];
    swift_unknownObjectRelease();
  }

  return v3;
}

unint64_t sub_1001A23E8()
{
  result = qword_1003ABD28;
  if (!qword_1003ABD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABD28);
  }

  return result;
}

void sub_1001A243C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setOverrideInterruptionExemptionIdentifier:v4];
}

char *sub_1001A24A0(void *a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_presentationController] = a2;
  v6 = objc_allocWithZone(PGPictureInPictureProxy);
  v7 = a2;
  result = [v6 initWithControlsStyle:4 viewController:v7];
  if (result)
  {
    v9 = result;

    *&a3[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_pictureInPictureProxy] = v9;
    *&a3[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_sourceView] = a1;
    v15.receiver = a3;
    v15.super_class = type metadata accessor for EnhancedEmergencyPIPCoordinator();
    v10 = a1;
    v11 = objc_msgSendSuper2(&v15, "init");
    v12 = OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_pictureInPictureProxy;
    v13 = *&v11[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_pictureInPictureProxy];
    v14 = v11;
    [v13 setDelegate:{v14, v15.receiver, v15.super_class}];
    sub_1001A243C(0xD000000000000014, 0x80000001002A8510, *&v11[v12]);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001A25E4(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CallParticipantsViewController();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  [v1 setHandlesCallWaitingCalls:1];
  v3 = [objc_opt_self() defaultCenter];
  v4 = TUCallCenterVideoCallStatusChangedNotification;
  v5 = [objc_opt_self() mainQueue];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1001A2D00;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001A27D0;
  v9[3] = &unk_10035D070;
  v7 = _Block_copy(v9);

  v8 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
}

void sub_1001A2774(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong updateCallGroups];
  }
}

uint64_t sub_1001A27D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001A2918()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentAudioAndVideoCallGroups];

  sub_1000064BC(0, &qword_1003AAF18, TUCallGroup_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1001A2A18(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CallParticipantsViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCallDisplayStyleManager:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1001A2AB0(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CallParticipantsViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCallDisplayStyleManager:contactsCache:", a1, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_1001A2B6C(void *a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000064BC(0, &qword_1003AFB10, CNContact_ptr);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CallParticipantsViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCallDisplayStyleManager:contactsCache:contacts:", a1, a2, v6.super.isa);

  if (v7)
  {
  }

  return v7;
}

id sub_1001A2CA8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CallParticipantsViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001A2D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestType] = a1;
  v4 = &v3[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestID];
  *v4 = a2;
  *(v4 + 1) = a3;
  *&v3[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestArrivalTime] = CFAbsoluteTimeGetCurrent();
  *&v3[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestShownToUserTime] = 0xBFF0000000000000;
  *&v3[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestActedUponByUserTime] = 0xBFF0000000000000;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for PerRequestMetricData();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1001A2E14()
{
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_bitRateArray] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_frameRateArray] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_packetLossArray] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_jitterRateArray] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorDefault] = -32767;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_requestMetricDataSet] = &_swiftEmptySetSingleton;
  v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingRequestReceived] = 0;
  v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingDropped] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minBitRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxBitRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minFrameRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxFrameRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxPacketLoss] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minJitterRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxJitterRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minZoomLevel] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxZoomLevel] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_totalBytesTransmittedWebRTCStream] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime] = 0xBFF0000000000000;
  v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchTurnedOnByButtonPress] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingDuration] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_emergencyCallStartTime] = CFAbsoluteTimeGetCurrent();
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoDuration] = 0;
  v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_firstQualityMessageAfterStreamingWasUnpaused] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingDuration] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCQualityMessageCountSinceStreamingStart] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_previousWebRTCState] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_currentWebRTCState] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewError] = -32767;
  v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorRecovery] = 1;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraFacing] = 1;
  v1 = &v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingInterface];
  *v1 = 0x64696C61766E49;
  v1[1] = 0xE700000000000000;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for EnhancedEmergencyDataCollector();
  return objc_msgSendSuper2(&v3, "init");
}

void sub_1001A307C(uint64_t a1)
{
  v2 = v1;
  v4 = SOSUIWebRTCQualityMessage.framesPerSecond.getter();
  v5 = sub_100008818(v4);
  v6 = -1.0;
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = -1.0;
  }

  v9 = SOSUIWebRTCQualityMessage.bitrate.getter();
  v10 = sub_100008818(v9);
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  v12 = SOSUIWebRTCQualityMessage.packetLoss.getter();
  v13 = sub_100008818(v12);
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1.0;
  }

  v15 = SOSUIWebRTCQualityMessage.jitter.getter();
  v16 = sub_100008818(v15);
  if (v7)
  {
    v17 = v16;
  }

  else
  {
    v17 = -1.0;
  }

  v18 = SOSUIWebRTCQualityMessage.bytesSent.getter();
  v19 = sub_100008818(v18);
  if (v7)
  {
    v6 = v19;
  }

  v20 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime;
  sub_100008A88();
  if (!(v29 ^ v21 | v7))
  {
    v22 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCQualityMessageCountSinceStreamingStart);
    v21 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v21)
    {
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCQualityMessageCountSinceStreamingStart) = v23;
  }

  SOSUIWebRTCStateName.rawValue.getter();
  if (a1 == sub_100007DEC())
  {
    sub_100008A88();
    if (!(v29 ^ v21 | v7))
    {
      v24 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCQualityMessageCountSinceStreamingStart);
      if (v24 == 1)
      {
        *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_firstQualityMessageAfterStreamingWasUnpaused) = 1;
        v25 = -1.0;
        if (v11 <= -1.0)
        {
          goto LABEL_40;
        }

        goto LABEL_25;
      }
    }
  }

  LOBYTE(v24) = 0;
  *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_firstQualityMessageAfterStreamingWasUnpaused) = 0;
  v25 = -1.0;
  if (v11 > -1.0)
  {
LABEL_25:
    v26 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minBitRate);
    v27 = v26 != v25;
    if (v11 < v26)
    {
      v27 = 0;
    }

    if ((v24 & 1) == 0 && !v27 && *(v2 + v20) > 0.0)
    {
      *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minBitRate) = v11;
    }

    v28 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxBitRate);
    v29 = v28 == v25 || v28 < v11;
    if (v29)
    {
      *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxBitRate) = v11;
    }

    if ((v24 & 1) == 0)
    {
      v30.n128_f64[0] = sub_100008A88();
      if (!(v29 ^ v21 | v7))
      {
        v31 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_bitRateArray;
        sub_100216884(v30);
        sub_100216954(*(*(v2 + v31) + 16));
        sub_1000053F8(*(v2 + v31));
        *(v32 + 32) = v11;
        *(v2 + v31) = v33;
      }
    }

LABEL_40:
    if (v8 <= -1.0)
    {
      goto LABEL_60;
    }

    goto LABEL_43;
  }

  if (v8 > -1.0)
  {
LABEL_43:
    sub_1001A6034();
    if (v7)
    {
      v36 = 1;
    }

    else
    {
      v36 = v8 < v35;
    }

    if (v36 && (*(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_firstQualityMessageAfterStreamingWasUnpaused) & 1) == 0 && *(v2 + v20) > 0.0)
    {
      *(v2 + v34) = v8;
    }

    sub_1001A6034();
    if (v7)
    {
      v39 = 1;
    }

    else
    {
      v39 = v38 < v8;
    }

    if (v39)
    {
      *(v2 + v37) = v8;
    }

    if ((*(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_firstQualityMessageAfterStreamingWasUnpaused) & 1) == 0)
    {
      v40.n128_f64[0] = sub_100008A88();
      if (!(v29 ^ v21 | v7))
      {
        v41 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_frameRateArray;
        sub_100216884(v40);
        sub_100034C2C();
        sub_1000053F8(*(v2 + v41));
        *(v42 + 32) = v8;
        *(v2 + v41) = v43;
      }
    }

LABEL_60:
    if (v14 <= -1.0)
    {
      goto LABEL_71;
    }

    goto LABEL_63;
  }

  if (v14 > -1.0)
  {
LABEL_63:
    v44 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxPacketLoss);
    if (v44 == -1.0 || v44 < v14)
    {
      *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxPacketLoss) = v14;
    }

    v46.n128_f64[0] = sub_100008A88();
    if (!(v29 ^ v21 | v7))
    {
      v47 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_packetLossArray;
      sub_100216884(v46);
      sub_100034C2C();
      sub_1000053F8(*(v2 + v47));
      *(v48 + 32) = v14;
      *(v2 + v47) = v49;
    }

LABEL_71:
    if (v17 <= -1.0)
    {
LABEL_87:
      v25 = -1.0;
      goto LABEL_88;
    }

LABEL_72:
    sub_1001A6034();
    if (v7)
    {
      v52 = 1;
    }

    else
    {
      v52 = v17 < v51;
    }

    if (v52 && *(v2 + v20) > 0.0)
    {
      *(v2 + v50) = v17;
    }

    sub_1001A6034();
    if (v7)
    {
      v55 = 1;
    }

    else
    {
      v55 = v54 < v17;
    }

    if (v55)
    {
      *(v2 + v53) = v17;
    }

    v56.n128_f64[0] = sub_100008A88();
    if (!(v29 ^ v21 | v7))
    {
      v57 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_jitterRateArray;
      sub_100216884(v56);
      sub_100216954(*(*(v2 + v57) + 16));
      sub_1000053F8(*(v2 + v57));
      *(v58 + 32) = v17;
      *(v2 + v57) = v59;
    }

    goto LABEL_87;
  }

  if (v17 > -1.0)
  {
    goto LABEL_72;
  }

LABEL_88:
  if (v6 <= v25)
  {
    return;
  }

  v60 = v6 + *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_totalBytesTransmittedWebRTCStream);
  if (COERCE__INT64(fabs(v60)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_98;
  }

  if (v60 <= -9.22337204e18)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v60 >= 9.22337204e18)
  {
LABEL_100:
    __break(1u);
    return;
  }

  if (v60 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_totalBytesTransmittedWebRTCStream) = v60;
  }
}

void sub_1001A3428(double a1)
{
  if (a1 > -1.0)
  {
    v2 = *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minZoomLevel);
    if (v2 == -1.0 || v2 > a1)
    {
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minZoomLevel) = a1;
    }

    v4 = *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxZoomLevel);
    if (v4 == -1.0 || v4 < a1)
    {
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxZoomLevel) = a1;
    }
  }
}

void sub_1001A3474(char a1)
{
  v2 = v1;
  if (qword_1003A9F40 != -1)
  {
    sub_100007704();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B8820);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency:torchStateChangeTo,torchTurnedOn:%{BOOL}d", v7, 8u);
    sub_100005BB8(v7);
  }

  if (a1)
  {
    *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime) = CFAbsoluteTimeGetCurrent();
    v8 = 1;
  }

  else
  {
    v9 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime;
    sub_1000361E4();
    if (v10)
    {
      return;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v8 = 0;
    v12 = vabdd_f64(Current, *(v2 + v9));
    v13 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration);
    if (v13 > 0.0)
    {
      v12 = v13 + v12;
    }

    *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration) = v12;
    *(v2 + v9) = 0xBFF0000000000000;
  }

  *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchTurnedOnByButtonPress) = v8;
}

void sub_1001A35C4(uint64_t a1)
{
  if (a1 == 1)
  {
    v3 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime;
    if (*(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) > 0.0)
    {
      v4 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingDuration;
      Current = CFAbsoluteTimeGetCurrent();
      *(v1 + v4) = sub_10000A468(Current, *(v1 + v3));
      *(v1 + v3) = 0xBFF0000000000000;
    }

    if (*(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchTurnedOnByButtonPress) == 1)
    {
      v6 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime;
      if (*(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime) <= 0.0)
      {
        *(v1 + v6) = CFAbsoluteTimeGetCurrent();
      }
    }

LABEL_10:
    *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraFacing) = a1;
    return;
  }

  if (!a1)
  {
    *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) = CFAbsoluteTimeGetCurrent();
    v7 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime;
    if (*(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime) > 0.0)
    {
      v8 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration;
      v9 = CFAbsoluteTimeGetCurrent();
      *(v1 + v8) = sub_10000A468(v9, *(v1 + v7));
      *(v1 + v7) = 0xBFF0000000000000;
    }

    goto LABEL_10;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

char *sub_1001A36EC(double a1)
{
  v3 = v1;
  switch(SOSUIWebRTCState.state.getter())
  {
    case 0:
      v5 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime;
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime) = 0xBFF0000000000000;
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) = 0xBFF0000000000000;
      goto LABEL_20;
    case 1:
      v2 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_currentWebRTCState;
      v17 = SOSUIWebRTCStateName.rawValue.getter();
      if (v17 == SOSUIWebRTCStateName.rawValue.getter())
      {
        sub_10000593C(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime);
        if (!(v8 ^ v9 | v7))
        {
          v18 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration;
LABEL_40:
          v25 = *v18;
          Current = CFAbsoluteTimeGetCurrent();
          *(v3 + v25) = sub_10000A468(Current, *v17);
          *v17 = -1.0;
          goto LABEL_41;
        }
      }

      SOSUIWebRTCStateName.rawValue.getter();
      if (v17 == sub_100007DEC())
      {
        sub_10000593C(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime);
        if (!(v8 ^ v9 | v7))
        {
          v18 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoDuration;
          goto LABEL_40;
        }
      }

LABEL_41:
      SOSUIWebRTCStateName.rawValue.getter();
      if (v17 == sub_100007DEC())
      {
        v27 = SOSUIWebRTCCameraFacing.rawValue.getter();
        if (v27 == SOSUIWebRTCCameraFacing.rawValue.getter())
        {
          *(v3 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) = CFAbsoluteTimeGetCurrent();
        }
      }

      if (*(v3 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewError) != -32767)
      {
        *(v3 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorRecovery) = 1;
      }

      v28 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime;
      sub_1000361E4();
      if (!(!v7 & v29))
      {
        *(v3 + v28) = CFAbsoluteTimeGetCurrent();
      }

      if (*(v3 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchTurnedOnByButtonPress) == 1)
      {
        v16 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime;
        sub_1000361E4();
        if (!(!v7 & v29))
        {
LABEL_50:
          *(v3 + v16) = CFAbsoluteTimeGetCurrent();
        }
      }

      goto LABEL_54;
    case 2:
      v11 = SOSUIWebRTCStateName.rawValue.getter();
      if (v11 == SOSUIWebRTCStateName.rawValue.getter())
      {
        sub_1000361E4();
        if (!(v8 ^ v9 | v7))
        {
          v2 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration;
          v12 = CFAbsoluteTimeGetCurrent();
          sub_10000C368(v12);
        }
      }

      sub_1000361E4();
      if (!(v8 ^ v9 | v7))
      {
        v2 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingDuration;
        v13 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v13);
      }

      sub_1000361E4();
      if (!(v8 ^ v9 | v7))
      {
        v2 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingDuration;
        v14 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v14);
      }

      sub_1000361E4();
      if (!(v8 ^ v9 | v7))
      {
        v2 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration;
        v15 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v15);
      }

      *(v3 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime) = CFAbsoluteTimeGetCurrent();
      goto LABEL_53;
    case 3:
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime) = CFAbsoluteTimeGetCurrent();
      v16 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime;
      sub_1000361E4();
      if (!v8)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    case 4:
      v4 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime;
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime) = 0xBFF0000000000000;
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) = 0xBFF0000000000000;
      *(v1 + v4) = 0xBFF0000000000000;
      v5 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime;
LABEL_20:
      *(v1 + v5) = 0xBFF0000000000000;
      goto LABEL_53;
    case 5:
    case 7:
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime) = 0xBFF0000000000000;
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) = 0xBFF0000000000000;
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime) = 0xBFF0000000000000;
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime) = 0xBFF0000000000000;
      goto LABEL_53;
    case 6:
      v2 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_currentWebRTCState;
      v6 = SOSUIWebRTCStateName.rawValue.getter();
      if (v6 == SOSUIWebRTCStateName.rawValue.getter())
      {
        sub_10000593C(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime);
        if (!(v8 ^ v9 | v7))
        {
          v10 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration;
LABEL_28:
          v2 = *v10;
          v19 = CFAbsoluteTimeGetCurrent();
          *&v2[v3] = sub_10000A468(v19, *v6);
          *v6 = -1.0;
          goto LABEL_29;
        }
      }

      SOSUIWebRTCStateName.rawValue.getter();
      if (v6 == sub_100007DEC())
      {
        sub_10000593C(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime);
        if (!(v8 ^ v9 | v7))
        {
          v10 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoDuration;
          goto LABEL_28;
        }
      }

LABEL_29:
      sub_1000361E4();
      if (!(v8 ^ v9 | v7))
      {
        v2 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingDuration;
        v20 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v20);
      }

      sub_1000361E4();
      if (!(v8 ^ v9 | v7))
      {
        v2 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingDuration;
        v21 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v21);
      }

      sub_1000361E4();
      if (!(v8 ^ v9 | v7))
      {
        v2 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration;
        v22 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v22);
      }

      v23 = SOSUIWebRTCState.error.getter();
      if (v23)
      {
        v2 = v23;
        v24 = SOSUIWebRTCErrorMessage.errorCode.getter();
      }

      else
      {
        v24 = -32767;
      }

      *(v3 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewError) = v24;
      *(v3 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorRecovery) = 0;
LABEL_53:
      *(v3 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCQualityMessageCountSinceStreamingStart) = 0;
LABEL_54:
      SOSUIWebRTCState.state.getter();
      v30 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_currentWebRTCState;
      SOSUIWebRTCStateName.rawValue.getter();
      sub_1000072EC();
      result = SOSUIWebRTCStateName.rawValue.getter();
      if (v2 != result)
      {
        *(v3 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_previousWebRTCState) = *(v3 + v30);
        result = SOSUIWebRTCState.state.getter();
        *(v3 + v30) = result;
      }

      return result;
    case 8:
      sub_1001A456C();
      goto LABEL_54;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
  }
}

void sub_1001A3BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(type metadata accessor for PerRequestMetricData());
  sub_10000B45C();

  v9 = sub_1001A2D08(a1, a2, a3);
  swift_beginAccess();
  v10 = v9;
  sub_10019F0C4(&v12, v10);
  v11 = v12;
  swift_endAccess();

  if (a1 == 1)
  {
    *(v4 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingRequestReceived) = 1;
  }
}

void sub_1001A3CBC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_requestMetricDataSet;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if ((v7 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for PerRequestMetricData();
    sub_1001A5FA4();
    Set.Iterator.init(_cocoa:)();
    v7 = v24;
    v8 = v25;
    v3 = v26;
    v9 = v27;
    v10 = v28;
  }

  else
  {
    v8 = v7 + 56;
    sub_100007B94();
    v10 = v11 & v12;

    v9 = 0;
  }

  v13 = (v3 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v14 = v9;
    v15 = v10;
    v16 = v9;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v7 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_23:
      sub_10016D304(v7);
      return;
    }

    while (1)
    {
      v19 = *&v18[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestID] == a1 && *&v18[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestID + 8] == a2;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v20 = *a3;
        sub_1001A6028();
        if (v21)
        {
          *&v18[v20] = CFAbsoluteTimeGetCurrent();
        }
      }

      v9 = v16;
      v10 = v17;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for PerRequestMetricData();
        swift_dynamicCast();
        v18 = v23;
        v16 = v9;
        v17 = v10;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
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
      goto LABEL_23;
    }

    v15 = *(v8 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1001A3ED8(uint64_t a1)
{
  v2 = v1;
  v68 = 0;
  if ((getifaddrs(&v68) & 0x80000000) == 0)
  {
    v4 = v68;
    if (v68)
    {
      v5 = a1 + 32;
      v6 = 1;
      p_opt_class_meths = &OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource.opt_class_meths;
      v60 = v2;
      v61 = a1;
      while (1)
      {
        if ((v6 & 1) == 0)
        {
          v4 = v4->ifa_next;
        }

        v8 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
        if (!v4)
        {
          break;
        }

        v6 = 0;
        if (v4->ifa_name)
        {
          v9 = String.init(cString:)();
          v8 = v10;
          ifa_addr = v4->ifa_addr;
          if (ifa_addr)
          {
            v63 = v9;
            v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
            *(v12 + 16) = 1025;
            bzero((v12 + 32), 0x401uLL);
            sa_family = ifa_addr->sa_family;
            v14 = sa_family == 2 || sa_family == 30;
            if (v14 && !getnameinfo(ifa_addr, ifa_addr->sa_len, (v12 + 32), 0x401u, 0, 0, 2))
            {
              v15 = *(v12 + 16);
              if (!v15)
              {
                goto LABEL_64;
              }

              if (*(v12 + 32))
              {
                v16 = 0;
                v17 = v15 - 1;
                while (v17 != v16)
                {
                  if (!*(v12 + 33 + v16++))
                  {
                    goto LABEL_22;
                  }
                }

                __break(1u);
LABEL_64:
                __break(1u);
                goto LABEL_65;
              }

LABEL_22:
              v59 = v4;

              v65 = static String._fromUTF8Repairing(_:)();
              v20 = v19;

              if (p_opt_class_meths[488] != -1)
              {
                sub_100007704();
                swift_once();
              }

              v21 = type metadata accessor for Logger();
              sub_100008A14(v21, &unk_1003B8820);

              v22 = Logger.logObject.getter();
              v23 = static os_log_type_t.default.getter();

              v66 = v20;
              v62 = v8;
              if (os_log_type_enabled(v22, v23))
              {
                v24 = swift_slowAlloc();
                v25 = swift_slowAlloc();
                v67[0] = v25;
                *v24 = 136315394;
                *(v24 + 4) = sub_100008ADC(v65, v20, v67);
                *(v24 + 12) = 2080;
                *(v24 + 14) = sub_100008ADC(v63, v8, v67);
                _os_log_impl(&_mh_execute_header, v22, v23, "EnhancedEmergency:processNetworkInterfaceForStreamingSession,ipAddressFromIFConfig:%s,interface name:%s", v24, 0x16u);
                swift_arrayDestroy();
                v26 = v25;
                a1 = v61;
                sub_100005BB8(v26);
                sub_100005BB8(v24);
              }

              v64 = *(a1 + 16);
              if (v64)
              {
                v27 = 0;
                while (1)
                {
                  v29 = *(v5 + 16 * v27);
                  v28 = *(v5 + 16 * v27++ + 8);
                  v30 = HIBYTE(v28) & 0xF;
                  if ((v28 & 0x2000000000000000) == 0)
                  {
                    v30 = v29 & 0xFFFFFFFFFFFFLL;
                  }

                  v67[0] = v29;
                  v67[1] = v28;
                  v67[2] = 0;
                  v67[3] = v30;

                  while (1)
                  {
                    v31 = String.Iterator.next()();
                    if (!v31.value._object)
                    {
                      break;
                    }

                    if (v31.value._countAndFlagsBits != 91 || v31.value._object != 0xE100000000000000)
                    {
                      sub_1001A6010();
                      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
                      v35 = v31.value._countAndFlagsBits == 93 && v31.value._object == 0xE100000000000000;
                      if ((v33 & 1) == 0 && !v35)
                      {
                        sub_1001A6010();
                        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                        {
                          v36._countAndFlagsBits = sub_1001A6010();
                          String.append(_:)(v36);
                        }
                      }
                    }
                  }

                  v37 = Logger.logObject.getter();
                  v38 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v37, v38))
                  {
                    v39 = v5;
                    v40 = swift_slowAlloc();
                    v41 = swift_slowAlloc();
                    v67[0] = v41;
                    *v40 = 136315138;
                    v42 = sub_1001A6010();
                    *(v40 + 4) = sub_100008ADC(v42, v43, v44);
                    _os_log_impl(&_mh_execute_header, v37, v38, "EnhancedEmergency:processNetworkInterfaceForStreamingSession,addressFromWebRTCFiltered:%s", v40, 0xCu);
                    sub_100005B2C(v41);
                    sub_100005BB8(v41);
                    v45 = v40;
                    v5 = v39;
                    sub_100005BB8(v45);
                  }

                  if (!v65 && v66 == 0xE000000000000000)
                  {
                    break;
                  }

                  sub_1001A6010();
                  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v47)
                  {
                    goto LABEL_57;
                  }

                  if (v27 == v64)
                  {
                    goto LABEL_55;
                  }
                }

LABEL_57:
                v8 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;

                v2 = v60;
                v48 = &v60[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingInterface];
                *v48 = v63;
                v48[1] = v62;

                p_opt_class_meths = &OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource.opt_class_meths;
                break;
              }

LABEL_55:

              v2 = v60;
              a1 = v61;
              p_opt_class_meths = (&OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource + 48);
              v4 = v59;
            }

            else
            {
            }
          }

          v6 = 0;
        }
      }

      if (p_opt_class_meths[488] == -1)
      {
        goto LABEL_59;
      }

LABEL_65:
      sub_100007704();
      swift_once();
LABEL_59:
      v49 = type metadata accessor for Logger();
      sub_100008A14(v49, &unk_1003B8820);
      v50 = v2;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v67[0] = v54;
        *v53 = 136315138;
        v55 = &v50[v8[472]];
        v56 = *v55;
        v57 = v55[1];

        v58 = sub_100008ADC(v56, v57, v67);

        *(v53 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v51, v52, "EnhancedEmergency:processNetworkInterfaceForStreamingSession,completed,videoStreamingInterface:%s", v53, 0xCu);
        sub_100005B2C(v54);
        sub_100005BB8(v54);
        sub_100005BB8(v53);
      }

      freeifaddrs(v68);
    }
  }
}

void sub_1001A456C()
{
  v1 = SOSUIWebRTCStateName.rawValue.getter();
  if (v1 == SOSUIWebRTCStateName.rawValue.getter())
  {
    v2 = (v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime);
    if (*(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime) > 0.0)
    {
      v3 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration;
LABEL_7:
      v5 = *v3;
      Current = CFAbsoluteTimeGetCurrent();
      *(v0 + v5) = sub_10000A468(Current, *v2);
      *v2 = -1.0;
      goto LABEL_8;
    }
  }

  v4 = SOSUIWebRTCStateName.rawValue.getter();
  if (v4 == SOSUIWebRTCStateName.rawValue.getter())
  {
    v2 = (v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime);
    if (*(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime) > 0.0)
    {
      v3 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoDuration;
      goto LABEL_7;
    }
  }

LABEL_8:
  sub_1001A6028();
  if (!(v8 ^ v9 | v7))
  {
    v10 = CFAbsoluteTimeGetCurrent();
    sub_10000861C(v10);
  }

  sub_1001A6028();
  if (!(v8 ^ v9 | v7))
  {
    v11 = CFAbsoluteTimeGetCurrent();
    sub_10000861C(v11);
  }

  sub_1001A6028();
  if (!(v8 ^ v9 | v7))
  {
    v12 = CFAbsoluteTimeGetCurrent();
    sub_10000861C(v12);
  }
}

void sub_1001A46A8()
{
  if ((v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingRequestReceived] & 1) == 0)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_100007704();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008A14(v13, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "EnhancedEmergency: submitCAMetric, No streaming request received during emergency call, early return", v15, 2u);
      sub_100005BB8(v15);
    }

    sub_10000FFD0();

    return;
  }

  sub_1001A456C();
  Current = CFAbsoluteTimeGetCurrent();
  v2 = *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_emergencyCallStartTime];
  v3 = vabdd_f64(Current, v2);
  if (v2 <= 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingDuration;
  v6 = *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingDuration];
  if (v6 <= 0.0)
  {
    v7 = 0.0;
    v8 = 0.0;
    v11 = 0.0;
    if (v4 <= 0.0)
    {
      v19 = 0.0;
      goto LABEL_28;
    }
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    if (*&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingDuration] > 0.0)
    {
      sub_100025340();
      v8 = ceil(v9);
    }

    if (*&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration] > 0.0)
    {
      sub_100025340();
      v7 = ceil(v10);
    }

    v11 = 0.0;
    if (v4 <= 0.0)
    {
      v19 = 0.0;
      goto LABEL_25;
    }

    sub_100025340();
    v11 = ceil(v12);
  }

  v18 = 0.0;
  v19 = 0.0;
  if (*&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoDuration] > 0.0)
  {
    sub_100025340();
    v19 = ceil(v20);
  }

  if (v6 <= 0.0)
  {
    goto LABEL_29;
  }

LABEL_25:
  v21 = *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration];
  if (v21 <= 0.0)
  {
LABEL_28:
    v18 = 0.0;
    goto LABEL_29;
  }

  v18 = ceil(v21 / v6 * 100.0);
LABEL_29:
  sub_1001A601C();
  v22 = 0.0;
  if (v23)
  {
    v24 = sub_100030384();
    do
    {
      v24 = sub_100026F30(v24);
    }

    while (!v26);
    v22 = v24 / v25;
  }

  sub_1001A601C();
  if (v28)
  {
    v29 = sub_100030384();
    do
    {
      v29 = sub_100026F30(v29);
    }

    while (!v26);
    v27 = v29 / v30;
  }

  osloga = *&v27;
  sub_1001A601C();
  v31 = 0.0;
  if (v32)
  {
    do
    {
      v31 = sub_100026F30(v31);
    }

    while (!v26);
    v31 = v31 / v33;
  }

  v141 = v31;
  sub_1001A601C();
  if (v35)
  {
    v36 = sub_100030384();
    do
    {
      v36 = sub_100026F30(v36);
    }

    while (!v26);
    v34 = v36 / v37;
  }

  v140 = v34;
  if (qword_1003A9F40 != -1)
  {
    sub_100007704();
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100008A14(v38, &unk_1003B8820);
  v39 = v0;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134220544;
    *(v42 + 4) = v8;
    *(v42 + 12) = 2048;
    *(v42 + 14) = v7;
    *(v42 + 22) = 2048;
    *(v42 + 24) = v4;
    *(v42 + 32) = 2048;
    *(v42 + 34) = *&v0[v5];
    *(v42 + 42) = 2048;
    *(v42 + 44) = v11;
    *(v42 + 52) = 2048;
    *(v42 + 54) = v19;
    *(v42 + 62) = 2048;
    *(v42 + 64) = v18;
    *(v42 + 72) = 2048;
    *(v42 + 74) = v22;
    *(v42 + 82) = 2048;
    *(v42 + 84) = osloga;
    *(v42 + 92) = 2048;
    *(v42 + 94) = v141;
    *(v42 + 102) = 2048;
    *(v42 + 104) = v140;
    _os_log_impl(&_mh_execute_header, v40, v41, "EnhancedEmergency: submitCAMetric frontCameraVideoPercentage:%f torchOnPercentage:%f callDuration:%f videoOnDuration:%f videoOnPercentage:%f videoPausedPercentage:%f unstableVideoPercentage:%f averageBitRate:%f avgFrameRate:%f averagePacketLoss:%f averageJitterRate:%f", v42, 0x70u);
    sub_100005BB8(v42);
  }

  v43 = v39;
  v44 = Logger.logObject.getter();
  v139 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v139))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 134221314;
    *(v45 + 4) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minBitRate];
    *(v45 + 12) = 2048;
    *(v45 + 14) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxBitRate];
    *(v45 + 22) = 2048;
    *(v45 + 24) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minFrameRate];
    *(v45 + 32) = 2048;
    *(v45 + 34) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxFrameRate];
    *(v45 + 42) = 2048;
    *(v45 + 44) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxPacketLoss];
    *(v45 + 52) = 2048;
    *(v45 + 54) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minJitterRate];
    *(v45 + 62) = 2048;
    *(v45 + 64) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxJitterRate];
    *(v45 + 72) = 2048;
    *(v45 + 74) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxZoomLevel];
    *(v45 + 82) = 2048;
    *(v45 + 84) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minZoomLevel];
    *(v45 + 92) = 2048;
    *(v45 + 94) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewError];
    *(v45 + 102) = 1024;
    *(v45 + 104) = v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorRecovery];
    *(v45 + 108) = 2048;
    *(v45 + 110) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_totalBytesTransmittedWebRTCStream] * 0.000000953674316;
    *(v45 + 118) = 1024;
    *(v45 + 120) = v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingDropped];

    *(v45 + 124) = 2080;
    v47 = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingInterface];
    v48 = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingInterface + 8];

    v49 = sub_100008ADC(v47, v48, aBlock);

    *(v45 + 126) = v49;
    _os_log_impl(&_mh_execute_header, v44, v139, "EnhancedEmergency: submitCAMetric minBitRate:%f maxBitRate:%f minFrameRate:%f maxFrameRate:%f maxPacketLoss:%f minJitterRate:%f maxJitterRate:%f maxZoomLevel:%f minZoomLevel:%f webRTCViewError:%ld webRTCViewErrorRecovery:%{BOOL}d totalBytesTransmittedWebRTCStream in MB:%f streamingDropped:%{BOOL}d videoStreamingInterface:%s", v45, 0x86u);
    sub_100005B2C(v46);
    sub_100005BB8(v46);
    sub_100005BB8(v45);
  }

  else
  {
  }

  v50 = v43;
  sub_1000064BC(0, &qword_1003AB7A0, NSObject_ptr);
  Dictionary.init(dictionaryLiteral:)();
  sub_100007FB4();
  if (!(v52 ^ v53 | v26))
  {
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v51 <= -9.22337204e18)
  {
    goto LABEL_146;
  }

  sub_1000095BC();
  if (!v52)
  {
    goto LABEL_147;
  }

  sub_10000C188(objc_allocWithZone(NSNumber));
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v54 = sub_100008C24();
  sub_1002313A0(v54, v55, v56);
  sub_100025AC0();
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_148;
  }

  if (v18 <= -1.0)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v18 >= sub_100008E2C())
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v18];
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v57 = sub_100008C24();
  sub_1002313A0(v57, v58, v59);
  sub_100025AC0();
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_151;
  }

  if (v8 <= -1.0)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v8 >= sub_100008E2C())
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v8];
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v60 = sub_100008C24();
  sub_1002313A0(v60, v61, v62);
  if (v4 == INFINITY)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v4 <= -1.0)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v4 >= sub_100008E2C())
  {
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v4];
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v63 = sub_100008C24();
  sub_1002313A0(v63, v64, v65);
  sub_100007FB4();
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_157;
  }

  if (v66 <= -1.0)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v66 >= 1.84467441e19)
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  sub_100014320(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v67 = sub_100030240();
  sub_1002313A0(v67, v68, v69);
  sub_100025AC0();
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_160;
  }

  if (v11 <= -1.0)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  if (v11 >= sub_100008E2C())
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  sub_100014320(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10000696C(isUniquelyReferenced_nonNull_native);
  sub_100025AC0();
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_163;
  }

  if (v19 <= -1.0)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (v19 >= sub_100008E2C())
  {
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  sub_100014320(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v71 = sub_100030240();
  sub_1002313A0(v71, v72, v73);
  sub_100025AC0();
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_166;
  }

  if (v7 <= -1.0)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (v7 >= sub_100008E2C())
  {
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  sub_100014320(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  v74 = swift_isUniquelyReferenced_nonNull_native();
  sub_10000696C(v74);
  v75 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minBitRate);
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_169;
  }

  if (v75 <= -9.22337204e18)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  sub_1000095BC();
  if (!v52)
  {
    goto LABEL_171;
  }

  v76 = sub_1000083EC();
  sub_10000891C(v76);
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v77 = sub_100030240();
  sub_1002313A0(v77, v78, 0xEA00000000006574);
  v79 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxBitRate);
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_172;
  }

  if (v79 <= -9.22337204e18)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  sub_1000095BC();
  if (!v52)
  {
    goto LABEL_174;
  }

  v80 = sub_1000083EC();
  sub_10000891C(v80);
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v81 = sub_100030240();
  sub_1002313A0(v81, v82, 0xEA00000000006574);
  sub_100025AC0();
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_175;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  sub_10000891C(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v83 = sub_100030240();
  sub_1002313A0(v83, v84, v85);
  v86 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minFrameRate);
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_178;
  }

  if (v86 <= -9.22337204e18)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  sub_1000095BC();
  if (!v52)
  {
    goto LABEL_180;
  }

  v87 = sub_100005D94();
  sub_10000C188(v87);
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v88 = sub_100008C24();
  sub_1002313A0(v88, v89, 0xEC00000065746152);
  v90 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxFrameRate);
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_181;
  }

  if (v90 <= -9.22337204e18)
  {
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  sub_1000095BC();
  if (!v52)
  {
    goto LABEL_183;
  }

  v91 = sub_100005D94();
  sub_10000C188(v91);
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v92 = sub_100008C24();
  sub_1002313A0(v92, v93, 0xEC00000065746152);
  sub_100025AC0();
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_184;
  }

  if (v94 <= -9.22337204e18)
  {
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  sub_10001428C();
  if (!v52)
  {
    goto LABEL_186;
  }

  sub_10000C188(objc_allocWithZone(NSNumber));
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v95 = sub_100008C24();
  sub_1002313A0(v95, v96, 0xEC00000065746152);
  v97 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxPacketLoss);
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_187;
  }

  if (v97 <= -9.22337204e18)
  {
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  sub_1000095BC();
  if (!v52)
  {
    goto LABEL_189;
  }

  v98 = sub_1000083EC();
  sub_10000891C(v98);
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v99 = sub_100030240();
  sub_1002313A0(v99, v100, v101);
  sub_100025AC0();
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_190;
  }

  if (v102 <= -9.22337204e18)
  {
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  sub_10001428C();
  if (!v52)
  {
    goto LABEL_192;
  }

  sub_10000891C(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  v103 = swift_isUniquelyReferenced_nonNull_native();
  sub_10000696C(v103);
  v104 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minJitterRate);
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_193;
  }

  if (v104 <= -9.22337204e18)
  {
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  sub_1000095BC();
  if (!v52)
  {
    goto LABEL_195;
  }

  v105 = sub_100005D94();
  sub_10000C188(v105);
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v106 = sub_100008C24();
  sub_1002313A0(v106, v107, 0xED00006574615272);
  v108 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxJitterRate);
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_196;
  }

  if (v108 <= -9.22337204e18)
  {
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  sub_1000095BC();
  if (!v52)
  {
    goto LABEL_198;
  }

  v109 = sub_100005D94();
  sub_10000C188(v109);
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v110 = sub_100008C24();
  sub_1002313A0(v110, v111, 0xED00006574615272);
  sub_100025AC0();
  if (!(v52 ^ v53 | v26))
  {
    goto LABEL_199;
  }

  if (v112 <= -9.22337204e18)
  {
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
    return;
  }

  sub_10001428C();
  if (!v52)
  {
    goto LABEL_201;
  }

  sub_10000891C(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  v113 = swift_isUniquelyReferenced_nonNull_native();
  sub_10000696C(v113);
  [objc_allocWithZone(NSNumber) initWithDouble:*&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxZoomLevel]];
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v114 = sub_100030240();
  sub_1002313A0(v114, v115, 0xEC0000006C657665);
  [objc_allocWithZone(NSNumber) initWithDouble:*&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minZoomLevel]];
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v116 = sub_100030240();
  sub_1002313A0(v116, v117, 0xEC0000006C657665);
  [objc_allocWithZone(NSNumber) initWithBool:v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingDropped]];
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v118 = sub_100030240();
  sub_1002313A0(v118, v119, v120);
  v121 = aBlock[0];
  sub_1000064BC(0, &qword_1003AB4C0, NSString_ptr);
  v122 = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingInterface];
  v123 = *&v50[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingInterface + 8];

  sub_1001A584C(v122, v123);
  swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v121;
  v124 = sub_100008C24();
  sub_1002313A0(v124, v125, v126);
  v127 = aBlock[0];
  v128 = *&v50[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewError];
  if (v128 != -32767)
  {
    [objc_allocWithZone(NSNumber) initWithLongLong:v128];
    swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v127;
    v129 = sub_100008C24();
    sub_1002313A0(v129, v130, v131);
    v132 = [objc_allocWithZone(NSNumber) initWithBool:v50[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorRecovery]];
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000714C();
    sub_1002313A0(v132, 0xD000000000000017, 0x80000001002A89E0);
    v127 = aBlock[0];
  }

  v133 = String._bridgeToObjectiveC()();
  v134 = swift_allocObject();
  *(v134 + 16) = v127;
  aBlock[4] = sub_1001A6000;
  aBlock[5] = v134;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100206510;
  aBlock[3] = &unk_10035D110;
  v135 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v135);

  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    *v138 = 0;
    _os_log_impl(&_mh_execute_header, v136, v137, "Metric submitted successfully for topic com.apple.incallservice.eed", v138, 2u);
    sub_100005BB8(v138);
  }

  sub_10000FFD0();
}

id sub_1001A584C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithString:v3];

  return v4;
}

uint64_t sub_1001A58C0()
{
  v2 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_requestMetricDataSet;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for PerRequestMetricData();
    sub_1001A5FA4();
    Set.Iterator.init(_cocoa:)();
    v3 = v83;
    v4 = v84;
    v0 = v85;
    v5 = v86;
    v6 = v87;
  }

  else
  {
    v4 = v3 + 56;
    sub_100007B94();
    v6 = v7 & v8;

    v5 = 0;
  }

  v9 = (v0 + 64) >> 6;
  v71 = v0;
  v73 = v81;
  v76 = v4;
  v77 = v3;
  v75 = v9;
  if (v3 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_9:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
      return sub_10016D304(v3);
    }

    while (1)
    {
      v16 = swift_allocObject();
      sub_1000064BC(0, &qword_1003AB7A0, NSObject_ptr);
      *(v16 + 16) = Dictionary.init(dictionaryLiteral:)();
      sub_100007FB4();
      if (!(v19 ^ v20 | v18))
      {
        break;
      }

      if (v17 <= -9.22337204e18)
      {
        goto LABEL_40;
      }

      sub_1000095BC();
      if (!v19)
      {
        goto LABEL_41;
      }

      v79 = v14;
      v78 = v13;
      v22 = v21;
      v23 = [objc_allocWithZone(NSNumber) initWithLongLong:v21];
      sub_100025EB4(v23, v24, v25, v26, v27, v28, v29, v30, v71, v73);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100008D74();
      v31 = sub_10001411C(0xD000000000000026, 0x80000001002A8A50);
      v33 = *(v13 + 16);
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_42;
      }

      v36 = v31;
      v37 = v32;
      sub_10014EA98(&qword_1003AFB70, &unk_1002FC900);
      v38 = &v82;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v22, v35))
      {
        v38 = v82;
        v39 = sub_10001411C(0xD000000000000026, 0x80000001002A8A50);
        if ((v37 & 1) != (v40 & 1))
        {
          goto LABEL_46;
        }

        v36 = v39;
      }

      v41 = v82;
      if (v37)
      {
        v42 = v82[7];
        v43 = *(v42 + 8 * v36);
        *(v42 + 8 * v36) = v1;
      }

      else
      {
        sub_100005C50();
        *v44 = 0xD000000000000026;
        v44[1] = 0x80000001002A8A50;
        sub_100012B08();
        if (v20)
        {
          goto LABEL_44;
        }

        v41[2] = v45;
      }

      *(v16 + 16) = v41;
      swift_endAccess();
      v46 = *&v79[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestType];
      v47 = [objc_allocWithZone(NSNumber) initWithInteger:v46];
      sub_100025EB4(v47, v48, v49, v50, v51, v52, v53, v54, v72, v74);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100008D74();
      v55 = sub_10001411C(0xD000000000000022, 0x80000001002A8A80);
      v57 = v56;
      v58 = v38[2];
      v59 = (v56 & 1) == 0;
      if (__OFADD__(v58, v59))
      {
        goto LABEL_43;
      }

      v60 = v55;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v46, v58 + v59))
      {
        v61 = sub_10001411C(0xD000000000000022, 0x80000001002A8A80);
        v3 = v77;
        if ((v57 & 1) != (v62 & 1))
        {
          goto LABEL_46;
        }

        v60 = v61;
      }

      else
      {
        v3 = v77;
      }

      v63 = v82;
      if (v57)
      {
        v64 = v82[7];
        v65 = *(v64 + 8 * v60);
        *(v64 + 8 * v60) = v1;
      }

      else
      {
        sub_100005C50();
        *v66 = 0xD000000000000022;
        v66[1] = 0x80000001002A8A80;
        sub_100012B08();
        if (v20)
        {
          goto LABEL_45;
        }

        v63[2] = v67;
      }

      *(v16 + 16) = v63;
      swift_endAccess();
      v68 = String._bridgeToObjectiveC()();
      v81[2] = sub_1001A5FF8;
      v81[3] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v81[0] = sub_100206510;
      v81[1] = &unk_10035D0C0;
      v69 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();

      _Block_release(v69);

      v5 = v12;
      v6 = v78;
      v9 = v75;
      v4 = v76;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      v15 = __CocoaSet.Iterator.next()();
      if (v15)
      {
        v82 = v15;
        type metadata accessor for PerRequestMetricData();
        swift_dynamicCast();
        v14 = aBlock[0];
        v12 = v5;
        v13 = v6;
        if (aBlock[0])
        {
          continue;
        }
      }

      return sub_10016D304(v3);
    }
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        return sub_10016D304(v3);
      }

      v11 = *(v4 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_1001A5E5C(uint64_t a1)
{
  swift_beginAccess();

  return result;
}

id sub_1001A5EB8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001A5FA4()
{
  result = qword_1003ABF00;
  if (!qword_1003ABF00)
  {
    type metadata accessor for PerRequestMetricData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABF00);
  }

  return result;
}

void sub_1001A60DC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_contact);
  *(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_contact) = a1;
  v3 = a1;

  sub_1001A6134();
}

id sub_1001A6234(void *a1, uint64_t a2, char a3)
{
  v5 = a2;
  *&v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView] = 0;
  *&v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon] = 0;
  v7 = [objc_allocWithZone(CNAvatarView) initWithContact:a1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_cnAvatarView] = v7;
  *&v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_contact] = a1;
  v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_wantsBlur] = v5;
  v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_isCommunicationSafetyEnabled] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for BlurrableAvatarView();
  v8 = v7;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 addSubview:{v8, v12.receiver, v12.super_class}];
  sub_1001A650C();
  sub_1001A673C(v5);

  return v10;
}

void sub_1001A63A4()
{
  *(v0 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001A6430(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BlurrableAvatarView();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView];
  if (v2)
  {
    v3 = [v2 layer];
    [v1 bounds];
    [v3 setCornerRadius:CGRectGetWidth(v5) * 0.5];
  }
}

void sub_1001A650C()
{
  v1 = objc_opt_self();
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002FB360;
  v3 = *&v0[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_cnAvatarView];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = sub_100006D78();

  *(v2 + 32) = v6;
  v7 = [v3 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = sub_100006D78();

  *(v2 + 40) = v9;
  v10 = [v3 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = sub_100006D78();

  *(v2 + 48) = v12;
  v13 = [v3 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
  sub_100007F98();
}

id sub_1001A673C(char a1)
{
  v3 = OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView;
  if ((a1 & 1) != 0 && (!*(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView) || !*(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon)))
  {
    sub_1001A67F8();
    sub_1001A6B4C();
    v3 = OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView;
  }

  v4 = *(v1 + v3);
  if (v4)
  {
    [v4 setHidden:(a1 & 1) == 0];
  }

  result = *(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon);
  if (result)
  {
    if (a1)
    {
      v6 = *(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_isCommunicationSafetyEnabled);
    }

    else
    {
      v6 = 1;
    }

    return [result setHidden:v6];
  }

  return result;
}

void sub_1001A67F8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002FBD90;
  *(v3 + 32) = [objc_opt_self() effectWithStyle:16];
  sub_1000064BC(0, &unk_1003AAFA0, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setBackgroundEffects:isa];

  v5 = v2;
  v6 = [v5 layer];
  [v6 setMasksToBounds:1];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *&v1[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView];
  *&v1[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView] = v5;
  v8 = v5;

  sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
  v9 = sub_1001FFAD8();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() configurationWithPointSize:25.0];
    v12 = [v10 imageWithSymbolConfiguration:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(UIImageView) initWithImage:v12];

  v14 = [objc_opt_self() secondaryLabelColor];
  [v13 setTintColor:v14];

  [v13 setUserInteractionEnabled:0];
  v15 = v13;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setHidden:v1[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_isCommunicationSafetyEnabled]];

  v16 = *&v1[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon];
  *&v1[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon] = v15;
  v17 = v15;

  v20[3] = type metadata accessor for BlurrableAvatarView();
  v20[0] = v1;
  objc_allocWithZone(UITapGestureRecognizer);
  v18 = v1;
  v19 = sub_1001A70A0(v20, "didTapWithSender:");
  [v8 addGestureRecognizer:v19];
  [v18 addSubview:v8];
  [v18 addSubview:v17];
}

void sub_1001A6B4C()
{
  v1 = *&v0[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView];
  if (v1 && (v2 = *&v0[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon]) != 0)
  {
    v3 = objc_opt_self();
    sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1002FC910;
    v5 = v1;
    v6 = v2;
    v7 = [v5 topAnchor];
    v8 = [v0 topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    *(v4 + 32) = v9;
    v10 = [v5 bottomAnchor];
    v11 = sub_100007718([v0 bottomAnchor]);

    *(v4 + 40) = v11;
    v12 = [v5 leadingAnchor];
    v13 = sub_100007718([v0 leadingAnchor]);

    *(v4 + 48) = v13;
    v14 = [v5 trailingAnchor];

    v15 = sub_100007718([v0 trailingAnchor]);
    *(v4 + 56) = v15;
    v16 = v6;
    v17 = [v16 centerXAnchor];
    v18 = sub_100007718([v0 centerXAnchor]);

    *(v4 + 64) = v18;
    v19 = [v16 centerYAnchor];
    v20 = sub_100007718([v0 centerYAnchor]);

    *(v4 + 72) = v20;
    v21 = [v16 widthAnchor];
    v22 = [v0 widthAnchor];
    v23 = [v21 constraintLessThanOrEqualToAnchor:v22];

    *(v4 + 80) = v23;
    v24 = [v16 heightAnchor];

    v25 = [v0 heightAnchor];
    v26 = [v24 constraintLessThanOrEqualToAnchor:v25];

    *(v4 + 88) = v26;
    sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 activateConstraints:isa];

    sub_100007F98();
  }

  else
  {
    sub_100007F98();
  }
}

id sub_1001A6F14()
{
  if ((*(v0 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_isCommunicationSafetyEnabled) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_wantsBlur) = 0;
    return sub_1001A673C(0);
  }

  return result;
}

id sub_1001A6FDC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BlurrableAvatarView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1001A70A0(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = sub_100008878(a1, a1[3]);
    v7 = *(v4 - 8);
    __chkstk_darwin(v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v4);
    sub_100005B2C(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

uint64_t MuteControlService.__allocating_init(call:)(void *a1)
{
  v2 = swift_allocObject();
  MuteControlService.init(call:)(a1);
  return v2;
}

void *MuteControlService.init(call:)(void *a1)
{
  v2 = v1;
  v4 = sub_10014EA98(&qword_1003ABF60, &unk_1002FC940);
  sub_10000688C();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MuteState();
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[5] = &_swiftEmptySetSingleton;
  v2[4] = a1;
  LOBYTE(v17) = 1;
  sub_10014EA98(&qword_1003ABF68, &qword_1002FCE50);
  swift_allocObject();
  v16 = a1;
  v2[2] = CurrentValueSubject.init(_:)();
  sub_1001A7584(v12);
  sub_10014EA98(&qword_1003ABF70, &qword_1002FC950);
  swift_allocObject();
  v13 = CurrentValueSubject.init(_:)();
  v2[3] = v13;
  v17 = v13;
  sub_100027E08(&qword_1003ABF78, &qword_1003ABF70, &qword_1002FC950, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_1001A7A68(&qword_1003ABF80, 255, &type metadata accessor for MuteState, &protocol conformance descriptor for MuteState);
  Publisher<>.removeDuplicates()();
  swift_allocObject();
  swift_weakInit();
  sub_100027E08(&qword_1003ABF88, &qword_1003ABF60, &unk_1002FC940, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v9, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:v2 selector:"isUplinkMutedChanged:" name:TUCallIsUplinkMutedChangedNotification object:0];

  return v2;
}

uint64_t sub_1001A7584@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 isUplinkMuted];
  v4 = type metadata accessor for MuteState();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for MuteState.muted(_:);
  if (!v3)
  {
    v6 = &enum case for MuteState.unmuted(_:);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

void sub_1001A7618(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MuteState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 32);

    (*(v3 + 104))(v5, enum case for MuteState.muted(_:), v2);
    v8 = static MuteState.== infix(_:_:)();
    (*(v3 + 8))(v5, v2);
    [v7 setUplinkMuted:v8 & 1];
  }
}

void sub_1001A7774()
{
  v1 = type metadata accessor for MuteState();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 32);
  Notification.object.getter();
  if (v13)
  {
    sub_1001A7AEC();
    if (swift_dynamicCast())
    {
      v8 = v11;
      v9 = [v11 isEqualToCall:v7];

      if (v9)
      {
        sub_1001A7584(v6);
        CurrentValueSubject.send(_:)();
        (*(v3 + 8))(v6, v1);
      }
    }
  }

  else
  {
    sub_10015E258(v12);
  }
}

uint64_t MuteControlService.deinit()
{

  return v0;
}

uint64_t MuteControlService.__deallocating_deinit()
{
  MuteControlService.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1001A7A68(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001A7AEC()
{
  result = qword_1003ADBE0;
  if (!qword_1003ADBE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003ADBE0);
  }

  return result;
}

id sub_1001A7B30(void *a1)
{
  v2 = v1;
  v4 = sub_10014EA98(&qword_1003AC0A0, &qword_1002FCA30);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PlayerParticipantInfo();
  sub_100006848(v6, 1, 1, v7);
  objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewController());
  v8 = a1;
  *&v2[OBJC_IVAR___ICSVideoMessageRootViewController_player] = VideoMessagePlayerViewController.init(viewModel:participantInfo:)();
  v9 = type metadata accessor for VideoMessageRootViewController();
  v12.receiver = v2;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);

  return v10;
}

void sub_1001A7CC4()
{
  v1 = sub_100006C60();
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBlackColor];
  [v2 setBackgroundColor:v3];

  v4 = *&v0[OBJC_IVAR___ICSVideoMessageRootViewController_player];
  v5 = sub_10000C38C();
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = sub_100006C60();
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = sub_10000C38C();
  if (!v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  [v8 addSubview:v9];

  [v0 addChildViewController:v4];
  [v4 didMoveToParentViewController:v0];
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002FB360;
  v12 = sub_10000C38C();
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = sub_100006C60();
  if (!v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v15 safeAreaLayoutGuide];

  v18 = [v17 leadingAnchor];
  v19 = sub_100007738();

  *(v11 + 32) = v19;
  v20 = sub_10000C38C();
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = sub_100006C60();
  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v23 safeAreaLayoutGuide];

  v26 = [v25 trailingAnchor];
  v27 = sub_100007738();

  *(v11 + 40) = v27;
  v28 = sub_10000C38C();
  if (!v28)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = sub_100006C60();
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = v31;
  v33 = [v31 safeAreaLayoutGuide];

  v34 = [v33 topAnchor];
  v35 = sub_100007738();

  *(v11 + 48) = v35;
  v36 = sub_10000C38C();
  if (!v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v36;
  v38 = [v36 bottomAnchor];

  v39 = sub_100006C60();
  if (!v39)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = objc_opt_self();
  v42 = [v40 safeAreaLayoutGuide];

  v43 = [v42 bottomAnchor];
  v44 = [v38 constraintEqualToAnchor:v43];

  *(v11 + 56) = v44;
  sub_100162160();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:isa];
}

id sub_1001A81C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoMessageRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001A8228(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 delegate];

    if (v3)
    {
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() dismissVideoMessageSceneSession];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1001A8370(uint64_t a1)
{
  v2 = type metadata accessor for VideoMessagePlayerViewModel.PlayerSpatiality();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  sub_100006848(v8, 0, 1, v9);
  (*(v3 + 104))(v5, enum case for VideoMessagePlayerViewModel.PlayerSpatiality.remote(_:), v2);
  v10 = objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewModel());
  v11 = VideoMessagePlayerViewModel.init(videoMessageURL:playerSpaciality:)();
  v12 = objc_allocWithZone(type metadata accessor for VideoMessageRootViewController());
  return sub_1001A7B30(v11);
}

id sub_1001A86C4()
{
  *&v0[OBJC_IVAR____TtC13InCallService11PHRingLayer_percentage] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth] = 0x4020000000000000;
  v1 = OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor;
  v2 = objc_opt_self();
  v3 = [v2 systemDarkGreenColor];
  v4 = [v3 CGColor];

  *&v0[v1] = v4;
  v5 = OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor;
  v6 = [v2 systemGreenColor];
  v7 = [v6 CGColor];

  *&v0[v5] = v7;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PHRingLayer();
  return objc_msgSendSuper2(&v9, "init");
}

char *sub_1001A87E0(void *a1)
{
  *&v1[OBJC_IVAR____TtC13InCallService11PHRingLayer_percentage] = 0;
  *&v1[OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth] = 0x4020000000000000;
  v3 = OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor;
  v4 = objc_opt_self();
  v5 = [v4 systemDarkGreenColor];
  v6 = [v5 CGColor];

  *&v1[v3] = v6;
  v7 = OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor;
  v8 = [v4 systemGreenColor];
  v9 = [v8 CGColor];

  *&v1[v7] = v9;
  sub_100008878(a1, a1[3]);
  v10 = _bridgeAnythingToObjectiveC<A>(_:)();
  v22.receiver = v1;
  v22.super_class = type metadata accessor for PHRingLayer();
  v11 = objc_msgSendSuper2(&v22, "initWithLayer:", v10);
  swift_unknownObjectRelease();
  sub_100005A60(a1, v21);
  v12 = v11;
  if (swift_dynamicCast())
  {
    [v20 percentage];
    *(v12 + OBJC_IVAR____TtC13InCallService11PHRingLayer_percentage) = v13;
    *(v12 + OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth) = *&v20[OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth];
    v14 = *&v20[OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor];
    v15 = *(v12 + OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor);
    *(v12 + OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor) = v14;
    v16 = v14;

    v17 = *&v20[OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor];
    sub_100005B2C(a1);
    v18 = *(v12 + OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor);
    *(v12 + OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor) = v17;
  }

  else
  {

    sub_100005B2C(a1);
  }

  return v12;
}

void sub_1001A8A28()
{
  *(v0 + OBJC_IVAR____TtC13InCallService11PHRingLayer_percentage) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth) = 0x4020000000000000;
  v1 = OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor;
  v2 = objc_opt_self();
  v3 = [v2 systemDarkGreenColor];
  v4 = [v3 CGColor];

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor;
  v6 = [v2 systemGreenColor];
  v7 = [v6 CGColor];

  *(v0 + v5) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001A8B48()
{
  sub_10000C3A4();
  v2 = v2 && v0 == v1;
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  v7.receiver = ObjCClassFromMetadata;
  v7.super_class = &OBJC_METACLASS____TtC13InCallService11PHRingLayer;
  v3 = objc_msgSendSuper2(&v7, "needsDisplayForKey:", v5);

  return v3;
}

id sub_1001A8C50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000C3A4();
  v8 = v8 && v6 == v7;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1001A9300();

    v9 = sub_100205804(a1, a2);
    v10 = [v3 presentationLayer];
    if (v10)
    {
      v11 = v10;
      [v10 percentage];
    }

    else
    {
      [v3 percentage];
    }

    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v9 setFromValue:isa];
  }

  else
  {
    v13 = String._bridgeToObjectiveC()();
    v15.receiver = v3;
    v15.super_class = type metadata accessor for PHRingLayer();
    v9 = objc_msgSendSuper2(&v15, "actionForKey:", v13);
  }

  return v9;
}

void sub_1001A8E00(CGContext *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CGPathFillRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PHRingLayer();
  v36.receiver = v2;
  v36.super_class = v8;
  [(CGContext *)&v36 drawInContext:a1];
  v9 = sub_100006D94();
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    sub_100007FC8();
  }

  else
  {
    [v2 bounds];
    sub_100007FC8();
  }

  v11 = sub_100006D94();
  if (v11)
  {
    v35 = *&v11[OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth];
  }

  else
  {
    v35 = *&v2[OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth];
  }

  v12 = sub_100006D94();
  if (v12)
  {
    v13 = v12;
    [v12 percentage];
    v34 = v14;
  }

  else
  {
    [v2 percentage];
    v34 = v15;
  }

  v16 = sub_100006D94();
  if (v16)
  {
    v17 = v16;
    v18 = *&v16[OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor];
  }

  else
  {
    v18 = *&v2[OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor];
  }

  v19 = sub_100006D94();
  if (v19)
  {
    v20 = v19;
    v21 = *&v19[OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor];
  }

  else
  {
    v21 = *&v2[OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor];
  }

  v37.origin.x = sub_100007754();
  v22 = CGRectGetMaxX(v37) * 0.5;
  v38.origin.x = sub_100007754();
  v23 = CGRectGetMaxY(v38) * 0.5;
  v39.origin.x = sub_100007754();
  CGRectGetWidth(v39);
  v24 = objc_opt_self();
  v25 = sub_100007754();
  v28 = [v26 v27];
  v29 = [v28 CGPath];
  CGContextSaveGState(a1);
  CGContextAddPath(a1, v29);
  CGContextSetFillColorWithColor(a1, v21);
  (*(v5 + 104))(v7, enum case for CGPathFillRule.winding(_:), v4);
  CGContextRef.fillPath(using:)();
  (*(v5 + 8))(v7, v4);
  CGContextRestoreGState(a1);
  v40.origin.x = sub_100007754();
  Width = CGRectGetWidth(v40);
  v31 = v35;
  v32 = [v24 bezierPathWithArcCenter:1 radius:v22 startAngle:v23 endAngle:Width * 0.5 - v35 * 0.5 clockwise:{-1.57079633, (v34 * 360.0 + -90.0) * 0.0174532925}];
  v33 = [v32 CGPath];
  CGContextSaveGState(a1);
  CGContextAddPath(a1, v33);
  CGContextSetStrokeColorWithColor(a1, v18);
  CGContextSetLineCap(a1, kCGLineCapRound);
  CGContextSetLineWidth(a1, v31);
  CGContextStrokePath(a1);
  CGContextSetShouldAntialias(a1, 1);
  CGContextRestoreGState(a1);
}

id sub_1001A925C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PHRingLayer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001A9300()
{
  result = qword_1003AB4B8;
  if (!qword_1003AB4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AB4B8);
  }

  return result;
}

uint64_t *PosterSnapshotService.shared.unsafeMutableAddressor()
{
  if (qword_1003A9FF8 != -1)
  {
    sub_1000095CC(&qword_1003A9FF8);
  }

  return &static PosterSnapshotService.shared;
}

uint64_t sub_1001A9384()
{
  type metadata accessor for PosterSnapshotService();
  v0 = swift_allocObject();
  result = sub_1001AAED4();
  static PosterSnapshotService.shared = v0;
  return result;
}

uint64_t static PosterSnapshotService.shared.getter()
{
  if (qword_1003A9FF8 != -1)
  {
    sub_1000095CC(&qword_1003A9FF8);
  }
}

uint64_t PosterSnapshotService.prewarmSnapshot(contact:)()
{
  sub_100006610();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1001A949C;

  return PosterSnapshotService.takeSnapshot(contact:)(v2);
}

uint64_t sub_1001A949C()
{
  sub_100006610();
  v2 = v1;
  sub_1000058C4();
  v3 = *v0;
  sub_100006870();
  *v4 = v3;

  sub_10000535C();

  return v5();
}

uint64_t sub_1001A9584()
{
  sub_1000058C4();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100006870();
  *v4 = v3;
  *(v6 + 80) = v5;

  v7 = sub_1000085C0();
  sub_10016D16C(v7, v8);

  return _swift_task_switch(sub_1001A9714, v2, 0);
}

uint64_t sub_1001A9714()
{
  sub_100006610();

  sub_100026F44();

  return v1();
}

uint64_t sub_1001A9770()
{
  sub_100006610();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[11] = v5;
  sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v1[16] = swift_task_alloc();
  sub_10000B468();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001A9838()
{
  v38 = v0;
  v1 = *(v0[15] + 112);
  v0[17] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[18] = v2;
    sub_10014EA98(&qword_1003AAE20, &qword_1002FB4E0);
    *v2 = v0;
    v2[1] = sub_1001A9C1C;
  }

  else
  {
    v3 = objc_opt_self();
    sub_1000085C0();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[9] = 0;
    v5 = [v3 unarchiveConfigurationFromData:isa error:v0 + 9];
    v0[19] = v5;

    v6 = v0[9];
    if (!v5)
    {
      v22 = v6;
      v23 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v24 = type metadata accessor for Logger();
      sub_100008A14(v24, &unk_1003B8820);
      sub_10000594C();
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v37 = v28;
        *v27 = 136315138;
        v0[10] = v23;
        swift_errorRetain();
        sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
        v29 = String.init<A>(reflecting:)();
        v31 = sub_100008ADC(v29, v30, &v37);

        *(v27 + 4) = v31;
        sub_100005414(&_mh_execute_header, v32, v33, "PosterSnapshotService: unarchiving configuration error: %s");
        sub_100005B2C(v28);
        sub_100005BB8(v28);
        sub_100005BB8(v27);
      }

      else
      {
      }

      sub_100026F44();
      sub_100025350();

      __asm { BRAA            X2, X16 }
    }

    v7 = v0[15];
    v8 = v0[16];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v6;
    static TaskPriority.userInitiated.getter();
    v12 = type metadata accessor for TaskPriority();
    sub_100006848(v8, 0, 1, v12);
    v13 = sub_1001AAFDC();
    v14 = swift_allocObject();
    v14[2] = v7;
    v14[3] = v13;
    v14[4] = v7;
    v14[5] = v10;
    v14[6] = v9;
    v14[7] = v5;
    swift_retain_n();

    v15 = v5;
    sub_100007FDC();
    sub_100005958(v16);

    v17 = swift_task_alloc();
    v0[21] = v17;
    sub_10014EA98(&qword_1003AAE20, &qword_1002FB4E0);
    *v17 = v0;
    sub_100006DAC();
    sub_100008C30();
  }

  sub_100025350();

  return Task<>.value.getter(v18, v19, v20);
}

uint64_t sub_1001A9C1C()
{
  sub_1000058A8();
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  sub_10000B468();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001A9D6C()
{
  v34 = v0;

  v1 = objc_opt_self();
  sub_1000085C0();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[9] = 0;
  v3 = [v1 unarchiveConfigurationFromData:isa error:v0 + 9];
  v0[19] = v3;

  v4 = v0[9];
  if (!v3)
  {
    v20 = v4;
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v22 = type metadata accessor for Logger();
    sub_100008A14(v22, &unk_1003B8820);
    sub_10000594C();
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136315138;
      v0[10] = v21;
      swift_errorRetain();
      sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
      v27 = String.init<A>(reflecting:)();
      v29 = sub_100008ADC(v27, v28, &v33);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "PosterSnapshotService: unarchiving configuration error: %s", v25, 0xCu);
      sub_100005B2C(v26);
      sub_100005BB8(v26);
      sub_100005BB8(v25);
    }

    else
    {
    }

    sub_100026F44();
    sub_100025350();

    __asm { BRAA            X2, X16 }
  }

  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v4;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  sub_100006848(v6, 0, 1, v10);
  v11 = sub_1001AAFDC();
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v11;
  v12[4] = v5;
  v12[5] = v8;
  v12[6] = v7;
  v12[7] = v3;
  swift_retain_n();

  v13 = v3;
  sub_100007FDC();
  sub_100005958(v14);

  v15 = swift_task_alloc();
  v0[21] = v15;
  sub_10014EA98(&qword_1003AAE20, &qword_1002FB4E0);
  *v15 = v0;
  sub_100006DAC();
  sub_100008C30();
  sub_100025350();

  return Task<>.value.getter(v16, v17, v18);
}

uint64_t sub_1001AA0C4()
{
  sub_1000058A8();
  v1 = *v0;
  sub_100006870();
  *v2 = v1;

  sub_10000B468();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001AA214()
{
  v1 = v0[15];
  v2 = v0[6];
  *(v1 + 112) = 0;

  swift_beginAccess();
  v3 = v0[19];
  if (v2)
  {
    v4 = v2;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 120);
    sub_1002314B8();
    *(v1 + 120) = v9;
    swift_endAccess();
  }

  else
  {
    sub_100250F34(v0[11], v0[12]);
    v6 = v5;
    swift_endAccess();

    v3 = v6;
  }

  sub_100026F44();

  return v7(v2);
}

uint64_t sub_1001AA364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_1001AA38C, a4, 0);
}

uint64_t sub_1001AA38C()
{
  sub_1000058A8();
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 120);

  v3 = sub_1000085C0();
  v5 = sub_10016D474(v3, v4, v2);
  v7 = v6;

  if (v7)
  {
    if (v5 == NSObject.hashValue.getter())
    {
      v8 = v0[5];
      *v8 = v5;
      v8[1] = v7;
      sub_10000535C();

      return v9();
    }
  }

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1001AA4BC;
  v12 = v0[9];

  return sub_1001AA63C(v12);
}

uint64_t sub_1001AA4BC()
{
  sub_100006610();
  sub_1000058C4();
  v1 = *v0;
  sub_100006870();
  *v2 = v1;
  *(v4 + 88) = v3;

  sub_10000B468();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001AA5C0()
{
  sub_1000058A8();
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 40);
    *v2 = NSObject.hashValue.getter();
    v2[1] = v1;
  }

  else
  {
    v3 = *(v0 + 40);
    *v3 = 0;
    v3[1] = 0;
  }

  sub_10000535C();

  return v4();
}

uint64_t sub_1001AA63C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_100025AD0(a1, v1);
}

uint64_t sub_1001AA654()
{
  sub_100005408();
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_opt_self() sharedIncomingCallSnapshotController];
  v0[5] = v3;
  v4 = [objc_allocWithZone(PRPosterSnapshotDefinition) initWithUniqueIdentifier:PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsExcludingBackground includeHeaderElements:0 includesComplications:0 layerSet:1 isUnlocked:1 renderingContent:0 renderingMode:1 previewContent:1];
  v0[6] = v4;
  v5 = [objc_opt_self() snapshotRequestForPRSPosterConfiguration:v2 definition:v4 interfaceOrientation:1];
  v0[7] = v5;
  v6 = sub_1001AAFDC();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = sub_1001AB038();
  *v8 = v0;
  v8[1] = sub_1001AA80C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, v6, 0xD000000000000025, 0x80000001002A8FF0, sub_1001AB030, v7, v9);
}

uint64_t sub_1001AA80C()
{
  sub_100006610();
  sub_1000058C4();
  v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  *(v3 + 80) = v0;

  if (v0)
  {
    v6 = *(v3 + 32);
    v7 = sub_1001AAA0C;
  }

  else
  {
    v8 = *(v3 + 32);

    v7 = sub_1001AA924;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001AA924()
{
  v1 = v0[2];
  v2 = [v1 floatingLayerImage];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  if (v2)
  {
    v6 = v2;
    v7 = [objc_opt_self() trimmedImageByTrimmingTransparentPixelsFromImage:v2];
  }

  else
  {

    v7 = 0;
  }

  sub_100026F44();

  return v8(v7);
}

uint64_t sub_1001AAA0C()
{
  sub_100005408();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v1 = type metadata accessor for Logger();
  sub_100008A14(v1, &unk_1003B8820);
  sub_10000594C();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    sub_100005414(&_mh_execute_header, v11, v12, "PosterSnapshotService: PosterKit snapshot failed with error: %@");
    sub_100153D2C(v9);
    sub_100005BB8(v9);
    sub_100005BB8(v8);
  }

  else
  {
  }

  sub_100026F44();

  return v13(0);
}

void sub_1001AAB98(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10014EA98(&qword_1003AC210, &qword_1002FCB68);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_1001AB07C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001AADD8;
  aBlock[3] = &unk_10035D230;
  v12 = _Block_copy(aBlock);

  [a2 executeSnapshotRequest:a3 completion:v12];
  _Block_release(v12);
}

void sub_1001AAD50(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v3 = a2;
    sub_10014EA98(&qword_1003AC210, &qword_1002FCB68);
    CheckedContinuation.resume(returning:)();
  }

  else if (a3)
  {
    swift_errorRetain();
    sub_10014EA98(&qword_1003AC210, &qword_1002FCB68);
    CheckedContinuation.resume(throwing:)();
  }
}

void sub_1001AADD8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t PosterSnapshotService.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PosterSnapshotService.__deallocating_deinit()
{
  PosterSnapshotService.deinit();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001AAED4()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

uint64_t sub_1001AAF48(void *a1)
{
  v1 = [a1 extensionBundleID];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1000085C0();
}

unint64_t sub_1001AAFDC()
{
  result = qword_1003AC1F8;
  if (!qword_1003AC1F8)
  {
    type metadata accessor for PosterSnapshotService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC1F8);
  }

  return result;
}

unint64_t sub_1001AB038()
{
  result = qword_1003AC200;
  if (!qword_1003AC200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AC200);
  }

  return result;
}

void sub_1001AB07C(uint64_t a1, void *a2, void *a3)
{
  sub_10014EA98(&qword_1003AC210, &qword_1002FCB68);

  sub_1001AAD50(a1, a2, a3);
}

uint64_t sub_1001AB110()
{
  sub_100005408();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[6];
  v8 = v0[7];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100008208;

  return sub_1001AA364(v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001AB1E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AB234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001AB2C0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10014EA98(&qword_1003AC218, &qword_1002FCC18);
  sub_1001AB460(v1, (a1 + *(v3 + 44)));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (a1 + *(sub_10014EA98(&qword_1003AC220, &qword_1002FCC20) + 36));
  *v4 = v19;
  v4[1] = v20;
  v4[2] = v21;
  v5 = [objc_opt_self() systemGray2Color];
  v6 = Color.init(_:)();
  v7 = static Edge.Set.all.getter();
  v8 = a1 + *(sub_10014EA98(&qword_1003AC228, &qword_1002FCC28) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  v9 = (a1 + *(sub_10014EA98(&qword_1003AC230, &qword_1002FCC30) + 36));
  v10 = *(type metadata accessor for RoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  type metadata accessor for RoundedCornerStyle();
  sub_1000058E8();
  (*(v12 + 104))(&v9[v10], v11);
  __asm { FMOV            V0.2D, #10.0 }

  *v9 = _Q0;
  result = sub_10014EA98(&qword_1003AC238, &qword_1002FCC38);
  *&v9[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1001AB460@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a1;
  v106 = a2;
  v2 = sub_10014EA98(&qword_1003AC240, &qword_1002FCC40);
  v3 = __chkstk_darwin(v2 - 8);
  v105 = &v87[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v101 = &v87[-v5];
  v6 = type metadata accessor for Divider();
  v103 = *(v6 - 8);
  v104 = v6;
  v7 = __chkstk_darwin(v6);
  v102 = &v87[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v107 = &v87[-v9];
  v10 = sub_10014EA98(&unk_1003ADA90, &qword_1002FCC48);
  __chkstk_darwin(v10 - 8);
  v12 = &v87[-v11];
  v13 = type metadata accessor for Image.ResizingMode();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10014EA98(&qword_1003AC248, &qword_1002FCC50);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v108 = &v87[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v22 = &v87[-v21];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v96 = v132;
  v97 = v134;
  v98 = v137;
  v99 = v136;
  v146 = 1;
  v144 = v133;
  v142 = v135;
  Image.init(_:bundle:)();
  (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
  v23 = Image.resizable(capInsets:resizingMode:)();

  (*(v14 + 8))(v16, v13);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v150[0]) = 1;
  *&v131[6] = v138;
  *&v131[22] = v139;
  *&v131[38] = v140;
  v24 = &v22[*(v18 + 44)];
  v25 = *(type metadata accessor for RoundedRectangle() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #10.0 }

  *v24 = _Q0;
  *&v24[*(sub_10014EA98(&qword_1003AC238, &qword_1002FCC38) + 36)] = 256;
  v33 = *&v131[16];
  *(v22 + 18) = *v131;
  *v22 = v23;
  *(v22 + 1) = 0;
  *(v22 + 8) = 1;
  *(v22 + 34) = v33;
  *(v22 + 50) = *&v131[32];
  v95 = v22;
  *(v22 + 8) = *&v131[46];
  LocalizedStringKey.init(stringLiteral:)();
  v34 = Text.init(_:tableName:bundle:comment:)();
  v36 = v35;
  LOBYTE(v23) = v37;
  v38 = type metadata accessor for Font.Design();
  v89 = v12;
  v90 = v38;
  sub_100006848(v12, 1, 1, v38);
  static Font.system(size:weight:design:)();
  sub_100008360(v12, &unk_1003ADA90, &qword_1002FCC48);
  v39 = Text.font(_:)();
  v41 = v40;
  v43 = v42;

  sub_1001AD540(v34, v36, v23 & 1);

  static Color.black.getter();
  v44 = Text.foregroundColor(_:)();
  v46 = v45;
  LOBYTE(v12) = v47;

  sub_1001AD540(v39, v41, v43 & 1);

  v48 = Text.bold()();
  v92 = v49;
  v93 = v48;
  v91 = v50;
  v94 = v51;
  sub_1001AD540(v44, v46, v12 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v52 = Text.init(_:tableName:bundle:comment:)();
  v54 = v53;
  LOBYTE(v44) = v55;
  v56 = v89;
  sub_100006848(v89, 1, 1, v90);
  static Font.system(size:weight:design:)();
  sub_100008360(v56, &unk_1003ADA90, &qword_1002FCC48);
  v57 = Text.font(_:)();
  v59 = v58;
  LOBYTE(v39) = v60;

  sub_1001AD540(v52, v54, v44 & 1);

  static Color.black.getter();
  v61 = Text.foregroundColor(_:)();
  v89 = v62;
  v90 = v63;
  v88 = v64;

  sub_1001AD540(v57, v59, v39 & 1);

  v65 = v107;
  Divider.init()();
  v66 = static VerticalAlignment.center.getter();
  LOBYTE(v118) = 1;
  v67 = v100;
  sub_1001ABEF8(v150);
  memcpy(v147, v150, sizeof(v147));
  memcpy(v148, v150, 0xA0uLL);
  sub_1000098D4(v147, v109, &qword_1003AC250, &qword_1002FCC58);
  sub_100008360(v148, &qword_1003AC250, &qword_1002FCC58);
  memcpy(&v130[7], v147, 0xA0uLL);
  LOBYTE(v57) = v118;
  LOBYTE(v54) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = static HorizontalAlignment.center.getter();
  v77 = v101;
  *v101 = v76;
  *(v77 + 8) = 0;
  *(v77 + 16) = 0;
  v78 = sub_10014EA98(&qword_1003AC258, &qword_1002FCC60);
  sub_1001AC4FC(v67, v77 + *(v78 + 44));
  v118 = 0;
  v119 = v146;
  *v120 = *v145;
  *&v120[3] = *&v145[3];
  v121 = v96;
  v122 = v144;
  *v123 = *v143;
  *&v123[3] = *&v143[3];
  v124 = v97;
  v125 = v142;
  *v126 = *v141;
  *&v126[3] = *&v141[3];
  v127 = v99;
  v128 = v98;
  v129[0] = &v118;
  v79 = v95;
  v80 = v108;
  sub_1000098D4(v95, v108, &qword_1003AC248, &qword_1002FCC50);
  v114 = v93;
  v115 = v92;
  v116 = v91 & 1;
  v117 = v94;
  v129[1] = v80;
  v129[2] = &v114;
  v110 = v61;
  v111 = v89;
  v112 = v88 & 1;
  v113 = v90;
  v129[3] = &v110;
  v82 = v102;
  v81 = v103;
  v83 = v104;
  (*(v103 + 16))(v102, v65, v104);
  v129[4] = v82;
  v109[0] = v66;
  v109[1] = 0;
  LOBYTE(v109[2]) = v57;
  memcpy(&v109[2] + 1, v130, 0xA7uLL);
  LOBYTE(v109[23]) = v54;
  *(&v109[23] + 1) = *v149;
  HIDWORD(v109[23]) = *&v149[3];
  v109[24] = v69;
  v109[25] = v71;
  v109[26] = v73;
  v109[27] = v75;
  LOBYTE(v109[28]) = 0;
  v129[5] = v109;
  v84 = v105;
  sub_1000098D4(v77, v105, &qword_1003AC240, &qword_1002FCC40);
  v129[6] = v84;
  sub_1001AC0C4(v129, v106);
  sub_100008360(v77, &qword_1003AC240, &qword_1002FCC40);
  v85 = *(v81 + 8);
  v85(v107, v83);
  sub_100008360(v79, &qword_1003AC248, &qword_1002FCC50);
  sub_100008360(v84, &qword_1003AC240, &qword_1002FCC40);
  memcpy(v150, v109, 0xE1uLL);
  sub_100008360(v150, &qword_1003AC260, &qword_1002FCC68);
  v85(v82, v83);
  sub_1001AD540(v110, v111, v112);

  sub_1001AD540(v114, v115, v116);

  return sub_100008360(v108, &qword_1003AC248, &qword_1002FCC50);
}

double sub_1001ABEF8@<D0>(void *a1@<X8>)
{
  sub_10014EA98(&qword_1003AC278, &qword_1002FCC80);
  State.projectedValue.getter();
  State.projectedValue.getter();
  State.projectedValue.getter();
  v5 = v21;
  State.projectedValue.getter();
  v4 = v21;
  State.projectedValue.getter();
  v2 = v21;
  v19 = v21;
  v18 = 1;
  v20 = v22;
  v14 = v22;
  v15 = 2;
  v16 = v21;
  v17 = v22;
  *&v21 = &v18;
  *(&v21 + 1) = &v15;
  v11 = v22;
  v12 = 3;
  v13 = v5;
  v8 = v22;
  v9 = 4;
  v10 = v4;
  v22 = &v12;
  v23 = &v9;
  v6 = 5;
  v7 = v2;
  v24 = &v6;
  sub_1001AC284(&v21, a1);

  return result;
}

uint64_t sub_1001AC0C4@<X0>(__int128 **a1@<X0>, char *a2@<X8>)
{
  v4 = (*a1)[3];
  v6 = **a1;
  v5 = (*a1)[1];
  *(a2 + 2) = (*a1)[2];
  *(a2 + 3) = v4;
  *a2 = v6;
  *(a2 + 1) = v5;
  v7 = sub_10014EA98(&qword_1003AC268, &qword_1002FCC70);
  sub_1000098D4(a1[1], &a2[v7[12]], &qword_1003AC248, &qword_1002FCC50);
  v8 = &a2[v7[16]];
  v9 = a1[2];
  v10 = a1[3];
  v11 = *v9;
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  v26 = *(v9 + 24);
  *v8 = *v9;
  *(v8 + 1) = v12;
  v8[16] = v13;
  *(v8 + 3) = v26;
  v14 = &a2[v7[20]];
  v15 = *v10;
  v16 = *(v10 + 8);
  v17 = *(v10 + 16);
  v25 = v17;
  v18 = *(v10 + 24);
  *v14 = *v10;
  *(v14 + 1) = v16;
  v14[16] = v17;
  *(v14 + 3) = v18;
  v19 = v7[24];
  v20 = a1[4];
  v21 = type metadata accessor for Divider();
  (*(*(v21 - 8) + 16))(&a2[v19], v20, v21);
  v22 = v7[28];
  v23 = a1[5];
  memcpy(__dst, v23, 0xE1uLL);
  memmove(&a2[v22], v23, 0xE1uLL);
  sub_1000098D4(a1[6], &a2[v7[32]], &qword_1003AC240, &qword_1002FCC40);
  sub_1001AD550(v11, v12, v13);

  sub_1001AD550(v15, v16, v25);

  return sub_1000098D4(__dst, v27, &qword_1003AC260, &qword_1002FCC68);
}

uint64_t sub_1001AC284@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = *v2;
  v8 = v2[1];
  v10 = v2[2];
  v9 = v2[3];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *v11;
  v14 = v11[1];
  v16 = v11[2];
  v15 = v11[3];
  v17 = *v12;
  v18 = v12[1];
  v20 = v12[2];
  v19 = v12[3];
  v21 = a1[4];
  v23 = *v21;
  v22 = v21[1];
  v25 = v21[2];
  v24 = v21[3];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v10;
  a2[7] = v9;
  a2[8] = v13;
  a2[9] = v14;
  a2[10] = v16;
  a2[11] = v15;
  a2[12] = v17;
  a2[13] = v18;
  a2[14] = v20;
  a2[15] = v19;
  a2[16] = v23;
  a2[17] = v22;
  a2[18] = v25;
  a2[19] = v24;
}

uint64_t sub_1001AC374@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Divider();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v4, v5);
  v7 = sub_10014EA98(&qword_1003AC2F0, &qword_1002FCCB8);
  v8 = v7[12];
  v9 = a1[1];
  v10 = sub_10014EA98(&qword_1003AC270, &qword_1002FCC78);
  v14 = *(*(v10 - 8) + 16);
  (v14)((v10 - 8), a2 + v8, v9, v10);
  v6(a2 + v7[16], a1[2], v5);
  v14(a2 + v7[20], a1[3], v10);
  v6(a2 + v7[24], a1[4], v5);
  v11 = a1[5];
  v12 = a2 + v7[28];

  return (v14)(v12, v11, v10);
}

uint64_t sub_1001AC4FC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v57 = sub_10014EA98(&qword_1003AC270, &qword_1002FCC78);
  v56 = *(v57 - 8);
  v3 = __chkstk_darwin(v57);
  v58 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v66 = &v51 - v6;
  v7 = __chkstk_darwin(v5);
  v65 = &v51 - v8;
  v9 = __chkstk_darwin(v7);
  v67 = &v51 - v10;
  v11 = __chkstk_darwin(v9);
  v68 = &v51 - v12;
  __chkstk_darwin(v11);
  v14 = &v51 - v13;
  v54 = type metadata accessor for Divider();
  v64 = *(v54 - 8);
  v15 = __chkstk_darwin(v54);
  v55 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v63 = &v51 - v18;
  v19 = __chkstk_darwin(v17);
  v62 = &v51 - v20;
  v21 = __chkstk_darwin(v19);
  v60 = &v51 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v51 - v24;
  __chkstk_darwin(v23);
  v61 = &v51 - v26;
  Divider.init()();
  v27 = *a1;
  v71 = a1[1];
  v72[0] = v27;
  v70 = a1[2];
  v28 = swift_allocObject();
  v29 = a1[1];
  v28[1] = *a1;
  v28[2] = v29;
  v28[3] = a1[2];
  sub_1000098D4(v72, v69, &qword_1003AC278, &qword_1002FCC80);
  sub_1000098D4(&v71, v69, &qword_1003AFBC0, &qword_1002FEA20);
  sub_1000098D4(&v70, v69, &qword_1003AC280, &qword_1002FCC88);
  sub_10014EA98(&qword_1003AC288, &qword_1002FCC90);
  sub_1001ADD20(&qword_1003AC290, &qword_1003AC288, &qword_1002FCC90, sub_1001AD580);
  v53 = v14;
  Button.init(action:label:)();
  v52 = v25;
  Divider.init()();
  v30 = swift_allocObject();
  v31 = a1[1];
  v30[1] = *a1;
  v30[2] = v31;
  v30[3] = a1[2];
  sub_1000098D4(v72, v69, &qword_1003AC278, &qword_1002FCC80);
  sub_1000098D4(&v71, v69, &qword_1003AFBC0, &qword_1002FEA20);
  sub_1000098D4(&v70, v69, &qword_1003AC280, &qword_1002FCC88);
  Button.init(action:label:)();
  Divider.init()();
  v32 = swift_allocObject();
  v33 = a1[1];
  v32[1] = *a1;
  v32[2] = v33;
  v32[3] = a1[2];
  sub_1000098D4(v72, v69, &qword_1003AC278, &qword_1002FCC80);
  sub_1000098D4(&v71, v69, &qword_1003AFBC0, &qword_1002FEA20);
  sub_1000098D4(&v70, v69, &qword_1003AC280, &qword_1002FCC88);
  Button.init(action:label:)();
  v34 = *(v64 + 16);
  v35 = v62;
  v36 = v54;
  v34(v62, v61, v54);
  v69[0] = v35;
  v37 = v56;
  v38 = *(v56 + 16);
  v39 = v65;
  v40 = v57;
  v38(v65, v14, v57);
  v69[1] = v39;
  v41 = v63;
  v34(v63, v25, v36);
  v69[2] = v41;
  v42 = v66;
  v43 = v40;
  v38(v66, v68, v40);
  v69[3] = v42;
  v44 = v55;
  v45 = v60;
  v34(v55, v60, v36);
  v69[4] = v44;
  v46 = v58;
  v47 = v67;
  v38(v58, v67, v43);
  v69[5] = v46;
  sub_1001AC374(v69, v59);
  v48 = *(v37 + 8);
  v48(v47, v43);
  v49 = *(v64 + 8);
  v49(v45, v36);
  v48(v68, v43);
  v49(v52, v36);
  v48(v53, v43);
  v49(v61, v36);
  v48(v46, v43);
  v49(v44, v36);
  v48(v66, v43);
  v49(v63, v36);
  v48(v65, v43);
  return (v49)(v62, v36);
}

void *sub_1001ACC94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10014EA98(&unk_1003ADA90, &qword_1002FCC48);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  LocalizedStringKey.init(stringLiteral:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v11 = v8 & 1;
  v25 = v8 & 1;
  static Font.Weight.bold.getter();
  v12 = type metadata accessor for Font.Design();
  sub_100006848(v4, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  sub_100008360(v4, &unk_1003ADA90, &qword_1002FCC48);
  KeyPath = swift_getKeyPath();
  v15 = objc_opt_self();
  v16 = [v15 systemBlueColor];
  v17 = Color.init(_:)();
  v18 = swift_getKeyPath();
  v19 = [v15 systemGray2Color];
  v20 = Color.init(_:)();
  v21 = static Edge.Set.all.getter();
  *a1 = v24;
  *(a1 + 8) = v6;
  *(a1 + 16) = v11;
  *(a1 + 24) = v10;
  result = memcpy((a1 + 32), __src, 0x70uLL);
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v13;
  *(a1 + 160) = v18;
  *(a1 + 168) = v17;
  *(a1 + 176) = v20;
  *(a1 + 184) = v21;
  return result;
}

void sub_1001ACECC(__int128 *a1, char a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v4 = v2;
    sub_10014EA98(&qword_1003AC278, &qword_1002FCC80);
    State.wrappedValue.getter();
    sub_10023597C(v5, a2 & 1);
  }

  else
  {
    type metadata accessor for ScoreController();
    sub_1001ADB54();
    EnvironmentObject.error()();
    __break(1u);
  }
}

void *sub_1001ACF74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10014EA98(&unk_1003ADA90, &qword_1002FCC48);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  LocalizedStringKey.init(stringLiteral:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v11 = v8 & 1;
  v25 = v8 & 1;
  v12 = type metadata accessor for Font.Design();
  sub_100006848(v4, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  sub_100008360(v4, &unk_1003ADA90, &qword_1002FCC48);
  KeyPath = swift_getKeyPath();
  v15 = objc_opt_self();
  v16 = [v15 systemBlueColor];
  v17 = Color.init(_:)();
  v18 = swift_getKeyPath();
  v19 = [v15 systemGray2Color];
  v20 = Color.init(_:)();
  v21 = static Edge.Set.all.getter();
  *a1 = v24;
  *(a1 + 8) = v6;
  *(a1 + 16) = v11;
  *(a1 + 24) = v10;
  result = memcpy((a1 + 32), __src, 0x70uLL);
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v13;
  *(a1 + 160) = v18;
  *(a1 + 168) = v17;
  *(a1 + 176) = v20;
  *(a1 + 184) = v21;
  return result;
}

void sub_1001AD1AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
    sub_10023597C(-1, 0);
  }

  else
  {
    type metadata accessor for ScoreController();
    sub_1001ADB54();
    EnvironmentObject.error()();
    __break(1u);
  }
}

void *sub_1001AD234@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10014EA98(&unk_1003ADA90, &qword_1002FCC48);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  LocalizedStringKey.init(stringLiteral:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v11 = v8 & 1;
  v25 = v8 & 1;
  v12 = type metadata accessor for Font.Design();
  sub_100006848(v4, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  sub_100008360(v4, &unk_1003ADA90, &qword_1002FCC48);
  KeyPath = swift_getKeyPath();
  v15 = objc_opt_self();
  v16 = [v15 systemBlueColor];
  v17 = Color.init(_:)();
  v18 = swift_getKeyPath();
  v19 = [v15 systemGray2Color];
  v20 = Color.init(_:)();
  v21 = static Edge.Set.all.getter();
  *a1 = v24;
  *(a1 + 8) = v6;
  *(a1 + 16) = v11;
  *(a1 + 24) = v10;
  result = memcpy((a1 + 32), __src, 0x70uLL);
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v13;
  *(a1 + 160) = v18;
  *(a1 + 168) = v17;
  *(a1 + 176) = v20;
  *(a1 + 184) = v21;
  return result;
}

uint64_t sub_1001AD464@<X0>(uint64_t a1@<X8>)
{
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  type metadata accessor for ScoreController();
  sub_1001ADB54();
  result = EnvironmentObject.init()();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

void sub_1001AD540(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_1001AD550(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1001AD580()
{
  result = qword_1003AC298;
  if (!qword_1003AC298)
  {
    sub_100155B7C(&qword_1003AC2A0, &qword_1002FCC98);
    sub_1001AD638();
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0, &qword_1003005C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC298);
  }

  return result;
}

unint64_t sub_1001AD638()
{
  result = qword_1003AC2A8;
  if (!qword_1003AC2A8)
  {
    sub_100155B7C(&qword_1003AC2B0, &qword_1002FCCA0);
    sub_1001AD6F0();
    sub_100027E08(&qword_1003AC2C8, &qword_1003AC2D0, &qword_1002FCCB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC2A8);
  }

  return result;
}

unint64_t sub_1001AD6F0()
{
  result = qword_1003AC2B8;
  if (!qword_1003AC2B8)
  {
    sub_100155B7C(&qword_1003AC2C0, &qword_1002FCCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC2B8);
  }

  return result;
}

uint64_t sub_1001AD794()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001AD7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  return Button.init(action:label:)();
}

uint64_t sub_1001AD8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10014EA98(&qword_1003AC330, &qword_1002FCDB0);
  Binding.wrappedValue.setter();
  sub_10014EA98(&qword_1003AC338, &unk_100300260);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002FAB60;
  *(v4 + 56) = &type metadata for String;
  strcpy((v4 + 32), "selected star");
  *(v4 + 46) = -4864;
  print(_:separator:terminator:)();
}

uint64_t sub_1001AD97C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_10014EA98(&unk_1003ADA90, &qword_1002FCC48);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = a4;
  sub_10014EA98(&qword_1003AC330, &qword_1002FCDB0);
  Binding.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  LOBYTE(a2) = v15;
  v16 = type metadata accessor for Font.Design();
  sub_100006848(v11, 1, 1, v16);
  static Font.system(size:weight:design:)();
  sub_100008360(v11, &unk_1003ADA90, &qword_1002FCC48);
  v17 = Text.font(_:)();
  v19 = v18;
  LOBYTE(v11) = v20;
  v22 = v21;

  sub_1001AD540(v12, v14, a2 & 1);

  *a5 = v17;
  *(a5 + 8) = v19;
  *(a5 + 16) = v11 & 1;
  *(a5 + 24) = v22;
  return result;
}

unint64_t sub_1001ADB54()
{
  result = qword_1003AC2F8;
  if (!qword_1003AC2F8)
  {
    type metadata accessor for ScoreController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC2F8);
  }

  return result;
}

uint64_t sub_1001ADBAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001ADBEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001ADC3C()
{
  result = qword_1003AC300;
  if (!qword_1003AC300)
  {
    sub_100155B7C(&qword_1003AC230, &qword_1002FCC30);
    sub_1001ADD20(&qword_1003AC308, &qword_1003AC228, &qword_1002FCC28, sub_1001ADDD0);
    sub_100027E08(&qword_1003AC328, &qword_1003AC238, &qword_1002FCC38, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC300);
  }

  return result;
}

uint64_t sub_1001ADD20(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2, a3);
    a4();
    sub_100027E08(&qword_1003AC2E0, &qword_1003AC2E8, &qword_100300900, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001ADDD0()
{
  result = qword_1003AC310;
  if (!qword_1003AC310)
  {
    sub_100155B7C(&qword_1003AC220, &qword_1002FCC20);
    sub_100027E08(&qword_1003AC318, &qword_1003AC320, qword_1002FCD58, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC310);
  }

  return result;
}

uint64_t sub_1001ADEBC(uint64_t a1)
{
  v1 = *sub_100008878((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

id sub_1001ADEF0()
{
  v1 = v0;

  v2 = [objc_opt_self() sharedInstance];
  type metadata accessor for DeclineCallService();
  swift_allocObject();
  *&v1[OBJC_IVAR___ICSGreenTea3PUIHardwareEventHandler_declineCallService] = sub_1002025F4(v2);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for GreenTea3PUIHardwareEventHandler();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_1001ADFC8()
{
  sub_100006610();
  v1[37] = v2;
  v1[38] = v0;
  v1[35] = v3;
  v1[36] = v4;
  v1[34] = v5;
  sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  v1[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[40] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[41] = v7;
  v1[42] = v6;

  return _swift_task_switch(sub_1001AE09C, v7, v6);
}

uint64_t sub_1001AE09C()
{
  sub_100006880();
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 frontmostAudioOrVideoCall];
  *(v0 + 344) = v3;

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [v3 provider];
  v5 = [v4 supportsDynamicSystemUI];

  if (!v5)
  {

LABEL_7:

    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v9 = type metadata accessor for Logger();
    sub_100008A14(v9, &unk_1003B8820);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "GreenTea3PHardwareEventHandler is not handling lock event because frontmost call does not support dynamic system UI", v12, 2u);
    }

    v13 = *(v0 + 280);

    v13(0);
    goto LABEL_12;
  }

  if (![*(v0 + 272) sourceType])
  {

    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v16 = type metadata accessor for Logger();
    sub_100008A14(v16, &unk_1003B8820);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "GreenTea3PHardwareEventHandler is not handling lock event because event source is unknown", v19, 2u);
    }

    v20 = *(v0 + 280);

    v20(0);
    goto LABEL_12;
  }

  v6 = [v1 sharedInstance];
  v7 = [v6 incomingCall];
  *(v0 + 352) = v7;

  if (v7)
  {
    v8 = [v7 shouldSuppressRingtone];
  }

  else
  {
    v8 = 0;
  }

  if ([*(v0 + 272) sourceType] == 2)
  {
    if (v7 || (sub_1001AECA0() & 1) != 0)
    {
      v21 = v0 + 208;
      v22 = (v0 + 80);
      v23 = *(*(v0 + 304) + OBJC_IVAR___ICSGreenTea3PUIHardwareEventHandler_declineCallService);
      *(v0 + 80) = v0;
      *(v0 + 88) = sub_1001AE638;
      v24 = swift_continuation_init();
      *(v0 + 264) = sub_10014EA98(&qword_1003AAE28, &qword_1002FCE00);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1001ADEBC;
      *(v0 + 232) = &unk_10035D450;
      *(v0 + 240) = v24;
      goto LABEL_32;
    }

LABEL_28:
    if ((sub_1001AECA0() & 1) == 0)
    {
LABEL_35:

      v28 = 0;
      goto LABEL_36;
    }

LABEL_29:
    v29 = [objc_opt_self() sharedInstance];
    if (!v29)
    {
      __break(1u);
      return _swift_continuation_await(v29);
    }

    v30 = v29;
    v31 = [v29 isLockToEndCallEnabled];

    if (v31)
    {
      v22 = (v0 + 16);
      v21 = v0 + 144;
      v23 = *(*(v0 + 304) + OBJC_IVAR___ICSGreenTea3PUIHardwareEventHandler_declineCallService);
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1001AE7BC;
      v32 = swift_continuation_init();
      *(v0 + 200) = sub_10014EA98(&qword_1003AAE28, &qword_1002FCE00);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1001ADEBC;
      *(v0 + 168) = &unk_10035D428;
      *(v0 + 176) = v32;
LABEL_32:
      [v23 declineAnsweringCallDueToLockEventWithCurrentActiveCall:v3 completionHandler:v21];
      v29 = v22;

      return _swift_continuation_await(v29);
    }

    goto LABEL_35;
  }

  if (!v7)
  {
    goto LABEL_28;
  }

  if (v8)
  {
    goto LABEL_29;
  }

  v25 = *(v0 + 312);

  v26 = [v7 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = type metadata accessor for UUID();
  v28 = 1;
  sub_100006848(v25, 0, 1, v27);
  sub_1001E815C();
  sub_1001AEDAC(v25);
  [v7 suppressRingtone];
LABEL_36:
  v34 = *(v0 + 344);
  v33 = *(v0 + 352);
  (*(v0 + 280))(v28);

LABEL_12:

  sub_10000535C();

  return v14();
}