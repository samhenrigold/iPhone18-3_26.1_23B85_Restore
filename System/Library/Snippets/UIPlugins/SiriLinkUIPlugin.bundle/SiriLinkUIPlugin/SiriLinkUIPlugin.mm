uint64_t PromptHeaderView.body.getter(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = static HorizontalAlignment.leading.getter();
  __dst[0] = a1;
  __dst[1] = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.headline.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  outlined consume of Text.Storage(v7, v9, v11 & 1);

  LOBYTE(v7) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(__dst[0]) = 0;
  LOBYTE(__src[0]) = 0;
  LOBYTE(v9) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v38 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v39[7], __src, 0x70uLL);
  v36[0] = v6;
  v36[1] = 0x4010000000000000;
  LOBYTE(v36[2]) = 0;
  v36[3] = v12;
  v36[4] = v14;
  LOBYTE(v36[5]) = v16 & 1;
  v36[6] = v18;
  LOBYTE(v36[7]) = v7;
  v36[8] = v20;
  v36[9] = v22;
  v36[10] = v24;
  v36[11] = v26;
  LOBYTE(v36[12]) = 0;
  LOBYTE(v36[13]) = v9;
  v36[14] = v28;
  v36[15] = v30;
  v36[16] = v32;
  v36[17] = v34;
  LOBYTE(v36[18]) = 0;
  memcpy(&v36[18] + 1, v39, 0x77uLL);
  LOWORD(v36[33]) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
  View.ambientDrawable(renderWithDrawingGroup:)();
  memcpy(__dst, v36, 0x10AuLL);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout>(__dst);
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type VStack<Text> and conformance VStack<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<Text> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<Text> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<Text> and conformance VStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA4TextVGMd, &_s7SwiftUI6VStackVyAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<Text> and conformance VStack<A>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Context and conformance Context()
{
  result = lazy protocol witness table cache variable for type Context and conformance Context;
  if (!lazy protocol witness table cache variable for type Context and conformance Context)
  {
    type metadata accessor for Context();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Context and conformance Context);
  }

  return result;
}

void *default argument 1 of static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:)()
{
  v0 = [objc_opt_self() standardClient];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = &_s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TATu;
  *(v2 + 24) = v1;
  return &_sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTATu;
}

uint64_t sub_21E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TATQ0_;

  return _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_();
}

uint64_t _s16SiriLinkUIPlugin26VoiceShortcutClientWrapperC03getdE4Name14voiceCommandId0je2ByL0SSSgSS_So07VCVoiceE0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0neF0Ccfu_AISSYaKYCcfu0_TATQ0_(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTA(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTATQ0_;

  return _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TR();
}

uint64_t variable initialization expression of EnableTCCView._context()
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context();

  return EnvironmentObject.init()();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PromptHeaderView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PromptHeaderView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA4TextVGAA14_PaddingLayoutVGAJGAA010_FlexFrameH0VGAA010_FixedSizeH0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<Text>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CGSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for CustomIntentErrorView(uint64_t a1)
{
  result = type metadata singleton initialization cache for CustomIntentErrorView;
  if (!type metadata singleton initialization cache for CustomIntentErrorView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CustomIntentErrorView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RFButtonStyle();
  OUTLINED_FUNCTION_2_0();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustomIntentErrorView(0);
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  OUTLINED_FUNCTION_2_0();
  v25 = v11;
  v26 = v10;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.voiceCommands);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = v7;
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "#CustomIntentErrorView", v17, 2u);
    v7 = v23;
  }

  outlined init with copy of WorkflowDataModels.CustomIntentErrorModel(v1, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v19 = swift_allocObject();
  v20 = outlined init with take of CustomIntentErrorView(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  __chkstk_darwin(v20);
  *(&v23 - 2) = v1;
  Button.init(action:label:)();
  static PrimitiveButtonStyle<>.rfButton.getter();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  v21 = v26;
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v7, v2);
  return (*(v25 + 8))(v13, v21);
}

uint64_t closure #1 in CustomIntentErrorView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, "B}");
  __chkstk_darwin(v0 - 8);
  v29 = &v27 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  __chkstk_darwin(v2 - 8);
  v28 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for Command();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionElement();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CustomIntentErrorView(0);
  type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  *v10 = CodableAceObject.wrappedValue.getter();
  v10[8] = 1;
  (*(v8 + 104))(v10, enum case for Command.aceCommand(_:), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v15 = type metadata accessor for _ProtoIdiom();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v27 = xmmword_43980;
  *(v18 + 16) = xmmword_43980;
  (*(v16 + 104))(v18 + v17, enum case for _ProtoIdiom.default(_:), v15);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v18);
  ActionElement.init(_:text:idioms:)();
  ActionHandler.wrappedValue.getter();
  v19 = type metadata accessor for StandardActionHandler();
  if (__swift_getEnumTagSinglePayload(v6, 1, v19) == 1)
  {
    (*(v12 + 8))(v14, v11);
    return outlined destroy of StandardActionHandler?(v6, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = v27;
    *(v21 + 56) = v11;
    *(v21 + 64) = &protocol witness table for ActionElement;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
    (*(v12 + 16))(boxed_opaque_existential_1, v14, v11);
    v23 = v28;
    ActionProperty.init(_:)();
    v24 = type metadata accessor for ActionProperty();
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
    v25 = type metadata accessor for InteractionType();
    v26 = v29;
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v25);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of StandardActionHandler?(v26, &_s9SnippetUI15InteractionTypeOSgMd, "B}");
    outlined destroy of StandardActionHandler?(v23, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
    (*(v12 + 8))(v14, v11);
    return (*(*(v19 - 8) + 8))(v6, v19);
  }
}

uint64_t closure #2 in CustomIntentErrorView.body.getter@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for CustomIntentErrorView(0);
  lazy protocol witness table accessor for type String and conformance String();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.headline.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  outlined consume of Text.Storage(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t CustomIntentErrorView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for CustomIntentErrorView(0);
  return outlined init with take of CustomIntentErrorView(a1, a2 + *(v4 + 20));
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of WorkflowDataModels.CustomIntentErrorModel(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v5(v4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_34F0()
{
  v1 = (type metadata accessor for CustomIntentErrorView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v0 + v3);
  v6 = v0 + v3 + v1[7];

  v7 = *(type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_0_1();
  (*(v8 + 8))(v6 + v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in CustomIntentErrorView.body.getter()
{
  type metadata accessor for CustomIntentErrorView(0);

  return closure #1 in CustomIntentErrorView.body.getter();
}

unint64_t lazy protocol witness table accessor for type Button<Text> and conformance Button<A>()
{
  result = lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>;
  if (!lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle()
{
  result = lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle;
  if (!lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle)
  {
    type metadata accessor for RFButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle);
  }

  return result;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t outlined init with take of CustomIntentErrorView(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v5(v4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_3818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_0();
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_38EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_0();
  v8 = type metadata accessor for ActionHandler();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(0);
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata completion function for CustomIntentErrorView(uint64_t a1)
{
  result = type metadata accessor for ActionHandler();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WorkflowDataModels.CustomIntentErrorModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_3A38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  type metadata accessor for RFButtonStyle();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  return swift_getOpaqueTypeConformance2();
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

uint64_t outlined destroy of StandardActionHandler?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t DisambiguateItemsView.model.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a1;
}

uint64_t DisambiguateItemsView.body.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DisambiguationTitle();
  __chkstk_darwin(v6 - 8);

  DisambiguationTitle.init(text1:thumbnail:)();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  type metadata accessor for DisambiguationItemsComponent(0);
  lazy protocol witness table accessor for type DisambiguationItemsComponent and conformance DisambiguationItemsComponent();

  return DisambiguationView.init(title:content:)();
}

double closure #1 in DisambiguateItemsView.body.getter@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  ActionHandler.init()();
  v4 = type metadata accessor for DisambiguationItemsComponent(0);
  v5 = (a2 + *(v4 + 20));
  State.init(wrappedValue:)();
  result = v7;
  *v5 = v7;
  *(v5 + 1) = v8;
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

uint64_t sub_3DC4()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type DisambiguationItemsComponent and conformance DisambiguationItemsComponent()
{
  result = lazy protocol witness table cache variable for type DisambiguationItemsComponent and conformance DisambiguationItemsComponent;
  if (!lazy protocol witness table cache variable for type DisambiguationItemsComponent and conformance DisambiguationItemsComponent)
  {
    type metadata accessor for DisambiguationItemsComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationItemsComponent and conformance DisambiguationItemsComponent);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguateItemsView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for DisambiguateItemsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisambiguationView<DisambiguationItemsComponent> and conformance DisambiguationView<A>()
{
  result = lazy protocol witness table cache variable for type DisambiguationView<DisambiguationItemsComponent> and conformance DisambiguationView<A>;
  if (!lazy protocol witness table cache variable for type DisambiguationView<DisambiguationItemsComponent> and conformance DisambiguationView<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9SnippetUI18DisambiguationViewVy16SiriLinkUIPlugin0C14ItemsComponentVGMd, &_s9SnippetUI18DisambiguationViewVy16SiriLinkUIPlugin0C14ItemsComponentVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationView<DisambiguationItemsComponent> and conformance DisambiguationView<A>);
  }

  return result;
}

uint64_t CodableOption.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CodableOption.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CodableOption.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  type metadata accessor for KeyedDecodingContainer();
  OUTLINED_FUNCTION_2_0();
  __chkstk_darwin(v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v33[0];
    v19 = v33[1];
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_43B30;
    *(v21 + 32) = type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSArray, NSArray_ptr);
    *(v21 + 40) = a2;
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (v33[3])
    {
      type metadata accessor for Array();
      v22 = v19;
      if (swift_dynamicCast())
      {
        v23 = OUTLINED_FUNCTION_3();
        v24(v23);
        outlined consume of Data._Representation(v20, v19);
        v17 = v32;
        goto LABEL_8;
      }
    }

    else
    {
      outlined destroy of Any?(v33);
      v22 = v19;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_1_1(&one-time initialization token for voiceCommands);
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.voiceCommands);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Failed to decode array of LNChoiceOption", v28, 2u);
    }

    type metadata accessor for CodableOption.Error(0, a2, v29, v30);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v20, v22);
    v7 = OUTLINED_FUNCTION_3();
    v8(v7);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_1_1(&one-time initialization token for voiceCommands);
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.voiceCommands);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33[0] = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v33);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v10, v11, "Failed to decode LNChoiceOption; Error: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  v17 = Array.init()();

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v17;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t CodableOption.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CodableOption.CodingKeys(255, a3, a3, a4);
  OUTLINED_FUNCTION_0_2();
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  OUTLINED_FUNCTION_2_0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v23[0] = 0;
  v13 = [v11 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v23];

  v14 = v23[0];
  if (v13)
  {
    v21 = v7;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v23[0] = v15;
    v23[1] = v17;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v5);
    return outlined consume of Data._Representation(v15, v17);
  }

  else
  {
    v19 = v14;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

BOOL CodableOption.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CodableOption.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CodableOption<A>.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CodableOption.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance CodableOption<A>.CodingKeys@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = CodableOption.CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableOption<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableOption<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int SiriLinkUIPlugin.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodableOption<A>.Error(uint64_t a1)
{
  Hasher.init(_seed:)();
  SiriLinkUIPlugin.Error.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance CodableOption<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = CodableOption.init(from:)(a1, *(a2 + 16), a4, a5);
  if (!v5)
  {
    *a3 = result;
  }

  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, _ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, _ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t type metadata accessor for NSKeyedUnarchiver(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
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

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata instantiation function for CodableOption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CodableOption.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for CodableOption.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x55BCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return swift_once();
}

uint64_t SimpleItemStandard.init(text:action:)(void *a1, void *a2)
{
  outlined init with copy of TextPropertyConvertible(a1, v21);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  outlined init with copy of TextPropertyConvertible(a2, v5);
  SimpleItemStandard.init(text1:text2:text3:text4:text5:text6:action:componentName:linkIdentifier:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t outlined init with copy of TextPropertyConvertible(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t protocol witness for Identifiable.id.getter in conformance SimpleItemStandard@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemStandard.id.getter();
  *a1 = result;
  return result;
}

uint64_t SimpleItemRich.init(text:action:)(void *a1, void *a2)
{
  outlined init with copy of TextPropertyConvertible(a1, v30);
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  outlined init with copy of TextPropertyConvertible(a2, v5);
  SimpleItemRich.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:linkIdentifier:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t SimpleItemStandard.id.getter(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for TextProperty();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  v7 = TextProperty.hashValue.getter();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t protocol witness for Identifiable.id.getter in conformance SimpleItemRich@<X0>(uint64_t *a1@<X8>)
{
  result = SimpleItemRich.id.getter();
  *a1 = result;
  return result;
}

uint64_t ConfirmationBinaryButtonView.confirmLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConfirmationBinaryButtonView(0) + 20));

  return v1;
}

uint64_t type metadata accessor for ConfirmationBinaryButtonView(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConfirmationBinaryButtonView;
  if (!type metadata singleton initialization cache for ConfirmationBinaryButtonView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmationBinaryButtonView.confirmLabel.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_3_0() + 20));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ConfirmationBinaryButtonView.cancelLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConfirmationBinaryButtonView(0) + 24));

  return v1;
}

uint64_t ConfirmationBinaryButtonView.cancelLabel.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_3_0() + 24));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ConfirmationBinaryButtonView.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConfirmationBinaryButtonView(0) + 28);
  type metadata accessor for ButtonItemButtonStyle();
  OUTLINED_FUNCTION_0_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ConfirmationBinaryButtonView.buttonStyle.setter()
{
  v2 = *(OUTLINED_FUNCTION_5() + 28);
  type metadata accessor for ButtonItemButtonStyle();
  OUTLINED_FUNCTION_0_1();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t ConfirmationBinaryButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for ConfirmationBinaryButtonView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = v5;
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  OUTLINED_FUNCTION_2_0();
  v48 = v7;
  v49 = v8;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v9);
  v37 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA4TextVG_07SnippetB00f4ItemfE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA4TextVG_07SnippetB00f4ItemfE0VQo_MR);
  OUTLINED_FUNCTION_2_0();
  v44 = v11;
  v45 = v12;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v42 = 0x800000000004B3A0;
  v16 = *(v3 + 28);
  v47 = v1;
  v17 = (v1 + v16);
  v18 = v17[1];
  v51 = *v17;
  v52 = v18;
  v38 = v6;
  outlined init with copy of ConfirmationBinaryButtonView(v1, v6);
  v19 = *(v4 + 80);
  v40 = (v19 + 32) & ~v19;
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD00000000000003DLL;
  *(v20 + 24) = 0x800000000004B3A0;
  outlined init with take of ConfirmationBinaryButtonView(v6, v20 + ((v19 + 32) & ~v19));
  v41 = lazy protocol witness table accessor for type String and conformance String();

  v21 = v37;
  Button<>.init<A>(_:action:)();
  v22 = type metadata accessor for ButtonItemButtonStyle();
  v23 = lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &protocol conformance descriptor for Button<A>);
  v24 = lazy protocol witness table accessor for type ButtonItemButtonStyle and conformance ButtonItemButtonStyle(&lazy protocol witness table cache variable for type ButtonItemButtonStyle and conformance ButtonItemButtonStyle, &type metadata accessor for ButtonItemButtonStyle, &protocol conformance descriptor for ButtonItemButtonStyle);
  v25 = v48;
  View.buttonStyle<A>(_:)();
  v39 = *(v49 + 8);
  v39(v21, v25);
  v51 = v25;
  v52 = v22;
  v53 = v23;
  v54 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v44;
  v27 = View.eraseToAnyView()();
  (*(v45 + 8))(v15, v26);
  v28 = (v47 + *(v3 + 32));
  v29 = v28[1];
  v51 = *v28;
  v52 = v29;
  v30 = v38;
  outlined init with copy of ConfirmationBinaryButtonView(v47, v38);
  v31 = v40;
  v32 = swift_allocObject();
  *(v32 + 16) = 0xD00000000000003DLL;
  *(v32 + 24) = v42;
  outlined init with take of ConfirmationBinaryButtonView(v30, v32 + v31);

  v33 = v21;
  Button<>.init<A>(_:action:)();
  v54 = &type metadata for AnyView;
  v55 = &protocol witness table for AnyView;
  v51 = v27;
  v34 = v48;
  v50[3] = v48;
  v50[4] = lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &protocol conformance descriptor for Button<A>);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(v49 + 16))(boxed_opaque_existential_1, v33, v34);
  BinaryButtonView.init(primaryButton:secondaryButton:)();
  return (v39)(v33, v34);
}

uint64_t outlined init with copy of ConfirmationBinaryButtonView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationBinaryButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ConfirmationBinaryButtonView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationBinaryButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ConfirmationBinaryButtonView.body.getter()
{
  return partial apply for closure #1 in ConfirmationBinaryButtonView.body.getter();
}

{
  v3 = OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4(v3);
  return closure #1 in ConfirmationBinaryButtonView.body.getter(*(v1 + 16), *(v1 + 24), v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v0);
}

uint64_t closure #1 in ConfirmationBinaryButtonView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, "B}");
  OUTLINED_FUNCTION_4(v6);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  OUTLINED_FUNCTION_4(v10);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  OUTLINED_FUNCTION_4(v14);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = type metadata accessor for ActionProperty();
  OUTLINED_FUNCTION_2_0();
  v20 = v19;
  __chkstk_darwin(v21);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v24 = swift_allocObject();
  v32 = xmmword_43980;
  *(v24 + 16) = xmmword_43980;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, "h~");
  inited = swift_initStackObject();
  *(inited + 16) = v32;
  strcpy(v37, "confirmation");
  HIBYTE(v37[6]) = 0;
  v37[7] = -5120;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  v26 = v33;
  *(inited + 72) = a4;
  *(inited + 80) = v26;
  Dictionary.init(dictionaryLiteral:)();
  *(v24 + 56) = type metadata accessor for Command();
  *(v24 + 64) = &protocol witness table for Command;
  __swift_allocate_boxed_opaque_existential_1((v24 + 32));
  static Command.directInvocation(identifier:payload:isNavigation:)();

  ActionProperty.init(_:)();
  ActionHandler.wrappedValue.getter();
  v27 = type metadata accessor for StandardActionHandler();
  if (__swift_getEnumTagSinglePayload(v17, 1, v27) == 1)
  {
    (*(v20 + 8))(v23, v18);
    return outlined destroy of StandardActionHandler?(v17, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  }

  else
  {
    (*(v20 + 16))(v13, v23, v18);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
    v29 = enum case for InteractionType.buttonTapped(_:);
    v30 = type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_1();
    (*(v31 + 104))(v9, v29, v30);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v30);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of StandardActionHandler?(v9, &_s9SnippetUI15InteractionTypeOSgMd, "B}");
    outlined destroy of StandardActionHandler?(v13, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
    (*(v20 + 8))(v23, v18);
    return (*(*(v27 - 8) + 8))(v17, v27);
  }
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ConfirmationBinaryButtonView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v0 + v3);

  v6 = v1[9];
  type metadata accessor for ButtonItemButtonStyle();
  OUTLINED_FUNCTION_0_1();
  (*(v7 + 8))(v0 + v3 + v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t lazy protocol witness table accessor for type Button<Text> and conformance Button<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ConfirmationBinaryButtonView.init(confirmLabel:cancelLabel:buttonStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  ActionHandler.init()();
  v12 = type metadata accessor for ConfirmationBinaryButtonView(0);
  v13 = (a6 + v12[5]);
  *v13 = a1;
  v13[1] = a2;
  v14 = (a6 + v12[6]);
  *v14 = a3;
  v14[1] = a4;
  v15 = v12[7];
  type metadata accessor for ButtonItemButtonStyle();
  OUTLINED_FUNCTION_0_1();
  v17 = *(v16 + 32);

  return v17(a6 + v15, a5);
}

uint64_t sub_69A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for ButtonItemButtonStyle();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_6A88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionHandler();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for ButtonItemButtonStyle();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata completion function for ConfirmationBinaryButtonView(uint64_t a1)
{
  result = type metadata accessor for ActionHandler();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ButtonItemButtonStyle();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ButtonItemButtonStyle and conformance ButtonItemButtonStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_3_0()
{

  return type metadata accessor for ConfirmationBinaryButtonView(0);
}

uint64_t OUTLINED_FUNCTION_5()
{

  return type metadata accessor for ConfirmationBinaryButtonView(0);
}

uint64_t LinkMultiChoiceView.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkMultiChoiceView(0) + 20);

  return outlined init with copy of WorkflowDataModels.LinkMultiChoiceModel(v3, a1);
}

uint64_t type metadata accessor for LinkMultiChoiceView(uint64_t a1)
{
  result = type metadata singleton initialization cache for LinkMultiChoiceView;
  if (!type metadata singleton initialization cache for LinkMultiChoiceView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkMultiChoiceView.body.getter()
{
  v1 = type metadata accessor for LinkMultiChoiceView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_1_2();
  outlined init with copy of LinkMultiChoiceView(v0, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  outlined init with take of LinkMultiChoiceView(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AA7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA03AnyD0VGtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AA7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA03AnyD0VGtGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AA7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA03AnyD0VGtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AA7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA03AnyD0VGtGMR, &protocol conformance descriptor for TupleView<A>);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in LinkMultiChoiceView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for LinkMultiChoiceView(0);
  v4 = v3 - 8;
  v30 = *(v3 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA7AnyViewVGMd, _s7SwiftUI7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAA7AnyViewVGMR);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v32 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &KeyPath - v10;
  v11 = type metadata accessor for LinkActionView(0);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v15 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = (&KeyPath - v16);
  v18 = (a1 + *(v4 + 28));
  memcpy(__dst, v18, 0x50uLL);
  outlined init with copy of WorkflowDataModels.LinkActionModel(__dst, v34);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  *v17 = EnvironmentObject.init()();
  v17[1] = v19;
  InteractionDelegate.init()();
  memcpy(v17 + *(v12 + 32), __dst, 0x50uLL);
  v34[0] = v18[10];
  KeyPath = swift_getKeyPath();
  outlined init with copy of LinkMultiChoiceView(a1, &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinkMultiChoiceView);
  v20 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v21 = swift_allocObject();
  outlined init with take of LinkMultiChoiceView(&KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14LNChoiceOptionCGMd, &_sSaySo14LNChoiceOptionCGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [LNChoiceOption] and conformance [A], &_sSaySo14LNChoiceOptionCGMd, &_sSaySo14LNChoiceOptionCGMR, &protocol conformance descriptor for [A]);
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v22 = v31;
  ForEach<>.init(_:id:content:)();
  outlined init with copy of LinkMultiChoiceView(v17, v15, type metadata accessor for LinkActionView);
  v23 = *(v7 + 16);
  v24 = v32;
  v23(v32, v22, v6);
  v25 = v33;
  outlined init with copy of LinkMultiChoiceView(v15, v33, type metadata accessor for LinkActionView);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin0B10ActionViewV_7SwiftUI7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAD03AnyE0VGtMd, &_s16SiriLinkUIPlugin0B10ActionViewV_7SwiftUI7ForEachVySaySo14LNChoiceOptionCG10Foundation4UUIDVAD03AnyE0VGtMR);
  v23((v25 + *(v26 + 48)), v24, v6);
  v27 = *(v7 + 8);
  v27(v22, v6);
  outlined destroy of LinkActionView(v17);
  v27(v24, v6);
  return outlined destroy of LinkActionView(v15);
}

uint64_t outlined init with take of LinkMultiChoiceView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkMultiChoiceView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in LinkMultiChoiceView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LinkMultiChoiceView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in LinkMultiChoiceView.body.getter(v4, a1);
}

void key path getter for LNChoiceOption.identifier : LNChoiceOption(id *a1)
{
  v1 = [*a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void *closure #1 in closure #1 in LinkMultiChoiceView.body.getter@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = LinkMultiChoiceView.createButton(option:)(*a1, &v4);
  *a2 = v4;
  return result;
}

uint64_t LinkMultiChoiceView.createButton(option:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  type metadata accessor for RFButtonStyle();
  OUTLINED_FUNCTION_2_0();
  v62 = v4;
  v63 = v3;
  __chkstk_darwin(v3);
  v61 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkMultiChoiceView(0);
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v6 - 8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  OUTLINED_FUNCTION_2_0();
  v56 = v8;
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_MR);
  OUTLINED_FUNCTION_2_0();
  v57 = v12;
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAcAE0eI0yQrqd__AA09PrimitivegI0Rd__lFQOyAA0G0VyAA4TextVG_AD08RFButtonI0VQo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10buttonRoleyQrAD010ButtonItemG5StyleV0F0OFQOyAcAE0eI0yQrqd__AA09PrimitivegI0Rd__lFQOyAA0G0VyAA4TextVG_AD08RFButtonI0VQo__Qo_MR);
  OUTLINED_FUNCTION_2_0();
  v58 = v17;
  v59 = v16;
  __chkstk_darwin(v16);
  v54 = &v51 - v18;
  v19 = type metadata accessor for ButtonItemButtonStyle.Role();
  OUTLINED_FUNCTION_2_0();
  v21 = v20;
  __chkstk_darwin(v22);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a1 style];
  v26 = *(v21 + 104);
  if (v25 > 2)
  {
    v27 = &enum case for ButtonItemButtonStyle.Role.standard(_:);
  }

  else
  {
    v27 = *(&off_59FF8 + v25);
  }

  v28 = *v27;
  v55 = v19;
  v26(v24, v28, v19);
  v29 = outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([a1 title]);
  if (v30)
  {
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v33 = [a1 title];
    v34 = [v33 key];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v35;
  }

  v65 = v31;
  v66 = v32;
  OUTLINED_FUNCTION_1_2();
  outlined init with copy of LinkMultiChoiceView(v53, &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
  v37 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  outlined init with take of LinkMultiChoiceView(&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
  lazy protocol witness table accessor for type String and conformance String();
  v39 = a1;
  Button<>.init<A>(_:action:)();
  v40 = v61;
  static PrimitiveButtonStyle<>.rfButton.getter();
  v41 = lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, &protocol conformance descriptor for Button<A>);
  v42 = lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle(&lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle, &type metadata accessor for RFButtonStyle, &protocol conformance descriptor for RFButtonStyle);
  v43 = v52;
  v44 = v63;
  View.buttonStyle<A>(_:)();
  (*(v62 + 8))(v40, v44);
  (*(v56 + 8))(v11, v43);
  v65 = v43;
  v66 = v44;
  v67 = v41;
  v68 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v54;
  v47 = v60;
  View.buttonRole(_:)();
  (*(v57 + 8))(v15, v47);
  v65 = v47;
  v66 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v59;
  v49 = View.eraseToAnyView()();
  (*(v58 + 8))(v46, v48);
  result = (*(v21 + 8))(v24, v55);
  *v64 = v49;
  return result;
}

uint64_t closure #1 in LinkMultiChoiceView.createButton(option:)(void *a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, "B}");
  __chkstk_darwin(v3 - 8);
  v35 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  __chkstk_darwin(v5 - 8);
  v34 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Command();
  v37 = *(v14 - 8);
  v38 = v14;
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, "h~");
  inited = swift_initStackObject();
  v33 = xmmword_43980;
  *(inited + 16) = xmmword_43980;
  v39 = 0x65756C6176;
  v40 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  v18 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v11 + 8))(v13, v10);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v19;
  *(inited + 80) = v21;
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  ActionHandler.wrappedValue.getter();
  v22 = type metadata accessor for StandardActionHandler();
  if (__swift_getEnumTagSinglePayload(v9, 1, v22) == 1)
  {
    (*(v37 + 8))(v16, v38);
    return _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v9, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = v33;
    v25 = v38;
    *(v24 + 56) = v38;
    *(v24 + 64) = &protocol witness table for Command;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 32));
    v27 = v37;
    (*(v37 + 16))(boxed_opaque_existential_1, v16, v25);
    v28 = v34;
    ActionProperty.init(_:)();
    v29 = type metadata accessor for ActionProperty();
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
    v30 = enum case for InteractionType.buttonTapped(_:);
    v31 = type metadata accessor for InteractionType();
    v32 = v35;
    (*(*(v31 - 8) + 104))(v35, v30, v31);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v31);
    StandardActionHandler.perform(_:interactionType:)();
    _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v32, &_s9SnippetUI15InteractionTypeOSgMd, "B}");
    _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v28, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
    (*(v27 + 8))(v16, v25);
    return (*(*(v22 - 8) + 8))(v9, v22);
  }
}

void *LinkMultiChoiceView.init(model:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = (a2 + *(type metadata accessor for LinkMultiChoiceView(0) + 20));

  return memcpy(v4, a1, 0x58uLL);
}

uint64_t outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter(void *a1)
{
  v2 = [a1 defaultValue];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_80FC()
{
  type metadata accessor for LinkMultiChoiceView(0);
  OUTLINED_FUNCTION_3_1();
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_2_2();
  (*(v7 + 8))(v1 + v4);
  v8 = v1 + v4 + *(v0 + 28);

  v9 = *(v8 + 56);
  if (v9 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v8 + 48), v9);
  }

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t partial apply for closure #1 in LinkMultiChoiceView.createButton(option:)()
{
  v1 = *(type metadata accessor for LinkMultiChoiceView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in LinkMultiChoiceView.createButton(option:)(v2, v3);
}

uint64_t sub_82AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_8370(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionHandler();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for LinkMultiChoiceView(uint64_t a1)
{
  result = type metadata accessor for ActionHandler();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  type metadata accessor for LinkMultiChoiceView(0);
  OUTLINED_FUNCTION_3_1();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_2_2();
  (*(v7 + 8))(v1 + v4);
  v8 = v1 + v4 + *(v0 + 28);

  v9 = *(v8 + 56);
  if (v9 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v8 + 48), v9);
  }

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

void *partial apply for closure #1 in closure #1 in LinkMultiChoiceView.body.getter@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for LinkMultiChoiceView(0);

  return closure #1 in closure #1 in LinkMultiChoiceView.body.getter(a1, a2);
}

uint64_t lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of LinkMultiChoiceView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of LinkActionView(uint64_t a1)
{
  v2 = type metadata accessor for LinkActionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnableTCCView.model.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t EnableTCCView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMR);
  OUTLINED_FUNCTION_0_1();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_2_3();
  v41 = v4;
  __chkstk_darwin(v5);
  v40 = &v37 - v6;
  v7 = type metadata accessor for SimpleItemRichView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  __chkstk_darwin(v11 - 8);
  OUTLINED_FUNCTION_2_3();
  v38 = v12;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = v2[2];
  v17 = v2[3];
  v18 = v2[5];
  v37 = v2[4];
  v19 = v2[7];
  if (v19)
  {
    v20 = v2[6];
    v64[3] = &type metadata for String;
    v64[4] = &protocol witness table for String;
    v64[0] = v20;
    v64[1] = v19;
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;

    SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
    (*(v8 + 32))(v15, v10, v7);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v21, 1, v7);
  *&v61 = v16;
  *(&v61 + 1) = v17;
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_1_3(v22);
  *(v23 + 80) = v16;
  *(v23 + 88) = v17;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  *(&v66 + 1) = v24;
  v25 = lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, &protocol conformance descriptor for Button<A>);
  v67 = v25;
  __swift_allocate_boxed_opaque_existential_1(&v65);
  swift_bridgeObjectRetain_n();
  outlined init with copy of EnableTCCView(v2, v64);
  lazy protocol witness table accessor for type String and conformance String();
  Button<>.init<A>(_:action:)();
  v26 = v37;
  *&v58 = v37;
  *(&v58 + 1) = v18;
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_1_3(v27);
  *(v28 + 80) = v26;
  *(v28 + 88) = v18;
  *(&v62 + 1) = v24;
  v63 = v25;
  __swift_allocate_boxed_opaque_existential_1(&v61);

  outlined init with copy of EnableTCCView(v2, v64);

  Button<>.init<A>(_:action:)();
  v29 = v40;
  BinaryButtonView.init(primaryButton:secondaryButton:)();
  KeyPath = swift_getKeyPath();
  v31 = v38;
  v32 = (v29 + *(v39 + 36));
  *v32 = KeyPath;
  v32[1] = 5;
  outlined init with copy of SimpleItemRichView?(v15, v31, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v33 = v41;
  outlined init with copy of SimpleItemRichView?(v29, v41, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMR);
  v34 = v42;
  outlined init with copy of SimpleItemRichView?(v31, v42, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI18SimpleItemRichViewVSg_05SwiftB015ModifiedContentVyAA012BinaryButtonF0VAE30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGtMd, &_s9SnippetUI18SimpleItemRichViewVSg_05SwiftB015ModifiedContentVyAA012BinaryButtonF0VAE30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGtMR);
  outlined init with copy of SimpleItemRichView?(v33, v34 + *(v35 + 48), &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMR);
  outlined destroy of StandardActionHandler?(v29, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMR);
  outlined destroy of StandardActionHandler?(v15, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  outlined destroy of StandardActionHandler?(v33, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB016BinaryButtonViewVAA30_EnvironmentKeyWritingModifierVySo25VRXVisualResponseLocationVGGMR);
  return outlined destroy of StandardActionHandler?(v31, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
}

void closure #1 in EnableTCCView.createButton(label:)(id *a1, uint64_t a2, unint64_t a3)
{
  if (*a1)
  {
    v5 = *a1;
    v6 = dispatch thunk of Context.perform(machineUtterance:)();

    if ((v6 & 1) == 0)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.voiceCommands);

      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v12 = v10;
        *v9 = 136315138;
        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v12);
        _os_log_impl(&dword_0, oslog, v8, "#EnableTCCView failed to issue machineUtterance: '%s'", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
      }

      else
      {
      }
    }
  }

  else
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context();
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t objectdestroyTm_1()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_9060@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.visualResponseLocation.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of SimpleItemRichView?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

__n128 EnableTCCView.init(model:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1[1];
  v8 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context();
  *a2 = EnvironmentObject.init()();
  *(a2 + 8) = v5;
  result = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v7;
  *(a2 + 48) = v3;
  *(a2 + 56) = v4;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for EnableTCCView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for EnableTCCView(uint64_t result, int a2, int a3)
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

__n128 OUTLINED_FUNCTION_1_3(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 48) = result;
  *(a1 + 64) = v4;
  return result;
}

uint64_t LinkConfirmationView.body.getter()
{
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x71uLL);
  outlined init with copy of LinkConfirmationView(v0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AD024ConfirmationBinaryButtonD0VtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AD024ConfirmationBinaryButtonD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(LinkActionView, ConfirmationBinaryButtonView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AD024ConfirmationBinaryButtonD0VtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin0f6ActionD0V_AD024ConfirmationBinaryButtonD0VtGMR, &protocol conformance descriptor for TupleView<A>);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in LinkConfirmationView.body.getter@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for ButtonItemButtonStyle();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConfirmationBinaryButtonView(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - v10;
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for LinkActionView(0);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = (&v27 - v19);
  memcpy(v33, a1, sizeof(v33));
  v21 = a1[112];
  memcpy(__dst, a1, 0x50uLL);
  outlined init with copy of WorkflowDataModels.LinkActionModel(__dst, v32);
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context();
  *v20 = EnvironmentObject.init()();
  v20[1] = v22;
  InteractionDelegate.init()();
  memcpy(v20 + *(v15 + 32), __dst, 0x50uLL);
  v32[0] = v33[5];
  v34 = v33[6];
  outlined init with copy of String(v32, v31);
  outlined init with copy of String(&v34, v31);
  v23 = v27;
  if (v21)
  {
    static ButtonStyle<>.buttonItemPreferredAndDestructive.getter();
  }

  else
  {
    static ButtonStyle<>.buttonItemPreferred.getter();
  }

  ActionHandler.init()();
  *&v11[v5[5]] = v32[0];
  *&v11[v5[6]] = v34;
  (*(v28 + 32))(&v11[v5[7]], v23, v29);
  outlined init with take of ConfirmationBinaryButtonView(v11, v13);
  outlined init with copy of LinkActionView(v20, v18, type metadata accessor for LinkActionView);
  outlined init with copy of LinkActionView(v13, v8, type metadata accessor for ConfirmationBinaryButtonView);
  v24 = v30;
  outlined init with copy of LinkActionView(v18, v30, type metadata accessor for LinkActionView);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin0B10ActionViewV_AA024ConfirmationBinaryButtonE0VtMd, &_s16SiriLinkUIPlugin0B10ActionViewV_AA024ConfirmationBinaryButtonE0VtMR);
  outlined init with copy of LinkActionView(v8, v24 + *(v25 + 48), type metadata accessor for ConfirmationBinaryButtonView);
  outlined destroy of ConfirmationBinaryButtonView(v13, type metadata accessor for ConfirmationBinaryButtonView);
  outlined destroy of ConfirmationBinaryButtonView(v20, type metadata accessor for LinkActionView);
  outlined destroy of ConfirmationBinaryButtonView(v8, type metadata accessor for ConfirmationBinaryButtonView);
  return outlined destroy of ConfirmationBinaryButtonView(v18, type metadata accessor for LinkActionView);
}

uint64_t sub_97EC()
{

  v1 = *(v0 + 72);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 64), v1);
  }

  return _swift_deallocObject(v0, 129, 7);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for LinkConfirmationView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for LinkConfirmationView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of LinkActionView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ConfirmationBinaryButtonView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t one-time initialization function for voiceCommands()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.voiceCommands);
  __swift_project_value_buffer(v0, static Logger.voiceCommands);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for linkUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.linkUI);
  __swift_project_value_buffer(v0, static Logger.linkUI);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for siriKitUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.siriKitUI);
  __swift_project_value_buffer(v0, static Logger.siriKitUI);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.voiceCommands.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Logger.voiceCommands.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a6;
  v33 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, v7, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  outlined init with copy of Logger?(v16, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
  {
    outlined destroy of Logger?(v14);
  }

  else
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = a3;
      v22 = v21;
      v30 = swift_slowAlloc();
      v34 = v30;
      *v22 = 136315650;
      v23 = StaticString.description.getter();
      v29 = v19;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v34);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v32;
      *(v22 + 22) = 2080;
      *(v22 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v34);
      v26 = v20;
      v27 = v29;
      _os_log_impl(&dword_0, v29, v26, "FatalError at %s:%lu - %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v18 + 8))(v14, v17);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id static LNSnippetEnvironment.make(size:)(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = objc_allocWithZone(LNSnippetEnvironment);
  return @nonobjc LNSnippetEnvironment.init(size:locale:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:)(v6, -1, -1, -1, -1, -1, -1, 0, a1, a2, 1.0, 0, 0, 0);
}

id static LNSnippetEnvironment.make(from:localeIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = [a1 estimatedVisibleSnippetDisplaySize];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [v7 width];
  v10 = [v8 height];

  Locale.init(identifier:)();
  v11 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  v12 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_dynamicTypeSize);
  v38 = static LNSnippetEnvironmentDynamicTypeSize.make(from:)(v12, v13);

  v14 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_textLegibilityWeight);
  v37 = static LNSnippetEnvironmentLegibilityWeight.make(from:)(v14, v15);

  v16 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_textDirection);
  v18 = static LNSnippetEnvironmentLayoutDirection.make(from:)(v16, v17);

  v19 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_displayColorScheme);
  v21 = static LNSnippetEnvironmentColorScheme.make(from:)(v19, v20);

  v22 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_displayContrast);
  v24 = static LNSnippetEnvironmentColorSchemeContrast.make(from:)(v22, v23);

  [v8 scale];
  v26 = v25;
  v27 = outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(a1, &selRef_displayGamut);
  v29 = static LNSnippetEnvironmentDisplayGamut.make(from:)(v27, v28);

  v30 = [a1 accessibilityDifferentiateWithoutColor];
  v31 = [a1 accessibilityInvertColors];
  v32 = [a1 accessibilityReduceMotion];
  v33 = [a1 accessibilityReduceTransparency];
  v34 = objc_allocWithZone(LNSnippetEnvironment);
  v35 = @nonobjc LNSnippetEnvironment.init(size:locale:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:)(v6, v38, v37, v18, v21, v24, v29, v30, v9, v10, v26, v31, v32, v33);

  return v35;
}

uint64_t static LNSnippetEnvironmentDynamicTypeSize.make(from:)(uint64_t a1, uint64_t a2)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v5 == a1 && v6 == a2)
    {
LABEL_124:

      return -1;
    }

    OUTLINED_FUNCTION_0_4(v5);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return -1;
    }
  }

  else
  {
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v8 == a1 && v9 == a2)
    {

      return 1;
    }

    OUTLINED_FUNCTION_0_4(v8);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 1;
    }
  }

  else
  {
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v11 == a1 && v12 == a2)
    {

      return 2;
    }

    OUTLINED_FUNCTION_0_4(v11);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 2;
    }
  }

  else
  {
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v15 == a1 && v16 == a2)
    {

      return 0;
    }

    OUTLINED_FUNCTION_0_4(v15);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 0;
    }
  }

  else
  {
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v18 == a1 && v19 == a2)
    {

      return 3;
    }

    OUTLINED_FUNCTION_0_4(v18);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 3;
    }
  }

  else
  {
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v21 == a1 && v22 == a2)
    {

      return 4;
    }

    OUTLINED_FUNCTION_0_4(v21);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 4;
    }
  }

  else
  {
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v24 == a1 && v25 == a2)
    {

      return 5;
    }

    OUTLINED_FUNCTION_0_4(v24);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 5;
    }
  }

  else
  {
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v27 == a1 && v28 == a2)
    {

      return 6;
    }

    OUTLINED_FUNCTION_0_4(v27);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 6;
    }
  }

  else
  {
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v30 == a1 && v31 == a2)
    {

      return 7;
    }

    OUTLINED_FUNCTION_0_4(v30);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 7;
    }
  }

  else
  {
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v33 == a1 && v34 == a2)
    {

      return 8;
    }

    OUTLINED_FUNCTION_0_4(v33);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 8;
    }
  }

  else
  {
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v36 == a1 && v37 == a2)
    {

      return 9;
    }

    OUTLINED_FUNCTION_0_4(v36);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 9;
    }
  }

  else
  {
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v39 == a1 && v40 == a2)
    {

      return 10;
    }

    OUTLINED_FUNCTION_0_4(v39);
    OUTLINED_FUNCTION_1_5();
    if (v2)
    {
      return 10;
    }
  }

  else
  {
  }

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!a2)
  {
    goto LABEL_124;
  }

  if (v42 != a1 || v43 != a2)
  {
    v45 = OUTLINED_FUNCTION_0_4(v42);

    if (v45)
    {
      return 11;
    }

    return -1;
  }

  return 11;
}

uint64_t static LNSnippetEnvironmentLegibilityWeight.make(from:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v7 == a1 && v8 == a2)
    {
LABEL_27:

      return -1;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return -1;
    }
  }

  else
  {
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v11 == a1 && v12 == a2)
    {

      return 0;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return 0;
    }
  }

  else
  {
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!a2)
  {
    goto LABEL_27;
  }

  if (v15 != a1 || v16 != a2)
  {
    v18 = OUTLINED_FUNCTION_0_4(v15);

    if (v18)
    {
      return 1;
    }

    return -1;
  }

  return 1;
}

id @nonobjc LNSnippetEnvironment.init(size:locale:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, char a12, char a13, char a14)
{
  v15 = v14;
  v23 = type metadata accessor for Locale();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v23) != 1)
  {
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(*(v23 - 8) + 8))(a1, v23);
  }

  BYTE3(v27) = a14 & 1;
  BYTE2(v27) = a13 & 1;
  BYTE1(v27) = a12 & 1;
  LOBYTE(v27) = a8 & 1;
  v25 = [v15 initWithSize:isa locale:a2 dynamicTypeSize:a3 legibilityWeight:a4 layoutDirection:a5 colorScheme:a6 colorSchemeContrast:a9 displayScale:a10 displayGamut:a11 accessibilityDifferentiateWithoutColor:a7 accessibilityInvertColors:v27 accessibilityReduceMotion:? accessibilityReduceTransparency:?];

  return v25;
}

uint64_t outlined bridged method (pb) of @objc SAUISnippetDisplayConfigurationResponse.dynamicTypeSize.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_1_5()
{
}

uint64_t CodableAction.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CodableAction.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_0_5();
  swift_getWitnessTable();
  type metadata accessor for KeyedDecodingContainer();
  OUTLINED_FUNCTION_2_0();
  __chkstk_darwin(v7);
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    type metadata accessor for NSKeyedUnarchiver();
    v10 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v21 = v10;
    if (v10)
    {
      v23 = OUTLINED_FUNCTION_2_5();
      v24(v23);
      outlined consume of Data._Representation(v26, v27);
      goto LABEL_9;
    }

    type metadata accessor for CodableAction.Error(0, a2, v11, v12);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v26, v27);
    v8 = OUTLINED_FUNCTION_2_5();
    v9(v8);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.voiceCommands);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v26);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v14, v15, "Failed to decode LNAction; Error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
  }

  v21 = 0;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v21;
}

uint64_t CodableAction.encode(to:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CodableAction.CodingKeys(255, a3, a3, a4);
  OUTLINED_FUNCTION_0_5();
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  OUTLINED_FUNCTION_2_0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = objc_opt_self();
  v24[0] = a2;
  type metadata accessor for Optional();
  v13 = Optional._bridgeToObjectiveC()();
  v24[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v24];
  swift_unknownObjectRelease();
  v15 = v24[0];
  if (v14)
  {
    v22 = v8;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v24[0] = v16;
    v24[1] = v18;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v22 + 8))(v11, v6);
    return outlined consume of Data._Representation(v16, v18);
  }

  else
  {
    v20 = v15;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

BOOL CodableAction.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CodableAction.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CodableAction<A>.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CodableAction.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance CodableAction<A>.CodingKeys@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = CodableAction.CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CodableAction<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = CodableAction.init(from:)(a1, *(a2 + 16), a4, a5);
  if (!v5)
  {
    *a3 = result;
  }

  return result;
}

unint64_t type metadata accessor for NSKeyedUnarchiver()
{
  result = lazy cache variable for type metadata for NSKeyedUnarchiver;
  if (!lazy cache variable for type metadata for NSKeyedUnarchiver)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  }

  return result;
}

uint64_t type metadata instantiation function for CodableAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CodableAction(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CodableAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableAction.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xBC08);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AutoShortcutFirstRunWatchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA7DividerVAA5GroupVyAIyAA15ModifiedContentVyAA0F0VyAA7ForEachVySaySSGSSAKGGAA010_FixedSizeG0VG_AIyAQyAA6SpacerVAA06_FrameG0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA4LinkVyAKG_AA05PlainwU0VQo_tGSgtGGA4_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA7DividerVAA5GroupVyAIyAA15ModifiedContentVyAA0F0VyAA7ForEachVySaySSGSSAKGGAA010_FixedSizeG0VG_AIyAQyAA6SpacerVAA06_FrameG0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA4LinkVyAKG_AA05PlainwU0VQo_tGSgtGGA4_tGGMR);
  closure #1 in AutoShortcutFirstRunWatchView.body.getter(v1, (a1 + *(v3 + 44)));
  v4 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAGyACyAEyAA7ForEachVySaySSGSSAIGGAA16_FixedSizeLayoutVG_AGyACyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAIG_AA05PlainuS0VQo_tGSgtGGAZtGGAA08_PaddingO0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAGyACyAEyAA7ForEachVySaySSGSSAIGGAA16_FixedSizeLayoutVG_AGyACyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAIG_AA05PlainuS0VQo_tGSgtGGAZtGGAA08_PaddingO0VGMR);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t closure #1 in AutoShortcutFirstRunWatchView.body.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMR);
  v4 = __chkstk_darwin(v3 - 8);
  v56 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v41 - v6;
  v58 = type metadata accessor for Divider();
  v51 = *(v58 - 8);
  v7 = v51;
  v8 = __chkstk_darwin(v58);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v13 = a1[5];
  v60 = a1[4];
  v61 = v13;
  lazy protocol witness table accessor for type String and conformance String();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.title3.getter();
  v52 = Text.font(_:)();
  v53 = v19;
  v54 = v20;
  v22 = v21;

  outlined consume of Text.Storage(v14, v16, v18 & 1);

  v23 = v12;
  v50 = v12;
  Divider.init()();
  v24 = v57;
  closure #1 in closure #1 in AutoShortcutFirstRunWatchView.body.getter(a1, v57);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v49 = v60;
  v48 = v62;
  v47 = v64;
  v46 = v65;
  v68 = 1;
  v67 = v61;
  v66 = v63;
  v59 = v22 & 1;
  v25 = *(v7 + 16);
  v26 = v10;
  v27 = v58;
  v25(v10, v23, v58);
  v28 = v24;
  v29 = v56;
  outlined init with copy of SimpleItemRichView?(v28, v56, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMR);
  v42 = v68;
  v43 = v67;
  v44 = v66;
  v30 = v59;
  v45 = v59;
  v31 = v52;
  v32 = v53;
  v34 = v54;
  v33 = v55;
  *v55 = v52;
  v33[1] = v34;
  *(v33 + 16) = v30;
  v33[3] = v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA7DividerVAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSACGGAA16_FixedSizeLayoutVG_AIyAKyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyACG_AA05PlainuS0VQo_tGSgtGGAZtMd, &_s7SwiftUI4TextV_AA7DividerVAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSACGGAA16_FixedSizeLayoutVG_AIyAKyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyACG_AA05PlainuS0VQo_tGSgtGGAZtMR);
  v25(v33 + v35[12], v26, v27);
  outlined init with copy of SimpleItemRichView?(v29, v33 + v35[16], &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMR);
  v36 = v33 + v35[20];
  *v36 = 0;
  v36[8] = v42;
  *(v36 + 2) = v49;
  v36[24] = v43;
  *(v36 + 4) = v48;
  v36[40] = v44;
  v37 = v46;
  *(v36 + 6) = v47;
  *(v36 + 7) = v37;
  outlined copy of Text.Storage(v31, v34, v45);

  outlined destroy of StandardActionHandler?(v57, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMR);
  v38 = *(v51 + 8);
  v39 = v58;
  v38(v50, v58);
  outlined destroy of StandardActionHandler?(v29, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMd, &_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AEyAGyAA6SpacerVAA06_FrameN0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA4LinkVyANG_AA05PlaintR0VQo_tGSgtGGMR);
  v38(v26, v39);
  outlined consume of Text.Storage(v31, v34, v59);
}

uint64_t closure #1 in closure #1 in AutoShortcutFirstRunWatchView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGMR);
  __chkstk_darwin(v78);
  v71 = (&v56 - v3);
  v68 = type metadata accessor for PlainButtonStyle();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4LinkVyAA4TextVGMd, &_s7SwiftUI4LinkVyAA4TextVGMR);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v56 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlaingE0VQo_MR);
  v69 = *(v70 - 8);
  v6 = __chkstk_darwin(v70);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = type metadata accessor for URL();
  v73 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v61 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMR);
  v17 = __chkstk_darwin(v16 - 8);
  v77 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v76 = &v56 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMR);
  v21 = v20 - 8;
  v22 = __chkstk_darwin(v20);
  v75 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v56 - v24;
  v26 = static HorizontalAlignment.leading.getter();
  v27 = a1[11];
  *v25 = v26;
  *(v25 + 1) = v27;
  v25[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySaySSGSSAA4TextVGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySaySSGSSAA4TextVGGMR);
  v28 = memcpy(__dst, a1, sizeof(__dst));
  v83 = AutoShortcutAppPhrasesViewModel.displayPhrases.getter(v28);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, &protocol conformance descriptor for [A]);
  ForEach<>.init(_:id:content:)();
  *&v25[*(v21 + 44)] = 256;
  if (__dst[7])
  {
    AutoShortcutAppPhrasesViewModel.punchoutURL.getter();
    URL.init(string:)();

    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      v32 = v73;
      v33 = *(v73 + 32);
      v34 = v72;
      v60 = v12;
      v33(v72, v11, v12);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v59 = v83;
      v58 = v85;
      v57 = v87;
      v56 = v88;
      v82 = 1;
      v81 = v84;
      v80 = v86;
      v35 = (*(v32 + 16))(v61, v34, v12);
      __chkstk_darwin(v35);
      v36 = v62;
      Link.init(destination:label:)();
      v37 = v66;
      PlainButtonStyle.init()();
      lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Link<Text> and conformance Link<A>, &_s7SwiftUI4LinkVyAA4TextVGMd, &_s7SwiftUI4LinkVyAA4TextVGMR, &protocol conformance descriptor for Link<A>);
      lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
      v38 = v74;
      v39 = v65;
      v40 = v68;
      View.buttonStyle<A>(_:)();
      (*(v67 + 8))(v37, v40);
      (*(v64 + 8))(v36, v39);
      v41 = v82;
      LOBYTE(v40) = v81;
      LOBYTE(v37) = v80;
      v42 = v69;
      v43 = *(v69 + 16);
      v44 = v63;
      v45 = v38;
      v46 = v70;
      v43(v63, v45, v70);
      v47 = v71;
      *v71 = 0;
      *(v47 + 8) = v41;
      *(v47 + 16) = v59;
      *(v47 + 24) = v40;
      *(v47 + 32) = v58;
      *(v47 + 40) = v37;
      v48 = v56;
      *(v47 + 48) = v57;
      *(v47 + 56) = v48;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainlJ0VQo_tMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainlJ0VQo_tMR);
      v43((v47 + *(v49 + 48)), v44, v46);
      v50 = *(v42 + 8);
      v50(v74, v46);
      (*(v73 + 8))(v72, v60);
      v50(v44, v46);
      v29 = v76;
      sub_D10C(v47, v76);
      v30 = v29;
      v31 = 0;
      goto LABEL_6;
    }

    outlined destroy of StandardActionHandler?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  v29 = v76;
  v30 = v76;
  v31 = 1;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v30, v31, 1, v78);
  v51 = v75;
  outlined init with copy of ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>(v25, v75);
  v52 = v77;
  outlined init with copy of SimpleItemRichView?(v29, v77, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMR);
  v53 = v79;
  outlined init with copy of ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>(v51, v79);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AA9TupleViewVyACyAA6SpacerVAA06_FrameK0VG_AA0M0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA4LinkVyAJG_AA05PlainsQ0VQo_tGSgtMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVG_AA9TupleViewVyACyAA6SpacerVAA06_FrameK0VG_AA0M0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA4LinkVyAJG_AA05PlainsQ0VQo_tGSgtMR);
  outlined init with copy of SimpleItemRichView?(v52, v53 + *(v54 + 48), &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMR);
  outlined destroy of StandardActionHandler?(v29, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMR);
  outlined destroy of StandardActionHandler?(v25, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMR);
  outlined destroy of StandardActionHandler?(v52, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGSgMR);
  return outlined destroy of StandardActionHandler?(v51, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AutoShortcutFirstRunWatchView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v6 = *a1;
  v5 = a1[1];
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  v8._countAndFlagsBits = v6;
  v8._object = v5;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v8);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  LocalizedStringKey.init(stringInterpolation:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  LOBYTE(v6) = v13;
  static Font.body.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  outlined consume of Text.Storage(v10, v12, v6 & 1);

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in AutoShortcutFirstRunWatchView.body.getter@<X0>(uint64_t a3@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.body.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  outlined consume of Text.Storage(v4, v6, v8 & 1);

  static Color.secondary.getter();
  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  outlined consume of Text.Storage(v9, v11, v13 & 1);

  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v20;
  return result;
}

double AutoShortcutFirstRunWatchView.init(model:)@<D0>(void *__src@<X0>, _OWORD *a2@<X8>)
{
  memcpy(a2, __src, 0x50uLL);
  result = 12.0;
  a2[5] = xmmword_446D0;
  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutFirstRunWatchView(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AutoShortcutFirstRunWatchView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Divider, Group<TupleView<(ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>, TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>?)>>, ModifiedContent<Spacer, _FrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Divider, Group<TupleView<(ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>, TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>?)>>, ModifiedContent<Spacer, _FrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Divider, Group<TupleView<(ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>, TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>?)>>, ModifiedContent<Spacer, _FrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAGyACyAEyAA7ForEachVySaySSGSSAIGGAA16_FixedSizeLayoutVG_AGyACyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAIG_AA05PlainuS0VQo_tGSgtGGAZtGGAA08_PaddingO0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAGyACyAEyAA7ForEachVySaySSGSSAIGGAA16_FixedSizeLayoutVG_AGyACyAA6SpacerVAA06_FrameO0VG_AA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAIG_AA05PlainuS0VQo_tGSgtGGAZtGGAA08_PaddingO0VGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Divider, Group<TupleView<(ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>, TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>?)>>, ModifiedContent<Spacer, _FrameLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAEyAA15ModifiedContentVyACyAA7ForEachVySaySSGSSAGGGAA16_FixedSizeLayoutVG_AEyAMyAA6SpacerVAA06_FrameO0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAGG_AA05PlainuS0VQo_tGSgtGGAZtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA7DividerVAA5GroupVyAEyAA15ModifiedContentVyACyAA7ForEachVySaySSGSSAGGGAA16_FixedSizeLayoutVG_AEyAMyAA6SpacerVAA06_FrameO0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAA4LinkVyAGG_AA05PlainuS0VQo_tGSgtGGAZtGGMR, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Divider, Group<TupleView<(ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>, TupleView<(ModifiedContent<Spacer, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>?)>>, ModifiedContent<Spacer, _FrameLayout>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined init with copy of ModifiedContent<VStack<ForEach<[String], String, Text>>, _FixedSizeLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySaySSGSSAA4TextVGGAA16_FixedSizeLayoutVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle);
  }

  return result;
}

uint64_t sub_D10C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA4LinkVyAA4TextVG_AA05PlainmK0VQo_tGMR);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t static InputCompletionConverter.toUserData(state:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = Dictionary.init(dictionaryLiteral:)();
  if (a3)
  {
    if (a3 != 1)
    {
      v93 = &type metadata for String;
      *&v92 = 0x6C65636E6163;
      *(&v92 + 1) = 0xE600000000000000;
      OUTLINED_FUNCTION_4_0(v6, v7, v8, v9, v10, v11, v12, v13, v76, v84, *v91, *&v91[16], *&v91[24], v92);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_5_0(v67, v68, v69, v70, v71, v72, v73, v74, v83, v90, *v91);
      return v89;
    }

    *&v92 = 0x497375636F666E75;
    *(&v92 + 1) = 0xEF786F427475706ELL;
    OUTLINED_FUNCTION_4_0(v6, v7, v8, v9, v10, v11, v12, v13, v76, v84, *v91, *&v91[16], *&v91[24], v92);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_5_0(v14, v15, v16, v17, v18, v19, v20, v21, v77, v85, *v91);
    v22 = v86;
    v93 = &type metadata for String;
    OUTLINED_FUNCTION_8();
    *&v92 = v23;
    *(&v92 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_0(v24, v25, v26, v27, v28, v29, v30, v31, v78, v86, *v91, *&v91[16], *&v91[24], v92);
    v32 = a1;
    v33 = a2;
    v34 = 1;
  }

  else
  {
    *&v92 = 1701736292;
    *(&v92 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_0(v6, v7, v8, v9, v10, v11, v12, v13, v76, v84, *v91, *&v91[16], *&v91[24], v92);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_5_0(v35, v36, v37, v38, v39, v40, v41, v42, v80, v87, *v91);
    v22 = v88;
    v93 = &type metadata for String;
    OUTLINED_FUNCTION_8();
    *&v92 = v43;
    *(&v92 + 1) = 0xE400000000000000;
    OUTLINED_FUNCTION_4_0(v44, v45, v46, v47, v48, v49, v50, v51, v81, v88, *v91, *&v91[16], *&v91[24], v92);
    v32 = a1;
    v33 = a2;
    v34 = 0;
  }

  outlined copy of InputCompletionState(v32, v33, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v91, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v93 = &type metadata for String;
  *&v92 = a1;
  *(&v92 + 1) = a2;
  OUTLINED_FUNCTION_4_0(v53, v54, v55, v56, v57, v58, v59, v60, v79, v22, *v91, *&v91[16], *&v91[24], v92);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_5_0(v61, 0x7475706E69, v62, v61, v63, v64, v65, v66, v82, v22, *v91);
  return v89;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static InputCompletionConverter.toInputCompletionState(userData:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x6574617473, 0xE500000000000000);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = outlined init with copy of Any(*(a1 + 56) + 32 * v2, &v104);
  if ((OUTLINED_FUNCTION_1_6(v4, v5, v6, &type metadata for String, v7, v8, v9, v10, v86, v96, v104) & 1) == 0)
  {
    return 0;
  }

  v11 = v87 == 1701736292 && v97 == 0xE400000000000000;
  if (!v11 && (OUTLINED_FUNCTION_7(1701736292, 0xE400000000000000) & 1) == 0)
  {
    v40 = v87 == 0x6C65636E6163 && v97 == 0xE600000000000000;
    if (v40 || (OUTLINED_FUNCTION_7(0x6C65636E6163, 0xE600000000000000) & 1) != 0)
    {

      return 0;
    }

    if (v87 == 0x497375636F666E75 && v97 == 0xEF786F427475706ELL)
    {
    }

    else
    {
      v50 = OUTLINED_FUNCTION_7(0x497375636F666E75, 0xEF786F427475706ELL);

      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_3_3(v51, v52, v53, v54, v55, v56, v57, v58, v87, v97, v104);
    if (v105)
    {
      if ((OUTLINED_FUNCTION_1_6(v59, v60, v61, &type metadata for String, v62, v63, v64, v65, v92, v101, v104) & 1) == 0)
      {
        return 0;
      }

      OUTLINED_FUNCTION_8();
      if (v93 == v68 && v102 == 0xE400000000000000)
      {
      }

      else
      {
        v70 = OUTLINED_FUNCTION_6(v66, v67, v93);

        if ((v70 & 1) == 0)
        {
          return 0;
        }
      }

      OUTLINED_FUNCTION_2_6(v71, v72, v73, v74, v75, v76, v77, v78, v93, v102, v104);
      if (v105)
      {
        if (OUTLINED_FUNCTION_1_6(v79, v80, v81, &type metadata for String, v82, v83, v84, v85, v94, v103, v104))
        {
          return v95;
        }

        return 0;
      }
    }

LABEL_46:
    outlined destroy of Any?(&v104);
    return 0;
  }

  OUTLINED_FUNCTION_3_3(v12, v13, v14, v15, v16, v17, v18, v19, v87, v97, v104);
  if (!v105)
  {
    goto LABEL_46;
  }

  if (OUTLINED_FUNCTION_1_6(v20, v21, v22, &type metadata for String, v23, v24, v25, v26, v88, v98, v104))
  {
    OUTLINED_FUNCTION_8();
    if (v89 == v29 && v99 == 0xE400000000000000)
    {
    }

    else
    {
      v31 = OUTLINED_FUNCTION_6(v27, v28, v89);

      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_2_6(v32, v33, v34, v35, v36, v37, v38, v39, v89, v99, v104);
    if (v105)
    {
      if (OUTLINED_FUNCTION_1_6(v42, v43, v44, &type metadata for String, v45, v46, v47, v48, v90, v100, v104))
      {
        return v91;
      }

      return 0;
    }

    goto LABEL_46;
  }

  return 0;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    outlined destroy of AnyHashable(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);

    return outlined init with take of Any(a1, v21);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v20);
  }
}

uint64_t outlined copy of InputCompletionState(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized Dictionary.subscript.getter(0x7475706E69, 0xE500000000000000, v11, &a11);
}

double OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, v11, &a11);
}

_OWORD *OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return outlined init with take of Any(&a14, &a11);
}

_OWORD *OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&a11, a2, 0xE500000000000000, a4);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *LinkActionView.init(model:)@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  *a2 = EnvironmentObject.init()();
  a2[1] = v4;
  v5 = type metadata accessor for LinkActionView(0);
  InteractionDelegate.init()();
  v6 = a2 + *(v5 + 24);

  return memcpy(v6, a1, 0x50uLL);
}

uint64_t type metadata accessor for LinkActionView(uint64_t a1)
{
  result = type metadata singleton initialization cache for LinkActionView;
  if (!type metadata singleton initialization cache for LinkActionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkActionView.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LinkActionView(0) + 24);

  return outlined init with copy of WorkflowDataModels.LinkActionModel(v3, a1);
}

uint64_t LinkActionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for LinkActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMR);
  OUTLINED_FUNCTION_0_1();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleC0VyAI014SimpleItemRichC0VSg_AA012_ConditionalJ0VyAHyAI15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0kE16HandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAX08ArchivedC0VGSgtGGAA01_j5ShapeZ0VyAA9RectangleVGG_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleC0VyAI014SimpleItemRichC0VSg_AA012_ConditionalJ0VyAHyAI15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0kE16HandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAX08ArchivedC0VGSgtGGAA01_j5ShapeZ0VyAA9RectangleVGG_Qo_MR);
  OUTLINED_FUNCTION_2_0();
  v22 = v8;
  v23 = v9;
  __chkstk_darwin(v8);
  v20 = &v19 - v10;
  _s16SiriLinkUIPlugin0B10ActionViewVWOcTm_0(v1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinkActionView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  outlined init with take of LinkActionView(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_AA19_ConditionalContentVyAA08ModifiedJ0VyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAQ08ArchivedD0VGSgtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_AA19_ConditionalContentVyAA08ModifiedJ0VyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAQ08ArchivedD0VGSgtGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_AA19_ConditionalContentVyAA08ModifiedJ0VyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAQ08ArchivedD0VGSgtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0014SimpleItemRichD0VSg_AA19_ConditionalContentVyAA08ModifiedJ0VyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAQ08ArchivedD0VGSgtGMR, &protocol conformance descriptor for TupleView<A>);
  ComponentStack.init(content:)();
  v13 = v21;
  v7[*(v21 + 36)] = 0;
  _s16SiriLinkUIPlugin0B10ActionViewVWOcTm_0(v19, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LinkActionView);
  v14 = swift_allocObject();
  outlined init with take of LinkActionView(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v11);
  v15 = lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  v16 = v20;
  View.onTapGesture(count:perform:)();

  outlined destroy of StandardActionHandler?(v7, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMR);
  v25 = v13;
  v26 = v15;
  OUTLINED_FUNCTION_2_7();
  swift_getOpaqueTypeConformance2();
  v17 = v22;
  View.ambientDrawable(renderWithDrawingGroup:)();
  return (*(v23 + 8))(v16, v17);
}

uint64_t closure #1 in LinkActionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v52 = type metadata accessor for ArchivedView(0);
  __chkstk_darwin(v52);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0G19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAN12ArchivedViewV_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0G19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAN12ArchivedViewV_GMR);
  __chkstk_darwin(v49);
  v51 = &v44 - v4;
  v5 = type metadata accessor for LinkActionView(0);
  v6 = v5 - 8;
  v46 = *(v5 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v5);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
  __chkstk_darwin(v50);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMR);
  v11 = __chkstk_darwin(v10 - 8);
  v54 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = type metadata accessor for SimpleItemRichView();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v20 = __chkstk_darwin(v19 - 8);
  v53 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v44 - v22;
  v24 = *(v6 + 32);
  v48 = a1;
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 40);
  if (v26)
  {
    v27 = v25[4];
    *(&__dst[1] + 1) = &type metadata for String;
    *&__dst[2] = &protocol witness table for String;
    *&__dst[0] = v27;
    *(&__dst[0] + 1) = v26;
    *&v79 = 0;
    v77 = 0u;
    v78 = 0u;
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v58 = 0;
    v56 = 0u;
    v57 = 0u;

    SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
    (*(v16 + 32))(v23, v18, v15);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v28, 1, v15);
  memcpy(__dst, v25, sizeof(__dst));
  if (WorkflowDataModels.LinkActionModel.renderModel.getter())
  {

    ArchiveRenderer.init(model:)();
    v29 = v47;
    _s16SiriLinkUIPlugin0B10ActionViewVWOcTm_0(v48, v47, type metadata accessor for LinkActionView);
    v30 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v31 = swift_allocObject();
    outlined init with take of LinkActionView(v29, v31 + v30);
    v32 = v51;
    v33 = &v9[*(v50 + 36)];
    *v33 = partial apply for closure #1 in closure #1 in LinkActionView.body.getter;
    v33[1] = v31;
    outlined init with copy of SimpleItemRichView?(v9, v32, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type ArchivedView and conformance ArchivedView, type metadata accessor for ArchivedView, &protocol conformance descriptor for ArchivedView);
    _ConditionalContent<>.init(storage:)();

    outlined destroy of StandardActionHandler?(v9, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
LABEL_9:
    v35 = 0;
    goto LABEL_10;
  }

  v34 = v25[7];
  if (v34 >> 60 != 15)
  {
    v36 = v25[6];
    *&v77 = v36;
    *(&v77 + 1) = v34;
    v78 = __dst[0];
    v79 = __dst[1];
    outlined copy of Data?(v36, v34);

    outlined copy of Data._Representation(v36, v34);

    v37 = v45;
    ArchivedView.init(model:)(&v77, v45);
    _s16SiriLinkUIPlugin0B10ActionViewVWOcTm_0(v37, v51, type metadata accessor for ArchivedView);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type ArchivedView and conformance ArchivedView, type metadata accessor for ArchivedView, &protocol conformance descriptor for ArchivedView);
    _ConditionalContent<>.init(storage:)();
    outlined consume of Data._Representation(v36, v34);

    outlined destroy of ArchivedView(v37);
    goto LABEL_9;
  }

  v35 = 1;
LABEL_10:
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGMR);
  __swift_storeEnumTagSinglePayload(v14, v35, 1, v38);
  v39 = v53;
  outlined init with copy of SimpleItemRichView?(v23, v53, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v40 = v54;
  outlined init with copy of SimpleItemRichView?(v14, v54, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMR);
  v41 = v55;
  outlined init with copy of SimpleItemRichView?(v39, v55, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI18SimpleItemRichViewVSg_05SwiftB019_ConditionalContentVyAE08ModifiedI0VyAA15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0A19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAO08ArchivedF0VGSgtMd, &_s9SnippetUI18SimpleItemRichViewVSg_05SwiftB019_ConditionalContentVyAE08ModifiedI0VyAA15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0A19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAO08ArchivedF0VGSgtMR);
  outlined init with copy of SimpleItemRichView?(v40, v41 + *(v42 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMR);
  outlined destroy of StandardActionHandler?(v14, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMR);
  outlined destroy of StandardActionHandler?(v23, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
  outlined destroy of StandardActionHandler?(v40, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0F19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAL12ArchivedViewVGSgMR);
  return outlined destroy of StandardActionHandler?(v39, &_s9SnippetUI18SimpleItemRichViewVSgMd, &_s9SnippetUI18SimpleItemRichViewVSgMR);
}

uint64_t outlined init with take of LinkActionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkActionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in LinkActionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LinkActionView(0);
  OUTLINED_FUNCTION_4(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return closure #1 in LinkActionView.body.getter(v5, a1);
}

uint64_t closure #1 in closure #1 in LinkActionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for InteractionDelegateWrapper();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  if (one-time initialization token for linkUI != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.linkUI);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Tapped snippet archive renderer", v12, 2u);
  }

  v13 = [objc_allocWithZone(SAUIAppPunchOut) init];
  outlined init with copy of SimpleItemRichView?(a1, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = type metadata accessor for URL();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v16 = v17;
    (*(*(v14 - 8) + 8))(v8, v14);
  }

  [v13 setPunchOutUri:v16];

  type metadata accessor for LinkActionView(0);
  InteractionDelegate.wrappedValue.getter();
  v18 = v13;
  InteractionDelegateWrapper.perform(aceCommand:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t ArchiveRenderer.onLinkActionTap(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_7();
  swift_getWitnessTable();
  return View.modifier<A>(_:)();
}

uint64_t closure #2 in LinkActionView.body.getter(id *a1)
{
  v2 = type metadata accessor for AppPunchout();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for linkUI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.linkUI);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Tapped snippet LinkActionView", v9, 2u);
  }

  type metadata accessor for LinkActionView(0);

  AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  if (*a1)
  {
    v10 = *a1;
    dispatch thunk of Context.perform(appPunchout:)();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #2 in LinkActionView.body.getter()
{
  v1 = type metadata accessor for LinkActionView(0);
  OUTLINED_FUNCTION_4(v1);
  v3 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return closure #2 in LinkActionView.body.getter(v3);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAA014SimpleItemRichG0VSg_AD19_ConditionalContentVyAD08ModifiedL0VyAA15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0A19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedG0VGSgtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVyAA014SimpleItemRichG0VSg_AD19_ConditionalContentVyAD08ModifiedL0VyAA15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0A19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedG0VGSgtGGMR, &protocol conformance descriptor for ComponentStack<A>);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t SnippetTapHandlingModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<SnippetTapHandlingModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.onTapGesture(count:perform:)();

  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR);

  OpenURLAction.init(handler:)();
  *v9 = KeyPath;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGAUGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGAUGMR) + 36));

  result = OpenURLAction.init(handler:)();
  *v12 = v10;
  return result;
}

uint64_t closure #1 in SnippetTapHandlingModifier.body(content:)(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  a1(v4);
  return outlined destroy of StandardActionHandler?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t key path setter for EnvironmentValues._openURL : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  type metadata accessor for OpenURLAction();
  OUTLINED_FUNCTION_2_0();
  __chkstk_darwin(v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  return a5(v9);
}

uint64_t closure #2 in SnippetTapHandlingModifier.body(content:)(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = OUTLINED_FUNCTION_4(v4);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for URL();
  OUTLINED_FUNCTION_0_1();
  (*(v9 + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  a2(v7);
  outlined destroy of StandardActionHandler?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return static OpenURLAction.Result.systemAction.getter();
}

uint64_t sub_F3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InteractionDelegate();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_F4C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InteractionDelegate();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for LinkActionView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for InteractionDelegate();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for EnvironmentObject<Context>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EnvironmentObject<Context>)
  {
    type metadata accessor for Context();
    lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EnvironmentObject<Context>);
    }
  }
}

uint64_t sub_F694()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleC0VyAI014SimpleItemRichC0VSg_AA012_ConditionalJ0VyAHyAI15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0kE16HandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAX08ArchivedC0VGSgtGGAA01_j5ShapeZ0VyAA9RectangleVGG_Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA15ModifiedContentVy07SnippetB014ComponentStackVyAA05TupleC0VyAI014SimpleItemRichC0VSg_AA012_ConditionalJ0VyAHyAI15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0kE16HandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAX08ArchivedC0VGSgtGGAA01_j5ShapeZ0VyAA9RectangleVGG_Qo_MR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD014SimpleItemRichI0VSg_AA012_ConditionalD0VyACyAD15ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGAS08ArchivedI0VGSgtGGAA01_d5ShapeV0VyAA9RectangleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(SimpleItemRichView?, _ConditionalContent<ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier>, ArchivedView>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  OUTLINED_FUNCTION_2_7();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_F724(void *a1)
{
  type metadata accessor for ArchiveRenderer();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_1_7();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier()
{
  result = lazy protocol witness table cache variable for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier;
  if (!lazy protocol witness table cache variable for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnippetTapHandlingModifier(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SnippetTapHandlingModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F8A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t _s16SiriLinkUIPlugin0B10ActionViewVWOcTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB015ArchiveRendererVySo8LNActionCG16SiriLinkUIPlugin0E19TapHandlingModifier33_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ArchiveRenderer<LNAction> and conformance ArchiveRenderer<A>, &_s9SnippetUI15ArchiveRendererVySo8LNActionCGMd, &_s9SnippetUI15ArchiveRendererVySo8LNActionCGMR, &protocol conformance descriptor for ArchiveRenderer<A>);
    lazy protocol witness table accessor for type SnippetTapHandlingModifier and conformance SnippetTapHandlingModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ArchiveRenderer<LNAction>, SnippetTapHandlingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Context and conformance Context(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of ArchivedView(uint64_t a1)
{
  v2 = type metadata accessor for ArchivedView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for LinkActionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  type metadata accessor for InteractionDelegate();
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 8))(v0 + v3 + v5);
  v7 = v0 + v3 + v1[8];

  v8 = *(v7 + 56);
  if (v8 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v7 + 48), v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in LinkActionView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for LinkActionView(0);
  OUTLINED_FUNCTION_4(v2);

  return closure #1 in closure #1 in LinkActionView.body.getter(a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGAUGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGAUGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<OpenURLAction> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA01_e9Modifier_D0Vy16SiriLinkUIPlugin07Snippetg8HandlingK033_05F57957DADFDE00CAE54094CAA0AD09LLVG_Qo_AA022_EnvironmentKeyWritingK0VyAA13OpenURLActionVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<SnippetTapHandlingModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy16SiriLinkUIPlugin018SnippetTapHandlingD033_05F57957DADFDE00CAE54094CAA0AD09LLVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<OpenURLAction> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t ArchivedViewModel.viewData.getter()
{
  v0 = OUTLINED_FUNCTION_2_8();
  outlined copy of Data._Representation(v0, v1);
  return OUTLINED_FUNCTION_2_8();
}

uint64_t ArchivedViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C70736944707061 && a2 == 0xEE00656D614E7961)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int ArchivedViewModel.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t ArchivedViewModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6174614477656976;
  }

  if (a1 == 1)
  {
    return 0x6C646E7542707061;
  }

  return 0x6C70736944707061;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ArchivedViewModel.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivedViewModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ArchivedViewModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ArchivedViewModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ArchivedViewModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivedViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivedViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArchivedViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin17ArchivedViewModelV10CodingKeys33_213B7938CCD226ED1F2809755DBEB952LLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin17ArchivedViewModelV10CodingKeys33_213B7938CCD226ED1F2809755DBEB952LLOGMR);
  OUTLINED_FUNCTION_2_0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v13[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v14;
  v13[23] = 0;
  outlined init with copy of Data(&v15, v13);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v14, *(&v14 + 1));
  if (!v2)
  {
    OUTLINED_FUNCTION_1_8(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_1_8(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys);
  }

  return result;
}

uint64_t ArchivedViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin17ArchivedViewModelV10CodingKeys33_213B7938CCD226ED1F2809755DBEB952LLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin17ArchivedViewModelV10CodingKeys33_213B7938CCD226ED1F2809755DBEB952LLOGMR);
  OUTLINED_FUNCTION_2_0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivedViewModel.CodingKeys and conformance ArchivedViewModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = a2;
  v12 = v25;
  v11 = v26;
  OUTLINED_FUNCTION_4_1(1);
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v13;
  OUTLINED_FUNCTION_4_1(2);
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v17 = v14;
  (*(v7 + 8))(v10, v5);
  outlined copy of Data._Representation(v12, v11);

  v18 = v23;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined consume of Data._Representation(v12, v11);

  v20 = v24;
  *v24 = v12;
  v20[1] = v11;
  v20[2] = v22;
  v20[3] = v18;
  v20[4] = v17;
  v20[5] = v16;
  return result;
}

void __swiftcall WorkflowDataModels.EnableTCCModel.init(confirmLabel:cancelLabel:prompt:)(SiriLinkUIPlugin::WorkflowDataModels::EnableTCCModel *__return_ptr retstr, Swift::String confirmLabel, Swift::String cancelLabel, Swift::String_optional prompt)
{
  retstr->confirmLabel = confirmLabel;
  retstr->cancelLabel = cancelLabel;
  retstr->prompt = prompt;
}

double protocol witness for Decodable.init(from:) in conformance ArchivedViewModel@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  ArchivedViewModel.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ArchivedViewModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for ArchivedViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArchivedViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ArchivedViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10A94);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t INImage.convertToVisualProperty()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
  v2[25] = OUTLINED_FUNCTION_6_0();
  v3 = type metadata accessor for ImageElement.AspectRatio();
  v2[26] = v3;
  OUTLINED_FUNCTION_3_4(v3);
  v2[27] = v4;
  v2[28] = OUTLINED_FUNCTION_6_0();
  v5 = type metadata accessor for ImageElement.ImageStyle();
  v2[29] = v5;
  OUTLINED_FUNCTION_3_4(v5);
  v2[30] = v6;
  v2[31] = OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV10BackgroundVSgMd, &_s10SnippetKit12ImageElementV10BackgroundVSgMR);
  v2[32] = OUTLINED_FUNCTION_6_0();
  v7 = type metadata accessor for ImageElement.RenderingMode();
  v2[33] = v7;
  OUTLINED_FUNCTION_3_4(v7);
  v2[34] = v8;
  v2[35] = OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR);
  v2[36] = OUTLINED_FUNCTION_6_0();
  v9 = type metadata accessor for ImageElement();
  v2[37] = v9;
  OUTLINED_FUNCTION_3_4(v9);
  v2[38] = v10;
  v2[39] = OUTLINED_FUNCTION_6_0();

  return _swift_task_switch(INImage.convertToVisualProperty(), 0, 0);
}

uint64_t INImage.convertToVisualProperty()()
{
  if ([*(v0 + 192) _isSystem])
  {
    outlined bridged method (pb) of @objc INImage._name.getter(*(v0 + 192));
    if (v1)
    {
      v62 = *(v0 + 296);
      v64 = *(v0 + 304);
      v2 = *(v0 + 272);
      v3 = *(v0 + 280);
      v53 = v3;
      v54 = *(v0 + 288);
      v5 = *(v0 + 256);
      v4 = *(v0 + 264);
      v57 = *(v0 + 312);
      v59 = v4;
      v6 = *(v0 + 240);
      v7 = *(v0 + 248);
      v8 = *(v0 + 232);
      v51 = v8;
      type metadata accessor for Color();
      v9 = OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
      (*(v2 + 104))(v3, enum case for ImageElement.RenderingMode.template(_:), v4);
      v11 = type metadata accessor for ImageElement.Background();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
      (*(v6 + 104))(v7, enum case for ImageElement.ImageStyle.default(_:), v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
      v12 = type metadata accessor for _ProtoIdiom();
      OUTLINED_FUNCTION_2_0();
      v14 = v13;
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_43980;
      (*(v14 + 104))(v16 + v15, enum case for _ProtoIdiom.default(_:), v12);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v16);
      static ImageElement.symbol(_:darkModeName:tintColor:renderingMode:imageStyle:background:idioms:punchesThroughBackground:)();

      (*(v6 + 8))(v7, v51);
      outlined destroy of ImageElement.AspectRatio?(v5, &_s10SnippetKit12ImageElementV10BackgroundVSgMd, &_s10SnippetKit12ImageElementV10BackgroundVSgMR);
      (*(v2 + 8))(v53, v59);
      outlined destroy of ImageElement.AspectRatio?(v54, &_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR);
      VisualPropertyConvertible<>.asVisualProperty()();
      (*(v64 + 8))(v57, v62);
      type metadata accessor for VisualProperty();
      v17 = OUTLINED_FUNCTION_9();
      goto LABEL_14;
    }
  }

  if (![*(v0 + 192) _requiresRetrieval])
  {
    v21 = *(v0 + 192);
    v22 = outlined bridged method (pb) of @objc INImage._imageData.getter(v21);
    v63 = v23;
    v65 = v22;
    if (v23 >> 60 == 15)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_1_1(&one-time initialization token for voiceCommands);
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.voiceCommands);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        OUTLINED_FUNCTION_11(&dword_0, v28, v29, "image data is empty");
        OUTLINED_FUNCTION_7_0(v27);

        outlined consume of Data?(v65, v63);
      }

      else
      {

        v25 = v21;
      }

      type metadata accessor for VisualProperty();
      v17 = OUTLINED_FUNCTION_9();
      v47 = 1;
      goto LABEL_17;
    }

    v60 = *(v0 + 304);
    v61 = *(v0 + 296);
    v30 = *(v0 + 240);
    v31 = *(v0 + 248);
    v32 = *(v0 + 224);
    v50 = *(v0 + 232);
    v52 = *(v0 + 312);
    v34 = *(v0 + 208);
    v33 = *(v0 + 216);
    v58 = v33;
    v35 = *(v0 + 200);
    v55 = v32;
    v56 = *(v0 + 184);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_13();
    ImageElement.AspectRatio.init(width:height:)();
    (*(v33 + 16))(v35, v32, v34);
    OUTLINED_FUNCTION_10();
    v36 = OUTLINED_FUNCTION_8_0();
    v37(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
    v38 = type metadata accessor for _ProtoIdiom();
    OUTLINED_FUNCTION_2_0();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_4_2();
    *(v41 + 16) = xmmword_43980;
    (*(v40 + 104))(v41 + v31, enum case for _ProtoIdiom.default(_:), v38);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v41);
    v42 = OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_12(v42, v43, v44, v45);

    (*(v30 + 8))(v31, v50);
    outlined destroy of ImageElement.AspectRatio?(v35, &_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_43980;
    *(v46 + 56) = type metadata accessor for VisualElement();
    *(v46 + 64) = &protocol witness table for VisualElement;
    __swift_allocate_boxed_opaque_existential_1((v46 + 32));
    ImageElement.asVisualElement()();
    VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
    outlined consume of Data?(v65, v63);

    (*(v60 + 8))(v52, v61);
    (*(v58 + 8))(v55, v34);
    v18 = type metadata accessor for VisualProperty();
    v17 = v56;
LABEL_14:
    v47 = 0;
LABEL_17:
    __swift_storeEnumTagSinglePayload(v17, v47, 1, v18);
    OUTLINED_FUNCTION_2_9();

    v48 = *(v0 + 8);

    return v48();
  }

  v19 = *(v0 + 192);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = INImage.convertToVisualProperty();
  v20 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7INImageCSgs5Error_pGMd, &_sSccySo7INImageCSgs5Error_pGMR);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?;
  *(v0 + 104) = &block_descriptor;
  *(v0 + 112) = v20;
  [v19 _retrieveImageDataWithReply:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = INImage.convertToVisualProperty();
  }

  else
  {
    v2 = INImage.convertToVisualProperty();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  if (v1)
  {
    v2 = v1;
    v3 = outlined bridged method (pb) of @objc INImage._imageData.getter(v2);
    v45 = v4;
    v46 = v3;
    if (v4 >> 60 != 15)
    {
      v43 = v0[38];
      v44 = v0[37];
      v18 = v0[30];
      v19 = v0[31];
      v20 = v0[28];
      v38 = v0[29];
      v39 = v0[39];
      v22 = v0[26];
      v21 = v0[27];
      v42 = v21;
      v23 = v0[25];
      v40 = v20;
      v41 = v0[23];
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_13();
      ImageElement.AspectRatio.init(width:height:)();
      (*(v21 + 16))(v23, v20, v22);
      OUTLINED_FUNCTION_10();
      v24 = OUTLINED_FUNCTION_8_0();
      v25(v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
      v26 = type metadata accessor for _ProtoIdiom();
      OUTLINED_FUNCTION_2_0();
      v28 = v27;
      v29 = OUTLINED_FUNCTION_4_2();
      *(v29 + 16) = xmmword_43980;
      (*(v28 + 104))(v29 + v19, enum case for _ProtoIdiom.default(_:), v26);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v29);
      v30 = OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_12(v30, v31, v32, v33);

      (*(v18 + 8))(v19, v38);
      outlined destroy of ImageElement.AspectRatio?(v23, &_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_43980;
      *(v34 + 56) = type metadata accessor for VisualElement();
      *(v34 + 64) = &protocol witness table for VisualElement;
      __swift_allocate_boxed_opaque_existential_1((v34 + 32));
      ImageElement.asVisualElement()();
      VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
      outlined consume of Data?(v46, v45);

      (*(v43 + 8))(v39, v44);
      (*(v42 + 8))(v40, v22);
      v16 = type metadata accessor for VisualProperty();
      v17 = v41;
      v35 = 0;
      goto LABEL_16;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_1_1(&one-time initialization token for voiceCommands);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.voiceCommands);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      OUTLINED_FUNCTION_11(&dword_0, v9, v10, "image data is empty");
      OUTLINED_FUNCTION_7_0(v8);

      outlined consume of Data?(v46, v45);
    }

    else
    {

      v6 = v2;
    }

    type metadata accessor for VisualProperty();
    v17 = OUTLINED_FUNCTION_9();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_1_1(&one-time initialization token for voiceCommands);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.voiceCommands);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Can't retrieve image;", v14, 2u);
      OUTLINED_FUNCTION_7_0(v14);
    }

    v15 = v0[23];

    v16 = type metadata accessor for VisualProperty();
    v17 = v15;
  }

  v35 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v17, v35, 1, v16);
  OUTLINED_FUNCTION_2_9();

  v36 = v0[1];

  return v36();
}

{
  v14 = v0;
  swift_willThrow();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_1_1(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error retrieving image data %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_7_0(v5);
    OUTLINED_FUNCTION_7_0(v4);
  }

  else
  {
  }

  v9 = *(v0 + 184);
  v10 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  OUTLINED_FUNCTION_2_9();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v5, v6);
  }

  else
  {
    v8 = a2;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v5, a2);
  }
}

uint64_t ImageElement.convertToVisualProperty()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_43980;
  *(v0 + 56) = type metadata accessor for VisualElement();
  *(v0 + 64) = &protocol witness table for VisualElement;
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  ImageElement.asVisualElement()();
  return VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
}

_BYTE *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoIdiom();
  OUTLINED_FUNCTION_2_0();
  v34 = v3;
  v5 = __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v29 - v8;
  if (!*(a1 + 16))
  {
    v10 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMR);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v37 = result + 56;
  v12 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v12 + 32) & ~v12);
  v36 = v34 + 16;
  v13 = (v34 + 8);
  v30 = (v34 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v34 + 72);
    v35 = v11 + 1;
    v15 = *(v34 + 16);
    v15(v38, v32 + v14 * v11, v2);
    lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom, &protocol conformance descriptor for _ProtoIdiom);
    v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = ~(-1 << v10[32]);
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *&v37[8 * v19];
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v10;
      v15(v7, *(v10 + 6) + v18 * v14, v2);
      lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom, &protocol conformance descriptor for _ProtoIdiom);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v13;
      (*v13)(v7, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v10 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v10 = v22;
    }

    v25 = v38;
    *&v37[8 * v19] = v21 | v20;
    result = (*v30)(*(v10 + 6) + v18 * v14, v25, v2);
    v26 = *(v10 + 2);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v10 + 2) = v28;
LABEL_12:
    v11 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc INImage._imageData.getter(void *a1)
{
  v1 = [a1 _imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc INImage._name.getter(void *a1)
{
  v1 = [a1 _name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of ImageElement.AspectRatio?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ProtoIdiom();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_10()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return static ImageElement.pngData(_:darkModeData:imageStyle:aspectRatio:fixedWidth:fixedHeight:idioms:)();
}

id OUTLINED_FUNCTION_13()
{
  v3 = *(v1 + 704);

  return [v0 v3];
}

double DisambiguationItemsComponent.init(items:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for DisambiguationItemsComponent(0);
  v5 = (a2 + *(v4 + 20));
  State.init(wrappedValue:)();
  result = v7;
  *v5 = v7;
  *(v5 + 1) = v8;
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

uint64_t type metadata accessor for DisambiguationItemsComponent(uint64_t a1)
{
  result = type metadata singleton initialization cache for DisambiguationItemsComponent;
  if (!type metadata singleton initialization cache for DisambiguationItemsComponent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DisambiguationItemsComponent.items.getter()
{
  type metadata accessor for DisambiguationItemsComponent(0);
}

uint64_t DisambiguationItemsComponent.body.getter()
{
  v1 = type metadata accessor for DisambiguationItemsComponent(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v9[3] = *(v0 + *(__chkstk_darwin(v1 - 8) + 32));
  outlined init with copy of DisambiguationItemsComponent(v0, v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of DisambiguationItemsComponent(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD014SimpleItemRichC0V_Qo_MR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [WorkflowDataModels.DisambiguationItemModel] and conformance [A], &_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMd, &_sSay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGMR, &protocol conformance descriptor for [A]);
  v6 = type metadata accessor for SimpleItemRichView();
  v7 = lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
  v9[1] = v6;
  v9[2] = v7;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type WorkflowDataModels.DisambiguationItemModel and conformance WorkflowDataModels.DisambiguationItemModel, type metadata accessor for WorkflowDataModels.DisambiguationItemModel, &protocol conformance descriptor for WorkflowDataModels.DisambiguationItemModel);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in DisambiguationItemsComponent.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for DisambiguationItemsComponent(0);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for SimpleItemRichView();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = &protocol witness table for String;
  v13 = *(*a1 + 16);
  v12 = *(*a1 + 24);
  v54 = &type metadata for String;
  v55 = &protocol witness table for String;
  v52 = v13;
  v53 = v12;
  v14 = *(v10 + 40);
  if (v14)
  {
    v15 = *(v10 + 32);
    v16 = &type metadata for String;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v11 = 0;
    v49 = 0;
  }

  v47 = v15;
  v48 = v14;
  v50 = v16;
  v51 = v11;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v17 = OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_thumbnail;

  DisambiguationItemsComponent.getThumbnail(_:)(v10 + v17, v28);
  v27 = v28[0];
  v18 = View.eraseToAnyView()();

  v28[3] = &type metadata for AnyView;
  v28[4] = &protocol witness table for AnyView;
  v28[0] = v18;
  SimpleItemRichView.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:)();
  outlined init with copy of DisambiguationItemsComponent(a2, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v10;
  outlined init with take of DisambiguationItemsComponent(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);

  v21 = v25;
  View.componentTapped(isNavigation:perform:)();

  return (*(v24 + 8))(v9, v21);
}

uint64_t outlined init with copy of DisambiguationItemsComponent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationItemsComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DisambiguationItemsComponent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationItemsComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DisambiguationItemsComponent.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DisambiguationItemsComponent(0);
  OUTLINED_FUNCTION_4(v4);
  OUTLINED_FUNCTION_4_3();

  return closure #1 in DisambiguationItemsComponent.body.getter(a1, v5, a2);
}

uint64_t lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DisambiguationItemsComponent.getThumbnail(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  type metadata accessor for DisambiguationItemsComponent(0);
  OUTLINED_FUNCTION_2_0();
  v31 = v4;
  v32 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_4(v7);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for VisualProperty();
  OUTLINED_FUNCTION_2_0();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_3_5();
  v17 = v16 - v15;
  v35 = 0;
  LOBYTE(v36) = 1;
  v18 = View.eraseToAnyView()();
  outlined init with copy of SimpleItemRichView?(a1, v10, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of StandardActionHandler?(v10, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  }

  else
  {
    (*(v13 + 32))(v17, v10, v11);
    v19 = VisualProperty.asAnyView()();
    outlined init with copy of DisambiguationItemsComponent(v34, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v21 = swift_allocObject();
    outlined init with take of DisambiguationItemsComponent(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    v22 = static Alignment.center.getter();
    v35 = v19;
    v36 = partial apply for closure #1 in DisambiguationItemsComponent.getThumbnail(_:);
    v37 = v21;
    v38 = v22;
    v39 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA19_BackgroundModifierVyAA14GeometryReaderVyACyAA5ColorVAA01_i6ActionH0VySo6CGSizeVAOSQ12CoreGraphicsyHCg_GGGGGMd, &_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA19_BackgroundModifierVyAA14GeometryReaderVyACyAA5ColorVAA01_i6ActionH0VySo6CGSizeVAOSQ12CoreGraphicsyHCg_GGGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>>> and conformance <> ModifiedContent<A, B>();
    v24 = View.eraseToAnyView()();

    (*(v13 + 8))(v17, v11);
    v18 = v24;
  }

  v25 = (v34 + *(v32 + 20));
  v26 = *v25;
  v27 = v25[1];
  v35 = v26;
  v36 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = v18;
  v36 = v41;
  LOBYTE(v37) = v42;
  v38 = v43;
  LOBYTE(v39) = v44;
  v40 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA12_FrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<AnyView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v28 = View.eraseToAnyView()();

  *v33 = v28;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA12_FrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in DisambiguationItemsComponent.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  ActionHandler.wrappedValue.getter();
  static DisambiguationItemsComponent.performAction(item:actionHandler:)(a1, v4);
  return outlined destroy of StandardActionHandler?(v4, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
}

void static DisambiguationItemsComponent.performAction(item:actionHandler:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, "B}");
  OUTLINED_FUNCTION_4(v3);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v4);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  OUTLINED_FUNCTION_4(v7);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  type metadata accessor for Command();
  OUTLINED_FUNCTION_2_0();
  v43 = v11;
  v44 = v12;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  OUTLINED_FUNCTION_4(v16);
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  v20 = type metadata accessor for StandardActionHandler();
  OUTLINED_FUNCTION_2_0();
  v22 = v21;
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_3_5();
  v26 = v25 - v24;
  outlined init with copy of SimpleItemRichView?(a2, v19, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
  {
    (*(v22 + 32))(v26, v19, v20);
    v31 = *(v45 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 8);
    if (*(v45 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 24))
    {
      if (*(v45 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand + 24) != 1)
      {
        *v15 = *(v45 + OBJC_IVAR____TtCO16SiriLinkUIPlugin18WorkflowDataModels23DisambiguationItemModel_invocationCommand);
        *(v15 + 8) = v31;
        *(v15 + 16) = 1;
        v35 = v43;
        v34 = v44;
        (*(v44 + 104))(v15, enum case for Command.machineUtterance(_:), v43);

        goto LABEL_13;
      }

      specialized _dictionaryUpCast<A, B, C, D>(_:)(v32);
    }

    else
    {

      specialized _dictionaryUpCast<A, B, C, D>(_:)(v33);
    }

    static Command.directInvocation(identifier:payload:isNavigation:)();

    v35 = v43;
    v34 = v44;
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_43980;
    *(v36 + 56) = v35;
    *(v36 + 64) = &protocol witness table for Command;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
    (*(v34 + 16))(boxed_opaque_existential_1, v15, v35);
    ActionProperty.init(_:)();
    v38 = type metadata accessor for ActionProperty();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v38);
    v39 = enum case for InteractionType.componentTapped(_:);
    v40 = type metadata accessor for InteractionType();
    OUTLINED_FUNCTION_0_1();
    (*(v41 + 104))(v6, v39, v40);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v40);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of StandardActionHandler?(v6, &_s9SnippetUI15InteractionTypeOSgMd, "B}");
    outlined destroy of StandardActionHandler?(v10, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
    (*(v34 + 8))(v15, v35);
    (*(v22 + 8))(v26, v20);
    return;
  }

  outlined destroy of StandardActionHandler?(v19, &_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.voiceCommands);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "#DisambiguateItemsComponent missing ActionHandler", v30, 2u);
  }
}

uint64_t closure #1 in DisambiguationItemsComponent.getThumbnail(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DisambiguationItemsComponent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = static Color.clear.getter();
  outlined init with copy of DisambiguationItemsComponent(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = outlined init with take of DisambiguationItemsComponent(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *a2 = v7;
  a2[1] = specialized implicit closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:);
  a2[2] = 0;
  a2[3] = partial apply for closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:);
  a2[4] = v9;
  return result;
}

uint64_t partial apply for closure #1 in DisambiguationItemsComponent.getThumbnail(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DisambiguationItemsComponent(0);
  OUTLINED_FUNCTION_4(v2);
  OUTLINED_FUNCTION_4_3();

  return closure #1 in DisambiguationItemsComponent.getThumbnail(_:)(v3, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA19_BackgroundModifierVyAA14GeometryReaderVyACyAA5ColorVAA01_i6ActionH0VySo6CGSizeVAOSQ12CoreGraphicsyHCg_GGGGGMd, &_s7SwiftUI15ModifiedContentVyAA7AnyViewVAA19_BackgroundModifierVyAA14GeometryReaderVyACyAA5ColorVAA01_i6ActionH0VySo6CGSizeVAOSQ12CoreGraphicsyHCg_GGGGGMR);
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA14GeometryReaderVyAA15ModifiedContentVyAA5ColorVAA01_e6ActionD0VySo6CGSizeVAMSQ12CoreGraphicsyHCg_GGGGMd, &_s7SwiftUI19_BackgroundModifierVyAA14GeometryReaderVyAA15ModifiedContentVyAA5ColorVAA01_e6ActionD0VySo6CGSizeVAMSQ12CoreGraphicsyHCg_GGGGMR, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, _BackgroundModifier<GeometryReader<ModifiedContent<Color, _GeometryActionModifier<CGSize>>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void specialized implicit closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:)(void *a1@<X8>)
{
  GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:)(double *a1, uint64_t a2)
{
  type metadata accessor for DisambiguationItemsComponent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  return State.wrappedValue.setter();
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = (*(a1 + 48) + v11);
    v13 = v12[1];
    v14 = (*(a1 + 56) + v11);
    v15 = *v14;
    v16 = v14[1];
    *&v34[0] = *v12;
    *(&v34[0] + 1) = v13;

    outlined copy of Data._Representation(v15, v16);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    outlined init with take of Any(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    outlined init with take of Any(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *&v7[8 * v19];
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v25 = v2[6] + 40 * v20;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    result = outlined init with take of Any(v34, (v2[7] + 32 * v20));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    outlined init with take of Any(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    outlined init with take of Any(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = outlined init with take of Any(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_13FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_14064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionHandler();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for DisambiguationItemsComponent(uint64_t a1)
{
  type metadata accessor for ActionHandler();
  if (v1 <= 0x3F)
  {
    type metadata accessor for State<CGFloat>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [WorkflowDataModels.DisambiguationItemModel](319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for State<CGFloat>()
{
  if (!lazy cache variable for type metadata for State<CGFloat>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<CGFloat>);
    }
  }
}

void type metadata accessor for [WorkflowDataModels.DisambiguationItemModel](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [WorkflowDataModels.DisambiguationItemModel])
  {
    type metadata accessor for WorkflowDataModels.DisambiguationItemModel(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [WorkflowDataModels.DisambiguationItemModel]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ForEach<[WorkflowDataModels.DisambiguationItemModel], ObjectIdentifier, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[WorkflowDataModels.DisambiguationItemModel], ObjectIdentifier, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[WorkflowDataModels.DisambiguationItemModel], ObjectIdentifier, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGSOAA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAL06Simplel4RichN0V_Qo_GMd, &_s7SwiftUI7ForEachVySay16SiriLinkUIPlugin18WorkflowDataModelsO23DisambiguationItemModelCGSOAA4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAL06Simplel4RichN0V_Qo_GMR);
    type metadata accessor for SimpleItemRichView();
    lazy protocol witness table accessor for type SimpleItemRichView and conformance SimpleItemRichView(&lazy protocol witness table cache variable for type SimpleItemRichView and conformance SimpleItemRichView, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[WorkflowDataModels.DisambiguationItemModel], ObjectIdentifier, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  type metadata accessor for DisambiguationItemsComponent(0);
  OUTLINED_FUNCTION_3_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v5 = *(v4 + 64);
  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v5, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:)(double *a1)
{
  v2 = type metadata accessor for DisambiguationItemsComponent(0);
  OUTLINED_FUNCTION_4(v2);
  OUTLINED_FUNCTION_4_3();

  return closure #1 in closure #1 in DisambiguationItemsComponent.getThumbnail(_:)(a1, v3);
}

uint64_t sub_1448C()
{
  type metadata accessor for DisambiguationItemsComponent(0);
  OUTLINED_FUNCTION_3_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v5 = *(v4 + 64);

  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v5, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in DisambiguationItemsComponent.body.getter()
{
  v1 = type metadata accessor for DisambiguationItemsComponent(0);
  OUTLINED_FUNCTION_4(v1);
  v2 = *(v0 + 16);

  return closure #1 in closure #1 in DisambiguationItemsComponent.body.getter(v2);
}

uint64_t type metadata accessor for CustomIntentHandledView(uint64_t a1)
{
  result = type metadata singleton initialization cache for CustomIntentHandledView;
  if (!type metadata singleton initialization cache for CustomIntentHandledView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CustomIntentHandledView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CustomIntentHandledView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.voiceCommands);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#CustomIntentHandledView", v8, 2u);
  }

  outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(v1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  outlined init with take of CustomIntentHandledView(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA4TextVG_07SnippetB008RFButtonK0VQo_SgtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA4TextVG_07SnippetB008RFButtonK0VQo_SgtGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(CustomIntentView, (<<opaque return type of View.buttonStyle<A>(_:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA4TextVG_07SnippetB008RFButtonK0VQo_SgtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA4TextVG_07SnippetB008RFButtonK0VQo_SgtGMR, &protocol conformance descriptor for TupleView<A>);
  return ComponentStack.init(content:)();
}

uint64_t closure #1 in CustomIntentHandledView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for RFButtonStyle();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CustomIntentHandledView(0);
  v6 = v5 - 8;
  v39 = *(v5 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_MR);
  v41 = *(v47 - 8);
  __chkstk_darwin(v47);
  v40 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMR);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = type metadata accessor for CustomIntentView(0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v39 - v23;
  v25 = a1 + *(v6 + 28);
  outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(v25, &v39 + *(v22 + 28) - v23);
  ActionHandler.init()();
  if (*(v25 + *(type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0) + 28)) == 1)
  {
    outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(a1, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v27 = swift_allocObject();
    v28 = outlined init with take of CustomIntentHandledView(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    __chkstk_darwin(v28);
    *(&v39 - 2) = a1;
    Button.init(action:label:)();
    v29 = v44;
    static PrimitiveButtonStyle<>.rfButton.getter();
    lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, &protocol conformance descriptor for Button<A>);
    lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
    v30 = v40;
    v31 = v43;
    v32 = v46;
    View.buttonStyle<A>(_:)();
    (*(v45 + 8))(v29, v32);
    (*(v42 + 8))(v10, v31);
    v33 = v47;
    (*(v41 + 32))(v17, v30, v47);
    v34 = 0;
    v35 = v33;
  }

  else
  {
    v34 = 1;
    v35 = v47;
  }

  __swift_storeEnumTagSinglePayload(v17, v34, 1, v35);
  outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(v24, v21);
  sub_159A0(v17, v15);
  v36 = v48;
  outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(v21, v48);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin16CustomIntentViewV_7SwiftUI0F0PADE11buttonStyleyQrqd__AD015PrimitiveButtonJ0Rd__lFQOyAD0L0VyAD4TextVG_07SnippetH008RFButtonJ0VQo_SgtMd, &_s16SiriLinkUIPlugin16CustomIntentViewV_7SwiftUI0F0PADE11buttonStyleyQrqd__AD015PrimitiveButtonJ0Rd__lFQOyAD0L0VyAD4TextVG_07SnippetH008RFButtonJ0VQo_SgtMR);
  sub_159A0(v15, v36 + *(v37 + 48));
  sub_15A08(v17);
  outlined destroy of CustomIntentView(v24);
  sub_15A08(v15);
  return outlined destroy of CustomIntentView(v21);
}

uint64_t partial apply for closure #1 in CustomIntentHandledView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomIntentHandledView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in CustomIntentHandledView.body.getter(v4, a1);
}

uint64_t closure #1 in closure #1 in CustomIntentHandledView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, "B}");
  __chkstk_darwin(v2 - 8);
  v43 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  __chkstk_darwin(v4 - 8);
  v42 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "B}");
  __chkstk_darwin(v6 - 8);
  v46 = &v41 - v7;
  v8 = type metadata accessor for Command();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ActionElement();
  v12 = *(v44 - 8);
  __chkstk_darwin(v44);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
  v45 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  v21 = a1 + *(type metadata accessor for CustomIntentHandledView(0) + 20);
  v22 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  outlined init with copy of CodableAceObject<SAStartLocalRequest>?(v21 + *(v22 + 24), v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    v23 = &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd;
    v24 = &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR;
    v25 = v17;
    return _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v25, v23, v24);
  }

  (*(v45 + 32))(v20, v17, v18);
  *v11 = CodableAceObject.wrappedValue.getter();
  v11[8] = 1;
  (*(v9 + 104))(v11, enum case for Command.aceCommand(_:), v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
  v26 = type metadata accessor for _ProtoIdiom();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  v41 = xmmword_43980;
  *(v29 + 16) = xmmword_43980;
  (*(v27 + 104))(v29 + v28, enum case for _ProtoIdiom.default(_:), v26);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v29);
  ActionElement.init(_:text:idioms:)();
  v30 = v46;
  ActionHandler.wrappedValue.getter();
  v31 = type metadata accessor for StandardActionHandler();
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    (*(v12 + 8))(v14, v44);
    (*(v45 + 8))(v20, v18);
    v23 = &_s9SnippetUI21StandardActionHandlerVSgMd;
    v24 = "B}";
    v25 = v46;
    return _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v25, v23, v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = v41;
  v34 = v44;
  *(v33 + 56) = v44;
  *(v33 + 64) = &protocol witness table for ActionElement;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v33 + 32));
  (*(v12 + 16))(boxed_opaque_existential_1, v14, v34);
  v36 = v42;
  ActionProperty.init(_:)();
  v37 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v37);
  v38 = type metadata accessor for InteractionType();
  v39 = v43;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v38);
  v40 = v46;
  StandardActionHandler.perform(_:interactionType:)();
  _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v39, &_s9SnippetUI15InteractionTypeOSgMd, "B}");
  _s9SnippetUI21StandardActionHandlerVSgWOhTm_0(v36, &_s10SnippetKit14ActionPropertyVSgMd, &_s10SnippetKit14ActionPropertyVSgMR);
  (*(v12 + 8))(v14, v34);
  (*(v45 + 8))(v20, v18);
  return (*(*(v31 - 8) + 8))(v40, v31);
}

uint64_t closure #2 in closure #1 in CustomIntentHandledView.body.getter@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for CustomIntentHandledView(0);
  type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
  lazy protocol witness table accessor for type String and conformance String();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.headline.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  outlined consume of Text.Storage(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t CustomIntentHandledView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for CustomIntentHandledView(0);
  return outlined init with take of CustomIntentHandledView(a1, a2 + *(v4 + 20));
}

uint64_t outlined init with take of CustomIntentHandledView(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v5(v4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_15730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_0();
  v6 = type metadata accessor for ActionHandler();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_157DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_0();
  v8 = type metadata accessor for ActionHandler();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata completion function for CustomIntentHandledView(uint64_t a1)
{
  result = type metadata accessor for ActionHandler();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of WorkflowDataModels.CustomIntentHandledModel(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v5(v4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_159A0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMR);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_15A08(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_07SnippetB008RFButtonE0VQo_SgMR);
  OUTLINED_FUNCTION_2_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t outlined destroy of CustomIntentView(uint64_t a1)
{
  v2 = type metadata accessor for CustomIntentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for CustomIntentHandledView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  type metadata accessor for ActionHandler();
  OUTLINED_FUNCTION_2_2();
  (*(v5 + 8))(v0 + v3);
  v6 = v0 + v3 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_2_2();
  (*(v7 + 8))(v6);
  v8 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v9 = *(v8 + 20);
  type metadata accessor for CodableINInteraction();
  OUTLINED_FUNCTION_2_2();
  (*(v10 + 8))(v6 + v9);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for VisualProperty();
  if (!__swift_getEnumTagSinglePayload(v6 + v11, 1, v12))
  {
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  v13 = type metadata accessor for WorkflowDataModels.CustomIntentHandledModel(0);

  v14 = *(v13 + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGMR);
  if (!__swift_getEnumTagSinglePayload(v6 + v14, 1, v15))
  {
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in CustomIntentHandledView.body.getter()
{
  v1 = *(type metadata accessor for CustomIntentHandledView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in CustomIntentHandledView.body.getter(v2);
}

uint64_t outlined init with copy of CodableAceObject<SAStartLocalRequest>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMd, &_s10SnippetKit16CodableAceObjectVySo19SAStartLocalRequestCGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *SiriLinkViewModel.encoder.unsafeMutableAddressor()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_9();
    swift_once();
  }

  return &static SiriLinkViewModel.encoder;
}

uint64_t one-time initialization function for encoder(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t *SiriLinkViewModel.decoder.unsafeMutableAddressor()
{
  if (one-time initialization token for decoder != -1)
  {
    OUTLINED_FUNCTION_9_0();
    swift_once();
  }

  return &static SiriLinkViewModel.decoder;
}

uint64_t static SiriLinkViewModel.encoder.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

void *static SiriLinkViewModel.decode(from:)@<X0>(void *a3@<X8>)
{
  if (one-time initialization token for decoder != -1)
  {
    OUTLINED_FUNCTION_9_0();
    swift_once();
  }

  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  result = dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v3)
  {
    return memcpy(a3, __src, 0x51uLL);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel and conformance SiriLinkViewModel);
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriLinkViewModel.base64EncodedString()()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_9();
    swift_once();
  }

  memcpy(__dst, v0, sizeof(__dst));
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    v8 = Data.base64EncodedString(options:)(0);
    countAndFlagsBits = v8._countAndFlagsBits;
    object = v8._object;
    outlined consume of Data._Representation(v6, v7);
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t SiriLinkViewModel.encoded()()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_9();
    swift_once();
  }

  memcpy(__dst, v0, sizeof(__dst));
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  return dispatch thunk of PropertyListEncoder.encode<A>(_:)();
}

uint64_t SiriLinkViewModel.asPatternParams(with:)(uint64_t a1)
{
  v3 = v2;
  v5 = one-time initialization token for encoder;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_1_9();
    swift_once();
  }

  memcpy(__dst, v1, 0x51uLL);
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v3)
  {
  }

  v9 = v6;
  v10 = v7;
  v11 = Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v9, v10);
  v15 = &type metadata for String;
  v14 = v11;
  outlined init with take of Any(&v14, __dst);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__dst, 0x61645F6C65646F6DLL, 0xEA00000000006174, isUniquelyReferenced_nonNull_native);
  return a1;
}

uint64_t SiriLinkViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000000004B640 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000000004B660 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000019 && 0x800000000004B680 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000000004B6A0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001BLL && 0x800000000004B6C0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x654874706D6F7270 && a2 == 0xEC00000072656461)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t SiriLinkViewModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x654874706D6F7270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t SiriLinkViewModel.ArchivedViewModelCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s16SiriLinkUIPlugin0aB9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOs0J3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriLinkViewModel.ArchivedViewModelCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = static SiriLinkUIPlugin.Error.__derived_enum_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys(uint64_t a1)
{
  RunCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();

  return CodingKey.description.getter(a1, RunCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys(uint64_t a1)
{
  RunCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();

  return CodingKey.debugDescription.getter(a1, RunCoding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys(uint64_t a1)
{
  RunWatchCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();

  return CodingKey.description.getter(a1, RunWatchCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys(uint64_t a1)
{
  RunWatchCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();

  return CodingKey.debugDescription.getter(a1, RunWatchCoding);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriLinkViewModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriLinkViewModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriLinkViewModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SiriLinkViewModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.PromptHeaderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.PromptHeaderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SiriLinkViewModel.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v61 = v5;
  v62 = v4;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_11_0();
  v58 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v59 = v9;
  v60 = v8;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_11_0();
  v57 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v55 = v13;
  v56 = v12;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_11_0();
  v54 = v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v52 = v16;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_11_0();
  v51 = v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v49[1] = v19;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v20);
  v22 = v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO08ArchivedgH10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO08ArchivedgH10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v49[0] = v24;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v25);
  v27 = v49 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedEncodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v63 = v28;
  v64 = v29;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v30);
  v32 = v49 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(*(v2 + 80))
  {
    case 1:
      v65 = 1;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();
      v44 = v63;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_14();
      v45 = v50;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_10_0();
      v46(v22, v45);
      return (*(v64 + 8))(v32, v44);
    case 2:
      v65 = 2;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();
      v39 = v51;
      OUTLINED_FUNCTION_7_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_14();
      v40 = v53;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_10_0();
      v41(v39, v40);
      v42 = *(v64 + 8);
      v43 = v32;
      return v42(v43, v22);
    case 3:
      v65 = 3;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();
      v36 = v54;
      OUTLINED_FUNCTION_7_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_14();
      v37 = v56;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v38 = v55;
      goto LABEL_6;
    case 4:
      v65 = 4;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();
      v36 = v57;
      OUTLINED_FUNCTION_7_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_14();
      v37 = v60;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v38 = v59;
LABEL_6:
      v33 = *(v38 + 8);
      v34 = v36;
      goto LABEL_9;
    case 5:
      v65 = 5;
      lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();
      v48 = v58;
      OUTLINED_FUNCTION_7_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v62;
      KeyedEncodingContainer.encode(_:forKey:)();
      v33 = *(v61 + 8);
      v34 = v48;
LABEL_9:
      v35 = v37;
      break;
    default:
      v65 = 0;
      lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();
      OUTLINED_FUNCTION_7_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_5_2();
      lazy protocol witness table accessor for type ArchivedViewModel and conformance ArchivedViewModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_10_0();
      v34 = v27;
      v35 = v23;
      break;
  }

  v33(v34, v35);
  v42 = *(v64 + 8);
  v43 = v32;
  return v42(v43, v22);
}

__n128 SiriLinkViewModel.init(from:)@<Q0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v105 = a2;
  *&v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v104 = v3;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_11_0();
  v109 = v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v103 = v6;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_11_0();
  v108 = v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v102 = v9;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_11_0();
  v107 = v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v101 = v12;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_11_0();
  v106 = v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v100 = v15;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v16);
  v18 = v93 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO08ArchivedgH10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO08ArchivedgH10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v99 = v20;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v21);
  v23 = v93 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMd, &_ss22KeyedDecodingContainerVy16SiriLinkUIPlugin0dE9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLOGMR);
  OUTLINED_FUNCTION_2_0();
  v26 = v25;
  OUTLINED_FUNCTION_2_1();
  __chkstk_darwin(v27);
  v29 = v93 - v28;
  v30 = a1[3];
  v118 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();
  v31 = v111.n128_u64[0];
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
LABEL_8:
    v43 = v118;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    return result;
  }

  v93[2] = v23;
  v93[1] = v19;
  v93[3] = v18;
  v94 = 0;
  v33 = v109;
  v32 = v110;
  v111.n128_u64[0] = v26;
  v34 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC16SiriLinkUIPlugin0jK9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLO_Tt1g5Tm(v34, 0);
  if (v37 == v38 >> 1)
  {
    goto LABEL_7;
  }

  if (v37 >= (v38 >> 1))
  {
    __break(1u);
    JUMPOUT(0x17C40);
  }

  v39 = *(v36 + v37);
  specialized ArraySlice.subscript.getter(v37 + 1, v38 >> 1, v35, v36, v37, v38);
  v41 = v40;
  v43 = v42;
  swift_unknownObjectRelease();
  if (v41 != v43 >> 1)
  {
LABEL_7:
    v47 = type metadata accessor for DecodingError();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v49 = &type metadata for SiriLinkViewModel;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v47 - 8) + 104))(v49, enum case for DecodingError.typeMismatch(_:), v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = OUTLINED_FUNCTION_2_10();
    v51(v50);
    goto LABEL_8;
  }

  switch(v39)
  {
    case 1:
      LOBYTE(v112) = 1;
      RunCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();
      OUTLINED_FUNCTION_3_6(&unk_5A9C8, &v112, v63, v64, RunCoding);
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_6_1();
      v83 = 0;
      v68 = v111.n128_u64[0];
      swift_unknownObjectRelease();
      v84 = OUTLINED_FUNCTION_4_4();
      v85(v84);
      (*(v68 + 8))(v29, v24);
      OUTLINED_FUNCTION_13_0();
      v43 = v118;
      goto LABEL_20;
    case 2:
      LOBYTE(v112) = 2;
      RunWatchCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();
      OUTLINED_FUNCTION_3_6(&unk_5AA58, &v112, v57, v58, RunWatchCoding);
      OUTLINED_FUNCTION_15();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_6_1();
      v83 = 0;
      OUTLINED_FUNCTION_16();
      goto LABEL_18;
    case 3:
      LOBYTE(v112) = 3;
      v59 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();
      OUTLINED_FUNCTION_3_6(&unk_5AAE8, &v112, v60, v61, v59);
      OUTLINED_FUNCTION_15();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_6_1();
      v83 = 0;
      OUTLINED_FUNCTION_16();
      goto LABEL_18;
    case 4:
      LOBYTE(v112) = 4;
      v53 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();
      OUTLINED_FUNCTION_3_6(&unk_5AB78, &v112, v54, v55, v53);
      OUTLINED_FUNCTION_15();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_6_1();
      v83 = 0;
      OUTLINED_FUNCTION_16();
LABEL_18:
      v75 = OUTLINED_FUNCTION_4_4();
      v76(v75);
      v77 = OUTLINED_FUNCTION_2_10();
      v78(v77);
      OUTLINED_FUNCTION_13_0();
      goto LABEL_20;
    case 5:
      LOBYTE(v112) = 5;
      lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();
      v65 = v94;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_15();
      if (v65)
      {
        v66 = OUTLINED_FUNCTION_2_10();
        v67(v66);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v83 = v33;
      v69 = v32;
      v70 = KeyedDecodingContainer.decode(_:forKey:)();
      v108 = v71;
      if (v29)
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_10_0();
        v72(v33, v32);
        v73 = OUTLINED_FUNCTION_2_10();
        v74(v73);
        goto LABEL_9;
      }

      v32 = v70;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_10_0();
      v86(v33, v69);
      v87 = OUTLINED_FUNCTION_2_10();
      v89 = v88(v87);
      v89.n128_u64[0] = v108;
      v111 = v89;
LABEL_20:
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      v90 = v105;
      *v105 = v32;
      v91 = v110;
      *(v90 + 1) = v111;
      v90[3] = v83;
      result = v116;
      v92 = v117;
      *(v90 + 2) = v91;
      *(v90 + 3) = result;
      *(v90 + 4) = v92;
      *(v90 + 80) = v39;
      break;
    default:
      LOBYTE(v112) = 0;
      v44 = lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();
      OUTLINED_FUNCTION_3_6(&unk_5A938, &v112, v45, v46, v44);
      OUTLINED_FUNCTION_15();
      lazy protocol witness table accessor for type ArchivedViewModel and conformance ArchivedViewModel();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_16();
      v79 = OUTLINED_FUNCTION_4_4();
      v80(v79);
      v81 = OUTLINED_FUNCTION_2_10();
      v82(v81);
      v32 = v112;
      v83 = v114;
      v110 = v115;
      v111 = v113;
      goto LABEL_20;
  }

  return result;
}

void protocol witness for Decodable.init(from:) in conformance SiriLinkViewModel(void *a1@<X0>, void *a2@<X8>)
{
  SiriLinkViewModel.init(from:)(a1, __src);
  if (!v2)
  {
    memcpy(a2, __src, 0x51uLL);
  }
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel()
{
  result = lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel;
  if (!lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel;
  if (!lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivedViewModel and conformance ArchivedViewModel()
{
  result = lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel);
  }

  return result;
}

void _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC16SiriLinkUIPlugin0jK9ViewModelO10CodingKeys33_6C7922447F58CAB4C80385A5B991317FLLO_Tt1g5Tm(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_12_0();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for SiriLinkViewModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 81))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriLinkViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriLinkViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriLinkViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x182B0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriLinkViewModel.ArchivedViewModelCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x183D8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

__n128 OUTLINED_FUNCTION_5_2()
{
  *(v3 - 168) = v1;
  *(v3 - 160) = v2;
  result = *(v0 + 16);
  v5 = *(v0 + 32);
  *(v3 - 152) = result;
  *(v3 - 136) = v5;
  return result;
}

void *OUTLINED_FUNCTION_6_1()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

__n128 OUTLINED_FUNCTION_13_0()
{
  v1 = *(v0 - 200);
  result = *(v0 - 160);
  *(v0 - 240) = *(v0 - 176);
  *(v0 - 224) = v1;
  v3 = *(v0 - 144);
  *(v0 - 128) = result;
  *(v0 - 112) = v3;
  return result;
}

unint64_t OUTLINED_FUNCTION_14()
{
  v3 = *(v0 + 64);
  *(v1 - 120) = *(v0 + 48);
  *(v1 - 104) = v3;

  return lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_unknownObjectRelease();
}

uint64_t CustomIntentConfirmationView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CustomIntentConfirmationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.voiceCommands);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#CustomIntentConfirmationView", v8, 2u);
  }

  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(v1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  outlined init with take of CustomIntentConfirmationView(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AD024ConfirmationBinaryButtonD0VtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AD024ConfirmationBinaryButtonD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(LinkActionView, ForEach<[LNChoiceOption], UUID, AnyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(CustomIntentView, ConfirmationBinaryButtonView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AD024ConfirmationBinaryButtonD0VtGMd, &_s7SwiftUI9TupleViewVy16SiriLinkUIPlugin012CustomIntentD0V_AD024ConfirmationBinaryButtonD0VtGMR, &protocol conformance descriptor for TupleView<A>);
  return ComponentStack.init(content:)();
}

uint64_t type metadata accessor for CustomIntentConfirmationView(uint64_t a1)
{
  result = type metadata singleton initialization cache for CustomIntentConfirmationView;
  if (!type metadata singleton initialization cache for CustomIntentConfirmationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in CustomIntentConfirmationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for ConfirmationBinaryButtonView(0);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = type metadata accessor for CustomIntentView(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v29 - v15;
  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(a1, &v29 + *(v14 + 28) - v15);
  ActionHandler.init()();
  v17 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  v18 = *(v17 + 24);
  v19 = (a1 + *(v17 + 20));
  v21 = *v19;
  v20 = v19[1];
  v23 = *(a1 + v18);
  v22 = *(a1 + v18 + 8);

  static ButtonStyle<>.buttonItemStandard.getter();
  ActionHandler.init()();
  v24 = &v9[*(v4 + 28)];
  *v24 = v21;
  *(v24 + 1) = v20;
  v25 = &v9[*(v4 + 32)];
  *v25 = v23;
  *(v25 + 1) = v22;
  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(v16, v13);
  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(v9, v7);
  v26 = v30;
  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(v13, v30);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriLinkUIPlugin16CustomIntentViewV_AA024ConfirmationBinaryButtonF0VtMd, &_s16SiriLinkUIPlugin16CustomIntentViewV_AA024ConfirmationBinaryButtonF0VtMR);
  outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(v7, v26 + *(v27 + 48));
  _s16SiriLinkUIPlugin28ConfirmationBinaryButtonViewVWOhTm_0(v9, type metadata accessor for ConfirmationBinaryButtonView);
  _s16SiriLinkUIPlugin28ConfirmationBinaryButtonViewVWOhTm_0(v16, type metadata accessor for CustomIntentView);
  _s16SiriLinkUIPlugin28ConfirmationBinaryButtonViewVWOhTm_0(v7, type metadata accessor for ConfirmationBinaryButtonView);
  return _s16SiriLinkUIPlugin28ConfirmationBinaryButtonViewVWOhTm_0(v13, type metadata accessor for CustomIntentView);
}

uint64_t sub_19260()
{
  v1 = *(type metadata accessor for CustomIntentConfirmationView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMd, &_s10SnippetKit16CodableAceObjectVySo32SAIntentGroupLaunchAppWithIntentCGMR);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v0 + v3);
  v6 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v7 = *(v6 + 20);
  type metadata accessor for CodableINInteraction();
  OUTLINED_FUNCTION_0_1();
  (*(v8 + 8))(v0 + v3 + v7);
  v9 = *(v6 + 24);
  v10 = type metadata accessor for VisualProperty();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in CustomIntentConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomIntentConfirmationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in CustomIntentConfirmationView.body.getter(v4, a1);
}

uint64_t outlined init with take of CustomIntentConfirmationView(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v5(v4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_19544(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v5 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_1959C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v5 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t type metadata completion function for CustomIntentConfirmationView(uint64_t a1)
{
  result = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of WorkflowDataModels.CustomIntentConfirmationModel(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_0();
  v5(v4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t _s16SiriLinkUIPlugin28ConfirmationBinaryButtonViewVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t AutoShortcutFirstRunComponentView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v5 = v2[10];
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA08_PaddingG0VG_Qo__AA7DividerVAPyAPyAA6HStackVyAIyAkLEAmNQrSb_tFQOyAPyAPy16SiriLinkUIPlugin04IconD0VA_GA_G_Qo__AkLEAmNQrSb_tFQOyAA0F0VyAIyARSg_AA7ForEachVys10ArraySliceVySSGSSARGAPyAA4LinkVyARGATyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGA_GAA010_FixedSizeG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA08_PaddingG0VG_Qo__AA7DividerVAPyAPyAA6HStackVyAIyAkLEAmNQrSb_tFQOyAPyAPy16SiriLinkUIPlugin04IconD0VA_GA_G_Qo__AkLEAmNQrSb_tFQOyAA0F0VyAIyARSg_AA7ForEachVys10ArraySliceVySSGSSARGAPyAA4LinkVyARGATyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGA_GAA010_FixedSizeG0VGtGGMR);
  closure #1 in AutoShortcutFirstRunComponentView.body.getter(v2, (a2 + *(v6 + 44)));
  v7 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVACyACyAA6HStackVyAGyAiJEAkLQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAWGAWG_Qo__AiJEAkLQrSb_tFQOyAEyAGyANSg_AA7ForEachVys10ArraySliceVySSGSSANGACyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGAWGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVACyACyAA6HStackVyAGyAiJEAkLQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAWGAWG_Qo__AiJEAkLQrSb_tFQOyAEyAGyANSg_AA7ForEachVys10ArraySliceVySSGSSANGACyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGAWGMR) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVACyACyAA6HStackVyAGyAiJEAkLQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAWGAWG_Qo__AiJEAkLQrSb_tFQOyAEyAGyANSg_AA7ForEachVys10ArraySliceVySSGSSANGACyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGAWGAWGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVACyACyAA6HStackVyAGyAiJEAkLQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAWGAWG_Qo__AiJEAkLQrSb_tFQOyAEyAGyANSg_AA7ForEachVys10ArraySliceVySSGSSANGACyAA4LinkVyANGAPyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAWGAA010_FixedSizeX0VGtGGAWGAWGMR);
  v27 = a2 + *(result + 36);
  *v27 = v17;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t closure #1 in AutoShortcutFirstRunComponentView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyALy16SiriLinkUIPlugin04IconE0VAA14_PaddingLayoutVGAQG_Qo__AgHEAiJQrSb_tFQOyAA6VStackVyAEyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGALyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyALy16SiriLinkUIPlugin04IconE0VAA14_PaddingLayoutVGAQG_Qo__AgHEAiJQrSb_tFQOyAA6VStackVyAEyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGALyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGMR);
  __chkstk_darwin(v3 - 8);
  v82 = (&v76 - v4);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGMR);
  __chkstk_darwin(v81);
  v80 = &v76 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGAA010_FixedSizeT0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA0G0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyACyACy16SiriLinkUIPlugin04IconG0VAA14_PaddingLayoutVGAQG_Qo__AiJEAkLQrSb_tFQOyAA6VStackVyAGyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSAXGACyAA0P0VyAXGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGAQGAA010_FixedSizeT0VGMR);
  v6 = __chkstk_darwin(v79);
  v93 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v78 = &v76 - v9;
  __chkstk_darwin(v8);
  v92 = &v76 - v10;
  v11 = type metadata accessor for Divider();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = __chkstk_darwin(v11);
  v91 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v88 = &v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  __chkstk_darwin(v15 - 8);
  v17 = &v76 - v16;
  v18 = type metadata accessor for Font.TextStyle();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo_MR);
  v90 = *(v77 - 8);
  v22 = __chkstk_darwin(v77);
  v89 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v87 = &v76 - v24;
  v83 = a1;
  memcpy(v97, a1, sizeof(v97));
  __dst[0] = v97[4];
  __dst[1] = v97[5];
  lazy protocol witness table accessor for type String and conformance String();

  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  (*(v19 + 104))(v21, enum case for Font.TextStyle.headline(_:), v18);
  v30 = type metadata accessor for Font.Design();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v30);
  static Font.Weight.semibold.getter();
  static Font.system(_:design:weight:)();
  outlined destroy of StandardActionHandler?(v17, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  (*(v19 + 8))(v21, v18);
  v31 = Text.font(_:)();
  v33 = v32;
  LOBYTE(v21) = v34;
  v36 = v35;

  outlined consume of Text.Storage(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v25) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v96 = v21 & 1;
  v95 = 0;
  v94[0] = v31;
  v94[1] = v33;
  LOBYTE(v94[2]) = v21 & 1;
  v94[3] = v36;
  v94[4] = KeyPath;
  v94[5] = 0x4014000000000000;
  LOBYTE(v94[6]) = v25;
  v94[7] = v38;
  v94[8] = v39;
  v94[9] = v40;
  v94[10] = v41;
  LOBYTE(v94[11]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Divider, ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>, _PaddingLayout>, _FixedSizeLayout>)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  v42 = v87;
  View.ambientDrawable(renderWithDrawingGroup:)();
  memcpy(__dst, v94, 0x59uLL);
  outlined destroy of StandardActionHandler?(__dst, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMR);
  v43 = v88;
  v44 = Divider.init()();
  v45 = *(AutoShortcutAppPhrasesViewModel.displayPhrases.getter(v44) + 2);

  if (v45 == 1)
  {
    v46 = static VerticalAlignment.center.getter();
  }

  else
  {
    v46 = static VerticalAlignment.top.getter();
  }

  v48 = v82;
  v47 = v83;
  v49 = v83[10];
  *v82 = v46;
  v48[1] = v49;
  *(v48 + 16) = 0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAPy16SiriLinkUIPlugin04IconD0VAA08_PaddingG0VGAUG_Qo__AkLEAmNQrSb_tFQOyAA6VStackVyAIyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSA0_GAPyAA0S0VyA0_GAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAPy16SiriLinkUIPlugin04IconD0VAA08_PaddingG0VGAUG_Qo__AkLEAmNQrSb_tFQOyAA6VStackVyAIyAA4TextVSg_AA7ForEachVys10ArraySliceVySSGSSA0_GAPyAA0S0VyA0_GAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGMR);
  closure #1 in closure #1 in AutoShortcutFirstRunComponentView.body.getter(v47, v48 + *(v50 + 44));
  LOBYTE(v47) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v80;
  outlined init with take of HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>();
  v60 = &v59[*(v81 + 36)];
  *v60 = v47;
  *(v60 + 1) = v52;
  *(v60 + 2) = v54;
  *(v60 + 3) = v56;
  *(v60 + 4) = v58;
  v60[40] = 0;
  v61 = v78;
  outlined init with take of HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>();
  *&v61[*(v79 + 36)] = 256;
  outlined init with take of HStack<TupleView<(<<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, <<opaque return type of View.ambientDrawable(renderWithDrawingGroup:)>>.0, Spacer)>>();
  v62 = v89;
  v63 = *(v90 + 16);
  v64 = v77;
  v63(v89, v42, v77);
  v65 = v84;
  v66 = *(v84 + 16);
  v67 = v43;
  v68 = v85;
  v66(v91, v67, v85);
  sub_1BF14();
  v69 = v86;
  v63(v86, v62, v64);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVAHyAHyAA6HStackVyAA05TupleC0VyAcDEAeFQrSb_tFQOyAHyAHy16SiriLinkUIPlugin04IconC0VASGASG_Qo__AcDEAeFQrSb_tFQOyAA6VStackVyA_yAJSg_AA7ForEachVys10ArraySliceVySSGSSAJGAHyAA4LinkVyAJGALyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGASGAA010_FixedSizeV0VGtMd, &_s7SwiftUI4ViewP07SnippetB0E15ambientDrawable22renderWithDrawingGroupQrSb_tFQOyAA15ModifiedContentVyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVG_Qo__AA7DividerVAHyAHyAA6HStackVyAA05TupleC0VyAcDEAeFQrSb_tFQOyAHyAHy16SiriLinkUIPlugin04IconC0VASGASG_Qo__AcDEAeFQrSb_tFQOyAA6VStackVyA_yAJSg_AA7ForEachVys10ArraySliceVySSGSSAJGAHyAA4LinkVyAJGALyAA4FontVSgGGSgtGG_Qo_AA6SpacerVtGGASGAA010_FixedSizeV0VGtMR);
  v71 = v91;
  v66(&v69[*(v70 + 48)], v91, v68);
  v72 = v93;
  sub_1BF14();
  sub_1BF78(v92);
  v73 = *(v65 + 8);
  v73(v88, v68);
  v74 = *(v90 + 8);
  v74(v87, v64);
  sub_1BF78(v72);
  v73(v71, v68);
  return (v74)(v89, v64);
}