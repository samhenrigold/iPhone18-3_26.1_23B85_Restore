uint64_t PaymentsFlowDelegatePlugin.__allocating_init()()
{
  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_0();
  v6 = v5 - v4;
  v7 = Logger.payments.unsafeMutableAddressor();
  (*(v2 + 16))(v6, v7, v0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_3();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "PaymentsFlowDelegatePlugin is being initialized", v10, 2u);
  }

  (*(v2 + 8))(v6, v0);
  static Device.current.getter();
  outlined init with copy of FlowProviding(v21, &v18);
  v16 = type metadata accessor for SiriKitContactResolver();
  v17 = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(&v15);
  SiriKitContactResolver.init()();
  v11 = type metadata accessor for FlowFactory();
  swift_allocObject();
  v12 = FlowFactory.init(deviceState:contactResolver:)();
  SiriPaymentsFeatureManager.init()();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v19 = v11;
  v20 = &protocol witness table for FlowFactory;
  *&v18 = v12;
  v16 = &type metadata for SiriPaymentsFeatureManager;
  v17 = &protocol witness table for SiriPaymentsFeatureManager;
  type metadata accessor for PaymentsFlowDelegatePlugin();
  v13 = swift_allocObject();
  _s19SiriPaymentsIntents13FlowProviding_pWOb_0(&v18, v13 + 16);
  _s19SiriPaymentsIntents13FlowProviding_pWOb_0(&v15, v13 + 56);
  return v13;
}

uint64_t PaymentsFlowDelegatePlugin.findFlowForX(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36[1] = a1;
  v39 = a2;
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v36[0] = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v37 = v36 - v11;
  __chkstk_darwin(v10);
  v13 = v36 - v12;
  v14 = type metadata accessor for Signpost.OpenSignpost();
  __chkstk_darwin(v14 - 8);
  OUTLINED_FUNCTION_0();
  v17 = v16 - v15;
  SignpostName.findFlowForX.unsafeMutableAddressor();
  v38 = v17;
  static Signpost.begin(_:)();
  v18 = Logger.payments.unsafeMutableAddressor();
  v19 = *(v6 + 16);
  v19(v13, v18, v4);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_3();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "#PaymentsFlowDelegatePlugin.findFlowForX(): attempting to make flow", v22, 2u);
    OUTLINED_FUNCTION_2();
  }

  v23 = *(v6 + 8);
  v23(v13, v4);
  v24 = v3[10];
  v25 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v24);
  if ((*(v25 + 8))(v24, v25))
  {
    v19(v37, v18, v4);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_3();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "#PaymentsFlowDelegatePlugin.findFlowForX(): SiriPayments/NLX=1, converting parse to build flow", v28, 2u);
      OUTLINED_FUNCTION_2();
    }

    v23(v37, v4);
    Party = Parse.isFirstPartyApp()();
    static PaymentsFlowDelegatePlugin.preWarmExtensionWithIntentSignal(isFirstParty:)(Party);
    outlined init with copy of FlowProviding((v3 + 2), v40);
    type metadata accessor for PaymentsFlow();
    swift_allocObject();
    v40[0] = PaymentsFlow.init(flowFactory:)();
    lazy protocol witness table accessor for type PaymentsFlowDelegatePlugin and conformance PaymentsFlowDelegatePlugin(&lazy protocol witness table cache variable for type PaymentsFlow and conformance PaymentsFlow, 255, &type metadata accessor for PaymentsFlow, &protocol conformance descriptor for PaymentsFlow);
    Flow.eraseToAnyFlow()();

    static FlowSearchResult.flow(_:)();
  }

  else
  {
    v30 = v36[0];
    v19(v36[0], v18, v4);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_3();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "#PaymentsFlowDelegatePlugin.findFlowForX(): SiriPayments/NLX=0, returning noFlow", v33, 2u);
    }

    v23(v30, v4);
    static FlowSearchResult.noFlow.getter();
  }

  v34 = v38;
  Signpost.OpenSignpost.end()();
  return outlined destroy of Signpost.OpenSignpost(v34);
}

uint64_t static PaymentsFlowDelegatePlugin.preWarmExtensionWithIntentSignal(isFirstParty:)(char a1)
{
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for Signpost.OpenSignpost();
  __chkstk_darwin(v9 - 8);
  OUTLINED_FUNCTION_0();
  v12 = v11 - v10;
  SignpostName.emitIntentSignal.unsafeMutableAddressor();
  static Signpost.begin(_:)();
  if (a1)
  {
    v13 = Logger.payments.unsafeMutableAddressor();
    (*(v4 + 16))(v8, v13, v2);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_3();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "#PaymentsFlowDelegatePlugin sending IntentSignal to pre-warm Wallet intent extension", v16, 2u);
      OUTLINED_FUNCTION_2();
    }

    (*(v4 + 8))(v8, v2);
    v17 = [objc_allocWithZone(SAIntentGroupIntentSignal) init];
    v18 = [objc_allocWithZone(INSendPaymentIntent) init];
    v19 = static AppUtil.PASSBOOK_APP_BUNDLE_ID.getter();
    outlined bridged method (mbnn) of @objc SAIntentGroupProtobufMessage.typeName.setter(v19, v20, v18, &selRef__setLaunchId_);
    v21 = AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();
    v22 = *v21;
    v23 = v21[1];

    outlined bridged method (mbnn) of @objc SAIntentGroupProtobufMessage.typeName.setter(v22, v23, v18, &selRef__setExtensionBundleId_);
    type metadata accessor for SAIntentGroupProtobufMessage();
    v24 = SAIntentGroupProtobufMessage.init(intent:)(v18);
    [v17 setIntent:v24];

    static AceService.currentAsync.getter();
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    AceServiceInvokerAsync.submitAndForget(_:)();

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  Signpost.OpenSignpost.end()();
  return outlined destroy of Signpost.OpenSignpost(v12);
}

id SAIntentGroupProtobufMessage.init(intent:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = outlined bridged method (ob) of @objc PBCodable.data.getter([a1 backingStore]);
  if (v4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v6, v7);
  }

  [v2 setData:isa];

  v8 = [a1 typeName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  outlined bridged method (mbnn) of @objc SAIntentGroupProtobufMessage.typeName.setter(v9, v11, v2, &selRef_setTypeName_);
  return v2;
}

uint64_t PaymentsFlowDelegatePlugin.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t protocol witness for FlowPlugin.init() in conformance PaymentsFlowDelegatePlugin@<X0>(uint64_t *a1@<X8>)
{
  result = PaymentsFlowDelegatePlugin.__allocating_init()();
  *a1 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of Signpost.OpenSignpost(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type PaymentsFlowDelegatePlugin and conformance PaymentsFlowDelegatePlugin(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t outlined bridged method (ob) of @objc PBCodable.data.getter(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SAIntentGroupProtobufMessage.typeName.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

unint64_t type metadata accessor for SAIntentGroupProtobufMessage()
{
  result = lazy cache variable for type metadata for SAIntentGroupProtobufMessage;
  if (!lazy cache variable for type metadata for SAIntentGroupProtobufMessage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAIntentGroupProtobufMessage);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t outlined init with copy of FlowProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t _s19SiriPaymentsIntents13FlowProviding_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_2()
{
}

uint64_t OUTLINED_FUNCTION_3()
{

  return _swift_slowAlloc(2, -1);
}