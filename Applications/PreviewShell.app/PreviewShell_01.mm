uint64_t sub_10001A030(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AgentDescriptor.Bundle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  AgentDescriptor.Bundle.init(bundleID:path:)();
  swift_beginAccess();
  v9 = *(v2 + 16);
  if (*(v9 + 16) && (v10 = sub_1000070AC(v8), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    v13 = *(v6 + 8);

    v13(v8, v5);
  }

  else
  {
    swift_endAccess();
    v12 = type metadata accessor for AgentLocatingError();
    sub_10001D9B4(&qword_10006F3E0, &type metadata accessor for AgentLocatingError, &protocol conformance descriptor for AgentLocatingError);
    swift_allocError();
    *v14 = a1;
    v14[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v15 = *(v6 + 8);

    v15(v8, v5);
  }

  return v12;
}

uint64_t sub_10001A214(uint64_t a1)
{
  v3 = type metadata accessor for AgentDescriptor.Bundle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AgentDescriptor.bundle.getter();
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_1000070AC(v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v11 = *(v4 + 8);

    v11(v6, v3);
  }

  else
  {
    swift_endAccess();
    (*(v4 + 8))(v6, v3);
    v10 = type metadata accessor for AgentLocatingError();
    sub_10001D9B4(&qword_10006F3E0, &type metadata accessor for AgentLocatingError, &protocol conformance descriptor for AgentLocatingError);
    swift_allocError();
    v13 = v12;
    v14 = type metadata accessor for AgentDescriptor();
    (*(*(v14 - 8) + 16))(v13, a1, v14);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_10001A430@<X0>(uint64_t *a1@<X8>)
{
  if (qword_10006E5F8 != -1)
  {
    swift_once();
  }

  v2 = qword_10006F690;
  if (byte_10006F698)
  {
    swift_errorRetain();
    sub_100004C60(&qword_10006E8E8, &qword_10004D780);
    return swift_willThrowTypedImpl();
  }

  else
  {
    a1[3] = type metadata accessor for StaticPreviewCanvas();
    a1[4] = sub_10001D9B4(&qword_10006F460, type metadata accessor for StaticPreviewCanvas, &unk_10004F2DC);
    *a1 = v2;
  }
}

uint64_t sub_10001A538()
{
  v0 = type metadata accessor for Callsite();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BatchIdentity();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E5B8 != -1)
  {
    swift_once();
  }

  Agent.batchIdentity.getter();
  Callsite.init(_:_:_:_:)();
  assertUnreachable(callsite:)();
  (*(v1 + 8))(v3, v0);
  sub_10001D534();
  swift_allocError();
  swift_willThrow();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10001A730()
{
  v0 = type metadata accessor for ExecutionLane();
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DeviceType();
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for PreviewCache.Replayable(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v34 = &v33 - v14;
  v15 = type metadata accessor for Callsite();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v16 + 8))(v18, v15);
  if (qword_10006E608 != -1)
  {
    swift_once();
  }

  v19 = qword_100073718;
  if (qword_100073718)
  {
    v20 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
    swift_beginAccess();
    sub_10001DAD0(v19 + v20, v8);
    v21 = v10;
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_10000BF34(v8, &qword_10006F4A0, &qword_10004E1F0);
      sub_100004C60(&qword_10006E8F8, &qword_10004D790);
      sub_10001DA7C();
      swift_allocError();
      *v22 = 1;
      v23 = static Future.failed(dsoHandle:file:line:column:function:_:)();
    }

    else
    {
      v25 = v34;
      sub_10001DB40(v8, v34);
      v26 = type metadata accessor for SimulatorDevicePayload();
      (*(*(v26 - 8) + 56))(v5, 1, 1, v26);

      v27 = v35;
      sub_1000168CC(v25, v5);
      sub_10001DDD8(v5, &type metadata accessor for DeviceType);
      static ExecutionLane.main.getter();
      sub_10001DBA4(v25, v13, type metadata accessor for PreviewCache.Replayable);
      v28 = (*(v21 + 80) + 16) & ~*(v21 + 80);
      v29 = swift_allocObject();
      sub_10001DB40(v13, v29 + v28);
      *(v29 + ((v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
      type metadata accessor for PropertyList();

      Future.tryThen<A>(dsoHandle:file:line:column:function:on:transform:)();

      v30 = v37;
      v31 = *(v36 + 8);
      v31(v2, v37);
      static ExecutionLane.main.getter();

      Future.observeFailure(on:_:)();

      v31(v2, v30);
      v23 = Future.ignoringValue(dsoHandle:file:line:column:function:)();

      sub_10001DDD8(v25, type metadata accessor for PreviewCache.Replayable);
    }
  }

  else
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    sub_10001DA7C();
    swift_allocError();
    *v24 = 0;
    v23 = static Future.failed(dsoHandle:file:line:column:function:_:)();
  }

  return v23;
}

uint64_t sub_10001ADFC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v36 = a2;
  updated = type metadata accessor for UpdateSetupPayload();
  __chkstk_darwin(updated - 8);
  v38 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PropertyList();
  __chkstk_darwin(v6 - 8);
  v34 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004C60(&qword_10006F420, &qword_10004E180);
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for ContentCategory();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for ContentIdentifier();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for PreviewType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004C60(&qword_10006F4B0, &qword_10004E1F8);
  __chkstk_darwin(v15 - 8);
  v17 = v31 - v16;
  v31[2] = v31 - v16;
  v18 = sub_100004C60(&qword_10006F470, &qword_10004E1C8);
  __chkstk_darwin(v18 - 8);
  v20 = v31 - v19;
  v31[3] = v31 - v19;
  v37 = type metadata accessor for ShellUpdatePayload();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v40 = *a1;
  v41 = v22;
  v42 = *(a1 + 32);
  v32 = ProcessID.pid.getter();
  v23 = type metadata accessor for HostUpdateSeed();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = type metadata accessor for HostUpdateGroupSeed();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v25 = enum case for PreviewType.HostLocation.mainScene(_:);
  v26 = type metadata accessor for PreviewType.HostLocation();
  v27 = *(*(v26 - 8) + 104);
  v31[1] = v14;
  v27(v14, v25, v26);
  (*(v12 + 104))(v14, enum case for PreviewType.hosted(_:), v11);
  type metadata accessor for PreviewCache.Replayable(0);
  ShellUpdatePayload.contentIdentifier.getter();
  ShellUpdatePayload.contentCategory.getter();
  ShellUpdatePayload.contentOverride.getter();
  ShellUpdatePayload.contentPayload.getter();
  ShellUpdatePayload.staticProducts.getter();
  ShellUpdatePayload.setupPayload.getter();
  ShellUpdatePayload.controlStates.getter();
  v28 = v33;
  ShellUpdatePayload.init(pid:hostUpdateSeed:hostUpdateGroupSeed:previewType:contentIdentifier:contentCategory:contentOverride:contentPayload:staticProducts:setupPayload:controlStates:)();
  v29 = sub_100017A64(v28);
  (*(v35 + 8))(v28, v37);
  return v29;
}

uint64_t sub_10001B34C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for PreviewCache.Replayable(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
  swift_beginAccess();
  sub_10001DE38(v5, a2 + v7);
  swift_endAccess();
  return sub_100029688();
}

uint64_t sub_10001B440()
{

  v1 = OBJC_IVAR____TtC12PreviewShell19PreviewShellService_serverFarm;
  v2 = type metadata accessor for ServerFarm();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PreviewShell19PreviewShellService_pluginRegistry;
  v4 = type metadata accessor for PreviewShellPluginRegistry();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PreviewShellService(uint64_t a1)
{
  result = qword_10006F338;
  if (!qword_10006F338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001B588(uint64_t a1)
{
  result = type metadata accessor for ServerFarm();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PreviewShellPluginRegistry();
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

uint64_t sub_10001B6A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12PreviewShell19PreviewShellService_serverFarm;
  v5 = type metadata accessor for ServerFarm();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10001B760()
{
  v0 = type metadata accessor for AgentDescriptor();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PrepareToRelaunchPayload.agentDescriptor.getter();
  v4 = sub_100016310(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_10001B930()
{
  static JITCapabilities.userDefaultSupportsJITLinking.getter();
  JITCapabilities.init(supportsJITLinking:supportsLoadCommands:)();
  return OSCapabilities.init(supportsExecutionPoints:supportsPreviewVariants:supportsContentOverrides:supportsScreenshotRequests:supportsNSPreviewHostableMacPreviews:supportsNSPreviewHostableCatalystPreviews:supportsPerUpdateMessageStreams:supportsRegistryPreviews:supportsExternalRegistries:supportsUpdateCancelation:jitCapabilities:)();
}

uint64_t sub_10001B9A0(uint64_t a1)
{
  v1 = AgentDescriptor.Bundle.bundleID.getter();
  sub_10001E524(v1, v2);
}

uint64_t sub_10001B9F8(uint64_t result, uint64_t a2)
{
  if (qword_10006E608 != -1)
  {
    v2 = result;
    v3 = a2;
    swift_once();
    result = v2;
    a2 = v3;
  }

  if (qword_100073718)
  {
    return sub_100028D64(result, a2);
  }

  return result;
}

Swift::Int sub_10001BAC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001BB3C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_10001BB80(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10001BBA0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_10001BBD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001BC10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001BBF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001BD20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001BC10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004C60(&qword_10006F4C0, &unk_10004E2B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001BD20(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004C60(&qword_10006F410, &qword_10004E170);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004C60(&qword_10006F418, &qword_10004E178);
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_10001BE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_10001BF60()
{
  v0 = type metadata accessor for Callsite();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DeviceType();
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  BatchIdentity.deviceType.getter();
  v7 = type metadata accessor for SimulatorDevicePayload();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }

  else
  {
    sub_10001DDD8(v6, &type metadata accessor for DeviceType);
    if (qword_10006E5B8 != -1)
    {
      swift_once();
    }

    Callsite.init(_:_:_:_:)();
    assertUnreachable(callsite:)();
    (*(v1 + 8))(v3, v0);
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    sub_10001D534();
    swift_allocError();
    v9 = static Future.failed(dsoHandle:file:line:column:function:_:)();

    return v9;
  }
}

uint64_t sub_10001C220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewType.HostLocation();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PreviewType();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = type metadata accessor for DeviceType();
  __chkstk_darwin(v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Agent.deviceType.getter();
  v18 = type metadata accessor for SimulatorDevicePayload();
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) != 1)
  {
    v23 = sub_100004C60(&qword_10006F458, &unk_10004E1B0);
    __chkstk_darwin(v23);
    v29 = a2;
    v27 = sub_10001D518;
    v28 = &v26;
    LOBYTE(v26) = 2;
    v22 = static Future.completed(dsoHandle:file:line:column:function:_:)();
    sub_10001DDD8(v17, &type metadata accessor for DeviceType);
    return v22;
  }

  v19 = a1;
  v20 = *(v9 + 16);
  v31 = v19;
  v20(v14);
  v21 = (*(v9 + 88))(v14, v8);
  if (v21 == enum case for PreviewType.hosted(_:))
  {
    (*(v9 + 96))(v14, v8);
    (*(v5 + 32))(v7, v14, v4);
    if (qword_10006E600 != -1)
    {
      swift_once();
    }

    v22 = sub_1000226E4(v7);
    (*(v5 + 8))(v7, v4);
    return v22;
  }

  if (v21 == enum case for PreviewType.static(_:))
  {
    sub_100004C60(&qword_10006F458, &unk_10004E1B0);
    v27 = sub_10001A430;
    v28 = 0;
    LOBYTE(v26) = 2;
    return static Future.completed(dsoHandle:file:line:column:function:_:)();
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v32 = 0xD000000000000015;
  v33 = 0x8000000100054740;
  (v20)(v12, v31, v8);
  v25._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v25);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10001C6EC(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006EA60, &unk_10004E150);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for AgentDescriptor.Bundle();
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AgentDescriptor();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E608 != -1)
  {
    result = swift_once();
  }

  if (qword_100073718)
  {
    LaunchPayload.agentDescriptor.getter();
    AgentDescriptor.bundle.getter();
    (*(v9 + 8))(v12, v8);
    v13 = type metadata accessor for LaunchPayload();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v4, a1, v13);
    (*(v14 + 56))(v4, 0, 1, v13);
    swift_beginAccess();
    sub_100006798(v4, v7);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10001C97C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  sub_10000E678(a1, v3);
  return (*(v4 + 40))(v2, v3, v4);
}

uint64_t sub_10001C9D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001CA18(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10001CA3C(unsigned __int8 *a1)
{
  type metadata accessor for ShellUpdatePayload();

  return sub_100018B08(a1);
}

uint64_t sub_10001CABC()
{
  updated = type metadata accessor for ShellUpdatePayload();
  v2 = *(updated - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, updated);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001CB94(uint64_t a1)
{
  v3 = *(type metadata accessor for ShellUpdatePayload() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100018F00(a1, v5, v1 + v4, v6);
}

uint64_t sub_10001CC34()
{
  v17 = type metadata accessor for ContentKey();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v14 = (v2 + 16) & ~v2;
  v3 = *(v1 + 64);
  v16 = type metadata accessor for PreviewAgentConnector();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v14 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  updated = type metadata accessor for ShellUpdatePayload();
  v9 = *(updated - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 16) & ~v10;
  v15 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  (*(v1 + 8))(v0 + v14, v17);
  (*(v4 + 8))(v0 + v6, v16);

  (*(v9 + 8))(v0 + v11, updated);

  return _swift_deallocObject(v0, v11 + v15, v12 | 7);
}

uint64_t sub_10001CE28(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for ContentKey() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for ShellUpdatePayload();
  v11 = *(v2 + v10);
  v12 = *(v2 + v10 + 8);

  return sub_1000192E8(a1, a2, v2 + v6, v2 + v9, v11, v12);
}

uint64_t sub_10001CF7C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_100004C60(&qword_10006F438, &qword_10004E188);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_10001CFD8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10001CFF0(result, a2);
  }

  return result;
}

uint64_t sub_10001D028(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004D0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001D070()
{
  v1 = type metadata accessor for PreviewAgentConnector();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  updated = type metadata accessor for ShellUpdatePayload();
  v7 = *(updated - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  sub_10000519C((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, updated);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10001D1C0(uint64_t a1)
{
  v3 = *(type metadata accessor for PreviewAgentConnector() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  type metadata accessor for ShellUpdatePayload();

  return sub_100018D48(a1, (v1 + 16), v1 + v4);
}

uint64_t sub_10001D2B0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10001D340(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AgentUpdate.Context() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001D424;

  return sub_1000191F8(a1, a2, v2 + v7);
}

uint64_t sub_10001D424()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10001D534()
{
  result = qword_10006F5D0;
  if (!qword_10006F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F5D0);
  }

  return result;
}

uint64_t sub_10001D5A0(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  sub_10000E678(a1, v5);
  return a2(v4, v5, v6);
}

uint64_t sub_10001D5F4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  sub_10000E678(a1, v3);
  return (*(v4 + 32))(v2, v3, v4);
}

uint64_t sub_10001D64C()
{
  v17 = type metadata accessor for AgentDescriptor.Bundle();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 24) & ~v2;
  v3 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for BatchIdentity();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for LaunchPayload();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 9) & ~v10;
  v14 = *(v9 + 64);
  v12 = v2 | v5 | v10;

  (*(v1 + 8))(v0 + v15, v17);
  sub_10000519C((v0 + v3));
  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v11 + v14, v12 | 7);
}

uint64_t sub_10001D850(uint64_t a1)
{
  v3 = *(type metadata accessor for AgentDescriptor.Bundle() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for BatchIdentity() - 8);
  v7 = (v5 + *(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for LaunchPayload() - 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = v1 + ((v8 + *(v9 + 80) + 9) & ~*(v9 + 80));

  return sub_100017774(a1, v10, v1 + v4, v1 + v5, v1 + v7, v11, v12, v13);
}

uint64_t sub_10001D9B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_10001D9FC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_10001DA7C()
{
  result = qword_10006F4A8;
  if (!qword_10006F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F4A8);
  }

  return result;
}

uint64_t sub_10001DAD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewCache.Replayable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DBA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001DC0C()
{
  v1 = (type metadata accessor for PreviewCache.Replayable(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for LaunchPayload();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  updated = type metadata accessor for ShellUpdatePayload();
  (*(*(updated - 8) + 8))(v5 + v7, updated);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10001DD38(__int128 *a1)
{
  v3 = *(type metadata accessor for PreviewCache.Replayable(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_10001ADFC(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10001DDD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001DE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PreviewShellService.ReloadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewShellService.ReloadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001E020()
{
  result = qword_10006F4B8;
  if (!qword_10006F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F4B8);
  }

  return result;
}

id sub_10001E07C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v16.receiver = v5;
  v16.super_class = swift_getObjectType();
  v11 = objc_msgSendSuper2(&v16, "initWithWindowScene:", a1);
  [v11 setWindowLevel:UIWindowLevelStatusBar];
  v12 = objc_allocWithZone(type metadata accessor for ExclusionView());
  sub_10001E288(a2, a3, a4, a5);
  v13 = objc_allocWithZone(type metadata accessor for CounterRotationViewController());
  v14 = CounterRotationViewController.init(contentView:contentOrientation:)();
  [v11 setRootViewController:v14];

  [v11 setUserInteractionEnabled:0];
  return v11;
}

id sub_10001E288(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v19.receiver = v4;
  v19.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = objc_allocWithZone(UIView);
  v11 = v9;
  v12 = [v10 init];
  v13 = objc_opt_self();
  v14 = [v13 blackColor];
  [v12 setBackgroundColor:v14];

  [v12 setFrame:{a1, a2, a3, a4}];
  v15 = [v12 layer];
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  [v15 setCornerRadius:CGRectGetHeight(v20) * 0.5];

  v16 = [v12 layer];
  [v16 setCornerCurve:kCACornerCurveContinuous];

  v17 = [v13 clearColor];
  [v11 setBackgroundColor:v17];

  [v11 addSubview:v12];
  return v11;
}

uint64_t sub_10001E524(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100004C60(&qword_10006F5C0, "֘");
  sub_10001FA34();
  KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
  result = swift_endAccess();
  if (!(v9 >> 62))
  {
    v5 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v9 + 8 * i + 32);
      }

      v8 = v7;
      sub_10001FA98(v7, a1, a2);
    }
  }

  __break(1u);
  return result;
}

id sub_10001E670()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12PreviewShell19UserAlertController_pendingAlerts;
  *&v1[v7] = sub_10002C1C4(&_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC12PreviewShell19UserAlertController_locationSim;
  *&v1[v8] = [objc_allocWithZone(CLSimulationManager) init];
  static Logger.uv.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "AlertService init", v11, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v12 = objc_allocWithZone(URTAlertService);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithDomain:v13];

  *&v1[OBJC_IVAR____TtC12PreviewShell19UserAlertController_underlying] = v14;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_10001E8A0()
{
  v1 = v0;
  _StringGuts.grow(_:)(130);
  v2._countAndFlagsBits = 0x6669746E6564693CLL;
  v2._object = 0xED0000203A726569;
  String.append(_:)(v2);
  v3 = [v0 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x3A656C746974202CLL;
  v8._object = 0xEA00000000002720;
  String.append(_:)(v8);
  v9 = [v1 title];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_100004C60(&qword_10006F5E0, &unk_10004E320);
  v14 = Optional.log.getter();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x617373656D202C27;
  v18._object = 0xED000027203A6567;
  String.append(_:)(v18);
  v19 = [v1 message];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = Optional.log.getter();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0xD000000000000020;
  v28._object = 0x8000000100054A40;
  String.append(_:)(v28);
  v29 = [v1 allowedApplicationBundleIDs];
  if (v29)
  {
    v30 = v29;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = Array.description.getter();
    v33 = v32;
  }

  else
  {
    v33 = 0xE200000000000000;
    v31 = 23899;
  }

  v34 = 7104878;
  v35._countAndFlagsBits = v31;
  v35._object = v33;
  String.append(_:)(v35);

  v36._object = 0x8000000100054A70;
  v36._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v36);
  v37 = [v1 defaultAction];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 title];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
  }

  else
  {
    v42 = 0xE300000000000000;
    v40 = 7104878;
  }

  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0x65636E6163202C27;
  v44._object = 0xEC00000027203A6CLL;
  String.append(_:)(v44);
  v45 = [v1 cancelAction];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 title];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;
  }

  else
  {
    v50 = 0xE300000000000000;
    v48 = 7104878;
  }

  v51._countAndFlagsBits = v48;
  v51._object = v50;
  String.append(_:)(v51);

  v52._countAndFlagsBits = 0x726568746F202C27;
  v52._object = 0xEB0000000027203ALL;
  String.append(_:)(v52);
  v53 = [v1 otherAction];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 title];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
  }

  else
  {
    v57 = 0xE300000000000000;
  }

  v58._countAndFlagsBits = v34;
  v58._object = v57;
  String.append(_:)(v58);

  v59._countAndFlagsBits = 4087079;
  v59._object = 0xE300000000000000;
  String.append(_:)(v59);
  return 0;
}

uint64_t sub_10001ED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for Logger();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001EE24, v8, v7);
}

void sub_10001EE24()
{
  v58 = v0;
  v1 = *(v0 + 88);

  static Logger.uv.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v57 = v10;
    *v9 = 136315138;
    v11 = sub_10001E8A0();
    v13 = sub_10000E0C0(v11, v12, &v57);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "AlertService present %s", v9, 0xCu);
    sub_10000519C(v10);
  }

  v14 = *(v8 + 8);
  v14(v6, v7);
  v15 = [*(v0 + 88) allowedApplicationBundleIDs];
  if (v15)
  {
    v16 = *(v0 + 96);
    v17 = v15;
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = *(v18 + 16);
    v54 = v18;
    if (v53)
    {
      v19 = 0;
      v20 = OBJC_IVAR____TtC12PreviewShell19UserAlertController_pendingAlerts;
      v21 = (v18 + 40);
      v52 = v0;
      while (1)
      {
        if (v19 >= *(v54 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v24 = *(v21 - 1);
        v23 = *v21;
        *(v0 + 64) = v24;
        *(v0 + 72) = v23;
        swift_beginAccess();

        sub_100004C60(&qword_10006F5C0, "֘");
        sub_10001FA34();
        KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
        swift_endAccess();
        v55 = v19;
        v56 = *(v0 + 80);
        v25 = *(v0 + 88);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v16;
        v28 = isUniquelyReferenced_nonNull_native;
        v57 = *(v27 + v20);
        v29 = v57;
        v30 = v20;
        v31 = v27;
        v32 = v30;
        *(v27 + v30) = 0x8000000000000000;
        v33 = sub_100006E04(v24, v23);
        v35 = v29[2];
        v36 = (v34 & 1) == 0;
        v37 = __OFADD__(v35, v36);
        v38 = v35 + v36;
        if (v37)
        {
          goto LABEL_32;
        }

        v39 = v34;
        if (v29[3] < v38)
        {
          break;
        }

        if (v28)
        {
          goto LABEL_16;
        }

        v44 = v33;
        sub_10000B224();
        v33 = v44;
        v29 = v57;
        v16 = v31;
        if (v39)
        {
LABEL_6:
          *(v29[7] + 8 * v33) = v56;

          v20 = v32;
          goto LABEL_7;
        }

LABEL_17:
        v29[(v33 >> 6) + 8] |= 1 << v33;
        v41 = (v29[6] + 16 * v33);
        *v41 = v24;
        v41[1] = v23;
        *(v29[7] + 8 * v33) = v56;
        v42 = v29[2];
        v37 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v37)
        {
          goto LABEL_33;
        }

        v20 = v32;
        v29[2] = v43;
LABEL_7:
        v19 = v55 + 1;
        v0 = v52;
        v22 = *(v52 + 88);
        *(v16 + v20) = v29;
        swift_endAccess();
        sub_10001FA98(v22, v24, v23);

        v21 += 2;
        if (v53 == v55 + 1)
        {
          goto LABEL_21;
        }
      }

      sub_100008BE0(v38, v28);
      v29 = v57;
      v33 = sub_100006E04(v24, v23);
      if ((v39 & 1) != (v40 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

LABEL_16:
      v16 = v31;
      if (v39)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_21:
  }

  else
  {
    static Logger.uv.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 120);
    v49 = *(v0 + 104);
    if (v47)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "AlertService ignoring system alert", v50, 2u);
    }

    v14(v48, v49);
  }

  v51 = *(v0 + 8);

  v51();
}

uint64_t sub_10001F4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001F5D4, v8, v7);
}

uint64_t sub_10001F5D4()
{
  v31 = v0;
  v1 = *(v0 + 40);

  static Logger.uv.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    v11 = sub_10001E8A0();
    v13 = sub_10000E0C0(v11, v12, &v30);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "AlertService dismiss %s", v9, 0xCu);
    sub_10000519C(v10);
  }

  (*(v7 + 8))(v6, v8);
  v14 = [*(v0 + 40) allowedApplicationBundleIDs];
  if (v14)
  {
    v15 = v14;
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = *(v0 + 48);
      v19 = OBJC_IVAR____TtC12PreviewShell19UserAlertController_pendingAlerts;
      v20 = (v16 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        swift_beginAccess();

        v23 = sub_100006E04(v21, v22);
        v25 = v24;

        if (v25)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = *(v18 + v19);
          v30 = v27;
          *(v18 + v19) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10000B224();
            v27 = v30;
          }

          sub_1000093D4(v23, v27);
          *(v18 + v19) = v27;
        }

        swift_endAccess();
        v20 += 2;
        --v17;
      }

      while (v17);
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

unint64_t sub_10001FA34()
{
  result = qword_10006F5C8;
  if (!qword_10006F5C8)
  {
    sub_100004D0C(&qword_10006F5C0, "֘");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F5C8);
  }

  return result;
}

uint64_t sub_10001FA98(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Callsite();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BatchIdentity();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v45 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  if (qword_10006E5C8 != -1)
  {
    swift_once();
  }

  v17 = sub_10001A030(a2, a3);
  static Logger.uv.getter();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v46 = v17;
    v47[0] = v22;
    *v21 = 136315138;
    type metadata accessor for Agent();
    v39 = v11;
    sub_10001FFE4();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = sub_10000E0C0(v23, v24, v47);

    *(v21 + 4) = v25;
    v11 = v39;
    _os_log_impl(&_mh_execute_header, v18, v19, "AlertService found agent to handle alert: %s", v21, 0xCu);
    sub_10000519C(v22);

    a1 = v38;
  }

  (*(v45 + 8))(v16, v11);
  if (qword_10006E5B8 != -1)
  {
    swift_once();
  }

  v26 = v40;
  Agent.batchIdentity.getter();
  Callsite.init(_:_:_:_:)();
  assertUnreachable(callsite:)();
  (*(v41 + 8))(v8, v42);
  sub_10001D534();
  swift_allocError();
  swift_willThrow();

  (*(v43 + 8))(v26, v44);
  static Logger.uv.getter();
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v11;
    v32 = swift_slowAlloc();
    v47[0] = v32;
    *v30 = 136315138;
    v33 = sub_10001E8A0();
    v35 = sub_10000E0C0(v33, v34, v47);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "AlertService was unable to present alert: %s", v30, 0xCu);
    sub_10000519C(v32);

    return (*(v45 + 8))(v14, v31);
  }

  else
  {

    return (*(v45 + 8))(v14, v11);
  }
}

unint64_t sub_10001FFE4()
{
  result = qword_10006F5D8;
  if (!qword_10006F5D8)
  {
    type metadata accessor for Agent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F5D8);
  }

  return result;
}

uint64_t sub_100020040(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001D424;

  return sub_10001F4E0(a1, v4, v5, v7, v6);
}

uint64_t sub_100020100()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020148(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002020C;

  return sub_10001ED24(a1, v4, v5, v7, v6);
}

uint64_t sub_100020210()
{
  v0 = type metadata accessor for PreviewShellPluginRegistry();
  sub_100020278(v0, qword_1000736E8);
  sub_10000BE8C(v0, qword_1000736E8);
  sub_1000202DC();
  return static PreviewShellPluginRegistry.load<A>(using:location:)();
}

uint64_t *sub_100020278(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000202DC()
{
  result = qword_10006F608;
  if (!qword_10006F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F608);
  }

  return result;
}

uint64_t sub_100020340()
{
  sub_100004C60(&qword_10006F680, &qword_10004E540);
  sub_100004C60(&qword_10006FCB0, &qword_10004E548);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10004E350;
  static ContentCategory.previewProvider.getter();
  static EntryPointCategory.previewProvider.getter();
  static ContentCategory.previewPreflight.getter();
  static EntryPointCategory.previewPreflight.getter();
  static ContentCategory.cFunction.getter();
  static EntryPointCategory.cFunction.getter();
  static ContentCategory.registryPreflight.getter();
  static EntryPointCategory.registryPreflight.getter();
  static ContentCategory.registryExecution.getter();
  static EntryPointCategory.registryExecution.getter();
  v1 = sub_10002C2C8(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10006F5E8 = v1;
  return result;
}

uint64_t sub_1000204FC()
{
  v0 = type metadata accessor for PreviewSourceContentCategory();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004C60(&qword_10006F680, &qword_10004E540);
  sub_100004C60(&qword_10006FCB0, &qword_10004E548);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10004E360;
  static PreviewSourceContentCategory.swiftUIView.getter();
  static ContentCategory.source(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  static EntryPointCategory.previewInstance.getter();
  static PreviewSourceContentCategory.uiKitView.getter();
  static ContentCategory.source(_:)();
  v5(v3, v0);
  static EntryPointCategory.previewInstance.getter();
  v6 = sub_10002C2C8(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10006F5F0 = v6;
  return result;
}

void sub_100020760(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() previewSceneSpecification];
  static AgentSceneConfiguration.previewSceneConfiguration(in:specification:)();
}

uint64_t sub_1000207E8()
{
  sub_100004C60(&qword_10006F688, qword_10004E550);
  type metadata accessor for PreviewVariantGroup();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10004E370;
  static PreviewVariantGroup.colorSchemeVariantGroup.getter();
  static PreviewVariantGroup.orientationVariantGroup.getter();
  static PreviewVariantGroup.dynamicTypeVariantGroup.getter();
  return v0;
}

uint64_t sub_100020918(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), unint64_t *a4)
{
  sub_100004C60(&qword_10006F680, &qword_10004E540);
  v7 = *(sub_100004C60(&qword_10006FCB0, &qword_10004E548) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10004E380;
  v10 = a2();
  a3(v10);
  v11 = sub_10002C2C8(v9);
  swift_setDeallocating();
  sub_10000BF34(v9 + v8, &qword_10006FCB0, &qword_10004E548);
  result = swift_deallocClassInstance();
  *a4 = v11;
  return result;
}

uint64_t sub_100020A88(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_100020AF0()
{
  v0 = type metadata accessor for ProcessType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[3] = &type metadata for ApplicationLauncher;
  v6[4] = sub_100020C08();
  (*(v1 + 104))(v3, enum case for ProcessType.application(_:), v0);
  PreviewAgentLauncherRegistry.registerLauncher(_:for:)();
  (*(v1 + 8))(v3, v0);
  return sub_10000519C(v6);
}

unint64_t sub_100020C08()
{
  result = qword_10006F610;
  if (!qword_10006F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F610);
  }

  return result;
}

uint64_t sub_100020C5C()
{
  v0 = sub_100004C60(&qword_10006F420, &qword_10004E180);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_100004C60(&qword_10006F618, &qword_10004E3F0);
  sub_100021078();
  static CategoryMap.contentCategories.getter();
  v3 = type metadata accessor for ContentOverride();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v8 = v4;
  sub_10001D028(&qword_10006F628, &qword_10006F618, &qword_10004E3F0, &protocol conformance descriptor for PassThroughProvider<A>);
  ContentProviderRegistry.register<A>(provider:for:override:)();

  sub_10000BF34(v2, &qword_10006F420, &qword_10004E180);
  sub_100004C60(&qword_10006F630, &qword_10004E3F8);
  sub_1000210CC();
  static CategoryMap.contentCategories.getter();
  v9 = v3;
  v4(v2, 1, 1, v3);
  sub_10001D028(&qword_10006F640, &qword_10006F630, &qword_10004E3F8, &unk_10004ED48);
  ContentProviderRegistry.register<A>(provider:for:override:)();

  sub_10000BF34(v2, &qword_10006F420, &qword_10004E180);
  sub_100004C60(&qword_10006F648, &qword_10004E400);
  sub_100021120();
  static CategoryMap.contentCategories.getter();
  v5 = v3;
  v6 = v8;
  v8(v2, 1, 1, v5);
  sub_10001D028(&qword_10006F658, &qword_10006F648, &qword_10004E400, &unk_10004ED48);
  ContentProviderRegistry.register<A>(provider:for:override:)();

  sub_10000BF34(v2, &qword_10006F420, &qword_10004E180);
  sub_100004C60(&qword_10006F660, &qword_10004E408);
  sub_100004C60(&qword_10006F668, &qword_10004E410);
  type metadata accessor for ContentCategory();
  *(swift_allocObject() + 16) = xmmword_10004E380;
  static ContentCategory.runningAppPreview.getter();
  v6(v2, 1, 1, v9);
  sub_10001D028(&qword_10006F670, &qword_10006F660, &qword_10004E408, &unk_10004ED48);
  ContentProviderRegistry.register<A>(provider:for:override:)();

  return sub_10000BF34(v2, &qword_10006F420, &qword_10004E180);
}

unint64_t sub_100021078()
{
  result = qword_10006F620;
  if (!qword_10006F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F620);
  }

  return result;
}

unint64_t sub_1000210CC()
{
  result = qword_10006F638;
  if (!qword_10006F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F638);
  }

  return result;
}

unint64_t sub_100021120()
{
  result = qword_10006F650;
  if (!qword_10006F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F650);
  }

  return result;
}

unint64_t sub_1000211B4(uint64_t a1)
{
  result = sub_1000210CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000211DC(uint64_t a1)
{
  result = sub_100021120();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100021204(uint64_t a1)
{
  result = sub_10002122C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002122C()
{
  result = qword_10006F678;
  if (!qword_10006F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F678);
  }

  return result;
}

void sub_100021288()
{
  v0 = type metadata accessor for Callsite();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v1 + 8))(v3, v0);
  sub_1000213B4(&v5, &v6);
  qword_10006F690 = v6;
  byte_10006F698 = 0;
}

void sub_1000213B4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Callsite();
  __chkstk_darwin(v5 - 8);
  v58 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SceneConfigurator(0);
  v8 = __chkstk_darwin(v7);
  v60 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v49 - v10;
  v12 = objc_opt_self();
  v13 = [v12 uv_loadedInitialContext];
  if (!v13)
  {
    v13 = [v12 defaultContext];
  }

  v14 = [objc_opt_self() uv_loadedInitialContext];
  v16 = v14;
  if (!v14)
  {
    v17 = [objc_opt_self() mainScreen];
    v18 = [v17 displayConfiguration];

    if (!v18)
    {
      __break(1u);
      return;
    }

    v16 = [objc_allocWithZone(UISDisplayContext) initWithDisplayConfiguration:v18];
  }

  v59 = a2;
  v19 = sub_1000020F0(v14, v15);
  v72 = &type metadata for MainDisplay;
  v73 = &off_1000629F0;
  v70[0] = v13;
  v70[1] = v16;
  v71 = v19;
  v69[3] = &type metadata for LocalStaticPersonality;
  v20 = sub_100021D48();
  v69[4] = v20;
  sub_10000E808(v70, v11);
  v21 = *(v7 + 24);
  if (qword_10006E628 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for SceneLayout();
  v23 = sub_10000BE8C(v22, qword_100073738);
  (*(*(v22 - 8) + 16))(&v11[v21], v23, v22);
  *(v11 + 5) = 0;
  *(v11 + 6) = 0;
  sub_10003B094(0xD000000000000012, 0x8000000100054BB0, v69, v63);
  v24 = v2;
  if (v2)
  {
    sub_1000220AC(v11);
    sub_10000519C(v69);
    sub_10000519C(v70);
LABEL_10:
    *a1 = v24;
    return;
  }

  v49[1] = 0;
  v49[0] = a1;
  v57 = v63[0];
  v56 = v63[1];
  v25 = v63[2];
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v53 = 0x8000000100054BB0;
  v26 = v67;
  v27 = v68;
  sub_10000E808(v69, v63);
  sub_100022108(v11, v60);
  sub_10002216C(v63, v64);
  v62[3] = &type metadata for LocalStaticPersonality;
  v62[4] = v20;
  v55 = type metadata accessor for LocalSceneHost(0);
  v28 = swift_allocObject();
  sub_10002216C(v62, &type metadata for LocalStaticPersonality);
  v61[3] = &type metadata for LocalStaticPersonality;
  v61[4] = v20;
  type metadata accessor for InvalidationHandle();
  swift_allocObject();
  v29 = v27;
  v54 = v27;

  v30 = v50;
  v31 = v51;
  v32 = v52;
  swift_unknownObjectRetain();
  v28[2] = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  v28[3] = 0xD000000000000012;
  v28[4] = v53;
  sub_10000E808(v61, (v28 + 5));
  sub_100022108(v60, v28 + OBJC_IVAR____TtC12PreviewShell14LocalSceneHost_configurator);
  v33 = v56;
  v28[10] = v57;
  v28[11] = v33;
  v28[12] = v25;
  v28[13] = v30;
  v28[14] = v31;
  v28[15] = v32;
  v28[16] = v26;
  v28[17] = v29;
  v53 = v11;
  v74 = v28;
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v25;
  v34[4] = v30;
  v34[5] = v31;
  v34[6] = v32;
  v34[7] = v26;
  v34[8] = v29;
  v34[9] = v28;
  sub_100022608(&qword_10006F6D0, type metadata accessor for LocalSceneHost, &unk_10004E9E0);
  swift_bridgeObjectRetain_n();
  v35 = v30;
  v36 = v31;
  v37 = v32;
  swift_unknownObjectRetain_n();
  v38 = v54;
  v56 = v35;
  v52 = v36;
  v39 = v37;
  v40 = v38;
  v41 = v57;

  Invalidatable.onInvalidation(_:)();

  v54 = v40;
  swift_unknownObjectRelease();
  v57 = v39;

  v42 = v52;
  v55 = v25;

  sub_1000220AC(v60);
  sub_10000519C(v61);
  sub_10000519C(v62);
  sub_10000519C(v63);
  sub_1000220AC(v53);
  sub_10000519C(v69);
  sub_10000519C(v70);
  type metadata accessor for LocalStaticScene(0);
  swift_allocObject();

  v44 = sub_100042E38(v43);
  type metadata accessor for StaticPreviewCanvas();
  v45 = swift_allocObject();

  v47 = sub_100022230(v46, v45);
  [v42 setRootViewController:v47[3]];
  type metadata accessor for LocalSceneDelegate();
  if (!swift_dynamicCastClass())
  {
    Callsite.init(_:_:_:_:)();
    type metadata accessor for Unreachable();
    sub_100022608(&qword_10006EA30, &type metadata accessor for Unreachable, &protocol conformance descriptor for Unreachable);
    v24 = swift_allocError();
    Unreachable.init(_:diagnostics:callsite:)();
    swift_willThrow();

    swift_unknownObjectRelease();

    a1 = v49[0];
    goto LABEL_10;
  }

  v48 = sub_100022608(&qword_10006F6D8, type metadata accessor for LocalStaticScene, &unk_10004F9B0);

  swift_unknownObjectRetain();
  sub_10003D5E4(v44, v48);

  swift_unknownObjectRelease_n();

  *v59 = v47;
}

unint64_t sub_100021D48()
{
  result = qword_10006F6C8;
  if (!qword_10006F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F6C8);
  }

  return result;
}

uint64_t sub_100021D9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = PreviewPreferences.preferredSize.getter();
  if (v11)
  {
    PreviewPreferences.preferredOrientation.getter();
    (*(v3 + 32))(v6, v8, v2);
    v12 = (*(v3 + 88))(v6, v2);
    if (v12 == enum case for PreviewPreferences.InterfaceOrientation.portrait(_:))
    {
      v13 = &enum case for PreviewTraits.Orientation.portrait(_:);
    }

    else if (v12 == enum case for PreviewPreferences.InterfaceOrientation.portraitUpsideDown(_:))
    {
      v13 = &enum case for PreviewTraits.Orientation.portraitUpsideDown(_:);
    }

    else
    {
      if (v12 != enum case for PreviewPreferences.InterfaceOrientation.landscapeLeft(_:))
      {
        v25 = enum case for PreviewPreferences.InterfaceOrientation.landscapeRight(_:);
        v26 = v12;
        v19 = type metadata accessor for PreviewTraits.Orientation();
        v20 = *(*(v19 - 8) + 104);
        if (v26 != v25)
        {
          v20(a1, enum case for PreviewTraits.Orientation.portrait(_:), v19);
          (*(v3 + 8))(v6, v2);
          goto LABEL_13;
        }

        v22 = enum case for PreviewTraits.Orientation.landscapeRight(_:);
        v21 = a1;
LABEL_12:
        v20(v21, v22, v19);
LABEL_13:
        v23 = enum case for SceneLayout.device(_:);
        v24 = type metadata accessor for SceneLayout();
        return (*(*(v24 - 8) + 104))(a1, v23, v24);
      }

      v13 = &enum case for PreviewTraits.Orientation.landscapeLeft(_:);
    }

    v18 = *v13;
    v19 = type metadata accessor for PreviewTraits.Orientation();
    v20 = *(*(v19 - 8) + 104);
    v21 = a1;
    v22 = v18;
    goto LABEL_12;
  }

  *a1 = v9;
  a1[1] = v10;
  v14 = enum case for SceneLayout.custom(_:);
  v15 = type metadata accessor for SceneLayout();
  v16 = *(*(v15 - 8) + 104);

  return v16(a1, v14, v15);
}

uint64_t sub_1000220AC(uint64_t a1)
{
  v2 = type metadata accessor for SceneConfigurator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneConfigurator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002216C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000221BC()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t *sub_100022230(uint64_t a1, uint64_t *a2)
{
  v19 = *a2;
  v20 = type metadata accessor for ExecutionLane();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100022608(&qword_10006F6E0, type metadata accessor for LocalStaticScene, &unk_10004F994);
  type metadata accessor for InvalidationHandle();
  swift_allocObject();
  a2[2] = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  type metadata accessor for FutureSerialQueue();
  static ExecutionLane.main.getter();
  a2[6] = FutureSerialQueue.__allocating_init(on:)();
  a2[8] = 0;
  v8 = *(a1 + 24);
  v10 = *(v8 + 88);
  v9 = *(v8 + 96);
  v11 = type metadata accessor for CanvasViewController(0);
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active] = 0;
  *&v12[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating] = 0;
  v13 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_forcedOrientation;
  v14 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  *&v12[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay] = 0;
  v15 = &v12[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_sceneIdentifier];
  *v15 = v10;
  *(v15 + 1) = v9;
  v22.receiver = v12;
  v22.super_class = v11;

  a2[3] = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for CanvasUpdater();
  v16 = swift_allocObject();
  v16[2] = 0;

  v17 = sub_10002B6D0(&_swiftEmptyArrayStorage);
  v16[4] = v7;
  v16[5] = v17;
  v16[3] = a1;
  a2[7] = v16;
  a2[4] = a1;
  a2[5] = v7;
  v21[5] = a2;
  v21[3] = swift_getObjectType();
  v21[4] = *(*(*(v7 + 8) + 8) + 8);
  v21[0] = a1;
  sub_100022608(&qword_10006F6E8, type metadata accessor for StaticPreviewCanvas, &unk_10004F2B4);

  Invalidatable.trackInvalidation(dsoHandle:file:line:column:function:of:)();
  sub_10000519C(v21);
  v21[0] = a2;
  static ExecutionLane.main.getter();

  Invalidatable.onInvalidation(on:_:)();

  (*(v4 + 8))(v6, v20);
  return a2;
}

uint64_t sub_100022608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100022668(uint64_t a1)
{
  result = sub_100022690();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100022690()
{
  result = qword_10006F6F0;
  if (!qword_10006F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F6F0);
  }

  return result;
}

uint64_t sub_1000226E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PreviewType.HostLocation();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for PreviewType.HostLocation.injectedScene(_:))
  {
    (*(v9 + 96))(v11, v8);
    v13 = *v11;
    v12 = v11[1];
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    v13 = 0;
    v12 = 0;
  }

  swift_beginAccess();
  v14 = *(v2 + 16);
  if (*(v14 + 16) && (v15 = sub_100007180(v13, v12), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();

    sub_100004C60(&qword_10006F458, &unk_10004E1B0);
    v37[3] = type metadata accessor for HostedPreviewCanvas();
    v37[4] = sub_100023198(&qword_1000704F0, &unk_10004DB2C);
    v37[0] = v17;
    v18 = static Future.succeeded(dsoHandle:file:line:column:function:_:)();
    sub_10000519C(v37);
  }

  else
  {
    swift_endAccess();
    static Logger.uv.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v36 = v5;
      v22 = v21;
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136446210;
      v37[0] = v13;
      v37[1] = v12;

      v24 = String.init<A>(describing:)();
      v35 = v4;
      v26 = sub_10000E0C0(v24, v25, &v39);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "InjectedSceneRegistry waiting for injected scene '%{public}s'", v22, 0xCu);
      sub_10000519C(v23);

      (*(v36 + 8))(v7, v35);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    sub_100004C60(&qword_10006F458, &unk_10004E1B0);
    v18 = static Future.create(dsoHandle:file:line:column:function:)();
    swift_beginAccess();
    v27 = *(v2 + 24);
    if (*(v27 + 16) && (v28 = sub_100007180(v13, v12), (v29 & 1) != 0))
    {
      v30 = *(*(v27 + 56) + 8 * v28);
      swift_endAccess();
      v39 = v30;
    }

    else
    {
      swift_endAccess();
      v39 = &_swiftEmptyArrayStorage;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v31 = v39;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_10000A2CC(v31, v13, v12, isUniquelyReferenced_nonNull_native);

    *(v2 + 24) = v38;
    swift_endAccess();
  }

  return v18;
}

Swift::Int sub_100022C64()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_100022CD4(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1uLL);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100022D4C(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100022DB8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

unint64_t sub_100022DFC()
{
  type metadata accessor for InjectedSceneRegistry();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_10002BD9C(&_swiftEmptyArrayStorage);
  result = sub_10002BEA0(&_swiftEmptyArrayStorage);
  *(v0 + 24) = result;
  qword_100073700 = v0;
  return result;
}

uint64_t sub_100022E9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!*(*(v2 + 16) + 16))
  {
    return swift_endAccess();
  }

  sub_100007180(a1, a2);
  if ((v5 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  type metadata accessor for HostedPreviewCanvas();
  sub_100023198(&qword_10006ECA8, &unk_10004DB04);

  Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  swift_beginAccess();

  sub_1000069A4(0, a1, a2);
  swift_endAccess();
}

uint64_t sub_100022FE4()
{

  return swift_deallocClassInstance();
}

__n128 sub_100023048(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100023054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000230A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000230F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100023110(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_100023144()
{
  result = qword_10006F7A0;
  if (!qword_10006F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F7A0);
  }

  return result;
}

uint64_t sub_100023198(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HostedPreviewCanvas();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UIDeviceOrientation.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000012;
      }

      return 0x446E776F6E6B6E75;
    }

    return 0x7469617274726F70;
  }

  else
  {
    if (a1 <= 4)
    {
      return 0x70616373646E616CLL;
    }

    if (a1 != 6)
    {
      if (a1 == 5)
      {
        return 0x705565636166;
      }

      return 0x446E776F6E6B6E75;
    }

    return 0x6E776F4465636166;
  }
}

uint64_t sub_1000232FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100023350(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000233D0()
{
  v1 = v0;
  v2 = sub_100004C60(&qword_10006ED10, &qword_10004DB88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-v4];
  v6 = sub_100004C60(&qword_10006ED18, &unk_10004DB90);
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-v7];
  v9 = type metadata accessor for CancellationToken();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC12PreviewShell18MainViewController_canvasObserver;
  swift_beginAccess();
  if (!(*(v10 + 48))(&v1[v13], 1, v9))
  {
    (*(v10 + 16))(v12, &v1[v13], v9);
    CancellationToken.cancel(dsoHandle:file:line:column:function:)();
    (*(v10 + 8))(v12, v9);
  }

  if (*&v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas])
  {

    EventStream.Sink.eventStream.getter();

    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000276CC;
    *(v15 + 24) = v14;
    v16 = v1;
    EventStream.observe(dsoHandle:file:line:column:function:_:)();

    (*(v3 + 8))(v5, v2);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v10 + 56))(v8, v17, 1, v9);
  swift_beginAccess();
  sub_1000276F8(v8, &v1[v13]);
  return swift_endAccess();
}

void sub_10002375C(int a1, char a2)
{
  v40 = a1;
  v4 = type metadata accessor for Callsite();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Logger();
  v8 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v38 = v4;
    v43 = v16;
    *v15 = 136315394;
    v42 = v11[OBJC_IVAR____TtC12PreviewShell18MainViewController_state];
    v17 = String.init<A>(describing:)();
    v37 = v5;
    v18 = a2;
    v20 = sub_10000E0C0(v17, v19, &v43);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v41 = v40;
    v21 = String.init<A>(describing:)();
    v23 = sub_10000E0C0(v21, v22, &v43);

    *(v15 + 14) = v23;
    a2 = v18;
    v5 = v37;
    _os_log_impl(&_mh_execute_header, v12, v13, "Main view controller: transition from '%s' to '%s'", v15, 0x16u);
    swift_arrayDestroy();
    v4 = v38;

    v7 = v36;
  }

  (*(v8 + 8))(v10, v39);
  v24 = v40;
  v11[OBJC_IVAR____TtC12PreviewShell18MainViewController_state] = v40;
  if (v24)
  {
    if (v24 == 1)
    {
      v25 = OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController;
      v26 = *&v11[OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController];
      if (v26)
      {
        v27 = *&v11[OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController];
        v28 = v26;
      }

      else
      {
        type metadata accessor for ConnectViewController();
        v33 = ConnectViewController.__allocating_init()();
        v34 = *&v11[v25];
        *&v11[v25] = v33;
        v27 = v33;

        v35 = 0;
      }

      goto LABEL_11;
    }

    v30 = *&v11[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas];
    if (!v30)
    {
      Callsite.init(_:_:_:_:)();
      assertUnreachable(callsite:)();
      (*(v5 + 8))(v7, v4);
      return;
    }

    v29 = *(v30 + 24);
  }

  else
  {
    v29 = sub_100025D44();
  }

  v27 = v29;
LABEL_11:
  v31 = *&v11[OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild];
  if (!v31 || v27 != v31)
  {
    v32 = v11;
    v27 = v27;
    sub_100026C18(v27, a2 & 1, v32, v32, v27, a2 & 1);
  }
}

char *sub_100023B44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_100004C60(&qword_10006F878, &qword_10004E8A0);
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_100004C60(&qword_10006ED18, &unk_10004DB90);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for FulfillmentFailureMode();
  __chkstk_darwin(v12);
  v14 = OBJC_IVAR____TtC12PreviewShell18MainViewController_invalidationHandle;
  (*(v15 + 104))(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FulfillmentFailureMode.softAssert(_:));
  type metadata accessor for ConcurrentInvalidationHandle();
  swift_allocObject();
  *&v0[v14] = ConcurrentInvalidationHandle.init(dsoHandle:file:line:column:function:name:failureMode:)();
  v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_state] = 0;
  *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild] = 0;
  *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController] = 0;
  *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController] = 0;
  v16 = OBJC_IVAR____TtC12PreviewShell18MainViewController_canvasObserver;
  v17 = type metadata accessor for CancellationToken();
  v18 = *(*(v17 - 8) + 56);
  v18(&v1[v16], 1, 1, v17);
  *&v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation] = 0;
  v39 = v18;
  v18(&v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCacheObserver], 1, 1, v17);
  v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground] = 0;
  *&v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer] = 0;
  *&v1[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas] = 0;
  v41.receiver = v1;
  v41.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  if (qword_10006E608 != -1)
  {
    swift_once();
  }

  v20 = qword_100073718;
  if (qword_100073718)
  {
    v37 = v5;

    v21 = v8;
    EventStreamObservable.projectedValue.getter();

    v22 = swift_allocObject();
    v23 = v38;
    *(v22 + 16) = v19;
    v36 = v19;
    v24 = v19;
    EventStream.observe(dsoHandle:file:line:column:function:_:)();

    (*(v23 + 8))(v21, v6);
    v39(v11, 0, 1, v17);
    v25 = OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCacheObserver;
    swift_beginAccess();
    sub_1000276F8(v11, v24 + v25);
    swift_endAccess();

    EventStreamObservable.wrappedValue.getter();

    if ((v40[0] & 1) == 0)
    {

      sub_1000293B0(sub_100027B64, v20);
    }

    v19 = v36;
    v5 = v37;
  }

  v26 = type metadata accessor for TaskPriority();
  v27 = *(*(v26 - 8) + 56);
  v27(v5, 1, 1, v26);
  type metadata accessor for MainActor();
  v28 = v19;
  v29 = static MainActor.shared.getter();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = &protocol witness table for MainActor;
  v30[4] = v28;
  v31 = v28;
  *&v31[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation] = sub_10002D668(0, 0, v5, &unk_10004E8B0, v30);

  v27(v5, 1, 1, v26);
  v32 = static MainActor.shared.getter();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = &protocol witness table for MainActor;
  v33[4] = v31;
  sub_10002D668(0, 0, v5, &unk_10004E8C0, v33);

  return v31;
}

uint64_t sub_1000241C0(char *a1, void *a2)
{
  v4 = type metadata accessor for ExecutionLane();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  static ExecutionLane.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a2;
  v10 = a2;
  ExecutionLane.execute(_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000242E0()
{
  v1 = type metadata accessor for ExecutionLane();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004C60(&qword_10006F868, &unk_10004E890);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ServerFarm();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v0;
  if (v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground] == 1)
  {
    v20 = v4;
    if (qword_10006E5C8 != -1)
    {
      swift_once();
    }

    v14 = *(v10 + 16);
    v19 = qword_1000736D0;
    v14(v13, qword_1000736D0 + OBJC_IVAR____TtC12PreviewShell19PreviewShellService_serverFarm, v9);
    ServerFarm.serviceHubServer.getter();
    (*(v10 + 8))(v13, v9);
    AggregatingHostServer.connectionMonitor.getter();

    AggregatingHostServer.ConnectionMonitor.status.getter();
    (*(v6 + 8))(v8, v5);
    type metadata accessor for ServiceHubService();
    sub_100027684(&qword_10006F870, &type metadata accessor for ServiceHubService, &protocol conformance descriptor for ServiceHubService);
    result = static AggregatingHostServer.ConnectionMonitor.Status.== infix(_:_:)();
    v15 = v20;
    if ((result & 1) != 0 && !*&v21[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer])
    {
      if (qword_10006E608 != -1)
      {
        result = swift_once();
      }

      if (!qword_100073718 || (, , EventStreamObservable.wrappedValue.getter(), , result = , v22 == 1))
      {
        if (v21[OBJC_IVAR____TtC12PreviewShell18MainViewController_state] - 1 >= 2)
        {
          sub_10001A730();
          static ExecutionLane.main.getter();
          v16 = swift_allocObject();
          v17 = v21;
          *(v16 + 16) = v21;
          v18 = v17;
          Future.observeFailure(on:_:)();

          return (*(v2 + 8))(v15, v1);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100024704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ExecutionLane();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_100004C60(&qword_10006F880, &qword_10004E8C8);
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = sub_100004C60(&qword_10006F868, &unk_10004E890);
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for ServerFarm();
  v4[12] = v8;
  v4[13] = *(v8 - 8);
  v4[14] = swift_task_alloc();
  v9 = sub_100004C60(&qword_10006F888, &unk_10004E8D0);
  v4[15] = v9;
  v4[16] = *(v9 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v11;
  v4[21] = v10;

  return _swift_task_switch(sub_100024990, v11, v10);
}

uint64_t sub_100024990()
{
  if (qword_10006E5C8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v19 = v0[6];
  v9 = qword_1000736D0;
  v10 = OBJC_IVAR____TtC12PreviewShell19PreviewShellService_serverFarm;
  v0[22] = qword_1000736D0;
  v0[23] = v10;
  v11 = *(v2 + 16);
  v0[24] = v11;
  v0[25] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v1, v9 + v10, v4);
  ServerFarm.serviceHubServer.getter();
  v12 = *(v2 + 8);
  v0[26] = v12;
  v0[27] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  AggregatingHostServer.connectionMonitor.getter();

  AggregatingHostServer.ConnectionMonitor.$status.getter();
  v13 = *(v5 + 8);
  v0[28] = v13;
  v0[29] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v6);
  AsyncStream.makeAsyncIterator()();
  (*(v8 + 8))(v7, v19);
  v14 = OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground;
  v0[30] = OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer;
  v0[31] = v14;
  v0[32] = OBJC_IVAR____TtC12PreviewShell18MainViewController_state;
  v15 = static MainActor.shared.getter();
  v0[33] = v15;
  v16 = swift_task_alloc();
  v0[34] = v16;
  *v16 = v0;
  v16[1] = sub_100024BB8;
  v17 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 35, v15, &protocol witness table for MainActor, v17);
}

uint64_t sub_100024BB8()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_100024CFC, v3, v2);
}

uint64_t sub_100024CFC()
{
  if (*(v0 + 280) == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    type metadata accessor for ServiceHubService();
    sub_100027684(&qword_10006F870, &type metadata accessor for ServiceHubService, &protocol conformance descriptor for ServiceHubService);
    if (static AggregatingHostServer.ConnectionMonitor.Status.== infix(_:_:)())
    {
      v3 = *(v0 + 240);
      v4 = *(v0 + 16);
      if (*(v4 + v3))
      {

        DelayedInvocation.cancel()();

        v3 = *(v0 + 240);
        v4 = *(v0 + 16);
      }

      *(v4 + v3) = 0;
    }

    if (*(*(v0 + 16) + *(v0 + 248)) == 1)
    {
      v18 = *(v0 + 224);
      v5 = *(v0 + 208);
      v6 = *(v0 + 112);
      v8 = *(v0 + 88);
      v7 = *(v0 + 96);
      v9 = *(v0 + 72);
      (*(v0 + 192))(v6, *(v0 + 176) + *(v0 + 184), v7);
      ServerFarm.serviceHubServer.getter();
      v5(v6, v7);
      AggregatingHostServer.connectionMonitor.getter();

      AggregatingHostServer.ConnectionMonitor.status.getter();
      v18(v8, v9);
      if ((static AggregatingHostServer.ConnectionMonitor.Status.== infix(_:_:)() & 1) != 0 && !*(*(v0 + 16) + *(v0 + 240)))
      {
        if (qword_10006E608 != -1)
        {
          swift_once();
        }

        if (!qword_100073718 || (, , EventStreamObservable.wrappedValue.getter(), , , *(v0 + 281) == 1))
        {
          v13 = *(v0 + 16);
          if (v13[*(v0 + 256)] - 1 >= 2)
          {
            v15 = *(v0 + 32);
            v14 = *(v0 + 40);
            v16 = *(v0 + 24);
            sub_10001A730();
            static ExecutionLane.main.getter();
            *(swift_allocObject() + 16) = v13;
            v17 = v13;
            Future.observeFailure(on:_:)();

            (*(v15 + 8))(v14, v16);
          }
        }
      }
    }

    v10 = static MainActor.shared.getter();
    *(v0 + 264) = v10;
    v11 = swift_task_alloc();
    *(v0 + 272) = v11;
    *v11 = v0;
    v11[1] = sub_100024BB8;
    v12 = *(v0 + 120);

    return AsyncStream.Iterator.next(isolation:)(v0 + 280, v10, &protocol witness table for MainActor, v12);
  }
}

uint64_t sub_1000250E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  ObjectType = swift_getObjectType();
  sub_100004C60(&qword_10006ED18, &unk_10004DB90);
  v4[16] = swift_task_alloc();
  v7 = type metadata accessor for CancellationToken();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v4[14] = a4;
  v8 = swift_task_alloc();
  v4[22] = v8;
  v9 = sub_100027684(&qword_10006F860, type metadata accessor for MainViewController, &unk_10004E828);
  *v8 = v4;
  v8[1] = sub_100025284;

  return ConcurrentInvalidatable.invalidation.getter(ObjectType, v9);
}

uint64_t sub_100025284()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000253C0, v1, v0);
}

uint64_t sub_1000253C0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];

  v4 = OBJC_IVAR____TtC12PreviewShell18MainViewController_canvasObserver;
  swift_beginAccess();
  v5 = *(v2 + 48);
  if (!v5(v3 + v4, 1, v1))
  {
    v7 = v0[18];
    v6 = v0[19];
    v8 = v0[17];
    (*(v7 + 16))(v6, v3 + v4, v8);
    CancellationToken.cancel(dsoHandle:file:line:column:function:)();
    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[15];
  v21 = OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation;
  v10 = v9;
  if (*(v9 + OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation))
  {

    Task.cancel()();

    v10 = v0[15];
  }

  v22 = v3;
  v11 = v0[17];
  v12 = OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCacheObserver;
  swift_beginAccess();
  if (!v5(v10 + v12, 1, v11))
  {
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];
    (*(v14 + 16))(v13, v10 + v12, v15);
    CancellationToken.cancel(dsoHandle:file:line:column:function:)();
    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[16];
  v17 = v0[17];
  v18 = *(v0[18] + 56);
  v18(v16, 1, 1, v17);
  swift_beginAccess();
  sub_1000276F8(v16, v22 + v4);
  swift_endAccess();
  *(v9 + v21) = 0;

  v18(v16, 1, 1, v17);
  swift_beginAccess();
  sub_1000276F8(v16, v10 + v12);
  swift_endAccess();

  v19 = v0[1];

  return v19();
}

void sub_100025774()
{
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame:{v7, v9, v11, v13}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v14 = *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController];
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = [v14 view];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [v0 view];
  if (!v17)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame:{v20, v22, v24, v26}];
LABEL_9:
  v27 = *&v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas];
  if (!v27)
  {
    return;
  }

  v28 = [*(v27 + 24) view];
  if (!v28)
  {
    goto LABEL_18;
  }

  v29 = v28;
  v30 = [v0 view];
  if (!v30)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v31 = v30;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v29 setFrame:{v33, v35, v37, v39}];
}

uint64_t sub_1000259C4()
{
  v1 = type metadata accessor for SchedulerInterval();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchScheduler();
  result = __chkstk_darwin(v5);
  if ((v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground] = 1;
    type metadata accessor for DelayedInvocation();
    sub_1000052B8(0, &qword_10006E8A0, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.main.getter();
    DispatchScheduler.init(queue:)();
    v7 = swift_allocObject();
    *(v7 + 16) = 0x4000000000000000;
    *(v7 + 24) = v0;
    v8 = v0;
    v9 = DelayedInvocation.__allocating_init<A>(scheduler:callback:)();
    SchedulerInterval.init(_:)();
    DelayedInvocation.schedule(delay:)();
    (*(v2 + 8))(v4, v1);
    *&v8[OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer] = v9;
  }

  return result;
}

uint64_t sub_100025BAC(uint64_t a1, double a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v8, v9, "Timed out after %f seconds waiting for any incoming Xcode connection", v10, 0xCu);
  }

  (*(v5 + 8))(v7, v4);
  v11 = OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer;
  if (*(a1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer))
  {

    DelayedInvocation.cancel()();
  }

  *(a1 + v11) = 0;

  return sub_1000242E0();
}

id sub_100025D44()
{
  v1 = OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController;
  v2 = *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() storyboardWithName:v4 bundle:0];

    v6 = [v5 instantiateInitialViewController];
    if (!v6)
    {
      v6 = [objc_allocWithZone(UIViewController) init];
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100025E38(char *a1, void *a2, char a3)
{
  [a1 addChildViewController:a2];
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [a2 view];
  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  [v7 insertSubview:v8 atIndex:0];

  v10 = [a2 view];
  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [a1 view];
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame:{v15, v17, v19, v21}];
  v22 = [a2 view];
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  [v22 setAlpha:1.0];

  [a2 didMoveToParentViewController:a1];
  v24 = *&a1[OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild];
  *&a1[OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild] = a2;
  if (v24)
  {
    if (a3)
    {
      v25 = objc_opt_self();
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      v45 = sub_1000275F0;
      v46 = v26;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_100023350;
      v44 = &unk_100063318;
      v27 = _Block_copy(&aBlock);
      v28 = a2;
      v29 = v24;

      v30 = swift_allocObject();
      *(v30 + 16) = a1;
      *(v30 + 24) = v29;
      v45 = sub_100027638;
      v46 = v30;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1000232FC;
      v44 = &unk_100063368;
      v31 = _Block_copy(&aBlock);
      v32 = v29;
      v33 = a1;

      [v25 animateWithDuration:v27 animations:v31 completion:0.3];
      _Block_release(v31);
      _Block_release(v27);

      return;
    }

    sub_1000052B8(0, &qword_10006F858, UIViewController_ptr);
    v36 = a2;
    v40 = v24;
    v37 = static NSObject.== infix(_:_:)();

    if (v37)
    {
      goto LABEL_14;
    }

    [v40 willMoveToParentViewController:0];
    v38 = [v40 view];
    if (v38)
    {
      v39 = v38;
      [v38 removeFromSuperview];

      v35 = v40;
      goto LABEL_13;
    }

LABEL_22:
    __break(1u);
    return;
  }

  v34 = a2;
  v35 = 0;
LABEL_13:
  v40 = v35;
  [v35 removeFromParentViewController];
LABEL_14:
}

void sub_10002622C(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha:0.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_10002628C(int a1, uint64_t a2, id a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild);
  if (!v4 || (sub_1000052B8(0, &qword_10006F858, UIViewController_ptr), v5 = a3, v6 = v4, v7 = static NSObject.== infix(_:_:)(), v5, v6, (v7 & 1) == 0))
  {
    [a3 willMoveToParentViewController:0];
    v8 = [a3 view];
    if (v8)
    {
      v9 = v8;
      [v8 removeFromSuperview];

      [a3 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100026380(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.uv.getter();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = a1;
    v14 = v9;
    *v8 = 136315138;
    swift_errorRetain();
    sub_100004C60(&qword_10006E8E8, &qword_10004D780);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000E0C0(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "failed to load cached preview: %s", v8, 0xCu);
    sub_10000519C(v9);
  }

  (*(v3 + 8))(v5, v2);
  sub_10002375C(1, 1);
}

uint64_t type metadata accessor for MainViewController(uint64_t a1)
{
  result = qword_10006F820;
  if (!qword_10006F820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000266CC(uint64_t a1)
{
  sub_100026794(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100026794(uint64_t a1)
{
  if (!qword_10006F830)
  {
    type metadata accessor for CancellationToken();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10006F830);
    }
  }
}

uint64_t getEnumTagSinglePayload for MainViewController.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MainViewController.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100026948()
{
  result = qword_10006F838;
  if (!qword_10006F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F838);
  }

  return result;
}

uint64_t sub_10002699C()
{
  v1 = type metadata accessor for ExecutionLane();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (qword_10006E5C8 != -1)
  {
    swift_once();
  }

  sub_10001A730();
  static ExecutionLane.main.getter();
  *(swift_allocObject() + 16) = v5;
  v6 = v5;
  Future.observeFailure(on:_:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100026B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100027684(&qword_10006F860, type metadata accessor for MainViewController, &unk_10004E828);

  return ConcurrentInvalidatable.invalidate(callsite:trace:)(a1, a2, a3, v6);
}

uint64_t sub_100026BD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100026C18(void *a1, int a2, void *a3, void *a4, void *a5, char a6)
{
  v12 = type metadata accessor for Logger();
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  *(v15 + 32) = a6;
  v16 = a4;
  v17 = a5;
  v18 = [a1 supportedInterfaceOrientations];
  v19 = [a3 view];
  if (!v19)
  {

    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 window];

  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = [v21 windowScene];

  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = [v22 interfaceOrientation];
  if (sub_1000274C8(v23) && (v18 & 0x18) == 0x18 || (v24 = sub_1000274D8(v23)) && (v18 & 2) != 0)
  {

LABEL_9:
    sub_100025E38(v16, v17, a6 & 1);

    return;
  }

  v57 = a2;
  v55 = &v52;
  v56 = v16;
  v65 = &off_100062568;
  __chkstk_darwin(v24);
  *(&v52 - 2) = v18;
  sub_100004C60(&qword_10006F848, &qword_10004E888);
  type metadata accessor for UIInterfaceOrientation(0);
  sub_1000274F0();
  Sequence.firstMap<A>(_:)();
  if (v60)
  {
    v25 = 0;
  }

  else
  {
    v25 = aBlock;
  }

  static Logger.uv.getter();
  v26 = v22;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v55 = v25;
  if (!v29)
  {

    (*(v58 + 8))(v14, v12);
    v35 = v57;
    goto LABEL_46;
  }

  v30 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  aBlock = v52;
  *v30 = 136315394;
  v31 = [v26 interfaceOrientation];
  v54 = v26;
  v53 = v28;
  if (v31 <= 1)
  {
    if (!v31)
    {
      v34 = 0xE700000000000000;
      v33 = 0x6E776F6E6B6E75;
      goto LABEL_29;
    }

    if (v31 == 1)
    {
      v34 = 0xE800000000000000;
      v33 = 0x7469617274726F70;
      goto LABEL_29;
    }
  }

  else
  {
    if (v31 == 2)
    {
      v33 = 0xD000000000000012;
      v34 = 0x8000000100054E60;
      goto LABEL_29;
    }

    if (v31 == 3)
    {
      v34 = 0xEE00746867695265;
      v33 = 0x70616373646E616CLL;
      goto LABEL_29;
    }

    v32 = v31;
    v33 = 0x70616373646E616CLL;
    v34 = 0xED00007466654C65;
    if (v32 == 4)
    {
      goto LABEL_29;
    }
  }

  v33 = 0x446E776F6E6B6E75;
  v34 = 0xEE00746C75616665;
LABEL_29:
  v36 = sub_10000E0C0(v33, v34, &aBlock);

  *(v30 + 4) = v36;
  *(v30 + 12) = 2080;
  if (v25 > 2)
  {
    v37 = v58;
    if (v25 <= 4)
    {
      if (v25 == 3)
      {
        v39 = 0xED00007466654C65;
        v38 = 0x70616373646E616CLL;
      }

      else
      {
        v38 = 0x70616373646E616CLL;
        v39 = 0xEE00746867695265;
      }

      goto LABEL_45;
    }

    if (v25 == 6)
    {
      v39 = 0xE800000000000000;
      v38 = 0x6E776F4465636166;
      goto LABEL_45;
    }

    if (v25 == 5)
    {
      v39 = 0xE600000000000000;
      v38 = 0x705565636166;
      goto LABEL_45;
    }

LABEL_41:
    v38 = 0x446E776F6E6B6E75;
    v39 = 0xEE00746C75616665;
    goto LABEL_45;
  }

  v37 = v58;
  if (!v25)
  {
    v39 = 0xE700000000000000;
    v38 = 0x6E776F6E6B6E75;
    goto LABEL_45;
  }

  if (v25 == 1)
  {
    v39 = 0xE800000000000000;
    v38 = 0x7469617274726F70;
    goto LABEL_45;
  }

  if (v25 != 2)
  {
    goto LABEL_41;
  }

  v38 = 0xD000000000000012;
  v39 = 0x8000000100054E60;
LABEL_45:
  v40 = sub_10000E0C0(v38, v39, &aBlock);

  *(v30 + 14) = v40;
  _os_log_impl(&_mh_execute_header, v27, v53, "adjusting device orientation from %s -> %s", v30, 0x16u);
  swift_arrayDestroy();

  (*(v37 + 8))(v14, v12);
  v35 = v57;
  v26 = v54;
LABEL_46:
  v41 = v56;
  v42 = [objc_opt_self() currentDevice];
  v43 = swift_allocObject();
  v44 = v55;
  *(v43 + 16) = v42;
  *(v43 + 24) = v44;
  v45 = v42;
  v46 = v45;
  if (v35)
  {
    if ([v45 userInterfaceIdiom])
    {
      v47 = 0.4;
    }

    else
    {
      v47 = 0.3;
    }

    v48 = objc_opt_self();
    v63 = sub_10002758C;
    v64 = v43;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_100023350;
    v62 = &unk_100063278;
    v49 = _Block_copy(&aBlock);

    v50 = swift_allocObject();
    *(v50 + 16) = sub_1000274BC;
    *(v50 + 24) = v15;
    v63 = sub_10000E9D8;
    v64 = v50;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = sub_1000232FC;
    v62 = &unk_1000632C8;
    v51 = _Block_copy(&aBlock);

    [v48 animateWithDuration:v49 animations:v51 completion:v47];

    _Block_release(v51);
    _Block_release(v49);
  }

  else
  {
    [v45 setOrientation:v44 animated:0];
    sub_100025E38(v41, v17, a6 & 1);
  }
}

uint64_t sub_10002747C()
{

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_1000274F0()
{
  result = qword_10006F850;
  if (!qword_10006F850)
  {
    sub_100004D0C(&qword_10006F848, &qword_10004E888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F850);
  }

  return result;
}

uint64_t sub_100027554()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000275A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000275B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000275F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027640()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000276F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006ED18, &unk_10004DB90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100027768()
{
  v1 = v0;
  v2 = type metadata accessor for FulfillmentFailureMode();
  __chkstk_darwin(v2);
  v4 = OBJC_IVAR____TtC12PreviewShell18MainViewController_invalidationHandle;
  (*(v5 + 104))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FulfillmentFailureMode.softAssert(_:));
  type metadata accessor for ConcurrentInvalidationHandle();
  swift_allocObject();
  *(v0 + v4) = ConcurrentInvalidationHandle.init(dsoHandle:file:line:column:function:name:failureMode:)();
  *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_state) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_visibleChild) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_splashViewController) = 0;
  *(v0 + OBJC_IVAR____TtC12PreviewShell18MainViewController_connectViewController) = 0;
  v6 = OBJC_IVAR____TtC12PreviewShell18MainViewController_canvasObserver;
  v7 = type metadata accessor for CancellationToken();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeObservation) = 0;
  v8(v1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCacheObserver, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_isForeground) = 0;
  *(v1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_xcodeConnectionWaitTimer) = 0;
  *(v1 + OBJC_IVAR____TtC12PreviewShell18MainViewController_previewCanvas) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000279B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001D424;

  return sub_100024704(a1, v4, v5, v6);
}

uint64_t sub_100027A68()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100027AA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002020C;

  return sub_1000250E4(a1, v4, v5, v6);
}

uint64_t sub_100027B6C()
{
  if (*(v0 + 16) == 1)
  {
    return sub_1000242E0();
  }

  return result;
}

uint64_t sub_100027B9C(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006ED18, &unk_10004DB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100027C40(uint64_t a1)
{
  v2 = *(a1 + 24);
  [v2 setRootViewController:0];
  [v2 setHidden:1];
  [*(a1 + 16) _invalidate];
  v3 = [objc_opt_self() sharedInstance];
  v4 = String._bridgeToObjectiveC()();
  [v3 destroyScene:v4 withTransitionContext:0];
}

uint64_t sub_100027D10(uint64_t a1)
{
  v2 = v1;
  v90 = type metadata accessor for SceneConfigurator(0);
  __chkstk_darwin(v90);
  v77 = &v74[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for SceneUpdateTiming();
  v96 = *(updated - 8);
  v5 = __chkstk_darwin(updated);
  v83 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v84 = &v74[-v8];
  __chkstk_darwin(v7);
  v91 = &v74[-v9];
  v10 = type metadata accessor for SceneUpdateHandshake();
  v93 = *(v10 - 8);
  v94 = v10;
  __chkstk_darwin(v10);
  v85 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = type metadata accessor for Logger();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v13 = &v74[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for PreviewPreferences();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for SceneLayout();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v82 = &v74[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v24 = &v74[-v23];
  __chkstk_darwin(v22);
  v26 = &v74[-v25];
  sub_10000E678((v2 + 40), *(v2 + 64));
  SceneUpdateHandshake.preferences.getter();
  sub_100021D9C(v26);
  v27 = *(v15 + 8);
  v81 = v14;
  v80 = v15 + 8;
  v78 = v27;
  v27(v17, v14);
  static Logger.uv.getter();
  v28 = v85;
  v29 = *(v93 + 16);
  v89 = a1;
  v29(v85, a1, v94);
  v99 = v19;
  v30 = *(v19 + 16);
  v95 = v26;
  v79 = v30;
  v30(v24, v26, v18);

  v86 = v13;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  v33 = os_log_type_enabled(v31, v32);
  v97 = v18;
  v92 = v2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *&v101[0] = swift_slowAlloc();
    *v34 = 136315650;
    v76 = v31;
    SceneUpdateHandshake.preferences.getter();
    sub_100028D1C(&unk_10006FA20, &type metadata accessor for PreviewPreferences, &protocol conformance descriptor for PreviewPreferences);
    v75 = v32;
    v35 = v81;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v78(v17, v35);
    (*(v93 + 8))(v28, v94);
    v39 = sub_10000E0C0(v36, v38, v101);
    v40 = v97;

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    sub_10000E678((v2 + 40), *(v2 + 64));
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = sub_10000E0C0(v41, v42, v101);

    *(v34 + 14) = v43;
    *(v34 + 22) = 2080;
    v79(v82, v24, v40);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = *(v99 + 8);
    v47(v24, v40);
    v48 = sub_10000E0C0(v44, v46, v101);

    *(v34 + 24) = v48;
    v49 = v76;
    _os_log_impl(&_mh_execute_header, v76, v75, "Resolved preferences for %s using %s personality, new layout is %s", v34, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v47 = *(v99 + 8);
    v47(v24, v18);
    (*(v93 + 8))(v28, v94);
  }

  (*(v87 + 8))(v86, v88);
  v50 = SceneUpdateHandshake.fenceHandle.getter();
  v51 = *(v96 + 104);
  v52 = v91;
  if (!v50)
  {
    v94 = v47;
    v54 = enum case for SceneUpdateTiming.async(_:);
    (v51)(v84, enum case for SceneUpdateTiming.async(_:), updated);
    LODWORD(v93) = enum case for SceneUpdateTiming.fenced(_:);
    v51(v83);
    sub_100028D1C(&unk_10006FA10, &type metadata accessor for SceneUpdateTiming, &protocol conformance descriptor for SceneUpdateTiming);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v101[0] == v100)
    {
      v55 = *(v96 + 8);
      v56 = updated;
      v55(v83, updated);
      v55(v84, v56);
    }

    else
    {
      v57 = v54;
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v59 = updated;
      v60 = *(v96 + 8);
      v60(v83, updated);
      v60(v84, v59);
      v52 = v91;

      if ((v58 & 1) == 0)
      {
        (v51)(v52, v57, updated);
        v53 = 0;
        goto LABEL_11;
      }
    }

    v53 = [objc_opt_self() createForScene:*(v92 + 104)];
    (v51)(v52, v93, updated);
    v61 = v53;
LABEL_11:
    v47 = v94;
    goto LABEL_12;
  }

  (v51)(v91, enum case for SceneUpdateTiming.fenced(_:), updated);
  v53 = v50;
LABEL_12:
  v62 = v92;
  v63 = v92 + OBJC_IVAR____TtC12PreviewShell14LocalSceneHost_configurator;
  swift_beginAccess();
  v64 = *(v90 + 24);
  v65 = *(v99 + 24);
  v66 = v50;
  v65(v63 + v64, v95, v97);
  v67 = swift_endAccess();
  __chkstk_darwin(v67);
  v72 = v62;
  v73 = v53;
  sub_10003ADDC(sub_100028D14, &v74[-32]);

  v68 = v77;
  sub_100022108(v63, v77);
  v69 = *(v62 + 104);
  v101[0] = *(v62 + 88);
  v101[1] = v69;
  v101[2] = *(v62 + 120);
  v102 = *(v62 + 136);
  sub_10003AB58(v101);
  sub_1000220AC(v68);
  sub_100004C60(&qword_10006EA20, &qword_10004D9B0);
  v73 = v52;
  LOBYTE(v72) = 2;
  v70 = static Future.succeeded(dsoHandle:file:line:column:function:_:)();
  [v53 invalidate];

  (*(v96 + 8))(v52, updated);
  v47(v95, v97);
  return v70;
}

void sub_100028884(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SceneConfigurator(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12PreviewShell14LocalSceneHost_configurator;
  swift_beginAccess();
  sub_100022108(a3 + v11, v10);
  sub_10003A5F0(a1);
  sub_1000220AC(v10);
  if (a4)
  {
    v12 = [a4 underlying];
  }

  else
  {
    v12 = 0;
  }

  [a2 setAnimationFence:v12];
}

uint64_t sub_100028988(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SceneConfigurator(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12PreviewShell14LocalSceneHost_configurator;
  swift_beginAccess();
  sub_100022108(a3 + v8, v7);
  sub_10003A5F0(a1);
  return sub_1000220AC(v7);
}

uint64_t sub_100028A3C()
{

  sub_10000519C((v0 + 40));

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 136);
  swift_unknownObjectRelease();

  sub_1000220AC(v0 + OBJC_IVAR____TtC12PreviewShell14LocalSceneHost_configurator);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalSceneHost(uint64_t a1)
{
  result = qword_10006F8B8;
  if (!qword_10006F8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100028B54(uint64_t a1)
{
  result = type metadata accessor for SceneConfigurator(319);
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

__n128 sub_100028C20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100028C3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100028C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100028D1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100028D64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v47 = a2;
  v48 = type metadata accessor for Logger();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  __chkstk_darwin(v7 - 8);
  v43 = &v42 - v8;
  v9 = type metadata accessor for PreviewType();
  v45 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LaunchPayload();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v19 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_launches;
  swift_beginAccess();
  v44 = v3;
  v20 = *(v3 + v19);
  if (*(v20 + 16) && (v21 = sub_1000070AC(v47), (v22 & 1) != 0))
  {
    v23 = v13;
    v24 = *(v20 + 56) + *(v13 + 72) * v21;
    v25 = *(v13 + 16);
    v26 = v12;
    v25(v16, v24, v12);
    (*(v23 + 32))(v18, v16, v12);
    swift_endAccess();
    v27 = v46;
    ShellUpdatePayload.previewType.getter();
    v28 = v45;
    if ((*(v45 + 88))(v11, v9) == enum case for PreviewType.hosted(_:))
    {
      (*(v28 + 96))(v11, v9);
      v29 = type metadata accessor for PreviewType.HostLocation();
      v30 = *(v29 - 8);
      if ((*(v30 + 88))(v11, v29) == enum case for PreviewType.HostLocation.mainScene(_:))
      {
        (*(v30 + 8))(v11, v29);
        v31 = v18;
        v32 = v43;
        v25(v43, v31, v26);
        v33 = type metadata accessor for PreviewCache.Replayable(0);
        v34 = *(v33 + 20);
        updated = type metadata accessor for ShellUpdatePayload();
        (*(*(updated - 8) + 16))(v32 + v34, v27, updated);
        (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
        v36 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
        v37 = v44;
        swift_beginAccess();
        sub_10001DE38(v32, v37 + v36);
        swift_endAccess();
        sub_100029688();
        return (*(v23 + 8))(v31, v26);
      }

      else
      {
        (*(v23 + 8))(v18, v26);
        return (*(v30 + 8))(v11, v29);
      }
    }

    else
    {
      (*(v23 + 8))(v18, v26);
      return (*(v28 + 8))(v11, v9);
    }
  }

  else
  {
    swift_endAccess();
    static Logger.uv.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "PreviewCache: ignoring update with no previously stored launch", v41, 2u);
    }

    return (*(v4 + 8))(v6, v48);
  }
}

uint64_t sub_1000292E8()
{
  type metadata accessor for PreviewCache(0);
  v0 = swift_allocObject();
  result = sub_10002AE24();
  qword_100073718 = v0;
  return result;
}

uint64_t sub_100029328(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
  swift_beginAccess();
  sub_10002D480(a1, a2 + v4);
  swift_endAccess();

  EventStreamObservable.wrappedValue.setter();
}

uint64_t sub_1000293B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + OBJC_IVAR____TtC12PreviewShell12PreviewCache_persistQueue);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10002D1E0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023350;
  aBlock[3] = &unk_1000635F0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_10002D204(&unk_10006FC90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004C60(&unk_10006E8B0, &unk_10004D6B0);
  sub_10002D24C(&qword_10006FCA0, &unk_10006E8B0, &unk_10004D6B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_100029688()
{
  v1 = type metadata accessor for SchedulerInterval();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v18 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchScheduler();
  __chkstk_darwin(v3);
  v4 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
  swift_beginAccess();
  sub_10002D4F0(v0 + v11, v10, &qword_10006F4A0, &qword_10004E1F0);
  v12 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_persistTimer;
  swift_beginAccess();
  if (*(v0 + v12))
  {

    DelayedInvocation.cancel()();
  }

  type metadata accessor for DelayedInvocation();
  v13 = *(v0 + OBJC_IVAR____TtC12PreviewShell12PreviewCache_persistQueue);
  DispatchScheduler.init(queue:)();
  sub_10002D4F0(v10, v8, &qword_10006F4A0, &qword_10004E1F0);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  sub_10002B314(v8, v15 + v14);

  *(v0 + v12) = DelayedInvocation.__allocating_init<A>(scheduler:callback:)();

  swift_beginAccess();
  if (*(v0 + v12))
  {
    swift_endAccess();

    v16 = v18;
    SchedulerInterval.init(floatLiteral:)();
    DelayedInvocation.schedule(delay:)();

    (*(v19 + 8))(v16, v20);
    return sub_10000BF34(v10, &qword_10006F4A0, &qword_10004E1F0);
  }

  else
  {
    sub_10000BF34(v10, &qword_10006F4A0, &qword_10004E1F0);
    return swift_endAccess();
  }
}

uint64_t sub_1000299F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  sub_100029DC0(&v22 - v14);
  sub_100014DFC();
  v22 = static OS_dispatch_queue.main.getter();
  sub_10002D4F0(v15, v13, &qword_10006F4A0, &qword_10004E1F0);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  v18 = v24;
  *(v17 + 16) = v23;
  *(v17 + 24) = v18;
  sub_10002B314(v13, v17 + v16);
  aBlock[4] = sub_10002D40C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023350;
  aBlock[3] = &unk_100063640;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002D204(&unk_10006FC90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004C60(&unk_10006E8B0, &unk_10004D6B0);
  sub_10002D24C(&qword_10006FCA0, &unk_10006E8B0, &unk_10004D6B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
  return sub_10000BF34(v15, &qword_10006F4A0, &qword_10004E1F0);
}

uint64_t sub_100029DC0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ShellUpdatePayload();
  v45 = *(updated - 8);
  __chkstk_darwin(updated);
  v47 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for LaunchPayload();
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004C60(&qword_10006FBD0, &qword_10004EA68);
  __chkstk_darwin(v8);
  v10 = v43 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v43 - v16;
  if (qword_10006E610 != -1)
  {
    swift_once();
  }

  v18 = sub_10000BE8C(v8, qword_10006FA30);
  sub_10002D4F0(v18, v10, &qword_10006FBD0, &qword_10004EA68);
  v19 = sub_100004C60(&qword_10006FBD8, &qword_10004EA70);
  if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
  {
    sub_10000BF34(v10, &qword_10006FBD0, &qword_10004EA68);
    v20 = type metadata accessor for PreviewCache.Replayable(0);
    v21 = *(*(v20 - 8) + 56);
    v22 = a1;
  }

  else
  {
    v43[1] = v3;
    v43[2] = v2;
    v44 = a1;
    v23 = *(v19 + 48);
    v24 = *(v12 + 32);
    v24(v17, v10, v11);
    v24(v15, &v10[v23], v11);
    v25 = objc_allocWithZone(NSDictionary);
    URL._bridgeToObjectiveC()(v26);
    v28 = v27;
    v29 = [v25 initWithContentsOfURL:v27];

    if (v29)
    {
      v51 = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v51)
      {
        v30 = objc_allocWithZone(NSDictionary);
        URL._bridgeToObjectiveC()(v31);
        v33 = v32;
        v34 = [v30 initWithContentsOfURL:v32];

        if (v34)
        {
          v51 = 0;
          static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

          if (v51)
          {
            sub_10002D204(&unk_10006FBE0, &type metadata accessor for LaunchPayload, &protocol conformance descriptor for LaunchPayload);
            PropertyListRepresentable.init(serializableDictionary:)();
            sub_10002D204(&qword_10006FBF0, &type metadata accessor for ShellUpdatePayload, &protocol conformance descriptor for ShellUpdatePayload);
            v35 = v47;
            v36 = updated;
            PropertyListRepresentable.init(serializableDictionary:)();
            v38 = v35;
            v39 = *(v12 + 8);
            v39(v15, v11);
            v39(v17, v11);
            v40 = v44;
            (*(v46 + 32))(v44, v7, v49);
            v41 = type metadata accessor for PreviewCache.Replayable(0);
            (*(v45 + 32))(v40 + *(v41 + 20), v38, v36);
            return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
          }
        }
      }
    }

    v37 = *(v12 + 8);
    v37(v15, v11);
    v37(v17, v11);
    v20 = type metadata accessor for PreviewCache.Replayable(0);
    v21 = *(*(v20 - 8) + 56);
    v22 = v44;
  }

  return v21(v22, 1, 1, v20);
}

uint64_t sub_10002A588()
{
  v0 = sub_100004C60(&qword_10006FBD0, &qword_10004EA68);
  sub_100020278(v0, qword_10006FA30);
  v1 = sub_10000BE8C(v0, qword_10006FA30);
  return sub_10002A5E0(v1);
}

uint64_t sub_10002A5E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 URLsForDirectory:9 inDomains:1];

  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v15 + 16))
  {
    (*(v7 + 16))(v10, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    (*(v7 + 32))(v12, v10, v6);
    v16 = sub_100004C60(&qword_10006FBD8, &qword_10004EA70);
    URL.appendingPathComponent(_:)();
    URL.appendingPathComponent(_:)();
    (*(v7 + 8))(v12, v6);
    return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
  }

  else
  {

    static Logger.uv.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "unable to locate documents directory for preview cache", v20, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v21 = sub_100004C60(&qword_10006FBD8, &qword_10004EA70);
    return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  }
}

uint64_t sub_10002A97C()
{

  sub_10000BF34(v0 + OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable, &qword_10006F4A0, &qword_10004E1F0);

  return swift_deallocClassInstance();
}

void sub_10002AA50(uint64_t a1)
{
  sub_10002AB14(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002AB14(uint64_t a1)
{
  if (!qword_10006FA98)
  {
    type metadata accessor for PreviewCache.Replayable(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10006FA98);
    }
  }
}

uint64_t sub_10002ABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LaunchPayload();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    updated = type metadata accessor for ShellUpdatePayload();
    v11 = *(*(updated - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, updated);
  }
}

uint64_t sub_10002ACA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LaunchPayload();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    updated = type metadata accessor for ShellUpdatePayload();
    v13 = *(*(updated - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, updated);
  }
}

uint64_t sub_10002ADA0(uint64_t a1)
{
  result = type metadata accessor for LaunchPayload();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ShellUpdatePayload();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002AE24()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v2 - 8);
  v13 = v2;
  __chkstk_darwin(v2);
  v11 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100004C60(&unk_10006FBF8, &qword_10004EA78);
  v15 = 0;
  default argument 1 of EventStreamObservable.init(wrappedValue:emitsInitialValue:)();
  *(v0 + 16) = EventStreamObservable.__allocating_init(wrappedValue:emitsInitialValue:)();
  v6 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_replayable;
  v7 = type metadata accessor for PreviewCache.Replayable(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_launches;
  *(v1 + v8) = sub_10002BFA4(&_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC12PreviewShell12PreviewCache_persistTimer) = 0;
  v10 = OBJC_IVAR____TtC12PreviewShell12PreviewCache_persistQueue;
  sub_100014DFC();
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_10002D204(&qword_10006FC08, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004C60(&qword_10006FC10, &qword_10004EA80);
  sub_10002D24C(&qword_10006FC18, &qword_10006FC10, &qword_10004EA80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v1 + v10) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v1;
}

void sub_10002B134(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10002B1A8()
{
  v1 = *(sub_100004C60(&qword_10006F4A0, &qword_10004E1F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for PreviewCache.Replayable(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = type metadata accessor for LaunchPayload();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = *(v5 + 20);
    updated = type metadata accessor for ShellUpdatePayload();
    (*(*(updated - 8) + 8))(v0 + v3 + v7, updated);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002B314(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B384()
{
  v1 = *(sub_100004C60(&qword_10006F4A0, &qword_10004E1F0) - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10002CA10(v2);
}

unint64_t sub_10002B3F0(uint64_t a1)
{
  v2 = sub_100004C60(&unk_10006FC80, &qword_10004EAC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004C60(&qword_10006EA38, &unk_10004D9C0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v9, v5, &unk_10006FC80, &qword_10004EAC0);
      result = sub_100006EC0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      updated = type metadata accessor for SceneUpdateSeed();
      result = (*(*(updated - 8) + 32))(v14 + *(*(updated - 8) + 72) * v13, v5, updated);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10002B5D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&unk_10006FC70, &qword_10004EAB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100006F94(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_10002B6D0(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006FC60, &qword_10004EAA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004C60(&qword_10006FC68, &qword_10004EAB0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v9, v5, &qword_10006FC60, &qword_10004EAA8);
      result = sub_100006FD8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ContentKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10000BF1C(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10002B8C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&qword_10006EAB0, &qword_10004D9F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100006E04(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10002B9C4(uint64_t a1)
{
  v2 = sub_100004C60(&unk_10006FC40, &qword_10004EAA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004C60(&qword_10006EA80, &qword_10004D9D8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v9, v5, &unk_10006FC40, &qword_10004EAA0);
      result = sub_1000070AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for AgentDescriptor.Bundle();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10002BBAC(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006FC30, &qword_10004EA90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004C60(&qword_10006FC38, &qword_10004EA98);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v9, v5, &qword_10006FC30, &qword_10004EA90);
      result = sub_100006FD8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ContentKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10000BF1C(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10002BD9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&qword_10006EAB8, &qword_10004DA00);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100007180(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10002BEA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&unk_10006FC50, &unk_10004D9E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100007180(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10002BFA4(uint64_t a1)
{
  v2 = sub_100004C60(&unk_10006FC20, &qword_10004EA88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004C60(&qword_10006EA68, &qword_10004D9D0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v9, v5, &unk_10006FC20, &qword_10004EA88);
      result = sub_1000070AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for AgentDescriptor.Bundle();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for LaunchPayload();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10002C1C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004C60(&unk_10006EAC0, &unk_10004DA08);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100006E04(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10002C2C8(uint64_t a1)
{
  v2 = sub_100004C60(&qword_10006FCB0, &qword_10004E548);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004C60(&qword_10006FCB8, qword_10004EAC8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002D4F0(v9, v5, &qword_10006FCB0, &qword_10004E548);
      result = sub_100007214(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ContentCategory();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for EntryPointCategory();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_10002C4E8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004C60(&qword_10006FBD0, &qword_10004EA68);
  __chkstk_darwin(v4);
  v6 = &v44 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  if (qword_10006E610 != -1)
  {
    swift_once();
  }

  v14 = sub_10000BE8C(v4, qword_10006FA30);
  sub_10002D4F0(v14, v6, &qword_10006FBD0, &qword_10004EA68);
  v15 = sub_100004C60(&qword_10006FBD8, &qword_10004EA70);
  if ((*(*(v15 - 8) + 48))(v6, 1, v15) == 1)
  {
    return sub_10000BF34(v6, &qword_10006FBD0, &qword_10004EA68);
  }

  v45 = v0;
  v46 = v3;
  v44 = v1;
  v17 = *(v15 + 48);
  v18 = *(v8 + 32);
  v18(v13, v6, v7);
  v18(v11, &v6[v17], v7);
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v47 = 0;
  v24 = [v20 removeItemAtURL:v22 error:&v47];

  v25 = v47;
  if (v24 && (v26 = v47, v27 = [v19 defaultManager], URL._bridgeToObjectiveC()(v28), v30 = v29, v47 = 0, v31 = objc_msgSend(v27, "removeItemAtURL:error:", v29, &v47), v27, v30, v25 = v47, v31))
  {
    v32 = *(v8 + 8);
    v33 = v47;
    v32(v11, v7);
    return (v32)(v13, v7);
  }

  else
  {
    v34 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v35 = v46;
    static Logger.uv.getter();
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v45;
    if (v38)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to clear persisted cache: %@", v40, 0xCu);
      sub_10000BF34(v41, &qword_10006EBC8, &qword_10004DE70);

      v35 = v46;
    }

    (*(v44 + 8))(v35, v39);
    v43 = *(v8 + 8);
    v43(v11, v7);
    return (v43)(v13, v7);
  }
}

uint64_t sub_10002CA10(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004C60(&qword_10006FBD0, &qword_10004EA68);
  __chkstk_darwin(v4);
  v6 = &v47 - v5;
  v51 = type metadata accessor for URL();
  v53 = *(v51 - 8);
  v7 = __chkstk_darwin(v51);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v47 - v10;
  v11 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for PreviewCache.Replayable(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002D4F0(a1, v13, &qword_10006F4A0, &qword_10004E1F0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000BF34(v13, &qword_10006F4A0, &qword_10004E1F0);
    return sub_10002C4E8();
  }

  else
  {
    sub_10001DB40(v13, v17);
    if (qword_10006E610 != -1)
    {
      swift_once();
    }

    v19 = sub_10000BE8C(v4, qword_10006FA30);
    sub_10002D4F0(v19, v6, &qword_10006FBD0, &qword_10004EA68);
    v20 = sub_100004C60(&qword_10006FBD8, &qword_10004EA70);
    if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
    {
      sub_10002D144(v17);
      return sub_10000BF34(v6, &qword_10006FBD0, &qword_10004EA68);
    }

    else
    {
      v21 = v9;
      v22 = *(v20 + 48);
      v23 = *(v53 + 32);
      v24 = v51;
      v23(v52, v6, v51);
      v23(v21, &v6[v22], v24);
      type metadata accessor for LaunchPayload();
      sub_10002D204(&unk_10006FBE0, &type metadata accessor for LaunchPayload, &protocol conformance descriptor for LaunchPayload);
      PropertyListRepresentable.serializableDictionary.getter();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      URL._bridgeToObjectiveC()(v26);
      v28 = v27;
      v54 = 0;
      v29 = [(objc_class *)isa writeToURL:v27 error:&v54];

      v30 = v54;
      if (v29 && (type metadata accessor for ShellUpdatePayload(), sub_10002D204(&qword_10006FBF0, &type metadata accessor for ShellUpdatePayload, &protocol conformance descriptor for ShellUpdatePayload), v31 = v30, PropertyListRepresentable.serializableDictionary.getter(), v32 = Dictionary._bridgeToObjectiveC()().super.isa, , URL._bridgeToObjectiveC()(v33), v35 = v34, v54 = 0, v36 = [(objc_class *)v32 writeToURL:v34 error:&v54], v32, v35, v30 = v54, v36))
      {
        v37 = *(v53 + 8);
        v38 = v54;
        v37(v21, v24);
        v37(v52, v24);
      }

      else
      {
        v39 = v30;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v40 = v48;
        static Logger.uv.getter();
        swift_errorRetain();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          swift_errorRetain();
          v45 = _swift_stdlib_bridgeErrorToNSError();
          *(v43 + 4) = v45;
          *v44 = v45;
          _os_log_impl(&_mh_execute_header, v41, v42, "Failed to persist preview cache: %@", v43, 0xCu);
          sub_10000BF34(v44, &qword_10006EBC8, &qword_10004DE70);
        }

        (*(v49 + 8))(v40, v50);
        sub_10002C4E8();

        v46 = *(v53 + 8);
        v46(v21, v24);
        v46(v52, v24);
      }

      return sub_10002D144(v17);
    }
  }
}

uint64_t sub_10002D144(uint64_t a1)
{
  v2 = type metadata accessor for PreviewCache.Replayable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D1A0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002D1EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002D204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002D24C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004D0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002D2A0()
{
  v1 = *(sub_100004C60(&qword_10006F4A0, &qword_10004E1F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for PreviewCache.Replayable(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = type metadata accessor for LaunchPayload();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = *(v5 + 20);
    updated = type metadata accessor for ShellUpdatePayload();
    (*(*(updated - 8) + 8))(v0 + v3 + v7, updated);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002D480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006F4A0, &qword_10004E1F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D4F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004C60(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002D564(uint64_t a1)
{
  result = type metadata accessor for PreviewAgentConnector();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EntryPointCategory();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10002D668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10002D4F0(a3, v25 - v10, &qword_10006F450, &qword_10004E198);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000BF34(v11, &qword_10006F450, &qword_10004E198);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000BF34(a3, &qword_10006F450, &qword_10004E198);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000BF34(a3, &qword_10006F450, &qword_10004E198);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Int sub_10002D9A0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10002DA20(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10002D978(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_10002DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for PreviewAgentConnector();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for AgentSceneConfiguration();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for EntryPointCategory();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v10;
  v5[25] = v9;

  return _swift_task_switch(sub_10002DC38, v10, v9);
}

uint64_t sub_10002DC38()
{
  v1 = v0[11];
  v2 = *(v1 + 80);
  v3 = *(v1 + 96);
  v4 = dispatch thunk of static CategoryMap.entryPoints.getter();
  if (*(v4 + 16) && (v5 = sub_100007214(v0[7]), (v6 & 1) != 0))
  {
    v8 = v0[21];
    v7 = v0[22];
    v9 = v0[18];
    v10 = v0[19];
    v11 = v0[8];
    v23 = v0[9];
    v12 = *(v4 + 56) + *(v10 + 72) * v5;
    v13 = *(v10 + 16);
    v0[26] = v13;
    v0[27] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v8, v12, v9);

    (*(v10 + 32))(v7, v8, v9);
    (*(v3 + 16))(v11, v23, v2, v3);
    v14 = swift_task_alloc();
    v0[28] = v14;
    *v14 = v0;
    v14[1] = sub_10002DF74;
    v15 = v0[17];

    return PreviewAgentConnector.injectScene(configuration:)(v15);
  }

  else
  {

    static CategoryMap.unhandled(_:)();
    v16 = v0[5];
    v17 = sub_10000E678(v0 + 2, v16);
    v18 = *(v16 - 8);
    v19 = swift_task_alloc();
    (*(v18 + 16))(v19, v17, v16);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v18 + 8))(v19, v16);
    }

    else
    {
      swift_allocError();
      (*(v18 + 32))(v20, v19, v16);
    }

    swift_willThrow();

    sub_10000519C(v0 + 2);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10002DF74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_10002E2D4;
  }

  else
  {
    v4[30] = a1;
    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_10002E09C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10002E09C()
{
  v21 = v0[30];
  v22 = v0[29];
  v19 = v0[26];
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[10];
  v20 = v0[9];
  v8 = v0[8];

  (*(v4 + 16))(v5, v7, v6);
  v19(v2, v1, v3);
  swift_allocObject();
  swift_unknownObjectRetain();
  v9 = sub_10002E470(v5, v21, v8, v20, v2);
  v10 = v0[22];
  if (v22)
  {
    v11 = v0[18];
    v12 = v0[19];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v12 + 8))(v10, v11);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[18];
    v16 = v0[19];
    v17 = v9;
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v16 + 8))(v10, v15);

    v18 = v0[1];

    return v18(v17);
  }
}

uint64_t sub_10002E2D4()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

void *sub_10002E470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v41 = a5;
  v12 = *v5;
  v37 = v6;
  v38 = v12;
  v13 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v13 - 8);
  v36 = &v36 - v14;
  type metadata accessor for InvalidationHandle();
  swift_allocObject();
  v5[2] = InvalidationHandle.init(dsoHandle:file:line:column:function:name:)();
  v15 = v5 + qword_10006FCE8;
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v5 + qword_10006FCF0) = 0;
  v16 = qword_10006FCC0;
  v17 = type metadata accessor for PreviewAgentConnector();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v42 = a1;
  v39 = v17;
  v19(v5 + v16, a1);
  *(v5 + qword_10006FCC8) = a2;
  v20 = (v5 + qword_10006FCD0);
  *v20 = a3;
  v20[1] = a4;
  v21 = objc_allocWithZone(type metadata accessor for RemoteContentViewController(0));
  swift_retain_n();
  swift_unknownObjectRetain_n();
  v40 = a3;
  v22 = v37;
  v23 = sub_100012A18(a2, a3, a4);
  if (v22)
  {

    swift_unknownObjectRelease();
    v24 = type metadata accessor for EntryPointCategory();
    (*(*(v24 - 8) + 8))(v41, v24);
    v25 = *(v18 + 8);
    v26 = v39;
    v25(v42, v39);

    v25(v5 + v16, v26);

    swift_unknownObjectRelease();
    sub_10000BF34(v5 + qword_10006FCE8, &qword_10006FDF8, &qword_10004EDB0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + qword_10006FCD8) = v23;
    v27 = qword_10006FCE0;
    v28 = type metadata accessor for EntryPointCategory();
    v29 = *(v28 - 8);
    v30 = v41;
    (*(v29 + 16))(v7 + v27, v41, v28);
    v43[6] = a2;
    v43[3] = v38;
    v43[4] = swift_getWitnessTable();
    v43[0] = v7;
    type metadata accessor for PreviewSceneAgentProxy();
    sub_10003604C(qword_10006FE20, &type metadata accessor for PreviewSceneAgentProxy, &protocol conformance descriptor for PreviewSceneAgentProxy);

    ConcurrentInvalidatable.trackInvalidation(of:)();
    sub_10000519C(v43);
    v31 = type metadata accessor for TaskPriority();
    v32 = v36;
    (*(*(v31 - 8) + 56))(v36, 1, 1, v31);
    type metadata accessor for MainActor();

    v33 = static MainActor.shared.getter();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = a2;
    v34[5] = v7;
    sub_10002D668(0, 0, v32, &unk_10004EE30, v34);

    swift_unknownObjectRelease();

    (*(v29 + 8))(v30, v28);
    (*(v18 + 8))(v42, v39);
  }

  return v7;
}

uint64_t sub_10002E980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[5] = a5;
  v5[6] = *a5;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v5[2] = a4;
  v7 = swift_task_alloc();
  v5[9] = v7;
  v8 = type metadata accessor for PreviewSceneAgentProxy();
  v9 = sub_10003604C(qword_10006FE20, &type metadata accessor for PreviewSceneAgentProxy, &protocol conformance descriptor for PreviewSceneAgentProxy);
  *v7 = v5;
  v7[1] = sub_10002EAB4;

  return ConcurrentInvalidatable.invalidation.getter(v8, v9);
}

uint64_t sub_10002EAB4()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002EBF0, v1, v0);
}

uint64_t sub_10002EBF0()
{
  v1 = v0[5];

  v0[3] = v1;
  swift_getWitnessTable();
  if ((Invalidatable.isInvalidated.getter() & 1) == 0)
  {
    sub_10002ECE4();
  }

  v0[4] = v0[5];
  Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  v2 = v0[1];

  return v2();
}

void sub_10002ECE4()
{
  if (!*(v0 + qword_10006FCF0))
  {
    *(v0 + qword_10006FCF0) = 3;
    sub_100014260();
    v1 = v0 + qword_10006FCE8;
    swift_beginAccess();
    if (*(v1 + 24))
    {
      sub_10000E808(v1, v2);
      sub_10000E678(v2, v2[3]);
      PreviewAgentConnector.pid.getter();
      dispatch thunk of ProviderUpdateDelegate.notePreviewCrashed(pid:)();
      sub_10000519C(v2);
    }
  }
}

uint64_t sub_10002EDB4()
{
  v1 = qword_10006FCF0;
  if (*(v0 + qword_10006FCF0))
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }

  else
  {
    v3 = v0;
    sub_100013C8C();
    v4 = v0 + qword_10006FCE8;
    swift_beginAccess();
    if (*(v4 + 24))
    {
      sub_10000E808(v4, v5);
      sub_10000E678(v5, v5[3]);
      dispatch thunk of ProviderUpdateDelegate.notePreviewStopped()();
      sub_10000519C(v5);
    }

    *(v3 + v1) = 2;
    sub_100012108();
    return static CATransaction.afterSynchronize()();
  }
}

uint64_t sub_10002EECC()
{
  v1 = qword_10006FCF0;
  if (*(v0 + qword_10006FCF0))
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }

  else
  {
    sub_100013BE0();
    *(v0 + v1) = 1;
    sub_100012108();
    return static CATransaction.afterSynchronize()();
  }
}

uint64_t sub_10002EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v64 = a4;
  v71 = a3;
  v62 = a2;
  v74 = a1;
  v7 = *v5;
  *&v78 = type metadata accessor for SceneUpdateContext();
  v73 = *(v78 - 8);
  v66 = *(v73 + 64);
  __chkstk_darwin(v78);
  v81 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v7;
  v9 = *(v7 + 104);
  v69 = *(v7 + 88);
  v10 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = *(AssociatedTypeWitness - 8);
  v65 = *(v72 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v75 = &v55 - v11;
  v12 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v12 - 8);
  v77 = &v55 - v13;
  v70 = type metadata accessor for AgentUpdate.Context();
  *&v79 = *(v70 - 8);
  v63 = *(v79 + 64);
  __chkstk_darwin(v70);
  v68 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PropertyList();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for EntryPointCategory();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AgentUpdate();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E808(a5, &v80);
  v22 = qword_10006FCE8;
  swift_beginAccess();
  sub_100034DD8(&v80, v10 + v22);
  swift_endAccess();
  v58 = v10;
  v55 = *(v10 + qword_10006FCC8);
  (*(v17 + 16))(v19, v10 + qword_10006FCE0, v16);
  v23 = *(v9 + 48);
  v59 = v9;
  v23(v74, v62, v69, v9);
  v56 = *(v79 + 16);
  v24 = v68;
  v25 = v70;
  v56(v68, v71, v70);
  AgentUpdate.init(entryPointCategory:entryPointPayload:entryPointFrameworkPath:context:)();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v26 = v64;
  v27 = v57;
  v28 = PreviewSceneAgentProxy.perform<A>(update:with:delegate:expecting:)();
  (*(v60 + 8))(v21, v61);
  v61 = type metadata accessor for TaskPriority();
  v29 = *(v61 - 8);
  v60 = *(v29 + 56);
  v62 = v29 + 56;
  (v60)(v77, 1, 1, v61);
  v56(v24, v71, v25);
  v30 = v72;
  (*(v72 + 16))(v75, v74, AssociatedTypeWitness);
  v31 = v73;
  (*(v73 + 16))(v81, v26, v78);
  sub_10000E808(v27, &v80);
  type metadata accessor for MainActor();
  v32 = v28;

  v33 = v58;

  v34 = static MainActor.shared.getter();
  v35 = (*(v79 + 80) + 72) & ~*(v79 + 80);
  v36 = (v63 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v30 + 80) + v36 + 8) & ~*(v30 + 80);
  v38 = (v65 + *(v31 + 80) + v37) & ~*(v31 + 80);
  v66 = (v66 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v67;
  *(v39 + 2) = v34;
  *(v39 + 3) = &protocol witness table for MainActor;
  v41 = v33;
  v74 = *(v40 + 80);
  *(v39 + 4) = v74;
  v42 = v69;
  *(v39 + 5) = v69;
  v71 = *(v40 + 96);
  v43 = v41;
  v44 = v59;
  *(v39 + 6) = v71;
  *(v39 + 7) = v44;
  *(v39 + 8) = v32;
  (*(v79 + 32))(&v39[v35], v68, v70);
  *&v39[v36] = v43;
  (*(v72 + 32))(&v39[v37], v75, AssociatedTypeWitness);
  (*(v73 + 32))(&v39[v38], v81, v78);
  sub_10000BF1C(&v80, &v39[v66]);
  type metadata accessor for RenderPayload();
  swift_getAssociatedTypeWitness();
  updated = type metadata accessor for CanvasUpdateResult();
  v46 = v77;
  v47 = sub_10003108C(0, 0, v77, &unk_10004EDC0, v39, updated);
  type metadata accessor for Future();
  (v60)(v46, 1, 1, v61);
  v48 = swift_allocObject();
  *&v49 = v74;
  *(&v49 + 1) = v42;
  *&v50 = v71;
  *(&v50 + 1) = v44;
  v78 = v50;
  v79 = v49;
  *(v48 + 16) = v49;
  *(v48 + 32) = v50;
  *(v48 + 48) = v47;
  v51 = swift_allocObject();
  v52 = v78;
  *(v51 + 16) = v79;
  *(v51 + 32) = v52;

  v53 = Future<A>.init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)();

  return v53;
}

uint64_t sub_10002F928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v24;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a1;
  v8[8] = a5;
  v10 = *a6;
  v8[13] = *a6;
  v11 = type metadata accessor for ChromeType();
  v8[14] = v11;
  v8[15] = *(v11 - 8);
  v8[16] = swift_task_alloc();
  updated = type metadata accessor for SceneUpdateContext();
  v8[17] = updated;
  v13 = *(updated - 8);
  v8[18] = v13;
  v8[19] = *(v13 + 64);
  v8[20] = swift_task_alloc();
  v8[21] = *(v10 + 104);
  v8[22] = *(v10 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[23] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v8[24] = v15;
  v8[25] = *(v15 + 64);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v16 = swift_getAssociatedTypeWitness();
  v8[28] = v16;
  v8[29] = *(v16 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v17 = type metadata accessor for CanvasControlConfiguration();
  v8[32] = v17;
  v8[33] = *(v17 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  sub_100004C60(&qword_10006F468, &qword_10004E1C0);
  v8[36] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v8[37] = v18;
  v8[38] = *(v18 - 8);
  v19 = swift_task_alloc();
  v8[39] = v19;
  v8[40] = type metadata accessor for MainActor();
  v8[41] = static MainActor.shared.getter();
  v20 = swift_task_alloc();
  v8[42] = v20;
  v21 = sub_100004C60(&qword_10006E8E8, &qword_10004D780);
  *v20 = v8;
  v20[1] = sub_10002FD78;

  return (Task.value.getter)(v19, a4, v18, v21, &protocol self-conformance witness table for Error);
}

uint64_t sub_10002FD78()
{
  *(*v1 + 344) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100030470;
  }

  else
  {
    v4 = sub_10002FED4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10002FED4()
{
  v51 = *(v0 + 312);
  v1 = *(v0 + 288);
  v43 = *(v0 + 304);
  v44 = *(v0 + 296);
  v49 = *(v0 + 280);
  v39 = *(v0 + 272);
  v50 = *(v0 + 264);
  v40 = *(v0 + 256);
  v34 = *(v0 + 248);
  v42 = *(v0 + 240);
  v38 = *(v0 + 232);
  v41 = *(v0 + 224);
  v2 = *(v0 + 216);
  v55 = *(v0 + 208);
  v3 = *(v0 + 192);
  v28 = *(v0 + 200);
  v4 = *(v0 + 184);
  v52 = *(v0 + 176);
  v46 = *(v0 + 168);
  v48 = *(v0 + 160);
  v32 = *(v0 + 152);
  v45 = *(v0 + 144);
  v47 = *(v0 + 136);
  v35 = *(v0 + 120);
  v36 = *(v0 + 128);
  v37 = *(v0 + 112);
  v27 = *(v0 + 104);
  v5 = *(v0 + 80);
  v30 = *(v0 + 88);
  v31 = *(v0 + 96);
  v6 = *(v0 + 64);
  v54 = *(v0 + 72);

  v7 = type metadata accessor for AgentUpdate.Context();
  v53 = swift_allocBox();
  (*(*(v7 - 8) + 16))(v8, v6, v7);
  updated = type metadata accessor for UpdateSetupPayload();
  (*(*(updated - 8) + 56))(v1, 1, 1, updated);
  AgentUpdate.Context.setupPayload.setter();
  v33 = qword_10006FCC0;
  v24 = *(v3 + 16);
  v10 = v2;
  v24(v2, v5, v4);
  v11 = *(v3 + 80);
  v12 = (v11 + 56) & ~v11;
  v25 = v28 + 7;
  v13 = (v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = *(v27 + 80);
  *(v14 + 2) = v15;
  *(v14 + 3) = v52;
  v26 = *(v27 + 96);
  *(v14 + 4) = v26;
  *(v14 + 5) = v46;
  *(v14 + 6) = v54;
  v29 = *(v3 + 32);
  v29(&v14[v12], v10, v4);
  *&v14[v13] = v53;
  (*(v45 + 16))(v48, v30, v47);
  v24(v55, v5, v4);
  sub_10000E808(v31, v0 + 16);
  v16 = (*(v45 + 80) + 48) & ~*(v45 + 80);
  v17 = (v32 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v11 + v17 + 8) & ~v11;
  v19 = (v18 + v25) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v15;
  *(v20 + 3) = v52;
  *(v20 + 4) = v26;
  *(v20 + 5) = v46;
  (*(v45 + 32))(&v20[v16], v48, v47);
  *&v20[v17] = v54;
  v29(&v20[v18], v55, v4);
  *&v20[v19] = v53;
  sub_10000BF1C((v0 + 16), &v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8]);
  v21 = *(v46 + 56);
  swift_retain_n();
  swift_retain_n();
  v21(v49, v34, v54 + v33, v51, sub_1000354A0, v14, sub_100035718, v20, v52, v46);

  (*(v35 + 104))(v36, enum case for ChromeType.unspecified(_:), v37);
  (*(v50 + 16))(v39, v49, v40);
  (*(v38 + 16))(v42, v34, v41);
  type metadata accessor for RenderPayload();

  CanvasUpdateResult.init<>(staticChromeType:makeStaticOutput:controlConfiguration:controlStates:)();
  (*(v38 + 8))(v34, v41);
  (*(v50 + 8))(v49, v40);
  (*(v43 + 8))(v51, v44);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100030470()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100030564@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v27 = a3;
  v25 = a1;
  v30 = a5;
  v6 = *a2;
  v7 = type metadata accessor for AgentUpdate.Context();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v26 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v6 + 104);
  v9 = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for Optional();
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = &v22 - v12;
  v14 = type metadata accessor for PropertyList();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for EntryPointCategory();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  (*(v16 + 16))(v18, &a2[qword_10006FCE0], v15);
  v20 = *(AssociatedTypeWitness - 8);
  (*(v20 + 16))(v13, v25, AssociatedTypeWitness);
  (*(v20 + 56))(v13, 0, 1, AssociatedTypeWitness);
  (*(v23 + 48))(v27, v13, v9);
  (*(v11 + 8))(v13, v24);
  swift_beginAccess();
  (*(v28 + 16))(v26, v19, v29);
  return AgentUpdate.init(entryPointCategory:entryPointPayload:entryPointFrameworkPath:context:)();
}

uint64_t sub_1000308E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v44 = a2;
  v47 = a4;
  v37 = a1;
  v6 = *a3;
  v41 = type metadata accessor for AgentUpdate.Context();
  v35 = *(v41 - 8);
  __chkstk_darwin(v41);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v6;
  v40 = *(v6 + 104);
  v38 = *(v6 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  updated = type metadata accessor for SceneUpdateTiming();
  v13 = *(updated - 8);
  __chkstk_darwin(updated);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SceneUpdateContext();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_projectBox();
  v42 = v17;
  v21 = *(v17 + 16);
  v22 = v44;
  v44 = v16;
  v21(v19, v22, v16);
  (*(v13 + 104))(v15, enum case for SceneUpdateTiming.fenced(_:), updated);
  v23 = v35;
  SceneUpdateContext.timing.setter();
  v24 = *(AssociatedTypeWitness - 8);
  (*(v24 + 16))(v11, v37, AssociatedTypeWitness);
  (*(v24 + 56))(v11, 0, 1, AssociatedTypeWitness);
  swift_beginAccess();
  v25 = v36;
  v26 = v20;
  v27 = v41;
  (*(v23 + 16))(v36, v26, v41);
  sub_10000E808(v43, v48);
  v28 = *(v39 + 80);
  *&v29 = v28;
  v30 = v38;
  *(&v29 + 1) = v38;
  v31 = *(v39 + 96);
  *&v32 = v31;
  v33 = v40;
  *(&v32 + 1) = v40;
  v50 = v32;
  v49 = v29;
  *(&v50 + 1) = type metadata accessor for RemoteContentProvider.ControlInteractionUpdateDelegate(0, &v49);
  WitnessTable = swift_getWitnessTable();
  *&v49 = swift_allocObject();
  sub_100030DEC(v48, v28, v30, v31, v33, v49 + 16);
  sub_10002EF8C(v47, v11, v25, v19, &v49);

  (*(v23 + 8))(v25, v27);
  (*(v45 + 8))(v11, v46);
  (*(v42 + 8))(v19, v44);
  return sub_10000519C(&v49);
}

uint64_t sub_100030DEC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a1;
  sub_10000E808(a1, &v15);
  sub_100004C60(&qword_10006FE10, &qword_10004EDF8);
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  updated = type metadata accessor for RemoteContentProvider.ControlInteractionUpdateDelegate(0, v16);
  if (swift_dynamicCast())
  {
    sub_10000E808(v17, v16);
    (*(*(updated - 8) + 8))(v17, updated);
    sub_10000519C(v10);
    v10 = v16;
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v13 = type metadata accessor for Optional();
    (*(*(v13 - 8) + 8))(v17, v13);
  }

  sub_10000BF1C(v10, v17);
  return sub_10000BF1C(v17, a6);
}

uint64_t sub_100030F40()
{
  v0 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  sub_100004C60(&qword_10006FE00, &qword_10004EDD8);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  return Future<A>.init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)();
}

uint64_t sub_10003108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_10002D4F0(a3, &v24[-1] - v11, &qword_10006F450, &qword_10004E198);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000BF34(v12, &qword_10006F450, &qword_10004E198);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter();
      sub_100034B40(v20 + 32, v24);

      v21 = v24[0];
      sub_10000BF34(a3, &qword_10006F450, &qword_10004E198);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000BF34(a3, &qword_10006F450, &qword_10004E198);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100031310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v10 = swift_task_alloc();
  *(v8 + 16) = v10;
  type metadata accessor for RenderPayload();
  swift_getAssociatedTypeWitness();
  updated = type metadata accessor for CanvasUpdateResult();
  v12 = sub_100004C60(&qword_10006E8E8, &qword_10004D780);
  *v10 = v8;
  v10[1] = sub_10001D424;

  return (Task.value.getter)(a1, a2, updated, v12, &protocol self-conformance witness table for Error);
}

void *sub_100031440()
{
  v1 = type metadata accessor for PreviewPreferences();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SceneUpdateHandshake.fenceHandle.getter();
  if (result)
  {
    v6 = result;
    sub_10000E678(v0, v0[3]);
    SceneUpdateHandshake.preferences.getter();
    dispatch thunk of CanvasUpdateDelegate.adjust(preferences:fenceHandle:)();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1000315B0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  sub_10000E678(v2, v4);
  return a2(v4, v5);
}

uint64_t sub_10003173C()
{
  if (*(v0 + qword_10006FCF0) - 2 >= 2)
  {
    if (*(v0 + qword_10006FCF0))
    {
      v2 = *v0;
      sub_100004C60(&qword_10006E8F8, &qword_10004D790);
      v3 = *(v2 + 96);
      v5[0] = *(v2 + 80);
      v5[1] = v3;
      type metadata accessor for RemoteContentProvider.CannotResizeWhileRelaunching(0, v5);
      swift_getWitnessTable();
      swift_allocError();
      v4 = static Future.failed(dsoHandle:file:line:column:function:_:)();

      return v4;
    }

    else
    {
      return PreviewSceneAgentProxy.sendCommitPostSynchronize()();
    }
  }

  else
  {
    sub_100004C60(&qword_10006E8F8, &qword_10004D790);
    return static Future<A>.succeeded(dsoHandle:file:line:column:function:)();
  }
}

uint64_t sub_1000318BC()
{
  v1 = sub_100004C60(&qword_10006F450, &qword_10004E198);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = *(v0 + qword_10006FCC8);
  v5 = PreviewSceneAgentProxy.scene.getter();
  v6 = [v5 scene];

  v7 = [v6 identityToken];
  v8 = [v7 stringRepresentation];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (qword_10006E618 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_100070258 + 2) && (sub_100006E04(v9, v11), (v12 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v13 = sub_100039D8C(v9, v11);
    swift_beginAccess();
    sub_100006380(v13, v9, v11);
    swift_endAccess();
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v4;
  sub_10002D668(0, 0, v3, &unk_10004EE00, v16);
}

void sub_100031B44(uint64_t a1)
{
  v1 = PreviewSceneAgentProxy.scene.getter();
  v2 = [v1 scene];

  sub_10003A03C(0, v2);
}

uint64_t sub_100031BB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002020C;

  return sub_100031C54(a1);
}

uint64_t sub_100031C54(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for GeometryPayload();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for PreviewSnapshot();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v6;
  v2[12] = v5;

  return _swift_task_switch(sub_100031DA4, v6, v5);
}

uint64_t sub_100031DA4()
{
  v1 = (v0[3] + qword_10006FCD0);
  v0[13] = *v1;
  v0[14] = v1[1];
  v0[15] = swift_getObjectType();
  v0[16] = dispatch thunk of PreviewShellScene.takeSnapshot()();
  sub_10003604C(&qword_10006FE08, &type metadata accessor for GeometryPayload, &protocol conformance descriptor for GeometryPayload);
  v2 = PreviewSceneAgentProxy.generateStaticOutput<A>(for:expecting:)();
  v0[17] = v2;
  v3 = swift_task_alloc();
  v0[18] = v3;
  v4 = sub_100004C60(&qword_10006E8E8, &qword_10004D780);
  *v3 = v0;
  v3[1] = sub_100031F74;
  v5 = v0[6];
  v6 = v0[4];

  return (Task.value.getter)(v5, v2, v6, v4, &protocol self-conformance witness table for Error);
}

uint64_t sub_100031F74()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_100032244;
  }

  else
  {
    v5 = sub_1000320B0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000320B0()
{
  v1 = v0[9];
  v2 = v0[8];
  v12 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v11 = v0[16];

  GeometryPayload.selectableRegions.getter();
  (*(v4 + 8))(v3, v5);
  v6 = dispatch thunk of PreviewShellScene.windowScene.getter();
  v7 = [v6 screen];

  [v7 scale];
  v8 = v11;
  PreviewSnapshot.init(image:selectableRegions:cornerRadius:scaleFactor:)();
  PreviewSnapshot.makeRenderPayload()();
  (*(v2 + 8))(v1, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100032244()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000322F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.errorDescription.getter(a1, WitnessTable);
}

uint64_t sub_100032348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.description.getter(a1, WitnessTable);
}

uint64_t sub_10003239C()
{

  v1 = qword_10006FCC0;
  v2 = type metadata accessor for PreviewAgentConnector();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  v3 = qword_10006FCE0;
  v4 = type metadata accessor for EntryPointCategory();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10000BF34(v0 + qword_10006FCE8, &qword_10006FDF8, &qword_10004EDB0);
  return v0;
}

uint64_t sub_100032494()
{
  sub_10003239C();

  return swift_deallocClassInstance();
}

uint64_t sub_10003250C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10003259C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000326B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_100032770;

  return sub_10002DA6C(a2, a3, a4, a5);
}

uint64_t sub_100032770(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100032888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return static ContentProvider<>.decode(updatePayload:)();
}

uint64_t sub_100032930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003604C(&qword_10006FE18, &type metadata accessor for RenderPayload, &protocol conformance descriptor for RenderPayload);

  return static ContentProvider<>.encode(staticOutput:)(a1, v3, a3, v6);
}

id sub_1000329B8()
{
  v0 = sub_100035AA4();

  return v0;
}

uint64_t sub_100032AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v3 = sub_100004C60(&qword_100070030, &unk_10004F170);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_100004C60(&qword_10006FFB8, &qword_10004F118);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for PreviewPayload();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RefinedPreviewPayload();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v21, v10);
  sub_10002D4F0(v22, v5, &qword_100070030, &unk_10004F170);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v18 = type metadata accessor for GridIndex();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  }

  else
  {
    sub_100036094(v5, v9);
  }

  RefinedPreviewPayload.init(previewPayload:requestedGroupIndex:)();
  sub_10003604C(&qword_100070038, &type metadata accessor for RefinedPreviewPayload, &protocol conformance descriptor for RefinedPreviewPayload);
  PropertyListRepresentable.propertyList.getter();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_100032E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a2;
  v14 = type metadata accessor for PreviewStructure();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a4;
  v34 = a3;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  sub_100004C60(&qword_10006FFB8, &qword_10004F118);
  CanvasControlConfiguration.init(build:)();
  (*(v15 + 16))(v17, a4, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for PreviewStructure.previewGroup(_:))
  {
    (*(v15 + 96))(v17, v14);
    v19 = *(sub_100004C60(&qword_10006FFC0, &qword_10004F120) + 48);
    v20 = type metadata accessor for GridIndex();
    v21 = *(v20 - 8);
    v22 = &v17[v19];
    v23 = v32;
    (*(v21 + 32))(v32, v22, v20);
    (*(v21 + 56))(v23, 0, 1, v20);
    v24 = type metadata accessor for PreviewGroupMetadata();
    return (*(*(v24 - 8) + 8))(v17, v24);
  }

  else
  {
    v26 = v18;
    v27 = enum case for PreviewStructure.singlePreview(_:);
    v28 = enum case for PreviewStructure.emptyPreviewGroup(_:);
    v29 = type metadata accessor for GridIndex();
    result = (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
    if (v26 != v27 && v26 != v28)
    {
      return (*(v15 + 8))(v17, v14);
    }
  }

  return result;
}

uint64_t sub_1000330F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v61 = a4;
  v62 = a5;
  v52 = a2;
  v53 = a3;
  v57 = a1;
  v66 = a6;
  v6 = sub_100004C60(&qword_10006FFC8, &qword_10004F128);
  __chkstk_darwin(v6 - 8);
  v51 = &v49 - v7;
  v8 = sub_100004C60(&qword_10006FFD0, &qword_10004F130);
  __chkstk_darwin(v8 - 8);
  v54 = &v49 - v9;
  v10 = type metadata accessor for CanvasGridControl();
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100004C60(&qword_10006FFD8, &qword_10004F138);
  v12 = *(v65 - 8);
  v13 = __chkstk_darwin(v65);
  v58 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v56 = &v49 - v15;
  v16 = sub_100004C60(&qword_10006FFE0, &qword_10004F140);
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - v17;
  v19 = sub_100004C60(&qword_10006FFE8, &qword_10004F148);
  __chkstk_darwin(v19 - 8);
  v21 = &v49 - v20;
  v22 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v49 - v27;
  v29 = sub_100004C60(&qword_10006FFF0, &qword_10004F150);
  v64 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v63 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v49 - v32;
  sub_100033944(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000BF34(v21, &qword_10006FFE8, &qword_10004F148);
    (*(v12 + 56))(v18, 1, 1, v65);
    type metadata accessor for GridIndex();
    sub_10003604C(&qword_10006FFF8, &type metadata accessor for GridIndex, &protocol conformance descriptor for GridIndex);
    static CanvasControlConfigurationBuilder.buildOptional<A>(_:)();
    sub_10000BF34(v18, &qword_10006FFE0, &qword_10004F140);
  }

  else
  {
    v34 = *(v23 + 32);
    v49 = v28;
    v50 = v22;
    v34(v28, v21, v22);
    (*(v23 + 16))(v26, v28, v22);
    v35 = type metadata accessor for ThumbnailGeometry();
    v36 = v51;
    (*(*(v35 - 8) + 56))(v51, 1, 1, v35);
    v37 = swift_allocObject();
    v38 = v53;
    *(v37 + 16) = v52;
    *(v37 + 24) = v38;
    type metadata accessor for GridIndex();

    static ThumbnailHostFactory.remoteHostFactory(expectedGeometry:previewAgentConnector:makeUpdate:validateReply:)();

    sub_10000BF34(v36, &qword_10006FFC8, &qword_10004F128);
    v39 = swift_allocObject();
    *(v39 + 16) = v61;
    *(v39 + 24) = v62;

    v40 = v55;
    CanvasGridControl.init(configuration:thumbnailHostFactory:action:)();
    sub_10003604C(&qword_10006FFF8, &type metadata accessor for GridIndex, &protocol conformance descriptor for GridIndex);
    v41 = v56;
    v42 = v60;
    static CanvasControlConfigurationBuilder.buildExpression<A>(_:)();
    (*(v59 + 8))(v40, v42);
    sub_10001D028(&qword_100070008, &qword_10006FFD8, &qword_10004F138, &protocol conformance descriptor for CanvasControlConfigurationBuilder.One<A>);
    v43 = v58;
    v44 = v65;
    static CanvasControlConfigurationBuilder.buildBlock<A>(_:)();
    (*(v12 + 16))(v18, v43, v44);
    (*(v12 + 56))(v18, 0, 1, v44);
    static CanvasControlConfigurationBuilder.buildOptional<A>(_:)();
    sub_10000BF34(v18, &qword_10006FFE0, &qword_10004F140);
    v45 = *(v12 + 8);
    v45(v43, v44);
    v45(v41, v44);
    (*(v23 + 8))(v49, v50);
  }

  sub_10001D028(&qword_100070000, &qword_10006FFF0, &qword_10004F150, &protocol conformance descriptor for CanvasControlConfigurationBuilder.One<A>.Optional);
  v46 = v63;
  static CanvasControlConfigurationBuilder.buildBlock<A>(_:)();
  static CanvasControlConfigurationBuilder.buildFinalResult<A>(_:)();
  v47 = *(v64 + 8);
  v47(v46, v29);
  return (v47)(v33, v29);
}

uint64_t sub_100033944@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PreviewStructure();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for PreviewStructure.previewGroup(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = *(sub_100004C60(&qword_10006FFC0, &qword_10004F120) + 48);
    v10 = type metadata accessor for PreviewGroupMetadata();
    v11 = *(v10 - 8);
    __chkstk_darwin(v10);
    v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 32))(v13, v7, v10);
    sub_100034314(a1);
    (*(v11 + 8))(v13, v10);
    v14 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration();
    (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
    v15 = type metadata accessor for GridIndex();
    return (*(*(v15 - 8) + 8))(&v7[v9], v15);
  }

  else if (v8 == enum case for PreviewStructure.singlePreview(_:))
  {
    v17 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  else if (v8 == enum case for PreviewStructure.emptyPreviewGroup(_:))
  {
    CanvasControlDescription.ControlType.GridConfiguration.init(sections:)();
    v18 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration();
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100033CC0(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100004C60(&qword_10006FFB8, &qword_10004F118);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for GridIndex();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_10000BF34(v6, &qword_10006FFB8, &qword_10004F118);
}

double sub_100033E00(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = type metadata accessor for GridIndex();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PropertyList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PreviewStructure();
  v26 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  (*(v7 + 16))(v9, a1, v6);
  sub_10003604C(&qword_10006FF28, &type metadata accessor for PreviewStructure, &protocol conformance descriptor for PreviewStructure);
  v16 = v27;
  PropertyListRepresentable.init(propertyList:)();
  if (!v16)
  {
    v17 = v24;
    v18 = v26;
    (*(v26 + 16))(v13, v15, v10);
    if ((*(v18 + 88))(v13, v10) == enum case for PreviewStructure.previewGroup(_:))
    {
      (*(v18 + 96))(v13, v10);
      v19 = sub_100004C60(&qword_10006FFC0, &qword_10004F120);
      (*(v17 + 32))(v5, &v13[*(v19 + 48)], v3);
      v20 = type metadata accessor for PreviewGroupMetadata();
      (*(*(v20 - 8) + 8))(v13, v20);
      v21 = static GridIndex.== infix(_:_:)();
      v18 = v26;
      (*(v17 + 8))(v5, v3);
      if (v21)
      {
        (*(v18 + 8))(v15, v10);
        return 0.0;
      }
    }

    else
    {
      (*(v18 + 8))(v13, v10);
    }

    sub_100035FF8();
    swift_allocError();
    swift_willThrow();
    (*(v18 + 8))(v15, v10);
  }

  return 0.0;
}

uint64_t sub_1000341E4(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_100004C60(&qword_10006FFB8, &qword_10004F118);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for GridIndex();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_10000BF34(v6, &qword_10006FFB8, &qword_10004F118);
}

uint64_t sub_100034314@<X0>(uint64_t a1@<X8>)
{
  v37[2] = a1;
  v1 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration.Item();
  v38 = *(v1 - 8);
  __chkstk_darwin(v1);
  v56 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004C60(&qword_100070018, &qword_10004F158);
  __chkstk_darwin(v3 - 8);
  v5 = v37 - v4;
  v41 = type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration.Section();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v51 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004C60(&qword_100070020, &qword_10004F160);
  v8 = type metadata accessor for PreviewGroupMetadata.Section();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v52 = *(v9 + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10004E380;
  PreviewGroupMetadata.firstSection.getter();
  v12 = PreviewGroupMetadata.moreSections.getter();
  v57 = v11;
  sub_100035960(v12);
  v13 = __chkstk_darwin(v57);
  v55 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v13 + 16);
  if (v50)
  {
    v15 = 0;
    v37[1] = v13;
    v49 = v13 + v10;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v48 = v17;
    v18 = v38;
    v44 = (v16 - 8);
    v45 = (v38 + 8);
    v43 = (v6 + 48);
    v19 = &_swiftEmptyArrayStorage;
    v39 = v6;
    v40 = v5;
    v42 = (v6 + 32);
    v20 = v41;
    v46 = v16;
    v47 = v8;
    while (1)
    {
      v53 = v19;
      v54 = v15;
      v48(v55, v49 + v15 * v52, v8);
      PreviewGroupMetadata.Section.title.getter();
      CanvasControlDescription.ControlType.GridConfiguration.Item.init(title:)();
      result = PreviewGroupMetadata.Section.previewCount.getter();
      if (result < 0)
      {
        break;
      }

      v22 = result;
      if (result)
      {
        v23 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v23 + 16) = v22;
        v24 = v1;
        v25 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v26 = *(v18 + 16);
        v27 = v24;
        v26(v23 + v25, v56);
        v28 = v22 - 1;
        if (v22 == 1)
        {
          v1 = v27;
          v29 = v56;
        }

        else
        {
          v30 = *(v18 + 72);
          v31 = v23 + v30 + v25;
          v1 = v27;
          v29 = v56;
          do
          {
            (v26)(v31, v29, v1);
            v31 += v30;
            --v28;
          }

          while (v28);
          v18 = v38;
        }

        v5 = v40;
        v20 = v41;
      }

      else
      {
        v29 = v56;
      }

      (*v45)(v29, v1);
      CanvasControlDescription.ControlType.GridConfiguration.Section.init(title:items:)();
      v8 = v47;
      (*v44)(v55, v47);
      if ((*v43)(v5, 1, v20) == 1)
      {
        sub_10000BF34(v5, &qword_100070018, &qword_10004F158);
        v19 = v53;
      }

      else
      {
        v32 = *v42;
        (*v42)(v51, v5, v20);
        v19 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100034BFC(0, v19[2] + 1, 1, v19, &qword_100070028, &qword_10004F168, &type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration.Section);
        }

        v34 = v19[2];
        v33 = v19[3];
        v35 = v39;
        if (v34 >= v33 >> 1)
        {
          v36 = sub_100034BFC((v33 > 1), v34 + 1, 1, v19, &qword_100070028, &qword_10004F168, &type metadata accessor for CanvasControlDescription.ControlType.GridConfiguration.Section);
          v35 = v39;
          v19 = v36;
        }

        v19[2] = v34 + 1;
        v32(v19 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, v51, v20);
      }

      v15 = v54 + 1;
      if (v54 + 1 == v50)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return CanvasControlDescription.ControlType.GridConfiguration.init(sections:)();
  }

  return result;
}

uint64_t sub_1000348DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PropertyList();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_100034950(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100034A48;

  return v6(a1);
}

uint64_t sub_100034A48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100034B40@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100034BFC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004C60(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100034DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006FDF8, &qword_10004EDB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034E48()
{
  v1 = type metadata accessor for AgentUpdate.Context();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v17 = (v3 + 72) & ~v3;
  v18 = v1;
  v16 = (*(v2 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = (v16 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  updated = type metadata accessor for SceneUpdateContext();
  v10 = *(updated - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v3 | v11 | v6;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v17, v18);

  (*(v5 + 8))(v0 + v7, AssociatedTypeWitness);
  (*(v10 + 8))(v0 + v12, updated);
  sub_10000519C((v0 + v14));

  return _swift_deallocObject(v0, v14 + 40, v13 | 7);
}

uint64_t sub_100035074(uint64_t a1)
{
  v3 = *(type metadata accessor for AgentUpdate.Context() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for SceneUpdateContext() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[8];
  v14 = *(v1 + v5);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_10001D424;

  return sub_10002F928(a1, v11, v12, v13, v1 + v4, v14, v1 + v7, v1 + v10);
}

uint64_t sub_1000352A0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000352D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002020C;

  return sub_100031310(a1, v8, v4, v5, v6, v7);
}

uint64_t sub_1000353B0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000354A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v2 + 48);
  v7 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_100030564(a1, v6, v7, a2);
}

uint64_t sub_100035568()
{
  updated = type metadata accessor for SceneUpdateContext();
  v2 = *(updated - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = v3 | v8;
  v10 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, updated);

  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  sub_10000519C((v0 + v10));

  return _swift_deallocObject(v0, v10 + 40, v12 | 7);
}

uint64_t sub_100035718(uint64_t a1)
{
  v3 = *(type metadata accessor for SceneUpdateContext() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);

  return sub_1000308E4(a1, v1 + v4, v9, v1 + v7, v10, v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_100035874(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002020C;

  return sub_100031BB8(a1);
}

uint64_t sub_100035928()
{
  sub_10000519C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100035960(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100034BFC(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_100070020, &qword_10004F160, &type metadata accessor for PreviewGroupMetadata.Section);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for PreviewGroupMetadata.Section();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100035AB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100035AF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002020C;

  return sub_1000398CC(a1, v4, v5, v6);
}

uint64_t sub_100035BA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035BE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002020C;

  return sub_100034950(a1, v4);
}

uint64_t sub_100035CB0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100035CF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001D424;

  return sub_10002E980(a1, v4, v5, v7, v6);
}

uint64_t sub_100035DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100035DF4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100035E08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100035E50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100035FF8()
{
  result = qword_100070010;
  if (!qword_100070010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070010);
  }

  return result;
}

uint64_t sub_10003604C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100036094(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C60(&qword_10006FFB8, &qword_10004F118);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100036134(void *a1)
{
  v2 = v1;
  sub_10000E678(a1, a1[3]);
  v3 = dispatch thunk of CanvasContentHost.viewController.getter();
  sub_1000364E0(v3);

  v4 = dispatch thunk of CanvasContentHost.viewController.getter();
  v5 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating;
  v6 = *(v2 + OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating);

  if (v6)
  {
    v7 = v4 == v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = *(v2 + v5);
    v13 = v8;
    v9 = dispatch thunk of CanvasContentHost.viewController.getter();
    v10 = *(v2 + v5);
    *(v2 + v5) = v9;

    if (v8)
    {
      v11 = *(v2 + OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active);
      if (v11)
      {
        v12 = v8 == v11;
      }

      else
      {
        v12 = 0;
      }

      if (!v12)
      {
        sub_1000366D8(v13);
      }
    }
  }
}

void sub_100036254(void *a1)
{
  v2 = v1;
  sub_10000E678(a1, a1[3]);
  v3 = dispatch thunk of CanvasContentHost.viewController.getter();
  sub_1000364E0(v3);

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4;
  v6 = dispatch thunk of CanvasContentHost.viewController.getter();
  v7 = [v6 view];

  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v5 bringSubviewToFront:v7];

  v8 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay;
  v9 = *&v2[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay];
  if (v9)
  {
    v10 = v9;
    PreviewDebugOverlay.bringToFront()();

    v11 = *&v2[v8];
    if (v11)
    {
      v12 = v11;
      PreviewDebugOverlay.contentsUpdated()();
    }
  }

  v13 = dispatch thunk of CanvasContentHost.viewController.getter();
  v14 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active;
  v15 = *&v2[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active];

  if (!v15 || v13 != v15)
  {
    v16 = *&v2[v14];
    v20 = v16;
    v17 = dispatch thunk of CanvasContentHost.viewController.getter();
    v18 = *&v2[v14];
    *&v2[v14] = v17;

    if (v16)
    {
      v19 = *&v2[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating];
      if (!v19 || v16 != v19)
      {
        sub_1000366D8(v20);
      }
    }
  }
}

void sub_1000364E0(void *a1)
{
  v3 = [a1 parentViewController];
  if (v3)
  {
    v4 = v3;

    if (v4 == v1)
    {
      return;
    }
  }

  [v1 addChildViewController:a1];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [a1 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v6 addSubview:v7];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [a1 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  [v10 sendSubviewToBack:v11];

  v13 = [a1 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v1 view];
  if (!v15)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v14 setFrame:{v18, v20, v22, v24}];

  [a1 didMoveToParentViewController:v1];
}

void sub_1000366D8(void *a1)
{
  v3 = [a1 parentViewController];
  if (v3)
  {
    v4 = v3;

    if (v4 == v1)
    {
      [a1 willMoveToParentViewController:0];
      v5 = [a1 view];
      if (v5)
      {
        v6 = v5;
        [v5 removeFromSuperview];

        [a1 removeFromParentViewController];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1000367D0()
{
  v1 = type metadata accessor for PreviewPreferences.InterfaceOrientation();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_forcedOrientation;
  swift_beginAccess();
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    (*(v2 + 16))(v7, v0 + v8, v1);
    (*(v2 + 32))(v5, v7, v1);
    v9 = (*(v2 + 88))(v5, v1);
    if (v9 != enum case for PreviewPreferences.InterfaceOrientation.portrait(_:))
    {
      if (v9 == enum case for PreviewPreferences.InterfaceOrientation.portraitUpsideDown(_:))
      {
        return 4;
      }

      if (v9 == enum case for PreviewPreferences.InterfaceOrientation.landscapeLeft(_:))
      {
        return 16;
      }

      if (v9 == enum case for PreviewPreferences.InterfaceOrientation.landscapeRight(_:))
      {
        return 8;
      }

      (*(v2 + 8))(v5, v1);
    }
  }

  return 30;
}

void sub_1000369C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for PreviewDebugOverlay.AlignmentEdge();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidLoad");
  (*(v4 + 104))(v6, enum case for PreviewDebugOverlay.AlignmentEdge.bottom(_:), v3);
  if ([v1 view])
  {
    v7 = objc_allocWithZone(type metadata accessor for PreviewDebugOverlay());
    v8 = PreviewDebugOverlay.init(edge:parent:)();
    v9 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay;
    v10 = *&v1[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay];
    *&v1[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay] = v8;

    v11 = *&v1[v9];
    if (v11)
    {
      v12 = v11;

      PreviewDebugOverlay.identifier.setter();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100036B90()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewWillLayoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_activating];
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v15 = *&v1[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_active];
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = [v15 view];
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = v16;
  v18 = [v1 view];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  [v18 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v17 setFrame:{v21, v23, v25, v27}];
LABEL_9:
  v28 = OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay;
  v29 = *&v1[OBJC_IVAR____TtC12PreviewShell20CanvasViewController_debugOverlay];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v31 = [v1 view];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v32 = v31;
  [v31 bounds];

  PreviewDebugOverlay.size.setter();
  v33 = *&v1[v28];
  if (v33)
  {
    v34 = v33;
    PreviewDebugOverlay.bringToFront()();
  }
}

uint64_t type metadata accessor for CanvasViewController(uint64_t a1)
{
  result = qword_100070080;
  if (!qword_100070080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100036ED0(uint64_t a1)
{
  sub_100036F78(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100036F78(uint64_t a1)
{
  if (!qword_100070090)
  {
    type metadata accessor for PreviewPreferences.InterfaceOrientation();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100070090);
    }
  }
}

uint64_t sub_100036FD0(uint64_t a1)
{
  v2 = sub_100004C60(&qword_100070098, &unk_10004F238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100037184(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

id sub_100037238(void *a1)
{
  v2 = [a1 role];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v3 == 0xD000000000000017 && 0x8000000100054D50 == v5;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = [a1 role];
    v8 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v7];

    type metadata accessor for LocalSceneDelegate();
  }

  else
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v10 == v5)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v13 = [a1 role];
        v14 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v13];

        type metadata accessor for DeviceMainSceneDelegate();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v8 = v14;
        [v8 setDelegateClass:ObjCClassFromMetadata];
        v16 = String._bridgeToObjectiveC()();
        v17 = [objc_opt_self() storyboardWithName:v16 bundle:0];

        [v8 setStoryboard:v17];
        return v8;
      }
    }

    v18 = [a1 role];
    v8 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v18];

    type metadata accessor for InjectedSceneDelegate();
  }

  [v8 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v8;
}

unint64_t sub_1000374B8()
{
  result = qword_10006F428;
  if (!qword_10006F428)
  {
    type metadata accessor for PreviewShellService(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006F428);
  }

  return result;
}

uint64_t sub_100037534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v44 = a7;
  v47 = a4;
  v48 = a6;
  v41 = a2;
  v42 = a5;
  v46 = a3;
  v39 = a1;
  v8 = type metadata accessor for AgentUpdate.Context();
  v50 = *(v8 - 8);
  v51 = v8;
  v45 = *(v50 + 64);
  __chkstk_darwin(v8);
  v49 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PropertyList();
  v37 = v10;
  v11 = *(v10 - 8);
  v40 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v13;
  v14 = type metadata accessor for PreviewAgentConnector();
  v34 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v36 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ContentKey();
  v17 = *(v33 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v33);
  v35 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v7 + 48);
  (*(v17 + 16))();
  (*(v15 + 16))(v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v14);
  v32[0] = v11;
  (*(v11 + 16))(v13, v42, v10);
  v19 = v50;
  (*(v50 + 16))(v49, v44, v51);
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = (v18 + *(v15 + 80) + v20) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 16) & ~*(v11 + 80);
  v44 = (v40 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v19 + 80) + v44 + 8) & ~*(v19 + 80);
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 16) = v32[1];
  (*(v17 + 32))(v25 + v20, v35, v26);
  (*(v15 + 32))(v25 + v21, v36, v34);
  v27 = (v25 + v22);
  v28 = v47;
  *v27 = v46;
  v27[1] = v28;
  (*(v32[0] + 32))(v25 + v23, v38, v37);
  v29 = v49;
  *(v25 + v44) = v48;
  (*(v50 + 32))(v25 + v24, v29, v51);

  default argument 0 of FutureSerialQueue.enqueue<A>(priority:makeFuture:)();
  v30 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)();

  return v30;
}

uint64_t sub_100037978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a8;
  v62 = a7;
  v61 = a6;
  v60 = a3;
  v69 = type metadata accessor for ExecutionLane();
  v65 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = type metadata accessor for ContentKey();
  v57 = *(v58 - 1);
  __chkstk_darwin(v58);
  v14 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = type metadata accessor for Logger();
  v59 = *(v66 - 8);
  __chkstk_darwin(v66);
  v16 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for Callsite();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v54[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(a1 + 56);
  swift_retain_n();
  Callsite.init(_:_:_:_:)();
  assertMainThread(callsite:)();
  (*(v18 + 8))(v20, v17);
  v71 = a4;
  v72 = a5;
  v73 = v21;
  swift_beginAccess();
  sub_100004C60(&qword_10006ECB0, &qword_10004DB48);
  sub_10000DEB8();
  KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)();
  swift_endAccess();
  sub_10000E808(v78, v75);
  v23 = v21[3];
  v22 = v21[4];
  updated = type metadata accessor for CanvasUpdater.UpdateDelegate(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v67 = sub_100012360(v75, v23, v22, sub_100039194, a1);
  swift_unknownObjectRelease();
  v68 = a1;

  if (v21[2])
  {
    v75[0] = v21[2];
    sub_100039348(&qword_10006ECC0, 255, type metadata accessor for CanvasUpdater.UpdateDelegate, &unk_10004DCC8);
    Invalidatable.invalidate(dsoHandle:file:line:column:function:)();
  }

  v21[2] = v67;

  v24 = v16;
  static Logger.uv.getter();
  v25 = v57;
  v26 = v14;
  v27 = v58;
  (*(v57 + 16))(v14, a2, v58);
  sub_10000E808(v78, v75);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v56 = v24;
    v74 = v31;
    *v30 = 136446722;
    v55 = v29;
    v32 = v26;
    swift_getObjectType();
    v33 = dispatch thunk of PreviewShellScene.identifier.getter();
    v35 = sub_10000E0C0(v33, v34, &v74);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    sub_100039348(&qword_10006ECD8, 255, &type metadata accessor for ContentKey, &protocol conformance descriptor for ContentKey);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v25 + 8))(v32, v27);
    v39 = sub_10000E0C0(v36, v38, &v74);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2082;
    sub_10000E678(v75, v76);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    sub_10000519C(v75);
    v43 = sub_10000E0C0(v40, v42, &v74);

    *(v30 + 24) = v43;
    _os_log_impl(&_mh_execute_header, v28, v55, "Canvas %{public}s performing update for %{public}s using %{public}s", v30, 0x20u);
    swift_arrayDestroy();

    (*(v59 + 8))(v56, v66);
  }

  else
  {

    (*(v25 + 8))(v26, v27);
    (*(v59 + 8))(v24, v66);
    sub_10000519C(v75);
  }

  sub_100004C60(&qword_10006ECC8, &unk_10004DB50);
  v66 = static Future.create(dsoHandle:file:line:column:function:)();
  v59 = v44;
  sub_10000E678(v78, v78[3]);
  v45 = swift_allocObject();
  v47 = v67;
  v46 = v68;
  v45[2] = sub_10003918C;
  v45[3] = v46;
  v45[4] = v47;
  v45[5] = v21;
  v76 = updated;
  v58 = type metadata accessor for CanvasUpdater.UpdateDelegate;
  v77 = sub_100039348(&qword_10006ECD0, 255, type metadata accessor for CanvasUpdater.UpdateDelegate, &unk_10004DCF0);
  v75[0] = v47;
  swift_retain_n();

  v62 = dispatch thunk of CanvasContentProviderBox.performUpdate(using:providerPromise:updatePayload:controlStates:agentContext:makeSceneContext:delegate:)();

  sub_10000519C(v75);
  v48 = swift_allocObject();
  *(v48 + 16) = v21;
  *(v48 + 24) = v47;

  v49 = v64;
  static ExecutionLane.any.getter();
  type metadata accessor for SceneLayout();
  v63 = Future.tryThen<A>(dsoHandle:file:line:column:function:on:transform:)();

  v65 = *(v65 + 8);
  (v65)(v49, v69);
  sub_100004C60(&qword_10006E8F8, &qword_10004D790);
  static Future<A>.zip<A, B>(dsoHandle:file:line:column:function:_:_:)();
  static ExecutionLane.any.getter();
  type metadata accessor for CanvasUpdater.UpdateResult(0);
  Future.mapSuccess<A>(dsoHandle:file:line:column:function:on:_:)();

  v50 = v69;
  v51 = v65;
  (v65)(v49, v69);
  v75[0] = v47;
  sub_100039348(&qword_10006ECC0, 255, v58, &unk_10004DCC8);

  Invalidatable.onInvalidation(_:)();

  sub_10000519C(v78);
  static ExecutionLane.main.getter();
  type metadata accessor for PropertyList();
  v52 = Future.tryThen<A>(dsoHandle:file:line:column:function:on:transform:)();

  v51(v49, v50);
  return v52;
}