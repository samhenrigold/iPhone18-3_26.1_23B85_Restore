uint64_t sub_100B828F4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100B82ABC;
  }

  else
  {
    v5 = sub_100B82A30;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B82A30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B82ABC()
{
  v1 = v0[8];

  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 3;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v0[7] = v0[20];
      CheckedContinuation.resume(throwing:)();
      goto LABEL_19;
    }

    v17 = v0[20];

    _AppExtensionProcess.invalidate()();
    v0[4] = v17;
    CheckedContinuation.resume(throwing:)();
    sub_100B86F74(v3, v2, 2);
    v15 = v3;
    v16 = v2;
    v18 = 2;
  }

  else if (v4)
  {
    v19 = *(v3 + 16);
    if (v19)
    {
      v32 = v3;
      v20 = v0[11];
      v23 = *(v20 + 16);
      v21 = v20 + 16;
      v22 = v23;
      v24 = v3 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v25 = *(v21 + 56);
      do
      {
        v26 = v0[20];
        v27 = v0[12];
        v28 = v0[10];
        v22(v27, v24, v28);
        v0[5] = v26;
        swift_errorRetain();
        CheckedContinuation.resume(throwing:)();
        (*(v21 - 8))(v27, v28);
        v24 += v25;
        --v19;
      }

      while (v19);

      v15 = v32;
      v16 = v2;
    }

    else
    {

      v15 = v3;
      v16 = v2;
    }

    v18 = 1;
  }

  else
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      v31 = v3;
      v6 = v0[11];
      v9 = *(v6 + 16);
      v7 = v6 + 16;
      v8 = v9;
      v10 = v2 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
      v11 = *(v7 + 56);
      do
      {
        v12 = v0[20];
        v13 = v0[13];
        v14 = v0[10];
        v8(v13, v10, v14);
        v0[6] = v12;
        swift_errorRetain();
        CheckedContinuation.resume(throwing:)();
        (*(v7 - 8))(v13, v14);
        v10 += v11;
        --v5;
      }

      while (v5);

      v15 = v31;
      v16 = v2;
    }

    else
    {

      v15 = v3;
      v16 = v2;
    }

    v18 = 0;
  }

  sub_100B86F74(v15, v16, v18);
LABEL_19:

  v29 = v0[1];

  return v29();
}

uint64_t sub_100B82D68(uint64_t a1)
{
  v2[46] = a1;
  v2[47] = v1;
  v3 = type metadata accessor for _AppExtensionProcess();
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v4 = type metadata accessor for _AppExtensionProcess.Configuration();
  v2[52] = v4;
  v2[53] = *(v4 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v5 = type metadata accessor for _AppExtensionIdentity();
  v2[56] = v5;
  v2[57] = *(v5 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v2[60] = swift_task_alloc();
  v2[61] = type metadata accessor for MainActor();
  v2[62] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[63] = v6;
  v2[64] = v7;

  return _swift_task_switch(sub_100B82FA8, v6, v7);
}

uint64_t sub_100B82FA8()
{
  v44 = v0;
  v1 = v0[47];
  if (*(v1 + 40) == 3 && *(v1 + 24) == 0)
  {
    v28 = v0[60];
    v29 = v0[46];
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    v32 = sub_100797040(0, 0, v28, &unk_10149B830, v31);
    v0[65] = v32;
    sub_1005B981C(&qword_101A11B80, &qword_101498268);
    v33 = sub_1005B981C(&unk_101A135B0, &qword_10149B810);
    v34 = *(v33 - 8);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10146C6B0;
    (*(v34 + 16))(v36 + v35, v29, v33);
    v37 = *(v1 + 24);
    v38 = *(v1 + 32);
    *(v1 + 24) = v32;
    *(v1 + 32) = v36;
    LOBYTE(v36) = *(v1 + 40);
    *(v1 + 40) = 0;

    sub_100B86F74(v37, v38, v36);
    v39 = swift_task_alloc();
    v0[66] = v39;
    v40 = sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    *v39 = v0;
    v39[1] = sub_100B835E4;
    v41 = v0[59];
    v42 = v0[56];

    return Task.value.getter(v41, v32, v42, v40, &protocol self-conformance witness table for Error);
  }

  else
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v43 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v43, "Can only connect when in .disconnected state.", 45, 2u);
    StaticString.description.getter("doConnect(awaitingTask:)", 24, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/App Extension/CRLUSDRenderingExtensionConnector.swift", 137, 2);
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
    *(inited + 152) = 243;
    v15 = v43;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Can only connect when in .disconnected state.", 45, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Can only connect when in .disconnected state.");
    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("doConnect(awaitingTask:)", 24, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/App Extension/CRLUSDRenderingExtensionConnector.swift", 137, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Can only connect when in .disconnected state.", 45, 2);
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:243 isFatal:1 format:v24 args:v21];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, v26);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_100B835E4()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = *(v2 + 512);
  v4 = *(v2 + 504);
  if (v0)
  {
    v5 = sub_100B849F8;
  }

  else
  {
    v5 = sub_100B8374C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B8374C()
{
  v1 = v0[47];
  if (*(v1 + 40))
  {
    v2 = v0[59];
    v3 = v0[56];
    v4 = v0[57];

    (*(v4 + 8))(v2, v3);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[58];
    v7 = v0[59];
    v9 = v0[56];
    v10 = v0[55];
    v11 = v0[53];
    v21 = v0[52];
    v22 = v0[54];
    v12 = *(v1 + 32);
    v13 = *(v0[57] + 16);

    v13(v8, v7, v9);
    swift_allocObject();
    swift_weakInit();
    _AppExtensionProcess.Configuration.init(appExtension:onInterruption:)();
    v14 = *(v1 + 24);
    v15 = *(v1 + 32);
    *(v1 + 24) = v12;
    *(v1 + 32) = 0;
    v16 = *(v1 + 40);
    *(v1 + 40) = 1;
    v17 = sub_100B86F74(v14, v15, v16);
    (*(v11 + 16))(v22, v10, v21, v17);
    v18 = swift_task_alloc();
    v0[68] = v18;
    *v18 = v0;
    v18[1] = sub_100B839C8;
    v19 = v0[54];
    v20 = v0[51];

    return _AppExtensionProcess.init(configuration:)(v20, v19);
  }
}

uint64_t sub_100B839C8()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 512);
  v4 = *(v2 + 504);
  if (v0)
  {
    v5 = sub_100B84AF0;
  }

  else
  {
    v5 = sub_100B83B30;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B83B30()
{
  v1.super.isa = _AppExtensionProcess.makeXPCConnection()().super.isa;
  v0[70].super.isa = v1.super.isa;
  if (v2)
  {
    isa = v0[57].super.isa;
    v18 = v0[56].super.isa;
    v19 = v0[59].super.isa;
    v4 = v0[55].super.isa;
    v6 = v0[52].super.isa;
    v5 = v0[53].super.isa;
    v7 = v0[51].super.isa;
    v9 = v0[48].super.isa;
    v8 = v0[49].super.isa;

    (*(v8 + 1))(v7, v9);
    (*(v5 + 1))(v4, v6);
    (*(isa + 1))(v19, v18);

    v10 = v0[1].super.isa;

    return v10();
  }

  else
  {
    if (qword_1019F1938 != -1)
    {
      v17 = v1.super.isa;
      swift_once();
      v1.super.isa = v17;
    }

    v12 = v1.super.isa;
    [(objc_class *)v1.super.isa setRemoteObjectInterface:qword_101AD6B40];
    [(objc_class *)v12 resume];
    type metadata accessor for AnyCancellable();
    swift_allocObject();
    v13 = v12;
    v14 = AnyCancellable.init(_:)();
    type metadata accessor for CRLUSDRenderingExtensionConnector.APIEndpointProxy();
    inited = swift_initStackObject();
    v0[71].super.isa = inited;
    *(inited + 16) = v13;
    *(inited + 24) = v14;
    v0[72].super.isa = static MainActor.shared.getter();
    v16 = swift_task_alloc();
    v0[73].super.isa = v16;
    *v16 = v0;
    *(v16 + 1) = sub_100B83E40;

    return sub_100861764(0xD000000000000017, 0x800000010158D890, sub_100B85928, 0);
  }
}

uint64_t sub_100B83E40(int a1)
{
  v4 = *v2;
  *(*v2 + 592) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = sub_100B83FEC;
  }

  else
  {
    *(v4 + 600) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = sub_100B84210;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100B83FEC()
{

  v1 = *(v0 + 504);
  v2 = *(v0 + 512);

  return _swift_task_switch(sub_100B8407C, v1, v2);
}

uint64_t sub_100B8407C()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[57];
  v13 = v0[56];
  v14 = v0[59];
  v4 = v0[53];
  v11 = v0[52];
  v12 = v0[55];
  v5 = v0[51];
  v7 = v0[48];
  v6 = v0[49];

  swift_setDeallocating();
  v8 = *(v1 + 16);
  [v8 invalidate];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v12, v11);
  (*(v3 + 8))(v14, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100B84210()
{

  v1 = *(v0 + 504);
  v2 = *(v0 + 512);

  return _swift_task_switch(sub_100B842A0, v1, v2);
}

uint64_t sub_100B842A0()
{
  v1 = *(v0 + 150);

  v2 = [objc_opt_self() targetWithPid:v1];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() attributeWithDomain:v3 name:v4];

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10146C6B0;
  *(v6 + 56) = &type metadata for Int32;
  *(v6 + 64) = &protocol witness table for Int32;
  *(v6 + 32) = v1;
  String.init(format:_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101465920;
  *(v7 + 32) = v5;
  v8 = objc_allocWithZone(RBSAssertion);
  v9 = v2;
  v10 = v5;
  v11 = String._bridgeToObjectiveC()();

  sub_100006370(0, &unk_101A135C0, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v8 initWithExplanation:v11 target:v9 attributes:isa];

  v14 = swift_allocObject();
  swift_weakInit();
  v0[35] = sub_100B892AC;
  v0[36] = v14;
  v0[31] = _NSConcreteStackBlock;
  v0[32] = *"";
  v0[33] = sub_100B8535C;
  v0[34] = &unk_1018986E0;
  v15 = _Block_copy(v0 + 31);

  [v13 setInvalidationHandler:v15];
  _Block_release(v15);
  v0[44] = 0;
  v16 = [v13 acquireWithError:v0 + 44];
  v17 = v0[44];
  v66 = v9;
  if (v16)
  {
    v64 = v10;
    v18 = v0[47];
    v19 = v0[71];
    v58 = v0[70];
    v20 = v0[59];
    v21 = v0[57];
    v54 = v0[56];
    v22 = v0[53];
    v60 = v0[52];
    v62 = v0[55];
    v23 = v0[51];
    if (*(v18 + 40) == 1)
    {
      v52 = v0[59];
      v24 = v0[49];
      v25 = v0[50];
      v51 = v0[53];
      v26 = v0[48];
      v49 = *(v18 + 24);
      v50 = *(v18 + 32);
      v48 = v0[51];
      (*(v24 + 16))(v25, v23, v26);
      type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess(0);
      v27 = swift_allocObject();
      v56 = v26;
      v28 = v26;
      v22 = v51;
      (*(v24 + 32))(v27 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_process, v25, v28);
      *(v27 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_foregroundAssertion) = v13;
      type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
      v20 = v52;
      swift_storeEnumTagMultiPayload();
      *(v18 + 24) = v27;
      *(v18 + 32) = 0;
      *(v18 + 40) = 2;
      v29 = v48;
      v30 = v17;
      v31 = v13;
      sub_100B892B4(v49, v48);
      swift_setDeallocating();
      v32 = *(v19 + 16);
      [v32 invalidate];

      sub_100B86F74(v49, v50, 1);
    }

    else
    {
      v24 = v0[49];
      v56 = v0[48];
      swift_setDeallocating();
      v45 = *(v19 + 16);
      v46 = v17;
      [v45 invalidate];

      v29 = v23;
    }

    (*(v24 + 8))(v29, v56);
    (*(v22 + 8))(v62, v60);
    (*(v21 + 8))(v20, v54);

    v44 = v0[1];
  }

  else
  {
    v33 = v0[71];
    v34 = v0[57];
    v63 = v0[56];
    v65 = v0[59];
    v61 = v0[55];
    v35 = v0[53];
    v59 = v0[52];
    v55 = v0[70];
    v57 = v0[51];
    v36 = v0[49];
    v53 = v0[48];
    v37 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    [v13 invalidate];
    swift_getErrorValue();
    v38 = Error.localizedDescription.getter();
    v39 = v10;
    v41 = v40;
    sub_1008CF11C();
    swift_allocError();
    *v42 = v38;
    v42[1] = v41;
    swift_willThrow();
    swift_setDeallocating();
    v43 = *(v33 + 16);
    [v43 invalidate];

    (*(v36 + 8))(v57, v53);
    (*(v35 + 8))(v61, v59);
    (*(v34 + 8))(v65, v63);

    v44 = v0[1];
  }

  return v44();
}

uint64_t sub_100B849F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B84AF0()
{
  v1 = v0[59];
  v2 = v0[56];
  v3 = v0[57];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100B84C28()
{
  v1 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_process;
  v2 = type metadata accessor for _AppExtensionProcess();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100B88FC0(v0 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_cancellationState);

  return swift_deallocClassInstance();
}

uint64_t sub_100B84D0C(uint64_t a1)
{
  result = type metadata accessor for _AppExtensionProcess();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_100B84E04(uint64_t a1)
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    type metadata accessor for MainActor();

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v6;
    sub_10064191C(0, 0, v3, &unk_10149B850, v9);
  }

  return result;
}

uint64_t sub_100B84F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B84FF0, v6, v5);
}

uint64_t sub_100B84FF0()
{
  v1 = *(v0 + 16);

  if (*(v1 + 40) == 2)
  {
    v3 = *(v0 + 16);
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v1 + 40) = 3;
    [*(v5 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_foregroundAssertion) invalidate];
    _AppExtensionProcess.invalidate()();
    v2.n128_f64[0] = sub_100B86F74(v5, v4, 2);
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

double sub_100B850B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100B85124(a1, a2);
  }

  return result;
}

double sub_100B85124(uint64_t result, unint64_t a2)
{
  v3 = v2;
  v5 = (v2 + 24);
  v4 = *(v2 + 24);
  if (*(v2 + 40) == 2)
  {
    v7 = *(v2 + 32);
    sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
    v8 = *(v4 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_foregroundAssertion);
    sub_100B8948C(v4, v7, 2);
    v9 = v8;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      if (qword_1019F21E0 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.crlThreeDimensionalObjects;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      if (a2)
      {
        swift_getErrorValue();
        v13 = Error.localizedDescription.getter();
        a2 = v14;
      }

      else
      {
        v13 = 0;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      v16 = 0x6E776F6E6B6E7528;
      if (a2)
      {
        v16 = v13;
      }

      v17 = 0xE900000000000029;
      if (a2)
      {
        v17 = a2;
      }

      *(inited + 32) = v16;
      *(inited + 40) = v17;
      v18 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v18, "System invalidated USD renderer runtime assertion: %{public}@", 61, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      _AppExtensionProcess.invalidate()();
      sub_100B86F74(v4, v7, 2);
      v19 = *(v3 + 24);
      v20 = *(v3 + 32);
      *v5 = 0;
      v5[1] = 0;
      v21 = *(v3 + 40);
      *(v3 + 40) = 3;
      return sub_100B86F74(v19, v20, v21);
    }

    else
    {

      return sub_100B86F74(v4, v7, 2);
    }
  }

  return v15;
}

void sub_100B8535C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_100B855C4(uint64_t a1)
{
  sub_100B85654(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100B85654(uint64_t a1)
{
  if (!qword_101A133D0)
  {
    sub_1005C4E5C(&unk_101A050F0, &unk_10146CFE0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101A133D0);
    }
  }
}

uint64_t sub_100B856B8()
{
  [*(v0 + 16) invalidate];

  return swift_deallocClassInstance();
}

void sub_100B8572C(uint64_t a1)
{
  sub_100B857E0(319, &qword_101A13528, &qword_101A13530, &qword_10149B6E8, "token uuid ");
  if (v1 <= 0x3F)
  {
    sub_100B857E0(319, &qword_101A13538, &unk_101A13540, &qword_10149B6F0, "task uuid ");
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100B857E0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1005C4E5C(a3, a4);
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_100B85858(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100B85874(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100B858BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100B85900(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_100B85928(void **a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A135D0, &qword_101482080);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *a1;
  (*(v5 + 16))(aBlock - v7, a2, v4, v6);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_100B894F0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100B85E28;
  aBlock[3] = &unk_101898730;
  v12 = _Block_copy(aBlock);

  [v9 getExtensionProcessIDWithResponse:v12];
  _Block_release(v12);
}

double sub_100B85AE4(int a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A135D0, &qword_101482080);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a2, v4);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v16 + v14, v8, v4);
  *(v16 + v15) = a1;
  sub_10064191C(0, 0, v11, &unk_10149B840, v16);

  return result;
}

uint64_t sub_100B85CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 36) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B85D94, v7, v6);
}

uint64_t sub_100B85D94()
{
  v1 = *(v0 + 36);

  *(v0 + 32) = v1;
  sub_1005B981C(&qword_101A135D0, &qword_101482080);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

double sub_100B85E28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_100B85E7C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v8 = sub_1005B981C(&qword_101A04C00, &unk_10149B7B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = *a1;
  UUID.uuidString.getter();
  v13 = String._bridgeToObjectiveC()();

  (*(v9 + 16))(v11, a2, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = sub_100B86B08;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1007A5954;
  aBlock[3] = &unk_101898578;
  v16 = _Block_copy(aBlock);

  [v12 makeCoreRERendererProxyForUUID:v13 delegateProxy:a4 flags:v18 response:v16];
  _Block_release(v16);
}

double sub_100B86074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A04C00, &unk_10149B7B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_10064191C(0, 0, v10, &unk_10149B7D0, v14);

  return result;
}

uint64_t sub_100B8627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_100B86314, v7, v6);
}

uint64_t sub_100B86314()
{
  v0[2] = &OBJC_PROTOCOL___NSXPCProxyCreating;
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CRLUSDRendererExtensionShared.AsyncRendererSenderProxy(0);
    swift_allocObject();
    swift_unknownObjectRetain_n();
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100B86484;

    return sub_1008C5230(v2);
  }

  else
  {

    sub_1008CF11C();
    v5 = swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    v0[3] = v5;
    sub_1005B981C(&qword_101A04C00, &unk_10149B7B0);
    CheckedContinuation.resume(throwing:)();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100B86484(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_100B8665C;
  }

  else
  {
    v4[13] = a1;
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_100B865AC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100B865AC()
{
  v1 = v0[13];

  v0[5] = v1;

  sub_1005B981C(&qword_101A04C00, &unk_10149B7B0);
  CheckedContinuation.resume(returning:)();
  swift_unknownObjectRelease();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100B8665C()
{
  v1 = v0[12];

  v0[4] = v1;
  swift_errorRetain();
  sub_1005B981C(&qword_101A04C00, &unk_10149B7B0);
  CheckedContinuation.resume(throwing:)();
  swift_unknownObjectRelease();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100B8670C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100B867A4, v7, v6);
}

uint64_t sub_100B867A4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100B86898;

  return sub_100863AC4(0xD00000000000001FLL, 0x800000010158D480, sub_100B86AEC, v2);
}

uint64_t sub_100B86898()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100B869F0;
  }

  else
  {
    v5 = sub_100658F10;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B869F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B86A5C(void **a1)
{
  v1 = *a1;
  UUID.uuidString.getter();
  v2 = String._bridgeToObjectiveC()();

  [v1 didTeardownCoreRERendererForUUID:v2];

  sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  return CheckedContinuation.resume(returning:)();
}

double sub_100B86B08(uint64_t a1)
{
  v3 = *(sub_1005B981C(&qword_101A04C00, &unk_10149B7B0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100B86074(a1, v4);
}

uint64_t sub_100B86B84(uint64_t a1)
{
  v4 = *(sub_1005B981C(&qword_101A04C00, &unk_10149B7B0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100B8627C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B86C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B86CF4(uint64_t a1)
{
  v2 = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  UUID.init()();
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v8, v11, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = *(v6 + 32);
  v15(v14 + v13, v8, v5);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v16 = AnyCancellable.init(_:)();
  v17 = *(sub_1005B981C(&unk_101A135A0, &qword_10149B7E8) + 48);
  swift_weakInit();
  swift_weakAssign();
  v15(&v4[v17], v11, v5);
  swift_storeEnumTagMultiPayload();
  v18 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_cancellationState;
  swift_beginAccess();
  sub_100B872A8(v4, a1 + v18);
  swift_endAccess();
  return v16;
}

double sub_100B86F74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_100B86FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A13530, &qword_10149B6E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100B87048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_10064191C(0, 0, v10, &unk_10149B7F8, v14);

  return result;
}

double sub_100B87244()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100B87048(v2, v3);
}

uint64_t sub_100B872A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B8730C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[93] = a5;
  v5[92] = a4;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v5[94] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[95] = v6;
  v7 = *(v6 - 8);
  v5[96] = v7;
  v5[97] = *(v7 + 64);
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v5[101] = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  v5[104] = type metadata accessor for MainActor();
  v5[105] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B8749C, v9, v8);
}

uint64_t sub_100B8749C()
{
  v103 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (byte_1019F2C60 == 2 && (v2 = qword_1019F2C50, Strong == qword_1019F2C50))
    {
      v100 = qword_1019F2C58;
      v5 = qword_1019F21E0;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = v0[103];
      v7 = static OS_os_log.crlThreeDimensionalObjects;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      UUID.uuidString.getter();
      String.index(_:offsetBy:)();
      String.subscript.getter();

      v9 = static String._fromSubstring(_:)();
      v11 = v10;

      *(inited + 56) = &type metadata for String;
      v99 = sub_1000053B0();
      *(inited + 64) = v99;
      *(inited + 32) = v9;
      *(inited + 40) = v11;
      v12 = static os_log_type_t.debug.getter();
      sub_100005404(v7, &_mh_execute_header, v12, "[ExtGracePeriod] Cancellation triggered for extension. (uuid: %{public}@)", 73, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      v13 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_cancellationState;
      swift_beginAccess();
      sub_100B86C90(v2 + v13, v6);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v101 = v2;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v95 = v0[103];

          v92 = *(sub_1005B981C(&qword_101A13598, &qword_10149B7E0) + 48);
          v90 = objc_opt_self();
          v15 = [v90 _atomicIncrementAssertCount];
          v102 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v102, "[ExtGracePeriod] Unexpected ExtensionProcess cancellation state: .timingOut", 75, 2u);
          StaticString.description.getter("makeCancellationToken()", 23, 2);
          v16 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/App Extension/CRLUSDRenderingExtensionConnector.swift", 137, 2);
          v17 = String._bridgeToObjectiveC()();

          v18 = [v17 lastPathComponent];

          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v22 = v0[96];
          v87 = v0[95];
          v23 = static OS_os_log.crlAssert;
          v24 = swift_initStackObject();
          *(v24 + 16) = xmmword_10146CA70;
          *(v24 + 56) = &type metadata for Int32;
          *(v24 + 64) = &protocol witness table for Int32;
          *(v24 + 32) = v15;
          v25 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(v24 + 96) = v25;
          v26 = sub_1005CF04C();
          *(v24 + 72) = v16;
          *(v24 + 136) = &type metadata for String;
          *(v24 + 144) = v99;
          *(v24 + 104) = v26;
          *(v24 + 112) = v19;
          *(v24 + 120) = v21;
          *(v24 + 176) = &type metadata for UInt;
          *(v24 + 184) = &protocol witness table for UInt;
          *(v24 + 152) = 599;
          v27 = v102;
          *(v24 + 216) = v25;
          *(v24 + 224) = v26;
          *(v24 + 192) = v27;
          v28 = v16;
          v29 = v27;
          v30 = static os_log_type_t.error.getter();
          sub_100005404(v23, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v31 = static os_log_type_t.error.getter();
          sub_100005404(v23, &_mh_execute_header, v31, "[ExtGracePeriod] Unexpected ExtensionProcess cancellation state: .timingOut", 75, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v32 = swift_allocObject();
          v32[2] = 8;
          v32[3] = 0;
          v32[4] = 0;
          v32[5] = 0;
          v33 = __VaListBuilder.va_list()();
          StaticString.description.getter("makeCancellationToken()", 23, 2);
          v34 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/App Extension/CRLUSDRenderingExtensionConnector.swift", 137, 2);
          v35 = String._bridgeToObjectiveC()();

          StaticString.description.getter("[ExtGracePeriod] Unexpected ExtensionProcess cancellation state: .timingOut", 75, 2);
          v36 = String._bridgeToObjectiveC()();

          [v90 handleFailureInFunction:v34 file:v35 lineNumber:599 isFatal:0 format:v36 args:v33];

          v37 = sub_100B86F74(v101, v100, 2);
          (*(v22 + 8))(&v95[v92], v87, v37);
        }

        else
        {
          v97 = objc_opt_self();
          v56 = [v97 _atomicIncrementAssertCount];
          v102 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v102, "[ExtGracePeriod] Unexpected ExtensionProcess cancellation state: .initializing", 78, 2u);
          StaticString.description.getter("makeCancellationToken()", 23, 2);
          v57 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/App Extension/CRLUSDRenderingExtensionConnector.swift", 137, 2);
          v58 = String._bridgeToObjectiveC()();

          v59 = [v58 lastPathComponent];

          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v63 = static OS_os_log.crlAssert;
          v64 = swift_initStackObject();
          *(v64 + 16) = xmmword_10146CA70;
          *(v64 + 56) = &type metadata for Int32;
          *(v64 + 64) = &protocol witness table for Int32;
          *(v64 + 32) = v56;
          v65 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(v64 + 96) = v65;
          v66 = sub_1005CF04C();
          *(v64 + 72) = v57;
          *(v64 + 136) = &type metadata for String;
          *(v64 + 144) = v99;
          *(v64 + 104) = v66;
          *(v64 + 112) = v60;
          *(v64 + 120) = v62;
          *(v64 + 176) = &type metadata for UInt;
          *(v64 + 184) = &protocol witness table for UInt;
          *(v64 + 152) = 584;
          v67 = v102;
          *(v64 + 216) = v65;
          *(v64 + 224) = v66;
          *(v64 + 192) = v67;
          v68 = v57;
          v69 = v67;
          v70 = static os_log_type_t.error.getter();
          sub_100005404(v63, &_mh_execute_header, v70, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v64);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v71 = static os_log_type_t.error.getter();
          sub_100005404(v63, &_mh_execute_header, v71, "[ExtGracePeriod] Unexpected ExtensionProcess cancellation state: .initializing", 78, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v72 = swift_allocObject();
          v72[2] = 8;
          v72[3] = 0;
          v72[4] = 0;
          v72[5] = 0;
          v73 = __VaListBuilder.va_list()();
          StaticString.description.getter("makeCancellationToken()", 23, 2);
          v74 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/USD Rendering/App Extension/CRLUSDRenderingExtensionConnector.swift", 137, 2);
          v75 = String._bridgeToObjectiveC()();

          StaticString.description.getter("[ExtGracePeriod] Unexpected ExtensionProcess cancellation state: .initializing", 78, 2);
          v76 = String._bridgeToObjectiveC()();

          [v97 handleFailureInFunction:v74 file:v75 lineNumber:584 isFatal:0 format:v76 args:v73];

          sub_100B86F74(v2, v100, 2);
        }
      }

      else
      {
        v38 = v0[103];
        v39 = v0[100];
        v40 = v0[96];
        v41 = v0[95];
        v42 = sub_1005B981C(&unk_101A135A0, &qword_10149B7E8);
        v43 = *(v40 + 32);
        v43(v39, v38 + *(v42 + 48), v41);
        if (static UUID.== infix(_:_:)())
        {
          v98 = v0[102];
          v44 = v0[99];
          v45 = v0[98];
          v86 = v45;
          v46 = v0[96];
          v47 = v0[95];
          v85 = v47;
          v48 = v0[94];
          v88 = v0[97];
          v93 = v44;
          v96 = v0[100];
          UUID.init()();
          v49 = type metadata accessor for TaskPriority();
          (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
          v50 = swift_allocObject();
          swift_weakInit();
          (*(v46 + 16))(v45, v44, v47);

          v51 = static MainActor.shared.getter();
          v52 = (*(v46 + 80) + 32) & ~*(v46 + 80);
          v53 = swift_allocObject();
          *(v53 + 16) = v51;
          *(v53 + 24) = &protocol witness table for MainActor;
          v43(v53 + v52, v86, v85);
          *(v53 + ((v88 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;

          v54 = sub_10064191C(0, 0, v48, &unk_10149B808, v53);

          (*(v46 + 8))(v96, v85);
          v55 = *(sub_1005B981C(&qword_101A13598, &qword_10149B7E0) + 48);
          *v98 = v54;
          v43(v98 + v55, v93, v85);
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100B872A8(v98, v101 + v13);
          swift_endAccess();
          sub_100B86F74(v101, v100, 2);
        }

        else
        {
          v89 = v0[100];
          v91 = v0[96];
          v94 = v0[95];
          v77 = swift_initStackObject();
          *(v77 + 16) = xmmword_10146BDE0;
          UUID.uuidString.getter();
          String.index(_:offsetBy:)();
          String.subscript.getter();

          v78 = static String._fromSubstring(_:)();
          v80 = v79;

          *(v77 + 56) = &type metadata for String;
          *(v77 + 64) = v99;
          *(v77 + 32) = v78;
          *(v77 + 40) = v80;
          UUID.uuidString.getter();
          String.index(_:offsetBy:)();
          String.subscript.getter();

          v81 = static String._fromSubstring(_:)();
          v83 = v82;

          *(v77 + 96) = &type metadata for String;
          *(v77 + 104) = v99;
          *(v77 + 72) = v81;
          *(v77 + 80) = v83;
          v84 = static os_log_type_t.debug.getter();
          sub_100005404(v7, &_mh_execute_header, v84, "[ExtGracePeriod]   (Cancellation ignored: UUID mismatch) (uuid: %{public}@, found: %{public}@)", 94, 2, v77);

          sub_100B86F74(v2, v100, 2);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v91[1](v89, v94);
        }

        sub_10000CAAC(v0[103], &qword_101A13530, &qword_10149B6E8);
      }
    }

    else
    {
    }
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100B8828C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100B8730C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B88384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  v5[46] = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  v5[47] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[48] = v6;
  v5[49] = *(v6 - 8);
  v5[50] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[51] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[52] = v8;
  v5[53] = v7;

  return _swift_task_switch(sub_100B884A8, v8, v7);
}

uint64_t sub_100B884A8()
{
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlThreeDimensionalObjects;
  v0[54] = static OS_os_log.crlThreeDimensionalObjects;
  v0[55] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  v0[56] = v6;
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v1, &_mh_execute_header, v7, "[ExtGracePeriod] Grace period begins. (uuid: %{public}@)", 56, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v8 = swift_task_alloc();
  v0[57] = v8;
  *v8 = v0;
  v8[1] = sub_100B886A4;

  return static Task<>.sleep(nanoseconds:)(30000000000);
}

uint64_t sub_100B886A4()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_100B88D18;
  }

  else
  {
    v5 = sub_100B887E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100B887E0()
{
  v1 = v0[58];

  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[56];
    v3 = v0[54];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v5 = static String._fromSubstring(_:)();
    v7 = v6;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v2;
    *(inited + 32) = v5;
    *(inited + 40) = v7;
    v8 = static os_log_type_t.debug.getter();
    sub_100005404(v3, &_mh_execute_header, v8, "[ExtGracePeriod] Grace period cancelled (new API endpoint created). (uuid: %{public}@)", 86, 2, inited);

    swift_setDeallocating();
    v9 = (inited + 32);
LABEL_8:
    sub_100005070(v9);
    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    v12 = v0[56];
    v13 = v0[54];
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_10146C6B0;
    UUID.uuidString.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    v15 = static String._fromSubstring(_:)();
    v17 = v16;

    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = v12;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v18 = static os_log_type_t.debug.getter();
    sub_100005404(v13, &_mh_execute_header, v18, "[ExtGracePeriod] Grace period cancelled (state changed). (uuid: %{public}@)", 75, 2, v14);
    swift_setDeallocating();
    v9 = (v14 + 32);
    goto LABEL_8;
  }

  if (byte_1019F2C60 != 2 || (v11 = qword_1019F2C50, Strong != qword_1019F2C50))
  {

    goto LABEL_7;
  }

  v21 = qword_1019F2C58;
  v22 = v0[47];
  v23 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_cancellationState;
  swift_beginAccess();
  sub_100B86C90(v11 + v23, v22);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = v0[47];

    sub_100B88FC0(v37);
    goto LABEL_7;
  }

  v25 = v0[49];
  v24 = v0[50];
  v27 = v0[47];
  v26 = v0[48];

  v28 = sub_1005B981C(&qword_101A13598, &qword_10149B7E0);
  (*(v25 + 32))(v24, v27 + *(v28 + 48), v26);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    v39 = v0[49];
    v38 = v0[50];
    v40 = v0[48];

    v41 = sub_100B86F74(v11, v21, 2);
    (*(v39 + 8))(v38, v40, v41);
    goto LABEL_7;
  }

  v42 = v0[56];
  v43 = v0[54];
  v44 = v0[49];
  v45 = v0[48];
  v46 = v0[50];
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146C6B0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v30 = static String._fromSubstring(_:)();
  v32 = v31;

  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = v42;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v33 = static os_log_type_t.debug.getter();
  sub_100005404(v43, &_mh_execute_header, v33, "[ExtGracePeriod] Grace period ended. Extension process invalidated. (uuid: %{public}@)", 86, 2, v29);
  swift_setDeallocating();
  sub_100005070((v29 + 32));
  v34 = qword_1019F2C50;
  v35 = qword_1019F2C58;
  qword_1019F2C50 = 0;
  qword_1019F2C58 = 0;
  v36 = byte_1019F2C60;
  byte_1019F2C60 = 3;
  [*(v11 + OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F16ExtensionProcess_foregroundAssertion) invalidate];
  _AppExtensionProcess.invalidate()();
  sub_100B86F74(v11, v21, 2);

  (*(v44 + 8))(v46, v45);
LABEL_9:

  v19 = v0[1];

  return v19();
}

uint64_t sub_100B88D18()
{

  v1 = v0[56];
  v2 = v0[54];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "[ExtGracePeriod] Grace period cancelled (new API endpoint created). (uuid: %{public}@)", 86, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));

  v8 = v0[1];

  return v8();
}

uint64_t sub_100B88EA0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100B88384(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100B88FC0(uint64_t a1)
{
  v2 = type metadata accessor for CRLUSDRenderingExtensionConnector.ExtensionProcess.CancellationState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B8901C(uint64_t *a1, uint64_t *a2, void (*a3)(void, __n128))
{
  v5 = sub_1005B981C(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (a3)(*(v3 + 32));
  (*(v6 + 8))(v3 + v8, v5);

  return _swift_deallocObject(v3, v8 + v9, v7 | 7);
}

uint64_t sub_100B890F4(uint64_t a1)
{
  v4 = *(sub_1005B981C(&unk_101A135B0, &qword_10149B810) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100B823E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B891F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_1008BE798(a1);
}

void sub_100B892B4(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v3 = sub_1005B981C(&unk_101A135B0, &qword_10149B810);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v20 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    v14 = (v9 - 8);
    v11(v7, v12, v3, v5);
    while (1)
    {
      v16.super.isa = _AppExtensionProcess.makeXPCConnection()().super.isa;
      if (v17.super.isa)
      {
        isa = v17.super.isa;
        CheckedContinuation.resume(throwing:)();
        (*v14)(v7, v3);
      }

      else
      {
        if (qword_1019F1938 != -1)
        {
          v19 = v16.super.isa;
          swift_once();
          v16.super.isa = v19;
        }

        v18 = v16.super.isa;
        [(objc_class *)v16.super.isa setRemoteObjectInterface:qword_101AD6B40];
        isa = v18;
        CheckedContinuation.resume(returning:)();
        (*v14)(v7, v3);
      }

      v12 += v13;
      if (!--v8)
      {
        break;
      }

      v10(v7, v12, v3, v15);
    }
  }
}

double sub_100B8948C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return result;
      }
    }
  }

  return result;
}

double sub_100B894F0(int a1)
{
  v3 = *(sub_1005B981C(&qword_101A135D0, &qword_101482080) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100B85AE4(a1, v4);
}

uint64_t sub_100B8956C(uint64_t a1)
{
  v4 = *(sub_1005B981C(&qword_101A135D0, &qword_101482080) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100B85CF8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100B89698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100B84F58(a1, v4, v5, v6);
}

uint64_t sub_100B8974C()
{
  v1 = sub_1005B981C(&qword_101A135D8, &qword_10149B858);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v13[-v5];
  v7 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  v11 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F22ViewControllerDelegate_continuation;
  swift_beginAccess();
  sub_100B89BB4(v0 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CAAC(v6, &qword_101A135D8, &qword_10149B858);
  }

  (*(v8 + 32))(v10, v6, v7);
  (*(v8 + 56))(v3, 1, 1, v7);
  swift_beginAccess();
  sub_100B89C24(v3, v0 + v11);
  swift_endAccess();
  CheckedContinuation.resume(returning:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100B89974(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A135D8, &qword_10149B858);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v15 - v7;
  v9 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - v11;
  v13 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F22ViewControllerDelegate_continuation;
  swift_beginAccess();
  sub_100B89BB4(v1 + v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000CAAC(v8, &qword_101A135D8, &qword_10149B858);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a1)
  {
    (*(v10 + 56))(v5, 1, 1, v9);
    swift_beginAccess();
    swift_errorRetain();
    sub_100B89C24(v5, v1 + v13);
    swift_endAccess();
    v15[0] = a1;
    CheckedContinuation.resume(throwing:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100B89BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A135D8, &qword_10149B858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B89C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A135D8, &qword_10149B858);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL sub_100B89C9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A13608, off_10182F768))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 canvasEditorHelper];
    swift_unknownObjectRelease();
    v6 = [v5 layoutsForAlignAndDistribute];

    sub_100006370(0, &qword_101A287B0, off_10182F780);
    sub_100B8A580();
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v7 + 16);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = 0;
  }

  return v8 > 2;
}

BOOL sub_100B89DF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A13608, off_10182F768))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 canvasEditorHelper];
    swift_unknownObjectRelease();
    v6 = [v5 layoutsForAlignAndDistribute];

    sub_100006370(0, &qword_101A287B0, off_10182F780);
    sub_100B8A580();
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *(v7 + 16);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = 0;
  }

  return v8 > 1;
}

uint64_t sub_100B89F44()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v2 = sub_100006370(0, &qword_101A13608, off_10182F768);
  if (v2)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v4 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 canvasEditorHelper];
    swift_unknownObjectRelease();
    v7 = [v6 canvasEditorCanPerformGroupActionWithSender:v0];

    v8 = v7 == 1;
    if (v2)
    {
LABEL_6:
      v9 = swift_getObjCClassFromMetadata();
      goto LABEL_9;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = 0;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_9:
  v10 = [v1 mostSpecificCurrentEditorOfClass:v9];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = [v11 canvasEditorHelper];
    swift_unknownObjectRelease();
    v13 = [v12 canvasEditorCanPerformUngroupActionWithSender:v0] == 1;

    v14 = v13 << 8;
  }

  else
  {
    swift_unknownObjectRelease();
    v14 = 0;
  }

  return v14 | v8;
}

double sub_100B8A0E4(int a1)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v10 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
        if (sub_100006370(0, &qword_101A13608, off_10182F768))
        {
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        }

        else
        {
          ObjCClassFromMetadata = 0;
        }

        [v10 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (!v14)
        {
          goto LABEL_40;
        }

        v15 = &selRef_alignDrawablesByVerticalCenter_;
      }

      else
      {
        if (a1 != 2)
        {
          return result;
        }

        v2 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
        if (sub_100006370(0, &qword_101A13608, off_10182F768))
        {
          v3 = swift_getObjCClassFromMetadata();
        }

        else
        {
          v3 = 0;
        }

        [v2 mostSpecificCurrentEditorOfClass:v3];
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (!v14)
        {
          goto LABEL_40;
        }

        v15 = &selRef_alignDrawablesByRightEdge_;
      }
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
      if (sub_100006370(0, &qword_101A13608, off_10182F768))
      {
        v7 = swift_getObjCClassFromMetadata();
      }

      else
      {
        v7 = 0;
      }

      [v6 mostSpecificCurrentEditorOfClass:v7];
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (!v14)
      {
        goto LABEL_40;
      }

      v15 = &selRef_alignDrawablesByLeftEdge_;
    }

    goto LABEL_39;
  }

  if (a1 == 3)
  {
    v8 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    if (sub_100006370(0, &qword_101A13608, off_10182F768))
    {
      v9 = swift_getObjCClassFromMetadata();
    }

    else
    {
      v9 = 0;
    }

    [v8 mostSpecificCurrentEditorOfClass:v9];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      goto LABEL_40;
    }

    v15 = &selRef_alignDrawablesByTopEdge_;
    goto LABEL_39;
  }

  if (a1 == 4)
  {
    v12 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    if (sub_100006370(0, &qword_101A13608, off_10182F768))
    {
      v13 = swift_getObjCClassFromMetadata();
    }

    else
    {
      v13 = 0;
    }

    [v12 mostSpecificCurrentEditorOfClass:v13];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      goto LABEL_40;
    }

    v15 = &selRef_alignDrawablesByHorizontalCenter_;
    goto LABEL_39;
  }

  if (a1 != 5)
  {
    return result;
  }

  v4 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A13608, off_10182F768))
  {
    v5 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v5 = 0;
  }

  [v4 mostSpecificCurrentEditorOfClass:v5];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = &selRef_alignDrawablesByBottomEdge_;
LABEL_39:
    [v14 *v15];
  }

LABEL_40:

  swift_unknownObjectRelease();
  return result;
}

BOOL sub_100B8A45C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A12078, off_10182F810))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 canPerformEditorAction:"mergeDrawings:" withSender:v0];
    swift_unknownObjectRelease();
    return v5 == 1;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

id sub_100B8A528(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLMiniFormatterArrangeDataProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100B8A580()
{
  result = qword_101A13610;
  if (!qword_101A13610)
  {
    v3 = sub_100006370(255, &qword_101A287B0, off_10182F780);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_101A13610);
  }

  return result;
}

unint64_t sub_100B8A5E8()
{
  result = sub_100078EA4(_swiftEmptyArrayStorage);
  qword_101AD75E8 = result;
  return result;
}

uint64_t sub_100B8A6DC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100B8AB34();
  v8 = static OS_os_log.default.getter();
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  result = swift_initStackObject();
  *(result + 16) = xmmword_10146BDE0;
  if (!a3)
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = result;
  *(result + 56) = &type metadata for String;
  result = sub_1000053B0();
  v10[8] = result;
  v10[4] = a2;
  v10[5] = a3;
  if (!a4)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v10[12] = sub_1005B981C(&unk_101A07740, &unk_101486B90);
  v10[13] = sub_100B8AB80();
  v10[9] = a4;
  v34 = a3;

  v11 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v11, "[CARMEL-PPT] Running test %@ options %@", 39, 2, v10);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  if (qword_1019F1DB0 != -1)
  {
LABEL_21:
    swift_once();
  }

  swift_beginAccess();
  qword_101AD75E8 = a4;

  v12 = sub_100C8E23C();
  v13 = v12;
  v14 = *(v12 + 16);
  if (!v14)
  {

LABEL_15:
    if (a1)
    {
      v22 = String._bridgeToObjectiveC()();
      _StringGuts.grow(_:)(20);

      strcpy(v35, "No class for ");
      HIWORD(v35[1]) = -4864;

      sub_1005B981C(&unk_1019F6C70, &unk_101488FF0);
      v23._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v23);

      v24._countAndFlagsBits = 23328;
      v24._object = 0xE200000000000000;
      String.append(_:)(v24);
      sub_100C8E23C();
      sub_1005B981C(&qword_101A13688, &qword_10149B888);
      v25 = Array.description.getter();
      v27 = v26;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      String.append(_:)(v28);

      v29._countAndFlagsBits = 93;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v30 = String._bridgeToObjectiveC()();

      [a1 failedTest:v22 withFailure:v30];

      return 0;
    }

    goto LABEL_24;
  }

  v33 = a1;
  a1 = 0;
  v15 = (v12 + 48);
  while (1)
  {
    if (a1 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v16 = *(v15 - 2);
    v17 = *(v15 - 1);
    a4 = *v15;
    if ((*(v17 + 8))(v16, v17) == a2 && v18 == v34)
    {
      break;
    }

    v20 = a2;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_18;
    }

    ++a1;
    v15 += 3;
    a2 = v20;
    if (v14 == a1)
    {

      a1 = v33;
      goto LABEL_15;
    }
  }

LABEL_18:

  (*(a4 + 8))(v35, v16, a4);
  v31 = v35[0];
  qword_101AD75D0 = v35[0];
  *algn_101AD75D8 = v17;
  qword_101AD75E0 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v35[0] = v31;
  result = v33;
  if (!v33)
  {
    goto LABEL_25;
  }

  (*(a4 + 16))(v33, ObjectType, a4);
  swift_unknownObjectRelease();
  return 1;
}

unint64_t sub_100B8AB34()
{
  result = qword_1019F6EE0;
  if (!qword_1019F6EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F6EE0);
  }

  return result;
}

unint64_t sub_100B8AB80()
{
  result = qword_101A13680;
  if (!qword_101A13680)
  {
    v3 = sub_1005C4E5C(&unk_101A07740, &unk_101486B90);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A : B], v3, v0, v1);
    atomic_store(result, &qword_101A13680);
  }

  return result;
}

uint64_t sub_100B8ABF4()
{
  v0 = sub_1005B981C(&unk_101A287C0, &unk_10147A120);
  sub_10061655C(v0, qword_101AD75F0);
  sub_1005EB3DC(v0, qword_101AD75F0);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_100B8AC90()
{
  v0 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  sub_10061655C(v0, qword_101AD7620);
  sub_1005EB3DC(v0, qword_101AD7620);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100B8AD40()
{
  v0 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  sub_10061655C(v0, qword_101AD7638);
  sub_1005EB3DC(v0, qword_101AD7638);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100B8ADF0()
{
  v0 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  sub_10061655C(v0, qword_101AD7650);
  sub_1005EB3DC(v0, qword_101AD7650);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100B8AECC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  sub_10061655C(v5, a2);
  sub_1005EB3DC(v5, a2);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100B8AF78()
{
  v0 = sub_1005B981C(&unk_101A287C0, &unk_10147A120);
  sub_10061655C(v0, qword_101AD7680);
  sub_1005EB3DC(v0, qword_101AD7680);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_100B8AFE8@<X0>(int a2@<W1>, uint64_t *a3@<X8>)
{
  v14 = a2;
  v4 = sub_1005B981C(&qword_1019FE720, &unk_1014933C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = sub_1005B981C(&qword_1019FE728, &unk_10147A1D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10001A2F8(&qword_1019FE730, &qword_1019FE728, &unk_10147A1D0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  v15 = v14;
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = sub_1005B981C(&qword_1019FE738, &unk_1014933D0);
  a3[4] = sub_100758DC4();
  sub_10002C58C(a3);
  sub_10001A2F8(&qword_1019FE758, &qword_1019FE720, &unk_1014933C0, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100B8B250@<X0>(uint64_t *a2@<X8>)
{
  v33 = a2;
  v2 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019FE6A0, &unk_10147A130);
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  __chkstk_darwin(v4);
  v28 = &v27 - v6;
  v7 = sub_1005B981C(&qword_1019FE6A8, &unk_10149B990);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = sub_1005B981C(&qword_1019FE6B0, &unk_10147A140);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v29 = sub_1005B981C(&qword_101A0F770, &unk_10149BA20);
  v15 = *(v29 - 8);
  __chkstk_darwin(v29);
  v17 = &v27 - v16;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8, &unk_10149B990, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  swift_getKeyPath();
  sub_10001A2F8(&qword_101A0F778, &qword_1019FE6B0, &unk_10147A140, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v12 + 8))(v14, v11);
  v36 = 1;
  v18 = v28;
  static PredicateExpressions.build_Arg<A>(_:)();
  v20 = v30;
  v19 = v31;
  v21 = v32;
  (*(v31 + 104))(v30, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v32);
  v22 = sub_1005B981C(&qword_101A0F780, &unk_1014D4B40);
  v23 = v33;
  v33[3] = v22;
  v23[4] = sub_100B8C80C(&qword_101A0F788, &qword_101A0F780, &unk_1014D4B40, sub_100AC3AF4);
  sub_10002C58C(v23);
  sub_10001A2F8(&qword_101A0F798, &qword_101A0F770, &unk_10149BA20, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0, &unk_10147A130, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v24 = v29;
  v25 = v34;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v19 + 8))(v20, v21);
  (*(v35 + 8))(v18, v25);
  return (*(v15 + 8))(v17, v24);
}

uint64_t sub_100B8B7A4@<X0>(uint64_t *a2@<X8>)
{
  v48 = a2;
  v2 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019FE6A0, &unk_10147A130);
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  __chkstk_darwin(v4);
  v44 = &v36 - v6;
  v7 = type metadata accessor for Tips.DonationTimeRange();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019FE6A8, &unk_10149B990);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = sub_1005B981C(&qword_1019FE6B0, &unk_10147A140);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_1005B981C(&qword_1019FE6B8, &unk_10149B9A0);
  v19 = *(v18 - 8);
  v38 = v18;
  v39 = v19;
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  v22 = sub_1005B981C(&qword_1019FE6C0, &qword_10147A150);
  v23 = *(v22 - 8);
  v42 = v22;
  v43 = v23;
  __chkstk_darwin(v22);
  v37 = &v36 - v24;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8, &unk_10149B990, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v13, v10);
  static Tips.DonationTimeRange.day.getter();
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690, &protocol conformance descriptor for Tips.EmptyDonation);
  sub_100758B68(&qword_1019FE698, &protocol conformance descriptor for Tips.EmptyDonation);
  sub_100758BAC();
  static PredicateExpressions.build_donatedWithin<A, B>(_:_:)();
  (*(v40 + 8))(v9, v41);
  (*(v15 + 8))(v17, v14);
  swift_getKeyPath();
  sub_10001A2F8(&qword_1019FE6E0, &qword_1019FE6B8, &unk_10149B9A0, &protocol conformance descriptor for PredicateExpressions.DonatedWithin<A, B>);
  v26 = v37;
  v25 = v38;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v39 + 8))(v21, v25);
  v51 = 1;
  v27 = v44;
  static PredicateExpressions.build_Arg<A>(_:)();
  v29 = v45;
  v28 = v46;
  v30 = v47;
  (*(v46 + 104))(v45, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v47);
  v31 = sub_1005B981C(&qword_1019FE6E8, &unk_10147A1C0);
  v32 = v48;
  v48[3] = v31;
  v32[4] = sub_100B8C80C(&qword_1019FE6F0, &qword_1019FE6E8, &unk_10147A1C0, sub_100758D14);
  sub_10002C58C(v32);
  sub_10001A2F8(&qword_1019FE710, &qword_1019FE6C0, &qword_10147A150, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0, &unk_10147A130, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v33 = v42;
  v34 = v49;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v28 + 8))(v29, v30);
  (*(v50 + 8))(v27, v34);
  return (*(v43 + 8))(v26, v33);
}

uint64_t sub_100B8BEE0@<X0>(uint64_t *a2@<X8>)
{
  sub_10067E168();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100B8BF24()
{
  result = qword_101A13690;
  if (!qword_101A13690)
  {
    result = swift_getWitnessTable(byte_10149B8D4, &type metadata for CRLTipConnectionLinesEntryPointFull, v0, v1);
    atomic_store(result, &qword_101A13690);
  }

  return result;
}

unint64_t sub_100B8BF78(uint64_t a1)
{
  result = sub_10067E168();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100B8BFA0()
{
  v0 = sub_1005B981C(&unk_101A287C0, &unk_10147A120);
  v23 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v22 - v1;
  v3 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - v5;
  v7 = type metadata accessor for Tips.Rule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F1DC0 != -1)
  {
    swift_once();
  }

  v11 = sub_1005EB3DC(v3, qword_101AD7608);
  swift_beginAccess();
  v12 = *(v4 + 16);
  v12(v6, v11, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[4] = static Tips.RuleBuilder.buildExpression(_:)();
  v25 = *(v8 + 8);
  v25(v10, v7);
  if (qword_1019F1DD8 != -1)
  {
    swift_once();
  }

  v13 = sub_1005EB3DC(v3, qword_101AD7650);
  swift_beginAccess();
  v12(v6, v13, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[3] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  if (qword_1019F1DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_1005EB3DC(v3, qword_101AD7620);
  swift_beginAccess();
  v12(v6, v14, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[2] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  if (qword_1019F1DD0 != -1)
  {
    swift_once();
  }

  v15 = sub_1005EB3DC(v3, qword_101AD7638);
  swift_beginAccess();
  v12(v6, v15, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[1] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  if (qword_1019F1DE0 != -1)
  {
    swift_once();
  }

  v16 = sub_1005EB3DC(v3, qword_101AD7668);
  swift_beginAccess();
  v12(v6, v16, v3);
  Tips.Rule.init<A>(_:_:)();
  v22[0] = static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v7);
  v24 = v7;
  if (qword_1019F1DB8 != -1)
  {
    swift_once();
  }

  v17 = sub_1005EB3DC(v0, qword_101AD75F0);
  v18 = *(v23 + 16);
  v18(v2, v17, v0);
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690, &protocol conformance descriptor for Tips.EmptyDonation);
  sub_100758B68(&qword_1019FE698, &protocol conformance descriptor for Tips.EmptyDonation);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v24);
  if (qword_1019F1DE8 != -1)
  {
    swift_once();
  }

  v19 = sub_1005EB3DC(v0, qword_101AD7680);
  v18(v2, v19, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v25(v10, v24);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v20 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v20;
}

uint64_t sub_100B8C80C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1005C4E5C(a2, a3);
    v8[0] = a4();
    v8[1] = sub_10001A2F8(&qword_1019FE708, &qword_1019FE6A0, &unk_10147A130, &protocol conformance descriptor for PredicateExpressions.Value<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Comparison<A, B>, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

void sub_100B8C8C4(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for Locale();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v29[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1005B981C(&qword_101A13698, &qword_10149BA30);
  __chkstk_darwin(v4 - 8);
  v6 = &v29[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TimeZone();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  v15 = static AASApplicationManager.shared;
  v16 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_isSaltRegenerated;
  swift_beginAccess();
  v30 = *(v15 + v16);
  v17 = [objc_opt_self() defaultManager];
  v18 = [v17 ubiquityIdentityToken];

  if (v18)
  {
    swift_unknownObjectRelease();
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  static TimeZone.current.getter();
  Date.init()();
  v20 = TimeZone.secondsFromGMT(for:)();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  if (v20 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = [objc_opt_self() currentLocale];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  v23 = [v21 locale];

  if (!v23)
  {
LABEL_17:
    __break(1u);
    return;
  }

  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  Locale.region.getter();
  (*(v31 + 8))(v3, v32);
  v24 = type metadata accessor for Locale.Region();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v6, 1, v24) == 1)
  {
    sub_10000CAAC(v6, &qword_101A13698, &qword_10149BA30);
    v26 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E75;
  }

  else
  {
    v27 = Locale.Region.identifier.getter();
    v26 = v28;
    (*(v25 + 8))(v6, v24);
  }

  v34 = v20;
  v35 = v27;
  v36 = v26;
  v37 = v19;
  v38 = v30;
  sub_100B8D2C4();
  SessionData.init(key:data:)();
}

uint64_t sub_100B8CD6C(uint64_t a1)
{
  v1[11] = a1;
  sub_1005B981C(&qword_1019FBE50, &unk_101476290);
  v1[12] = swift_task_alloc();
  v2 = type metadata accessor for AASUserInfo(0);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_1005B981C(&qword_101A136A8, &qword_10149BA48);
  v3 = swift_task_alloc();
  v1[16] = v3;
  v4 = swift_task_alloc();
  v1[17] = v4;
  *v4 = v1;
  v4[1] = sub_100B8CED8;

  return static Storefront.current.getter(v3);
}

uint64_t sub_100B8CED8()
{

  return _swift_task_switch(sub_100B8CFD4, 0, 0);
}

uint64_t sub_100B8CFD4()
{
  v1 = *(v0 + 128);
  v2 = type metadata accessor for Storefront();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000CAAC(v1, &qword_101A136A8, &qword_10149BA48);
    v4 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = Storefront.id.getter();
    v4 = v6;
    (*(v3 + 8))(v1, v2);
  }

  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  v10 = static AASApplicationManager.shared;
  v11 = OBJC_IVAR____TtC8Freeform21AASApplicationManager_userInfo;
  swift_beginAccess();
  sub_10005FE44(v10 + v11, v9);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    v12 = *(v0 + 96);

    sub_10000CAAC(v12, &qword_1019FBE50, &unk_101476290);
    v13 = 1;
  }

  else
  {
    v14 = *(v0 + 120);
    sub_10005EC6C(*(v0 + 96), v14);
    v15 = UUID.uuidString.getter();
    v16 = *(v10 + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager);
    v17 = *(v16 + 20);
    LOBYTE(v16) = *(v16 + 24);
    *(v0 + 16) = v15;
    *(v0 + 24) = v18;
    *(v0 + 32) = -1;
    *(v0 + 40) = v5;
    *(v0 + 48) = v4;
    *(v0 + 56) = v17;
    *(v0 + 60) = v16;
    sub_100B8D318();
    SessionData.init(key:data:)();
    sub_10005EC10(v14);
    v13 = 0;
  }

  v19 = *(v0 + 88);
  v20 = sub_1005B981C(&qword_101A136B0, &qword_10149BA50);
  (*(*(v20 - 8) + 56))(v19, v13, 1, v20);

  v21 = *(v0 + 8);

  return v21();
}

unint64_t sub_100B8D2C4()
{
  result = qword_101A136A0;
  if (!qword_101A136A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionData, &type metadata for SessionData, v0, v1);
    atomic_store(result, &qword_101A136A0);
  }

  return result;
}

unint64_t sub_100B8D318()
{
  result = qword_101A136B8;
  if (!qword_101A136B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserData, &type metadata for UserData, v0, v1);
    atomic_store(result, &qword_101A136B8);
  }

  return result;
}

uint64_t sub_100B8D36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100B8D3B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100B8D408()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 16;
  }

  v3 = 0;
  v4 = (v1 + 48);
  while (1)
  {
    v5 = *(v4 - 1);
    v6 = *v4 >> 62;
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v9 = v5 + 16;
        v7 = *(v5 + 16);
        v8 = *(v9 + 8);
        v10 = __OFSUB__(v8, v7);
        v5 = v8 - v7;
        if (v10)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else if (v6)
    {
      v10 = __OFSUB__(HIDWORD(v5), v5);
      LODWORD(v5) = HIDWORD(v5) - v5;
      if (v10)
      {
        goto LABEL_23;
      }

      v5 = v5;
    }

    else
    {
      v5 = BYTE6(*v4);
    }

    v10 = __OFADD__(v5, 24);
    v11 = v5 + 24;
    if (v10)
    {
      break;
    }

    v10 = __OFADD__(v3, v11);
    v3 += v11;
    if (v10)
    {
      goto LABEL_21;
    }

    v4 += 3;
    if (!--v2)
    {
      result = v3 + 16;
      if (!__OFADD__(v3, 16))
      {
        return result;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100B8D4B0()
{
  v1 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v1 - 8);
  v78 = &v61 - v2;
  v76 = type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord(0);
  __chkstk_darwin(v76);
  v82 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for CRLProto_Data(0);
  v69 = *(v80 - 8);
  __chkstk_darwin(v80);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = (&v61 - v7);
  __chkstk_darwin(v8);
  v67 = (&v61 - v9);
  __chkstk_darwin(v10);
  v81 = (&v61 - v11);
  v12 = type metadata accessor for CRLProto_RealTimeMessage(0);
  __chkstk_darwin(v12);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14[1] = _swiftEmptyArrayStorage;
  v61 = v15;
  result = UnknownStorage.init()();
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v62 = v14;
  *v14 = v17;
  v66 = *(v18 + 16);
  if (v66)
  {
    v19 = 0;
    v20 = (v69 + 56);
    v21 = (v69 + 48);
    v22 = (v18 + 48);
    v23 = _swiftEmptyArrayStorage;
    v24 = xmmword_10146F370;
    v63 = (v69 + 56);
    v64 = v18;
    v70 = (v69 + 48);
    v79 = xmmword_10146F370;
    v65 = v5;
    while (v19 < *(v18 + 16))
    {
      v71 = v22;
      v72 = v19;
      v75 = v23;
      v26 = *(v22 - 1);
      v25 = *v22;
      v27 = *(v22 - 2);
      v28 = v80;
      *v81 = v24;
      v73 = v25;
      sub_100024E98(v26, v25);
      UnknownStorage.init()();
      v29 = v76;
      v30 = v82;
      UnknownStorage.init()();
      v31 = *(v29 + 24);
      v32 = *v20;
      (*v20)(&v30[v31], 1, 1, v28);
      *v30 = v27;
      v33 = v67;
      *v67 = v79;
      UnknownStorage.init()();
      sub_1009DCE5C(&v30[v31]);
      sub_100683F6C(v33, &v30[v31]);
      v74 = v32;
      v32(&v30[v31], 0, 1, v28);
      v34 = v78;
      sub_10084DD24(&v30[v31], v78);
      v35 = *v21;
      if ((*v21)(v34, 1, v28) == 1)
      {
        v36 = v68;
        *v68 = v79;
        v37 = v80;
        v38 = v73;
        sub_100024E98(v26, v73);
        v39 = v78;
        UnknownStorage.init()();
        v40 = v35(v39, 1, v37);
        v41 = v38;
        if (v40 != 1)
        {
          sub_1009DCE5C(v78);
        }
      }

      else
      {
        v36 = v68;
        sub_100683F6C(v78, v68);
        v41 = v73;
        sub_100024E98(v26, v73);
      }

      sub_10002640C(*v36, *(v36 + 1));
      *v36 = v26;
      *(v36 + 1) = v41;
      v42 = v82;
      sub_1009DCE5C(&v82[v31]);
      sub_100683F6C(v36, v42 + v31);
      v74((v42 + v31), 0, 1, v80);
      sub_100B8E448(&qword_101A137B0, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord, "AV8");
      v43 = v77;
      v44 = Message.serializedData(partial:)();
      v77 = v43;
      if (v43)
      {
        sub_10002640C(v26, v41);
        sub_100B8E384(v82, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord);

        sub_100B8E384(v81, type metadata accessor for CRLProto_Data);
        v57 = v62;
        return sub_100B8E384(v57, type metadata accessor for CRLProto_RealTimeMessage);
      }

      v46 = v44;
      v47 = v45;
      sub_100B8E384(v82, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord);
      v48 = v81;
      sub_10002640C(*v81, v81[1]);
      *v48 = v46;
      v48[1] = v47;
      v49 = v48;
      v50 = v65;
      sub_100B8E3E4(v49, v65);
      v51 = v75;
      v52 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_100B37164(0, v51[2] + 1, 1, v51);
      }

      v54 = v51[2];
      v53 = v51[3];
      v55 = v51;
      if (v54 >= v53 >> 1)
      {
        v55 = sub_100B37164((v53 > 1), v54 + 1, 1, v51);
      }

      v19 = v72 + 1;
      sub_10002640C(v26, v52);
      v55[2] = v54 + 1;
      v23 = v55;
      sub_100683F6C(v50, v55 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v54);
      result = sub_100B8E384(v81, type metadata accessor for CRLProto_Data);
      v21 = v70;
      v22 = v71 + 3;
      v20 = v63;
      v18 = v64;
      v24 = v79;
      if (v66 == v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_16:
    v56 = v23;
    v57 = v62;
    v62[1] = v56;
    sub_100B8E448(&qword_101A137B8, type metadata accessor for CRLProto_RealTimeMessage, byte_1014B2DD0);
    v58 = v77;
    v59 = Message.serializedData(partial:)();
    v77 = v58;
    if (v58)
    {
      return sub_100B8E384(v57, type metadata accessor for CRLProto_RealTimeMessage);
    }

    else
    {
      v60 = v59;
      sub_100B8E384(v57, type metadata accessor for CRLProto_RealTimeMessage);
      return v60;
    }
  }

  return result;
}

uint64_t sub_100B8DB78()
{
  if (*v0)
  {
    return 0x7365676E616863;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_100B8DBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365676E616863 && a2 == 0xE700000000000000)
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

uint64_t sub_100B8DC88(uint64_t a1)
{
  v2 = sub_100B8E210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B8DCC4(uint64_t a1)
{
  v2 = sub_100B8E210();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B8DD00()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100B8DD5C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A13798, &unk_10149BB90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100B8E210();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v10[15] = 1;
    sub_1005B981C(&qword_101A13780, &qword_10149BB88);
    sub_100B8E2B8(&qword_101A137A0, sub_100B8E330, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_100B8DF1C(void *a1)
{
  v10[0] = sub_1005B981C(&qword_101A13770, &qword_10149BB80);
  v4 = *(v10[0] - 8);
  __chkstk_darwin(v10[0]);
  v6 = v10 - v5;
  sub_100020E58(a1, a1[3]);
  sub_100B8E210();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    v12 = 0;
    v8 = v10[0];
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1005B981C(&qword_101A13780, &qword_10149BB88);
    v11 = 1;
    sub_100B8E2B8(&qword_101A13788, sub_100B8E264, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v6, v8);
    *(v1 + 24) = v10[1];
  }

  sub_100005070(a1);
  return v1;
}

void *sub_100B8E168@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_100B8DF1C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100B8E1E4(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16))
  {
    return sub_100671DB4(*(*a1 + 24), *(*a2 + 24));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100B8E210()
{
  result = qword_101A13778;
  if (!qword_101A13778)
  {
    result = swift_getWitnessTable(byte_10149BC64, &type metadata for CRLRealTimeMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13778);
  }

  return result;
}

unint64_t sub_100B8E264()
{
  result = qword_101A13790;
  if (!qword_101A13790)
  {
    result = swift_getWitnessTable(byte_10149F870, &type metadata for CRLRealTimeOpaqueChangeRecord, v0, v1);
    atomic_store(result, &qword_101A13790);
  }

  return result;
}

uint64_t sub_100B8E2B8(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1005C4E5C(&qword_101A13780, &qword_10149BB88);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B8E330()
{
  result = qword_101A137A8;
  if (!qword_101A137A8)
  {
    result = swift_getWitnessTable(byte_10149F848, &type metadata for CRLRealTimeOpaqueChangeRecord, v0, v1);
    atomic_store(result, &qword_101A137A8);
  }

  return result;
}

uint64_t sub_100B8E384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B8E3E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B8E448(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100B8E490(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for CRLProto_RealTimeMessage(0);
  __chkstk_darwin(v6);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100B8E448(&qword_101A137B8, type metadata accessor for CRLProto_RealTimeMessage, byte_1014B2DD0);
  Message.init(serializedData:extensions:partial:options:)();
  if (v2)
  {
    return sub_10002640C(a1, a2);
  }

  v28 = a1;
  v29 = a2;
  v26 = *v8;
  v27 = v8;
  v10 = v8[1];
  v11 = *(v10 + 16);

  v33 = v11;
  if (v11)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    while (v12 < *(v10 + 16))
    {
      v14 = *(type metadata accessor for CRLProto_Data(0) - 8);
      v15 = (v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12);
      v16 = *v15;
      v17 = v15[1];
      sub_100024E98(*v15, v17);
      v18 = sub_100BF0FE8(v16, v17);
      v20 = v19;
      v22 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100B36FF8(0, *(v13 + 2) + 1, 1, v13);
        v13 = result;
      }

      v24 = *(v13 + 2);
      v23 = *(v13 + 3);
      if (v24 >= v23 >> 1)
      {
        result = sub_100B36FF8((v23 > 1), v24 + 1, 1, v13);
        v13 = result;
      }

      ++v12;
      *(v13 + 2) = v24 + 1;
      v25 = &v13[24 * v24];
      *(v25 + 4) = v18;
      *(v25 + 5) = v20;
      *(v25 + 6) = v22;
      if (v33 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_13:

    sub_10002640C(v28, v29);
    sub_100B8E384(v27, type metadata accessor for CRLProto_RealTimeMessage);
    type metadata accessor for CRLRealTimeMessage();
    result = swift_allocObject();
    *(result + 16) = v26;
    *(result + 24) = v13;
  }

  return result;
}

unint64_t sub_100B8E7F8()
{
  result = qword_101A137C0;
  if (!qword_101A137C0)
  {
    result = swift_getWitnessTable(byte_10149BC3C, &type metadata for CRLRealTimeMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A137C0);
  }

  return result;
}

unint64_t sub_100B8E850()
{
  result = qword_101A137C8;
  if (!qword_101A137C8)
  {
    result = swift_getWitnessTable(byte_10149BBAC, &type metadata for CRLRealTimeMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A137C8);
  }

  return result;
}

unint64_t sub_100B8E8A8()
{
  result = qword_101A137D0;
  if (!qword_101A137D0)
  {
    result = swift_getWitnessTable("u}9", &type metadata for CRLRealTimeMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A137D0);
  }

  return result;
}

id sub_100B8E950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLObservableDelta();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void __swiftcall CRLCanvas.textRenderer(forLayer:context:)(CRLWPRenderer *__return_ptr retstr, CALayer_optional forLayer, CGContextRef context)
{
  if (![objc_allocWithZone(CRLWPRenderer) initWithContext:*&forLayer.is_nil])
  {
    __break(1u);
  }
}

void CRLWPRep.hyperlinkRegions.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v76 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v74 - v6;
  v8 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v8 - 8);
  v80 = v74 - v9;
  v10 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  __chkstk_darwin(v10 - 8);
  v12 = v74 - v11;
  v81 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v13 = *(v81 - 8);
  *&v14 = __chkstk_darwin(v81).n128_u64[0];
  v89 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98.receiver = v1;
  v98.super_class = CRLWPRep;
  v16 = objc_msgSendSuper2(&v98, "hyperlinkRegions", v14);
  sub_100006370(0, &qword_101A13808, off_10182F868);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v94 = v17;
  v99 = v17;
  v18 = [v1 storage];
  v83 = v1;
  v19 = [v1 range];
  v21 = [v18 smartFieldsWithAttributeKind:6 intersectingRange:{v19, v20}];

  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = *(v22 + 16);
  if (!v88)
  {
LABEL_40:

    return;
  }

  v23 = 0;
  v86 = v22 + 32;
  v87 = v2;
  v85 = (v13 + 56);
  v79 = (v3 + 48);
  v82 = (v3 + 8);
  v75 = (v3 + 32);
  v24 = v81;
  v95 = v7;
  v78 = v12;
  v84 = v22;
  while (1)
  {
    if (v23 >= *(v22 + 16))
    {
      goto LABEL_44;
    }

    v90 = v23;
    sub_100064288(v86 + 32 * v23, v97);
    v25 = swift_dynamicCast();
    v26 = *v85;
    if (v25)
    {
      break;
    }

    v26(v12, 1, 1, v24);
    sub_100B8F674(v12);
LABEL_4:
    v23 = v90 + 1;
    v22 = v84;
    if (v90 + 1 == v88)
    {
      goto LABEL_40;
    }
  }

  v26(v12, 0, 1, v24);
  v27 = v89;
  sub_100962540(v12, v89);
  v28 = v24;
  v29 = [v83 storage];
  sub_100A3400C(*(v27 + *(v28 + 24)), *(v27 + *(v28 + 24) + 8));
  v31 = v30;
  v33 = v32;
  v34 = v80;
  sub_10001ACF0(v27 + *(v28 + 20), v80);
  v96 = v31;
  v35 = [v29 stringEquivalentFromRange:{v31, v33}];
  v36 = v87;
  if ((*v79)(v34, 1, v87) == 1)
  {
    v38 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v37);
    v38 = v39;
    (*v82)(v34, v36);
  }

  v40 = objc_allocWithZone(CRLWPHyperlinkField);
  v41 = String._bridgeToObjectiveC()();
  v42 = [v40 initWithURL:v38 range:v96 displayText:v33 uuidString:{v35, v41}];

  v43 = v42;
  v44 = [v42 url];
  if (!v44)
  {
    goto LABEL_35;
  }

  v45 = v76;
  v46 = v44;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = v95;
  v48 = v87;
  (*v75)(v95, v45, v87);
  v49 = [v43 range];
  v96 = [objc_allocWithZone(CRLWPSelection) initWithRange:{v49, v50}];
  if (!v96)
  {
    (*v82)(v47, v48);
LABEL_35:

LABEL_37:
    sub_100B8F6DC(v89);
    v12 = v78;
    v24 = v81;
    goto LABEL_4;
  }

  v77 = v43;
  v51 = [objc_allocWithZone(CRLBezierPath) init];
  v52 = [v83 columns];
  sub_100006370(0, &unk_1019FFD00, off_10182F9C0);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v53 >> 62))
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

  v54 = _CocoaArrayWrapper.endIndex.getter();
  if (!v54)
  {
LABEL_36:

    (*v82)(v47, v87);
    goto LABEL_37;
  }

LABEL_14:
  v55 = 0;
  v93 = v53 & 0xFFFFFFFFFFFFFF8;
  v94 = v53 & 0xC000000000000001;
  v74[1] = v53;
  v91 = v54;
  v92 = v53 + 32;
  while (1)
  {
    if (v94)
    {
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v55 >= *(v93 + 16))
      {
        goto LABEL_42;
      }

      v56 = *(v92 + 8 * v55);
    }

    v57 = v56;
    if (__OFADD__(v55++, 1))
    {
      break;
    }

    v59 = v96;
    v60 = [v96 range];
    v62 = [v57 rectsForSelectionRange:v60 selectionType:v61 forParagraphMode:objc_msgSend(v59 includeRuby:"type") includePaginatedAttachments:{0, 0, 0}];
    if (!v62)
    {
      goto LABEL_45;
    }

    v63 = v62;
    sub_100006370(0, &qword_101A04270, NSValue_ptr);
    v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v64 >> 62)
    {
      v65 = _CocoaArrayWrapper.endIndex.getter();
      if (!v65)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v65)
      {
        goto LABEL_30;
      }
    }

    if (v65 < 1)
    {
      goto LABEL_43;
    }

    v66 = 0;
    do
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v67 = *(v64 + 8 * v66 + 32);
      }

      v68 = v67;
      ++v66;
      [v67 CGRectValue];
      [v51 appendBezierPathWithRect:?];
    }

    while (v65 != v66);
LABEL_30:

    v69 = objc_allocWithZone(CRLHyperlinkRegion);
    v70 = v51;
    v47 = v95;
    URL._bridgeToObjectiveC()(v71);
    v73 = v72;
    [v69 initWithURL:v72 bezierPath:v70];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (v55 == v91)
    {
      v94 = v99;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_100B8F430()
{
  v1 = [v0 columns];
  sub_100006370(0, &unk_1019FFD00, off_10182F9C0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if (!v3)
  {
LABEL_12:

    return;
  }

  if (v3 >= 1)
  {
    v8 = 0;
    v22 = CGRectNull.origin.y;
    v20 = CGRectNull.size.height;
    v21 = CGRectNull.size.width;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v2 + 8 * v8 + 32);
      }

      v10 = v9;
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v26.origin.y = v22;
      v26.origin.x = CGRectNull.origin.x;
      v26.size.height = v20;
      v26.size.width = v21;
      v11 = CGRectEqualToRect(v23, v26);
      [v10 typographicBounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      if (!v11)
      {
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v27.origin.x = v13;
        v27.origin.y = v15;
        v27.size.width = v17;
        v27.size.height = v19;
        v25 = CGRectUnion(v24, v27);
        v13 = v25.origin.x;
        v15 = v25.origin.y;
        v17 = v25.size.width;
        v19 = v25.size.height;
      }

      ++v8;

      x = v13;
      y = v15;
      width = v17;
      height = v19;
    }

    while (v3 != v8);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_100B8F674(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B8F6DC(uint64_t a1)
{
  v2 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B8F738(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B8F780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100B8F7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1005B981C(&qword_1019FE480, &unk_10147B4A0);
  v13 = type metadata accessor for DataEventTrait();
  v4 = *(v13 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10146C6B0;
  v7 = enum case for DataEventTrait.unique(_:);
  v8 = *(v4 + 104);
  v12 = enum case for DataEventTrait.unique(_:);
  v8(v6 + v5, enum case for DataEventTrait.unique(_:), v13);
  sub_100011D20();
  AccessSessionManager.push<A>(_:traits:file:line:)();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146C6B0;
  v8(v9 + v5, v7, v13);
  sub_100011D88();
  AccessSessionManager.push<A>(_:traits:file:line:)();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10146C6B0;
  v8(v10 + v5, v12, v13);
  sub_100011DE8();
  AccessSessionManager.push<A>(_:traits:file:line:)();
}

uint64_t sub_100B8FA20(uint64_t a1)
{
  v3 = *(sub_1005B981C(&qword_101A13818, &unk_10149BD60) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1005B981C(&qword_101A13810, &qword_10149BD58) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1005B981C(&qword_1019FBEE0, &qword_10149BD50) - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_100B8F7D4(a1, v1 + v4, v1 + v7, v10);
}

uint64_t sub_100B8FB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1005B981C(&qword_101A13830, &qword_10149BD78);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_100B8FC8C;

  return sub_100B8FECC();
}

uint64_t sub_100B8FC8C()
{

  return _swift_task_switch(sub_100B8FD88, 0, 0);
}

uint64_t sub_100B8FD88()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[3];
  sub_100B8C8C4(v2);
  (*(v3 + 16))(v1, v2, v4);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v4);
  SessionManager.transaction(_:)();

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100B8FECC()
{
  v1[2] = v0;
  sub_1005B981C(&qword_101A13838, &qword_10149BD88);
  v2 = swift_task_alloc();
  v1[3] = v2;
  v3 = sub_1005B981C(&qword_101A136B0, &qword_10149BA50);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v1[6] = *(v4 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_100B90048;

  return sub_100B8CD6C(v2);
}

uint64_t sub_100B90048()
{

  return _swift_task_switch(sub_100B90144, 0, 0);
}

uint64_t sub_100B90144()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100B90844(v3);
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = *(v2 + 32);
    v6(v4, v3, v1);
    (*(v2 + 16))(v5, v4, v1);
    v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v8 = swift_allocObject();
    v6(v8 + v7, v5, v1);
    SessionManager.transaction(_:)();

    (*(v2 + 8))(v4, v1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100B902DC(uint64_t a1, uint64_t a2)
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static OS_os_log.crlAppAnalytics;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "update sessionData", 18, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480, &unk_10147B4A0);
  v4 = type metadata accessor for DataEventTrait();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146C6B0;
  (*(v5 + 104))(v7 + v6, enum case for DataEventTrait.unique(_:), v4);
  sub_100B8D2C4();
  AccessSessionManager.push<A>(_:traits:file:line:)();
}

uint64_t sub_100B904C4(uint64_t a1, uint64_t a2)
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static OS_os_log.crlAppAnalytics;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "update debugData", 16, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480, &unk_10147B4A0);
  v4 = type metadata accessor for DataEventTrait();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146C6B0;
  (*(v5 + 104))(v7 + v6, enum case for DataEventTrait.unique(_:), v4);
  sub_100011DE8();
  AccessSessionManager.push<A>(_:traits:file:line:)();
}

uint64_t sub_100B90684(uint64_t a1, uint64_t a2)
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static OS_os_log.crlAppAnalytics;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "update userData", 15, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480, &unk_10147B4A0);
  v4 = type metadata accessor for DataEventTrait();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146C6B0;
  (*(v5 + 104))(v7 + v6, enum case for DataEventTrait.unique(_:), v4);
  sub_100B8D318();
  AccessSessionManager.push<A>(_:traits:file:line:)();
}

uint64_t sub_100B90844(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A13838, &qword_10149BD88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B908D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1005B981C(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_100B9095C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100B90974(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100B9098C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_100B909D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B90A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100B90ACC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D710[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B90B54(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D710[v2]);
  return Hasher._finalize()();
}

unint64_t sub_100B90BB8()
{
  v1 = 0x6573616870;
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
    return 0x6E726574746170;
  }
}

uint64_t sub_100B90C14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B97450(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B90C90(uint64_t a1)
{
  v2 = sub_100B99308();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B90CCC(uint64_t a1)
{
  v2 = sub_100B99308();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B90D08(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v8 = sub_1005B981C(&qword_101A13B28, &qword_10149D510);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100020E58(a1, a1[3]);
  sub_100B99308();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  HIBYTE(v13) = 0;
  sub_1005B981C(&qword_101A13AF8, &qword_10149D4F0);
  sub_100B99D44(&qword_101A13B30, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = a3;
    HIBYTE(v13) = 2;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

void sub_100B90F5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1006709AC(*a1, *a2) & 1) != 0 && v2 == v4)
  {

    sub_100B3216C(v3, v5);
  }
}

void sub_100B90FDC(uint64_t a1@<X8>, void *a2@<X0>)
{
  v6 = sub_100B9756C(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_100B91034(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99FBC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B91088(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99FBC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B91108(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99FBC();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100B911EC(uint64_t a1)
{
  v2 = sub_100B99440();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

id sub_100B91238(uint64_t a1, float a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100776504(0, v3, 0);
    v5 = a1;
    v6 = _swiftEmptyArrayStorage[2];
    v7 = 32;
    do
    {
      v8 = *(v5 + v7);
      v9 = _swiftEmptyArrayStorage[3];
      if (v6 >= v9 >> 1)
      {
        sub_100776504((v9 > 1), v6 + 1, 1);
        v5 = a1;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[v6 + 4] = v8;
      v7 += 4;
      ++v6;
      --v3;
    }

    while (v3);
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPattern:&_swiftEmptyArrayStorage[4] count:_swiftEmptyArrayStorage[2] phase:a2];

  return v10;
}

unint64_t sub_100B91378@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B977E8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B91584(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B944A4();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100B915D8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7274537472616D73;
  }
}

uint64_t sub_100B91624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7274537472616D73 && a2 == 0xEF65707954656B6FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_100B9174C(uint64_t a1)
{
  v2 = sub_100B996B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B91788(uint64_t a1)
{
  v2 = sub_100B996B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B917C4(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_1005B981C(&qword_101A13B38, &qword_10149D518);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100020E58(a1, a1[3]);
  sub_100B996B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v16 = a3 & 1;
  v17 = 0;
  sub_1005B981C(&qword_101A13B10, &qword_10149D500);
  sub_100B99DB0(&qword_101A13B40, &qword_101A13B10, &qword_10149D500, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100B919C0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = a2[2];
  sub_100B944A4();
  if (static CRExtensible.== infix(_:_:)())
  {
    sub_100B3216C(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100B91A54@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100B977F8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100B91AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99F14();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B91B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99F14();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B91B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v10 = a5(a1, a2, a3, a4);
  v11 = a6();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v10, v11);
}

uint64_t sub_100B91C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99F14();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100B91CF4(uint64_t a1)
{
  v2 = sub_100B997E8();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

Swift::Int sub_100B91D64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D728[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B91DEC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D728[v2]);
  return Hasher._finalize()();
}

unint64_t sub_100B91E50()
{
  v1 = 0x657079546B6E69;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6874646977;
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

uint64_t sub_100B91ED4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B97A2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B91F50(uint64_t a1)
{
  v2 = sub_100B99A58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B91F8C(uint64_t a1)
{
  v2 = sub_100B99A58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B91FC8(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A13B48, qword_10149D520);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100B99A58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 24);
    v10[15] = 3;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100B921DC(float *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = *(a1 + 20);
  v4 = *(a1 + 3);
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  v7 = *(a2 + 24);
  v8 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v2 == v5)
  {
    if (v3 == 2)
    {
      if (v6 != 2)
      {
        return;
      }
    }

    else if (v6 == 2 || ((v6 ^ v3) & 1) != 0)
    {
      return;
    }

    sub_100B3216C(v4, v7);
  }
}

double sub_100B922A8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100B97B9C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100B92318(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99E6C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B9236C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99E6C();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B923C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B998F0();
  v7 = sub_100B99EC0();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100B92430(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B99E6C();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100B92514(uint64_t a1)
{
  v2 = sub_100B99B90();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100B92740(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B94320();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100B92974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B94374();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100B92AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v10 = a5(a1, a2, a3, a4);
  v11 = a6();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v10, v11);
}

uint64_t sub_100B92B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  a4();
  a5();
  return CRValue<>.init(from:)();
}

uint64_t sub_100B92C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  a4();
  a5();
  return CRValue<>.encode(to:)();
}

uint64_t sub_100B92CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v6 = a3(a1, a2);
  v7 = a4();

  return CRValue<>.minEncodingVersion.getter(a1, v6, v7, &protocol witness table for Int);
}

uint64_t sub_100B92D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B943C8();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100B92DDC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7274537472616D73;
    v6 = 0xD000000000000016;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6D694C726574696DLL;
    if (a1 != 5)
    {
      v7 = 0x6E726574746170;
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
    v1 = 1701869940;
    v2 = 0x6874646977;
    v3 = 7364963;
    if (a1 != 3)
    {
      v3 = 1852403562;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x726F6C6F63;
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

Swift::Int sub_100B92F38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D748[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B92FC0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149D748[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100B9300C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B97E30(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B93058@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B97E54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B93098@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B97E30(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100B930FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static CodingKey<>.intCases.getter(a1, a2, v7, v8);
}

uint64_t sub_100B93168(uint64_t a1)
{
  v2 = sub_100B93CD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B931A4(uint64_t a1)
{
  v2 = sub_100B93CD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B931E4(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A13920, &qword_10149C1C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B93CD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v19 = *v3;
  BYTE8(v19) = *(v3 + 8);
  LOBYTE(v17[0]) = 0;
  sub_1005B981C(&qword_101A138D8, &qword_10149C1A0);
  sub_100B99DB0(&qword_101A13928, &qword_101A138D8, &qword_10149C1A0, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 64);
    v10 = *(v3 + 32);
    v26 = *(v3 + 48);
    v27 = v9;
    v11 = *(v3 + 64);
    v28 = *(v3 + 80);
    v12 = *(v3 + 32);
    v25[0] = *(v3 + 16);
    v25[1] = v12;
    v21 = v26;
    v22 = v11;
    v23 = *(v3 + 80);
    v29 = *(v3 + 96);
    v24 = *(v3 + 96);
    v19 = v25[0];
    v20 = v10;
    v31 = 1;
    sub_10074A990(v25, v17);
    sub_1008B28D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[2] = v21;
    v17[3] = v22;
    v17[4] = v23;
    v18 = v24;
    v17[0] = v19;
    v17[1] = v20;
    sub_1008B2660(v17);
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v15 = *(v3 + 112);
    BYTE8(v15) = *(v3 + 120);
    v30 = 3;
    sub_1005B981C(&qword_101A138E8, &qword_10149C1A8);
    sub_100B99DB0(&qword_101A13930, &qword_101A138E8, &qword_10149C1A8, &protocol conformance descriptor for <> CRExtensible<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v15 = *(v3 + 128);
    BYTE8(v15) = *(v3 + 136);
    v30 = 4;
    sub_1005B981C(&qword_101A138F8, &unk_10149C1B0);
    sub_100B99DB0(&qword_101A13938, &qword_101A138F8, &unk_10149C1B0, &protocol conformance descriptor for <> CRExtensible<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 144);
    *&v16 = *(v3 + 160);
    v30 = 6;
    sub_100B98BB0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = *(v3 + 168);
    *&v16 = *(v3 + 184);
    v30 = 7;
    sub_100B98C04();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + 208);
    v15 = *(v3 + 192);
    v16 = v13;
    v30 = 8;
    sub_100B98C58();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v15 = *(v3 + 224);
    v30 = 9;
    sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B936F0(uint64_t a1)
{

  *(v1 + 224) = a1;
  return result;
}

uint64_t sub_100B9371C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  v17[12] = *(a1 + 192);
  v17[13] = v2;
  v18 = *(a1 + 224);
  v3 = *(a1 + 144);
  v17[8] = *(a1 + 128);
  v17[9] = v3;
  v4 = *(a1 + 176);
  v17[10] = *(a1 + 160);
  v17[11] = v4;
  v5 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v5;
  v6 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v6;
  v7 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v7;
  v8 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v8;
  v9 = *(a2 + 208);
  v19[12] = *(a2 + 192);
  v19[13] = v9;
  v20 = *(a2 + 224);
  v10 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v10;
  v11 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v11;
  v12 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v12;
  v13 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v13;
  v14 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v14;
  v15 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v15;
  return sub_100B931E0(v17, v19) & 1;
}

__n128 sub_100B937D0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100B98198(a2, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a1 + 192) = v11[12];
    *(a1 + 208) = v5;
    *(a1 + 224) = v12;
    v6 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v6;
    v7 = v11[11];
    *(a1 + 160) = v11[10];
    *(a1 + 176) = v7;
    v8 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v8;
    v9 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v9;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
    result = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_100B93878(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B98CAC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B938CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B98CAC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B93920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005FEA64();
  v7 = sub_100B98D00();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100B93990(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B98CAC();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100B93A74(uint64_t a1)
{
  v2 = sub_100B93E10();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100B93AC4()
{
  result = qword_101A13840;
  if (!qword_101A13840)
  {
    result = swift_getWitnessTable(byte_10149BE50, &type metadata for CRLStrokeData, v0, v1);
    atomic_store(result, &qword_101A13840);
  }

  return result;
}

unint64_t sub_100B93B20()
{
  result = qword_101A13848;
  if (!qword_101A13848)
  {
    result = swift_getWitnessTable(byte_10149BF40, &type metadata for CRLStrokeData, v0, v1);
    atomic_store(result, &qword_101A13848);
  }

  return result;
}

unint64_t sub_100B93B78()
{
  result = qword_101A13850;
  if (!qword_101A13850)
  {
    result = swift_getWitnessTable(byte_10149BF18, &type metadata for CRLStrokeData, v0, v1);
    atomic_store(result, &qword_101A13850);
  }

  return result;
}

unint64_t sub_100B93BD0()
{
  result = qword_101A13858;
  if (!qword_101A13858)
  {
    result = swift_getWitnessTable(byte_10149BFB0, &type metadata for CRLStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13858);
  }

  return result;
}

unint64_t sub_100B93C28()
{
  result = qword_101A13860;
  if (!qword_101A13860)
  {
    result = swift_getWitnessTable(byte_10149C0C8, &type metadata for CRLStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13860);
  }

  return result;
}

unint64_t sub_100B93C80()
{
  result = qword_101A13868;
  if (!qword_101A13868)
  {
    result = swift_getWitnessTable(byte_10149C090, &type metadata for CRLStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13868);
  }

  return result;
}

unint64_t sub_100B93CD8()
{
  result = qword_101A13870;
  if (!qword_101A13870)
  {
    result = swift_getWitnessTable("qy9", &type metadata for CRLStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13870);
  }

  return result;
}

unint64_t sub_100B93D30()
{
  result = qword_101A13878;
  if (!qword_101A13878)
  {
    result = swift_getWitnessTable(byte_10149C060, &type metadata for CRLStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13878);
  }

  return result;
}

unint64_t sub_100B93D88()
{
  result = qword_101A13880;
  if (!qword_101A13880)
  {
    result = swift_getWitnessTable(byte_10149C038, &type metadata for CRLStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13880);
  }

  return result;
}

unint64_t sub_100B93E10()
{
  result = qword_101A13898;
  if (!qword_101A13898)
  {
    result = swift_getWitnessTable(byte_10149BF68, &type metadata for CRLStrokeData, v0, v1);
    atomic_store(result, &qword_101A13898);
  }

  return result;
}

unint64_t sub_100B93E68()
{
  result = qword_101A138A0;
  if (!qword_101A138A0)
  {
    result = swift_getWitnessTable(byte_10149BEA8, &type metadata for CRLStrokeData, v0, v1);
    atomic_store(result, &qword_101A138A0);
  }

  return result;
}

uint64_t sub_100B93EBC(uint64_t a1, uint64_t a2)
{
  sub_100B94320();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_1008AFE44() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    goto LABEL_14;
  }

  sub_100B94374();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_100B943C8();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0 || *(a1 + 140) != *(a2 + 140))
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 144);
  v5 = *(a2 + 144);
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    v7 = *(a1 + 152);
    v6 = *(a1 + 160);
    v9 = *(a2 + 152);
    v8 = *(a2 + 160);
    if ((sub_1006709AC(v4, *(a2 + 144)) & 1) == 0)
    {
      goto LABEL_14;
    }

    if (*&v7 != *&v9)
    {
      goto LABEL_14;
    }

    sub_100B3216C(v6, v8);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v5)
  {
    goto LABEL_14;
  }

  v14 = *(a1 + 184);
  v15 = *(a2 + 184);
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_14;
    }

    sub_100B944A4();

    if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
    {

      goto LABEL_14;
    }

    sub_100B3216C(v14, v15);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v15)
  {
    goto LABEL_14;
  }

  v19 = *(a1 + 192);
  v18 = *(a1 + 200);
  v21 = *(a1 + 208);
  v20 = *(a1 + 216);
  v23 = *(a2 + 192);
  v22 = *(a2 + 200);
  v25 = *(a2 + 208);
  v24 = *(a2 + 216);
  if (!v18)
  {
    if (!v22)
    {
      goto LABEL_37;
    }

LABEL_33:
    sub_100B9441C(*(a2 + 192), *(a2 + 200), *(a2 + 208), *(a2 + 216));
    sub_100B9441C(v19, v18, v21, v20);
    sub_100B94460(v19, v18);
    v27 = v23;
    v28 = v22;
LABEL_39:
    sub_100B94460(v27, v28);
    goto LABEL_14;
  }

  if (!v22)
  {
    goto LABEL_33;
  }

  if ((v19 != v23 || v18 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v21 != *&v25)
  {
    goto LABEL_38;
  }

  v26 = v25 & 0xFF00000000;
  if ((v21 & 0xFF00000000) == 0x200000000)
  {
    if (v26 != 0x200000000)
    {
LABEL_38:
      sub_100B9441C(v23, v22, v25, v24);
      sub_100B9441C(v19, v18, v21, v20);

      v27 = v19;
      v28 = v18;
      goto LABEL_39;
    }
  }

  else if (v26 == 0x200000000 || ((v21 & &_mh_execute_header) == 0) == (BYTE4(v25) & 1))
  {
    goto LABEL_38;
  }

  sub_100B9441C(v23, v22, v25, v24);
  sub_100B9441C(v19, v18, v21, v20);
  sub_100B3216C(v20, v24);
  v30 = v29;

  sub_100B94460(v19, v18);
  if (v30)
  {
LABEL_37:
    sub_100B3216C(*(a1 + 224), *(a2 + 224));
    return v12 & 1;
  }

LABEL_14:
  v12 = 0;
  return v12 & 1;
}

unint64_t sub_100B94320()
{
  result = qword_101A138A8;
  if (!qword_101A138A8)
  {
    result = swift_getWitnessTable("9a9", &type metadata for CRLStrokeData.StrokeType, v0, v1);
    atomic_store(result, &qword_101A138A8);
  }

  return result;
}

unint64_t sub_100B94374()
{
  result = qword_101A138B0;
  if (!qword_101A138B0)
  {
    result = swift_getWitnessTable("qa9", &type metadata for CRLStrokeData.CapType, v0, v1);
    atomic_store(result, &qword_101A138B0);
  }

  return result;
}

unint64_t sub_100B943C8()
{
  result = qword_101A138B8;
  if (!qword_101A138B8)
  {
    result = swift_getWitnessTable(byte_10149D440, &type metadata for CRLStrokeData.JoinType, v0, v1);
    atomic_store(result, &qword_101A138B8);
  }

  return result;
}

void sub_100B9441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_100B94460(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100B944A4()
{
  result = qword_101A138C0;
  if (!qword_101A138C0)
  {
    result = swift_getWitnessTable(byte_10149D408, &type metadata for CRLSmartStrokeData.SmartStrokeType, v0, v1);
    atomic_store(result, &qword_101A138C0);
  }

  return result;
}

id sub_100B944F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A138C8, &qword_10149C190);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (!*(a1 + 200) || (v7 = *(a1 + 208), v8 = *(a1 + 212), , PKInkingTool.InkType.init(rawValue:)(), v9 = type metadata accessor for PKInkingTool.InkType(), v10 = (*(*(v9 - 8) + 48))(v6, 1, v9), sub_100B95B9C(v6), v10 == 1))
  {
    if (!*(a1 + 184) || (*(a1 + 176) & 1) != 0)
    {
      goto LABEL_8;
    }

    v11 = *(a1 + 168);
    if (v11 == 5)
    {
      v12 = &PKInkTypeCrayon;
      return [objc_allocWithZone(CRLPencilKitInkStroke) initWithInkType:*v12 color:a2 adjustedWidth:*(a1 + 104)];
    }

    if (v11 == 4)
    {
      v12 = &PKInkTypePencil;
    }

    else
    {
LABEL_8:
      v12 = &PKInkTypeMonoline;
    }

    return [objc_allocWithZone(CRLPencilKitInkStroke) initWithInkType:*v12 color:a2 adjustedWidth:*(a1 + 104)];
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_allocWithZone(CRLPencilKitInkStroke) initWithInkType:v14 color:a2 adjustedWidth:v8 & 1 isFountainPenInkV2:v7];

  return v15;
}

id sub_100B946C8(uint64_t a1, char a2)
{
  sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
  v3 = *(a1 + 64);
  v140[2] = *(a1 + 48);
  v140[3] = v3;
  v140[4] = *(a1 + 80);
  v141 = *(a1 + 96);
  v4 = *(a1 + 32);
  v140[0] = *(a1 + 16);
  v140[1] = v4;
  sub_10074A990(v140, v139);
  v138 = sub_1008B0490(v140);
  v5 = *(a1 + 104);
  if ((*(a1 + 120) & 1) == 0)
  {
    v133 = *(a1 + 112);
    if ((*(a1 + 136) & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v30 = objc_opt_self();
    v31 = [v30 _atomicIncrementAssertCount];
    v139[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v139, "Tried to decode unknown line join value. Falling back to unarchiving miter.", 75, 2u);
    StaticString.description.getter("createStroke(unarchiving:forceStrokeToPencilKit:)", 49, 2);
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
    v33 = String._bridgeToObjectiveC()();

    v34 = [v33 lastPathComponent];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v31;
    v40 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v40;
    v41 = sub_1005CF04C();
    *(inited + 104) = v41;
    *(inited + 72) = v32;
    *(inited + 136) = &type metadata for String;
    v42 = sub_1000053B0();
    *(inited + 112) = v35;
    *(inited + 120) = v37;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v42;
    *(inited + 152) = 318;
    v43 = v139[0];
    *(inited + 216) = v40;
    *(inited + 224) = v41;
    *(inited + 192) = v43;
    v44 = v32;
    v45 = v43;
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v47, "Tried to decode unknown line join value. Falling back to unarchiving miter.", 75, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v48 = swift_allocObject();
    v48[2] = 8;
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = 0;
    v49 = __VaListBuilder.va_list()();
    StaticString.description.getter("createStroke(unarchiving:forceStrokeToPencilKit:)", 49, 2);
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Tried to decode unknown line join value. Falling back to unarchiving miter.", 75, 2);
    v52 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v50 file:v51 lineNumber:318 isFatal:0 format:v52 args:v49];

    v29 = 0;
    if (a2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = objc_opt_self();
  v7 = [v6 _atomicIncrementAssertCount];
  v139[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v139, "Tried to decode unknown line cap value. Falling back to unarchiving butt.", 73, 2u);
  StaticString.description.getter("createStroke(unarchiving:forceStrokeToPencilKit:)", 49, 2);
  v8 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
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
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_10146CA70;
  *(v15 + 56) = &type metadata for Int32;
  *(v15 + 64) = &protocol witness table for Int32;
  *(v15 + 32) = v7;
  v16 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v15 + 96) = v16;
  v17 = sub_1005CF04C();
  *(v15 + 104) = v17;
  *(v15 + 72) = v8;
  *(v15 + 136) = &type metadata for String;
  v18 = sub_1000053B0();
  *(v15 + 112) = v11;
  *(v15 + 120) = v13;
  *(v15 + 176) = &type metadata for UInt;
  *(v15 + 184) = &protocol witness table for UInt;
  *(v15 + 144) = v18;
  *(v15 + 152) = 303;
  v19 = v139[0];
  *(v15 + 216) = v16;
  *(v15 + 224) = v17;
  *(v15 + 192) = v19;
  v20 = v8;
  v21 = v19;
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v15);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v14, &_mh_execute_header, v23, "Tried to decode unknown line cap value. Falling back to unarchiving butt.", 73, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v24 = swift_allocObject();
  v24[2] = 8;
  v24[3] = 0;
  v24[4] = 0;
  v24[5] = 0;
  v25 = __VaListBuilder.va_list()();
  StaticString.description.getter("createStroke(unarchiving:forceStrokeToPencilKit:)", 49, 2);
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to decode unknown line cap value. Falling back to unarchiving butt.", 73, 2);
  v28 = String._bridgeToObjectiveC()();

  [v6 handleFailureInFunction:v26 file:v27 lineNumber:303 isFatal:0 format:v28 args:v25];

  v133 = 0;
  if (*(a1 + 136))
  {
    goto LABEL_8;
  }

LABEL_5:
  v29 = *(a1 + 128);
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_11:
  if (*(a1 + 200))
  {
LABEL_12:
    v53 = v138;
    v54 = sub_100B944F8(a1, v138);
    goto LABEL_13;
  }

  v56 = v5;
  v57 = *(a1 + 140);
  if (*(a1 + 184))
  {
    if ((*(a1 + 176) & 1) == 0)
    {
      if (*(a1 + 168) <= 4u || *(a1 + 168) == 5)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = [objc_opt_self() solidPattern];
        v106 = objc_allocWithZone(CRLBrushStroke);
        v107 = String._bridgeToObjectiveC()();

        v54 = [v106 initWithName:v107 color:v138 width:v133 cap:v29 join:v53 pattern:v56 miterLimit:v57];

        goto LABEL_13;
      }

      v108 = [objc_opt_self() solidPattern];
      v109 = CRLCalligraphyStroke;
LABEL_34:
      v54 = [objc_allocWithZone(v109) initWithColor:v138 width:v133 cap:v29 join:v108 pattern:v56 miterLimit:v57];

      v53 = v108;
      goto LABEL_13;
    }

    v135 = objc_opt_self();
    v58 = [v135 _atomicIncrementAssertCount];
    v139[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v139, "Tried to decode unknown smart stroke type. Falling back to unarchiving plain stroke.", 84, 2u);
    StaticString.description.getter("createStroke(unarchiving:forceStrokeToPencilKit:)", 49, 2);
    v59 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
    v60 = String._bridgeToObjectiveC()();

    v61 = [v60 lastPathComponent];

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v65 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_10146CA70;
    *(v66 + 56) = &type metadata for Int32;
    *(v66 + 64) = &protocol witness table for Int32;
    *(v66 + 32) = v58;
    v67 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v66 + 96) = v67;
    v68 = sub_1005CF04C();
    *(v66 + 104) = v68;
    *(v66 + 72) = v59;
    *(v66 + 136) = &type metadata for String;
    v69 = sub_1000053B0();
    *(v66 + 112) = v62;
    *(v66 + 120) = v64;
    *(v66 + 176) = &type metadata for UInt;
    *(v66 + 184) = &protocol witness table for UInt;
    *(v66 + 144) = v69;
    *(v66 + 152) = 350;
    v70 = v139[0];
    *(v66 + 216) = v67;
    *(v66 + 224) = v68;
    *(v66 + 192) = v70;
    v71 = v59;
    v72 = v70;
    v73 = static os_log_type_t.error.getter();
    sub_100005404(v65, &_mh_execute_header, v73, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v66);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v74 = static os_log_type_t.error.getter();
    sub_100005404(v65, &_mh_execute_header, v74, "Tried to decode unknown smart stroke type. Falling back to unarchiving plain stroke.", 84, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v75 = swift_allocObject();
    v75[2] = 8;
    v75[3] = 0;
    v75[4] = 0;
    v75[5] = 0;
    v76 = __VaListBuilder.va_list()();
    StaticString.description.getter("createStroke(unarchiving:forceStrokeToPencilKit:)", 49, 2);
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
    v78 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Tried to decode unknown smart stroke type. Falling back to unarchiving plain stroke.", 84, 2);
    v79 = String._bridgeToObjectiveC()();

    [v135 handleFailureInFunction:v77 file:v78 lineNumber:350 isFatal:0 format:v79 args:v76];

    v80 = [objc_opt_self() solidPattern];
LABEL_33:
    v108 = v80;
    v109 = CRLStroke;
    goto LABEL_34;
  }

  if (*(a1 + 8))
  {
    v136 = objc_opt_self();
    v81 = [v136 _atomicIncrementAssertCount];
    v139[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v139, "Tried to decode unknown stroke type. Falling back to unarchiving solid.", 71, 2u);
    StaticString.description.getter("createStroke(unarchiving:forceStrokeToPencilKit:)", 49, 2);
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
    v83 = String._bridgeToObjectiveC()();

    v84 = [v83 lastPathComponent];

    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v88 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_10146CA70;
    *(v89 + 56) = &type metadata for Int32;
    *(v89 + 64) = &protocol witness table for Int32;
    *(v89 + 32) = v81;
    v90 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v89 + 96) = v90;
    v91 = sub_1005CF04C();
    *(v89 + 104) = v91;
    *(v89 + 72) = v82;
    *(v89 + 136) = &type metadata for String;
    v92 = sub_1000053B0();
    *(v89 + 112) = v85;
    *(v89 + 120) = v87;
    *(v89 + 176) = &type metadata for UInt;
    *(v89 + 184) = &protocol witness table for UInt;
    *(v89 + 144) = v92;
    *(v89 + 152) = 373;
    v93 = v139[0];
    *(v89 + 216) = v90;
    *(v89 + 224) = v91;
    *(v89 + 192) = v93;
    v94 = v82;
    v95 = v93;
    v96 = static os_log_type_t.error.getter();
    sub_100005404(v88, &_mh_execute_header, v96, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v89);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v97 = static os_log_type_t.error.getter();
    sub_100005404(v88, &_mh_execute_header, v97, "Tried to decode unknown stroke type. Falling back to unarchiving solid.", 71, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v98 = swift_allocObject();
    v98[2] = 8;
    v98[3] = 0;
    v98[4] = 0;
    v98[5] = 0;
    v99 = __VaListBuilder.va_list()();
    StaticString.description.getter("createStroke(unarchiving:forceStrokeToPencilKit:)", 49, 2);
    v100 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
    v101 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Tried to decode unknown stroke type. Falling back to unarchiving solid.", 71, 2);
    v102 = String._bridgeToObjectiveC()();

    [v136 handleFailureInFunction:v100 file:v101 lineNumber:373 isFatal:0 format:v102 args:v99];

    v80 = [objc_opt_self() solidPattern];
    goto LABEL_33;
  }

  if (!*a1)
  {
    v80 = [objc_opt_self() solidPattern];
    goto LABEL_33;
  }

  if (*a1 != 1)
  {
    v80 = [objc_opt_self() emptyPattern];
    goto LABEL_33;
  }

  v103 = *(a1 + 144);
  if (v103)
  {
    v104 = *(a1 + 152);
    sub_100006370(0, &qword_101A05138, off_10182F9A0);

    v105 = sub_100B91238(v103, v104);
  }

  else
  {
    v137 = objc_opt_self();
    v110 = [v137 _atomicIncrementAssertCount];
    v139[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v139, "Stroke with pattern type should have pattern data. Falling back to unarchiving solid pattern.", 93, 2u);
    StaticString.description.getter("createStroke(unarchiving:forceStrokeToPencilKit:)", 49, 2);
    v111 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
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
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_10146CA70;
    *(v118 + 56) = &type metadata for Int32;
    *(v118 + 64) = &protocol witness table for Int32;
    *(v118 + 32) = v110;
    v119 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v118 + 96) = v119;
    v120 = sub_1005CF04C();
    *(v118 + 104) = v120;
    *(v118 + 72) = v111;
    *(v118 + 136) = &type metadata for String;
    v121 = sub_1000053B0();
    *(v118 + 112) = v114;
    *(v118 + 120) = v116;
    *(v118 + 176) = &type metadata for UInt;
    *(v118 + 184) = &protocol witness table for UInt;
    *(v118 + 144) = v121;
    *(v118 + 152) = 364;
    v122 = v139[0];
    *(v118 + 216) = v119;
    *(v118 + 224) = v120;
    *(v118 + 192) = v122;
    v123 = v111;
    v124 = v122;
    v125 = static os_log_type_t.error.getter();
    sub_100005404(v117, &_mh_execute_header, v125, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v118);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v126 = static os_log_type_t.error.getter();
    sub_100005404(v117, &_mh_execute_header, v126, "Stroke with pattern type should have pattern data. Falling back to unarchiving solid pattern.", 93, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v127 = swift_allocObject();
    v127[2] = 8;
    v127[3] = 0;
    v127[4] = 0;
    v127[5] = 0;
    v128 = __VaListBuilder.va_list()();
    StaticString.description.getter("createStroke(unarchiving:forceStrokeToPencilKit:)", 49, 2);
    v129 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
    v130 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Stroke with pattern type should have pattern data. Falling back to unarchiving solid pattern.", 93, 2);
    v131 = String._bridgeToObjectiveC()();

    [v137 handleFailureInFunction:v129 file:v130 lineNumber:364 isFatal:0 format:v131 args:v128];

    v105 = [objc_opt_self() solidPattern];
  }

  v132 = v105;
  v53 = v138;
  v54 = [objc_allocWithZone(CRLStroke) initWithColor:v138 width:v133 cap:v29 join:v105 pattern:v56 miterLimit:v57];

LABEL_13:
  return v54;
}

uint64_t sub_100B95B9C(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A138C8, &qword_10149C190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100B95C04(void *a1)
{
  v2 = [a1 pattern];
  v3 = [a1 count];
  if (v3)
  {
    v4 = v3;
    result = sub_100B35838(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = result;
    v7 = 0x8000000000000000;
    while (v7)
    {
      v8 = v2[v7];
      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_100B35838((v9 > 1), v10 + 1, 1, v6);
        v6 = result;
      }

      v11 = v8;
      *(v6 + 2) = v10 + 1;
      *&v6[4 * v10 + 32] = v11;
      ++v7;
      if (!--v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_9:
    [a1 phase];
    return v6;
  }

  return result;
}

uint64_t sub_100B95D10(void *a1)
{
  v2 = [a1 strokeName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v6 == v5)
  {

    return 0;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {

    return 0;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v10 == v5)
  {

    return 1;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {

    goto LABEL_15;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v13 == v5)
  {

    return 2;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {

    return 2;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v15 == v5)
  {

    return 3;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {

    return 3;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v17 == v5)
  {

    return 4;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {

    return 4;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v19 == v5)
  {

    return 5;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {

    return 5;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v21 == v5)
  {

    return 6;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {

    return 6;
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v24 = [a1 strokeName];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(inited + 56) = &type metadata for String;
  v28 = sub_1000053B0();
  *(inited + 32) = v25;
  v67 = inited + 32;
  v29 = v28;
  *(inited + 64) = v28;
  *(inited + 40) = v27;
  v65 = objc_opt_self();
  LODWORD(v30) = [v65 _atomicIncrementAssertCount];
  v68 = [objc_allocWithZone(NSString) init];
  v66 = inited;
  sub_100604538(inited, &v68, "Unknown smart stroke type %@. Falling back to archiving dryBrush.", 65, 2u);
  StaticString.description.getter("init(archiving:)", 16, 2);
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
  v32 = String._bridgeToObjectiveC()();

  v33 = [v32 lastPathComponent];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_74;
  }

LABEL_44:
  v37 = static OS_os_log.crlAssert;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_10146CA70;
  *(v38 + 56) = &type metadata for Int32;
  *(v38 + 64) = &protocol witness table for Int32;
  *(v38 + 32) = v30;
  v39 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v38 + 96) = v39;
  v40 = sub_1005CF04C();
  *(v38 + 72) = v31;
  *(v38 + 136) = &type metadata for String;
  *(v38 + 144) = v29;
  *(v38 + 104) = v40;
  *(v38 + 112) = v34;
  *(v38 + 120) = v36;
  *(v38 + 176) = &type metadata for UInt;
  *(v38 + 184) = &protocol witness table for UInt;
  *(v38 + 152) = 102;
  v41 = v68;
  *(v38 + 216) = v39;
  *(v38 + 224) = v40;
  *(v38 + 192) = v41;
  v42 = v31;
  v43 = v41;
  v44 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v38);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v45 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v45, "Unknown smart stroke type %@. Falling back to archiving dryBrush.", 65, 2, v66);

  type metadata accessor for __VaListBuilder();
  v31 = swift_allocObject();
  v31[2] = 8;
  v31[3] = 0;
  v46 = v31 + 3;
  v31[4] = 0;
  v31[5] = 0;
  v36 = *(v66 + 16);
  if (v36)
  {
    v47 = 0;
    while (1)
    {
      v48 = (v67 + 40 * v47);
      v34 = v48[3];
      v30 = v48[4];
      sub_100020E58(v48, v34);
      v49 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v29 = *v46;
      v50 = *(v49 + 16);
      v51 = __OFADD__(*v46, v50);
      v52 = *v46 + v50;
      if (v51)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        swift_once();
        goto LABEL_44;
      }

      v53 = v31[4];
      if (v53 >= v52)
      {
        goto LABEL_61;
      }

      if (v53 + 0x4000000000000000 < 0)
      {
        goto LABEL_72;
      }

      v34 = v31[5];
      if (2 * v53 > v52)
      {
        v52 = 2 * v53;
      }

      v31[4] = v52;
      if ((v52 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_73;
      }

      v30 = v49;
      v54 = swift_slowAlloc();
      v55 = v54;
      v31[5] = v54;
      if (v34)
      {
        break;
      }

      v49 = v30;
      if (!v55)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_62:
      v57 = *(v49 + 16);
      if (v57)
      {
        v58 = (v49 + 32);
        v59 = *v46;
        while (1)
        {
          v60 = *v58++;
          *&v55[8 * v59] = v60;
          v59 = *v46 + 1;
          if (__OFADD__(*v46, 1))
          {
            break;
          }

          *v46 = v59;
          if (!--v57)
          {
            goto LABEL_46;
          }
        }

        __break(1u);
        goto LABEL_71;
      }

LABEL_46:

      if (++v47 == v36)
      {
        goto LABEL_69;
      }
    }

    if (v54 != v34 || v54 >= &v34[8 * v29])
    {
      memmove(v54, v34, 8 * v29);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v49 = v30;
LABEL_61:
    v55 = v31[5];
    if (!v55)
    {
      goto LABEL_68;
    }

    goto LABEL_62;
  }

LABEL_69:
  v61 = __VaListBuilder.va_list()();
  StaticString.description.getter("init(archiving:)", 16, 2);
  v62 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
  v63 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unknown smart stroke type %@. Falling back to archiving dryBrush.", 65, 2);
  v64 = String._bridgeToObjectiveC()();

  [v65 handleFailureInFunction:v62 file:v63 lineNumber:102 isFatal:0 format:v64 args:v61];

  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_15:

  return 1;
}

float sub_100B965E4@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 pattern];
  v5 = [v4 patternType];

  if (v5)
  {
    if (v5 == 2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v132 = 0;
      v127 = 2;
    }

    else if (v5 == 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v127 = 0;
      v132 = 0;
    }

    else
    {
      v128 = objc_opt_self();
      v13 = [v128 _atomicIncrementAssertCount];
      *&v133[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v133, "Unknown stroke pattern type. Falling back to archiving solid.", 61, 2u);
      StaticString.description.getter("init(archiving:)", 16, 2);
      v14 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
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
      v22 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
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
      *(inited + 152) = 236;
      v25 = *&v133[0];
      *(inited + 216) = v22;
      *(inited + 224) = v23;
      *(inited + 192) = v25;
      v26 = v14;
      v27 = v25;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v29, "Unknown stroke pattern type. Falling back to archiving solid.", 61, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v30 = swift_allocObject();
      v30[2] = 8;
      v30[3] = 0;
      v30[4] = 0;
      v30[5] = 0;
      v31 = __VaListBuilder.va_list()();
      StaticString.description.getter("init(archiving:)", 16, 2);
      v32 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Unknown stroke pattern type. Falling back to archiving solid.", 61, 2);
      v34 = String._bridgeToObjectiveC()();

      [v128 handleFailureInFunction:v32 file:v33 lineNumber:236 isFatal:0 format:v34 args:v31];

      v6 = 0;
      v7 = 0;
      v8 = 0;
      v127 = 0;
      v132 = 0;
    }
  }

  else
  {
    v132 = 0;
    v9 = [a1 pattern];
    v6 = sub_100B95C04(v9);
    v11 = v10;
    v8 = v12;

    v7 = v11;
    v127 = 1;
  }

  sub_1008B2170([a1 color], v133);
  *(&v131[2] + 7) = v133[2];
  *(&v131[3] + 7) = v133[3];
  *(&v131[4] + 7) = v133[4];
  *(&v131[5] + 7) = v134;
  *(v131 + 7) = v133[0];
  *(&v131[1] + 7) = v133[1];
  [a1 widthForDefaultAndDowngradePersistence];
  v36 = v35;
  v37 = [a1 cap];
  if (v37 == 2)
  {
    v130 = 0;
    v125 = 2;
  }

  else if (v37 == 1)
  {
    v130 = 0;
    v125 = 1;
  }

  else if (v37)
  {
    v119 = v6;
    v122 = v7;
    v116 = v8;
    v126 = objc_opt_self();
    v38 = [v126 _atomicIncrementAssertCount];
    v129 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v129, "Unknown stroke cap type. Falling back to archiving butt.", 56, 2u);
    StaticString.description.getter("init(archiving:)", 16, 2);
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
    v40 = String._bridgeToObjectiveC()();

    v41 = [v40 lastPathComponent];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v45 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_10146CA70;
    *(v46 + 56) = &type metadata for Int32;
    *(v46 + 64) = &protocol witness table for Int32;
    *(v46 + 32) = v38;
    v47 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v46 + 96) = v47;
    v48 = sub_1005CF04C();
    *(v46 + 104) = v48;
    *(v46 + 72) = v39;
    *(v46 + 136) = &type metadata for String;
    v49 = sub_1000053B0();
    *(v46 + 112) = v42;
    *(v46 + 120) = v44;
    *(v46 + 176) = &type metadata for UInt;
    *(v46 + 184) = &protocol witness table for UInt;
    *(v46 + 144) = v49;
    *(v46 + 152) = 252;
    v50 = v129;
    *(v46 + 216) = v47;
    *(v46 + 224) = v48;
    *(v46 + 192) = v50;
    v51 = v39;
    v52 = v50;
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v45, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v46);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v54 = static os_log_type_t.error.getter();
    sub_100005404(v45, &_mh_execute_header, v54, "Unknown stroke cap type. Falling back to archiving butt.", 56, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v55 = swift_allocObject();
    v55[2] = 8;
    v55[3] = 0;
    v55[4] = 0;
    v55[5] = 0;
    v56 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(archiving:)", 16, 2);
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
    v58 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unknown stroke cap type. Falling back to archiving butt.", 56, 2);
    v59 = String._bridgeToObjectiveC()();

    [v126 handleFailureInFunction:v57 file:v58 lineNumber:252 isFatal:0 format:v59 args:v56];

    v125 = 0;
    v130 = 0;
    v8 = v116;
    v6 = v119;
    v7 = v122;
  }

  else
  {
    v125 = 0;
    v130 = 0;
  }

  v60 = [a1 join];
  if (v60 == 2)
  {
    LOBYTE(v129) = 0;
    v61 = 2;
  }

  else if (v60 == 1)
  {
    LOBYTE(v129) = 0;
    v61 = 1;
  }

  else if (v60)
  {
    v120 = v6;
    v123 = v7;
    v117 = v8;
    v115 = objc_opt_self();
    v62 = [v115 _atomicIncrementAssertCount];
    v129 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v129, "Unknown stroke cap type. Falling back to archiving miter.", 57, 2u);
    StaticString.description.getter("init(archiving:)", 16, 2);
    v63 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
    v64 = String._bridgeToObjectiveC()();

    v65 = [v64 lastPathComponent];

    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v69 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_10146CA70;
    *(v70 + 56) = &type metadata for Int32;
    *(v70 + 64) = &protocol witness table for Int32;
    *(v70 + 32) = v62;
    v71 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v70 + 96) = v71;
    v72 = sub_1005CF04C();
    *(v70 + 104) = v72;
    *(v70 + 72) = v63;
    *(v70 + 136) = &type metadata for String;
    v73 = sub_1000053B0();
    *(v70 + 112) = v66;
    *(v70 + 120) = v68;
    *(v70 + 176) = &type metadata for UInt;
    *(v70 + 184) = &protocol witness table for UInt;
    *(v70 + 144) = v73;
    *(v70 + 152) = 264;
    v74 = v129;
    *(v70 + 216) = v71;
    *(v70 + 224) = v72;
    *(v70 + 192) = v74;
    v75 = v63;
    v76 = v74;
    v77 = static os_log_type_t.error.getter();
    sub_100005404(v69, &_mh_execute_header, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v70);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v78 = static os_log_type_t.error.getter();
    sub_100005404(v69, &_mh_execute_header, v78, "Unknown stroke cap type. Falling back to archiving miter.", 57, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v79 = swift_allocObject();
    v79[2] = 8;
    v79[3] = 0;
    v79[4] = 0;
    v79[5] = 0;
    v80 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(archiving:)", 16, 2);
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLStrokeData.swift", 83, 2);
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unknown stroke cap type. Falling back to archiving miter.", 57, 2);
    v83 = String._bridgeToObjectiveC()();

    [v115 handleFailureInFunction:v81 file:v82 lineNumber:264 isFatal:0 format:v83 args:v80];

    v61 = 0;
    LOBYTE(v129) = 0;
    v8 = v117;
    v6 = v120;
    v7 = v123;
  }

  else
  {
    v61 = 0;
    LOBYTE(v129) = 0;
  }

  [a1 miterLimit];
  v85 = v84;
  objc_opt_self();
  v86 = swift_dynamicCastObjCClass();
  if (v86)
  {
    v87 = sub_100B95D10(v86);
    v90 = v89;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
  }

  else
  {
    v124 = v7;
    objc_opt_self();
    v95 = swift_dynamicCastObjCClass();
    if (v95)
    {
      v96 = v95;
      v118 = v8;
      v121 = v6;
      v97 = a1;
      v98 = [v96 inkType];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v99;

      [v96 width];
      v101 = v100;
      LODWORD(v98) = [v96 isFountainPenInkV2];

      v102 = &_mh_execute_header;
      if (!v98)
      {
        v102 = 0;
      }

      v93 = v102 | LODWORD(v101);
      v103 = [v96 fallbackSmartStrokeForPersistence];
      if (v103)
      {
        v104 = sub_100B95D10(v103);
        v90 = v105;
        v107 = v106;

        v88 = v107;
        v87 = v104;
      }

      else
      {

        v87 = 0;
        v90 = 0;
        v88 = 0;
      }

      v94 = _swiftEmptyDictionarySingleton;
      v8 = v118;
      v6 = v121;
    }

    else
    {

      v87 = 0;
      v90 = 0;
      v88 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
    }

    v7 = v124;
  }

  v108 = v131[3];
  *(a2 + 41) = v131[2];
  *(a2 + 57) = v108;
  *(a2 + 73) = v131[4];
  *(a2 + 88) = *(&v131[4] + 15);
  v109 = v131[1];
  *(a2 + 9) = v131[0];
  result = v85;
  v111 = v36;
  v112 = v132;
  v113 = v130;
  v114 = v129;
  *a2 = v127;
  *(a2 + 8) = v112;
  *(a2 + 25) = v109;
  *(a2 + 104) = v111;
  *(a2 + 112) = v125;
  *(a2 + 120) = v113;
  *(a2 + 128) = v61;
  *(a2 + 136) = v114;
  *(a2 + 140) = result;
  *(a2 + 144) = v6;
  *(a2 + 152) = v7;
  *(a2 + 160) = v8;
  *(a2 + 168) = v87;
  *(a2 + 176) = v90 & 1;
  *(a2 + 184) = v88;
  *(a2 + 192) = v91;
  *(a2 + 200) = v92;
  *(a2 + 208) = v93;
  *(a2 + 216) = v94;
  *(a2 + 224) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100B97450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E726574746170 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573616870 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

float sub_100B9756C(void *a1)
{
  v2 = sub_1005B981C(&qword_101A13AF0, &qword_10149D4E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100B99308();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1005B981C(&qword_101A13AF8, &qword_10149D4F0);
  v10 = 0;
  sub_100B99D44(&qword_101A13B00, &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LOBYTE(v11) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = v6;
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v10 = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v7;
}

unint64_t sub_100B977E8(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_100B977F8(void *a1)
{
  v2 = sub_1005B981C(&qword_101A13B08, &qword_10149D4F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100020E58(a1, a1[3]);
  sub_100B996B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1005B981C(&qword_101A13B10, &qword_10149D500);
  v9 = 0;
  sub_100B99DB0(&qword_101A13B18, &qword_101A13B10, &qword_10149D500, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v9 = 1;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v6;
}

uint64_t sub_100B97A2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546B6E69 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010158DF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

uint64_t sub_100B97B9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A13B20, &qword_10149D508);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100B99A58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v23 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v21 = 2;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v19 = 3;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v20;
  result = sub_100005070(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 20) = v18;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_100B97E30(uint64_t a1)
{
  if ((a1 + 1) > 9)
  {
    return 10;
  }

  else
  {
    return byte_10149D798[a1 + 1];
  }
}

uint64_t sub_100B97E54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7364963 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852403562 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D694C726574696DLL && a2 == 0xEA00000000007469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E726574746170 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7274537472616D73 && a2 == 0xEF61746144656B6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010158DF70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_100B98198@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = sub_1005B981C(&qword_101A138D0, &qword_10149C198);
  v5 = *(v81 - 8);
  __chkstk_darwin(v81);
  v7 = &v26 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100B93CD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v38 = v5;
  sub_1005B981C(&qword_101A138D8, &qword_10149C1A0);
  LOBYTE(v39[0]) = 0;
  sub_100B99DB0(&qword_101A138E0, &qword_101A138D8, &qword_10149C1A0, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = *v48;
  v80 = v48[8];
  v70 = 1;
  sub_1008B287C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v8;
  *&v79[39] = v73;
  *&v79[55] = v74;
  *&v79[71] = v75;
  *&v79[7] = v71;
  *&v79[87] = v76;
  *&v79[23] = v72;
  v48[0] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  sub_1005B981C(&qword_101A138E8, &qword_10149C1A8);
  LOBYTE(v39[0]) = 3;
  sub_100B99DB0(&qword_101A138F0, &qword_101A138E8, &qword_10149C1A8, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = *v48;
  v78 = v48[8];
  sub_1005B981C(&qword_101A138F8, &unk_10149C1B0);
  LOBYTE(v39[0]) = 4;
  sub_100B99DB0(&qword_101A13900, &qword_101A138F8, &unk_10149C1B0, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = *v48;
  v77 = v48[8];
  v48[0] = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v39[0]) = 6;
  sub_100B98A4C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = *v48;
  v36 = *&v48[16];
  LOBYTE(v39[0]) = 7;
  sub_100B98AA0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = *&v48[8];
  v32 = *v48;
  v13 = *&v48[16];
  LOBYTE(v39[0]) = 8;
  sub_100B98AF4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29 = *v48;
  v30 = *&v48[16];
  v28 = *&v48[24];
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v68 = 9;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v38 + 8))(v7, v81);
  *(&v39[2] + 9) = *&v79[32];
  *(&v39[3] + 9) = *&v79[48];
  *(&v39[4] + 9) = *&v79[64];
  *(&v39[5] + 8) = *&v79[79];
  *(v39 + 9) = *v79;
  v26 = v69;
  *&v39[0] = v37;
  LODWORD(v81) = v80;
  BYTE8(v39[0]) = v80;
  *(&v39[1] + 9) = *&v79[16];
  DWORD2(v39[6]) = v10;
  v14 = v36;
  *&v40 = v35;
  LODWORD(v38) = v78;
  BYTE8(v40) = v78;
  v15 = *(&v33 + 1);
  *&v41 = v34;
  v27 = v77;
  BYTE8(v41) = v77;
  HIDWORD(v41) = v12;
  v16 = v33;
  v42 = v33;
  *&v43 = v36;
  *(&v43 + 1) = v32;
  *&v44 = v31;
  *(&v44 + 1) = v13;
  v45 = v29;
  v17 = v28;
  *&v46 = v30;
  *(&v46 + 1) = v28;
  v47 = v69;
  sub_100B98B48(v39, v48);
  sub_100005070(a1);
  v49 = *&v79[32];
  v50 = *&v79[48];
  *v51 = *&v79[64];
  *&v51[15] = *&v79[79];
  *&v48[9] = *v79;
  *v48 = v37;
  v48[8] = v81;
  *&v48[25] = *&v79[16];
  v52 = v10;
  v53 = v35;
  v54 = v38;
  v55 = v34;
  v56 = v27;
  v57 = v12;
  v58 = v16;
  v59 = v15;
  v60 = v14;
  v61 = v32;
  v62 = v31;
  v63 = v13;
  v64 = v29;
  v65 = v30;
  v66 = v17;
  v67 = v26;
  result = sub_100B98B80(v48);
  v19 = v46;
  *(a2 + 192) = v45;
  *(a2 + 208) = v19;
  *(a2 + 224) = v47;
  v20 = v42;
  *(a2 + 128) = v41;
  *(a2 + 144) = v20;
  v21 = v44;
  *(a2 + 160) = v43;
  *(a2 + 176) = v21;
  v22 = v39[5];
  *(a2 + 64) = v39[4];
  *(a2 + 80) = v22;
  v23 = v40;
  *(a2 + 96) = v39[6];
  *(a2 + 112) = v23;
  v24 = v39[1];
  *a2 = v39[0];
  *(a2 + 16) = v24;
  v25 = v39[3];
  *(a2 + 32) = v39[2];
  *(a2 + 48) = v25;
  return result;
}

uint64_t sub_100B98A0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100B98A4C()
{
  result = qword_101A13908;
  if (!qword_101A13908)
  {
    result = swift_getWitnessTable("1e9", &type metadata for CRLStrokePatternData, v0, v1);
    atomic_store(result, &qword_101A13908);
  }

  return result;
}

unint64_t sub_100B98AA0()
{
  result = qword_101A13910;
  if (!qword_101A13910)
  {
    result = swift_getWitnessTable("Ye9", &type metadata for CRLSmartStrokeData, v0, v1);
    atomic_store(result, &qword_101A13910);
  }

  return result;
}

unint64_t sub_100B98AF4()
{
  result = qword_101A13918;
  if (!qword_101A13918)
  {
    result = swift_getWitnessTable(byte_10149D390, &type metadata for CRLPencilKitInkStrokeData, v0, v1);
    atomic_store(result, &qword_101A13918);
  }

  return result;
}

unint64_t sub_100B98BB0()
{
  result = qword_101A13940;
  if (!qword_101A13940)
  {
    result = swift_getWitnessTable(byte_10149D368, &type metadata for CRLStrokePatternData, v0, v1);
    atomic_store(result, &qword_101A13940);
  }

  return result;
}

unint64_t sub_100B98C04()
{
  result = qword_101A13948;
  if (!qword_101A13948)
  {
    result = swift_getWitnessTable(byte_10149D340, &type metadata for CRLSmartStrokeData, v0, v1);
    atomic_store(result, &qword_101A13948);
  }

  return result;
}

unint64_t sub_100B98C58()
{
  result = qword_101A13950;
  if (!qword_101A13950)
  {
    result = swift_getWitnessTable(byte_10149D318, &type metadata for CRLPencilKitInkStrokeData, v0, v1);
    atomic_store(result, &qword_101A13950);
  }

  return result;
}

unint64_t sub_100B98CAC()
{
  result = qword_101A13958;
  if (!qword_101A13958)
  {
    result = swift_getWitnessTable(byte_10149C118, &type metadata for CRLStrokeData, v0, v1);
    atomic_store(result, &qword_101A13958);
  }

  return result;
}

unint64_t sub_100B98D00()
{
  result = qword_101A13960;
  if (!qword_101A13960)
  {
    result = swift_getWitnessTable(byte_10149C0F0, &type metadata for CRLStrokeData, v0, v1);
    atomic_store(result, &qword_101A13960);
  }

  return result;
}

unint64_t sub_100B98DD8()
{
  result = qword_101A13968;
  if (!qword_101A13968)
  {
    result = swift_getWitnessTable("=w9", &type metadata for CRLStrokeData.StrokeType, v0, v1);
    atomic_store(result, &qword_101A13968);
  }

  return result;
}

unint64_t sub_100B98E30()
{
  result = qword_101A13970;
  if (!qword_101A13970)
  {
    result = swift_getWitnessTable("Uw9", &type metadata for CRLStrokeData.StrokeType, v0, v1);
    atomic_store(result, &qword_101A13970);
  }

  return result;
}

unint64_t sub_100B98E88()
{
  result = qword_101A13978;
  if (!qword_101A13978)
  {
    result = swift_getWitnessTable(byte_10149C454, &type metadata for CRLStrokeData.StrokeType, v0, v1);
    atomic_store(result, &qword_101A13978);
  }

  return result;
}

unint64_t sub_100B98EE0()
{
  result = qword_101A13980;
  if (!qword_101A13980)
  {
    result = swift_getWitnessTable(byte_10149C47C, &type metadata for CRLStrokeData.CapType, v0, v1);
    atomic_store(result, &qword_101A13980);
  }

  return result;
}

unint64_t sub_100B98F38()
{
  result = qword_101A13988;
  if (!qword_101A13988)
  {
    result = swift_getWitnessTable(byte_10149C4D4, &type metadata for CRLStrokeData.CapType, v0, v1);
    atomic_store(result, &qword_101A13988);
  }

  return result;
}

unint64_t sub_100B98F90()
{
  result = qword_101A13990;
  if (!qword_101A13990)
  {
    result = swift_getWitnessTable(byte_10149C60C, &type metadata for CRLStrokeData.CapType, v0, v1);
    atomic_store(result, &qword_101A13990);
  }

  return result;
}

unint64_t sub_100B98FE8()
{
  result = qword_101A13998;
  if (!qword_101A13998)
  {
    result = swift_getWitnessTable(byte_10149C634, &type metadata for CRLStrokeData.JoinType, v0, v1);
    atomic_store(result, &qword_101A13998);
  }

  return result;
}

unint64_t sub_100B99040()
{
  result = qword_101A139A0;
  if (!qword_101A139A0)
  {
    result = swift_getWitnessTable(byte_10149C68C, &type metadata for CRLStrokeData.JoinType, v0, v1);
    atomic_store(result, &qword_101A139A0);
  }

  return result;
}

unint64_t sub_100B99098()
{
  result = qword_101A139A8;
  if (!qword_101A139A8)
  {
    result = swift_getWitnessTable(byte_10149C7C4, &type metadata for CRLStrokeData.JoinType, v0, v1);
    atomic_store(result, &qword_101A139A8);
  }

  return result;
}

unint64_t sub_100B990F0()
{
  result = qword_101A139B0;
  if (!qword_101A139B0)
  {
    result = swift_getWitnessTable(byte_10149C7EC, &type metadata for CRLStrokePatternData, v0, v1);
    atomic_store(result, &qword_101A139B0);
  }

  return result;
}

unint64_t sub_100B99148()
{
  result = qword_101A139B8;
  if (!qword_101A139B8)
  {
    result = swift_getWitnessTable("-r9", &type metadata for CRLStrokePatternData, v0, v1);
    atomic_store(result, &qword_101A139B8);
  }

  return result;
}

unint64_t sub_100B991A0()
{
  result = qword_101A139C0;
  if (!qword_101A139C0)
  {
    result = swift_getWitnessTable("ut9", &type metadata for CRLStrokePatternData, v0, v1);
    atomic_store(result, &qword_101A139C0);
  }

  return result;
}

unint64_t sub_100B99200()
{
  result = qword_101A139C8;
  if (!qword_101A139C8)
  {
    result = swift_getWitnessTable("uv9", &type metadata for CRLStrokePatternData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A139C8);
  }

  return result;
}

unint64_t sub_100B99258()
{
  result = qword_101A139D0;
  if (!qword_101A139D0)
  {
    result = swift_getWitnessTable(byte_10149CA50, &type metadata for CRLStrokePatternData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A139D0);
  }

  return result;
}

unint64_t sub_100B992B0()
{
  result = qword_101A139D8;
  if (!qword_101A139D8)
  {
    result = swift_getWitnessTable("at9", &type metadata for CRLStrokePatternData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A139D8);
  }

  return result;
}

unint64_t sub_100B99308()
{
  result = qword_101A139E0;
  if (!qword_101A139E0)
  {
    result = swift_getWitnessTable(byte_10149C96C, &type metadata for CRLStrokePatternData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A139E0);
  }

  return result;
}

unint64_t sub_100B99360()
{
  result = qword_101A139E8;
  if (!qword_101A139E8)
  {
    result = swift_getWitnessTable("Uo9", &type metadata for CRLStrokePatternData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A139E8);
  }

  return result;
}

unint64_t sub_100B993B8()
{
  result = qword_101A139F0;
  if (!qword_101A139F0)
  {
    result = swift_getWitnessTable(byte_10149C9BC, &type metadata for CRLStrokePatternData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A139F0);
  }

  return result;
}

unint64_t sub_100B99440()
{
  result = qword_101A13A08;
  if (!qword_101A13A08)
  {
    result = swift_getWitnessTable(byte_10149C8EC, &type metadata for CRLStrokePatternData, v0, v1);
    atomic_store(result, &qword_101A13A08);
  }

  return result;
}

unint64_t sub_100B99498()
{
  result = qword_101A13A10;
  if (!qword_101A13A10)
  {
    result = swift_getWitnessTable("!o9", &type metadata for CRLSmartStrokeData, v0, v1);
    atomic_store(result, &qword_101A13A10);
  }

  return result;
}

unint64_t sub_100B994F0()
{
  result = qword_101A13A18;
  if (!qword_101A13A18)
  {
    result = swift_getWitnessTable("9o9", &type metadata for CRLSmartStrokeData, v0, v1);
    atomic_store(result, &qword_101A13A18);
  }

  return result;
}

unint64_t sub_100B99548()
{
  result = qword_101A13A20;
  if (!qword_101A13A20)
  {
    result = swift_getWitnessTable(byte_10149CBA8, &type metadata for CRLSmartStrokeData, v0, v1);
    atomic_store(result, &qword_101A13A20);
  }

  return result;
}

unint64_t sub_100B995A8()
{
  result = qword_101A13A28;
  if (!qword_101A13A28)
  {
    result = swift_getWitnessTable(byte_10149CC28, &type metadata for CRLSmartStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13A28);
  }

  return result;
}

unint64_t sub_100B99600()
{
  result = qword_101A13A30;
  if (!qword_101A13A30)
  {
    result = swift_getWitnessTable(byte_10149CD40, &type metadata for CRLSmartStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13A30);
  }

  return result;
}

unint64_t sub_100B99658()
{
  result = qword_101A13A38;
  if (!qword_101A13A38)
  {
    result = swift_getWitnessTable("qq9", &type metadata for CRLSmartStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13A38);
  }

  return result;
}

unint64_t sub_100B996B0()
{
  result = qword_101A13A40;
  if (!qword_101A13A40)
  {
    result = swift_getWitnessTable(byte_10149CC60, &type metadata for CRLSmartStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13A40);
  }

  return result;
}

unint64_t sub_100B99708()
{
  result = qword_101A13A48;
  if (!qword_101A13A48)
  {
    result = swift_getWitnessTable("al9", &type metadata for CRLSmartStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13A48);
  }

  return result;
}

unint64_t sub_100B99760()
{
  result = qword_101A13A50;
  if (!qword_101A13A50)
  {
    result = swift_getWitnessTable(byte_10149CCB0, &type metadata for CRLSmartStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13A50);
  }

  return result;
}

unint64_t sub_100B997E8()
{
  result = qword_101A13A68;
  if (!qword_101A13A68)
  {
    result = swift_getWitnessTable(byte_10149CBE0, &type metadata for CRLSmartStrokeData, v0, v1);
    atomic_store(result, &qword_101A13A68);
  }

  return result;
}

unint64_t sub_100B99840()
{
  result = qword_101A13A70;
  if (!qword_101A13A70)
  {
    result = swift_getWitnessTable("1l9", &type metadata for CRLPencilKitInkStrokeData, v0, v1);
    atomic_store(result, &qword_101A13A70);
  }

  return result;
}

unint64_t sub_100B99898()
{
  result = qword_101A13A78;
  if (!qword_101A13A78)
  {
    result = swift_getWitnessTable("Il9", &type metadata for CRLPencilKitInkStrokeData, v0, v1);
    atomic_store(result, &qword_101A13A78);
  }

  return result;
}

unint64_t sub_100B998F0()
{
  result = qword_101A13A80;
  if (!qword_101A13A80)
  {
    result = swift_getWitnessTable(byte_10149CE98, &type metadata for CRLPencilKitInkStrokeData, v0, v1);
    atomic_store(result, &qword_101A13A80);
  }

  return result;
}

unint64_t sub_100B99950()
{
  result = qword_101A13A88;
  if (!qword_101A13A88)
  {
    result = swift_getWitnessTable(byte_10149CF18, &type metadata for CRLPencilKitInkStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13A88);
  }

  return result;
}

unint64_t sub_100B999A8()
{
  result = qword_101A13A90;
  if (!qword_101A13A90)
  {
    result = swift_getWitnessTable(byte_10149D030, &type metadata for CRLPencilKitInkStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13A90);
  }

  return result;
}

unint64_t sub_100B99A00()
{
  result = qword_101A13A98;
  if (!qword_101A13A98)
  {
    result = swift_getWitnessTable(byte_10149CFF8, &type metadata for CRLPencilKitInkStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13A98);
  }

  return result;
}

unint64_t sub_100B99A58()
{
  result = qword_101A13AA0;
  if (!qword_101A13AA0)
  {
    result = swift_getWitnessTable("\tj9", &type metadata for CRLPencilKitInkStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13AA0);
  }

  return result;
}

unint64_t sub_100B99AB0()
{
  result = qword_101A13AA8;
  if (!qword_101A13AA8)
  {
    result = swift_getWitnessTable("qi9", &type metadata for CRLPencilKitInkStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13AA8);
  }

  return result;
}

unint64_t sub_100B99B08()
{
  result = qword_101A13AB0;
  if (!qword_101A13AB0)
  {
    result = swift_getWitnessTable(byte_10149CFA0, &type metadata for CRLPencilKitInkStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13AB0);
  }

  return result;
}

unint64_t sub_100B99B90()
{
  result = qword_101A13AC8;
  if (!qword_101A13AC8)
  {
    result = swift_getWitnessTable(byte_10149CED0, &type metadata for CRLPencilKitInkStrokeData, v0, v1);
    atomic_store(result, &qword_101A13AC8);
  }

  return result;
}

unint64_t sub_100B99BE8()
{
  result = qword_101A13AD0;
  if (!qword_101A13AD0)
  {
    result = swift_getWitnessTable(byte_10149D138, &type metadata for CRLStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13AD0);
  }

  return result;
}

unint64_t sub_100B99C40()
{
  result = qword_101A13AD8;
  if (!qword_101A13AD8)
  {
    result = swift_getWitnessTable(byte_10149D160, &type metadata for CRLSmartStrokeData.SmartStrokeType, v0, v1);
    atomic_store(result, &qword_101A13AD8);
  }

  return result;
}

unint64_t sub_100B99C98()
{
  result = qword_101A13AE0;
  if (!qword_101A13AE0)
  {
    result = swift_getWitnessTable(byte_10149D1B8, &type metadata for CRLSmartStrokeData.SmartStrokeType, v0, v1);
    atomic_store(result, &qword_101A13AE0);
  }

  return result;
}

unint64_t sub_100B99CF0()
{
  result = qword_101A13AE8;
  if (!qword_101A13AE8)
  {
    result = swift_getWitnessTable(byte_10149D2F0, &type metadata for CRLSmartStrokeData.SmartStrokeType, v0, v1);
    atomic_store(result, &qword_101A13AE8);
  }

  return result;
}

uint64_t sub_100B99D44(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1005C4E5C(&qword_101A13AF8, &qword_10149D4F0);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100B99DB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1005C4E5C(a2, a3);
    v8[0] = &protocol witness table for Int;
    v8[1] = &protocol witness table for Int;
    result = swift_getWitnessTable(a4, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B99E18()
{
  result = qword_101A13B50;
  if (!qword_101A13B50)
  {
    result = swift_getWitnessTable(byte_10149D278, &type metadata for CRLSmartStrokeData.SmartStrokeType, v0, v1);
    atomic_store(result, &qword_101A13B50);
  }

  return result;
}

unint64_t sub_100B99E6C()
{
  result = qword_101A13B58;
  if (!qword_101A13B58)
  {
    result = swift_getWitnessTable("qo9", &type metadata for CRLPencilKitInkStrokeData, v0, v1);
    atomic_store(result, &qword_101A13B58);
  }

  return result;
}

unint64_t sub_100B99EC0()
{
  result = qword_101A13B60;
  if (!qword_101A13B60)
  {
    result = swift_getWitnessTable(byte_10149D058, &type metadata for CRLPencilKitInkStrokeData, v0, v1);
    atomic_store(result, &qword_101A13B60);
  }

  return result;
}

unint64_t sub_100B99F14()
{
  result = qword_101A13B68;
  if (!qword_101A13B68)
  {
    result = swift_getWitnessTable("ar9", &type metadata for CRLSmartStrokeData, v0, v1);
    atomic_store(result, &qword_101A13B68);
  }

  return result;
}

unint64_t sub_100B99F68()
{
  result = qword_101A13B70;
  if (!qword_101A13B70)
  {
    result = swift_getWitnessTable("qh9", &type metadata for CRLSmartStrokeData, v0, v1);
    atomic_store(result, &qword_101A13B70);
  }

  return result;
}

unint64_t sub_100B99FBC()
{
  result = qword_101A13B78;
  if (!qword_101A13B78)
  {
    result = swift_getWitnessTable("Qu9", &type metadata for CRLStrokePatternData, v0, v1);
    atomic_store(result, &qword_101A13B78);
  }

  return result;
}

unint64_t sub_100B9A010()
{
  result = qword_101A13B80;
  if (!qword_101A13B80)
  {
    result = swift_getWitnessTable("ak9", &type metadata for CRLStrokePatternData, v0, v1);
    atomic_store(result, &qword_101A13B80);
  }

  return result;
}

unint64_t sub_100B9A064()
{
  result = qword_101A13B88;
  if (!qword_101A13B88)
  {
    result = swift_getWitnessTable(byte_10149C74C, &type metadata for CRLStrokeData.JoinType, v0, v1);
    atomic_store(result, &qword_101A13B88);
  }

  return result;
}

unint64_t sub_100B9A0B8()
{
  result = qword_101A13B90;
  if (!qword_101A13B90)
  {
    result = swift_getWitnessTable(byte_10149C594, &type metadata for CRLStrokeData.CapType, v0, v1);
    atomic_store(result, &qword_101A13B90);
  }

  return result;
}

unint64_t sub_100B9A10C()
{
  result = qword_101A13B98;
  if (!qword_101A13B98)
  {
    result = swift_getWitnessTable("My9", &type metadata for CRLStrokeData.StrokeType, v0, v1);
    atomic_store(result, &qword_101A13B98);
  }

  return result;
}

unint64_t sub_100B9A194()
{
  result = qword_101A13BA0;
  if (!qword_101A13BA0)
  {
    atomic_store(result, &qword_101A13BA0);
  }

  return result;
}

unint64_t sub_100B9A1EC()
{
  result = qword_101A13BA8;
  if (!qword_101A13BA8)
  {
    result = swift_getWitnessTable(byte_10149D640, &type metadata for CRLSmartStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13BA8);
  }

  return result;
}

unint64_t sub_100B9A244()
{
  result = qword_101A13BB0;
  if (!qword_101A13BB0)
  {
    result = swift_getWitnessTable(byte_10149D6E0, &type metadata for CRLPencilKitInkStrokeData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A13BB0);
  }

  return result;
}

uint64_t sub_100B9A4CC()
{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_100B9A558;

  return sub_100B9AEA0();
}

uint64_t sub_100B9A558()
{
  v2 = *v1;
  *(v2 + 336) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100B9A68C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100B9A68C()
{
  v50 = v0;
  v7 = *(v0 + 336);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(v0 + 320) = v7;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  *(inited + 56) = &type metadata for String;
  v5 = sub_1000053B0();
  *(inited + 32) = v2;
  v6 = inited + 32;
  v48 = v5;
  *(inited + 64) = v5;
  *(inited + 40) = v4;
  v46 = objc_opt_self();
  LODWORD(v7) = [v46 _atomicIncrementAssertCount];
  v49 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v49, "Unable to create CRLUSDZItem: %@", 32, 2u);
  StaticString.description.getter("importBoardItem()", 17, 2);
  v8 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLUSDItemImporter.swift", 85, 2);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v9 lastPathComponent];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v14 = static OS_os_log.crlAssert;
    v47 = v0;
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_10146CA70;
    *(v15 + 56) = &type metadata for Int32;
    *(v15 + 64) = &protocol witness table for Int32;
    *(v15 + 32) = v7;
    v16 = sub_1005CF000();
    *(v15 + 96) = v16;
    v17 = sub_100BA3138(&qword_1019F52E0, 255, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(v15 + 72) = v8;
    v18 = v49;
    *(v15 + 136) = &type metadata for String;
    *(v15 + 144) = v48;
    *(v15 + 104) = v17;
    *(v15 + 112) = v11;
    *(v15 + 120) = v13;
    *(v15 + 176) = &type metadata for UInt;
    *(v15 + 184) = &protocol witness table for UInt;
    *(v15 + 152) = 63;
    *(v15 + 216) = v16;
    *(v15 + 224) = v17;
    *(v15 + 192) = v18;
    v19 = v8;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v15);
    swift_setDeallocating();
    v48 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "Unable to create CRLUSDZItem: %@", 32, 2, inited);

    type metadata accessor for __VaListBuilder();
    v13 = swift_allocObject();
    v13[2] = 8;
    v13[3] = 0;
    v23 = v13 + 3;
    v13[4] = 0;
    v13[5] = 0;
    v8 = *(inited + 16);
    if (!v8)
    {
      break;
    }

    v24 = 0;
    while (1)
    {
      v25 = (v6 + 40 * v24);
      v11 = v25[4];
      LODWORD(v7) = sub_100020E58(v25, v25[3]);
      v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v0 = *v23;
      v27 = *(v26 + 16);
      v28 = __OFADD__(*v23, v27);
      v29 = *v23 + v27;
      if (v28)
      {
        break;
      }

      v7 = v13[4];
      if (v7 >= v29)
      {
        goto LABEL_19;
      }

      if (v7 + 0x4000000000000000 < 0)
      {
        goto LABEL_32;
      }

      v11 = v13[5];
      if (2 * v7 > v29)
      {
        v29 = 2 * v7;
      }

      v13[4] = v29;
      if ((v29 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_33;
      }

      v30 = v6;
      v31 = inited;
      v32 = v26;
      v33 = swift_slowAlloc();
      v34 = v33;
      v13[5] = v33;
      if (v11)
      {
        if (v33 != v11 || v33 >= &v11[8 * v0])
        {
          memmove(v33, v11, 8 * v0);
        }

        LODWORD(v7) = v13;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v26 = v32;
        inited = v31;
        v6 = v30;
LABEL_19:
        v34 = v13[5];
        if (!v34)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }

      v26 = v32;
      inited = v31;
      v6 = v30;
      if (!v34)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_20:
      v36 = *(v26 + 16);
      if (v36)
      {
        v37 = (v26 + 32);
        v38 = *v23;
        while (1)
        {
          v39 = *v37++;
          *&v34[8 * v38] = v39;
          v38 = *v23 + 1;
          if (__OFADD__(*v23, 1))
          {
            break;
          }

          *v23 = v38;
          if (!--v36)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:

      if (++v24 == v8)
      {
        goto LABEL_27;
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

LABEL_27:
  v40 = __VaListBuilder.va_list()();
  StaticString.description.getter("importBoardItem()", 17, 2);
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLUSDItemImporter.swift", 85, 2);
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unable to create CRLUSDZItem: %@", 32, 2);
  v43 = String._bridgeToObjectiveC()();

  [v46 handleFailureInFunction:v41 file:v42 lineNumber:63 isFatal:0 format:v43 args:v40];

  swift_setDeallocating();
  swift_arrayDestroy();

  v44 = *(v47 + 8);

  return v44();
}

uint64_t sub_100B9ADF8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1009D3FA0;

  return sub_100B9A4CC();
}

uint64_t sub_100B9AEA0()
{
  *(v1 + 272) = v0;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  *(v1 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_100B9AF3C, 0, 0);
}

uint64_t sub_100B9AF3C()
{
  v37 = v0;
  v1 = v0[34];
  v2 = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_importBoardItemTask;
  if (*(v1 + OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_importBoardItemTask))
  {

    isCancelled = swift_task_isCancelled();

    if (isCancelled)
    {
      v35 = v1;
      v34 = objc_opt_self();
      v4 = [v34 _atomicIncrementAssertCount];
      v36 = [objc_allocWithZone(NSString) init];
      StaticString.description.getter("_importBoardItem()", 18, 2);
      v5 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLUSDItemImporter.swift", 85, 2);
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
      v14 = sub_100BA3138(&qword_1019F52E0, 255, sub_1005CF000, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v14;
      *(inited + 72) = v5;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v10;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 68;
      v16 = v36;
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

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v21[4] = 0;
      v21[5] = 0;
      v22 = __VaListBuilder.va_list()();
      StaticString.description.getter("_importBoardItem()", 18, 2);
      v23 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLUSDItemImporter.swift", 85, 2);
      v24 = String._bridgeToObjectiveC()();

      v25 = String._bridgeToObjectiveC()();

      [v34 handleFailureInFunction:v23 file:v24 lineNumber:68 isFatal:0 format:v25 args:v22];

      v1 = v35;
    }

    if (*(v1 + v2))
    {

      sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
      Task.cancel()();
    }
  }

  v26 = v0[35];
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v28;
  v30 = sub_1006E2398(0, 0, v26, &unk_10149D7E0, v29);
  v0[36] = v30;
  sub_10000CAAC(v26, &qword_1019FB750, &qword_10146F1B0);
  *(v1 + v2) = v30;

  v31 = swift_task_alloc();
  v0[37] = v31;
  v32 = sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v0[38] = v32;
  *v31 = v0;
  v31[1] = sub_100B9B504;

  return Task.result.getter(v0 + 31, v30, &type metadata for () + 8, v32, &protocol self-conformance witness table for Error);
}

uint64_t sub_100B9B504()
{

  return _swift_task_switch(sub_100B9B61C, 0, 0);
}

uint64_t sub_100B9B61C()
{
  if (*(v0 + 256) == 1)
  {
    *(v0 + 264) = *(v0 + 248);
    swift_willThrowTypedImpl();
  }

  else
  {
    v2 = *(*(v0 + 272) + OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress);
    [v2 maxValue];
    [v2 setValue:?];
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B9B71C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  v0[6] = Strong;
  if (Strong)
  {
    v3 = [Strong delegate];
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector:"boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:"])
      {
        [v4 boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:v2];
      }

      swift_unknownObjectRelease();
    }

    v5 = *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress];
    [v5 maxValue];
    [v5 setValue:v6 * 0.01];

    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_100B9B8A0;

    return sub_100B9BB70();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100B9B8A0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1009DA848;
  }

  else
  {
    v2 = sub_100B9B9B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B9B9B4()
{
  v1 = *(v0 + 48);
  if (!*&v1[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__boardItem] && !*&v1[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__error])
  {
    sub_100BA3234();
    v2 = swift_allocError();
    *v3 = 0;
    v4 = sub_100BA2560(v2);

    sub_100BA1860(v4);
    v1 = *(v0 + 48);
  }

  v5 = *(v0 + 8);

  return v5();
}

id sub_100B9BA80()
{
  v1 = (v0 + OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter____lazy_storage___asyncRenderer);
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter____lazy_storage___asyncRenderer);
  v3 = v2;
  if (v2 == 1)
  {
    if (qword_1019F1AB8 != -1)
    {
      swift_once();
    }

    if (byte_101AD6F08)
    {
      v3 = 0;
      v4 = 0;
    }

    else
    {
      v3 = [objc_allocWithZone(_s23AppExCompressionBackendCMa(0)) init];
      v4 = &off_10189A498;
    }

    v5 = *v1;
    *v1 = v3;
    v1[1] = v4;
    swift_unknownObjectRetain();
    sub_1008F2B1C(v5);
  }

  sub_1008F2B2C(v2);
  return v3;
}

uint64_t sub_100B9BB70()
{
  v1[49] = v0;
  sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  v1[50] = swift_task_alloc();
  v2 = type metadata accessor for CRLAssetData(0);
  v1[51] = v2;
  v1[52] = *(v2 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  type metadata accessor for CRLUSDRendering.CompressionRequest(0);
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v3 = type metadata accessor for SHA256();
  v1[60] = v3;
  v1[61] = *(v3 - 8);
  v1[62] = swift_task_alloc();
  v4 = type metadata accessor for SHA256Digest();
  v1[63] = v4;
  v1[64] = *(v4 - 8);
  v1[65] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[66] = v5;
  v1[67] = *(v5 - 8);
  v1[68] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[69] = v6;
  v1[70] = *(v6 - 8);
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();

  return _swift_task_switch(sub_100B9BF70, 0, 0);
}

uint64_t sub_100B9BF70()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 392);
  v5 = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress;
  *(v0 + 704) = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress;
  [*&v4[v5] maxValue];
  *(v0 + 712) = v6;
  v7 = *(v2 + 56);
  *(v0 + 720) = v7;
  *(v0 + 728) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 1, 1, v3);
  v8 = [v4 URL];
  if (v8)
  {
    v9 = *(v0 + 632);
    v10 = *(v0 + 624);
    v11 = *(v0 + 560);
    v12 = *(v0 + 552);
    v13 = *(v0 + 488);
    v14 = v8;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v11 + 16);
    *(v0 + 736) = v15;
    *(v0 + 744) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v10, v9, v12);
    sub_100BA3138(&qword_1019F4570, 255, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_101093094(v10);
    v16 = (v13 + 8);
    v19 = *(v0 + 560);
    v58 = *(v0 + 552);
    v60 = *(v0 + 624);
    v20 = *(v0 + 520);
    v21 = *(v0 + 512);
    v56 = *(v0 + 504);
    v22 = *(v0 + 496);
    v23 = *(v0 + 480);
    dispatch thunk of HashFunction.finalize()();
    (*v16)(v22, v23);
    SHA256Digest.withUnsafeBytes<A>(_:)();
    *(v0 + 752) = 0;
    (*(v21 + 8))(v20, v56);
    v24 = *(v19 + 8);
    *(v0 + 760) = v24;
    *(v0 + 768) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v60, v58);
    v25 = [objc_opt_self() standardUserDefaults];
    v26 = [v25 BOOLForKey:@"CRL3DObjectCompression"];

    if (v26)
    {
      v27 = [*(v0 + 392) boardItemFactory];
      v28 = *&v27[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

      v29 = [v28 store];
      v30 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
      os_unfair_lock_lock(*(v30 + 16));
      v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
      v32 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      if (v32)
      {
        v33 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      }

      else
      {
        v47 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
        v48 = v29;
        v49 = sub_10001F1A0(v48);

        v50 = *&v29[v31];
        *&v29[v31] = v49;
        v33 = v49;

        v32 = 0;
      }

      *(v0 + 776) = v33;
      v51 = *(v30 + 16);
      v52 = v32;
      os_unfair_lock_unlock(v51);

      v53 = swift_task_alloc();
      *(v0 + 784) = v53;
      *v53 = v0;
      v53[1] = sub_100B9C958;
      v54 = *(v0 + 688);
      v55 = *(v0 + 544);

      return sub_10108D4EC(v54, v55, 0, 0, 3);
    }

    v59 = *(v0 + 760);
    v34 = *(v0 + 736);
    v35 = *(v0 + 632);
    v36 = *(v0 + 584);
    v37 = *(v0 + 552);
    v57 = *(v0 + 544);
    v38 = *(v0 + 536);
    v39 = *(v0 + 528);
    v40 = [*(v0 + 392) boardItemFactory];
    v41 = *&v40[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

    v34(v36, v35, v37);
    v42 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper(0));
    v17 = sub_100BA1E7C(v36, 0, 0, v41, v42);
    (*(v38 + 8))(v57, v39);
    v59(v35, v37);
    v18 = *(v0 + 752);
  }

  else
  {
    v17 = [*(v0 + 392) preinsertionAsset];
    v18 = 0;
  }

  *(v0 + 864) = v17;
  [*(*(v0 + 392) + *(v0 + 704)) setValue:*(v0 + 712) * 0.3];
  if (!v17)
  {
    sub_10000CAAC(*(v0 + 696), &unk_1019F33C0, &unk_101468A60);

    v43 = *(v0 + 8);
    goto LABEL_12;
  }

  static Task<>.checkCancellation()();
  if (v18)
  {
    sub_10000CAAC(*(v0 + 696), &unk_1019F33C0, &unk_101468A60);

    v43 = *(v0 + 8);
LABEL_12:

    return v43();
  }

  if (qword_1019F1AB8 != -1)
  {
    swift_once();
  }

  *(v0 + 185) = byte_101AD6F08;
  v45 = swift_task_alloc();
  *(v0 + 872) = v45;
  *v45 = v0;
  v45[1] = sub_100B9F214;
  v46 = *(v0 + 432);

  return sub_100CF18DC(v46);
}

uint64_t sub_100B9C958()
{
  v1 = *(*v0 + 776);

  return _swift_task_switch(sub_100B9CA98, 0, 0);
}

uint64_t sub_100B9CA98()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v2 + 48);
  *(v0 + 792) = v4;
  *(v0 + 800) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v3);
  sub_10000CAAC(v1, &unk_1019F33C0, &unk_101468A60);
  if (v5 == 1)
  {
    v6 = *(v0 + 752);
    static Task<>.checkCancellation()();
    if (v6)
    {
      v7 = *(v0 + 760);
      v8 = *(v0 + 696);
      v9 = *(v0 + 632);
      v10 = *(v0 + 552);
      (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
      v7(v9, v10);
      sub_10000CAAC(v8, &unk_1019F33C0, &unk_101468A60);
LABEL_10:

      v32 = *(v0 + 8);
LABEL_12:

      return v32();
    }

    if (qword_1019F19A8 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 736);
    v47 = *(v0 + 720);
    v23 = *(v0 + 680);
    v24 = *(v0 + 632);
    v25 = *(v0 + 616);
    v26 = *(v0 + 608);
    v27 = *(v0 + 552);
    v28 = *(v0 + 448);
    *(v0 + 808) = qword_101AD6CA0;
    *(v0 + 816) = CRLAnalyticsOSSignpostManager.beginSignpostIntervalWithReturnedState(for:)(15, 1);
    v22(v25, v24, v27);
    v22(v26, v25, v27);
    v22(v28, v26, v27);
    v22(v23, v26, v27);
    v47(v23, 0, 1, v27);
    v29 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
    *(v0 + 824) = 0;
    v31 = *(v0 + 760);
    v36 = v29;
    v37 = v30;
    v38 = *(v0 + 608);
    v39 = *(v0 + 552);
    v51 = *(v0 + 472);
    v48 = *(v0 + 616);
    v50 = *(v0 + 464);
    v41 = *(v0 + 448);
    v40 = *(v0 + 456);
    v42 = *(v0 + 440);
    sub_10000CAAC(*(v0 + 680), &unk_1019F33C0, &unk_101468A60);
    v31(v38, v39);
    v31(v48, v39);
    v43 = (v41 + *(v42 + 20));
    *v43 = v36;
    v43[1] = v37;
    sub_1008F2A0C(v41, v40, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    sub_1008F2A0C(v40, v50, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    sub_1008F2A0C(v50, v51, type metadata accessor for CRLUSDRendering.CompressionRequest);
    type metadata accessor for MainActor();
    *(v0 + 832) = static MainActor.shared.getter();
    v45 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100B9D3F0, v45, v44);
  }

  else
  {
    v49 = *(v0 + 760);
    v11 = *(v0 + 736);
    v12 = *(v0 + 632);
    v13 = *(v0 + 584);
    v14 = *(v0 + 552);
    v46 = *(v0 + 544);
    v15 = *(v0 + 536);
    v16 = *(v0 + 528);
    v17 = [*(v0 + 392) boardItemFactory];
    v18 = *&v17[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

    v11(v13, v12, v14);
    v19 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper(0));
    v20 = sub_100BA1E7C(v13, 0, 0, v18, v19);
    (*(v15 + 8))(v46, v16);
    v49(v12, v14);
    v21 = *(v0 + 752);
    *(v0 + 864) = v20;
    [*(*(v0 + 392) + *(v0 + 704)) setValue:*(v0 + 712) * 0.3];
    if (!v20)
    {
      sub_10000CAAC(*(v0 + 696), &unk_1019F33C0, &unk_101468A60);

      v32 = *(v0 + 8);
      goto LABEL_12;
    }

    static Task<>.checkCancellation()();
    if (v21)
    {
      sub_10000CAAC(*(v0 + 696), &unk_1019F33C0, &unk_101468A60);

      goto LABEL_10;
    }

    if (qword_1019F1AB8 != -1)
    {
      swift_once();
    }

    *(v0 + 185) = byte_101AD6F08;
    v34 = swift_task_alloc();
    *(v0 + 872) = v34;
    *v34 = v0;
    v34[1] = sub_100B9F214;
    v35 = *(v0 + 432);

    return sub_100CF18DC(v35);
  }
}

uint64_t sub_100B9D3F0()
{

  *(v0 + 840) = sub_100B9BA80();

  return _swift_task_switch(sub_100B9D490, 0, 0);
}

uint64_t sub_100B9D490()
{
  if (*(v0 + 840))
  {
    v1 = swift_task_alloc();
    *(v0 + 848) = v1;
    *v1 = v0;
    v1[1] = sub_100B9E1C0;
    v2 = *(v0 + 672);
    v3 = *(v0 + 472);

    return sub_100BF94A4(v2, v3);
  }

  v5 = *(v0 + 720);
  v6 = *(v0 + 672);
  v7 = *(v0 + 552);
  sub_10000CAAC(*(v0 + 696), &unk_1019F33C0, &unk_101468A60);
  v5(v6, 1, 1, v7);
  v8 = *(v0 + 824);
  sub_100044B68(*(v0 + 672), *(v0 + 696));
  static Task<>.checkCancellation()();
  if (v8)
  {
    v9 = *(v0 + 760);
    v10 = *(v0 + 696);
    v11 = *(v0 + 632);
    v12 = *(v0 + 552);
    v13 = *(v0 + 544);
    v14 = *(v0 + 536);
    v15 = *(v0 + 528);
    v16 = *(v0 + 472);

    sub_100BA30D8(v16, type metadata accessor for CRLUSDRendering.CompressionRequest);
    (*(v14 + 8))(v13, v15);
    v9(v11, v12);
    sub_10000CAAC(v10, &unk_1019F33C0, &unk_101468A60);

    v17 = *(v0 + 8);
LABEL_7:

    return v17();
  }

  v18 = *(v0 + 792);
  v19 = *(v0 + 696);
  v20 = *(v0 + 664);
  v21 = *(v0 + 552);
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(15, 1, *(v0 + 816));
  sub_10001ACF0(v19, v20);
  if (v18(v20, 1, v21) == 1)
  {
    sub_10000CAAC(*(v0 + 664), &unk_1019F33C0, &unk_101468A60);
    goto LABEL_29;
  }

  (*(*(v0 + 560) + 32))(*(v0 + 600), *(v0 + 664), *(v0 + 552));
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  URL.path.getter();
  v24 = String._bridgeToObjectiveC()();

  *(v0 + 360) = 0;
  v25 = [v23 attributesOfItemAtPath:v24 error:v0 + 360];

  v26 = *(v0 + 360);
  if (!v25)
  {
    v54 = *(v0 + 760);
    v55 = *(v0 + 600);
    v56 = *(v0 + 552);
    v57 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v54(v55, v56);
    goto LABEL_29;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_100BA3138(&qword_1019F3C88, 255, type metadata accessor for FileAttributeKey, byte_10146B52C);
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v26;

  if (!*(v27 + 16) || (v29 = sub_10006E4C8(NSFileSize), (v30 & 1) == 0))
  {
    v51 = *(v0 + 760);
    v52 = *(v0 + 600);
    v53 = *(v0 + 552);

    v51(v52, v53);
    goto LABEL_29;
  }

  sub_100064288(*(v27 + 56) + 32 * v29, v0 + 296);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v92 = *(v0 + 368);
  v31 = [v22 defaultManager];
  URL.path.getter();
  v32 = String._bridgeToObjectiveC()();

  *(v0 + 376) = 0;
  v33 = [v31 attributesOfItemAtPath:v32 error:v0 + 376];

  v34 = *(v0 + 376);
  if (!v33)
  {
    v61 = *(v0 + 760);
    v62 = *(v0 + 600);
    v63 = *(v0 + 552);
    v64 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v61(v62, v63);
    goto LABEL_29;
  }

  v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v34;

  if (!*(v35 + 16) || (v37 = sub_10006E4C8(NSFileSize), (v38 & 1) == 0))
  {
    v58 = *(v0 + 760);
    v59 = *(v0 + 600);
    v60 = *(v0 + 552);

    v58(v59, v60);
    goto LABEL_29;
  }

  sub_100064288(*(v35 + 56) + 32 * v37, v0 + 328);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    (*(v0 + 760))(*(v0 + 600), *(v0 + 552));
    goto LABEL_29;
  }

  v39 = *(v0 + 384);
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 392);
  v41 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = type metadata accessor for CRLUSDItemImporter();
  result = sub_100BA3138(&qword_101A13C20, v43, type metadata accessor for CRLUSDItemImporter, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v40;
  *(inited + 64) = result;
  v44 = v92 - v39;
  if (__OFSUB__(v92, v39))
  {
    __break(1u);
    return result;
  }

  v45 = *(v0 + 760);
  v46 = *(v0 + 600);
  v47 = *(v0 + 552);
  v48 = *(v0 + 392);
  *(inited + 96) = &type metadata for Int64;
  *(inited + 104) = &protocol witness table for Int64;
  *(inited + 72) = v44;
  v49 = v48;
  v50 = static os_log_type_t.info.getter();
  sub_100005404(v41, &_mh_execute_header, v50, "Importer (%p) compressed reduced: %d", 36, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v45(v46, v47);
LABEL_29:
  v65 = *(v0 + 792);
  v66 = *(v0 + 696);
  v67 = *(v0 + 656);
  v68 = *(v0 + 552);
  v69 = [*(v0 + 392) boardItemFactory];
  v70 = *&v69[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

  sub_10001ACF0(v66, v67);
  v93 = v70;
  if (v65(v67, 1, v68) == 1)
  {
    v71 = *(v0 + 792);
    v72 = *(v0 + 656);
    v73 = *(v0 + 552);
    (*(v0 + 736))(*(v0 + 592), *(v0 + 632), v73);
    if (v71(v72, 1, v73) != 1)
    {
      sub_10000CAAC(*(v0 + 656), &unk_1019F33C0, &unk_101468A60);
    }
  }

  else
  {
    (*(*(v0 + 560) + 32))(*(v0 + 592), *(v0 + 656), *(v0 + 552));
  }

  v89 = *(v0 + 760);
  v74 = *(v0 + 736);
  v75 = *(v0 + 632);
  v76 = *(v0 + 592);
  v77 = *(v0 + 584);
  v78 = *(v0 + 552);
  v79 = *(v0 + 536);
  v90 = *(v0 + 528);
  v91 = *(v0 + 544);
  v88 = *(v0 + 472);
  v80 = URL.lastPathComponent.getter();
  v82 = v81;
  v74(v77, v76, v78);
  v83 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper(0));
  v84 = v93;
  v85 = sub_100BA1E7C(v77, v80, v82, v84, v83);

  v89(v76, v78);
  sub_100BA30D8(v88, type metadata accessor for CRLUSDRendering.CompressionRequest);
  (*(v79 + 8))(v91, v90);
  v89(v75, v78);
  *(v0 + 864) = v85;
  [*(*(v0 + 392) + *(v0 + 704)) setValue:*(v0 + 712) * 0.3];
  if (!v85)
  {
    sub_10000CAAC(*(v0 + 696), &unk_1019F33C0, &unk_101468A60);

    v17 = *(v0 + 8);
    goto LABEL_7;
  }

  static Task<>.checkCancellation()();
  if (qword_1019F1AB8 != -1)
  {
    swift_once();
  }

  *(v0 + 185) = byte_101AD6F08;
  v86 = swift_task_alloc();
  *(v0 + 872) = v86;
  *v86 = v0;
  v86[1] = sub_100B9F214;
  v87 = *(v0 + 432);

  return sub_100CF18DC(v87);
}