void closure #1 in HeadphoneDevice.setFindMyStatus()(void *a1, void *a2, NSObject *a3)
{
  v40 = a1;
  v39 = a2;
  v38 = a3;
  v37 = a1;
  if (a1)
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v35 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v36 = v13;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Unable to set FindMyNetwork Status. Error code: ", 0x42uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v15 = a1;
    v34[2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v34[0] = String.init<A>(describing:)();
    v34[1] = v16;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v34);
    v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v17);

    v19 = v35;
    v18 = v36;

    outlined destroy of DefaultStringInterpolation(&v35);
    MEMORY[0x1DA7309B0](v19, v18);
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v32 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v33 = v3;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: FindMyNetwork set to ", 0x27uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v4);

    v27 = MEMORY[0x1E69E7D40];
    v31[39] = (*((*a2 & *MEMORY[0x1E69E7D40]) + 0x2D0))(v5) & 1;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v6);

    v25 = v32;
    v24 = v33;

    outlined destroy of DefaultStringInterpolation(&v32);
    MEMORY[0x1DA7309B0](v25, v24);
    dispatch thunk of Log.notice(_:function:file:line:)();

    (*((*a2 & *v27) + 0x320))(1);
    v26 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

    if ((*((*a2 & *v27) + 0x2D0))(v7))
    {
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
      object = v10._object;
      v8 = v10._countAndFlagsBits;
    }

    else
    {
      v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
      object = v11._object;
      v8 = v11._countAndFlagsBits;
    }

    v22 = v8;
    v23 = object;
    v20 = (*(*v26 + 112))(v31);
    *(v12 + 224) = v22;
    *(v12 + 232) = v23;

    v20(v31);

    v21 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

    (*(*v21 + 152))(9);
  }

  dispatch_group_leave(a3);
}

uint64_t closure #2 in HeadphoneDevice.setFindMyStatus()(void *a1)
{
  if (((*((*a1 & *MEMORY[0x1E69E7D40]) + 0x318))() & 1) == 0)
  {
    (*((*a1 & *MEMORY[0x1E69E7D40]) + 0xB98))();
  }

  v2 = MEMORY[0x1E69E7D40];
  (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x338))(0);
  return (*((*a1 & *v2) + 0x320))(0);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t default argument 1 of OS_dispatch_group.notify(qos:flags:queue:execute:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ8Dispatch0C13WorkItemFlagsV_Tt0gq5(0);
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

Swift::Void __swiftcall HeadphoneDevice.resetToggle()()
{
  type metadata accessor for Log();
  static Log.shared.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Reset FindMyNetwork toggle", 0x2CuLL, 1);
  dispatch thunk of Log.error(_:function:file:line:)();

  v3 = MEMORY[0x1E69E7D40];
  v0 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x2C0))(1);
  v1 = (*((*v2 & *v3) + 0x2D0))(v0);
  (*((*v2 & *v3) + 0x2D8))((v1 ^ 1) & 1);
}

uint64_t HeadphoneDevice.fetchFindMyNetworkStatus(btAddr:)(uint64_t a1, unint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v19 = partial apply for closure #1 in HeadphoneDevice.fetchFindMyNetworkStatus(btAddr:);
  v12[3] = "fetchFindMyNetworkStatus(btAddr:)";
  v12[4] = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v31 = 0;
  v26 = type metadata accessor for DispatchTime();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v13 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v17);
  v25 = v12 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v29 = v12 - v14;
  v41 = v5;
  v42 = v6;
  v40 = v2;
  v15 = dispatch_group_create();
  v39 = v15;
  dispatch_group_enter(v15);
  v7 = (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x300))();
  v8 = v15;
  v22 = v7;
  swift_getObjectType();
  outlined copy of Data._Representation(v17, v16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v17, v16);
  MEMORY[0x1E69E5928](v18);
  MEMORY[0x1E69E5928](v8);
  v9 = swift_allocObject();
  v10 = v19;
  *(v9 + 16) = v18;
  *(v9 + 24) = v8;
  v37 = v10;
  v38 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = 0;
  v35 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v36 = &block_descriptor_295;
  v20 = _Block_copy(&aBlock);

  [v22 fetchFindMyNetworkStatusForMACAddress:isa completion:v20];
  _Block_release(v20);
  MEMORY[0x1E69E5920](isa);
  swift_unknownObjectRelease();
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v23 + 8);
  v27 = v23 + 8;
  v28(v25, v26);
  v30 = MEMORY[0x1DA730C80](v29);
  v28(v29, v26);
  v31 = v30 & 1;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    type metadata accessor for Log();
    v12[2] = static Log.shared.getter();
    v12[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: fetchFindMyNetworkStatus timedout", 0x33uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  return MEMORY[0x1E69E5920](v15);
}

void closure #1 in HeadphoneDevice.fetchFindMyNetworkStatus(btAddr:)(char a1, void *a2, void *a3, NSObject *a4)
{
  v31 = a1 & 1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v27 = a2;
  if (a2)
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v25 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v26 = v8;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: FindMy Status: Fetch Completed: Error code:", 0x3DuLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v10 = a2;
    v24[2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v24[0] = String.init<A>(describing:)();
    v24[1] = v11;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v24);
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v12);

    v14 = v25;
    v13 = v26;

    outlined destroy of DefaultStringInterpolation(&v25);
    MEMORY[0x1DA7309B0](v14, v13);
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    v15 = MEMORY[0x1E69E7D40];
    (*((*a3 & *MEMORY[0x1E69E7D40]) + 0x2A8))(1);
    (*((*a3 & *v15) + 0x2D8))(a1 & 1);
    type metadata accessor for Log();
    static Log.shared.getter();
    v22 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v23 = v4;
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: FindMy Status enabled: ", 0x29uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v5);

    (*((*a3 & *v15) + 0x2D0))(v6);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v7);

    v17 = v22;
    v16 = v23;

    outlined destroy of DefaultStringInterpolation(&v22);
    MEMORY[0x1DA7309B0](v17, v16);
    dispatch thunk of Log.notice(_:function:file:line:)();
  }

  dispatch_group_leave(a4);
}

Swift::Void __swiftcall HeadphoneDevice.setCaseSilentMode()()
{
  v25 = "setCaseSilentMode()";
  v26 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v27 = partial apply for closure #1 in HeadphoneDevice.setCaseSilentMode();
  v49 = 0;
  v47 = 0;
  v28 = 0;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v33 = v10 - v32;
  v34 = type metadata accessor for DispatchQoS();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v38 = v10 - v37;
  v49 = v0;
  v48 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x750))();
  v23 = v48 != 0;
  v22 = v23;
  outlined destroy of BTAirPodsControlServiceClient?(&v48);
  if (v22)
  {
    v1 = *v24;
    v20 = MEMORY[0x1E69E7D40];
    v2 = (*((v1 & *MEMORY[0x1E69E7D40]) + 0x720))();
    v21 = v2 ^ 1;
    v47 = (v2 ^ 1) & 1;
    v46 = (*((*v24 & *v20) + 0x750))();
    if (v46)
    {
      v16 = &v46;
      v17 = v46;
      MEMORY[0x1E69E5928](v46);
      outlined destroy of BTAirPodsControlServiceClient?(v16);
      v19 = [v17 dispatchQueue];
      MEMORY[0x1E69E5920](v17);
      MEMORY[0x1E69E5928](v24);
      MEMORY[0x1E69E5928](v24);
      v3 = swift_allocObject();
      v4 = v21;
      v5 = v27;
      *(v3 + 16) = v24;
      *(v3 + 24) = v4 & 1;
      v44 = v5;
      v45 = v3;
      aBlock = MEMORY[0x1E69E9820];
      v40 = 1107296256;
      v41 = 0;
      v42 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v43 = &block_descriptor_301;
      v18 = _Block_copy(&aBlock);
      default argument 1 of OS_dispatch_queue.async(group:qos:flags:execute:)();
      default argument 2 of OS_dispatch_queue.async(group:qos:flags:execute:)();
      MEMORY[0x1DA730CD0](0, v38, v33, v18);
      (*(v30 + 8))(v33, v29);
      (*(v35 + 8))(v38, v34);
      _Block_release(v18);

      MEMORY[0x1E69E5920](v24);
      MEMORY[0x1E69E5920](v19);
    }

    else
    {
      outlined destroy of BTAirPodsControlServiceClient?(&v46);
    }
  }

  else
  {
    v10[0] = type metadata accessor for Log();
    v10[2] = static Log.shared.getter();
    v14 = 1;
    v10[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Invalid BTAirPodsControlServiceClient. Unable to set CaseSound ", 0x51uLL, 1)._object;
    v10[3] = 19;
    v11 = 2;
    v10[4] = 112;
    dispatch thunk of Log.error(_:function:file:line:)();

    v13 = static Log.shared.getter();
    object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Reset case sound toggle.", 0x2AuLL, v14 & 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
    v6 = v24;

    v7 = *v6;
    v15 = MEMORY[0x1E69E7D40];
    v8 = (*((v7 & *MEMORY[0x1E69E7D40]) + 0x770))(v14 & 1);
    v9 = (*((*v24 & *v15) + 0x720))(v8);
    (*((*v24 & *v15) + 0x728))((v9 ^ 1) & 1);
  }
}

void closure #1 in HeadphoneDevice.setCaseSilentMode()(void *a1, char a2)
{
  v16 = a1;
  v15 = a2 & 1;
  v14 = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x750))();
  if (v14)
  {
    v4 = v14;
    MEMORY[0x1E69E5928](v14);
    outlined destroy of BTAirPodsControlServiceClient?(&v14);
    MEMORY[0x1E69E5928](a1);
    MEMORY[0x1E69E5928](a1);
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    v12 = partial apply for closure #1 in closure #1 in HeadphoneDevice.setCaseSilentMode();
    v13 = v2;
    aBlock = MEMORY[0x1E69E9820];
    v8 = 1107296256;
    v9 = 0;
    v10 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v11 = &block_descriptor_352;
    v3 = _Block_copy(&aBlock);

    MEMORY[0x1E69E5920](a1);
    [v4 setSilentMode:a2 & 1 completionHandler:v3];
    _Block_release(v3);
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    outlined destroy of BTAirPodsControlServiceClient?(&v14);
  }
}

uint64_t closure #1 in closure #1 in HeadphoneDevice.setCaseSilentMode()(void *a1, void *a2)
{
  v41 = a1;
  v40 = a2;
  v39 = a1;
  if (a1)
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v37 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v38 = v12;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Unable to set CaseSound. Error code: ", 0x37uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v14 = a1;
    v36[2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v36[0] = String.init<A>(describing:)();
    v36[1] = v15;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v36);
    v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v16);

    v21 = v37;
    v20 = v38;

    outlined destroy of DefaultStringInterpolation(&v37);
    MEMORY[0x1DA7309B0](v21, v20);
    dispatch thunk of Log.error(_:function:file:line:)();

    v22 = MEMORY[0x1E69E7D40];
    (*((*a2 & *MEMORY[0x1E69E7D40]) + 0x770))(1);
    static Log.shared.getter();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Reset case sound toggle.", 0x2AuLL, 1);
    dispatch thunk of Log.error(_:function:file:line:)();

    v18 = (*((*a2 & *v22) + 0x720))(v17);
    (*((*a2 & *v22) + 0x728))((v18 ^ 1) & 1);
  }

  else
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v34 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v35 = v2;
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: CaseSound set to ", 0x23uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v3);

    v30 = MEMORY[0x1E69E7D40];
    v33[39] = (*((*a2 & *MEMORY[0x1E69E7D40]) + 0x720))(v4) & 1;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v5);

    v28 = v34;
    v27 = v35;

    outlined destroy of DefaultStringInterpolation(&v34);
    MEMORY[0x1DA7309B0](v28, v27);
    dispatch thunk of Log.notice(_:function:file:line:)();

    v29 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

    if ((*((*a2 & *v30) + 0x720))(v6))
    {
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("On", 2uLL, 1);
      object = v9._object;
      v7 = v9._countAndFlagsBits;
    }

    else
    {
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Off", 3uLL, 1);
      object = v10._object;
      v7 = v10._countAndFlagsBits;
    }

    v25 = v7;
    v26 = object;
    v23 = (*(*v29 + 112))(v33);
    *(v11 + 8) = v25;
    *(v11 + 16) = v26;

    v23(v33);

    v24 = *HPSDeviceAnalytics.shared.unsafeMutableAddressor();

    (*(*v24 + 152))(16);
  }

  return (*((*a2 & *MEMORY[0x1E69E7D40]) + 0x788))(0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t default argument 2 of OS_dispatch_queue.async(group:qos:flags:execute:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ8Dispatch0C13WorkItemFlagsV_Tt0gq5(0);
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

Swift::Bool __swiftcall HeadphoneDevice.isiCloudSignedIn()()
{
  v8[1] = 0;
  v7 = [objc_opt_self() defaultStore];
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 959;
    LODWORD(v3) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = [v6 aa_primaryAppleAccount];
  MEMORY[0x1E69E5920](v6);
  v8[0] = v5;
  outlined destroy of ACAccount?(v8);
  if (v5)
  {
    return 1;
  }

  type metadata accessor for Log();
  static Log.shared.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: iCloud Account is not signed in", 0x31uLL, 1);
  dispatch thunk of Log.error(_:function:file:line:)();

  return 0;
}

Swift::Void __swiftcall HeadphoneDevice.setPressHoldDefaults()()
{
  if ((*((*v0 & *MEMORY[0x1E69E7D40]) + 0x678))())
  {
    (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
    type metadata accessor for CBPeerUIGestureMode(0);
    lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
    v8 = == infix<A>(_:_:)();
    (MEMORY[0x1E69E5928])();
    if (v8)
    {
      v7 = 1;
    }

    else
    {
      (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
      v7 = == infix<A>(_:_:)();
    }

    (MEMORY[0x1E69E5920])();
    if (v7)
    {
      v6 = MEMORY[0x1E69E7D40];
      (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F8))(7);
      (*((*v9 & *v6) + 0x428))(6);
    }
  }

  else
  {
    (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
    type metadata accessor for CBPeerUIGestureMode(0);
    lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode();
    v5 = == infix<A>(_:_:)();
    (MEMORY[0x1E69E5928])();
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F0))();
      v4 = == infix<A>(_:_:)();
    }

    v1 = (MEMORY[0x1E69E5920])();
    if (v4)
    {
      if ((*((*v9 & *MEMORY[0x1E69E7D40]) + 0xC38))(v1))
      {
        v3 = MEMORY[0x1E69E7D40];
        (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F8))();
        (*((*v9 & *v3) + 0x428))(1);
      }

      else
      {
        v2 = MEMORY[0x1E69E7D40];
        (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x3F8))();
        (*((*v9 & *v2) + 0x428))(5);
      }
    }
  }
}

Swift::Void __swiftcall HeadphoneDevice.isSpatialProfileRecordPresent()()
{
  v10 = partial apply for closure #1 in HeadphoneDevice.isSpatialProfileRecordPresent();
  v6[2] = "isSpatialProfileRecordPresent()";
  v6[3] = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v22 = 0;
  v6[4] = 0;
  v17 = type metadata accessor for DispatchTime();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v16 = v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v20 = v6 - v8;
  v32 = v0;
  type metadata accessor for BTCloudServicesClient();
  v12 = BTCloudServicesClient.__allocating_init()();
  v31 = v12;
  v3 = dispatch_group_create();
  v9 = v3;
  v30 = v3;
  dispatch_group_enter(v3);
  MEMORY[0x1E69E5928](v11);
  MEMORY[0x1E69E5928](v11);
  MEMORY[0x1E69E5928](v3);
  v4 = swift_allocObject();
  v5 = v10;
  *(v4 + 16) = v11;
  *(v4 + 24) = v3;
  v28 = v5;
  v29 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = 0;
  v26 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed BTCloudSoundProfileRecord?, @guaranteed Error?) -> ();
  v27 = &block_descriptor_307;
  v13 = _Block_copy(&aBlock);

  MEMORY[0x1E69E5920](v11);
  [v12 fetchSoundProfileRecordWithCompletion_];
  _Block_release(v13);
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v14 + 8);
  v18 = v14 + 8;
  v19(v16, v17);
  v21 = MEMORY[0x1DA730C80](v20);
  v19(v20, v17);
  v22 = v21 & 1;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    type metadata accessor for Log();
    v6[1] = static Log.shared.getter();
    v6[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: fetchSoundProfileRecord timedout", 0x32uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v12);
}

void closure #1 in HeadphoneDevice.isSpatialProfileRecordPresent()(uint64_t a1, void *a2, void *a3, NSObject *a4)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a2;
  if (a2)
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v16 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v17 = v4;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: fetchSoundProfileRecord failed with Error code:", 0x41uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v6 = a2;
    v15[2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v15[0] = String.init<A>(describing:)();
    v15[1] = v7;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v15);
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v8);

    v11 = v16;
    v10 = v17;

    outlined destroy of DefaultStringInterpolation(&v16);
    MEMORY[0x1DA7309B0](v11, v10);
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    v18 = a1;
    v9 = a1 == 0;
    type metadata accessor for Log();
    static Log.shared.getter();
    if (v9)
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: soundProfileRecord does not exist", 0x33uLL, 1);
      dispatch thunk of Log.error(_:function:file:line:)();
    }

    else
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: soundProfileRecord does exist", 0x2FuLL, 1);
      dispatch thunk of Log.notice(_:function:file:line:)();

      (*((*a3 & *MEMORY[0x1E69E7D40]) + 0x6C8))(1);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed BTCloudSoundProfileRecord?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v5(a2);

  MEMORY[0x1E69E5920](a2);
}

Swift::Void __swiftcall HeadphoneDevice.removeSpatialProfileRecord()()
{
  v11 = partial apply for closure #1 in HeadphoneDevice.removeSpatialProfileRecord();
  v6[3] = "removeSpatialProfileRecord()";
  v6[4] = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v23 = 0;
  v9 = 0;
  v17 = type metadata accessor for DispatchTime();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v16 = v6 - v7;
  v8 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6 - v7);
  v20 = v6 - v8;
  v33 = v0;
  v2 = *((*v0 & *MEMORY[0x1E69E7D40]) + 0x6C8);
  v22 = 1;
  v2(0);
  type metadata accessor for BTCloudServicesClient();
  v12 = BTCloudServicesClient.__allocating_init()();
  v32 = v12;
  v3 = dispatch_group_create();
  v10 = v3;
  v31 = v3;
  dispatch_group_enter(v3);
  MEMORY[0x1E69E5928](v3);
  v4 = swift_allocObject();
  v5 = v11;
  *(v4 + 16) = v3;
  v29 = v5;
  v30 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = 0;
  v27 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v28 = &block_descriptor_313;
  v13 = _Block_copy(&aBlock);

  [v12 deleteSoundProfileRecordWithCompletion_];
  _Block_release(v13);
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v14 + 8);
  v18 = v14 + 8;
  v19(v16, v17);
  v21 = MEMORY[0x1DA730C80](v20);
  v19(v20, v17);
  v23 = v21 & 1;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    type metadata accessor for Log();
    v6[2] = static Log.shared.getter();
    v6[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: deleteSoundProfileRecord timedout", 0x33uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v12);
}

void closure #1 in HeadphoneDevice.removeSpatialProfileRecord()(void *a1, NSObject *a2)
{
  v17 = a1;
  v16 = a2;
  v15 = a1;
  v9 = a1 != 0;
  type metadata accessor for Log();
  static Log.shared.getter();
  if (v9)
  {
    v13 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v14 = v2;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: deleteSoundProfileRecord failed with Error code:", 0x42uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v4 = a1;
    v12[2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v12[0] = String.init<A>(describing:)();
    v12[1] = v5;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v12);
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v6);

    v8 = v13;
    v7 = v14;

    outlined destroy of DefaultStringInterpolation(&v13);
    MEMORY[0x1DA7309B0](v8, v7);
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: Sound Profile Reset Completed", 0x2FuLL, 1);
    dispatch thunk of Log.notice(_:function:file:line:)();
  }

  dispatch_group_leave(a2);
}

Swift::Void __swiftcall HeadphoneDevice.getCaseSilentMode()()
{
  v53 = "getCaseSilentMode()";
  v54 = "/Library/Caches/com.apple.xbs/Sources/ConnectedAudio_UI/HeadphoneSettings/HeadphoneManager/HeadphoneDevice.swift";
  v55 = partial apply for closure #1 in HeadphoneDevice.getCaseSilentMode();
  v84 = 0;
  v78 = 0;
  v79 = 0;
  v61 = 0;
  v56 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v60 = v16 - v59;
  v62 = type metadata accessor for DispatchQoS();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v66 = v16 - v65;
  v84 = v0;
  type metadata accessor for BTAirPodsControlServiceClient();
  v1 = BTAirPodsControlServiceClient.__allocating_init()();
  v2 = *v67;
  v68 = MEMORY[0x1E69E7D40];
  v3 = (*((v2 & *MEMORY[0x1E69E7D40]) + 0x758))(v1);
  v83 = (*((*v67 & *v68) + 0x750))(v3);
  v52 = v83 != 0;
  v51 = v52;
  outlined destroy of BTAirPodsControlServiceClient?(&v83);
  if (v51)
  {
    v49 = (*((*v67 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v50 = [v49 serialNumber];
    if (v50)
    {
      v48 = v50;
      v43 = v50;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v4;
      MEMORY[0x1E69E5920](v43);
      v46 = v44;
      v47 = v45;
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    v41 = v47;
    v42 = v46;
    if (v47)
    {
      v39 = v42;
      v40 = v41;
      v5 = v67;
      v37 = v41;
      v38 = v42;
      v78 = v42;
      v79 = v41;
      v6 = MEMORY[0x1E69E5920](v49);
      v77 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x750))(v6);
      if (v77)
      {
        v34 = &v77;
        v36 = v77;
        MEMORY[0x1E69E5928](v77);
        outlined destroy of BTAirPodsControlServiceClient?(v34);

        v35 = MEMORY[0x1DA730940](v38, v37);

        [v36 setDeviceSN_];
        MEMORY[0x1E69E5920](v35);
        MEMORY[0x1E69E5920](v36);
      }

      else
      {
        outlined destroy of BTAirPodsControlServiceClient?(&v77);
      }

      v12 = v67;

      v76 = (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x750))(v13);
      if (v76)
      {
        v17 = &v76;
        v18 = v76;
        MEMORY[0x1E69E5928](v76);
        outlined destroy of BTAirPodsControlServiceClient?(v17);
        v20 = [v18 dispatchQueue];
        MEMORY[0x1E69E5920](v18);
        MEMORY[0x1E69E5928](v67);
        v14 = swift_allocObject();
        v15 = v55;
        *(v14 + 16) = v67;
        v74 = v15;
        v75 = v14;
        aBlock = MEMORY[0x1E69E9820];
        v70 = 1107296256;
        v71 = 0;
        v72 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v73 = &block_descriptor_319;
        v19 = _Block_copy(&aBlock);
        default argument 1 of OS_dispatch_queue.async(group:qos:flags:execute:)();
        default argument 2 of OS_dispatch_queue.async(group:qos:flags:execute:)();
        MEMORY[0x1DA730CD0](0, v66, v60, v19);
        (*(v57 + 8))(v60, v56);
        (*(v63 + 8))(v66, v62);
        _Block_release(v19);

        MEMORY[0x1E69E5920](v20);
      }

      else
      {
        outlined destroy of BTAirPodsControlServiceClient?(&v76);
      }
    }

    else
    {
      MEMORY[0x1E69E5920](v49);
      v26 = 0;
      type metadata accessor for Log();
      v33 = static Log.shared.getter();
      v21 = 52;
      v7 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v29 = &v81;
      v81 = v7;
      v82 = v8;
      v27 = 1;
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneSettings: Invalid serial number for device ", v21, 1);
      object = v9._object;
      MEMORY[0x1DA7310D0](v9._countAndFlagsBits);

      v23 = *(v67 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
      v24 = *(v67 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

      v25 = v80;
      v80[0] = v23;
      v80[1] = v24;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String(v25);
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v26, v27 & 1);
      v28 = v10._object;
      MEMORY[0x1DA7310D0](v10._countAndFlagsBits);

      v31 = v81;
      v30 = v82;

      outlined destroy of DefaultStringInterpolation(v29);
      MEMORY[0x1DA7309B0](v31, v30);
      v32 = v11;
      dispatch thunk of Log.error(_:function:file:line:)();
    }
  }

  else
  {
    type metadata accessor for Log();
    v16[2] = static Log.shared.getter();
    v16[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneSettings: Failed to initialize BTAirPodsControlServiceClient", 0x45uLL, 1)._object;
    dispatch thunk of Log.error(_:function:file:line:)();
  }
}

void closure #1 in HeadphoneDevice.getCaseSilentMode()(void *a1)
{
  v12[1] = a1;
  v12[0] = (*((*a1 & *MEMORY[0x1E69E7D40]) + 0x750))();
  if (v12[0])
  {
    v3 = v12[0];
    MEMORY[0x1E69E5928](v12[0]);
    outlined destroy of BTAirPodsControlServiceClient?(v12);
    MEMORY[0x1E69E5928](a1);
    v1 = swift_allocObject();
    *(v1 + 16) = a1;
    v10 = partial apply for closure #1 in closure #1 in HeadphoneDevice.getCaseSilentMode();
    v11 = v1;
    aBlock = MEMORY[0x1E69E9820];
    v6 = 1107296256;
    v7 = 0;
    v8 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v9 = &block_descriptor_346;
    v2 = _Block_copy(&aBlock);

    [v3 getSilentModeWithCompletionHandler_];
    _Block_release(v2);
    MEMORY[0x1E69E5920](v3);
  }

  else
  {
    outlined destroy of BTAirPodsControlServiceClient?(v12);
  }
}

uint64_t closure #1 in closure #1 in HeadphoneDevice.getCaseSilentMode()(int a1, void *a2, void *a3)
{
  v29 = a1 & 1;
  v28 = a2;
  v27 = a3;
  v26 = a2;
  if (a2)
  {
    type metadata accessor for Log();
    static Log.shared.getter();
    v24 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v25 = v8;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: CaseSound Status: Fetch Completed: Error code:", 0x40uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v10 = a2;
    v23[2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v23[0] = String.init<A>(describing:)();
    v23[1] = v11;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String(v23);
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" ", 1uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v12);

    v14 = v24;
    v13 = v25;

    outlined destroy of DefaultStringInterpolation(&v24);
    MEMORY[0x1DA7309B0](v14, v13);
    dispatch thunk of Log.error(_:function:file:line:)();
  }

  else
  {
    v15 = MEMORY[0x1E69E7D40];
    (*((*a3 & *MEMORY[0x1E69E7D40]) + 0x6F8))(1);
    (*((*a3 & *v15) + 0x728))((a1 ^ 1) & 1);
    type metadata accessor for Log();
    static Log.shared.getter();
    v21 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v22 = v3;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: CaseSound enabled: ", 0x25uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v4);

    (*((*a3 & *v15) + 0x720))(v5);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v6);

    v17 = v21;
    v16 = v22;

    outlined destroy of DefaultStringInterpolation(&v21);
    MEMORY[0x1DA7309B0](v17, v16);
    dispatch thunk of Log.error(_:function:file:line:)();
  }
}

Swift::Void __swiftcall HeadphoneDevice.populateSerialNumbers()()
{
  v33 = v0;
  v28 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x810))();
  v29 = MEMORY[0x1DA7308C0](v28, MEMORY[0x1E69E6530], MEMORY[0x1E69E6158], MEMORY[0x1E69E6540]);

  if (v29)
  {
    v25 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x228))();
    v26 = [v25 serialNumber];
    if (v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v1;
      MEMORY[0x1E69E5920](v26);
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      MEMORY[0x1E69E5920](v25);
      SerialNumberType.rawValue.getter();

      v22 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x820))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
      Dictionary.subscript.setter();
      v22();
    }

    else
    {
      v2 = MEMORY[0x1E69E5920](v25);
    }

    v20 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x228))(v2);
    v21 = [v20 serialNumberLeft];
    if (v21)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v3;
      MEMORY[0x1E69E5920](v21);
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      MEMORY[0x1E69E5920](v20);
      SerialNumberType.rawValue.getter();

      v17 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x820))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
      Dictionary.subscript.setter();
      v17();
    }

    else
    {
      v4 = MEMORY[0x1E69E5920](v20);
    }

    v15 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x228))(v4);
    v16 = [v15 serialNumberRight];
    if (v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v5;
      MEMORY[0x1E69E5920](v16);
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x1E69E5920](v15);
    if (v14)
    {
      SerialNumberType.rawValue.getter();

      v12 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x820))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
      Dictionary.subscript.setter();
      v12();
    }

    type metadata accessor for Log();
    static Log.shared.getter();
    v31 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v32 = v6;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeadphoneManager: populateSerialNumbers:", 0x28uLL, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](countAndFlagsBits);

    v30 = (*((*v27 & *MEMORY[0x1E69E7D40]) + 0x810))(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
    lazy protocol witness table accessor for type [Int : String] and conformance [A : B]();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of [Int : String](&v30);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x1DA7310D0](v9);

    v11 = v31;
    v10 = v32;

    outlined destroy of DefaultStringInterpolation(&v31);
    MEMORY[0x1DA7309B0](v11, v10);
    dispatch thunk of Log.notice(_:function:file:line:)();
  }
}

Swift::Bool __swiftcall HeadphoneDevice.validatePressHoldCombination()()
{
  v10 = ((*((*v0 & *MEMORY[0x1E69E7D40]) + 0x4C8))() & 1) != 0;
  result = (*((*v11 & *MEMORY[0x1E69E7D40]) + 0x468))();
  v9 = result;
  v8 = v10 + v9;
  if (__OFADD__(v10, v9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = (*((*v11 & *MEMORY[0x1E69E7D40]) + 0x498))();
  v7 = result;
  v6 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    goto LABEL_15;
  }

  result = (*((*v11 & *MEMORY[0x1E69E7D40]) + 0x4F8))();
  v5 = result;
  if (!__OFADD__(v6, v5))
  {
    return v6 + v5 >= 2;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall HeadphoneDevice.shouldShowFindMyNetworkAlert()()
{
  v7 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x2A0))() & 1;
  v1 = (MEMORY[0x1E69E5928])();
  if (v7)
  {
    v5 = 0;
  }

  else
  {
    v3 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x228))(v1);
    v4 = checkIsFindMyNetworkSupported(cbDevice:)(v3);
    MEMORY[0x1E69E5920](v3);
    v5 = v4;
  }

  (MEMORY[0x1E69E5920])();
  return (v5 & 1) != 0;
}

uint64_t HeadphoneDevice.accessorySettingFeatureBitMask.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_accessorySettingFeatureBitMask);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.accessorySettingFeatureBitMask.setter(int a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_accessorySettingFeatureBitMask);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.accessorySettingFeatureBitMask : HeadphoneDevice@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xBF0))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.accessorySettingFeatureBitMask : HeadphoneDevice(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xBF8))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t HeadphoneDevice.deviceColor.getter()
{
  v2 = (v0 + OBJC_IVAR___HPMHeadphoneDevice_deviceColor);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t HeadphoneDevice.deviceColor.setter(int a1)
{
  v3 = (v1 + OBJC_IVAR___HPMHeadphoneDevice_deviceColor);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for HeadphoneDevice.deviceColor : HeadphoneDevice@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xC08))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t key path setter for HeadphoneDevice.deviceColor : HeadphoneDevice(unsigned int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xC10))(v4);
  return MEMORY[0x1E69E5920](v3);
}

BOOL HeadphoneDevice.forceShowBobble.getter()
{
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.ConnectedAudio", 0x18uLL, 1)._countAndFlagsBits;
  v4 = MEMORY[0x1DA730940](countAndFlagsBits);
  CFPreferencesAppSynchronize(v4);
  MEMORY[0x1E69E5920](v4);

  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("forceShowBobble", 0xFuLL, 1)._countAndFlagsBits;
  v6 = MEMORY[0x1DA730940](v1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.ConnectedAudio", 0x18uLL, 1)._countAndFlagsBits;
  v5 = MEMORY[0x1DA730940](v2);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v6, v5, 0);
  MEMORY[0x1E69E5920](v5);

  MEMORY[0x1E69E5920](v6);

  return AppBooleanValue != 0;
}

BOOL HeadphoneDevice.forceShowAdaptiveAudio.getter()
{
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.ConnectedAudio", 0x18uLL, 1)._countAndFlagsBits;
  v4 = MEMORY[0x1DA730940](countAndFlagsBits);
  CFPreferencesAppSynchronize(v4);
  MEMORY[0x1E69E5920](v4);

  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("forceShowAdaptiveAudio", 0x16uLL, 1)._countAndFlagsBits;
  v6 = MEMORY[0x1DA730940](v1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.ConnectedAudio", 0x18uLL, 1)._countAndFlagsBits;
  v5 = MEMORY[0x1DA730940](v2);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v6, v5, 0);
  MEMORY[0x1E69E5920](v5);

  MEMORY[0x1E69E5920](v6);

  return AppBooleanValue != 0;
}

Swift::Bool __swiftcall HeadphoneDevice.pressHoldSupportsSiriOnly()()
{
  v4 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xB60))(2);
  (MEMORY[0x1E69E5928])();
  if (v4)
  {
    v2 = (*((*v3 & *MEMORY[0x1E69E7D40]) + 0xB60))(1) ^ 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  (MEMORY[0x1E69E5920])();
  return v2 & 1;
}

id HeadphoneDevice.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneDevice(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance HeadphoneDevice@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HeadphoneDevice(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t one-time initialization function for deviceKey()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HPM_HEADPHONE_DEVICE_KEY", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static HeadphoneDevice.deviceKey = v1;
  return result;
}

__int128 *HeadphoneDevice.deviceKey.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceKey != -1)
  {
    swift_once();
  }

  return &static HeadphoneDevice.deviceKey;
}

uint64_t static HeadphoneDevice.deviceKey.getter()
{
  v1 = *HeadphoneDevice.deviceKey.unsafeMutableAddressor();

  return v1;
}

uint64_t HeadphoneDevice.standardAddress.getter()
{
  v7[2] = 0;
  v2 = *(v0 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
  v3 = *(v0 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

  v7[0] = v2;
  v7[1] = v3;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", 1uLL, 1);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", 1uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  outlined destroy of String(&v5);
  outlined destroy of String(&v6);
  outlined destroy of String(v7);
  return v4;
}

uint64_t HeadphoneDevice.hpsAddress.getter()
{
  v7[2] = 0;
  v2 = *(v0 + OBJC_IVAR___HPMHeadphoneDevice_btAddress);
  v3 = *(v0 + OBJC_IVAR___HPMHeadphoneDevice_btAddress + 8);

  v7[0] = v2;
  v7[1] = v3;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(":", 1uLL, 1);
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("-", 1uLL, 1);
  lazy protocol witness table accessor for type String and conformance String();
  default argument 2 of StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  outlined destroy of String(&v5);
  outlined destroy of String(&v6);
  outlined destroy of String(v7);
  return v4;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerUIGestureMode@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerUIGestureMode.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerUIGestureMode@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerUIGestureMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerCallConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerCallConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerCallConfig@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerCallConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerCrownRotationDirection@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerCrownRotationDirection.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerCrownRotationDirection@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerCrownRotationDirection.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBDevicePlacementMode@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBDevicePlacementMode.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBDevicePlacementMode@<X0>(_BYTE *a1@<X8>)
{
  result = CBDevicePlacementMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBSmartRoutingMode@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBSmartRoutingMode.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBSmartRoutingMode@<X0>(_BYTE *a1@<X8>)
{
  result = CBSmartRoutingMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerSelectiveSpeechListeningConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerSelectiveSpeechListeningConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerSelectiveSpeechListeningConfig@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerSelectiveSpeechListeningConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerConversationDetectConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerConversationDetectConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerConversationDetectConfig@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerConversationDetectConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerAdaptiveVolumeConfig@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerAdaptiveVolumeConfig.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerAdaptiveVolumeConfig@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerAdaptiveVolumeConfig.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AAFeatureCapability@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AAFeatureCapability.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AAFeatureCapability@<X0>(_BYTE *a1@<X8>)
{
  result = AAFeatureCapability.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance CBListeningModeConfigs(uint64_t a1)
{
  lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance CBListeningModeConfigs(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance CBListeningModeConfigs(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance CBListeningModeConfigs(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBPeerAutoAncCapability@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBPeerAutoAncCapability.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBPeerAutoAncCapability@<X0>(_BYTE *a1@<X8>)
{
  result = CBPeerAutoAncCapability.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance CBListeningModeConfigs(uint64_t a1@<X8>)
{
  CBListeningModeConfigs.init(rawValue:)();
  *a1 = v1;
  *(a1 + 4) = 0;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance CBDeviceFlags(uint64_t a1@<X8>)
{
  CBDeviceFlags.init(rawValue:)();
  *a1 = v1;
  *(a1 + 8) = 0;
}

uint64_t protocol witness for SetAlgebra.init() in conformance CBDeviceFlags(uint64_t a1)
{
  lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance CBDeviceFlags(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance CBDeviceFlags(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance CBDeviceFlags(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags();
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return OptionSet<>.formSymmetricDifference(_:)();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance CBProductFlags(uint64_t a1@<X8>)
{
  CBProductFlags.init(rawValue:)();
  *a1 = v1;
  *(a1 + 4) = 0;
}

uint64_t protocol witness for SetAlgebra.init() in conformance CBProductFlags(uint64_t a1)
{
  lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance CBProductFlags(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance CBProductFlags(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance CBProductFlags(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBDoubleTapAction@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBDoubleTapAction.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBDoubleTapAction@<X0>(_BYTE *a1@<X8>)
{
  result = CBDoubleTapAction.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBListeningMode@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = CBListeningMode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t CBListeningMode.init(rawValue:)(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBListeningMode@<X0>(_DWORD *a1@<X8>)
{
  result = CBListeningMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CBMicrophoneMode@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CBMicrophoneMode.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CBMicrophoneMode@<X0>(_BYTE *a1@<X8>)
{
  result = CBMicrophoneMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t type metadata accessor for CBListeningModeConfigs(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBListeningModeConfigs;
  if (!lazy cache variable for type metadata for CBListeningModeConfigs)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBListeningModeConfigs);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type CBListeningModeConfigs and conformance CBListeningModeConfigs()
{
  v2 = lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs)
  {
    type metadata accessor for CBListeningModeConfigs(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs)
  {
    type metadata accessor for CBListeningModeConfigs(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs)
  {
    type metadata accessor for CBListeningModeConfigs(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs)
  {
    type metadata accessor for CBListeningModeConfigs(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs)
  {
    type metadata accessor for CBListeningModeConfigs(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningModeConfigs and conformance CBListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBProductInfo()
{
  v2 = lazy cache variable for type metadata for CBProductInfo;
  if (!lazy cache variable for type metadata for CBProductInfo)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBProductInfo);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection()
{
  v2 = lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection;
  if (!lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection)
  {
    type metadata accessor for CBPeerCrownRotationDirection(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection;
  if (!lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection)
  {
    type metadata accessor for CBPeerCrownRotationDirection(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerCrownRotationDirection and conformance CBPeerCrownRotationDirection);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBDevicePlacementMode(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBDevicePlacementMode;
  if (!lazy cache variable for type metadata for CBDevicePlacementMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBDevicePlacementMode);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type CBDevicePlacementMode and conformance CBDevicePlacementMode()
{
  v2 = lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode;
  if (!lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode)
  {
    type metadata accessor for CBDevicePlacementMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode;
  if (!lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode)
  {
    type metadata accessor for CBDevicePlacementMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDevicePlacementMode and conformance CBDevicePlacementMode);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBSmartRoutingMode and conformance CBSmartRoutingMode()
{
  v2 = lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode;
  if (!lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode)
  {
    type metadata accessor for CBSmartRoutingMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode;
  if (!lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode)
  {
    type metadata accessor for CBSmartRoutingMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBSmartRoutingMode and conformance CBSmartRoutingMode);
    return WitnessTable;
  }

  return v2;
}

uint64_t CBProductIDIsAirPods_0(int a1)
{
  switch(a1)
  {
    case 8194:
      v2 = 1;
      break;
    case 8202:
      v2 = 1;
      break;
    case 8206:
      v2 = 1;
      break;
    case 8207:
      v2 = 1;
      break;
    case 8211:
      v2 = 1;
      break;
    case 8212:
      v2 = 1;
      break;
    case 8217:
      v2 = 1;
      break;
    case 8219:
      v2 = 1;
      break;
    case 8222:
      v2 = 1;
      break;
    case 8223:
      v2 = 1;
      break;
    case 8224:
      v2 = 1;
      break;
    case 8228:
      v2 = 1;
      break;
    case 8231:
      v2 = 1;
      break;
    case 8232:
      v2 = 1;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2 & 1;
}

unint64_t type metadata accessor for SPOwnerInterface()
{
  v2 = lazy cache variable for type metadata for SPOwnerInterface;
  if (!lazy cache variable for type metadata for SPOwnerInterface)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SPOwnerInterface);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode()
{
  v2 = lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode;
  if (!lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode)
  {
    type metadata accessor for CBPeerUIGestureMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode;
  if (!lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode)
  {
    type metadata accessor for CBPeerUIGestureMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerUIGestureMode and conformance CBPeerUIGestureMode);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBPeerSelectiveSpeechListeningConfig(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBPeerSelectiveSpeechListeningConfig;
  if (!lazy cache variable for type metadata for CBPeerSelectiveSpeechListeningConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerSelectiveSpeechListeningConfig);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig()
{
  v2 = lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig;
  if (!lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig)
  {
    type metadata accessor for CBPeerSelectiveSpeechListeningConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig;
  if (!lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig)
  {
    type metadata accessor for CBPeerSelectiveSpeechListeningConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerSelectiveSpeechListeningConfig and conformance CBPeerSelectiveSpeechListeningConfig);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBPeerConversationDetectConfig(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBPeerConversationDetectConfig;
  if (!lazy cache variable for type metadata for CBPeerConversationDetectConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerConversationDetectConfig);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig()
{
  v2 = lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig;
  if (!lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig)
  {
    type metadata accessor for CBPeerConversationDetectConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig;
  if (!lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig)
  {
    type metadata accessor for CBPeerConversationDetectConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerConversationDetectConfig and conformance CBPeerConversationDetectConfig);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBPeerAdaptiveVolumeConfig(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBPeerAdaptiveVolumeConfig;
  if (!lazy cache variable for type metadata for CBPeerAdaptiveVolumeConfig)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerAdaptiveVolumeConfig);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig()
{
  v2 = lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig;
  if (!lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig)
  {
    type metadata accessor for CBPeerAdaptiveVolumeConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig;
  if (!lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig)
  {
    type metadata accessor for CBPeerAdaptiveVolumeConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerAdaptiveVolumeConfig and conformance CBPeerAdaptiveVolumeConfig);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBDeviceFlags(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBDeviceFlags;
  if (!lazy cache variable for type metadata for CBDeviceFlags)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBDeviceFlags);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type CBDeviceFlags and conformance CBDeviceFlags()
{
  v2 = lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags;
  if (!lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags)
  {
    type metadata accessor for CBDeviceFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags;
  if (!lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags)
  {
    type metadata accessor for CBDeviceFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags;
  if (!lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags)
  {
    type metadata accessor for CBDeviceFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags;
  if (!lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags)
  {
    type metadata accessor for CBDeviceFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags;
  if (!lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags)
  {
    type metadata accessor for CBDeviceFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDeviceFlags and conformance CBDeviceFlags);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBProductFlags(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBProductFlags;
  if (!lazy cache variable for type metadata for CBProductFlags)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBProductFlags);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type CBProductFlags and conformance CBProductFlags()
{
  v2 = lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags;
  if (!lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags)
  {
    type metadata accessor for CBProductFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags;
  if (!lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags)
  {
    type metadata accessor for CBProductFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags;
  if (!lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags)
  {
    type metadata accessor for CBProductFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags;
  if (!lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags)
  {
    type metadata accessor for CBProductFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags;
  if (!lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags)
  {
    type metadata accessor for CBProductFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBProductFlags and conformance CBProductFlags);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBPeerCallConfig and conformance CBPeerCallConfig()
{
  v2 = lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig;
  if (!lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig)
  {
    type metadata accessor for CBPeerCallConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig;
  if (!lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig)
  {
    type metadata accessor for CBPeerCallConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerCallConfig and conformance CBPeerCallConfig);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKAudiogramSample()
{
  v2 = lazy cache variable for type metadata for HKAudiogramSample;
  if (!lazy cache variable for type metadata for HKAudiogramSample)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKAudiogramSample);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HeadphoneDevice and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject)
  {
    type metadata accessor for HeadphoneDevice(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject)
  {
    type metadata accessor for HeadphoneDevice(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject)
  {
    type metadata accessor for HeadphoneDevice(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBDevice()
{
  v2 = lazy cache variable for type metadata for CBDevice;
  if (!lazy cache variable for type metadata for CBDevice)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBDevice);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBDevice and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type CBDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CBDevice and conformance NSObject)
  {
    type metadata accessor for CBDevice();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDevice and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CBDevice and conformance NSObject)
  {
    type metadata accessor for CBDevice();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDevice and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14HMDeviceRecordCGMd, &_sSDySSSo14HMDeviceRecordCGMR);
  v1 = lazy protocol witness table accessor for type [String : HMDeviceRecord] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ8Dispatch0C13WorkItemFlagsV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      type metadata accessor for DispatchWorkItemFlags();
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for DispatchWorkItemFlags();
    return v2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability()
{
  v2 = lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability;
  if (!lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability)
  {
    type metadata accessor for AAFeatureCapability(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability;
  if (!lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability)
  {
    type metadata accessor for AAFeatureCapability(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAFeatureCapability and conformance AAFeatureCapability);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBDeviceSettings()
{
  v2 = lazy cache variable for type metadata for CBDeviceSettings;
  if (!lazy cache variable for type metadata for CBDeviceSettings)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for CBDeviceSettings);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures()
{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice.HeadphoneFeatures and conformance HeadphoneDevice.HeadphoneFeatures);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CBPeerAutoAncCapability(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for CBPeerAutoAncCapability;
  if (!lazy cache variable for type metadata for CBPeerAutoAncCapability)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CBPeerAutoAncCapability);
      return v2;
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type CBPeerAutoAncCapability and conformance CBPeerAutoAncCapability()
{
  v2 = lazy protocol witness table cache variable for type CBPeerAutoAncCapability and conformance CBPeerAutoAncCapability;
  if (!lazy protocol witness table cache variable for type CBPeerAutoAncCapability and conformance CBPeerAutoAncCapability)
  {
    type metadata accessor for CBPeerAutoAncCapability(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBPeerAutoAncCapability and conformance CBPeerAutoAncCapability);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBDoubleTapAction and conformance CBDoubleTapAction()
{
  v2 = lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction;
  if (!lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction)
  {
    type metadata accessor for CBDoubleTapAction(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction;
  if (!lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction)
  {
    type metadata accessor for CBDoubleTapAction(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBDoubleTapAction and conformance CBDoubleTapAction);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View()
{
  v2 = lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View;
  if (!lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String.UTF8View and conformance String.UTF8View);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256()
{
  v2 = lazy protocol witness table cache variable for type SHA256 and conformance SHA256;
  if (!lazy protocol witness table cache variable for type SHA256 and conformance SHA256)
  {
    type metadata accessor for SHA256();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SHA256 and conformance SHA256);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest()
{
  v2 = lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest;
  if (!lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest)
  {
    type metadata accessor for SHA256Digest();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBListeningMode and conformance CBListeningMode()
{
  v2 = lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode;
  if (!lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode)
  {
    type metadata accessor for CBListeningMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode;
  if (!lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode)
  {
    type metadata accessor for CBListeningMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBListeningMode and conformance CBListeningMode);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CBMicrophoneMode and conformance CBMicrophoneMode()
{
  v2 = lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode;
  if (!lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode)
  {
    type metadata accessor for CBMicrophoneMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode;
  if (!lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode)
  {
    type metadata accessor for CBMicrophoneMode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CBMicrophoneMode and conformance CBMicrophoneMode);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_287(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_293(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_299(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for BTCloudServicesClient()
{
  v2 = lazy cache variable for type metadata for BTCloudServicesClient;
  if (!lazy cache variable for type metadata for BTCloudServicesClient)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for BTCloudServicesClient);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_305(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_311(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for BTAirPodsControlServiceClient()
{
  v2 = lazy cache variable for type metadata for BTAirPodsControlServiceClient;
  if (!lazy cache variable for type metadata for BTAirPodsControlServiceClient)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for BTAirPodsControlServiceClient);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_317(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type SerialNumberType and conformance SerialNumberType()
{
  v2 = lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType;
  if (!lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType;
  if (!lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SerialNumberType and conformance SerialNumberType);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs()
{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs;
  if (!lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HeadphoneDevice.ListeningModeConfigs and conformance HeadphoneDevice.ListeningModeConfigs);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  v2 = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of BTAirPodsControlServiceClient?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

void *outlined init with copy of AudioAccessoryDevice?(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t block_copy_helper_344(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  v2 = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_350(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *outlined init with copy of String(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t AADevice._deviceRemoteSendState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  v4 = *(v1 + 16);
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t AADevice._deviceRemoteSendState.setter(char *a1)
{
  v3 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v3;
  return swift_endAccess();
}

uint64_t key path getter for AADevice.acceptReplyPlayPauseConfig : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 456))(v2);
}

uint64_t key path setter for AADevice.acceptReplyPlayPauseConfig : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 464))(v3);
}

uint64_t AADevice.acceptReplyPlayPauseConfig.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.acceptReplyPlayPauseConfig.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.acceptReplyPlayPauseConfig.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.acceptReplyPlayPauseConfig.modify;
}

uint64_t AADevice.acceptReplyPlayPauseConfig.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._acceptReplyPlayPauseConfig@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAHeadGestureConfig(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAHeadGestureConfig and conformance AAHeadGestureConfig();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AAHeadGestureConfig and conformance AAHeadGestureConfig()
{
  v2 = lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig;
  if (!lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig)
  {
    type metadata accessor for AAHeadGestureConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig;
  if (!lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig)
  {
    type metadata accessor for AAHeadGestureConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHeadGestureConfig and conformance AAHeadGestureConfig);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$acceptReplyPlayPauseConfig.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAHeadGestureConfigVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAHeadGestureConfigVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._acceptReplyPlayPauseConfig.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._acceptReplyPlayPauseConfig.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 24) = v4;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.autoANCStrength : AADevice@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 488))(v2);
}

uint64_t key path setter for AADevice.autoANCStrength : AADevice(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 496))(v3);
}

uint64_t AADevice.autoANCStrength.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.autoANCStrength.setter(int a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

void (*AADevice.autoANCStrength.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 59005);
  *a1 = v3;
  *v3 = v2;

  KeyPath = swift_getKeyPath();
  v3[1] = KeyPath;
  v3[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(v3 + 3, KeyPath);
  return AADevice.autoANCStrength.modify;
}

void AADevice.autoANCStrength.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = v8[2];
    v3 = v8[1];
    v4 = *v8;
    *(v8 + 7) = *(v8 + 6);
    static AADeviceProperty.subscript.setter(v8 + 28, v4, v3, v2);
  }

  else
  {
    v5 = v8[2];
    v6 = v8[1];
    v7 = *v8;
    *(v8 + 8) = *(v8 + 6);
    static AADeviceProperty.subscript.setter((v8 + 4), v7, v6, v5);
  }

  free(v8);
}

char *variable initialization expression of AADevice._autoANCStrength@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAAutoANCStrength(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAAutoANCStrength and conformance AAAutoANCStrength();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AAAutoANCStrength and conformance AAAutoANCStrength()
{
  v2 = lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength;
  if (!lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength)
  {
    type metadata accessor for AAAutoANCStrength(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength;
  if (!lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength)
  {
    type metadata accessor for AAAutoANCStrength(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAAutoANCStrength and conformance AAAutoANCStrength);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$autoANCStrength.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo17AAAutoANCStrengthVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo17AAAutoANCStrengthVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._autoANCStrength.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v8 = *(v1 + 96);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._autoANCStrength.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LODWORD(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 64) = v4;
  *(v1 + 72) = v6;
  *(v1 + 80) = v7;
  *(v1 + 88) = v8;
  *(v1 + 96) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.bobbleConfig : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 520))(v2);
}

uint64_t key path setter for AADevice.bobbleConfig : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 528))(v3);
}

uint64_t AADevice.bobbleConfig.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.bobbleConfig.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.bobbleConfig.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.bobbleConfig.modify;
}

uint64_t AADevice.bobbleConfig.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._bobbleConfig@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AABobbleConfiguration(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AABobbleConfiguration and conformance AABobbleConfiguration();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AABobbleConfiguration and conformance AABobbleConfiguration()
{
  v2 = lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration;
  if (!lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration)
  {
    type metadata accessor for AABobbleConfiguration(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration;
  if (!lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration)
  {
    type metadata accessor for AABobbleConfiguration(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AABobbleConfiguration and conformance AABobbleConfiguration);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$bobbleConfig.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo21AABobbleConfigurationVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo21AABobbleConfigurationVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._bobbleConfig.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v8 = *(v1 + 136);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._bobbleConfig.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 104) = v4;
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  *(v1 + 128) = v8;
  *(v1 + 136) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.declineDismissSkipConfig : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 552))(v2);
}

uint64_t key path setter for AADevice.declineDismissSkipConfig : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 560))(v3);
}

uint64_t AADevice.declineDismissSkipConfig.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.declineDismissSkipConfig.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.declineDismissSkipConfig.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.declineDismissSkipConfig.modify;
}

uint64_t AADevice.declineDismissSkipConfig.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._declineDismissSkipConfig@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAHeadGestureConfig(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAHeadGestureConfig and conformance AAHeadGestureConfig();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$declineDismissSkipConfig.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAHeadGestureConfigVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAHeadGestureConfigVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._declineDismissSkipConfig.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  v6 = *(v1 + 168);
  v8 = *(v1 + 176);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._declineDismissSkipConfig.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 144) = v4;
  *(v1 + 152) = v6;
  *(v1 + 160) = v7;
  *(v1 + 168) = v8;
  *(v1 + 176) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.headGestureToggle : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 584))(v2);
}

uint64_t key path setter for AADevice.headGestureToggle : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 592))(v3);
}

uint64_t AADevice.headGestureToggle.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.headGestureToggle.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.headGestureToggle.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.headGestureToggle.modify;
}

uint64_t AADevice.headGestureToggle.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._headGestureToggle@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAMultiState(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState()
{
  v2 = lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState;
  if (!lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState)
  {
    type metadata accessor for AAMultiState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState;
  if (!lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState)
  {
    type metadata accessor for AAMultiState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAMultiState and conformance AAMultiState);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$headGestureToggle.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._headGestureToggle.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v8 = *(v1 + 216);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._headGestureToggle.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 184) = v4;
  *(v1 + 192) = v6;
  *(v1 + 200) = v7;
  *(v1 + 208) = v8;
  *(v1 + 216) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.headGestureProxCardShown : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 616))(v2);
}

uint64_t key path setter for AADevice.headGestureProxCardShown : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 624))(v3);
}

uint64_t AADevice.headGestureProxCardShown.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.headGestureProxCardShown.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.headGestureProxCardShown.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.headGestureProxCardShown.modify;
}

uint64_t AADevice.headGestureProxCardShown.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._headGestureProxCardShown@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAMultiState(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$headGestureProxCardShown.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._headGestureProxCardShown.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v4 = *(v1 + 232);
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v8 = *(v1 + 256);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._headGestureProxCardShown.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 224) = v4;
  *(v1 + 232) = v6;
  *(v1 + 240) = v7;
  *(v1 + 248) = v8;
  *(v1 + 256) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hearingAidEnrolled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 648))(v2);
}

uint64_t key path setter for AADevice.hearingAidEnrolled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 656))(v3);
}

uint64_t AADevice.hearingAidEnrolled.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hearingAidEnrolled.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hearingAidEnrolled.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.hearingAidEnrolled.modify;
}

uint64_t AADevice.hearingAidEnrolled.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._hearingAidEnrolled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAMultiState(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$hearingAidEnrolled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hearingAidEnrolled.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 264);
  v4 = *(v1 + 272);
  v5 = *(v1 + 280);
  v6 = *(v1 + 288);
  v8 = *(v1 + 296);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hearingAidEnrolled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 264) = v4;
  *(v1 + 272) = v6;
  *(v1 + 280) = v7;
  *(v1 + 288) = v8;
  *(v1 + 296) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hearingAidGainSwipeEnabled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 680))(v2);
}

uint64_t key path setter for AADevice.hearingAidGainSwipeEnabled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 688))(v3);
}

uint64_t AADevice.hearingAidGainSwipeEnabled.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hearingAidGainSwipeEnabled.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hearingAidGainSwipeEnabled.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.hearingAidGainSwipeEnabled.modify;
}

uint64_t AADevice.hearingAidGainSwipeEnabled.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._hearingAidGainSwipeEnabled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAMultiState(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$hearingAidGainSwipeEnabled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hearingAidGainSwipeEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  v5 = *(v1 + 320);
  v6 = *(v1 + 328);
  v8 = *(v1 + 336);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hearingAidGainSwipeEnabled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 304) = v4;
  *(v1 + 312) = v6;
  *(v1 + 320) = v7;
  *(v1 + 328) = v8;
  *(v1 + 336) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.bluetoothAddressData : AADevice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 712))(v2);
  a2[1] = v3;
}

uint64_t key path setter for AADevice.bluetoothAddressData : AADevice(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of Data?(a1, v5);
  v3 = v5[0];
  v4 = v5[1];

  AADevice.bluetoothAddressData.setter(v3, v4);
}

uint64_t AADevice.bluetoothAddressData.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 344);
  outlined copy of Data?(v2, *(v0 + 352));
  swift_endAccess();
  return v2;
}

uint64_t AADevice.bluetoothAddressData.setter(uint64_t a1, unint64_t a2)
{
  outlined copy of Data?(a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 344);
  v4 = *(v2 + 352);
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
  outlined consume of Data?(v3, v4);
  swift_endAccess();
  return outlined consume of Data?(a1, a2);
}

uint64_t key path getter for AADevice.autoANCCapability : AADevice@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 736))(v2);
}

uint64_t key path setter for AADevice.autoANCCapability : AADevice(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 744))(v3);
}

uint64_t AADevice.autoANCCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.autoANCCapability.setter(int a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

void (*AADevice.autoANCCapability.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 65442);
  *a1 = v3;
  *v3 = v2;

  KeyPath = swift_getKeyPath();
  v3[1] = KeyPath;
  v3[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(v3 + 3, KeyPath);
  return AADevice.autoANCCapability.modify;
}

void AADevice.autoANCCapability.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v2 = v8[2];
    v3 = v8[1];
    v4 = *v8;
    *(v8 + 7) = *(v8 + 6);
    static AADeviceProperty.subscript.setter(v8 + 28, v4, v3, v2);
  }

  else
  {
    v5 = v8[2];
    v6 = v8[1];
    v7 = *v8;
    *(v8 + 8) = *(v8 + 6);
    static AADeviceProperty.subscript.setter((v8 + 4), v7, v6, v5);
  }

  free(v8);
}

char *variable initialization expression of AADevice._autoANCCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAAutoANCCapability(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAAutoANCCapability and conformance AAAutoANCCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAAutoANCCapability and conformance AAAutoANCCapability()
{
  v2 = lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability;
  if (!lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability)
  {
    type metadata accessor for AAAutoANCCapability(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability;
  if (!lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability)
  {
    type metadata accessor for AAAutoANCCapability(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAAutoANCCapability and conformance AAAutoANCCapability);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$autoANCCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAAutoANCCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAAutoANCCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._autoANCCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 360);
  v4 = *(v1 + 368);
  v5 = *(v1 + 376);
  v6 = *(v1 + 384);
  v8 = *(v1 + 392);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._autoANCCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LODWORD(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 360) = v4;
  *(v1 + 368) = v6;
  *(v1 + 376) = v7;
  *(v1 + 384) = v8;
  *(v1 + 392) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.bobbleCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 768))(v2);
}

uint64_t key path setter for AADevice.bobbleCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 776))(v3);
}

uint64_t AADevice.bobbleCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.bobbleCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.bobbleCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.bobbleCapability.modify;
}

uint64_t AADevice.bobbleCapability.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._bobbleCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$bobbleCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._bobbleCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 400);
  v4 = *(v1 + 408);
  v5 = *(v1 + 416);
  v6 = *(v1 + 424);
  v8 = *(v1 + 432);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._bobbleCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 400) = v4;
  *(v1 + 408) = v6;
  *(v1 + 416) = v7;
  *(v1 + 424) = v8;
  *(v1 + 432) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.caseSoundCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 800))(v2);
}

uint64_t key path setter for AADevice.caseSoundCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 808))(v3);
}

uint64_t AADevice.caseSoundCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.caseSoundCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.caseSoundCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.caseSoundCapability.modify;
}

uint64_t AADevice.caseSoundCapability.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._caseSoundCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$caseSoundCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._caseSoundCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 440);
  v4 = *(v1 + 448);
  v5 = *(v1 + 456);
  v6 = *(v1 + 464);
  v8 = *(v1 + 472);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._caseSoundCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 440) = v4;
  *(v1 + 448) = v6;
  *(v1 + 456) = v7;
  *(v1 + 464) = v8;
  *(v1 + 472) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.earTipFitTestCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 832))(v2);
}

uint64_t key path setter for AADevice.earTipFitTestCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 840))(v3);
}

uint64_t AADevice.earTipFitTestCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.earTipFitTestCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.earTipFitTestCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.earTipFitTestCapability.modify;
}

uint64_t AADevice.earTipFitTestCapability.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._earTipFitTestCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$earTipFitTestCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._earTipFitTestCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 480);
  v4 = *(v1 + 488);
  v5 = *(v1 + 496);
  v6 = *(v1 + 504);
  v8 = *(v1 + 512);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._earTipFitTestCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 480) = v4;
  *(v1 + 488) = v6;
  *(v1 + 496) = v7;
  *(v1 + 504) = v8;
  *(v1 + 512) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.frequencyBand : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 864))(v2);
}

uint64_t key path setter for AADevice.frequencyBand : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 872))(v3);
}

uint64_t AADevice.frequencyBand.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.frequencyBand.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.frequencyBand.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.frequencyBand.modify;
}

uint64_t AADevice.frequencyBand.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._frequencyBand@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAFrequencyBand(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFrequencyBand and conformance AAFrequencyBand();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAFrequencyBand and conformance AAFrequencyBand()
{
  v2 = lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand;
  if (!lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand)
  {
    type metadata accessor for AAFrequencyBand(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand;
  if (!lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand)
  {
    type metadata accessor for AAFrequencyBand(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAFrequencyBand and conformance AAFrequencyBand);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$frequencyBand.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo15AAFrequencyBandVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo15AAFrequencyBandVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._frequencyBand.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 520);
  v4 = *(v1 + 528);
  v5 = *(v1 + 536);
  v6 = *(v1 + 544);
  v8 = *(v1 + 552);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._frequencyBand.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 520) = v4;
  *(v1 + 528) = v6;
  *(v1 + 536) = v7;
  *(v1 + 544) = v8;
  *(v1 + 552) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hearingAidCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 896))(v2);
}

uint64_t key path setter for AADevice.hearingAidCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 904))(v3);
}

uint64_t AADevice.hearingAidCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hearingAidCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hearingAidCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.hearingAidCapability.modify;
}

uint64_t AADevice.hearingAidCapability.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._hearingAidCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAHearingAidCapability(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAHearingAidCapability and conformance AAHearingAidCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAHearingAidCapability and conformance AAHearingAidCapability()
{
  v2 = lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability;
  if (!lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability)
  {
    type metadata accessor for AAHearingAidCapability(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability;
  if (!lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability)
  {
    type metadata accessor for AAHearingAidCapability(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingAidCapability and conformance AAHearingAidCapability);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$hearingAidCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo22AAHearingAidCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo22AAHearingAidCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hearingAidCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 560);
  v4 = *(v1 + 568);
  v5 = *(v1 + 576);
  v6 = *(v1 + 584);
  v8 = *(v1 + 592);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hearingAidCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 560) = v4;
  *(v1 + 568) = v6;
  *(v1 + 576) = v7;
  *(v1 + 584) = v8;
  *(v1 + 592) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hearingAidConfig : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 928))(v2);
}

uint64_t key path setter for AADevice.hearingAidConfig : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 936))(v3);
}

uint64_t AADevice.hearingAidConfig.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hearingAidConfig.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hearingAidConfig.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.hearingAidConfig.modify;
}

uint64_t AADevice.hearingAidConfig.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._hearingAidConfig@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAHearingAidConfiguration(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration()
{
  v2 = lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration;
  if (!lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration)
  {
    type metadata accessor for AAHearingAidConfiguration(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration;
  if (!lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration)
  {
    type metadata accessor for AAHearingAidConfiguration(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingAidConfiguration and conformance AAHearingAidConfiguration);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$hearingAidConfig.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo25AAHearingAidConfigurationVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo25AAHearingAidConfigurationVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hearingAidConfig.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 600);
  v4 = *(v1 + 608);
  v5 = *(v1 + 616);
  v6 = *(v1 + 624);
  v8 = *(v1 + 632);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hearingAidConfig.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 600) = v4;
  *(v1 + 608) = v6;
  *(v1 + 616) = v7;
  *(v1 + 624) = v8;
  *(v1 + 632) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hearingTestCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 960))(v2);
}

uint64_t key path setter for AADevice.hearingTestCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 968))(v3);
}

uint64_t AADevice.hearingTestCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hearingTestCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hearingTestCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.hearingTestCapability.modify;
}

uint64_t AADevice.hearingTestCapability.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._hearingTestCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAHearingTestCapability(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAHearingTestCapability and conformance AAHearingTestCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAHearingTestCapability and conformance AAHearingTestCapability()
{
  v2 = lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability;
  if (!lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability)
  {
    type metadata accessor for AAHearingTestCapability(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability;
  if (!lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability)
  {
    type metadata accessor for AAHearingTestCapability(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAHearingTestCapability and conformance AAHearingTestCapability);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$hearingTestCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo23AAHearingTestCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo23AAHearingTestCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hearingTestCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 640);
  v4 = *(v1 + 648);
  v5 = *(v1 + 656);
  v6 = *(v1 + 664);
  v8 = *(v1 + 672);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hearingTestCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 640) = v4;
  *(v1 + 648) = v6;
  *(v1 + 656) = v7;
  *(v1 + 664) = v8;
  *(v1 + 672) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hideOffListeningModeCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 992))(v2);
}

uint64_t key path setter for AADevice.hideOffListeningModeCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1000))(v3);
}

uint64_t AADevice.hideOffListeningModeCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hideOffListeningModeCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hideOffListeningModeCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.hideOffListeningModeCapability.modify;
}

uint64_t AADevice.hideOffListeningModeCapability.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._hideOffListeningModeCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$hideOffListeningModeCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hideOffListeningModeCapability.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 680);
  v4 = *(v1 + 688);
  v5 = *(v1 + 696);
  v6 = *(v1 + 704);
  v8 = *(v1 + 712);

  result = swift_endAccess();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t AADevice._hideOffListeningModeCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v5 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  LOBYTE(__b[4]) = v5;

  swift_beginAccess();
  *(v1 + 680) = v4;
  *(v1 + 688) = v6;
  *(v1 + 696) = v7;
  *(v1 + 704) = v8;
  *(v1 + 712) = v5;

  swift_endAccess();
}

uint64_t key path getter for AADevice.audiogramEnrolledTimestamp : AADevice@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v4 - v6;
  v7 = *MEMORY[0x1EEE9AC00](v5);

  v11 = v7;
  v10 = v7;
  (*(*v7 + 1024))(v2);
  outlined init with take of Date?(v8, v9);
}

uint64_t key path setter for AADevice.audiogramEnrolledTimestamp : AADevice(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v4 - v6;
  outlined init with copy of Date?(v2, &v4 - v6);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1032))(v8);
}

uint64_t AADevice.audiogramEnrolledTimestamp.getter@<X0>(void *a1@<X8>)
{

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(a1, KeyPath);
}

uint64_t AADevice.audiogramEnrolledTimestamp.setter(const void *a1)
{
  v10 = a1;
  v12 = 0;
  v11 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v4 - v5;
  v12 = v2;
  v11 = v1;

  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  outlined init with copy of Date?(v10, v9);
  static AADeviceProperty.subscript.setter(v9, v6, KeyPath, v8);
  return outlined destroy of Date?(v10);
}

void *outlined init with copy of Date?(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void (*AADevice.audiogramEnrolledTimestamp.modify(void *a1))(uint64_t **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL, 45976);
  *a1 = v4;
  *v4 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v4[1] = __swift_coroFrameAllocStub(v3, 45976);
  v7 = __swift_coroFrameAllocStub(v3, 45976);
  v4[2] = v7;

  KeyPath = swift_getKeyPath();
  v4[3] = KeyPath;
  v4[4] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(v7, KeyPath);
  return AADevice.audiogramEnrolledTimestamp.modify;
}

void AADevice.audiogramEnrolledTimestamp.modify(uint64_t **a1, char a2)
{
  v9 = *a1;
  if (a2)
  {
    v2 = v9[4];
    v3 = v9[3];
    v5 = v9[2];
    v6 = v9[1];
    v4 = *v9;
    outlined init with copy of Date?(v5, v6);
    static AADeviceProperty.subscript.setter(v6, v4, v3, v2);
    outlined destroy of Date?(v5);

    free(v5);
    free(v6);
  }

  else
  {
    v7 = v9[2];
    v8 = v9[1];
    static AADeviceProperty.subscript.setter(v7, *v9, v9[3], v9[4]);

    free(v7);
    free(v8);
  }

  free(v9);
}

char *variable initialization expression of AADevice._audiogramEnrolledTimestamp@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v7 = &v3 - v4;
  KeyPath = swift_getKeyPath();
  v5 = 0;
  v1 = type metadata accessor for Date();
  (*(*(v1 - 8) + 56))(v7, 1);
  v9 = type metadata accessor for AADevice(v5);
  v8 = &v13;
  v13 = 1;
  v11 = lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, v7, v9, v8, v9, v10, v6);
}

uint64_t AADevice.$audiogramEnrolledTimestamp.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._audiogramEnrolledTimestamp.getter@<X0>(char *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__audiogramEnrolledTimestamp);
  swift_beginAccess();
  outlined init with copy of AADeviceProperty<AADevice, Date?>(v3, a1);
  return swift_endAccess();
}

char *outlined init with copy of AADeviceProperty<AADevice, Date?>(char *a1, char *a2)
{
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v14 + 16))(a2, a1, v13);
    (*(v14 + 56))(a2, 0, 1, v13);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMR);
  v4 = v10[13];
  v5 = *&a1[v4];

  *&a2[v4] = v5;
  v6 = v10[14];
  v7 = *&a1[v6];

  *&a2[v6] = v7;
  v8 = v10[15];
  v9 = *&a1[v8];

  result = a2;
  *&a2[v8] = v9;
  a2[v10[16]] = a1[v10[16]];
  return result;
}

uint64_t AADevice._audiogramEnrolledTimestamp.setter(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v9 = v1;
  outlined init with copy of AADeviceProperty<AADevice, Date?>(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__audiogramEnrolledTimestamp);
  v6 = &v8;
  swift_beginAccess();
  outlined assign with take of AADeviceProperty<AADevice, Date?>(v4, v5);
  swift_endAccess();
  return outlined destroy of AADeviceProperty<AADevice, Date?>(v7);
}

char *outlined assign with take of AADeviceProperty<AADevice, Date?>(char *a1, char *a2)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if ((v10)(a2, 1))
  {
    if (v10(a1, 1, v8))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(a2, a1, v8);
      (*(v9 + 56))(a2, 0, 1, v8);
    }
  }

  else if (v10(a1, 1, v8))
  {
    (*(v9 + 8))(a2, v8);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 40))(a2, a1, v8);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMR);
  *&a2[v5[13]] = *&a1[v5[13]];

  *&a2[v5[14]] = *&a1[v5[14]];

  *&a2[v5[15]] = *&a1[v5[15]];

  result = a2;
  a2[v5[16]] = a1[v5[16]];
  return result;
}

uint64_t outlined destroy of AADeviceProperty<AADevice, Date?>(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0C10Foundation4DateVSgGMR);

  return a1;
}

uint64_t property wrapper backing initializer of AADevice.heartRateMonitorCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.heartRateMonitorCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1056))(v2);
}

uint64_t key path setter for AADevice.heartRateMonitorCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1064))(v3);
}

uint64_t AADevice.heartRateMonitorCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.heartRateMonitorCapability.setter(char a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.heartRateMonitorCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 60294);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.heartRateMonitorCapability.modify;
}

void AADevice.heartRateMonitorCapability.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADevice.$heartRateMonitorCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1080))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$heartRateMonitorCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1088))(v8);
}

uint64_t AADevice.$heartRateMonitorCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$heartRateMonitorCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADevice.$heartRateMonitorCapability.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 58687);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 58687);
  v6[4] = __swift_coroFrameAllocStub(v5, 58687);
  AADevice.$heartRateMonitorCapability.getter();
  return AADevice.$heartRateMonitorCapability.modify;
}

void AADevice.$heartRateMonitorCapability.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADevice.$heartRateMonitorCapability.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADevice.$heartRateMonitorCapability.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADevice._heartRateMonitorCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._heartRateMonitorCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.heartRateMonitorEnabled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1104))(v2);
}

uint64_t key path setter for AADevice.heartRateMonitorEnabled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1112))(v3);
}

uint64_t AADevice.heartRateMonitorEnabled.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.heartRateMonitorEnabled.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.heartRateMonitorEnabled.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.heartRateMonitorEnabled.modify;
}

uint64_t AADevice.heartRateMonitorEnabled.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._heartRateMonitorEnabled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAMultiState(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$heartRateMonitorEnabled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._heartRateMonitorEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorEnabled);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._heartRateMonitorEnabled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v7;
  __b[2] = v8;
  __b[3] = v9;
  LOBYTE(__b[4]) = v6;

  v5 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__heartRateMonitorEnabled;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.hideEarDetectionCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1136))(v2);
}

uint64_t key path setter for AADevice.hideEarDetectionCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1144))(v3);
}

uint64_t AADevice.hideEarDetectionCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.hideEarDetectionCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.hideEarDetectionCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.hideEarDetectionCapability.modify;
}

uint64_t AADevice.hideEarDetectionCapability.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._hideEarDetectionCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$hideEarDetectionCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._hideEarDetectionCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__hideEarDetectionCapability);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._hideEarDetectionCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v7;
  __b[2] = v8;
  __b[3] = v9;
  LOBYTE(__b[4]) = v6;

  v5 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__hideEarDetectionCapability;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.identifier : AADevice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 1168))(v2);
  a2[1] = v3;
}

uint64_t key path setter for AADevice.identifier : AADevice(void *a1, uint64_t *a2)
{
  outlined init with copy of String?(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 1176))(v4, v6);
}

uint64_t AADevice.identifier.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_identifier);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t AADevice.identifier.setter(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t key path getter for AADevice.streamStateAoS : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1192))(v2);
}

uint64_t key path setter for AADevice.streamStateAoS : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1200))(v3);
}

uint64_t AADevice.streamStateAoS.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.streamStateAoS.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.streamStateAoS.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.streamStateAoS.modify;
}

uint64_t AADevice.streamStateAoS.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._streamStateAoS@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAStreamStateAoS(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAStreamStateAoS and conformance AAStreamStateAoS();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

unint64_t lazy protocol witness table accessor for type AAStreamStateAoS and conformance AAStreamStateAoS()
{
  v2 = lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS;
  if (!lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS)
  {
    type metadata accessor for AAStreamStateAoS(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS;
  if (!lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS)
  {
    type metadata accessor for AAStreamStateAoS(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAStreamStateAoS and conformance AAStreamStateAoS);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$streamStateAoS.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo16AAStreamStateAoSVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo16AAStreamStateAoSVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._streamStateAoS.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__streamStateAoS);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._streamStateAoS.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v7;
  __b[2] = v8;
  __b[3] = v9;
  LOBYTE(__b[4]) = v6;

  v5 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__streamStateAoS;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v6;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of AADevice.batteryInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;

  v6[0] = a1;
  v2 = type metadata accessor for AADBatteryInfoVM(0);
  Published.init(wrappedValue:)(v6, v2, a2);
}

uint64_t key path getter for AADevice.batteryInfo : AADevice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1224))(v2);
}

uint64_t key path setter for AADevice.batteryInfo : AADevice(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  v5 = *a2;

  (*(*v5 + 1232))(v3);
}

uint64_t AADevice.batteryInfo.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.batteryInfo.setter(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

void (*AADevice.batteryInfo.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 39663);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.batteryInfo.modify;
}

void AADevice.batteryInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADevice.$batteryInfo : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1248))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$batteryInfo : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1256))(v8);
}

uint64_t AADevice.$batteryInfo.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$batteryInfo.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADevice.$batteryInfo.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 15377);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMd, &_s7Combine9PublishedV9PublisherVy16HeadphoneManager16AADBatteryInfoVMC_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 15377);
  v6[4] = __swift_coroFrameAllocStub(v5, 15377);
  AADevice.$batteryInfo.getter();
  return AADevice.$batteryInfo.modify;
}

void AADevice.$batteryInfo.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADevice.$batteryInfo.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADevice.$batteryInfo.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADevice._batteryInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__batteryInfo;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._batteryInfo.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMd, &_s7Combine9PublishedVy16HeadphoneManager16AADBatteryInfoVMCGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__batteryInfo;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.btAddress : AADevice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 1272))(v2);
  a2[1] = v3;
}

uint64_t key path setter for AADevice.btAddress : AADevice(void *a1, uint64_t *a2)
{
  outlined init with copy of String(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 1280))(v4, v6);
}

uint64_t AADevice.btAddress.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_btAddress);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t AADevice.btAddress.setter(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_btAddress);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t key path getter for AADevice.sleepDetectionCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1296))(v2);
}

uint64_t key path setter for AADevice.sleepDetectionCapability : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1304))(v3);
}

uint64_t AADevice.sleepDetectionCapability.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.sleepDetectionCapability.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.sleepDetectionCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.sleepDetectionCapability.modify;
}

uint64_t AADevice.sleepDetectionCapability.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._sleepDetectionCapability@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  v3 = type metadata accessor for AADevice(0);
  v6 = 1;
  v4 = type metadata accessor for AAFeatureCapability(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAFeatureCapability and conformance AAFeatureCapability();
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v7, v3, &v6, v3, v4, a1);
}

uint64_t AADevice.$sleepDetectionCapability.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo19AAFeatureCapabilityVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._sleepDetectionCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionCapability);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._sleepDetectionCapability.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v7;
  __b[2] = v8;
  __b[3] = v9;
  LOBYTE(__b[4]) = v6;

  v5 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionCapability;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.sleepDetectionEnabled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1328))(v2);
}

uint64_t key path setter for AADevice.sleepDetectionEnabled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1336))(v3);
}

uint64_t AADevice.sleepDetectionEnabled.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.sleepDetectionEnabled.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.sleepDetectionEnabled.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.sleepDetectionEnabled.modify;
}

uint64_t AADevice.sleepDetectionEnabled.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._sleepDetectionEnabled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAMultiState(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$sleepDetectionEnabled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._sleepDetectionEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionEnabled);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._sleepDetectionEnabled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v7;
  __b[2] = v8;
  __b[3] = v9;
  LOBYTE(__b[4]) = v6;

  v5 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__sleepDetectionEnabled;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v6;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of AADevice.cameraControlCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.cameraControlCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1360))(v2);
}

uint64_t key path setter for AADevice.cameraControlCapability : AADevice(char *a1, uint64_t *a2)
{
  v3 = *a1;

  AADevice.cameraControlCapability.setter(v3);
}

uint64_t AADevice.cameraControlCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.cameraControlCapability.setter(char a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.cameraControlCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 37762);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.cameraControlCapability.modify;
}

void AADevice.cameraControlCapability.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADevice.$cameraControlCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1384))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$cameraControlCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADevice.$cameraControlCapability.setter(v8);
}

uint64_t AADevice.$cameraControlCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$cameraControlCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADevice.$cameraControlCapability.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 15470);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 15470);
  v6[4] = __swift_coroFrameAllocStub(v5, 15470);
  AADevice.$cameraControlCapability.getter();
  return AADevice.$cameraControlCapability.modify;
}

void AADevice.$cameraControlCapability.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADevice.$cameraControlCapability.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADevice.$cameraControlCapability.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADevice._cameraControlCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._cameraControlCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.cameraControlConfig : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1408))(v2);
}

uint64_t key path setter for AADevice.cameraControlConfig : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1416))(v3);
}

uint64_t AADevice.cameraControlConfig.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.cameraControlConfig.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.cameraControlConfig.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.cameraControlConfig.modify;
}

uint64_t AADevice.cameraControlConfig.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._cameraControlConfig@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AARemoteCameraControlConfig(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig()
{
  v2 = lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig;
  if (!lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig)
  {
    type metadata accessor for AARemoteCameraControlConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig;
  if (!lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig)
  {
    type metadata accessor for AARemoteCameraControlConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AARemoteCameraControlConfig and conformance AARemoteCameraControlConfig);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$cameraControlConfig.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo27AARemoteCameraControlConfigVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo27AARemoteCameraControlConfigVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._cameraControlConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlConfig);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._cameraControlConfig.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v7;
  __b[2] = v8;
  __b[3] = v9;
  LOBYTE(__b[4]) = v6;

  v5 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__cameraControlConfig;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v6;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of AADevice.personalTranslatorCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.personalTranslatorCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1440))(v2);
}

uint64_t key path setter for AADevice.personalTranslatorCapability : AADevice(char *a1, uint64_t *a2)
{
  v3 = *a1;

  AADevice.personalTranslatorCapability.setter(v3);
}

uint64_t AADevice.personalTranslatorCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.personalTranslatorCapability.setter(char a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.personalTranslatorCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 34869);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.personalTranslatorCapability.modify;
}

void AADevice.personalTranslatorCapability.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADevice.$personalTranslatorCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1464))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$personalTranslatorCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADevice.$personalTranslatorCapability.setter(v8);
}

uint64_t AADevice.$personalTranslatorCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$personalTranslatorCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADevice.$personalTranslatorCapability.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 16344);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 16344);
  v6[4] = __swift_coroFrameAllocStub(v5, 16344);
  AADevice.$personalTranslatorCapability.getter();
  return AADevice.$personalTranslatorCapability.modify;
}

void AADevice.$personalTranslatorCapability.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADevice.$personalTranslatorCapability.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADevice.$personalTranslatorCapability.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADevice._personalTranslatorCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__personalTranslatorCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._personalTranslatorCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__personalTranslatorCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADevice.chargingReminderCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.chargingReminderCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1488))(v2);
}

uint64_t key path setter for AADevice.chargingReminderCapability : AADevice(char *a1, uint64_t *a2)
{
  v3 = *a1;

  AADevice.chargingReminderCapability.setter(v3);
}

uint64_t AADevice.chargingReminderCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.chargingReminderCapability.setter(char a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.chargingReminderCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 11661);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.chargingReminderCapability.modify;
}

void AADevice.chargingReminderCapability.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADevice.$chargingReminderCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1512))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$chargingReminderCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADevice.$chargingReminderCapability.setter(v8);
}

uint64_t AADevice.$chargingReminderCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$chargingReminderCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADevice.$chargingReminderCapability.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 64736);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 64736);
  v6[4] = __swift_coroFrameAllocStub(v5, 64736);
  AADevice.$chargingReminderCapability.getter();
  return AADevice.$chargingReminderCapability.modify;
}

void AADevice.$chargingReminderCapability.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADevice.$chargingReminderCapability.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADevice.$chargingReminderCapability.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADevice._chargingReminderCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._chargingReminderCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.chargingReminderEnabled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1536))(v2);
}

uint64_t key path setter for AADevice.chargingReminderEnabled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1544))(v3);
}

uint64_t AADevice.chargingReminderEnabled.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.chargingReminderEnabled.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.chargingReminderEnabled.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.chargingReminderEnabled.modify;
}

uint64_t AADevice.chargingReminderEnabled.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._chargingReminderEnabled@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAMultiState(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$chargingReminderEnabled.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._chargingReminderEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderEnabled);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._chargingReminderEnabled.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v7;
  __b[2] = v8;
  __b[3] = v9;
  LOBYTE(__b[4]) = v6;

  v5 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__chargingReminderEnabled;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v6;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of AADevice.optimizedBatteryChargingCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.optimizedBatteryChargingCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1568))(v2);
}

uint64_t key path setter for AADevice.optimizedBatteryChargingCapability : AADevice(char *a1, uint64_t *a2)
{
  v3 = *a1;

  AADevice.optimizedBatteryChargingCapability.setter(v3);
}

uint64_t AADevice.optimizedBatteryChargingCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.optimizedBatteryChargingCapability.setter(char a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.optimizedBatteryChargingCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 34066);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.optimizedBatteryChargingCapability.modify;
}

void AADevice.optimizedBatteryChargingCapability.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADevice.$optimizedBatteryChargingCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1592))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$optimizedBatteryChargingCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADevice.$optimizedBatteryChargingCapability.setter(v8);
}

uint64_t AADevice.$optimizedBatteryChargingCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$optimizedBatteryChargingCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADevice.$optimizedBatteryChargingCapability.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 5774);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 5774);
  v6[4] = __swift_coroFrameAllocStub(v5, 5774);
  AADevice.$optimizedBatteryChargingCapability.getter();
  return AADevice.$optimizedBatteryChargingCapability.modify;
}

void AADevice.$optimizedBatteryChargingCapability.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADevice.$optimizedBatteryChargingCapability.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADevice.$optimizedBatteryChargingCapability.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADevice._optimizedBatteryChargingCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._optimizedBatteryChargingCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADevice.dynamicEndOfChargeCapability@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAFeatureCapability(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.dynamicEndOfChargeCapability : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1616))(v2);
}

uint64_t key path setter for AADevice.dynamicEndOfChargeCapability : AADevice(char *a1, uint64_t *a2)
{
  v3 = *a1;

  AADevice.dynamicEndOfChargeCapability.setter(v3);
}

uint64_t AADevice.dynamicEndOfChargeCapability.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.dynamicEndOfChargeCapability.setter(char a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.dynamicEndOfChargeCapability.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 64522);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.dynamicEndOfChargeCapability.modify;
}

void AADevice.dynamicEndOfChargeCapability.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADevice.$dynamicEndOfChargeCapability : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1640))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$dynamicEndOfChargeCapability : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  AADevice.$dynamicEndOfChargeCapability.setter(v8);
}

uint64_t AADevice.$dynamicEndOfChargeCapability.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$dynamicEndOfChargeCapability.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADevice.$dynamicEndOfChargeCapability.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 6643);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMd, &_s7Combine9PublishedV9PublisherVySo19AAFeatureCapabilityV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 6643);
  v6[4] = __swift_coroFrameAllocStub(v5, 6643);
  AADevice.$dynamicEndOfChargeCapability.getter();
  return AADevice.$dynamicEndOfChargeCapability.modify;
}

void AADevice.$dynamicEndOfChargeCapability.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADevice.$dynamicEndOfChargeCapability.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADevice.$dynamicEndOfChargeCapability.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADevice._dynamicEndOfChargeCapability.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeCapability;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._dynamicEndOfChargeCapability.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo19AAFeatureCapabilityVGMd, &_s7Combine9PublishedVySo19AAFeatureCapabilityVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeCapability;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.optimizedBatteryChargingState : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1664))(v2);
}

uint64_t key path setter for AADevice.optimizedBatteryChargingState : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1672))(v3);
}

uint64_t AADevice.optimizedBatteryChargingState.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.optimizedBatteryChargingState.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.optimizedBatteryChargingState.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.optimizedBatteryChargingState.modify;
}

uint64_t AADevice.optimizedBatteryChargingState.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._optimizedBatteryChargingState@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAChargingFeatureEnablementState(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

unint64_t lazy protocol witness table accessor for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState()
{
  v2 = lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState;
  if (!lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState)
  {
    type metadata accessor for AAChargingFeatureEnablementState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState;
  if (!lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState)
  {
    type metadata accessor for AAChargingFeatureEnablementState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState);
    return WitnessTable;
  }

  return v2;
}

uint64_t AADevice.$optimizedBatteryChargingState.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo32AAChargingFeatureEnablementStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo32AAChargingFeatureEnablementStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._optimizedBatteryChargingState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingState);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._optimizedBatteryChargingState.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v7;
  __b[2] = v8;
  __b[3] = v9;
  LOBYTE(__b[4]) = v6;

  v5 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__optimizedBatteryChargingState;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.dynamicEndOfChargeState : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1696))(v2);
}

uint64_t key path setter for AADevice.dynamicEndOfChargeState : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1704))(v3);
}

uint64_t AADevice.dynamicEndOfChargeState.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.dynamicEndOfChargeState.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.dynamicEndOfChargeState.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.dynamicEndOfChargeState.modify;
}

uint64_t AADevice.dynamicEndOfChargeState.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._dynamicEndOfChargeState@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAChargingFeatureEnablementState(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAChargingFeatureEnablementState and conformance AAChargingFeatureEnablementState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$dynamicEndOfChargeState.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo32AAChargingFeatureEnablementStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo32AAChargingFeatureEnablementStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._dynamicEndOfChargeState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeState);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._dynamicEndOfChargeState.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v7;
  __b[2] = v8;
  __b[3] = v9;
  LOBYTE(__b[4]) = v6;

  v5 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__dynamicEndOfChargeState;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.temporaryManagedPairedStatus : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1728))(v2);
}

uint64_t key path setter for AADevice.temporaryManagedPairedStatus : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1736))(v3);
}

uint64_t AADevice.temporaryManagedPairedStatus.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.temporaryManagedPairedStatus.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.temporaryManagedPairedStatus.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.temporaryManagedPairedStatus.modify;
}

uint64_t AADevice.temporaryManagedPairedStatus.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._temporaryManagedPairedStatus@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAMultiState(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$temporaryManagedPairedStatus.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._temporaryManagedPairedStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__temporaryManagedPairedStatus);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._temporaryManagedPairedStatus.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v7;
  __b[2] = v8;
  __b[3] = v9;
  LOBYTE(__b[4]) = v6;

  v5 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__temporaryManagedPairedStatus;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v6;

  swift_endAccess();
}

uint64_t key path getter for AADevice.healthKitDataWriteAllowed : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1760))(v2);
}

uint64_t key path setter for AADevice.healthKitDataWriteAllowed : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1768))(v3);
}

uint64_t AADevice.healthKitDataWriteAllowed.getter()
{
  v5 = v0;

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  static AADeviceProperty.subscript.getter(&v4, KeyPath);
  v3 = v4;

  return v3;
}

uint64_t AADevice.healthKitDataWriteAllowed.setter(char a1)
{
  v8 = a1;
  v7 = v1;

  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v6 = a1;
  return static AADeviceProperty.subscript.setter(&v6, v1, KeyPath, v2);
}

uint64_t (*AADevice.healthKitDataWriteAllowed.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  KeyPath = swift_getKeyPath();
  a1[1] = KeyPath;
  a1[2] = swift_getKeyPath();

  static AADeviceProperty.subscript.getter(a1 + 3, KeyPath);
  return AADevice.healthKitDataWriteAllowed.modify;
}

uint64_t AADevice.healthKitDataWriteAllowed.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = *a1;
    *(a1 + 25) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 25, v5, v4, v3);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = *a1;
    *(a1 + 26) = *(a1 + 24);
    static AADeviceProperty.subscript.setter(a1 + 26, v8, v7, v6);
  }
}

char *variable initialization expression of AADevice._healthKitDataWriteAllowed@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v4 = type metadata accessor for AADevice(0);
  v5 = type metadata accessor for AAMultiState(0);
  lazy protocol witness table accessor for type AADevice and conformance AADevice();
  lazy protocol witness table accessor for type AAMultiState and conformance AAMultiState();
  default argument 3 of AADeviceProperty.init(_:_:_:_:)(&v7);
  v6 = v7;
  return AADeviceProperty.init(_:_:_:_:)(KeyPath, &v8, v4, &v6, v4, v5, a1);
}

uint64_t AADevice.$healthKitDataWriteAllowed.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMd, &_s16HeadphoneManager16AADevicePropertyVyAA0C0CSo12AAMultiStateVGMR);
  AADeviceProperty.projectedValue.getter(v1, a1);
  return swift_endAccess();
}

uint64_t AADevice._healthKitDataWriteAllowed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__healthKitDataWriteAllowed);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[32];

  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t AADevice._healthKitDataWriteAllowed.setter(uint64_t a1)
{
  memset(__b, 0, 0x21uLL);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  v4 = __b[0];
  __b[1] = v7;
  __b[2] = v8;
  __b[3] = v9;
  LOBYTE(__b[4]) = v6;

  v5 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__healthKitDataWriteAllowed;
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(v5 + 24) = v9;
  *(v5 + 32) = v6;

  swift_endAccess();
}

uint64_t property wrapper backing initializer of AADevice.IEDEnabled@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AADevicePlacementMode(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

unint64_t type metadata accessor for AADevicePlacementMode(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AADevicePlacementMode;
  if (!lazy cache variable for type metadata for AADevicePlacementMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AADevicePlacementMode);
      return v2;
    }
  }

  return v5;
}

uint64_t key path getter for AADevice.IEDEnabled : AADevice@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1792))(v2);
}

uint64_t key path setter for AADevice.IEDEnabled : AADevice(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1800))(v3);
}

uint64_t AADevice.IEDEnabled.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.IEDEnabled.setter(char a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.IEDEnabled.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 51715);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.IEDEnabled.modify;
}

void AADevice.IEDEnabled.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADevice.$IEDEnabled : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMd, &_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1816))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$IEDEnabled : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMd, &_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1824))(v8);
}

uint64_t AADevice.$IEDEnabled.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$IEDEnabled.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMd, &_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADevice.$IEDEnabled.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 31119);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMd, &_s7Combine9PublishedV9PublisherVySo21AADevicePlacementModeV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 31119);
  v6[4] = __swift_coroFrameAllocStub(v5, 31119);
  AADevice.$IEDEnabled.getter();
  return AADevice.$IEDEnabled.modify;
}

void AADevice.$IEDEnabled.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADevice.$IEDEnabled.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADevice.$IEDEnabled.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADevice._IEDEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__IEDEnabled;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._IEDEnabled.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21AADevicePlacementModeVGMd, &_s7Combine9PublishedVySo21AADevicePlacementModeVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__IEDEnabled;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADevice.primaryInEarStatus@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAPlacement(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

unint64_t type metadata accessor for AAPlacement(uint64_t a1)
{
  v5 = lazy cache variable for type metadata for AAPlacement;
  if (!lazy cache variable for type metadata for AAPlacement)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for AAPlacement);
      return v2;
    }
  }

  return v5;
}

uint64_t key path getter for AADevice.primaryInEarStatus : AADevice@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1840))(v2);
}

uint64_t key path setter for AADevice.primaryInEarStatus : AADevice(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1848))(v3);
}

uint64_t AADevice.primaryInEarStatus.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.primaryInEarStatus.setter(int a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.primaryInEarStatus.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 62694);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.primaryInEarStatus.modify;
}

void AADevice.primaryInEarStatus.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADevice.$primaryInEarStatus : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1864))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$primaryInEarStatus : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1872))(v8);
}

uint64_t AADevice.$primaryInEarStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$primaryInEarStatus.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADevice.$primaryInEarStatus.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 45815);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 45815);
  v6[4] = __swift_coroFrameAllocStub(v5, 45815);
  AADevice.$primaryInEarStatus.getter();
  return AADevice.$primaryInEarStatus.modify;
}

void AADevice.$primaryInEarStatus.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADevice.$primaryInEarStatus.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADevice.$primaryInEarStatus.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADevice._primaryInEarStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__primaryInEarStatus;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._primaryInEarStatus.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__primaryInEarStatus;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t property wrapper backing initializer of AADevice.secondaryInEarStatus@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5[1] = a1;
  v5[0] = a1;
  v2 = type metadata accessor for AAPlacement(0);
  return Published.init(wrappedValue:)(v5, v2, a2);
}

uint64_t key path getter for AADevice.secondaryInEarStatus : AADevice@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1888))(v2);
}

uint64_t key path setter for AADevice.secondaryInEarStatus : AADevice(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  (*(*v4 + 1896))(v3);
}

uint64_t AADevice.secondaryInEarStatus.getter()
{

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AADevice.secondaryInEarStatus.setter(int a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

void (*AADevice.secondaryInEarStatus.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 6718);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = static Published.subscript.modify();
  return AADevice.secondaryInEarStatus.modify;
}

void AADevice.secondaryInEarStatus.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t key path getter for AADevice.$secondaryInEarStatus : AADevice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v4 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);

  v13 = v6;
  v12 = v6;
  (*(*v6 + 1912))(v2);
  (*(v7 + 32))(v9, v10, v11);
}

uint64_t key path setter for AADevice.$secondaryInEarStatus : AADevice(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  (*(*v9 + 1920))(v8);
}

uint64_t AADevice.$secondaryInEarStatus.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AADevice.$secondaryInEarStatus.setter(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*AADevice.$secondaryInEarStatus.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 30227);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMd, &_s7Combine9PublishedV9PublisherVySo11AAPlacementV_GMR);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 30227);
  v6[4] = __swift_coroFrameAllocStub(v5, 30227);
  AADevice.$secondaryInEarStatus.getter();
  return AADevice.$secondaryInEarStatus.modify;
}

void AADevice.$secondaryInEarStatus.modify(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    AADevice.$secondaryInEarStatus.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    AADevice.$secondaryInEarStatus.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t AADevice._secondaryInEarStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__secondaryInEarStatus;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t AADevice._secondaryInEarStatus.setter(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo11AAPlacementVGMd, &_s7Combine9PublishedVySo11AAPlacementVGMR);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice__secondaryInEarStatus;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t key path getter for AADevice.underlyingDevice : AADevice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 1936))(v2);
}

uint64_t key path setter for AADevice.underlyingDevice : AADevice(void *a1, uint64_t *a2)
{
  outlined init with copy of AudioAccessoryDevice?(a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 1944))(v4);
}

uint64_t AADevice.underlyingDevice.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_underlyingDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t AADevice.underlyingDevice.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC16HeadphoneManager8AADevice_underlyingDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

Swift::Void __swiftcall AADevice.updateWithDevice(_:)(AudioAccessoryDevice *a1)
{
  v92 = a1;
  v71 = implicit closure #2 in AADevice.updateWithDevice(_:);
  v72 = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_3;
  v73 = implicit closure #3 in AADevice.updateWithDevice(_:);
  v74 = _sSiIegd_SiIegr_TRTA_0;
  v75 = partial apply for implicit closure #4 in AADevice.updateWithDevice(_:);
  v76 = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  v77 = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_3;
  v78 = closure #1 in OSLogArguments.append(_:)partial apply;
  v79 = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_3;
  v80 = closure #1 in OSLogArguments.append(_:)partial apply;
  v81 = closure #1 in OSLogArguments.append(_:)partial apply;
  v82 = _s2os14OSLogArgumentsV6appendyyxycs17FixedWidthIntegerRzlFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_1;
  v83 = closure #1 in OSLogArguments.append(_:)partial apply;
  v84 = closure #1 in OSLogArguments.append(_:)partial apply;
  v85 = closure #1 in OSLogArguments.append(_:)partial apply;
  v106 = 0;
  v105 = 0;
  v86 = 0;
  v93 = 0;
  v87 = type metadata accessor for Logger();
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v91 = v38 - v90;
  v97 = type metadata accessor for DispatchPredicate();
  v95 = *(v97 - 8);
  v96 = v97 - 8;
  v94 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93);
  v98 = (v38 - v94);
  v106 = v2;
  v105 = v1;
  type metadata accessor for OS_dispatch_queue();
  v3 = static OS_dispatch_queue.main.getter();
  v4 = v95;
  *v98 = v3;
  (*(v4 + 104))();
  v99 = _dispatchPreconditionTest(_:)();
  (*(v95 + 8))(v98, v97);
  if (v99)
  {
    v5 = v91;
    v6 = Logger.shared.unsafeMutableAddressor();
    (*(v88 + 16))(v5, v6, v87);
    MEMORY[0x1E69E5928](v92);
    v53 = 7;
    v54 = swift_allocObject();
    *(v54 + 16) = v92;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    v50 = 17;
    v56 = swift_allocObject();
    v49 = 32;
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    v51 = 8;
    *(v57 + 16) = 8;
    v52 = 32;
    v7 = swift_allocObject();
    v47 = v7;
    *(v7 + 16) = v71;
    *(v7 + 24) = 0;
    v8 = swift_allocObject();
    v9 = v47;
    v58 = v8;
    *(v8 + 16) = v72;
    *(v8 + 24) = v9;
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v51;
    v10 = swift_allocObject();
    v48 = v10;
    *(v10 + 16) = v73;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    v12 = v48;
    v61 = v11;
    *(v11 + 16) = v74;
    *(v11 + 24) = v12;
    v62 = swift_allocObject();
    *(v62 + 16) = v49;
    v63 = swift_allocObject();
    *(v63 + 16) = v51;
    v13 = swift_allocObject();
    v14 = v54;
    v55 = v13;
    *(v13 + 16) = v75;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v55;
    v65 = v15;
    *(v15 + 16) = v76;
    *(v15 + 24) = v16;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v64 = _allocateUninitializedArray<A>(_:)();
    v66 = v17;

    v18 = v56;
    v19 = v66;
    *v66 = v77;
    v19[1] = v18;

    v20 = v57;
    v21 = v66;
    v66[2] = v78;
    v21[3] = v20;

    v22 = v58;
    v23 = v66;
    v66[4] = v79;
    v23[5] = v22;

    v24 = v59;
    v25 = v66;
    v66[6] = v80;
    v25[7] = v24;

    v26 = v60;
    v27 = v66;
    v66[8] = v81;
    v27[9] = v26;

    v28 = v61;
    v29 = v66;
    v66[10] = v82;
    v29[11] = v28;

    v30 = v62;
    v31 = v66;
    v66[12] = v83;
    v31[13] = v30;

    v32 = v63;
    v33 = v66;
    v66[14] = v84;
    v33[15] = v32;

    v34 = v65;
    v35 = v66;
    v66[16] = v85;
    v35[17] = v34;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v68, v69))
    {
      v36 = v86;
      v40 = static UnsafeMutablePointer.allocate(capacity:)();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v41 = createStorage<A>(capacity:type:)(0, v39, v39);
      v42 = createStorage<A>(capacity:type:)(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v43 = &v104;
      v104 = v40;
      v44 = &v103;
      v103 = v41;
      v45 = &v102;
      v102 = v42;
      serialize(_:at:)(2, &v104);
      serialize(_:at:)(3, v43);
      v100 = v77;
      v101 = v56;
      closure #1 in osLogInternal(_:log:type:)(&v100, v43, v44, v45);
      v46 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v100 = v78;
        v101 = v57;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
        v38[6] = 0;
        v100 = v79;
        v101 = v58;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
        v38[5] = 0;
        v100 = v80;
        v101 = v59;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
        v38[4] = 0;
        v100 = v81;
        v101 = v60;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
        v38[3] = 0;
        v100 = v82;
        v101 = v61;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
        v38[2] = 0;
        v100 = v83;
        v101 = v62;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
        v38[1] = 0;
        v100 = v84;
        v101 = v63;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
        v38[0] = 0;
        v100 = v85;
        v101 = v65;
        closure #1 in osLogInternal(_:log:type:)(&v100, &v104, &v103, &v102);
        _os_log_impl(&dword_1D93D0000, v68, v69, "HeadphoneManager: %s: %ld::: value changed updateDevice: %s", v40, 0x20u);
        destroyStorage<A>(_:count:)(v41, 0, v39);
        destroyStorage<A>(_:count:)(v42, 2, MEMORY[0x1E69E7CA0] + 8);
        MEMORY[0x1DA730D30](v40, MEMORY[0x1E69E7508]);
      }
    }

    else
    {
    }

    v37 = v70;
    MEMORY[0x1E69E5920](v68);
    (*(v88 + 8))(v91, v87);
    MEMORY[0x1E69E5928](v92);
    (*(*v37 + 1944))(v92);
    AADevice.updatePropertiesFor(updatedDevice:)(v92);
  }

  else
  {
    __break(1u);
  }
}