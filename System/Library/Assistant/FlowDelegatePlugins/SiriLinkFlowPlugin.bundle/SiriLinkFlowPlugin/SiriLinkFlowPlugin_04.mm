uint64_t CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 272) = v1;

  if (!v1)
  {
    *(v5 + 280) = a1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

void *CustomIntentContinueInAppWithDialogStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t CustomIntentContinueInAppWithDialogStrategy.__deallocating_deinit()
{
  CustomIntentContinueInAppWithDialogStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ContinueInAppHandoffToCompanionFlowStrategyAsync.makeContinueInAppHandoffResponse(intentResolutionRecord:) in conformance CustomIntentContinueInAppWithDialogStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 112) + **(**v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v8(a1, a2);
}

unint64_t lazy protocol witness table accessor for type CustomIntentContinueInAppWithDialogStrategy and conformance CustomIntentContinueInAppWithDialogStrategy(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type CustomIntentContinueInAppWithDialogStrategy and conformance CustomIntentContinueInAppWithDialogStrategy;
  if (!lazy protocol witness table cache variable for type CustomIntentContinueInAppWithDialogStrategy and conformance CustomIntentContinueInAppWithDialogStrategy)
  {
    type metadata accessor for CustomIntentContinueInAppWithDialogStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentContinueInAppWithDialogStrategy and conformance CustomIntentContinueInAppWithDialogStrategy);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_12()
{
}

Swift::Bool __swiftcall INIntent.isBooleanParameter(parameterName:)(Swift::String parameterName)
{
  v2 = OUTLINED_FUNCTION_0_12([v1 _codableDescription]);

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3 && (v4 = outlined bridged method (pb) of @objc INCodableObjectAttribute.typeName.getter(v3), v5))
    {
      if (v4 == 0x6E61656C6F6F42 && v5 == 0xE700000000000000)
      {
        v7 = 1;
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t INIntent.BOOLeanAttributeMetadata(parameterName:)()
{
  v1 = OUTLINED_FUNCTION_0_12([v0 _codableDescription]);

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 metadata];

      if (v3)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

id outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byKeyPath:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 attributeByKeyPath:v4];

  return v5;
}

uint64_t outlined bridged method (pb) of @objc INCodableObjectAttribute.typeName.getter(void *a1)
{
  v1 = [a1 typeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id OUTLINED_FUNCTION_0_12(void *a1)
{

  return outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byKeyPath:)(v2, v1, a1);
}

uint64_t SiriLinkViewModel.encoded()()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_16();
    swift_once();
  }

  memcpy(__dst, v0, sizeof(__dst));
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  return dispatch thunk of PropertyListEncoder.encode<A>(_:)();
}

uint64_t *SiriLinkViewModel.encoder.unsafeMutableAddressor()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_16();
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
    OUTLINED_FUNCTION_13_7();
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
    OUTLINED_FUNCTION_13_7();
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriLinkViewModel.base64EncodedString()()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_16();
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

uint64_t SiriLinkViewModel.asPatternParams(with:)(uint64_t a1)
{
  v3 = v2;
  v5 = one-time initialization token for encoder;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_1_16();
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
  v14 = &type metadata for String;
  v13 = v11;
  outlined init with take of Any(&v13, __dst);
  swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__dst, 0x61645F6C65646F6DLL, 0xEA00000000006174);
  return a1;
}

uint64_t SiriLinkViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000000231340 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000000231360 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000019 && 0x8000000000231380 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000000002313A0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001BLL && 0x80000000002313C0 == a2;
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

uint64_t _s18SiriLinkFlowPlugin0aB9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOs0K3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriLinkViewModel.ArchivedViewModelCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = default argument 3 of INIntentResolutionResult.getDisplayHints(intent:parameter:locale:shouldIncludeOrdinalReference:)();
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
  result = variable initialization expression of WFChooseFromListPromptFlowStrategy.WINDOWSIZE();
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v61 = v5;
  v62 = v4;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_16_9();
  v58 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v59 = v9;
  v60 = v8;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_16_9();
  v57 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v55 = v13;
  v56 = v12;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_16_9();
  v54 = v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v52 = v16;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_16_9();
  v51 = v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v49[1] = v19;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v20);
  v22 = v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO08ArchivedhI10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO08ArchivedhI10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v49[0] = v24;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v25);
  v27 = v49 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v63 = v28;
  v64 = v29;
  OUTLINED_FUNCTION_29_0();
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
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_19_3();
      v45 = v50;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_14_6();
      v46(v22, v45);
      return (*(v64 + 8))(v32, v44);
    case 2:
      v65 = 2;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();
      v39 = v51;
      OUTLINED_FUNCTION_10_9();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_19_3();
      v40 = v53;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_14_6();
      v41(v39, v40);
      v42 = *(v64 + 8);
      v43 = v32;
      return v42(v43, v22);
    case 3:
      v65 = 3;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();
      v36 = v54;
      OUTLINED_FUNCTION_10_9();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_19_3();
      v37 = v56;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v38 = v55;
      goto LABEL_6;
    case 4:
      v65 = 4;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();
      v36 = v57;
      OUTLINED_FUNCTION_10_9();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_19_3();
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
      OUTLINED_FUNCTION_10_9();
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
      OUTLINED_FUNCTION_10_9();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_6_9();
      lazy protocol witness table accessor for type ArchivedViewModel and conformance ArchivedViewModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_14_6();
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
  *&v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v104 = v3;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_9();
  v109 = v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v103 = v6;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_16_9();
  v108 = v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v102 = v9;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_16_9();
  v107 = v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v101 = v12;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_16_9();
  v106 = v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v100 = v15;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v16);
  v18 = v93 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO08ArchivedhI10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO08ArchivedhI10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v99 = v20;
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v21);
  v23 = v93 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1();
  v26 = v25;
  OUTLINED_FUNCTION_29_0();
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
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriLinkFlowPlugin0jK9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLO_Tt1g5Tm(v34, 0);
  if (v37 == v38 >> 1)
  {
    goto LABEL_7;
  }

  if (v37 >= (v38 >> 1))
  {
    __break(1u);
    JUMPOUT(0x68FB4);
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
    v50 = OUTLINED_FUNCTION_2_13();
    v51(v50);
    goto LABEL_8;
  }

  switch(v39)
  {
    case 1:
      LOBYTE(v112) = 1;
      RunCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();
      OUTLINED_FUNCTION_4_13(&unk_29A008, &v112, v63, v64, RunCoding);
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_7_7();
      v83 = 0;
      v68 = v111.n128_u64[0];
      swift_unknownObjectRelease();
      v84 = OUTLINED_FUNCTION_5_6();
      v85(v84);
      (*(v68 + 8))(v29, v24);
      OUTLINED_FUNCTION_18_7();
      v43 = v118;
      goto LABEL_20;
    case 2:
      LOBYTE(v112) = 2;
      RunWatchCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();
      OUTLINED_FUNCTION_4_13(&unk_29A098, &v112, v57, v58, RunWatchCoding);
      OUTLINED_FUNCTION_20_5();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_7_7();
      v83 = 0;
      OUTLINED_FUNCTION_24_7();
      goto LABEL_18;
    case 3:
      LOBYTE(v112) = 3;
      v59 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();
      OUTLINED_FUNCTION_4_13(&unk_29A128, &v112, v60, v61, v59);
      OUTLINED_FUNCTION_20_5();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_7_7();
      v83 = 0;
      OUTLINED_FUNCTION_24_7();
      goto LABEL_18;
    case 4:
      LOBYTE(v112) = 4;
      v53 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();
      OUTLINED_FUNCTION_4_13(&unk_29A1B8, &v112, v54, v55, v53);
      OUTLINED_FUNCTION_20_5();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_7_7();
      v83 = 0;
      OUTLINED_FUNCTION_24_7();
LABEL_18:
      v75 = OUTLINED_FUNCTION_5_6();
      v76(v75);
      v77 = OUTLINED_FUNCTION_2_13();
      v78(v77);
      OUTLINED_FUNCTION_18_7();
      goto LABEL_20;
    case 5:
      LOBYTE(v112) = 5;
      lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();
      v65 = v94;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_20_5();
      if (v65)
      {
        v66 = OUTLINED_FUNCTION_2_13();
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
        OUTLINED_FUNCTION_14_6();
        v72(v33, v32);
        v73 = OUTLINED_FUNCTION_2_13();
        v74(v73);
        goto LABEL_9;
      }

      v32 = v70;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_14_6();
      v86(v33, v69);
      v87 = OUTLINED_FUNCTION_2_13();
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
      OUTLINED_FUNCTION_4_13(&unk_299F78, &v112, v45, v46, v44);
      OUTLINED_FUNCTION_20_5();
      lazy protocol witness table accessor for type ArchivedViewModel and conformance ArchivedViewModel();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_24_7();
      v79 = OUTLINED_FUNCTION_5_6();
      v80(v79);
      v81 = OUTLINED_FUNCTION_2_13();
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

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_8(a1, a2, a3);
  OUTLINED_FUNCTION_3_10();
  if (v7)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_23_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo8NSBundleCGMd, &_ss17_NativeDictionaryVySSSo8NSBundleCGMR);
  if (OUTLINED_FUNCTION_11_6())
  {
    OUTLINED_FUNCTION_21_7();
    OUTLINED_FUNCTION_9_9();
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v8;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    OUTLINED_FUNCTION_22_5();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_15_8();
    specialized _NativeDictionary._insert(at:key:value:)(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_22_5();
  }
}

{
  OUTLINED_FUNCTION_8_8(a1, a2, a3);
  OUTLINED_FUNCTION_3_10();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_23_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo9DMFPolicyVGMd, &_ss17_NativeDictionaryVySSSo9DMFPolicyVGMR);
  if (OUTLINED_FUNCTION_11_6())
  {
    OUTLINED_FUNCTION_21_7();
    OUTLINED_FUNCTION_9_9();
    if (!v9)
    {
      goto LABEL_12;
    }

    v6 = v8;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    OUTLINED_FUNCTION_22_5();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_15_8();
    specialized _NativeDictionary._insert(at:key:value:)(v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_22_5();
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_3_10();
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd, &_ss17_NativeDictionaryVys11AnyHashableVypGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_9_9();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  v16 = *v4;
  if (v13)
  {
    v17 = (*(v16 + 56) + 32 * v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);

    return outlined init with take of Any(a1, v17);
  }

  else
  {
    outlined init with copy of AnyHashable(a2, v19);
    return specialized _NativeDictionary._insert(at:key:value:)(v12, v19, a1, v16);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_3_10();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_23_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_11_6())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    OUTLINED_FUNCTION_9_9();
    if (!v12)
    {
      goto LABEL_14;
    }

    v5 = v11;
  }

  v13 = *v3;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(v13 + 56) + 32 * v5));
    OUTLINED_FUNCTION_22_5();

    return outlined init with take of Any(v14, v15);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v5, a2, a3, a1, v13, v10);
    OUTLINED_FUNCTION_22_5();
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

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  OUTLINED_FUNCTION_3_10();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v12))
  {
    goto LABEL_5;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v6;
  if (v17)
  {
    v21 = (*(v20 + 56) + 16 * v16);
    v22 = *v21;
    v23 = v21[1];
    *v21 = a1;
    v21[1] = a2;

    return outlined consume of Data._Representation(v22, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a3, a4, a1, a2, v20);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2)
{
  v5 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  OUTLINED_FUNCTION_7_1();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10SnippetKit14RFFeatureFlagsO17ResponseFrameworkOSbGMd, &_ss17_NativeDictionaryVy10SnippetKit14RFFeatureFlagsO17ResponseFrameworkOSbGMR);
  result = OUTLINED_FUNCTION_11_6();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v18 = *v2;
  if (v15)
  {
    *(*(v18 + 56) + v14) = a1 & 1;
  }

  else
  {
    (*(v7 + 16))(v10, a2, v5);
    return specialized _NativeDictionary._insert(at:key:value:)(v14, v10, a1 & 1, v18);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_8(a1, a2, a3);
  OUTLINED_FUNCTION_3_10();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_23_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSDySSypGGMd, &_ss17_NativeDictionaryVySSSDySSypGGMR);
  if (OUTLINED_FUNCTION_11_6())
  {
    OUTLINED_FUNCTION_21_7();
    OUTLINED_FUNCTION_9_9();
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v8;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    OUTLINED_FUNCTION_22_5();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_15_8();
    specialized _NativeDictionary._insert(at:key:value:)(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_22_5();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_3_10();
  if (v11)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriLinkFlowPlugin0cdE12FeatureFlagsOSbGMd, &_ss17_NativeDictionaryVy18SiriLinkFlowPlugin0cdE12FeatureFlagsOSbGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_9_9();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  if (v13)
  {
    *(*(*v4 + 56) + v12) = a1 & 1;
    OUTLINED_FUNCTION_22_5();
  }

  else
  {
    OUTLINED_FUNCTION_22_5();

    specialized _NativeDictionary._insert(at:key:value:)(v16, v17, v18, v19);
  }
}

void _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriLinkFlowPlugin0jK9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLO_Tt1g5Tm(uint64_t result, uint64_t a2)
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
    OUTLINED_FUNCTION_17_7();
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
        JUMPOUT(0x69E7CLL);
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
      JUMPOUT(0x69FA8);
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

uint64_t OUTLINED_FUNCTION_4_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

__n128 OUTLINED_FUNCTION_6_9()
{
  *(v3 - 168) = v1;
  *(v3 - 160) = v2;
  result = *(v0 + 16);
  v5 = *(v0 + 32);
  *(v3 - 152) = result;
  *(v3 - 136) = v5;
  return result;
}

void *OUTLINED_FUNCTION_7_7()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

unint64_t OUTLINED_FUNCTION_8_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
}

BOOL OUTLINED_FUNCTION_11_6()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

__n128 OUTLINED_FUNCTION_18_7()
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

unint64_t OUTLINED_FUNCTION_19_3()
{
  v3 = *(v0 + 64);
  *(v1 - 120) = *(v0 + 48);
  *(v1 - 104) = v3;

  return lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
}

unint64_t OUTLINED_FUNCTION_21_7()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_24_7()
{

  return swift_unknownObjectRelease();
}

Swift::String_optional __swiftcall SiriWorkflowRunnerInput.getShortcutName()()
{
  if (*(v0 + 64) == 3)
  {
    v1 = *(v0 + 16);
    v0 += 8;
  }

  else
  {
    if (*(v0 + 64))
    {
      v2 = 0;
      v1 = 0;
      goto LABEL_7;
    }

    v1 = *(v0 + 8);
  }

  v2 = *v0;

LABEL_7:
  v3 = v2;
  v4 = v1;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

id @nonobjc WFSiriWorkflowRunnerClient.delegate.getter()
{
  v1 = [v0 delegate];

  return v1;
}

uint64_t @nonobjc WFSiriWorkflowRunnerClient.delegate.setter(uint64_t a1)
{
  [v1 setDelegate:a1];

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for SiriRunnerClient.delegate.modify in conformance WFSiriWorkflowRunnerClient(void *a1))(uint64_t *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 delegate];
  return protocol witness for SiriRunnerClient.delegate.modify in conformance WFSiriWorkflowRunnerClient;
}

uint64_t protocol witness for SiriRunnerClient.delegate.modify in conformance WFSiriWorkflowRunnerClient(uint64_t *a1)
{
  [a1[1] setDelegate:*a1];

  return swift_unknownObjectRelease();
}

id @nonobjc WFSiriWorkflowRunnerClient.siriExecutionMetrics.getter()
{
  v1 = [v0 siriExecutionMetrics];

  return v1;
}

void @nonobjc WFSiriWorkflowRunnerClient.siriExecutionMetrics.setter(void *a1)
{
  [v1 setSiriExecutionMetrics:a1];
}

void (*protocol witness for SiriRunnerClient.siriExecutionMetrics.modify in conformance WFSiriWorkflowRunnerClient(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 siriExecutionMetrics];
  return protocol witness for SiriRunnerClient.siriExecutionMetrics.modify in conformance WFSiriWorkflowRunnerClient;
}

void protocol witness for SiriRunnerClient.siriExecutionMetrics.modify in conformance WFSiriWorkflowRunnerClient(id *a1)
{
  v1 = *a1;
  [a1[1] setSiriExecutionMetrics:?];
}

id @nonobjc WFSiriWorkflowRunnerClient.pauseRunningShortcut()()
{
  v1 = [v0 pauseRunningShortcut];

  return v1;
}

id SiriWorkflowRunnerInput.toWFSiriWorkflowRunnerClient(deviceState:aceServiceInvoker:dialogState:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 56);
  switch(*(v3 + 64))
  {
    case 1:
      v116 = *(v3 + 48);
      v88 = one-time initialization token for voiceCommands;
      v114 = v9;
      v113 = v10;

      if (v88 != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v118 = a1;
      v89 = type metadata accessor for Logger();
      __swift_project_value_buffer(v89, static Logger.voiceCommands);

      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v119[0] = v93;
        *v92 = 136315394;
        v94 = OUTLINED_FUNCTION_2_14();
        *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v96);
        *(v92 + 12) = 2080;
        *(v92 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v119);
        _os_log_impl(&dword_0, v90, v91, "#SiriWorkflowRunner creating async stream for app shortcut with actionIdentifier: %s and bundleId: %s", v92, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_0(v93);
        OUTLINED_FUNCTION_15_0(v92);
      }

      v97 = objc_allocWithZone(LNFullyQualifiedActionIdentifier);

      v98 = OUTLINED_FUNCTION_2_14();
      v100 = @nonobjc LNFullyQualifiedActionIdentifier.init(actionIdentifier:bundleIdentifier:)(v98, v99, v7, v8);

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = OUTLINED_FUNCTION_48();
        v104 = swift_slowAlloc();
        v119[1] = v11;
        v120 = v104;
        *v103 = 136315138;
        v105 = v116;
        v119[0] = v116;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v106 = String.init<A>(describing:)();
        v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v120);

        *(v103 + 4) = v108;
        _os_log_impl(&dword_0, v101, v102, "#SiriWorkflowRunner runAppShortcut with phrase: %s", v103, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        OUTLINED_FUNCTION_15_0(v104);
        OUTLINED_FUNCTION_15_0(v103);
      }

      else
      {

        v105 = v116;
      }

      v109 = v118[4];
      v110 = OUTLINED_FUNCTION_3_11(v118);
      v111 = DeviceState.asWFSiriRunSource()(v110, v109);
      v112 = objc_allocWithZone(WFSiriWorkflowRunnerClient);
      v64 = v100;
      v65 = v105;
      v66 = v11;
      v67 = v111;
      v69 = v113;
      v68 = v114;
      goto LABEL_25;
    case 2:
      v35 = one-time initialization token for voiceCommands;
      v36 = *(v3 + 48);

      v37 = v36;
      v38 = v11;
      if (v35 != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v117 = a1;
      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.voiceCommands);

      v40 = v38;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v115 = v37;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v119[0] = v44;
        *v43 = 136315394;
        v45 = [v40 identifier];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v119);

        *(v43 + 4) = v49;
        *(v43 + 12) = 2080;
        v50 = OUTLINED_FUNCTION_2_14();
        *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v52);
        _os_log_impl(&dword_0, v41, v42, "#WorkflowRunnerFlow initialized with app shortcut (generalized) action: %s, bundleId: %s", v43, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_0(v44);
        v53 = v43;
        v37 = v115;
        OUTLINED_FUNCTION_15_0(v53);
      }

      v54 = [v40 identifier];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = objc_allocWithZone(LNFullyQualifiedActionIdentifier);
      v59 = @nonobjc LNFullyQualifiedActionIdentifier.init(actionIdentifier:bundleIdentifier:)(v55, v57, v6, v5);
      v60 = v117[4];
      v61 = OUTLINED_FUNCTION_3_11(v117);
      v62 = DeviceState.asWFSiriRunSource()(v61, v60);
      v63 = objc_allocWithZone(WFSiriWorkflowRunnerClient);
      v64 = v59;
      v65 = 0;
      v66 = 0;
      v67 = v62;
      v68 = v40;
      v69 = v37;
LABEL_25:
      result = @nonobjc WFSiriWorkflowRunnerClient.init(autoShortcutIdentifier:phrase:runSource:action:metadata:)(v64, v65, v66, v67, v68, v69);
      break;
    case 3:
      v70 = one-time initialization token for voiceCommands;
      v71 = v6;
      if (v70 != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, static Logger.voiceCommands);
      v73 = v71;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = OUTLINED_FUNCTION_48();
        v77 = a1;
        v78 = swift_slowAlloc();
        *v76 = 138412290;
        *(v76 + 4) = v73;
        *v78 = v6;
        v79 = v73;
        OUTLINED_FUNCTION_5_7(&dword_0, v80, v81, "#SiriWorkflowRunner creating async stream for pausedShortcut: %@");
        outlined destroy of NSObject?(v78);
        v82 = v78;
        a1 = v77;
        OUTLINED_FUNCTION_15_0(v82);
        OUTLINED_FUNCTION_15_0(v76);
      }

      v83 = OUTLINED_FUNCTION_4_14();
      type metadata accessor for WFSiriWorkflowRunnerClient();
      v84 = a1;
      v85 = a1[4];
      v86 = OUTLINED_FUNCTION_3_11(v84);
      v87 = DeviceState.asWFSiriRunSource()(v86, v85);
      result = WFSiriWorkflowRunnerClient.__allocating_init(pausedShortcutData:runSource:options:)(v73, v87, v83);
      break;
    default:
      v13 = *(*a3 + 216);

      v14 = OUTLINED_FUNCTION_2_14();
      v13(v14);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.voiceCommands);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      outlined destroy of SiriWorkflowRunnerInput(v4);
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_48();
        v19 = a1;
        v20 = swift_slowAlloc();
        v119[0] = v20;
        *v18 = 136315138;
        v21 = OUTLINED_FUNCTION_2_14();
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v23);
        OUTLINED_FUNCTION_5_7(&dword_0, v24, v25, "#SiriWorkflowRunner creating async stream for shortcut: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        v26 = v20;
        a1 = v19;
        OUTLINED_FUNCTION_15_0(v26);
        OUTLINED_FUNCTION_15_0(v18);
      }

      v27 = OUTLINED_FUNCTION_4_14();
      v28 = a1[4];
      v29 = OUTLINED_FUNCTION_3_11(a1);
      v30 = DeviceState.asWFSiriRunSource()(v29, v28);
      v31 = objc_allocWithZone(WFSiriWorkflowRunnerClient);
      v32 = OUTLINED_FUNCTION_2_14();
      result = @nonobjc WFSiriWorkflowRunnerClient.init(workflowName:runSource:options:)(v32, v33, v30, v27);
      break;
  }

  return result;
}

id AceServiceInvokerAsync.toWFSiriWorkflowRunnerClientOption(deviceState:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((dispatch thunk of DeviceState.isHomePod.getter() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SiriWorkflowRunner the request is happening on homepod", v4, 2u);
    OUTLINED_FUNCTION_15_0(v4);
  }

  OUTLINED_FUNCTION_6_10();
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v5 = dispatch thunk of PeerInfoProviding.getMediaRouteIdentifier()();
  if (!v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
LABEL_13:
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v7 = v5;
  v8 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(v31);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_48();
    v12 = swift_slowAlloc();
    v31[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v31);
    _os_log_impl(&dword_0, v9, v10, "#SiriWorkflowRunner got airplayRouteId: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_15_0(v12);
    OUTLINED_FUNCTION_15_0(v11);
  }

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v14 = v13;
  v15 = v13[2];
  if (v15 >= v13[3] >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v14 = v30;
  }

  v14[2] = v15 + 1;
  v16 = &v14[2 * v15];
  v16[4] = v7;
  v16[5] = v8;
LABEL_14:
  OUTLINED_FUNCTION_6_10();
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v17 = dispatch thunk of PeerInfoProviding.getIdsIdentifier()();
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v20 = dispatch thunk of PeerInfoProviding.getRapportEffectiveIdentifier()();
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v23 = dispatch thunk of PeerInfoProviding.getMediaSystemIdentifier()();
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v26 = dispatch thunk of PeerInfoProviding.isOwnedByCurrentUser()();
  v27 = objc_allocWithZone(WFSiriWorkflowRunnerClientOptions);
  v28 = @nonobjc WFSiriWorkflowRunnerClientOptions.init(airPlayRouteIDs:executionContext:originatingDeviceIDSIdentifier:originatingDeviceRapportEffectiveIdentifier:originatingDeviceRapportMediaSystemIdentifier:isOwnedByCurrentUser:)(v14, 2, v17, v19, v20, v22, v23, v25, v26 & 1);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v28;
}

id WFSiriWorkflowRunnerClient.__allocating_init(pausedShortcutData:runSource:options:)(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPausedShortcutData:a1 runSource:a2 options:a3];

  return v5;
}

Swift::Bool __swiftcall SiriRunnerClient.isLastStep()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 32);
  v5 = v4();
  v6 = [v5 shortcutActionCount];

  v7 = (v4)(v3, v2);
  v8 = [v7 currentShortcutStep];

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.voiceCommands);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315394;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_0, v10, v11, "#SiriWorkflowRunner totalStepCount: %s, currentStepCount: %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0(v13);
    OUTLINED_FUNCTION_15_0(v12);
  }

  return v6 == v8;
}

unint64_t type metadata accessor for WFSiriWorkflowRunnerClient()
{
  result = lazy cache variable for type metadata for WFSiriWorkflowRunnerClient;
  if (!lazy cache variable for type metadata for WFSiriWorkflowRunnerClient)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for WFSiriWorkflowRunnerClient);
  }

  return result;
}

id @nonobjc WFSiriWorkflowRunnerClient.init(workflowName:runSource:options:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithWorkflowName:v7 runSource:a3 options:a4];

  return v8;
}

id @nonobjc LNFullyQualifiedActionIdentifier.init(actionIdentifier:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 initWithActionIdentifier:v5 bundleIdentifier:v6];

  return v7;
}

id @nonobjc WFSiriWorkflowRunnerClient.init(autoShortcutIdentifier:phrase:runSource:action:metadata:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithAutoShortcutIdentifier:a1 phrase:v12 runSource:a4 action:a5 metadata:a6];

  return v13;
}

id @nonobjc WFSiriWorkflowRunnerClientOptions.init(airPlayRouteIDs:executionContext:originatingDeviceIDSIdentifier:originatingDeviceRapportEffectiveIdentifier:originatingDeviceRapportMediaSystemIdentifier:isOwnedByCurrentUser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v14.super.isa = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = String._bridgeToObjectiveC()();

  if (a6)
  {
LABEL_4:
    v16 = String._bridgeToObjectiveC()();

    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  if (a8)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 initWithAirPlayRouteIDs:v14.super.isa executionContext:a2 originatingDeviceIDSIdentifier:v15 originatingDeviceRapportEffectiveIdentifier:v16 originatingDeviceRapportMediaSystemIdentifier:v17 isOwnedByCurrentUser:a9 & 1];

  return v18;
}

uint64_t getEnumTagSinglePayload for SiriWorkflowRunnerInput(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 65))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for SiriWorkflowRunnerInput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_4_14()
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  return AceServiceInvokerAsync.toWFSiriWorkflowRunnerClientOption(deviceState:)(v0);
}

void OUTLINED_FUNCTION_5_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return dispatch thunk of AceServiceInvokerAsync.peerInfo()();
}

__n128 ActionConfirmationVisual.init(appBundleId:confirmButton:noButton:destructive:prompt:viewData:deviceState:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, void *a12)
{
  v21.n128_u64[0] = a5;
  v21.n128_u64[1] = a6;
  type metadata accessor for App();

  App.__allocating_init(appIdentifier:)();
  v17 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(a12, 2);
  v19 = v18;

  __swift_destroy_boxed_opaque_existential_1Tm(a12);
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = v17;
  a9[1].n128_u64[1] = v19;
  a9[2].n128_u64[0] = a3;
  a9[2].n128_u64[1] = a4;
  a9[3] = v21;
  a9[4].n128_u8[0] = a7;
  a9[4].n128_u64[1] = a8;
  result = a10;
  a9[5] = a10;
  a9[6].n128_u64[0] = a11;
  return result;
}

uint64_t ActionConfirmationVisual.response.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1[68] = v0;
  v1[67] = v2;
  v3 = type metadata accessor for BinaryButton();
  v1[69] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[70] = v4;
  v1[71] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for Button.LabelStyle();
  v1[72] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[73] = v6;
  v1[74] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for _ProtoButton.FormAction();
  v1[75] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[76] = v8;
  v1[77] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for ButtonRole();
  v1[78] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[79] = v10;
  v1[80] = OUTLINED_FUNCTION_27();
  v1[81] = swift_task_alloc();
  v11 = type metadata accessor for Button();
  v1[82] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[83] = v12;
  v1[84] = OUTLINED_FUNCTION_27();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v13 = type metadata accessor for Command();
  v1[88] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[89] = v14;
  v1[90] = OUTLINED_FUNCTION_27();
  v1[91] = swift_task_alloc();
  v15 = type metadata accessor for SeparatorStyle();
  v1[92] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[93] = v16;
  v1[94] = OUTLINED_FUNCTION_27();
  v1[95] = swift_task_alloc();
  type metadata accessor for Separators();
  v1[96] = OUTLINED_FUNCTION_28();
  v17 = type metadata accessor for ComponentWrapper();
  v1[97] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[98] = v18;
  v1[99] = OUTLINED_FUNCTION_27();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v19 = type metadata accessor for CustomCanvas();
  v1[103] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[104] = v20;
  v1[105] = OUTLINED_FUNCTION_27();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();

  return _swift_task_switch(ActionConfirmationVisual.response.getter);
}

{
  v1 = *(v0 + 544);
  v2 = v1[10];
  if (v2)
  {
    v3 = v1[9];
    v4 = one-time initialization token for encoder;

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_1_17(&one-time initialization token for encoder);
    }

    *(v0 + 104) = v3;
    *(v0 + 112) = v2;
    *(v0 + 184) = 5;
    lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
    dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v6 = *(v0 + 856);
    v7 = *(v0 + 832);
    v8 = *(v0 + 824);
    v128 = *(v0 + 808);
    v9 = *(v0 + 784);
    v120 = *(v0 + 816);
    v125 = *(v0 + 776);
    v10 = *(v0 + 760);
    v11 = *(v0 + 752);
    v12 = *(v0 + 744);
    v13 = *(v0 + 736);
    OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_8_9();
    CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)();
    *(v0 + 416) = v8;
    *(v0 + 424) = &protocol witness table for CustomCanvas;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 392));
    (*(v7 + 16))(boxed_opaque_existential_1, v6, v8);
    v15 = *(v12 + 104);
    v15(v10, enum case for SeparatorStyle.edgeToEdge(_:), v13);
    v15(v11, enum case for SeparatorStyle.standard(_:), v13);
    Separators.init(top:bottom:)();
    v16 = v120;
    ComponentWrapper.init(_:separators:)();
    v121 = *(v9 + 16);
    v121(v128, v16, v125);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      OUTLINED_FUNCTION_2_15(v18);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v20 = *(v0 + 856);
    v21 = *(v0 + 832);
    v22 = *(v0 + 824);
    v23 = *(v0 + 816);
    v24 = *(v0 + 808);
    v25 = *(v0 + 784);
    v26 = *(v0 + 776);

    v27 = *(v25 + 8);
    v27(v23, v26);
    (*(v21 + 8))(v20, v22);
    *(v0 + 456) = v26;
    *(v0 + 464) = &protocol witness table for ComponentWrapper;
    v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
    v121(v28, v24, v26);
    OUTLINED_FUNCTION_10_10();
    v31 = v30 + v19 * v29;
    v5 = v30;
    outlined init with take of AceServiceInvokerAsync((v0 + 432), (v31 + 32));
    v27(v24, v26);
    v1 = *(v0 + 544);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  *(v0 + 472) = *(v1 + 11);
  v32 = *(v0 + 480);
  if (v32 >> 60 == 15)
  {
    v129 = v5;
  }

  else
  {
    v33 = *(v0 + 472);
    v34 = *v1;
    v35 = v1[1];
    v36 = v1[2];
    v37 = v1[3];
    outlined init with copy of Data?(v0 + 472, v0 + 520);
    v38 = one-time initialization token for encoder;

    if (v38 != -1)
    {
      OUTLINED_FUNCTION_1_17(&one-time initialization token for encoder);
    }

    *(v0 + 16) = v33;
    *(v0 + 24) = v32;
    *(v0 + 32) = v34;
    *(v0 + 40) = v35;
    *(v0 + 48) = v36;
    *(v0 + 56) = v37;
    *(v0 + 96) = 0;
    lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
    dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v39 = *(v0 + 848);
    v40 = *(v0 + 840);
    v41 = *(v0 + 832);
    v42 = *(v0 + 824);
    OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_8_9();
    CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)();
    v122 = *(v41 + 16);
    v122(v40, v39, v42);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = v84;
    }

    v44 = v5[2];
    v43 = v5[3];
    if (v44 >= v43 >> 1)
    {
      OUTLINED_FUNCTION_2_15(v43);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v129 = v85;
    }

    else
    {
      v129 = v5;
    }

    v45 = *(v0 + 848);
    v46 = *(v0 + 840);
    v47 = *(v0 + 832);
    v48 = *(v0 + 824);
    outlined consume of Data._Representation(v33, v32);

    v49 = *(v47 + 8);
    v49(v45, v48);
    *(v0 + 376) = v48;
    *(v0 + 384) = &protocol witness table for CustomCanvas;
    v50 = __swift_allocate_boxed_opaque_existential_1((v0 + 352));
    v122(v50, v46, v48);
    OUTLINED_FUNCTION_10_10();
    outlined init with take of AceServiceInvokerAsync((v0 + 352), v52 + v44 * v51 + 32);
    v49(v46, v48);
    v1 = *(v0 + 544);
  }

  v115 = *(v0 + 800);
  v117 = *(v0 + 792);
  v105 = *(v0 + 784);
  v116 = *(v0 + 776);
  v53 = *(v0 + 728);
  v101 = *(v0 + 720);
  v54 = *(v0 + 712);
  v55 = *(v0 + 704);
  v118 = *(v0 + 696);
  v113 = *(v0 + 672);
  v107 = *(v0 + 688);
  v108 = *(v0 + 664);
  v110 = *(v0 + 656);
  v111 = *(v0 + 680);
  v90 = *(v0 + 648);
  v103 = *(v0 + 640);
  v119 = *(v0 + 632);
  v56 = *(v0 + 624);
  v95 = *(v0 + 616);
  v123 = *(v0 + 608);
  v88 = *(v0 + 600);
  v98 = *(v0 + 592);
  v126 = *(v0 + 584);
  v97 = *(v0 + 576);
  v109 = *(v0 + 568);
  v114 = *(v0 + 560);
  v112 = *(v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_6_3(v57, xmmword_216850);
  *(v0 + 488) = v58;
  *(v0 + 496) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  v57[6].n128_u64[0] = &type metadata for String;
  v57[4].n128_u64[1] = 7562617;
  v57[5].n128_u64[0] = 0xE300000000000000;
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  *(v0 + 216) = v55;
  *(v0 + 224) = &protocol witness table for Command;
  v59 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
  v91 = *(v54 + 16);
  v91(v59, v53, v55);
  v92 = *(v119 + 104);
  v60 = &enum case for ButtonRole.preferredAndDestructive(_:);
  if ((v1[8] & 1) == 0)
  {
    v60 = &enum case for ButtonRole.preferred(_:);
  }

  (*(v119 + 104))(v90, *v60, v56);
  v87 = enum case for _ProtoButton.FormAction.none(_:);
  v89 = *(v123 + 104);
  v89(v95);
  v61 = enum case for Button.LabelStyle.automatic(_:);
  v86 = *(v126 + 104);
  v86(v98, enum case for Button.LabelStyle.automatic(_:), v97);

  OUTLINED_FUNCTION_8_9();
  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v62 = swift_allocObject();
  OUTLINED_FUNCTION_6_3(v62, xmmword_216850);
  *(v0 + 504) = v63;
  *(v0 + 512) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  v62[6].n128_u64[0] = &type metadata for String;
  v62[4].n128_u64[1] = 28526;
  v62[5].n128_u64[0] = 0xE200000000000000;
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  *(v0 + 256) = v55;
  *(v0 + 264) = &protocol witness table for Command;
  v64 = __swift_allocate_boxed_opaque_existential_1((v0 + 232));
  v91(v64, v101, v55);
  (v89)(v95, v87, v88);
  v86(v98, v61, v97);
  v92(v103, enum case for ButtonRole.standard(_:), v56);

  OUTLINED_FUNCTION_8_9();
  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v65 = *(v108 + 16);
  v65(v111, v118, v110);
  v65(v113, v107, v110);
  BinaryButton.init(primaryButton:secondaryButton:componentName:linkIdentifier:)();
  *(v0 + 296) = v112;
  *(v0 + 304) = &protocol witness table for BinaryButton;
  v66 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
  (*(v114 + 16))(v66, v109, v112);
  static Separators.none.getter();
  ComponentWrapper.init(_:separators:)();
  v106 = *(v105 + 16);
  v106(v117, v115, v116);
  v67 = v129;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v67 = v82;
  }

  v69 = v67[2];
  v68 = v67[3];
  if (v69 >= v68 >> 1)
  {
    OUTLINED_FUNCTION_2_15(v68);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v130 = v83;
  }

  else
  {
    v130 = v67;
  }

  v96 = *(v0 + 800);
  v70 = *(v0 + 792);
  v71 = *(v0 + 784);
  v72 = *(v0 + 776);
  v100 = *(v0 + 720);
  v73 = *(v0 + 712);
  v99 = *(v0 + 704);
  v102 = *(v0 + 696);
  v104 = *(v0 + 728);
  v124 = *(v0 + 688);
  v74 = *(v0 + 664);
  v94 = *(v0 + 656);
  v127 = *(v0 + 568);
  v75 = *(v0 + 560);
  v93 = *(v0 + 552);
  *(v0 + 336) = v72;
  *(v0 + 344) = &protocol witness table for ComponentWrapper;
  v76 = __swift_allocate_boxed_opaque_existential_1((v0 + 312));
  v106(v76, v70, v72);
  v130[2] = v69 + 1;
  outlined init with take of AceServiceInvokerAsync((v0 + 312), &v130[5 * v69 + 4]);
  v77 = *(v71 + 8);
  v77(v70, v72);
  Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
  v77(v96, v72);
  (*(v75 + 8))(v127, v93);
  v78 = *(v74 + 8);
  v78(v124, v94);
  v79 = *(v73 + 8);
  v79(v100, v99);
  v78(v102, v94);
  v79(v104, v99);

  OUTLINED_FUNCTION_6_0();

  return v80();
}

uint64_t ActionConfirmationVisual.data.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1 = type metadata accessor for Response();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_0(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_28();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = DisambiguationVisual.data.getter;

  return ActionConfirmationVisual.response.getter();
}

uint64_t outlined init with copy of Data?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t getEnumTagSinglePayload for ActionConfirmationVisual(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for ActionConfirmationVisual(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{

  return swift_once();
}

void *WFChooseFromListFlow.exitValue.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  if (v2 == 1)
  {
    swift_errorRetain();
  }

  else if (v2 == 2)
  {
    v3 = v1;
  }

  else
  {
    lazy protocol witness table accessor for type WFShowAlertFlowError and conformance WFShowAlertFlowError();
    return swift_allocError();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type WFShowAlertFlowError and conformance WFShowAlertFlowError()
{
  result = lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError;
  if (!lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError;
  if (!lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError);
  }

  return result;
}

uint64_t WFChooseFromListFlow.__allocating_init(shortcutName:request:deviceState:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  WFChooseFromListFlow.init(shortcutName:request:deviceState:)(a1, a2, a3, a4);
  return v8;
}

uint64_t WFChooseFromListFlow.init(shortcutName:request:deviceState:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  outlined init with copy of DeviceState(a4, v4 + 40);
  *(v4 + 96) = 3;
  *(v4 + 80) = _swiftEmptyArrayStorage;
  *(v4 + 88) = 0;
  v12 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a3;
  v14 = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v4;
}

uint64_t closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:));
}

uint64_t closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[3];
  v2 = [v1 items];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFDialogListItem, WFDialogListItem_ptr);
  v0[4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v0[5] = [v1 dataStore];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:);
  v4 = OUTLINED_FUNCTION_48_2();

  return WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(v4, v5);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t sub_6DAF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_24_8(v3);

  return closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:)(v5, v6, v7, v8, v1);
}

uint64_t WFChooseFromListFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7_1();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.voiceCommands);
  (*(v4 + 16))(v7, a1, v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = Input.description.getter();
    v15 = v14;
    v16 = OUTLINED_FUNCTION_48_2();
    v17(v16);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v23);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_0, v9, v10, "#WFChooseFromListFlow received input: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_15_0(v12);
    OUTLINED_FUNCTION_19_0();
  }

  else
  {

    v19 = OUTLINED_FUNCTION_48_2();
    v20(v19);
  }

  return 0;
}

uint64_t WFChooseFromListFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = *v0;
  type metadata accessor for CATOption();
  v1[21] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v5);
    _os_log_impl(&dword_0, v3, v4, "#WFChooseFromListFlow execute", v1, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v6 = v0[19];

  v7 = *(v6 + 32);
  if (![v7 allowsMultipleSelection])
  {
    switch(*(v0[19] + 96))
    {
      case 1:
        v37 = Logger.logObject.getter();
        v48 = static os_log_type_t.debug.getter();
        if (!OUTLINED_FUNCTION_30_1(v48))
        {
          goto LABEL_30;
        }

        v49 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v49);
        v42 = "#WFChooseFromListFlow in error state";
        break;
      case 2:
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();
        if (!OUTLINED_FUNCTION_30_1(v38))
        {
          goto LABEL_30;
        }

        v39 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v39);
        v42 = "#WFChooseFromListFlow complete";
        break;
      case 3:
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_30_1(v44))
        {
          v45 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v45);
          OUTLINED_FUNCTION_26(&dword_0, v46, v47, "#WFChooseFromListFlow uninitialized");
          OUTLINED_FUNCTION_17();
        }

        static ExecuteResponse.ongoing(requireInput:)();
        goto LABEL_31;
      default:

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_30_1(v20))
        {
          v21 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v21);
          OUTLINED_FUNCTION_26(&dword_0, v22, v23, "#WFChooseFromListFlow initialized, pushing PromptForDisambiguationFlow");
          OUTLINED_FUNCTION_17();
        }

        v24 = v0[19];

        __swift_project_boxed_opaque_existential_1(v24 + 5, v24[8]);
        v25 = dispatch thunk of DeviceState.isWatch.getter();
        v26 = 0xD000000000000013;
        if (v25)
        {
          v26 = 0xD000000000000019;
        }

        v53 = v26;
        if (v25)
        {
          v27 = "CHFlowStrategy.swift";
        }

        else
        {
          v27 = "rCodeUnsupportedInCarPlay";
        }

        v28 = v24[3];
        v52 = v24[2];
        type metadata accessor for WFChooseFromListFlow();
        OUTLINED_FUNCTION_7_8();
        lazy protocol witness table accessor for type WFChooseFromListFlow and conformance WFChooseFromListFlow(v29, v30, v31, &protocol conformance descriptor for WFChooseFromListFlow);
        v32 = v7;

        v33 = SiriEnvironmentLocating<>.siriEnvironment.getter();
        outlined init with copy of DeviceState((v24 + 5), (v0 + 2));
        type metadata accessor for RunCustomIntentCATs(0);
        static CATOption.defaultMode.getter();
        v34 = CATWrapper.__allocating_init(options:globals:)();
        type metadata accessor for RunCustomIntentCATsSimple(0);
        static CATOption.defaultMode.getter();
        v35 = CATWrapperSimple.__allocating_init(options:globals:)();
        type metadata accessor for WFChooseFromListPromptFlowStrategy();
        swift_allocObject();
        WFChooseFromListPromptFlowStrategy.init(request:shortcutName:appBundleId:siriEnvironment:deviceState:runCustomCatWrapper:runCustomCatWrapperSimple:)(v32, v52, v28, v53, v27 | 0x8000000000000000, v33, v0 + 2, v34, v35);

        static OutputPublisherFactory.makeOutputPublisherAsync()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin016WFChooseFromListF4ItemVSayAFGGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin016WFChooseFromListF4ItemVSayAFGGMR);
        swift_allocObject();
        lazy protocol witness table accessor for type WFChooseFromListFlow and conformance WFChooseFromListFlow(&lazy protocol witness table cache variable for type WFChooseFromListPromptFlowStrategy and conformance WFChooseFromListPromptFlowStrategy, 255, type metadata accessor for WFChooseFromListPromptFlowStrategy, &protocol conformance descriptor for WFChooseFromListPromptFlowStrategy);
        v0[17] = PromptForDisambiguationFlowAsync.init<A>(items:strategy:outputPublisher:)();
        lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<WFChooseFromListDisambiguationItem, [WFChooseFromListDisambiguationItem]> and conformance PromptForDisambiguationFlowAsync<A, B>();

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        goto LABEL_31;
    }

    OUTLINED_FUNCTION_26(&dword_0, v40, v41, v42);
    OUTLINED_FUNCTION_17();
LABEL_30:

    static ExecuteResponse.complete()();
LABEL_31:

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_35_4();

    __asm { BRAA            X1, X16 }
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v9))
  {
    v10 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v10);
    OUTLINED_FUNCTION_26(&dword_0, v11, v12, "#WFChooseFromListFlow allowsMultipleSelection, exiting");
    OUTLINED_FUNCTION_17();
  }

  v13 = v0[19];

  v14 = v13[8];
  v15 = v13[9];
  __swift_project_boxed_opaque_existential_1(v13 + 5, v14);
  if ((dispatch thunk of DeviceState.isHomePod.getter() & 1) == 0)
  {
    v36 = OUTLINED_FUNCTION_28_4([objc_allocWithZone(WFDialogResponse) initWithResponseCode:4]);
    outlined consume of WFChooseFromListFlow.State(v14, v15);
    static ExecuteResponse.complete()();

    goto LABEL_31;
  }

  v0[22] = default argument 0 of static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:)();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  v16 = swift_task_alloc();
  v0[23] = v16;
  *v16 = v0;
  v16[1] = WFChooseFromListFlow.execute();
  OUTLINED_FUNCTION_35_4();

  return static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = OUTLINED_FUNCTION_28_4([objc_allocWithZone(WFDialogResponse) initWithResponseCode:4]);
  outlined consume of WFChooseFromListFlow.State(v0, v1);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  v0[7] = v3;
  v4 = type metadata accessor for DialogPhase();
  v0[8] = v4;
  v0[9] = *(v4 - 8);
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v0[12] = v5;
  v0[13] = *(v5 - 8);
  v0[14] = swift_task_alloc();
  v8 = (*(*v2 + 272) + **(*v2 + 272));
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:);

  return v8();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *(v2 + 128) = v1;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3);
}

{
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  static DialogPhase.completion.getter();
  v6 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 16))(v3, v2, v4);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v5 + 8))(v2, v4);
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v0[18] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  v0[19] = v7;
  *(v7 + 16) = xmmword_216010;
  *(v7 + 32) = v1;
  v13 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v8 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[20] = v9;
  *v9 = v10;
  v9[1] = static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:);
  v11 = v0[14];

  return (v13)(v0 + 2, v7, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 56);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 168) = v4;
  *v4 = v5;
  v4[1] = static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 176) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.voiceCommands);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v2))
  {
    v3 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v3);
    OUTLINED_FUNCTION_23_7(&dword_0, v4, v2, "#WFChooseFromListFlow failure to submit Handoff dialog");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v6))
  {
    v7 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v7);
    OUTLINED_FUNCTION_23_7(&dword_0, v8, v6, "#WFChooseFromListFlow failure to submit Handoff dialog");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_6_0();

  return v9();
}

uint64_t WFChooseFromListFlow.execute(completion:)()
{
  type metadata accessor for WFChooseFromListFlow();
  OUTLINED_FUNCTION_7_8();
  lazy protocol witness table accessor for type WFChooseFromListFlow and conformance WFChooseFromListFlow(v0, v1, v2, &protocol conformance descriptor for WFChooseFromListFlow);
  OUTLINED_FUNCTION_48_2();
  return Flow.deferToExecuteAsync(_:)();
}

void WFChooseFromListFlow.onPromptForDisambiguationFinished(exitValue:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOySay0a4LinkC6Plugin34WFChooseFromListDisambiguationItemVGGMd, &_s11SiriKitFlow12PromptResultOySay0a4LinkC6Plugin34WFChooseFromListDisambiguationItemVGGMR);
  OUTLINED_FUNCTION_7_1();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.voiceCommands);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_52();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "#WFChooseFromListFlow onPromptForDisambiguationFinished", v13, 2u);
    OUTLINED_FUNCTION_15_0(v13);
  }

  (*(v6 + 16))(v9, a1, v4);
  v14 = OUTLINED_FUNCTION_20_4();
  v16 = v15(v14);
  if (v16 == enum case for PromptResult.answered<A>(_:))
  {
    v17 = OUTLINED_FUNCTION_20_4();
    v18(v17);
    v19 = *v9;
    v20 = *(*v9 + 16);
    if (v20 != 1)
    {
      if (v20)
      {
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_50(v43))
        {
          v44 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_44_2(v44);
          OUTLINED_FUNCTION_23_7(&dword_0, v45, v43, "#WFChooseFromListFlow received more than one items from disambiguation, reprompting");
          OUTLINED_FUNCTION_19_0();
        }

        v26 = *(v2 + 88);
        *(v2 + 88) = v19;
        v27 = *(v2 + 96);
        *(v2 + 96) = 0;
      }

      else
      {

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_50(v22))
        {
          v23 = OUTLINED_FUNCTION_52();
          *v23 = 0;
          _os_log_impl(&dword_0, v21, v22, "#WFChooseFromListFlow received no item from disambiguation, reprompting", v23, 2u);
          OUTLINED_FUNCTION_15_0(v23);
        }

        swift_beginAccess();
        v24 = *(v2 + 88);
        *(v2 + 88) = *(v2 + 80);
        v25 = *(v2 + 96);
        *(v2 + 96) = 0;

        v26 = v24;
        v27 = v25;
      }

      goto LABEL_25;
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v34))
    {
      v35 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_44_2(v35);
      OUTLINED_FUNCTION_23_7(&dword_0, v36, v34, "#WFChooseFromListFlow received one item from disambiguation, finishing");
      OUTLINED_FUNCTION_19_0();
    }

    if (*(v19 + 2))
    {
      v37 = *(v19 + 10);
      v38 = *(v19 + 8);

      v39 = v37;

      type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFChooseFromListDialogResponse, WFChooseFromListDialogResponse_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_216010;
      *(v40 + 32) = v39;
      v19 = v39;
      v34 = WFChooseFromListDialogResponse.__allocating_init(items:cancelled:)(v40, 0, v41);
      if (one-time initialization token for shared == -1)
      {
LABEL_21:
        (*(*static WFDialogState.shared + 232))();

        v26 = *(v2 + 88);
        *(v2 + 88) = v34;
        v27 = *(v2 + 96);
        *(v2 + 96) = 2;
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_21;
  }

  if (v16 == enum case for PromptResult.error<A>(_:))
  {
    v28 = OUTLINED_FUNCTION_20_4();
    v29(v28);
    goto LABEL_13;
  }

  if (v16 == enum case for PromptResult.cancelled<A>(_:))
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFChooseFromListDialogResponse, WFChooseFromListDialogResponse_ptr);
    v30 = WFChooseFromListDialogResponse.__allocating_init(items:cancelled:)(_swiftEmptyArrayStorage, 1, v31);
    goto LABEL_16;
  }

  if (v16 == enum case for PromptResult.unanswered<A>(_:))
  {
LABEL_13:
    v30 = [objc_allocWithZone(WFDialogResponse) initWithResponseCode:1];
LABEL_16:
    v32 = *(v1 + 88);
    *(v1 + 88) = v30;
    v27 = *(v1 + 96);
    *(v1 + 96) = 2;
    v26 = v32;
LABEL_25:
    outlined consume of WFChooseFromListFlow.State(v26, v27);
    return;
  }

  lazy protocol witness table accessor for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError();
  v46 = swift_allocError();
  *v47 = 0;
  v48 = *(v1 + 88);
  *(v1 + 88) = v46;
  LOBYTE(v47) = *(v1 + 96);
  *(v1 + 96) = 1;
  outlined consume of WFChooseFromListFlow.State(v48, v47);
  v49 = OUTLINED_FUNCTION_20_4();
  v50(v49);
}

id WFChooseFromListDialogResponse.__allocating_init(items:cancelled:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFDialogListItem, WFDialogListItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithItems:isa cancelled:v3 & 1];

  return v6;
}

uint64_t WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)()
{
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v4);
    OUTLINED_FUNCTION_26(&dword_0, v5, v6, "#WFChooseFromListFlow starts initializing dialog items");
    OUTLINED_FUNCTION_17();
  }

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];

  v0[14] = Dictionary.init(dictionaryLiteral:)();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMd, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMR);
  v11 = swift_task_alloc();
  v0[19] = v11;
  v11[2] = v9;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v0 + 14;
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v12, v10, &type metadata for () + 8, 0, 0, &async function pointer to partial apply for closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:), v11, v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

void WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(v4 + 112);
  v45 = *(v4 + 136);
  v41 = v6;
  v42 = *(v6 + 16);
  while (v42 != v5)
  {
    if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v8 & 1) == 0))
    {
      v27 = v40;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v29))
      {
        v30 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v30);
        OUTLINED_FUNCTION_26(&dword_0, v31, v32, "Disambiguation list is missing elements");
        OUTLINED_FUNCTION_17();
      }

LABEL_16:

      v35 = *(v27 + 136);
      swift_beginAccess();
      v36 = *(v35 + 88);
      *(v35 + 88) = *(v45 + 80);
      v37 = *(v35 + 96);
      *(v35 + 96) = 0;

      outlined consume of WFChooseFromListFlow.State(v36, v37);

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_35_4();

      __asm { BRAA            X1, X16 }
    }

    v9 = (*(v6 + 56) + 56 * v7);
    v10 = v9[1];
    v11 = v9[3];
    v43 = v9[2];
    v44 = *v9;
    v13 = v9[4];
    v12 = v9[5];
    v14 = v9[6];
    swift_beginAccess();
    v15 = *(v45 + 80);
    v16 = v13;
    swift_bridgeObjectRetain_n();
    v17 = v14;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v18 = v16;
    v19 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v45 + 80) = v15;
    v21 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
      v15 = v25;
      *(v45 + 80) = v25;
    }

    v23 = *(v15 + 16);
    v22 = *(v15 + 24);
    if (v23 >= v22 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v15);
      v15 = v26;
    }

    *(v15 + 16) = v23 + 1;
    v24 = (v15 + 56 * v23);
    v24[4] = v44;
    v24[5] = v10;
    v24[6] = v43;
    v24[7] = v11;
    v24[8] = v13;
    v24[9] = v12;
    v24[10] = v19;
    *(v45 + 80) = v15;
    swift_endAccess();

    ++v5;
    v6 = v41;
  }

  v27 = v40;

  v28 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    swift_beginAccess();
    *(v34 + 4) = *(*(v45 + 80) + 16);

    _os_log_impl(&dword_0, v28, v33, "#WFChooseFromListFlow initialized dialog items, count: %ld", v34, 0xCu);
    OUTLINED_FUNCTION_15_0(v34);
  }

  else
  {
  }

  goto LABEL_16;
}

uint64_t closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[26] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_GMd, &_sScG8IteratorVySi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_GMR);
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return _swift_task_switch(closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:));
}

uint64_t closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = specialized Array.count.getter(*(v14 + 216));
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v23 = v15;
    if (v15)
    {
      v42 = **(v14 + 208);
      v24 = type metadata accessor for TaskPriority();
      v25 = 0;
      v43 = v23;
      do
      {
        v27 = *(v14 + 272);
        v26 = *(v14 + 280);
        v28 = *(v14 + 224);
        v29 = *(v14 + 232);
        v30 = *(v14 + 216);
        __swift_storeEnumTagSinglePayload(v26, 1, 1, v24);
        v31 = swift_allocObject();
        v31[2] = 0;
        v31[3] = 0;
        v31[4] = v25;
        v31[5] = v28;
        v31[6] = v30;
        v31[7] = v29;
        outlined init with copy of TaskPriority?(v26, v27);
        LODWORD(v27) = __swift_getEnumTagSinglePayload(v27, 1, v24);

        swift_unknownObjectRetain();
        v32 = *(v14 + 272);
        if (v27 == 1)
        {
          outlined destroy of String?(*(v14 + 272), &_sScPSgMd, &_sScPSgMR);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(*(v24 - 8) + 8))(v32, v24);
        }

        if (v31[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v33 = dispatch thunk of Actor.unownedExecutor.getter();
          v35 = v34;
          swift_unknownObjectRelease();
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        v36 = swift_allocObject();
        *(v36 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:);
        *(v36 + 24) = v31;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMd, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMR);
        v37 = v35 | v33;
        if (v35 | v33)
        {
          v37 = v14 + 144;
          *(v14 + 144) = 0;
          *(v14 + 152) = 0;
          *(v14 + 160) = v33;
          *(v14 + 168) = v35;
        }

        ++v25;
        v38 = *(v14 + 280);
        *(v14 + 176) = 1;
        *(v14 + 184) = v37;
        *(v14 + 192) = v42;
        swift_task_create();

        outlined destroy of String?(v38, &_sScPSgMd, &_sScPSgMR);
      }

      while (v43 != v25);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMd, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMR);
    TaskGroup.makeAsyncIterator()();
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v14 + 288) = v39;
    *v39 = v40;
    OUTLINED_FUNCTION_4_16(v39);
    OUTLINED_FUNCTION_58();
  }

  return TaskGroup.Iterator.next(isolation:)(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

{
  v15 = *(v14 + 96);
  *(v14 + 16) = *(v14 + 80);
  *(v14 + 32) = v15;
  v16 = *(v14 + 128);
  *(v14 + 48) = *(v14 + 112);
  *(v14 + 64) = v16;
  if (!*(v14 + 32))
  {
    (*(*(v14 + 256) + 8))(*(v14 + 264), *(v14 + 248));

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  v17 = *(v14 + 16);
  v53 = *(v14 + 24);
  v54 = *(v14 + 40);
  v18 = *(v14 + 72);
  v19 = *(v14 + 240);
  v55 = *(v14 + 56);
  v20 = v55;

  v52 = v18;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v19;
  *(v14 + 200) = *v19;
  *v19 = 0x8000000000000000;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
  v31 = *(v22 + 16);
  v32 = (v24 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
    __break(1u);
    goto LABEL_20;
  }

  v34 = v23;
  v35 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMd, &_ss17_NativeDictionaryVySi18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v33))
  {
LABEL_12:
    v42 = *(v14 + 200);
    if (v35)
    {
      v43 = (v42[7] + 56 * v34);
      v44 = v43[4];
      v45 = v43[6];
      OUTLINED_FUNCTION_18_8(v43, v51, v52, v53, v54, v55);

      outlined destroy of String?(v14 + 16, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtSgMd, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtSgMR);
      goto LABEL_16;
    }

    v42[(v34 >> 6) + 8] |= 1 << v34;
    *(v42[6] + 8 * v34) = v17;
    OUTLINED_FUNCTION_18_8((v42[7] + 56 * v34), v51, v52, v53, v54, v55);
    v23 = outlined destroy of String?(v14 + 16, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtSgMd, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtSgMR);
    v46 = v42[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (!v47)
    {
      v42[2] = v48;
LABEL_16:
      **(v14 + 240) = v42;

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v14 + 288) = v49;
      *v49 = v50;
      OUTLINED_FUNCTION_4_16(v49);
      OUTLINED_FUNCTION_58();

      return TaskGroup.Iterator.next(isolation:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
    }

LABEL_20:
    __break(1u);
    return TaskGroup.Iterator.next(isolation:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
  }

  v36 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
  if ((v35 & 1) == (v37 & 1))
  {
    v34 = v36;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_58();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

uint64_t closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[9] = a1;
  return _swift_task_switch(closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:));
}

uint64_t closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 96);
  **(v0 + 72) = *(v0 + 80);
  v2 = v1 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if (v2)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(*(v0 + 96) + 8 * *(v0 + 80) + 32);
  }

  v4 = v3;
  *(v0 + 112) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 120) = v5;
  *v5 = v6;
  v5[1] = closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:);
  v7 = *(v0 + 104);

  return WFChooseFromListFlow.loadDialogListItem(item:dataStore:)(v0 + 16, v4, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  *(v4 + 56) = *(v0 + 64);
  *(v4 + 40) = v3;
  *(v4 + 24) = v2;
  *(v4 + 8) = v1;
  OUTLINED_FUNCTION_6_0();
  return v5();
}

uint64_t WFChooseFromListFlow.loadDialogListItem(item:dataStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[45] = a2;
  v3[46] = a3;
  v3[44] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WFChooseFromListFlow.loadDialogListItem(item:dataStore:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = [*(v0 + 360) identifier];
  v2 = v1;
  v3 = v1;
  v4 = v1;
  v5 = v1;
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  *(v0 + 392) = v4;
  *(v0 + 400) = v5;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v0 + 368))
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = WFChooseFromListFlow.loadDialogListItem(item:dataStore:);
    v6 = swift_continuation_init();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd, &_sSccySbs5NeverOGMR);
    *(v0 + 408) = v7;
    *(v0 + 328) = v7;
    *(v0 + 272) = _NSConcreteStackBlock;
    OUTLINED_FUNCTION_32_6(COERCE_DOUBLE(1107296256));
    *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
    *(v0 + 296) = &block_descriptor_3;
    *(v0 + 304) = v6;
    v8 = v1;
    [swift_unknownObjectRetain() hasSubtitleForIdentifier:v5 completion:v0 + 272];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v9 = *(v0 + 360);
    v10 = v1;

    v11 = [v9 title];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v16 = *(v0 + 352);
    v15 = *(v0 + 360);
    *v16 = v12;
    v16[1] = v14;
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = _swiftEmptyArrayStorage;
    v16[6] = v15;
    OUTLINED_FUNCTION_6_0();
    v21 = v17;
    v19 = v18;

    return v21();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_34_4();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0 + 336;
  v2 = *(v0 + 336);

  v3 = *(v0 + 392);
  if (v2 == 1)
  {
    v4 = v0 + 208;
    v5 = *(v0 + 368);
    *(v0 + 208) = v0;
    *(v0 + 248) = v1;
    *(v0 + 216) = WFChooseFromListFlow.loadDialogListItem(item:dataStore:);
    v6 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSSgs5NeverOGMd, &_sSccySSSgs5NeverOGMR);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_32_6(COERCE_DOUBLE(1107296256));
    *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?) -> () with result type String?;
    *(v0 + 296) = &block_descriptor_25;
    *(v0 + 304) = v6;
    [v5 loadSubtitleWithIdentifier:v3 completion:v0 + 272];
  }

  else
  {
    v4 = v0 + 80;

    *(v0 + 416) = 0;
    *(v0 + 424) = 0;
    v7 = *(v0 + 408);
    v8 = *(v0 + 384);
    v9 = *(v0 + 368);
    *(v0 + 80) = v0;
    *(v0 + 120) = v1;
    *(v0 + 88) = WFChooseFromListFlow.loadDialogListItem(item:dataStore:);
    swift_continuation_init();
    *(v0 + 328) = v7;
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_32_6(COERCE_DOUBLE(1107296256));
    *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
    *(v0 + 296) = &block_descriptor_19;
    *(v0 + 304) = v10;
    [v9 hasImageForIdentifier:v8 completion:v0 + 272];
  }

  return _swift_continuation_await(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_34_4();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_14_0();
  v6 = *(v0 + 336);

  *(v0 + 416) = v6;
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 336;
  *(v0 + 88) = WFChooseFromListFlow.loadDialogListItem(item:dataStore:);
  v4 = swift_continuation_init();
  *(v0 + 328) = v1;
  *(v0 + 272) = _NSConcreteStackBlock;
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  *(v0 + 296) = &block_descriptor_19;
  *(v0 + 304) = v4;
  [v3 hasImageForIdentifier:v2 completion:v0 + 272];

  return _swift_continuation_await(v0 + 80);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_34_4();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 336);

  if (v1 == 1)
  {
    v3 = *(v0 + 368);
    v2 = *(v0 + 376);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 336;
    *(v0 + 152) = WFChooseFromListFlow.loadDialogListItem(item:dataStore:);
    v4 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7WFImageCSg_SDySo32WFContentItemListThumbnailOptionaypGSgts5NeverOGMd, &_sSccySo7WFImageCSg_SDySo32WFContentItemListThumbnailOptionaypGSgts5NeverOGMR);
    *(v0 + 272) = _NSConcreteStackBlock;
    OUTLINED_FUNCTION_32_6(COERCE_DOUBLE(1107296256));
    *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned WFImage?, @unowned NSDictionary?) -> () with result type (WFImage?, [WFContentItemListThumbnailOption : Any]?);
    *(v0 + 296) = &block_descriptor_22;
    *(v0 + 304) = v4;
    [v3 loadImageWithIdentifier:v2 size:v0 + 272 completion:{31.0, 31.0}];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {

    v5 = [*(v0 + 360) title];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    swift_unknownObjectRelease();
    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v11 = *(v0 + 416);
    *v10 = v6;
    *(v10 + 8) = v8;
    *(v10 + 16) = v11;
    *(v10 + 32) = 0;
    *(v10 + 40) = _swiftEmptyArrayStorage;
    *(v10 + 48) = v9;
    OUTLINED_FUNCTION_6_0();
    v16 = v12;
    v14 = v13;

    return v16();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_34_4();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 336);

  if (v1)
  {
    v2 = v1;
    v3 = WFImage.convertToINImage()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(v0 + 360) title];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  swift_unknownObjectRelease();
  v9 = *(v0 + 352);
  v8 = *(v0 + 360);
  v10 = *(v0 + 416);
  *v9 = v5;
  *(v9 + 8) = v7;
  *(v9 + 16) = v10;
  *(v9 + 32) = v3;
  *(v9 + 40) = _swiftEmptyArrayStorage;
  *(v9 + 48) = v8;
  OUTLINED_FUNCTION_6_0();
  v15 = v11;
  v13 = v12;

  return v15();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, v2);
}

uint64_t specialized _resumeUnsafeContinuation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return _swift_continuation_resume();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?) -> () with result type String?(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, v4, v6);
}

uint64_t WFChooseFromListFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  outlined consume of WFChooseFromListFlow.State(*(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t WFChooseFromListFlow.__deallocating_deinit()
{
  WFChooseFromListFlow.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFChooseFromListFlow(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

uint64_t protocol witness for Flow.execute() in conformance WFChooseFromListFlow(uint64_t a1)
{
  v6 = (*(**v1 + 192) + **(**v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance WFChooseFromListFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 168))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_11SiriKitFlow16TemplatingResultVtSg_Tg5()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_2(v3);
  *v4 = v5;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(v1);
}

unint64_t lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<WFChooseFromListDisambiguationItem, [WFChooseFromListDisambiguationItem]> and conformance PromptForDisambiguationFlowAsync<A, B>()
{
  result = lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<WFChooseFromListDisambiguationItem, [WFChooseFromListDisambiguationItem]> and conformance PromptForDisambiguationFlowAsync<A, B>;
  if (!lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<WFChooseFromListDisambiguationItem, [WFChooseFromListDisambiguationItem]> and conformance PromptForDisambiguationFlowAsync<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin016WFChooseFromListF4ItemVSayAFGGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin016WFChooseFromListF4ItemVSayAFGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<WFChooseFromListDisambiguationItem, [WFChooseFromListDisambiguationItem]> and conformance PromptForDisambiguationFlowAsync<A, B>);
  }

  return result;
}

void outlined consume of WFChooseFromListFlow.State(void *a1, char a2)
{
  switch(a2)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

unint64_t lazy protocol witness table accessor for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError()
{
  result = lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError;
  if (!lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError;
  if (!lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFChooseFromListFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x71B44);
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

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin016WFChooseFromListC0C5State33_2B2242C592B47B793C0A0F3DBCDAA481LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for WFChooseFromListFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for WFChooseFromListFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for WFChooseFromListFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type WFChooseFromListFlow and conformance WFChooseFromListFlow(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t partial apply for closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)()
{
  OUTLINED_FUNCTION_15_2();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v7 = v0[5];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_9_2(v9);
  *v10 = v11;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(v4, v2, v5, v6, v8, v7);
}

uint64_t sub_71D74()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[5];
  v3 = v0[6];
  v2 = v0[7];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_24_8(v5);

  return closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(v7, v8, v9, v10, v1, v3, v2);
}

uint64_t sub_71E78()
{

  return _swift_deallocObject(v0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_Tg5TA()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_2(v4);
  *v5 = v6;
  v5[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_Tg5(v2, v3);
}

void OUTLINED_FUNCTION_18_8(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a4;
  a1[1] = v6;
  a1[2] = a5;
  a1[3] = v8;
  a1[4] = a6;
  a1[5] = v7;
  a1[6] = a3;
}

void OUTLINED_FUNCTION_23_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

id OUTLINED_FUNCTION_28_4(id a1)
{
  *(v1 + 88) = a1;
  *(v1 + 96) = 2;

  return a1;
}

SiriLinkFlowPlugin::ListShortcutsCATsSimple::Properties_optional __swiftcall ListShortcutsCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ListShortcutsCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriLinkFlowPlugin_ListShortcutsCATsSimple_Properties_viewShortcutsInApp;
  }

  else
  {
    v4.value = SiriLinkFlowPlugin_ListShortcutsCATsSimple_Properties_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t ListShortcutsCATsSimple.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD000000000000017;
  }
}

SiriLinkFlowPlugin::ListShortcutsCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ListShortcutsCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::ListShortcutsCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = ListShortcutsCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ListShortcutsCATsSimple.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = ListShortcutsCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ListShortcutsCATsSimple.launchApp(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t ListShortcutsCATsSimple.launchApp(device:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_1_3(v2, xmmword_216850);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  OUTLINED_FUNCTION_3_2();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = ListShortcutsCATsSimple.launchApp(device:);

  return v6(0xD000000000000017, 0x800000000022DE30, v2);
}

{
  OUTLINED_FUNCTION_12_0();
  v7 = *v1;
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v7 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(ListShortcutsCATsSimple.launchApp(device:));
  }

  else
  {

    v4 = OUTLINED_FUNCTION_8_11();

    return v5(v4);
  }
}

BOOL ListShortcutsCATsSimple.LaunchAppDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ListShortcutsCATsSimple.LaunchAppDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ListShortcutsCATsSimple.LaunchAppDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ListShortcutsCATsSimple.LaunchAppDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t ListShortcutsCATsSimple.launchAppAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t ListShortcutsCATsSimple.launchAppAsLabels(device:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_1_3(v2, xmmword_216850);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  OUTLINED_FUNCTION_3_2();
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = lazy protocol witness table accessor for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds();
  *v4 = v0;
  v4[1] = ListShortcutsCATsSimple.launchAppAsLabels(device:);

  return v7(0xD000000000000017, 0x800000000022DE30, v2, &type metadata for ListShortcutsCATsSimple.LaunchAppDialogIds, v5);
}

{
  OUTLINED_FUNCTION_12_0();
  v7 = *v1;
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v7 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(ListShortcutsCATsSimple.launchAppAsLabels(device:));
  }

  else
  {

    v4 = OUTLINED_FUNCTION_8_11();

    return v5(v4);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds()
{
  result = lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds;
  if (!lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds;
  if (!lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds);
  }

  return result;
}

uint64_t ListShortcutsCATsSimple.viewShortcutsInApp()()
{
  OUTLINED_FUNCTION_12_0();
  v3 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = ListShortcutsCATsSimple.viewShortcutsInApp();

  return (v3)(0xD000000000000020, 0x800000000022DE50, _swiftEmptyArrayStorage);
}

BOOL ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t ListShortcutsCATsSimple.viewShortcutsInAppAsLabels()()
{
  OUTLINED_FUNCTION_12_0();
  v4 = &async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = lazy protocol witness table accessor for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds();
  *v1 = v0;
  v1[1] = ListShortcutsCATsSimple.viewShortcutsInAppAsLabels();

  return (v4)(0xD000000000000020, 0x800000000022DE50, _swiftEmptyArrayStorage, &type metadata for ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds, v2);
}

uint64_t ListShortcutsCATsSimple.viewShortcutsInAppAsLabels()(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

unint64_t lazy protocol witness table accessor for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds()
{
  result = lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds;
  if (!lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds;
  if (!lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds);
  }

  return result;
}

uint64_t ListShortcutsCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v12 - 8);
  outlined init with copy of URL?(a1, &v16 - v13);
  (*(v7 + 16))(v11, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of URL?(a1);
  return v14;
}

uint64_t ListShortcutsCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v2;
}

uint64_t ListShortcutsCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type ListShortcutsCATsSimple.Properties and conformance ListShortcutsCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type ListShortcutsCATsSimple.Properties and conformance ListShortcutsCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type ListShortcutsCATsSimple.Properties and conformance ListShortcutsCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListShortcutsCATsSimple.Properties and conformance ListShortcutsCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for ListShortcutsCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for ListShortcutsCATsSimple;
  if (!type metadata singleton initialization cache for ListShortcutsCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ListShortcutsCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x73178);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ListShortcutsCATsSimple.LaunchAppDialogIds(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x73260);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

id static LNActionOutput.shouldSuppressOpensIntent(bundleId:)(uint64_t a1, uint64_t a2)
{
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  if (DeviceState.isVox.getter() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v32, v33), OUTLINED_FUNCTION_2_16(), (dispatch thunk of DeviceState.isHomePod.getter()) || (__swift_project_boxed_opaque_existential_1(v32, v33), OUTLINED_FUNCTION_2_16(), (dispatch thunk of DeviceState.isLockedWithPasscode.getter()))
  {
    v4 = &dword_0 + 1;
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1(v32, v33);
  OUTLINED_FUNCTION_2_16();
  if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
  {
LABEL_13:
    v4 = 0;
    goto LABEL_5;
  }

  v6 = objc_allocWithZone(LSApplicationRecord);
  OUTLINED_FUNCTION_1_18();

  v7 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  v13 = v7;
  if (!v7)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.voiceCommands);
    OUTLINED_FUNCTION_1_18();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v11 = 136315138;
      *(v11 + 4) = OUTLINED_FUNCTION_4_17(v30, v12);
      _os_log_impl(&dword_0, v9, v10, "#LNActionOutput shouldSuppressOpensIntent Application record not found for: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      OUTLINED_FUNCTION_15_0(v30);
      OUTLINED_FUNCTION_15_0(v11);
    }

    goto LABEL_13;
  }

  v14 = [objc_opt_self() declarationForAppRecord:v7];
  if (!v14)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.voiceCommands);
    OUTLINED_FUNCTION_1_18();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v27 = 136315138;
      *(v27 + 4) = OUTLINED_FUNCTION_4_17(v31, v28);
      _os_log_impl(&dword_0, v25, v26, "#LNActionOutput shouldSuppressOpensIntent unable to get CarPlayAppDeclaration for %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_15_0(v31);
      OUTLINED_FUNCTION_15_0(v27);
    }

    goto LABEL_13;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(CRCarPlayAppPolicyEvaluator) init];
  v17 = [v16 effectivePolicyForAppDeclaration:v15];
  v4 = [v17 isCarPlaySupported];
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = v16;
    v22 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = OUTLINED_FUNCTION_4_17(v22, v23);
    *(v21 + 12) = 1024;
    *(v21 + 14) = v4;
    _os_log_impl(&dword_0, v19, v20, "##LNActionOutput shouldSuppressOpensIntent CarPlay support for %s = %{BOOL}d", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_15_0(v22);
    OUTLINED_FUNCTION_15_0(v21);
  }

  else
  {
  }

LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v4;
}

Swift::Bool __swiftcall LNActionOutput.hasCustomOutput()()
{
  v1 = [v0 dialog];
  if (v1 || (v1 = [v0 viewSnippet]) != 0 || (v1 = objc_msgSend(v0, "snippetAction")) != 0)
  {

    LOBYTE(v1) = 1;
  }

  return v1;
}

Swift::Bool __swiftcall LNSuccessResult.hasCustomOutput()()
{
  v1 = [v0 output];
  v2 = LNActionOutput.hasCustomOutput()();

  return v2;
}

uint64_t static LNActionOutput.shouldSuppressSnippetIntent()(uint64_t a1)
{
  v1 = static Device.current.getter();
  OUTLINED_FUNCTION_5_8(v1, v2);
  v3 = DeviceState.isVox.getter();
  if (v3 & 1) != 0 || (OUTLINED_FUNCTION_5_8(v3, v4), OUTLINED_FUNCTION_1_18(), v5 = dispatch thunk of DeviceState.isHomePod.getter(), (v5) || (OUTLINED_FUNCTION_5_8(v5, v6), OUTLINED_FUNCTION_1_18(), v7 = dispatch thunk of DeviceState.isLockedWithPasscode.getter(), (v7))
  {
    v9 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_8(v7, v8);
    OUTLINED_FUNCTION_1_18();
    v9 = dispatch thunk of DeviceState.isCarPlay.getter();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v9 & 1;
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t OUTLINED_FUNCTION_4_17(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, va);
}

void *OUTLINED_FUNCTION_5_8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return __swift_project_boxed_opaque_existential_1(va, v2);
}

uint64_t String.convertedToURL()@<X0>(uint64_t a1@<X8>)
{
  v31[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = v31 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = v31 - v9;
  __chkstk_darwin(v8);
  v12 = v31 - v11;
  OUTLINED_FUNCTION_0_13();
  URL.init(string:)();
  outlined init with copy of URL?(v12, v10);
  v13 = type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
  {
    goto LABEL_5;
  }

  URL.scheme.getter();
  v15 = v14;
  v16 = *(*(v13 - 8) + 8);
  v16(v10, v13);
  if (v15)
  {

    outlined init with copy of URL?(v12, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
    {
      v10 = v7;
LABEL_5:
      outlined destroy of URL?(v10);
      goto LABEL_6;
    }

    URL.host.getter();
    v29 = v28;
    v16(v7, v13);
    if (v29)
    {

      v30 = v12;
      return outlined init with take of URL?(v30, v31[0]);
    }
  }

LABEL_6:
  v17 = objc_allocWithZone(NSDataDetector);
  v18 = @nonobjc NSDataDetector.init(types:)(-1);
  v20 = v18;
  if (v18)
  {
    OUTLINED_FUNCTION_0_13();
    v21 = String._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_0_13();
    v22 = [v20 firstMatchInString:v21 options:0 range:{0, String.count.getter(), v31[0]}];

    if (v22)
    {
      if (![v22 range])
      {
        [v22 range];
        v24 = v23;
        OUTLINED_FUNCTION_0_13();
        if (v24 == String.count.getter())
        {
          v25 = [v22 URL];
          if (v25)
          {
            v26 = v25;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            outlined destroy of URL?(v12);
            v27 = 0;
          }

          else
          {
            outlined destroy of URL?(v12);

            v27 = 1;
          }

          __swift_storeEnumTagSinglePayload(v4, v27, 1, v13);
          v30 = v4;
          return outlined init with take of URL?(v30, v31[0]);
        }
      }

      outlined destroy of URL?(v12);
    }

    else
    {
      outlined destroy of URL?(v12);
    }
  }

  else
  {
    outlined destroy of URL?(v12);
  }

  return __swift_storeEnumTagSinglePayload(v31[0], 1, 1, v13);
}

id @nonobjc NSDataDetector.init(types:)(uint64_t a1)
{
  v6 = 0;
  v2 = [v1 initWithTypes:a1 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t ShowOutputAndCloseFlow.__allocating_init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = swift_allocObject();
  ShowOutputAndCloseFlow.init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(v9, a2, a3, a4, a5);
  return v10;
}

uint64_t ShowOutputAndCloseFlow.init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(char a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a1;
  outlined init with take of AceServiceInvokerAsync(a2, v5 + 16);
  outlined init with take of AceServiceInvokerAsync(a3, v5 + 56);
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return v5;
}

unint64_t lazy protocol witness table accessor for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow()
{
  result = lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow;
  if (!lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow)
  {
    type metadata accessor for ShowOutputAndCloseFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow);
  }

  return result;
}

uint64_t ShowOutputAndCloseFlow.execute()(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return _swift_task_switch(ShowOutputAndCloseFlow.execute());
}

uint64_t ShowOutputAndCloseFlow.execute()()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    OUTLINED_FUNCTION_26(&dword_0, v5, v6, "Submitting output");
    OUTLINED_FUNCTION_15_0(v4);
  }

  v7 = v0[12];

  v10 = (*(v7 + 96) + **(v7 + 96));
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = ShowOutputAndCloseFlow.execute();

  return v10(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 120) = v0;

  if (v0)
  {
    v5 = ShowOutputAndCloseFlow.execute();
  }

  else
  {
    v5 = ShowOutputAndCloseFlow.execute();
  }

  return _swift_task_switch(v5);
}

{
  v1 = *(v0 + 96);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = ShowOutputAndCloseFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 136) = v0;

  if (v0)
  {
    v5 = ShowOutputAndCloseFlow.execute();
  }

  else
  {
    v5 = ShowOutputAndCloseFlow.execute();
  }

  return _swift_task_switch(v5);
}

{
  v13 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    OUTLINED_FUNCTION_6_11(4.8149e-34);
    v5 = Error.localizedDescription.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v12);

    *(v3 + 4) = v7;
    OUTLINED_FUNCTION_101(&dword_0, v8, v9, "Hit an error publishing output %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_15_0(v4);
    OUTLINED_FUNCTION_15_0(v3);
  }

  else
  {
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  v13 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    OUTLINED_FUNCTION_6_11(4.8149e-34);
    v5 = Error.localizedDescription.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v12);

    *(v3 + 4) = v7;
    OUTLINED_FUNCTION_101(&dword_0, v8, v9, "Hit an error publishing output %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_15_0(v4);
    OUTLINED_FUNCTION_15_0(v3);
  }

  else
  {
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_6_0();

  return v10();
}

uint64_t ShowOutputAndCloseFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(v4 + 96) + 112) == 1)
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      OUTLINED_FUNCTION_26(&dword_0, v8, v9, "Dismissing Siri");
      OUTLINED_FUNCTION_15_0(v7);
    }

    v10 = *(v4 + 96);

    __swift_project_boxed_opaque_existential_1((v10 + 56), *(v10 + 80));
    v11 = [objc_allocWithZone(SAUICloseAssistant) init];
    AceServiceInvokerAsync.submitAndForget(_:)();
  }

  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm((v4 + 16));
  OUTLINED_FUNCTION_6_0();

  return v12();
}

void *ShowOutputAndCloseFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return v0;
}

uint64_t ShowOutputAndCloseFlow.__deallocating_deinit()
{
  ShowOutputAndCloseFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance ShowOutputAndCloseFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return ShowOutputAndCloseFlow.execute()(a1);
}

uint64_t OUTLINED_FUNCTION_6_11(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

INImage_optional __swiftcall WFImage.convertToINImage()()
{
  v1 = outlined bridged method (pb) of @objc WFImage.pngRepresentation.getter(v0);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = v1;
    v5 = v2;
    type metadata accessor for INImage();
    outlined copy of Data._Representation(v4, v5);
    v3 = @nonobjc INImage.__allocating_init(imageData:)(v4, v5);
    [v0 sizeInPoints];
    v7 = v6;
    [v0 sizeInPoints];
    [v3 _setImageSize:v7];
    [v3 _setRenderingMode:WFImage.getRenderingMode()()];
    outlined consume of Data?(v4, v5);
  }

  v8 = v3;
  result.is_nil = v2;
  result.value.super.isa = v8;
  return result;
}

id @nonobjc INImage.__allocating_init(imageData:)(uint64_t a1, unint64_t a2)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [swift_getObjCClassFromMetadata() imageWithImageData:isa];

  outlined consume of Data._Representation(a1, a2);
  return v5;
}

id WFImage.getRenderingMode()()
{
  result = [v0 renderingMode];
  if (result >= 3)
  {
    return 0;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc WFImage.pngRepresentation.getter(void *a1)
{
  v1 = [a1 PNGRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for INImage()
{
  result = lazy cache variable for type metadata for INImage;
  if (!lazy cache variable for type metadata for INImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INImage);
  }

  return result;
}

unint64_t RunLinkActionCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
    case 9:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::Properties_optional __swiftcall RunLinkActionCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.actionConfirmation(customDialog:verb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v4 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v4);
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_64_0();
  v17 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v5 = OUTLINED_FUNCTION_41_4(v4);
  v6 = OUTLINED_FUNCTION_0_14(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  v11 = OUTLINED_FUNCTION_39_5();
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  *(v1 + 64) = v13;
  *v13 = v1;
  OUTLINED_FUNCTION_30_3(v13);
  v14 = OUTLINED_FUNCTION_15_9(32);

  return v15(v14);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {
    OUTLINED_FUNCTION_63_2();

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ActionConfirmationDialogIds_optional __swiftcall RunLinkActionCATsSimple.ActionConfirmationDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.ActionConfirmationDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t RunLinkActionCATsSimple.ActionConfirmationDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x6D6F74737563;
  }

  return 0x62726556736168;
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ActionConfirmationDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::ActionConfirmationDialogIds_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.ActionConfirmationDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.ActionConfirmationDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.actionConfirmationAsLabels(customDialog:verb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v4 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v4);
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_64_0();
  v18 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v5 = OUTLINED_FUNCTION_41_4(v4);
  v6 = OUTLINED_FUNCTION_0_14(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  v11 = OUTLINED_FUNCTION_39_5();
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v13 = swift_task_alloc();
  *(v1 + 64) = v13;
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v13 = v14;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  v15 = OUTLINED_FUNCTION_14_7(32);

  return v16(v15);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.actionConfirmationHeader(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v16 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_57_1(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_17_8(v11);
  v13 = OUTLINED_FUNCTION_15_9(38);

  return v14(v13);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

BOOL RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v2;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t RunLinkActionCATsSimple.actionConfirmationHeaderAsLabels(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v16 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_0_14(v5, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v11);
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v12;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v13 = OUTLINED_FUNCTION_14_7(38);

  return v14(v13);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds and conformance RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.actionPerformed(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v16 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_57_1(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_17_8(v11);
  v13 = OUTLINED_FUNCTION_15_9(29);

  return v14(v13);
}

BOOL RunLinkActionCATsSimple.ActionPerformedDialogIds.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v2;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.ActionPerformedDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ActionPerformedDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = RunLinkActionCATsSimple.ActionPerformedDialogIds.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t RunLinkActionCATsSimple.actionPerformedAsLabels(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v16 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_0_14(v5, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v11);
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v12;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v13 = OUTLINED_FUNCTION_14_7(29);

  return v14(v13);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ActionPerformedDialogIds and conformance RunLinkActionCATsSimple.ActionPerformedDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.confirmationButtonLabel(confirmationVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1(v1);
  v3 = OUTLINED_FUNCTION_26_6(v2);
  *(v3 + 16) = xmmword_216850;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x8000000000231530;
  OUTLINED_FUNCTION_54_0(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v5);
  if (v6)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v7();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_57_1(v8);
  *v9 = v10;
  v9[1] = RunLinkActionCATsSimple.actionConfirmationHeader(customDialog:);
  OUTLINED_FUNCTION_87();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

BOOL RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v2;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t RunLinkActionCATsSimple.confirmationButtonLabelAsLabels(confirmationVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v4 = OUTLINED_FUNCTION_26_6(v3);
  *(v4 + 16) = xmmword_216850;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x8000000000231530;
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v6);
  if (v7)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v8();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v9);
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v10;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_87();

  return v16(v11, v12, v13, v14, v15, v16, v17, v18);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds and conformance RunLinkActionCATsSimple.ConfirmationButtonLabelDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.continueInApp(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v16 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_57_1(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_17_8(v11);
  v13 = OUTLINED_FUNCTION_15_9(27);

  return v14(v13);
}

uint64_t RunLinkActionCATsSimple.ContinueInAppDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x65756E69746E6F63;
  }
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ContinueInAppDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ContinueInAppDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::ContinueInAppDialogIds_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.ContinueInAppDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.ContinueInAppDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.ContinueInAppDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.continueInAppAsLabels(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[4] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_64_0();
  v16 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_48_1(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_0_14(v5, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v11);
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v12;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v13 = OUTLINED_FUNCTION_14_7(27);

  return v14(v13);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ContinueInAppDialogIds and conformance RunLinkActionCATsSimple.ContinueInAppDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.errorDialog(customDialog:nonOptionalParameterIsNil:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_64_0();
  v18 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_0_14(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_51_0("nonOptionalParameterIsNil");
  *(v1 + 120) = &type metadata for Bool;
  *(v1 + 96) = v11;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_57_1(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_17_8(v13);
  v15 = OUTLINED_FUNCTION_15_9(25);

  return v16(v15);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ErrorDialogDialogIds_optional __swiftcall RunLinkActionCATsSimple.ErrorDialogDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.ErrorDialogDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t RunLinkActionCATsSimple.ErrorDialogDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_34_5();
  }

  if (a1 == 1)
  {
    return 0x726F727265;
  }

  return 0x6D617261506C696ELL;
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ErrorDialogDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ErrorDialogDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::ErrorDialogDialogIds_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.ErrorDialogDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.ErrorDialogDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.ErrorDialogDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.errorDialogAsLabels(customDialog:nonOptionalParameterIsNil:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_64_0();
  v18 = v3;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_42_2(v4);
  v6 = OUTLINED_FUNCTION_26_6(v5);
  v7 = OUTLINED_FUNCTION_0_14(v6, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v9);
  if (v10)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_51_0("nonOptionalParameterIsNil");
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 96) = v12;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v13);
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v14;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v15 = OUTLINED_FUNCTION_14_7(25);

  return v16(v15);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ErrorDialogDialogIds and conformance RunLinkActionCATsSimple.ErrorDialogDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.needsDisambiguation(customDialog:items:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[5];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2(v2);
  v0[6] = v3;
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_3_12();
  if (v7)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v8();
  }

  OUTLINED_FUNCTION_36_3();
  v3[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v3[6].n128_u64[0] = v6;
  OUTLINED_FUNCTION_13_8();

  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = RunLinkActionCATsSimple.needsDisambiguation(customDialog:items:);
  OUTLINED_FUNCTION_23_8(33);
  OUTLINED_FUNCTION_87();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

BOOL RunLinkActionCATsSimple.NeedsDisambiguationDialogIds.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v2;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.NeedsDisambiguationDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = RunLinkActionCATsSimple.NeedsDisambiguationDialogIds.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t RunLinkActionCATsSimple.needsDisambiguationAsLabels(customDialog:items:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[5];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2(v2);
  v0[6] = v3;
  v4 = OUTLINED_FUNCTION_0_14(v3, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_3_12();
  if (v7)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v8();
  }

  OUTLINED_FUNCTION_36_3();
  v3[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v3[6].n128_u64[0] = v6;
  OUTLINED_FUNCTION_13_8();

  v9 = swift_task_alloc();
  v0[7] = v9;
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v9 = v10;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23_8(33);
  OUTLINED_FUNCTION_87();

  return v16(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsDisambiguationDialogIds and conformance RunLinkActionCATsSimple.NeedsDisambiguationDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.needsValue(customDialog:parameterName:isSearchAction:isDeleteAction:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_67(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v6 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v6);
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_64_0();
  v18 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_41_4(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_21A520);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_52_2(v10);
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_31_2(v13);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  *(v1 + 64) = v14;
  *v14 = v1;
  OUTLINED_FUNCTION_30_3(v14);
  v15 = OUTLINED_FUNCTION_15_9(24);

  return v16(v15);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {
    OUTLINED_FUNCTION_63_2();

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::NeedsValueDialogIds_optional __swiftcall RunLinkActionCATsSimple.NeedsValueDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.NeedsValueDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t RunLinkActionCATsSimple.NeedsValueDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_34_5();
  }

  if (a1 == 1)
  {
    return 0x74706D6F7270;
  }

  return 0x6341686372616573;
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::NeedsValueDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.NeedsValueDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::NeedsValueDialogIds_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.NeedsValueDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.NeedsValueDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.NeedsValueDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.needsValueAsLabels(customDialog:parameterName:isSearchAction:isDeleteAction:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_67(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v6 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v6);
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_64_0();
  v19 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_41_4(v3);
  v5 = OUTLINED_FUNCTION_0_14(v4, xmmword_21A520);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v9();
  }

  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_52_2(v10);
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_31_2(v13);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  *(v1 + 64) = v14;
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v14 = v15;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  v16 = OUTLINED_FUNCTION_14_7(24);

  return v17(v16);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.NeedsValueDialogIds and conformance RunLinkActionCATsSimple.NeedsValueDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.parameterConfirmation(customDialog:parameterValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v4 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v4);
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_64_0();
  v18 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v5 = OUTLINED_FUNCTION_41_4(v4);
  v6 = OUTLINED_FUNCTION_0_14(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_56(v11);
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  *(v1 + 64) = v14;
  *v14 = v1;
  OUTLINED_FUNCTION_30_3(v14);
  v15 = OUTLINED_FUNCTION_15_9(35);

  return v16(v15);
}

uint64_t RunLinkActionCATsSimple.ContinueInAppDialogIds.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_5();
  v5._rawValue = v4;
  v6._object = v2;
  _findStringSwitchCase(cases:string:)(v5, v6);
  OUTLINED_FUNCTION_48_3();
  if (v3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v3)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t RunLinkActionCATsSimple.ParameterConfirmationDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x6D7269666E6F63;
  }
}

SiriLinkFlowPlugin::RunLinkActionCATsSimple::ParameterConfirmationDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::RunLinkActionCATsSimple::ParameterConfirmationDialogIds_optional *a2@<X8>)
{
  result.value = RunLinkActionCATsSimple.ParameterConfirmationDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = RunLinkActionCATsSimple.ParameterConfirmationDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t RunLinkActionCATsSimple.parameterConfirmationAsLabels(customDialog:parameterValue:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_45_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v4 = OUTLINED_FUNCTION_27();
  *(v0 + 48) = OUTLINED_FUNCTION_59_2(v4);
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5);
}

{
  OUTLINED_FUNCTION_64_0();
  v19 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_42_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2(v3);
  v5 = OUTLINED_FUNCTION_41_4(v4);
  v6 = OUTLINED_FUNCTION_0_14(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_12(v8);
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_56(v11);
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_12();
  if (v9)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  *(v1 + 64) = v14;
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v14 = v15;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_32_7();
  v16 = OUTLINED_FUNCTION_14_7(35);

  return v17(v16);
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.ParameterConfirmationDialogIds and conformance RunLinkActionCATsSimple.ParameterConfirmationDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.unsupportedOnPlatform(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3);
}

uint64_t RunLinkActionCATsSimple.unsupportedOnPlatform(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v0[4] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_216850);
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  OUTLINED_FUNCTION_13_8();

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = RunLinkActionCATsSimple.unsupportedOnPlatform(device:);
  OUTLINED_FUNCTION_23_8(35);
  OUTLINED_FUNCTION_87();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_8_11();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

BOOL RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v2;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t RunLinkActionCATsSimple.unsupportedOnPlatformAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3);
}

uint64_t RunLinkActionCATsSimple.unsupportedOnPlatformAsLabels(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1(v2);
  v0[4] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_216850);
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  OUTLINED_FUNCTION_13_8();

  v5 = swift_task_alloc();
  v0[5] = v5;
  lazy protocol witness table accessor for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v5 = v6;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_23_8(35);
  OUTLINED_FUNCTION_87();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_8_11();

    return v9(v8);
  }
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds and conformance RunLinkActionCATsSimple.UnsupportedOnPlatformDialogIds);
  }

  return result;
}

uint64_t RunLinkActionCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return RunLinkActionCATsSimple.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t RunLinkActionCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = OUTLINED_FUNCTION_14(v12);
  __chkstk_darwin(v13);
  outlined init with copy of SpeakableString?(a1, &v17 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v15 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v15;
}

uint64_t RunLinkActionCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v2;
}

uint64_t RunLinkActionCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_39_2();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_63_0();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type RunLinkActionCATsSimple.Properties and conformance RunLinkActionCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type RunLinkActionCATsSimple.Properties and conformance RunLinkActionCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type RunLinkActionCATsSimple.Properties and conformance RunLinkActionCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLinkActionCATsSimple.Properties and conformance RunLinkActionCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for RunLinkActionCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for RunLinkActionCATsSimple;
  if (!type metadata singleton initialization cache for RunLinkActionCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunLinkActionCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x791D4);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunLinkActionCATsSimple.ActionConfirmationDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x79360);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunLinkActionCATsSimple.ContinueInAppDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x79460);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds(unsigned __int8 *a1, int a2)
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

  return getEnumTag for AutoShortcutFlow.State(a1);
}

_BYTE *storeEnumTagSinglePayload for RunLinkActionCATsSimple.ActionConfirmationHeaderDialogIds(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x79580);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_0_14(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "customDialog");
  result[2].n128_u8[13] = 0;
  result[2].n128_u16[7] = -5120;
  return result;
}

double OUTLINED_FUNCTION_22_6()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

void OUTLINED_FUNCTION_31_2(char a1@<W8>)
{
  *(v4 + 144) = v1;
  *(v4 + 168) = v2;
  *(v4 + 176) = 0x6574656C65447369;
  *(v4 + 184) = v3;
  *(v4 + 216) = v2;
  *(v4 + 192) = a1;
}

uint64_t *OUTLINED_FUNCTION_37_4()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 48));
}

uint64_t OUTLINED_FUNCTION_39_5()
{
  result = *(v0 + 24);
  *(v1 + 80) = 1651664246;
  *(v1 + 88) = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_2(uint64_t result, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_3()
{
}

uint64_t OUTLINED_FUNCTION_59_2(uint64_t a1)
{
  *(v1 + 40) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_63_2()
{
}

uint64_t OUTLINED_FUNCTION_67(uint64_t result, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 81) = a4;
  *(v5 + 80) = a3;
  *(v5 + 16) = result;
  return result;
}

uint64_t one-time initialization function for usoTaskTransformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.usoTaskTransformer);
  __swift_project_value_buffer(v0, static Transformer<>.usoTaskTransformer);
  type metadata accessor for UsoTask();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.usoTaskTransformer@<X0>(void *a2@<X8>)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v10[3])
  {
    outlined destroy of Any?(v10);
    goto LABEL_8;
  }

  type metadata accessor for UsoTask_run_common_VoiceCommand();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v8 = 0xD000000000000034;
    v8[1] = 0x80000000002315B0;
    (*(*(v7 - 8) + 104))(v8, enum case for TransformationError.cannotTransform(_:), v7);
    return swift_willThrow();
  }

  if (one-time initialization token for workflowNameTransformer != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMR);
  __swift_project_value_buffer(v4, static Transformer<>.workflowNameTransformer);
  v5 = Transformer.transform.getter();
  v5(v10, &v11);

  if (!v2)
  {
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

uint64_t Transformer<>.workflowNameTransformer.unsafeMutableAddressor()
{
  if (one-time initialization token for workflowNameTransformer != -1)
  {
    OUTLINED_FUNCTION_1_20(&one-time initialization token for workflowNameTransformer);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.workflowNameTransformer);
}

uint64_t Transformer<>.usoTaskTransformer.unsafeMutableAddressor()
{
  if (one-time initialization token for usoTaskTransformer != -1)
  {
    OUTLINED_FUNCTION_0_15(&one-time initialization token for usoTaskTransformer);
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.usoTaskTransformer);
}

uint64_t static Transformer<>.usoTaskTransformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for usoTaskTransformer != -1)
  {
    OUTLINED_FUNCTION_0_15(&one-time initialization token for usoTaskTransformer);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSSGMR);
  __swift_project_value_buffer(v2, static Transformer<>.usoTaskTransformer);
  OUTLINED_FUNCTION_2_17();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t one-time initialization function for workflowNameTransformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.workflowNameTransformer);
  __swift_project_value_buffer(v0, static Transformer<>.workflowNameTransformer);
  type metadata accessor for UsoTask_run_common_VoiceCommand();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.workflowNameTransformer@<X0>(uint64_t *a1@<X8>)
{
  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
  if (v12 && (, v2 = dispatch thunk of UsoEntity_common_VoiceCommand.name.getter(), v4 = v3, , v4))
  {

    *a1 = v2;
    a1[1] = v4;
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.voiceCommands);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Shortcut name could not be retrieved from USOGraph", v9, 2u);
    }

    v10 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v11 = 0xD000000000000020;
    v11[1] = 0x80000000002315F0;
    (*(*(v10 - 8) + 104))(v11, enum case for TransformationError.cannotTransform(_:), v10);
    swift_willThrow();
  }

  return result;
}

uint64_t static Transformer<>.workflowNameTransformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for workflowNameTransformer != -1)
  {
    OUTLINED_FUNCTION_1_20(&one-time initialization token for workflowNameTransformer);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoTask_run_common_VoiceCommandCSSGMR);
  __swift_project_value_buffer(v2, static Transformer<>.workflowNameTransformer);
  OUTLINED_FUNCTION_2_17();
  v4 = *(v3 + 16);

  return v4(a1);
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

unint64_t lazy protocol witness table accessor for type TransformationError and conformance TransformationError()
{
  result = lazy protocol witness table cache variable for type TransformationError and conformance TransformationError;
  if (!lazy protocol witness table cache variable for type TransformationError and conformance TransformationError)
  {
    type metadata accessor for TransformationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationError and conformance TransformationError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1)
{

  return swift_once();
}

Swift::String_optional __swiftcall DialogExecutionResult.firstDialogFullPrint()()
{
  v1 = [v0 dialog];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array.count.getter(v2);
  if (v3)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_10;
      }

      v5 = *(v2 + 32);
    }

    v6 = v5;

    v7 = [v6 fullPrint];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v3 = OUTLINED_FUNCTION_22();
LABEL_10:
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t static CATSpeakableString.getPropertiesWithWrapperInTemplateString(templateString:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  __chkstk_darwin(v4 - 8);
  OUTLINED_FUNCTION_50_0();
  v7 = v5 - v6;
  v9 = __chkstk_darwin(v8);
  v11 = &v91 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v91 - v13;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_8();
  v91 = v15;
  v98 = String._bridgeToObjectiveC()();
  v16 = objc_allocWithZone(NSRegularExpression);
  v17 = @nonobjc NSRegularExpression.init(pattern:options:)(0xD00000000000001DLL, 0x8000000000231620, 0);
  v97 = 0;
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = &selRef_stringValueType;
  v20 = [v98 length];
  v21 = &off_2B4000;
  v96 = v17;
  v22 = [v17 matchesInString:v18 options:0 range:{0, v20}];

  v7 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSTextCheckingResult, NSTextCheckingResult_ptr);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = specialized Array.count.getter(v23);
  v92 = v14;
  if (!v24)
  {

    v27 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v25 = v24;
  OUTLINED_FUNCTION_11_7(v24, _swiftEmptyArrayStorage);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v93 = v7;
    v94 = a1;
    v95 = a2;
    v26 = 0;
    v27 = v99[0];
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v28 = *(v23 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 range];
      v32 = [v98 substringWithRange:{v30, v31}];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v99[0] = v27;
      v37 = v27[2];
      v36 = v27[3];
      if (v37 >= v36 >> 1)
      {
        v39 = OUTLINED_FUNCTION_14_8(v36);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39, v37 + 1, 1);
        v27 = v99[0];
      }

      ++v26;
      v27[2] = v37 + 1;
      v38 = &v27[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
    }

    while (v25 != v26);

    v19 = &selRef_stringValueType;
    v21 = &off_2B4000;
    v7 = v93;
LABEL_13:
    v40 = objc_allocWithZone(NSRegularExpression);
    v41 = v97;
    v42 = @nonobjc NSRegularExpression.init(pattern:options:)(0xD00000000000001CLL, 0x80000000002316A0, 0);
    if (v41)
    {
    }

    else
    {
      v11 = v42;
      if (v42)
      {
        v43 = String._bridgeToObjectiveC()();
        v44 = [v11 v21[438]];

        v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = specialized Array.count.getter(v45);
        if (!v46)
        {

          v49 = _swiftEmptyArrayStorage;
LABEL_26:
          v99[0] = v27;
          specialized Array.append<A>(contentsOf:)(v49);

          return v99[0];
        }

        v47 = v46;
        OUTLINED_FUNCTION_11_7(v46, _swiftEmptyArrayStorage);
        if ((v47 & 0x8000000000000000) == 0)
        {
          v95 = v11;
          v48 = 0;
          v49 = v99[0];
          v97 = v45 & 0xC000000000000001;
          v50 = v45;
          v51 = v47;
          do
          {
            if (v97)
            {
              v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v52 = *(v45 + 8 * v48 + 32);
            }

            v53 = v52;
            v54 = [v52 range];
            v56 = [v98 substringWithRange:{v54, v55}];
            v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = v58;

            v99[0] = v49;
            v61 = v49[2];
            v60 = v49[3];
            if (v61 >= v60 >> 1)
            {
              v63 = OUTLINED_FUNCTION_14_8(v60);
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v63, v61 + 1, 1);
              v49 = v99[0];
            }

            ++v48;
            v49[2] = v61 + 1;
            v62 = &v49[2 * v61];
            v62[4] = v57;
            v62[5] = v59;
            v45 = v50;
          }

          while (v51 != v48);

          v11 = v95;
          goto LABEL_26;
        }

        goto LABEL_28;
      }
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Logger.voiceCommands);
    OUTLINED_FUNCTION_13_1();
    v78 = v77;
    v80 = v91;
    (*(v79 + 16))(v91);
    __swift_storeEnumTagSinglePayload(v80, 0, 1, v76);
    v81 = v80;
    v82 = v92;
    outlined init with copy of Logger?(v81, v92);
    v83 = v82;
    if (__swift_getEnumTagSinglePayload(v82, 1, v76) == 1)
    {
      outlined destroy of Any?(v82, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
    }

    else
    {
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = OUTLINED_FUNCTION_20_6();
        v99[0] = v87;
        *v86 = 136315650;
        v88 = StaticString.description.getter();
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v99);

        *(v86 + 4) = v90;
        *(v86 + 12) = 2048;
        *(v86 + 14) = 122;
        *(v86 + 22) = 2080;
        *(v86 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7265206C61746166, 0xEB00000000726F72, v99);
        _os_log_impl(&dword_0, v84, v85, "FatalError at %s:%lu - %s", v86, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_0(v87);
        OUTLINED_FUNCTION_15_0(v86);
      }

      (*(v78 + 8))(v83, v76);
    }

    goto LABEL_44;
  }

  __break(1u);
LABEL_28:
  __break(1u);

LABEL_29:
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  __swift_project_value_buffer(v65, static Logger.voiceCommands);
  OUTLINED_FUNCTION_13_1();
  v67 = v66;
  (*(v68 + 16))(v11);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v65);
  outlined init with copy of Logger?(v11, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v65) == 1)
  {
    outlined destroy of Any?(v7, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = OUTLINED_FUNCTION_20_6();
      v99[0] = v72;
      *v71 = 136315650;
      v73 = StaticString.description.getter();
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v99);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2048;
      *(v71 + 14) = 115;
      *(v71 + 22) = 2080;
      *(v71 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7265206C61746166, 0xEB00000000726F72, v99);
      _os_log_impl(&dword_0, v69, v70, "FatalError at %s:%lu - %s", v71, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0(v72);
      OUTLINED_FUNCTION_15_0(v71);
    }

    (*(v67 + 8))(v7, v65);
  }

LABEL_44:
  OUTLINED_FUNCTION_19_4(0x7265206C61746166);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static CATSpeakableString.applyPronunciationHints(template:variablesWithWrapper:intent:intentResponse:tokens:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v9 = *(a3 + 16);

  v10 = (a3 + 40);
  if (!v9)
  {
    return a1;
  }

  while (1)
  {
    v11 = *(v10 - 1);
    v12 = *v10;

    v13 = static CATSpeakableString.unwrapProperty(propertyName:)(v11, v12);
    static CATSpeakableString.resolveVariable(variable:intent:intentResponse:tokens:)(v13, v14, a4, a5, a6, &v45);

    if (!v46)
    {

      outlined destroy of Any?(&v45, &_sypSgMd, &_sypSgMR);
      return 0;
    }

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INObject, INObject_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v15 = v44;
    v16 = outlined bridged method (pb) of @objc INObject.pronunciationHint.getter(v44);
    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {

LABEL_10:
      *&v45 = a1;
      *(&v45 + 1) = a2;
      v44 = v11;
      v29 = [v15 displayString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = lazy protocol witness table accessor for type String and conformance String();
      a1 = OUTLINED_FUNCTION_2_18(v30, v31, v32, v33, v34, v35, v36, v37, v40);
      v28 = v38;

      goto LABEL_11;
    }

    *&v45 = a1;
    *(&v45 + 1) = a2;
    v44 = v11;
    v19 = lazy protocol witness table accessor for type String and conformance String();
    a1 = OUTLINED_FUNCTION_2_18(v19, v20, v21, v22, v23, v24, v25, v26, v40);
    v28 = v27;

LABEL_11:

    v10 += 2;
    --v9;
    a2 = v28;
    if (!v9)
    {
      return a1;
    }
  }

  return 0;
}

uint64_t CATSpeakableString.__allocating_init(_:speak:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  CATSpeakableString.init(_:speak:)(a1, a2, a3, a4);
  return v8;
}

void *static CATSpeakableString.getPropertiesInTemplateString(templateString:)(uint64_t a1, char *a2)
{
  v2 = static CATSpeakableString.getPropertiesWithWrapperInTemplateString(templateString:)(a1, a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      v7 = static CATSpeakableString.unwrapProperty(propertyName:)(v5, v6);
      v9 = v8;

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        v13 = OUTLINED_FUNCTION_14_8(v10);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13, v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_10_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  result = OUTLINED_FUNCTION_10_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for DisplayHint();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v7 + v6, 1);
  v1 = *v2;
  v8 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  specialized Sequence._copySequenceContents(initializing:)();
  if (v9 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
LABEL_13:
      v16 = (v10 + 64) >> 6;
      while (1)
      {
        v17 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v17 >= v16)
        {
          goto LABEL_7;
        }

        v18 = *(v8 + 8 * v17);
        ++v4;
        if (v18)
        {
          v14 = (v18 - 1) & v18;
          v15 = __clz(__rbit64(v18)) | (v17 << 6);
          v4 = v17;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v13;
  }

  v5 = v28;
  if (v9 != v8)
  {
LABEL_7:
    outlined consume of Set<String>.Iterator._Variant(v5);
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v8 = v29;
  v10 = v30;
  v4 = v31;
  if (!v32)
  {
    goto LABEL_13;
  }

  v14 = (v32 - 1) & v32;
  v15 = __clz(__rbit64(v32)) | (v31 << 6);
  v16 = (v30 + 64) >> 6;
LABEL_18:
  v19 = (*(v5 + 48) + 16 * v15);
  v21 = *v19;
  v20 = v19[1];

LABEL_19:
  v27 = *(v1 + 24) >> 1;
  if (v27 < v3 + 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v1 = v26;
    v27 = *(v26 + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v27)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v22 = (v1 + 32 + 16 * v3);
    *v22 = v21;
    v22[1] = v20;
    ++v3;
    if (!v14)
    {
      break;
    }

    v23 = v4;
LABEL_28:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = (*(v5 + 48) + ((v23 << 10) | (16 * v24)));
    v21 = *v25;
    v20 = v25[1];
  }

  while (1)
  {
    v23 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v14 = *(v8 + 8 * v23);
    ++v4;
    if (v14)
    {
      v4 = v23;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(&dword_10 + v14) + 32, (*(&dword_18 + v14) >> 1) - *(&dword_10 + v14), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}